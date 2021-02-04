<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <?php include 'assets/title.php' ?>
    <?php include 'assets/meta.php' ?>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="css/font.css" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- notifications CSS
        ============================================ -->
    <link rel="stylesheet" href="css/notifications/Lobibox.min.css">
    <link rel="stylesheet" href="css/notifications/notifications.css">
    <!-- modals CSS
		============================================ -->
    <link rel="stylesheet" href="css/modals.css">
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="css/form/all-type-forms.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
    <!-- Start Left menu area -->
    <?php include 'assets/sidebar.php' ?>
    <!-- End Left menu area -->
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-advance-area">
            <?php include 'assets/header-top.php' ?>
            <!-- Mobile Menu start -->
            <?php include 'assets/mobile-menu.php' ?>
            <!-- Mobile Menu end -->
            <div class="breadcome-area" style="margin: 20px">
            </div>
        </div>
        <!-- Basic Form Start -->
        <div class="basic-form-area mg-b-15">
            <div class="container-fluid">
                <?php  
                include 'main/koneksi.php';
                if (isset($_GET['id'])) {
                    $q = mysqli_fetch_array(mysqli_query($koneksi,"SELECT * FROM tbl_produk WHERE id_produk = '$_GET[id]'"));
                    $kode_produk = $q['kode_produk'];
                    $nama = $q['nama'];
                    $brand = $q['id_brand'];
                    $kategori = $q['id_kategori'];
                    $satuan = $q['id_satuan'];
                    $harga_beli = $q['harga_pokok'];
                    $harga_satuan = $q['harga_satuan'];
                    $harga_grosir = $q['harga_grosir'];
                    $harga_grosir2 = $q['harga_grosir2'];
                    $harga_grosir3 = $q['harga_grosir3'];
                    $mode = 'update';
                }else{
                    $kode_produk = '';
                    $nama = '';
                    $brand = '';
                    $kategori = '';
                    $satuan = '';
                    $harga_beli = '';
                    $harga_satuan = '';
                    $harga_grosir = '';
                    $harga_grosir2 = '';
                    $harga_grosir3 = '';
                    $mode = 'add';
                }
                ?>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="sparkline12-list">
                            <div class="sparkline12-hd">
                                <div class="main-sparkline12-hd">
                                    <h1>Produk Form</h1>
                                </div>
                            </div>
                            <div class="sparkline12-graph">
                                <div class="basic-login-form-ad">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="all-form-element-inner">
                                                <form action="#" class="form">
                                                    <input type="hidden" name="m" value="<?php echo $mode ?>">
                                                    <div class="form-group" <?php if ($kode_produk != '') { echo 'hidden=""'; } ?>>
                                                        <label>Kode Produk</label>
                                                        <input class="form-control" value="<?php echo $kode_produk ?>" name="kode_produk">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Nama Produk</label>
                                                        <input class="form-control" value="<?php echo $nama ?>" name="nama">
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <label>Brand</label>
                                                        <select class="form-control" name="id_brand" required="">
                                                            <option value="" selected="" disabled="">Pilih</option>
                                                            <?php  
                                                            $sb = mysqli_query($koneksi,"SELECT * FROM tbl_brand ORDER BY brand ASC");
                                                            while ($b = mysqli_fetch_array($sb)) {
                                                            ?>
                                                            <option value="<?php echo $b['id_brand'] ?>" <?php if ($b['id_brand'] == $brand) { echo 'selected=""';} ?>><?php echo $b['brand'] ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <label>Kategori</label>
                                                        <select class="form-control" name="id_kategori" required="">
                                                            <option value="" selected="" disabled="">Pilih</option>
                                                            <?php  
                                                            $sk = mysqli_query($koneksi,"SELECT * FROM tbl_kategori");
                                                            while ($k = mysqli_fetch_array($sk)) {
                                                            ?>
                                                            <option value="<?php echo $k['id_kategori'] ?>" <?php if ($k['id_kategori'] == $kategori) { echo 'selected=""';} ?>><?php echo $k['kategori'] ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <label>Satuan</label>
                                                        <select class="form-control" name="id_satuan" required="">
                                                            <option value="" selected="" disabled="">Pilih</option>
                                                            <?php  
                                                            $ss = mysqli_query($koneksi,"SELECT * FROM tbl_satuan");
                                                            while ($s = mysqli_fetch_array($ss)) {
                                                            ?>
                                                            <option value="<?php echo $s['id_satuan'] ?>" <?php if ($s['id_satuan'] == $satuan) { echo 'selected=""';} ?>><?php echo $s['satuan'] ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Harga Beli</label>
                                                        <input class="form-control" type="number" value="<?php echo $harga_beli ?>" name="harga_beli">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Harga Jual(Satuan)</label>
                                                        <input class="form-control" type="number" value="<?php echo $harga_satuan ?>" name="harga_satuan">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Harga Jual(Grosir)</label>
                                                        <input class="form-control" type="number" value="<?php echo $harga_grosir ?>" name="harga_grosir">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Harga Jual(Grosir 2)</label>
                                                        <input class="form-control" type="number" value="<?php echo $harga_grosir2 ?>" name="harga_grosir2">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Harga Jual(Grosir 3)</label>
                                                        <input class="form-control" type="number" value="<?php echo $harga_grosir3 ?>" name="harga_grosir3">
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <div class="login-btn-inner">
                                                            <div class="row">
                                                                <div class="col-lg-9">
                                                                    <div class="login-horizental cancel-wp pull-left form-bc-ele">
                                                                        <button class="btn btn-sm btn-primary login-submit-cs btnSimpan" data-p="produk" type="button">Save</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic Form End-->
        <?php include 'assets/footer.php' ?>
    </div>

    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- notification JS
        ============================================ -->
    <script src="js/notifications/Lobibox.js"></script>
    <script src="js/notifications/notification-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="js/icheck/icheck.min.js"></script>
    <script src="js/icheck/icheck-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/memedi_library_enc.js"></script>
    <script src="js/main.js"></script>
</body>

</html>