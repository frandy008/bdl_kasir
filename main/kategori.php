<?php  
include 'koneksi.php';

if (isset($_GET['m'])) {
	if ($_GET['m'] == 'add') {
		$q = mysqli_query($koneksi, "INSERT INTO tbl_kategori(kategori) VALUES('$_POST[kategori]')");
	}elseif ($_GET['m'] == 'update') {
		$q = mysqli_query($koneksi, "UPDATE tbl_kategori SET kategori = '$_POST[kategori]' WHERE id_kategori = '$_POST[id_kategori]'");
	}elseif ($_GET['m'] == 'delete') {
		$q = mysqli_query($koneksi, "DELETE FROM tbl_kategori WHERE id_kategori = '$_POST[id]'");
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