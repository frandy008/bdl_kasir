<?php
session_start();
include 'koneksi.php';

$sub_total = 0;
$total = 0;

$sset = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_setting"));
$sker = mysqli_query($koneksi, "SELECT * FROM tbl_keranjang WHERE kode_pesanan = '$_GET[id]'");
$dpesan = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_pesanan WHERE kode_pesanan ='$_GET[id]'"));

$text  = $sset['nama_toko']."\n";
$text .= $sset['alamat']."\n";
$text .= "\n";
$text .= "No. Struk   : ".$_POST['kode_pesanan']."\n";
$text .= "Tgl Struk   : ".date('d-m-Y H:i:s')."\n";
$text .= "Kasir       : ".$_SESSION['fdp_pos_nama']."\n";
$text .= "-----------------------------\n";
while ($dk = mysqli_fetch_array($sker)) {
	$dprod = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_produk WHERE id_produk = '$dk[id_produk]'"));
	$dsat = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tbl_satuan WHERE id_satuan = '$dprod[id_satuan]'"));
	
	$sub_total = $dk['harga']*$dk['jumlah'];
	$text .= $dprod['nama']."\n";
	$text .= $dk['jumlah']." ".$dsat['satuan']." * ".number_format($dk['harga'])." = ".number_format($sub_total)."\n";
	$total = $total+$sub_total;
}
$text .= "-----------------------------\n";
$text .= "Total Belanja : ".number_format($dpesan['total']+$dpesan['ppn'])."\n";
$text .= "Tunai         : ".number_format($dpesan['tunai'])."\n";
$text .= "Kembalian     : ".number_format($dpesan['kembalian'])."\n";
$text .= "\n";
$text .= "Terima kasih atas kunjungan anda\n";
$printer = printer_open($_POST['printer']); //open printer
printer_write($printer, $text);   
printer_close($printer);
?>