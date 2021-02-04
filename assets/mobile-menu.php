<div class="mobile-menu-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="mobile-menu">
                    <nav id="dropdown">
                        <ul class="mobile-menu-nav">
                            <li><a href="index.php">Dashboard</a></li>
                            <?php if ($dpermisi['inventory'] == '1') { ?>
                            <li><a data-toggle="collapse" data-target="#demoevent" href="#">Inventory <span class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                <ul id="demoevent" class="collapse dropdown-header-top">
                                    <li><a href="_bmasuk.php">Pembelian</a>
                                    </li>
                                    <li><a href="_bkeluar.php">Barang Keluar</a>
                                    </li>
                                </ul>
                            </li>
                            <?php } ?>
                            <?php if ($dpermisi['master_data'] == '1') { ?>
                            <li><a data-toggle="collapse" data-target="#demopro" href="#">Master Data <span class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                <ul id="demopro" class="collapse dropdown-header-top">
                                    <li><a href="list-brand.php">Brand</a></li>
                                    <li><a href="list-kategori.php">Kategori</a></li>
                                    <li><a href="list-satuan.php">Satuan</a></li>
                                    <li><a href="list-suplier.php">Suplier</a></li>
                                    <li><a href="list-reseller.php">Reseller</a></li>
                                    <li><a href="list-produk.php">Produk</a></li>
                                    <li><a href="list-user.php">User</a></li>
                                </ul>
                            </li>
                            <li><a data-toggle="collapse" data-target="#democrou" href="#">Tambah Data <span class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                <ul id="democrou" class="collapse dropdown-header-top">
                                    <li><a href="_brand.php">Brand</a></li>
                                    <li><a href="_kategori.php">Kategori</a></li>
                                    <li><a href="_satuan.php">Satuan</a></li>
                                    <li><a href="_suplier.php">Suplier</a></li>
                                    <li><a href="_reseller.php">Reseller</a></li>
                                    <li><a href="_produk.php">Produk</a></li>
                                    <li><a href="_user.php">User</a></li>
                                </ul>
                            </li>
                            <?php } ?>
                            <?php if ($dpermisi['laporan'] == '1') { ?>
                            <li><a data-toggle="collapse" data-target="#demolibra" href="#">Laporan <span class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                <ul id="demolibra" class="collapse dropdown-header-top">
                                    <li><a href="laporan/lap_barang.php" target="_BLANK">Produk</a></li>
                                    <li><a href="_lap_penjualan.php">Penjualan</a></li>
                                    <li><a href="laporan/lap_piutang.php" target="_BLANK">Piutang</a></li>
                                    <li><a href="_lap_laba_rugi.php">Laba Rugi</a></li>
                                </ul>
                            </li>
                            <?php } ?>
                            <?php if ($dpermisi['permision'] == '1') { ?>
                            <li><a href="_permision.php">Dashboard</a></li>
                            <?php } ?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>