<?php  
include 'koneksi.php';

if (isset($_GET['m'])) {
	if ($_GET['m'] == 'add') {
		$q = mysqli_query($koneksi, "INSERT INTO tbl_satuan(satuan) VALUES('$_POST[satuan]')");
	}elseif ($_GET['m'] == 'update') {
		$q = mysqli_query($koneksi, "UPDATE tbl_satuan SET satuan = '$_POST[satuan]' WHERE id_satuan = '$_POST[id_satuan]'");
	}elseif ($_GET['m'] == 'delete') {
		$q = mysqli_query($koneksi, "DELETE FROM tbl_satuan WHERE id_satuan = '$_POST[id]'");
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