<?php  
include 'koneksi.php';

if (isset($_GET['m'])) {
	if ($_GET['m'] == 'add') {
		$q = mysqli_query($koneksi, "INSERT INTO tbl_brand(brand) VALUES('$_POST[brand]')");
	}elseif ($_GET['m'] == 'update') {
		$q = mysqli_query($koneksi, "UPDATE tbl_brand SET brand = '$_POST[brand]' WHERE id_brand = '$_POST[id_brand]'");
	}elseif ($_GET['m'] == 'delete') {
		$q = mysqli_query($koneksi, "DELETE FROM tbl_brand WHERE id_brand = '$_POST[id]'");
	}
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
				'response' => false,
				'message' => 'Gagal ! '.mysql_error() 
			)
		);
	}
}
?>