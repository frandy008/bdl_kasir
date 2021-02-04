<?php 
session_start();
include 'koneksi.php';

$m = $_GET['m'];
if ($m == 'get_keranjang') {
	$q = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_pesanan WHERE id_user = '$_SESSION[fdp_pos_id_user]' AND status = '0'"));
	$sk = mysqli_query($koneksi, "SELECT * FROM tbl_keranjang WHERE kode_pesanan = '$q[kode_pesanan]'");
	while ($dk = mysqli_fetch_assoc($sk)) {
		$dpro = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_produk WHERE id_produk = '$dk[id_produk]'"));
		$dsatuan = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_satuan WHERE id_satuan = '$dpro[id_satuan]'"));
		$data[] = array(
						'id_keranjang' => $dk['id_keranjang'],
						'nama' => $dpro['nama'],
						'satuan'=> $dsatuan['satuan'],
						'harga_keranjang' => $dk['harga'],
						'harga_satuan' => $dpro['harga_satuan'],
						'harga_grosir' => $dpro['harga_grosir'],
						'harga_grosir2' => $dpro['harga_grosir2'],
						'harga_grosir3' => $dpro['harga_grosir3'],
						'jumlah' => $dk['jumlah']
					);
	}
	echo json_encode(
		array(
			'response' => true,
			'data' => $data ,
			'kode_pesanan' => $q['kode_pesanan']
		)
	);
}elseif ($m == 'delete') {
	$q = mysqli_query($koneksi, "DELETE FROM tbl_keranjang WHERE id_keranjang = '$_POST[id]'");
	if ($q) {
		echo json_encode(
			array(
				'response' => true,
				'message' => 'Berhasil !' 
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => falase,
				'message' => 'Gagal !' 
			)
		);
	}
}elseif ($m == 'masukan_keranjang') {
	$kasir = $_GET['kasir'];
	$p = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_produk WHERE kode_produk = '$_POST[kode_produk]'"));
	if ($kasir == '1') {
		$harga = $p['harga_satuan'];
	}else{
		$harga = $p['harga_grosir'];
	}

	$pem = mysqli_fetch_array(mysqli_query($koneksi, "SELECT SUM(jumlah) as barangm FROM tbl_inventory WHERE jenis = '1' AND id_produk = '$p[id_produk]'"));
	$peng = mysqli_fetch_array(mysqli_query($koneksi, "SELECT SUM(jumlah) as barangk FROM tbl_inventory WHERE jenis = '2' AND id_produk = '$p[id_produk]'")); 
	$stok =  $pem['barangm'] - $peng['barangk'];
	if (($stok - $_POST['jumlah']) > 0) {
		# Tersedia
		$pending = mysqli_query($koneksi, "SELECT * FROM tbl_pesanan WHERE id_user = '$_SESSION[fdp_pos_id_user]' AND status = '0'");
		if (mysql_num_rows($pending) > 0) {
			# Ada pesanan pending
			$dpesanan = mysqli_fetch_array($pending);
			$id_pesanan = $dpesanan['kode_pesanan'];
		}else{
			$tanggal = date('Y-m-d');
			$id_pesanan = buat_kode();
			mysqli_query($koneksi, "INSERT INTO tbl_pesanan(kode_pesanan,tanggal,id_user,status) VALUES('$id_pesanan','$tanggal','$_SESSION[fdp_pos_id_user]','0')");
		}
		$sk = mysqli_query($koneksi, "SELECT * FROM tbl_keranjang WHERE id_produk = '$p[id_produk]' AND kode_pesanan = '$id_pesanan'");
		if (mysql_num_rows($sk) > 0) {
			$dk = mysqli_fetch_array($sk);
			$jumlah_lama = $dk['jumlah'];
			$jumlah = $jumlah_lama+1;
			$i = mysqli_query($koneksi, "UPDATE tbl_keranjang SET jumlah = '$jumlah' WHERE id_keranjang = '$dk[id_keranjang]'");
		}else{
			$i = mysqli_query($koneksi, "INSERT INTO tbl_keranjang(id_produk,jumlah,harga,kode_pesanan) VALUES('$p[id_produk]','$_POST[jumlah]','$harga','$id_pesanan')");
		}
		if ($i) {
			echo json_encode(
				array(
					'response' => true,
					'message' => 'Berhasil !',
					'tanggal' => date('Y-m-d') 
				)
			);
		}else{
			echo json_encode(
				array(
					'response' => false,
					'message' => 'Gagal !' 
				)
			);
		}
	}else{
		echo json_encode(
			array(
				'response' => false,
				'message' => 'Stok tidak cukup !' 
			)
		);
	}


}elseif ($m == 'cari_produk') {
	$q = mysqli_query($koneksi, "SELECT * FROM tbl_produk WHERE kode_produk = '$_POST[kode_produk]'");
	$d = mysqli_fetch_array($q);
	if (mysql_num_rows($q) > 0) {
		echo json_encode(
			array(
				'response' => true,
				'data' => $d['nama'] 
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => falase,
				'message' => 'Gagal !' 
			)
		);
	}
}elseif ($m == 'proses') {
	$s_pesanan = mysqli_query($koneksi, "SELECT * FROM tbl_keranjang WHERE kode_pesanan = '$_POST[kode_pesanan]'");
	$tanggal = date('Y-m-d');
	$keterangan = 'Penjualan-'.$_POST['kode_pesanan'];
	while ($kk = mysqli_fetch_array($s_pesanan)) {
		$x = mysqli_query($koneksi, "INSERT INTO tbl_inventory(id_produk,jenis,jumlah,tanggal,id_user,keterangan) VALUES('$kk[id_produk]','2','$kk[jumlah]','$tanggal','$_SESSION[fdp_pos_id_user]','$keterangan')");
	}
	if ($_GET['k'] == '1') {
		$q = mysqli_query($koneksi, "UPDATE tbl_pesanan SET total='$_POST[total_belanja]', ppn='$_POST[ppn]', potongan='$_POST[potongan]', tunai='$_POST[tunai]', kembalian='$_POST[kembalian]', status='1' WHERE kode_pesanan = '$_POST[kode_pesanan]'");
	}elseif ($_GET['k'] == '2') {
		$u = mysqli_query($koneksi, "UPDATE tbl_pesanan SET total='$_POST[total_belanja]', ppn='$_POST[ppn]', potongan='$_POST[potongan]', tunai='$_POST[tunai]', kembalian='$_POST[kembalian_simpan]', status='1' WHERE kode_pesanan='$_POST[kode_pesanan]'");
		$dh = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_penyalur WHERE id_penyalur='$_POST[id_anggota]'"));
		$hs = $dh['hutang'];
		$hutang = $hs+$_POST['hutang'];
		$m = mysqli_query($koneksi, "UPDATE tbl_penyalur SET hutang='$hutang' WHERE id_penyalur='$_POST[id_anggota]'");
		if ($u AND $m) {
			$q = TRUE;
		}else{
			$q = FALSE;
		}
	}
	if ($q AND $x) {
		echo json_encode(
			array(
				'response' => true,
				'message' => 'Berhasil memproses !'
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => falase,
				'message' => 'Gagal ! '.mysql_error() 
			)
		);
	}
}elseif ($m == 'update_keranjang') {
	$dp = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_keranjang WHERE id_keranjang = '$_POST[id]'"));

	$pem = mysqli_fetch_array(mysqli_query($koneksi, "SELECT SUM(jumlah) as barangm FROM tbl_inventory WHERE jenis = '1' AND id_produk = '$dp[id_produk]'"));
	$peng = mysqli_fetch_array(mysqli_query($koneksi, "SELECT SUM(jumlah) as barangk FROM tbl_inventory WHERE jenis = '2' AND id_produk = '$dp[id_produk]'")); 
	$stok =  $pem['barangm'] - $peng['barangk'];

	if ($_POST['jumlah'] > $stok) {
			# code...
		echo json_encode(
			array(
				'response' => false,
				'message' => 'Stok tidak cukup !' 
			)
		);
	}else{
		$q = mysqli_query($koneksi, "UPDATE tbl_keranjang SET jumlah = '$_POST[jumlah]' WHERE id_keranjang = '$_POST[id]'");
		if ($q) {
			echo json_encode(
				array(
					'response' => true, 
				)
			);
		}else{
			echo json_encode(
				array(
					'response' => false,
					'message' => mysql_error() 
				)
			);
		}
	}
}elseif ($m == 'update_harga') {
	$q = mysqli_query($koneksi, "UPDATE tbl_keranjang SET harga = '$_POST[harga]' WHERE id_keranjang = '$_POST[id_keranjang]'");
	if ($q) {
		echo json_encode(
			array(
				'response' => true, 
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => false, 
			)
		);
	}
}

function buat_kode()
	{
		$q = mysqli_query($koneksi, "SELECT MAX(RIGHT(kode_pesanan,4)) AS kd_max FROM tbl_pesanan WHERE DATE(tanggal)=CURDATE()");
        $kd = "";
        if(mysql_num_rows($q)>0){
            while ($k = mysqli_fetch_array($q)) {
                $tmp = ((int)$k['kd_max'])+1;
                $kd = sprintf("%04s", $tmp);
            }
        }else{
            $kd = "0001";
        }
        date_default_timezone_set('Asia/Jakarta');
        return date('ymd').$kd;
	}
?>