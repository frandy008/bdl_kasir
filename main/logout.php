<?php  
session_start();
session_destroy();
echo json_encode(
	array(
		'response' => true, 
		'message' => 'Logout berhasil !'
	)
);

?>