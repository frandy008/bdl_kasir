<?php  
include 'koneksi.php';
$u = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_user WHERE id_user = '$_POST[id_user]'"));
if ($_POST['password'] == '') {
	$pass = $u['password'];
}else{
	$pass = md5($_POST['password']);
}
$q = mysqli_query($koneksi, "UPDATE tbl_user SET username = '$_POST[username]', nama = '$_POST[nama]', password = '$pass' WHERE id_user = '$_POST[id_user]'");
if ($q) {
	echo json_encode(
		array(
			'response' => true,
			'message' => 'Berhasil memperbarui profile !' 
		)
	);
}else{
	echo json_encode(
		array(
			'response' => true,
			'message' => 'Gagal memperbarui profile ! '.mysql_error() 
		)
	);
}
?>