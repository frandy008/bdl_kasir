<?php  
include 'koneksi.php';

$m = $_GET['m'];
if ($m == 'delete') {
	$q = mysqli_query($koneksi, "DELETE FROM tbl_penyalur WHERE id_penyalur = '$_POST[id]'");
	if ($q) {
		echo json_encode(
			array(
				'response' => true,
				'message' => 'Berhasil menghapus !'
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => false,
				'message' => 'Gagal menghapus ! '.mysql_error()
			)
		);
	}
}elseif ($m == 'add') {
	if ($_POST['id_penyalur'] == '') {
		$id_penyalur = buat_kode();
	}
	$q = mysqli_query($koneksi, "INSERT INTO tbl_penyalur(id_penyalur,nama_penyalur,no_hp,alamat) VALUES('$id_penyalur','$_POST[nama]','$_POST[no_hp]','$_POST[alamat]')");
	if ($q) {
		echo json_encode(
			array(
				'response' => true,
				'message' => 'Berhasil menyimpan !'
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => false,
				'message' => 'Gagal menyimpan ! '.mysql_error()
			)
		);
	}
}elseif ($m == 'update') {
	$q = mysqli_query($koneksi, "UPDATE tbl_penyalur SET id_penyalur='$_POST[id_penyalur]', nama_penyalur='$_POST[nama]', no_hp='$_POST[no_hp]', alamat='$_POST[alamat]' WHERE id_penyalur = '$_POST[id_penyalur]'");
	if ($q) {
		echo json_encode(
			array(
				'response' => true,
				'message' => 'Berhasil menyimpan !'
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => false,
				'message' => 'Gagal menyimpan ! '.mysql_error()
			)
		);
	}
}elseif ($m == 'cari') {
	$q = mysqli_query($koneksi, "SELECT * FROM tbl_penyalur WHERE id_penyalur = '$_POST[id_penyalur]'");
	if (mysql_num_rows($q) > 0) {
		$d = mysqli_fetch_assoc($q);
		$data[] = $d;
		echo json_encode(
			array(
				'response' => true,
				'data' => $d 
			)
		);
	}else{
		echo json_encode(
			array(
				'response' => false,
				'message' => 'Tidak terdaftar !' 
			)
		);
	}
}

function buat_kode()
	{
		$q = mysqli_query($koneksi, "SELECT MAX(RIGHT(id_penyalur,4)) AS kd_max FROM tbl_penyalur");
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
        return date('dmy').$kd;
	}
?>