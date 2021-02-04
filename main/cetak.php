<?php
$printer = ($_POST['printer']);
if($ph = printer_open($printer)){
	$file = file_get_contents('http://localhost:8080/2020/fdp-kasir/main/struk_satuan.php?kode_pesanan='.$_POST['kode_pesanan'], FILE_USE_INCLUDE_PATH);
	printer_write($ph, $file);
	printer_close($ph);
	echo json_encode(
		array(
			'response' => true, 
			'message' => "OK"
		)
	);
}else{
	echo json_encode(
		array(
			'response' => false,
			'message' => "Couldn't connect..."
		)
	);	
} 
?>