<?php  
include 'koneksi.php';

$q = mysqli_query($koneksi, "UPDATE tbl_setting SET nama_toko = '$_POST[nama_toko]', alamat = '$_POST[alamat]', jenis_cetak = '$_POST[jenis_cetak]', server_aplikasi = '$_POST[server_aplikasi]', server_update = '$_POST[server_update]'");
if ($q) {
	echo json_encode(
		array(
			'response' => true,
			'message' => 'Berhasil memperbarui setting !'
		)
	);
}else{
	echo json_encode(
		array(
			'response' => false,
			'message' => 'Gagal memperbarui setting ! '.mysql_error()
		)
	);
}
?>