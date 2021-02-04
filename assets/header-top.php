            <div class="header-top-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="header-top-wraper">
                                <div class="row">
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">
                                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                                <i class="educate-icon educate-nav"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                        <div class="header-top-menu tabl-d-n">
                                            <ul class="nav navbar-nav mai-top-nav">
                                                <?php if ($dpermisi['keranjang'] == '1') { ?>
                                                <li class="nav-item"><a href="penjualan_satuan.php" class="nav-link">Penjualan Satuan</a>
                                                </li>
                                                <li class="nav-item"><a href="penjualan_grosir.php" class="nav-link">Penjualan Grosir</a>
                                                </li>
                                                <?php } ?>
                                            </ul>
                                        </div>
                                    </div>
                                    <?php include 'assets/profile.php' ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>