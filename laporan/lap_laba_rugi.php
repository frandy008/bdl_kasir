<?php  
session_start();
include '../main/koneksi.php';
?> 
<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head>
    <title>Laporan Laba/rugi</title>
    <meta charset="utf-8">
    <style type="text/css">
        body{
        font-family: arial,sans-serif;
        font-size:11px;
        margin:3px;
        }
        #laporan{
        color:black;
        padding:6px 2px;
        }
        #laporan table{
        border-collapse:collapse;
        border: 1px solid;
        font-size:11px;
        }
        #laporan table th{
        background:F1E7E8;
        font-weight:bold;
        vertical-align:middle;
        }

        #laporan table td{
        background:c8bfbf;
        }

        #laporan table bp{
        border:black;
        }
        .pagebreak{
        visibility:visible;
        page-break-after:always;
        }
        .garis{
            border:solid 1px;
        }
        .nongaris{
            border: none;
        }
    </style>
</head>
<body onload="">
<div id="laporan">
<table align="center" style="width:900px; border-bottom:3px double;border-top:none;border-right:none;border-left:none;margin-top:5px;margin-bottom:20px;">
<!--<tr>
    <td><img src="<?php// echo base_url().'assets/img/kop_surat.png'?>"/></td>
</tr>-->
</table>

<table border="0" align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:0px;">
<tr>
    <td colspan="2" style="width:800px;paddin-left:20px;"><center><h4>LAPORAN LABA / RUGI </h4></center><br/></td>
</tr>
                       
</table>
 
<table border="0" align="center" style="width:900px;border:none;">
        <tr>
            <th style="text-align:left"></th>
        </tr>
</table>

<table border="1" align="center" style="width:900px;margin-bottom:20px;">
<thead>
<tr>
<th colspan="10" style="text-align:left;">Bulan : <?php echo $_GET['bulan'];?></th>
</tr>
    <tr>
        <th style="width:50px;">No</th>
        <th>Tanggal</th>
        <th>Nama Barang</th>
        <th>Satuan</th>
        <th>Harga Pokok</th>
        <th>Harga Jual</th>
        <th>Keuntungan Per Unit</th>
        <th>Item Terjual</th>
        <th>Diskon</th>
        <th>Untung Bersih</th>
    </tr>
</thead>
<tbody>
<?php 
$b = mysqli_fetch_array(mysqli_query($koneksi,"SELECT tbl_pesanan.kode_pesanan, YEAR(tbl_pesanan.tanggal) AS tahun, DATE_FORMAT(tbl_pesanan.tanggal,'%M %Y') AS bulan, DATE_FORMAT(tbl_pesanan.tanggal,'%d %M %Y') AS tanggal,tbl_keranjang.id_produk,tbl_produk.nama,tbl_satuan.satuan,tbl_produk.harga_satuan, tbl_keranjang.jumlah,tbl_keranjang.diskon, SUM(((tbl_keranjang.harga-tbl_produk.harga_pokok)*tbl_keranjang.jumlah)-(tbl_keranjang.jumlah*tbl_keranjang.diskon)) AS total, (tbl_keranjang.harga-tbl_produk.harga_pokok) AS keuntungan FROM tbl_pesanan,tbl_satuan,tbl_produk,tbl_keranjang WHERE tbl_pesanan.kode_pesanan = tbl_keranjang.kode_pesanan AND tbl_keranjang.id_produk = tbl_produk.id_produk AND tbl_produk.id_satuan = tbl_satuan.id_satuan AND tbl_pesanan.status = '1' AND DATE_FORMAT(tbl_pesanan.tanggal,'%M %Y')='$_GET[bulan]'"));
$data = mysqli_query($koneksi,"SELECT tbl_pesanan.kode_pesanan, YEAR(tbl_pesanan.tanggal) AS tahun, DATE_FORMAT(tbl_pesanan.tanggal,'%M %Y') AS bulan, DATE_FORMAT(tbl_pesanan.tanggal,'%d %M %Y') AS tanggal,tbl_keranjang.id_produk,tbl_produk.nama,tbl_satuan.satuan,tbl_produk.harga_satuan, tbl_keranjang.jumlah,tbl_keranjang.diskon,tbl_keranjang.harga, ((tbl_keranjang.harga-tbl_produk.harga_pokok)*tbl_keranjang.jumlah)-(tbl_keranjang.jumlah*tbl_keranjang.diskon) AS untung_bersih, (tbl_keranjang.harga-tbl_produk.harga_pokok) AS keuntungan, tbl_produk.harga_pokok FROM tbl_pesanan,tbl_satuan,tbl_produk,tbl_keranjang WHERE tbl_pesanan.kode_pesanan = tbl_keranjang.kode_pesanan AND tbl_keranjang.id_produk = tbl_produk.id_produk AND tbl_produk.id_satuan = tbl_satuan.id_satuan AND tbl_pesanan.status = '1' AND DATE_FORMAT(tbl_pesanan.tanggal,'%M %Y')='$_GET[bulan]'");
$no=1;
    while ($i = mysqli_fetch_array($data)) { ?>
    <tr>
        <td style="text-align:center;"><?php echo $no++;?></td>
        <td style="text-align:center;"><?php echo $i['tanggal'];?></td>
        <td style="text-align:left;"><?php echo $i['nama'];?></td>
        <td style="text-align:left;"><?php echo $i['satuan'];?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($i['harga_pokok']);?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($i['harga']);?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($i['keuntungan']);?></td>
        <td style="text-align:center;"><?php echo $i['jumlah'];?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($i['diskon']);?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($i['untung_bersih']);?></td>
    </tr>
<?php }?>
</tbody>
<tfoot>

    <tr>
        <td colspan="9" style="text-align:center;"><b>Total Keuntungan</b></td>
        <td style="text-align:right;"><b><?php echo 'Rp '.number_format($b['total']);?></b></td>
    </tr>
</tfoot>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td></td>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td align="right">Luwuk, <?php echo date('d-M-Y')?></td>
    </tr>
    <tr>
        <td align="right"></td>
    </tr>
   
    <tr>
    <td><br/><br/><br/><br/></td>
    </tr>    
    <tr>
        <td align="right">( <?php echo $_SESSION['fdp_pos_nama'];?> )</td>
    </tr>
    <tr>
        <td align="center"></td>
    </tr>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <th><br/><br/></th>
    </tr>
    <tr>
        <th align="left"></th>
    </tr>
</table>
</div>
</body>
</html>