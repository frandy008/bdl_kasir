<?php  
include '../main/koneksi.php';
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
	<style type="text/css">
		body{
			font-family: arial,sans-serif;
		}
		h3{
			margin-bottom: 0;
		}
		p{
			font-size: 11px;
			width: 211px;
			margin: 0;
			/*padding-right: 20px;*/
			
		}
		#alamat{
			margin-top:0;
			margin-bottom: 10px;
		}
		#order_no{
			text-align: left;
		}
		#waktu{
			text-align: left;
			font-weight: bold;
		}
		#kasir{
			text-align: left;
			margin-bottom: 5px;
		}
		/*.left{
			padding-left: 20px;
		}*/
		table{
			font-size: 11px;
			padding-right: 20px;
		}
		th{
			border-top: 2px dashed black;
			border-bottom: 2px dashed black;
		}
		.garis_atas{
			border-top: 2px dashed black;
		}
	</style>
</head>
<body onload="print()">
<?php $set = mysql_fetch_array(mysql_query("SELECT * FROM tbl_setting LIMIT 1")); ?>
<?php $b=mysql_fetch_array(mysql_query("SELECT kode_pesanan,DATE_FORMAT(tanggal,'%d-%m-%Y') AS tanggal,total,tunai,potongan,ppn,kembalian FROM tbl_pesanan WHERE kode_pesanan='$_GET[id]'")); ?>
	<center>
		<h3><?php echo $set['nama_toko'] ?></h3>
		<p id="alamat" class="left"><?php echo $set['alamat'] ?></p>
		<p id="order_no" class="left">Order : <?php echo $_GET['id']; ?></p>
		<p id="waktu" class="left">Waktu : <?php echo date('d-m-Y H:i:s'); ?></p>
		<p id="kasir" class="left">Kasir : <?php echo $_SESSION['fdp_pos_nama'] ?></p>

		<table width="211px">
			<thead>
				<tr>
					<th>Qty</th>
					<th>Name</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<?php  
				$sd_keranjang = mysql_query("SELECT * FROM tbl_keranjang WHERE kode_pesanan = '$b[kode_pesanan]'");
    			while ($i = mysql_fetch_array($sd_keranjang)) { 
					$produk = mysql_fetch_array(mysql_query("SELECT * FROM tbl_produk WHERE id_produk = '$i[id_produk]'"));
    			?>
				<tr>
					<td align="center"><?php echo $i['jumlah'] ?></td>
					<td><?php echo $produk['nama']; ?></td>
					<td style="text-align:right;"><?php echo number_format($i['harga']); ?></td>
				</tr>
				<?php } ?>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2" align="center" class="garis_atas"><b>Total + PPN(10%)</b></td>
					
					<td style="text-align:right;" class="garis_atas"><b><?php echo number_format($b['total']+$b['ppn']);?></b></td>
				</tr>
				<tr>
					<td colspan="2" align="center">Tunai</td>
					<td align="right"><?php echo number_format($b['tunai']) ?></td>
				</tr>
				<tr>
					<td colspan="2" align="center">Kembalian</td>
					<td align="right"><?php echo number_format($b['kembalian']) ?></td>
				</tr>
			</tfoot>
		</table>
		<br>
		<p>Terima kasih atas kunjungan anda</p>
		<p>Barang yang dibeli</p>
		<p>Tidak dapat dikembalikan/ditukar</p>
	</center>
</body>
</html>