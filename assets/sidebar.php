<?php  
session_start();
if (!isset($_SESSION['fdp_pos_username'])) {
    header("location:login.php");
}
require_once 'main/koneksi.php';
$permisi = mysqli_query($koneksi, "SELECT * FROM tbl_permision WHERE id_level = '$_SESSION[fdp_pos_id_level]'");
$dpermisi = mysqli_fetch_array($permisi);
?>
<div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href="index.php"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                <strong><a href="index.php"><img src="img/logo/logosn.png" alt="" /></a></strong>
            </div>
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li class="active">
                            <a class="" href="index.php">
                               <span class="educate-icon educate-home icon-wrap"></span>
                               <span class="mini-click-non">Dashboard</span>
                           </a>
                        </li>
                        <?php if ($dpermisi['inventory'] == '1') { ?>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><span class="educate-icon educate-apps icon-wrap"></span> <span class="mini-click-non">Inventory</span></a>
                            <ul class="submenu-angle app-mini-nb-dp" aria-expanded="false">
                                <li><a href="list-bmasuk.php"><span class="mini-sub-pro">Pembelian</span></a></li>
                                <li><a href="list-bkeluar.php"><span class="mini-sub-pro">Barang Keluar</span></a></li>
                            </ul>
                        </li>
                        <?php } ?>
                        <?php if ($dpermisi['master_data'] == '1') { ?>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><span class="educate-icon educate-course icon-wrap"></span> <span class="mini-click-non">Master Data</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a href="list-brand.php"><span class="mini-sub-pro">Brand</span></a></li>
                                <li><a href="list-kategori.php"><span class="mini-sub-pro">Kategori</span></a></li>
                                <li><a href="list-satuan.php"><span class="mini-sub-pro">Satuan</span></a></li>
                                <li><a href="list-suplier.php"><span class="mini-sub-pro">Suplier</span></a></li>
                                <li><a href="list-reseller.php"><span class="mini-sub-pro">Reseller</span></a></li>
                                <li><a href="list-produk.php"><span class="mini-sub-pro">Produk</span></a></li>
                                <li><a href="list-user.php"><span class="mini-sub-pro">User</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><span class="educate-icon educate-form icon-wrap"></span> <span class="mini-click-non">Tambah Data</span></a>
                            <ul class="submenu-angle form-mini-nb-dp" aria-expanded="false">
                                <li><a href="_brand.php"><span class="mini-sub-pro">Brand</span></a></li>
                                <li><a href="_kategori.php"><span class="mini-sub-pro">Kategori</span></a></li>
                                <li><a href="_satuan.php"><span class="mini-sub-pro">Satuan</span></a></li>
                                <li><a href="_suplier.php"><span class="mini-sub-pro">Suplier</span></a></li>
                                <li><a href="_reseller.php"><span class="mini-sub-pro">Reseller</span></a></li>
                                <li><a href="_produk.php"><span class="mini-sub-pro">Produk</span></a></li>
                                <li><a href="_user.php"><span class="mini-sub-pro">User</span></a></li>
                            </ul>
                        </li>
                        <?php } ?>
                        <?php if ($dpermisi['laporan'] == '1') { ?>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><span class="educate-icon educate-data-table icon-wrap"></span> <span class="mini-click-non">Laporan</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a href="laporan/lap_barang.php" target="_BLANK"><span class="mini-sub-pro">Produk</span></a></li>
                                <li><a href="_lap_penjualan.php"><span class="mini-sub-pro">Penjualan</span></a></li>
                                <li><a href="laporan/lap_piutang.php" target="_BLANK"><span class="mini-sub-pro">Piutang</span></a></li>
                                <li><a href="_lap_laba_rugi.php"><span class="mini-sub-pro">Laba Rugi</span></a></li>
                            </ul>
                        </li>
                        <?php } ?>
                        <?php if ($dpermisi['permision'] == '1') { ?>
                        <li id="removable">
                            <a class="" href="list-level.php" aria-expanded="false"><span class="educate-icon educate-pages icon-wrap"></span> <span class="mini-click-non">Permision</span></a>
                        </li>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><span class="fa fa-database icon-wrap"></span> <span class="mini-click-non"> Database</span></a>
                            <ul class="submenu-angle form-mini-nb-dp" aria-expanded="false">
                                <li><a href="_backup.php"><span class="mini-sub-pro">Backup</span></a></li>
                                <li><a href="_restore.php"><span class="mini-sub-pro">Restore</span></a></li>
                            </ul>
                        </li>
                        <?php } ?>
                        <li>
                            <a class="" href="_printer.php">
                               <span class="fa fa-print icon-wrap"></span>
                               <span class="mini-click-non">Printer Setting</span>
                           </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>