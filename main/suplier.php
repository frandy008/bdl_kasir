<?php  
include 'koneksi.php';

$m = $_GET['m'];
if ($m == 'delete') {
	$q = mysqli_query($koneksi, "DELETE FROM tbl_suplier WHERE id_suplier = '$_POST[id]'");
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
	$q = mysqli_query($koneksi, "INSERT INTO tbl_suplier(nama,no_hp,alamat) VALUES('$_POST[nama]','$_POST[no_hp]','$_POST[alamat]')");
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
	$q = mysqli_query($koneksi, "UPDATE tbl_suplier SET nama='$_POST[nama]', no_hp='$_POST[no_hp]', alamat='$_POST[alamat]' WHERE id_suplier = '$_POST[id_suplier]'");
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