<?php
$getdata = http_build_query(
array(
    'kode_pesanan' => '2010090001',
 )
);

$opts = array('http' =>
 array(
    'method'  => 'POST',
    'content' => $getdata
)
);

$context  = stream_context_create($opts);

$result = file_get_contents('http://localhost:8080/2020/fdp-kasir/main/struk_satuan.php?'.$getdata, false, $context);
echo $result;
?>