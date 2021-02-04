<?php  
session_start();
include '../main/koneksi.php';
?> 
<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head>
    <title>laporan data piutang</title>
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
    <td colspan="2" style="width:800px;paddin-left:20px;"><center><h4>LAPORAN DATA PIUTANG</h4></center><br/></td>
</tr>
                       
</table>
 
<table border="0" align="center" style="width:900px;border:none;">
        <tr>
            <th style="text-align:left"></th>
        </tr>
</table>

<table border="1" align="center" style="width:900px;margin-bottom:20px;">
<?php 
$data = mysqli_query($koneksi,"SELECT * FROM tbl_penyalur");
    $urut=0;
    $nomor=0;
    ?>
    </table><br>
        <table align='center' width='900px;' border='1'>
        <tr style='background-color:#ccc;'>
            <td width='4%' align='center'>No</td>
            <td width='15%' align='center'>Id Reseller</td>
            <td width='40%' align='center'>Nama </td>
            <td width='10%' align='center'>No HP</td>
            <td width='10%' align='center'>Alamat</td>
            <td width='10%' align='center'>Hutang</td>
        </tr>
    <?php 
    $nomor=1;
    while($d = mysqli_fetch_array($data)){
        ?>
        <tr>
                <td style="text-align:center;vertical-align:center;text-align:center;"><?php echo $nomor++; ?></td>
                <td style="vertical-align:center;padding-left:5px;text-align:center;"><?php echo $d['id_penyalur']; ?></td>
                <td style="vertical-align:center;padding-left:5px;"><?php echo $d['nama_penyalur']; ?></td>
                <td style="vertical-align:center;text-align:center;"><?php echo $d['no_hp']; ?></td>
                <td style="vertical-align:center;padding-right:5px;text-align:right;"><?php echo $d['alamat']; ?></td>
                <td style="vertical-align:center;padding-right:5px;text-align:right;">Rp.<?php echo number_format($d['hutang']); ?></td>
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