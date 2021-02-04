<?php  
session_start();
include 'koneksi.php';

if (isset($_GET['m'])) {
	$tgl = date('Y-m-d');
	if ($_GET['m'] == 'add') {
		$q = mysqli_query($koneksi, "INSERT INTO tbl_inventory(id_produk,jenis,jumlah,tanggal,id_user,keterangan) VALUES('$_POST[id_produk]','2','$_POST[jumlah]','$tgl','$_SESSION[fdp_pos_id_user]','$_POST[keterangan]')");
	}elseif ($_GET['m'] == 'update') {
		$q = mysqli_query($koneksi, "UPDATE tbl_inventory SET id_produk = '$_POST[id_produk]', jumlah='$_POST[jumlah]', tanggal='$tgl', id_user='$_SESSION[fdp_pos_id_user]', keterangan='$_POST[keterangan]' WHERE id = '$_POST[id]'");
	}elseif ($_GET['m'] == 'delete') {
		$q = mysqli_query($koneksi, "DELETE FROM tbl_inventory WHERE id = '$_POST[id]'");
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