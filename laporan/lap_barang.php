<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head>
    <title>laporan data barang</title>
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
    <td colspan="2" style="width:800px;paddin-left:20px;"><center><h4>LAPORAN DATA BARANG</h4></center><br/></td>
</tr>
                       
</table>

<table border="1" align="center" style="width:900px;margin-bottom:20px;">
<?php 
session_start();
include '../main/koneksi.php';
    $urut=0;
    $nomor=0;
    $group='-';
    $data = mysqli_query($koneksi,"SELECT tbl_produk.id_produk, tbl_produk.kode_produk, tbl_produk.nama, tbl_brand.brand, tbl_produk.tipe, tbl_satuan.satuan, tbl_produk.harga_pokok, tbl_produk.harga_satuan, tbl_produk.harga_grosir, tbl_produk.harga_grosir2, tbl_produk.harga_grosir3, tbl_kategori.kategori FROM tbl_produk, tbl_brand, tbl_satuan, tbl_kategori WHERE tbl_produk.id_brand = tbl_brand.id_brand AND tbl_produk.id_satuan = tbl_satuan.id_satuan AND tbl_produk.id_kategori = tbl_kategori.id_kategori GROUP BY tbl_produk.id_brand,tbl_produk.nama");
    while ($d = mysqli_fetch_array($data)) {
    $nomor++;
    $urut++;
    if($group=='-' || $group!=$d['brand']){
        $kat=$d['brand'];
        
        if($group!='-') ?>
    </table><br>
        <table align='center' width='900px;' border='1'>
        <tr>
            <td colspan='10'><b>Brand: <?php echo $kat ?></b></td> 
        </tr>
        <tr style='background-color:#ccc;'>
            <td width='3%' align='center'>No</td>
            <td width='10%' align='center'>Kode Produk</td>
            <td width='30%' align='center'>Nama</td>
            <td width='10%' align='center'>Satuan</td>
            <td width='10%' align='center'>Harga Beli</td>
            <td width='10%' align='center'>Harga Satuan</td>
            <td width='10%' align='center'>Harga Grosir</td>
            <td width='10%' align='center'>Harga Grosir 2</td>
            <td width='10%' align='center'>Harga Grosir 3</td>
            <td width='10%' align='center'>Stok</td>
        </tr>
    <?php 
    $nomor=1;
    }
    $group=$d['brand'];
        if($urut==500){
        $nomor=0;
            echo "<div class='pagebreak'> </div>";

            }
        ?>
        <tr>
                <td style="text-align:center;vertical-align:center;text-align:center;"><?php echo $nomor; ?></td>
                <td style="vertical-align:center;padding-left:5px;text-align:center;"><?php echo $d['kode_produk']; ?></td>
                <td style="vertical-align:center;padding-left:5px;"><?php echo $d['nama']; ?> <?php echo $d['tipe']; ?></td>
                <td style="vertical-align:center;text-align:center;"><?php echo $d['satuan']; ?></td>
                <td style="vertical-align:center;padding-right:5px;text-align:right;"><?php echo 'Rp '.number_format($d['harga_pokok']); ?></td>
                <td style="vertical-align:center;padding-right:5px;text-align:right;"><?php echo 'Rp '.number_format($d['harga_satuan']); ?></td>
                <td style="vertical-align:center;padding-right:5px;text-align:right;"><?php echo 'Rp '.number_format($d['harga_grosir']); ?></td>
                <td style="vertical-align:center;padding-right:5px;text-align:right;"><?php echo 'Rp '.number_format($d['harga_grosir2']); ?></td>
                <td style="vertical-align:center;padding-right:5px;text-align:right;"><?php echo 'Rp '.number_format($d['harga_grosir3']); ?></td>
                <td style="vertical-align:center;text-align:center;text-align:center;"> 
                    <?php 
                    $pem = mysqli_fetch_array(mysqli_query($koneksi,"SELECT SUM(jumlah) as barangm FROM tbl_inventory WHERE jenis = '1' AND id_produk = '$d[id_produk]'"));
                    $peng = mysqli_fetch_array(mysqli_query($koneksi,"SELECT SUM(jumlah) as barangk FROM tbl_inventory WHERE jenis = '2' AND id_produk = '$d[id_produk]'")); 
                    $stok =  $pem['barangm'] - $peng['barangk'];
                    echo $stok;
                    ?> 
                </td>
        </tr>
        

        <?php
        }
        ?>
</table>

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