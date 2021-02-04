<?php  
include 'koneksi.php';

$m = $_GET['m'];
if ($m == 'delete') {
	$q = mysqli_query($koneksi, "DELETE FROM tbl_user WHERE id_user = '$_POST[id]'");
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
	$sd = mysqli_query($koneksi, "SELECT * FROM tbl_user WHERE username = '$_POST[username]'");
	if (mysql_num_rows($sd) > 0) {
		mysqli_query($koneksi, "DELETE FROM tbl_user WHERE username = '$_POST[username]'");
	}
	$pass = md5($_POST['password']);
	$q = mysqli_query($koneksi, "INSERT INTO tbl_user(username,nama,password,id_level) VALUES('$_POST[username]','$_POST[nama]','$pass','$_POST[id_level]')");
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
	$sd = mysqli_query($koneksi, "SELECT * FROM tbl_user WHERE username = '$_POST[username]'");
	$du = mysqli_fetch_array($sd);
	if ($_POST['password'] == '') {
		$pass = $du['password'];
	}else{
		$pass = md5($_POST['password']);
	}
	if (mysql_num_rows($sd) > 0) {
		mysqli_query($koneksi, "DELETE FROM tbl_user WHERE username = '$_POST[username]'");
	}
	$q = mysqli_query($koneksi, "INSERT INTO tbl_user(username,nama,password,id_level) VALUES('$_POST[username]','$_POST[nama]','$pass','$_POST[id_level]')");
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