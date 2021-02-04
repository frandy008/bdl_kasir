<?php 
include '../main/koneksi.php';
require_once "../assets/phpexcel/Classes/PHPExcel.php"; 
/*start - BLOCK PROPERTIES FILE EXCEL*/
	$file = new PHPExcel ();
	$file->getProperties ()->setCreator ( "IMFDP" );
	$file->getProperties ()->setLastModifiedBy ( "FDP Project" );
	$file->getProperties ()->setTitle ( "Laporan Penjualan" );
	$file->getProperties ()->setSubject ( "Master" );
	$file->getProperties ()->setDescription ( "Laporan Penjualan" );
	$file->getProperties ()->setKeywords ( "Laporan Penjualan" );
	$file->getProperties ()->setCategory ( "Aplikasi" );
/*end - BLOCK PROPERTIES FILE EXCEL*/
 
/*start - BLOCK SETUP SHEET*/
	$file->createSheet ( NULL,0);
	$file->setActiveSheetIndex ( 0 );
	$sheet = $file->getActiveSheet ( 0 );
	//memberikan title pada sheet
	$sheet->setTitle ( "Laporan Penjualan" );
/*end - BLOCK SETUP SHEET*/
 
/*start - BLOCK HEADER*/
	$sheet->setCellValue ( "A1", "No" );
	$sheet->setCellValue ( "B1", "No Faktur" );
	$sheet->setCellValue ( "C1", "Tanggal" );
	$sheet->setCellValue ( "D1", "Kode Produk" );
	$sheet->setCellValue ( "E1", "Nama" );
	$sheet->setCellValue ( "F1", "Jumlah" );
	$sheet->setCellValue ( "G1", "Satuan" );
	$sheet->setCellValue ( "H1", "Harga Jual" );
	$sheet->setCellValue ( "I1", "Sub Total" );
/*end - BLOCK HEADER*/
 
/* start - BLOCK MEMASUKAN DATABASE*/
	//ganti dengan database anda
	$result=mysqli_query($koneksi,"SELECT tbl_pesanan.kode_pesanan, DATE_FORMAT(tbl_pesanan.tanggal,'%M %Y') AS bulan, DATE_FORMAT(tbl_pesanan.tanggal,'%d %M %Y') AS tanggal,tbl_keranjang.id_produk,tbl_produk.kode_produk,tbl_produk.nama,tbl_satuan.satuan,tbl_keranjang.harga, tbl_keranjang.jumlah,tbl_keranjang.diskon,tbl_pesanan.total FROM tbl_pesanan,tbl_satuan,tbl_produk,tbl_keranjang WHERE tbl_pesanan.kode_pesanan = tbl_keranjang.kode_pesanan AND tbl_keranjang.id_produk = tbl_produk.id_produk AND tbl_produk.id_satuan = tbl_satuan.id_satuan AND tbl_pesanan.status = '1' AND DATE(tbl_pesanan.tanggal) BETWEEN '$_GET[tgl_awal]' AND '$_GET[tgl_akhir]'");
	$i=1;
	$total=0;
	$subtotal=0;
	while($row=mysqli_fetch_array($result)){
		$subtotal=($row['harga']*$row['jumlah'])-$row['diskon'];
		$i++;
		$sheet->setCellValue ( "A".$i, $i-1 );
		$sheet->setCellValue ( "B".$i, $row["kode_pesanan"] );
		$sheet->setCellValue ( "C".$i, $row["tanggal"] );
		$sheet->setCellValue ( "D".$i, $row["kode_produk"] );
		$sheet->setCellValue ( "E".$i, $row["nama"] );
		$sheet->setCellValue ( "F".$i, $row["jumlah"] );
		$sheet->setCellValue ( "G".$i, $row["satuan"] );
		$sheet->setCellValue ( "H".$i, $row["harga"] );
		$sheet->setCellValue ( "I".$i, $subtotal );
		$total=$total+$subtotal;
	}
/* end - BLOCK MEMASUKAN DATABASE*/
 
/* start - BLOCK MEMBUAT LINK DOWNLOAD*/
	header ( 'Content-Type: application/vnd.ms-excel' );
	//namanya adalah keluarga.xls
	header ( 'Content-Disposition: attachment;filename="Laporan penjualan_tgl_'.$_GET['tgl_awal'].'-'.$_GET['tgl_akhir'].'.xls"' ); 
	header ( 'Cache-Control: max-age=0' );
	$writer = PHPExcel_IOFactory::createWriter ( $file, 'Excel5' );
	$writer->save ( 'php://output' );
/* start - BLOCK MEMBUAT LINK DOWNLOAD*/
 
?>