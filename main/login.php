<?php  
include 'koneksi.php';

$user = mysqli_real_escape_string($koneksi,$_POST['username']);
$pass = md5(mysqli_real_escape_string($koneksi,$_POST['password']));
$q = mysqli_query($koneksi, "SELECT * FROM tbl_user WHERE username = '$user' AND password = '$pass'");
if (mysqli_num_rows($q) > 0) {
	$data = mysqli_fetch_array($q);
	$setting = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_setting"));
	session_start();
	$_SESSION['fdp_pos_id_user'] = $data['id_user'];
	$_SESSION['fdp_pos_username'] = $data['username'];
	$_SESSION['fdp_pos_nama'] = $data['nama'];
	$_SESSION['fdp_pos_id_level'] = $data['id_level'];
	$_SESSION['fdp_pos_nama_toko'] = $setting['nama_toko'];
	$_SESSION['fdp_pos_alamat'] = $setting['alamat'];

	echo json_encode(
		array(
			'response' => true, 
			'message' => 'Login berhasil !',
			'server_aplikasi' => $setting['server_aplikasi'],
			'server_update' => $setting['server_update']
		)
	);
}else{
	echo json_encode(
		array(
			'response' => false, 
			'message' => 'Gagal login ! '.mysql_error()
		)
	);
}

?>