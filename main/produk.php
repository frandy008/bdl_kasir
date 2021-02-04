<?php  
include 'koneksi.php';

$m = $_GET['m'];
if ($m == 'delete') {
	$q = mysqli_query($koneksi, "DELETE FROM tbl_produk WHERE id_produk = '$_POST[id]'");
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
	$sd = mysqli_query($koneksi, "SELECT * FROM tbl_produk WHERE kode_produk = '$_POST[kode_produk]'");
	if (mysql_num_rows($sd) > 0) {
		mysqli_query($koneksi, "DELETE FROM tbl_produk WHERE kode_produk = '$_POST[kode_produk]'");
	}
	if ($_POST['kode_produk'] == '') {
		$id_produk = uniqid();
	}else{
		$id_produk = $_POST['kode_produk'];
	}
	$q = mysqli_query($koneksi, "INSERT INTO tbl_produk(kode_produk,nama,id_kategori,id_satuan,id_brand,harga_pokok,harga_satuan,harga_grosir,harga_grosir2,harga_grosir3) VALUES('$id_produk','$_POST[nama]','$_POST[id_kategori]','$_POST[id_satuan]','$_POST[id_brand]','$_POST[harga_beli]','$_POST[harga_satuan]','$_POST[harga_grosir]','$_POST[harga_grosir2]','$_POST[harga_grosir3]')");
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
	$q = mysqli_query($koneksi, "UPDATE tbl_produk SET nama='$_POST[nama]', id_kategori='$_POST[id_kategori]', id_satuan='$_POST[id_satuan]',id_brand='$_POST[id_brand]', harga_pokok='$_POST[harga_beli]', harga_satuan='$_POST[harga_satuan]', harga_grosir='$_POST[harga_grosir]', harga_grosir2='$_POST[harga_grosir2]', harga_grosir3='$_POST[harga_grosir3]' WHERE kode_produk = '$_POST[kode_produk]'");
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
}
?>