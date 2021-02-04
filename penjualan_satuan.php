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
            <?php  
            require_once 'main/koneksi.php';
            $set = mysqli_fetch_array(mysqli_query($koneksi,"SELECT * FROM tbl_Setting LIMIT 1"));
            ?>
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <ul class="breadcome-menu">
                                            <li><h1 class="bread-blod">Rp.<span class="total_belanja">0</span></h1>
                                            </li>
                                            <input type="hidden" name="kode_pesanan" value="">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic Form Start -->
        <div class="basic-form-area mg-b-15">
            <div class="container-fluid">
                <?php  
                include 'main/koneksi.php';
                ?>
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="sparkline12-list">
                                    <div class="sparkline12-graph">
                                        <div class="basic-login-form-ad">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="all-form-element-inner">
                                                        <form action="#" class="form-id">
                                                            <div class="form-group">
                                                                <label>Kode Produk</label>
                                                                <div class="row">
                                                                    <div class="col-md-5">
                                                                        <input class="form-control input-id" onchange="cari_produk(1)" name="kode_produk" tabindex="1" />
                                                                    </div>
                                                                    <input type="hidden" name="jumlah" value="1">
                                                                    <div class="col-md-7">
                                                                        <input class="form-control input-id nama_produk" readonly="" />
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
                        </div><!-- ROw -->
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="sparkline12-list">
                                    <div class="sparkline12-hd">
                                        <div class="main-sparkline12-hd">
                                            <h1>Penjualan Satuan</h1>
                                        </div>
                                    </div>
                                    <div class="sparkline12-graph">
                                        <div class="basic-login-form-ad">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="all-form-element-inner">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th>Nama Produk</th>
                                                                    <th>Harga</th>
                                                                    <th>Jumlah</th>
                                                                    <th>Satuan</th>
                                                                    <th>Total Harga</th>
                                                                    <th>*</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="table">
                                                                
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- ROw -->
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="sparkline12-list">
                            <div class="sparkline12-graph">
                                <div class="basic-login-form-ad">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="all-form-element-inner">
                                                <form action="#" class="form-detail">
                                                    <input type="hidden" name="kode_pesanan">
                                                    <input type="hidden" name="total_belanja">
                                                    <input type="hidden" name="ppn">
                                                    <div class="form-group">
                                                        <label>Total Belanja + PPN(10%)</label>
                                                        <input class="form-control total_belanja" type="number" readonly="" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Potongan</label>
                                                        <input class="form-control" type="number" name="potongan" tabindex="2" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Tunai</label>
                                                        <input class="form-control tunai" type="number" onkeypress="$('.tombolProses').removeAttr('hidden')" name="tunai" tabindex="3" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Kembalian</label>
                                                        <input class="form-control kembalian" type="number" name="kembalian" readonly="" />
                                                    </div>
                                                    <div class="form-group tombolProses" hidden="">
                                                        <a href="#" data-toggle="modal" data-target="#modalProses"><button class="btn btn-sm btn-success btnProsesPenjualan" type="button">Proses</button></a>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- col-4 -->
                </div>
            </div>
        </div>
        <!-- Basic Form End-->
    </div>

    <div style="margin-bottom: 100px;"></div>
    <?php include 'assets/footer.php' ?>

    <div id="modalHapus" class="modal modal-edu-general Customwidth-popup-WarningModal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-close-area modal-close-df">
                    <a class="close" data-dismiss="modal" href="#"><i class="fa fa-close"></i></a>
                </div>
                <div class="modal-body">
                    <span class="educate-icon educate-warning modal-check-pro information-icon-pro"></span>
                    <h2>Perhatian!</h2>
                    <input type="hidden" name="id_produk" value="">
                    <p>Anda akan menghapus <b id="nama_produk"></b> !</p>
                    <p>Data yang di hapus tidak bisa dikembalikan !</p>
                </div>
                <div class="modal-footer warning-md">
                    <a data-dismiss="modal" href="#">Batal</a>
                    <a href="#" id="btnProsesDel">Proses</a>
                </div>
            </div>
        </div>
    </div>

    <div id="modalProses" class="modal modal-edu-general Customwidth-popup-WarningModal fade" role="dialog" hidden="">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-close-area modal-close-df">
                    <a class="close" data-dismiss="modal" href="#"><i class="fa fa-close"></i></a>
                </div>
                <div class="modal-body">
                    <span class="educate-icon educate-warning modal-check-pro information-icon-pro"></span>
                    <h2>Perhatian!</h2>
                    <p>Pesanan akan diproses !</p>
                    <p>Pesanan akan selesai setelah menekan tombol Cetak dan Proses !</p>
                    <input type="hidden" name="printer">
                </div>
                <div class="modal-footer warning-md">
                    <a data-dismiss="modal" href="#">Batal</a>
                    <?php
                     if ($set['jenis_cetak'] == 'Tidak langsung') { ?>
                    <a href="#" id="tombol_cetak" target="_BLANK" onclick="proses_pesanan(1)">Cetak dan Proses</a>
                    <?php }else{ ?>
                    <a href="#" id="" onclick="cetak(1)">Cetak dan Proses</a>
                    <?php } ?>
                </div>
            </div>
        </div>
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
    <script type="text/javascript">
        get_keranjang(1);
        get_printer();
        $('.tunai').on('keyup', function(){
            $('.kembalian').val($('.tunai').val()-($('.total_belanja').val()-$('input[name="potongan"]').val()));
        });

        $('input[name="potongan"]').on('keyup', function(){
           $('.kembalian').val($('.tunai').val()-($('.total_belanja').val()-$('input[name="potongan"]').val())); 
        });

        function cetak(k){
            var printer = $('input[name="printer"]').val();
            $.ajax({
                url : url+'main/print_'+k+'.php?id='+$('input[name="kode_pesanan"]').val(),
                type: 'POST',
                data : {
                    'printer' : printer,
                    'kode_pesanan' : $('input[name="kode_pesanan"]').val()
                },
                success: function(data, textStatus, jqXHR)
                {
                    proses_pesanan(1);
                    console.log(data);
                    console.log(textStatus);
                    console.log(jqXHR);

                }
            });
        }

        /*$.post('main/struk_satuan.php?kode_pesanan='+$('input[name="kode_pesanan"]').val(), { url: url }, function(data) {
            document.getElementById('get-content').innerHTML = data;        
        });*/
    </script>
</body>

</html>