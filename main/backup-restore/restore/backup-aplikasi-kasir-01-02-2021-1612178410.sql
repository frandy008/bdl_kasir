DROP TABLE tbl_belanja_member;

CREATE TABLE `tbl_belanja_member` (
  `id_belanja` int(10) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(16) NOT NULL,
  `total` int(12) NOT NULL,
  `metode_bayar` int(1) NOT NULL,
  `pembayaran` int(12) NOT NULL,
  `id_penyalur` varchar(15) NOT NULL,
  PRIMARY KEY (`id_belanja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE tbl_brand;

CREATE TABLE `tbl_brand` (
  `id_brand` int(2) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO tbl_brand VALUES("12","Indofood");
INSERT INTO tbl_brand VALUES("15","Johnson");
INSERT INTO tbl_brand VALUES("16","Tin Tin");
INSERT INTO tbl_brand VALUES("17","Wings Food");
INSERT INTO tbl_brand VALUES("18","UBM Biscuits");
INSERT INTO tbl_brand VALUES("19","Wings");
INSERT INTO tbl_brand VALUES("20","ABC");
INSERT INTO tbl_brand VALUES("21","KAO");
INSERT INTO tbl_brand VALUES("22","Mayora");
INSERT INTO tbl_brand VALUES("23","P&G");
INSERT INTO tbl_brand VALUES("24","nasional");
INSERT INTO tbl_brand VALUES("25","Unilever");
INSERT INTO tbl_brand VALUES("26","Ajinimoto");
INSERT INTO tbl_brand VALUES("27","garuda food");
INSERT INTO tbl_brand VALUES("28","borwita");
INSERT INTO tbl_brand VALUES("29","bkp");
INSERT INTO tbl_brand VALUES("30","mega surya mas");
INSERT INTO tbl_brand VALUES("32","sinar ancol");
INSERT INTO tbl_brand VALUES("33","OT");
INSERT INTO tbl_brand VALUES("35","siantar top");
INSERT INTO tbl_brand VALUES("36","kapal api");
INSERT INTO tbl_brand VALUES("37","nestle");
INSERT INTO tbl_brand VALUES("38","forisa");
INSERT INTO tbl_brand VALUES("39","marimas");
INSERT INTO tbl_brand VALUES("40","sidomuncol");
INSERT INTO tbl_brand VALUES("41","asw foods");
INSERT INTO tbl_brand VALUES("42","inafood");
INSERT INTO tbl_brand VALUES("43","lollipops");
INSERT INTO tbl_brand VALUES("44","sinde");
INSERT INTO tbl_brand VALUES("45","coca cola");
INSERT INTO tbl_brand VALUES("46","Danone");
INSERT INTO tbl_brand VALUES("47","CPO");
INSERT INTO tbl_brand VALUES("48","WILMAR");
INSERT INTO tbl_brand VALUES("49","sari rasa");
INSERT INTO tbl_brand VALUES("50","hakiki");
INSERT INTO tbl_brand VALUES("51","dua kelinci");
INSERT INTO tbl_brand VALUES("52","Lion");



DROP TABLE tbl_inventory;

CREATE TABLE `tbl_inventory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_produk` varchar(50) NOT NULL,
  `jenis` int(1) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_suplier` int(5) DEFAULT '0',
  `keterangan` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

INSERT INTO tbl_inventory VALUES("39","203","1","72","2020-10-26","3","0","Pembelian Barang");
INSERT INTO tbl_inventory VALUES("40","203","2","36","2020-10-26","3","0","Penjualan-2010260001");
INSERT INTO tbl_inventory VALUES("41","138","1","200","2020-11-17","3","0","Pembelian Barang");
INSERT INTO tbl_inventory VALUES("42","815","1","50","2020-11-17","3","0","Pembelian Barang");
INSERT INTO tbl_inventory VALUES("43","815","2","2","2020-11-17","3","0","Penjualan-2011170001");
INSERT INTO tbl_inventory VALUES("44","815","2","2","2020-11-17","3","0","Penjualan-2011170001");
INSERT INTO tbl_inventory VALUES("45","815","2","20","2020-11-17","3","0","Penjualan-2011170002");



DROP TABLE tbl_kategori;

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(2) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO tbl_kategori VALUES("17","Minuman");
INSERT INTO tbl_kategori VALUES("18","Cemilan");
INSERT INTO tbl_kategori VALUES("19","Lotion");
INSERT INTO tbl_kategori VALUES("20","Rokok");
INSERT INTO tbl_kategori VALUES("21","Bumbu Dapur");
INSERT INTO tbl_kategori VALUES("22","Pengharum Ruangan");
INSERT INTO tbl_kategori VALUES("23","Makanan dan Minuman");
INSERT INTO tbl_kategori VALUES("24","Sabun");
INSERT INTO tbl_kategori VALUES("25","Popok");
INSERT INTO tbl_kategori VALUES("26","sampo");
INSERT INTO tbl_kategori VALUES("27","sikat");
INSERT INTO tbl_kategori VALUES("28","permen");
INSERT INTO tbl_kategori VALUES("29","susu");
INSERT INTO tbl_kategori VALUES("30","bedak");
INSERT INTO tbl_kategori VALUES("31","minyak");
INSERT INTO tbl_kategori VALUES("32","anti nyamuk");
INSERT INTO tbl_kategori VALUES("33","obat");
INSERT INTO tbl_kategori VALUES("34","ATK");



DROP TABLE tbl_keranjang;

CREATE TABLE `tbl_keranjang` (
  `id_keranjang` int(10) NOT NULL AUTO_INCREMENT,
  `id_produk` varchar(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `berat` int(5) NOT NULL,
  `harga` int(13) NOT NULL,
  `diskon` int(12) NOT NULL,
  `kode_pesanan` varchar(10) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

INSERT INTO tbl_keranjang VALUES("83","203","36","0","1833","0","2010260001");
INSERT INTO tbl_keranjang VALUES("87","815","2","0","7000","0","2011170001");
INSERT INTO tbl_keranjang VALUES("88","815","20","0","6500","0","2011170002");



DROP TABLE tbl_level;

CREATE TABLE `tbl_level` (
  `id_level` int(2) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tbl_level VALUES("0","Super User");
INSERT INTO tbl_level VALUES("1","Admin");
INSERT INTO tbl_level VALUES("2","Manager");
INSERT INTO tbl_level VALUES("3","Gudang");
INSERT INTO tbl_level VALUES("4","Kasir");
INSERT INTO tbl_level VALUES("5","Umum");



DROP TABLE tbl_penyalur;

CREATE TABLE `tbl_penyalur` (
  `id_penyalur` varchar(10) NOT NULL,
  `nama_penyalur` varchar(50) NOT NULL,
  `jenis_usaha` int(1) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hutang` int(12) NOT NULL,
  `batas_hutang` int(12) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `barcode` varchar(50) NOT NULL,
  PRIMARY KEY (`id_penyalur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_penyalur VALUES("0907200001","Kios Mbak Ida","1","0856","Jl.Pulau Sandakan","78930","1000000","1","0907200001.jpg");
INSERT INTO tbl_penyalur VALUES("111","Grosir Umum","0","-","-","0","0","1","");



DROP TABLE tbl_permision;

CREATE TABLE `tbl_permision` (
  `id_level` int(5) NOT NULL,
  `brand` int(1) NOT NULL,
  `inventory` int(1) NOT NULL,
  `kategori` int(1) NOT NULL,
  `keranjang` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `pesanan` int(1) NOT NULL,
  `produk` int(1) NOT NULL,
  `satuan` int(1) NOT NULL,
  `suplier` int(1) NOT NULL,
  `user` int(1) NOT NULL,
  `laporan` int(1) NOT NULL,
  `laporan_d_barang` int(1) NOT NULL,
  `laporan_s_barang` int(1) NOT NULL,
  `laporan_penjualan` int(1) NOT NULL,
  `laporan_pp_tanggal` int(1) NOT NULL,
  `laporan_pp_bulan` int(1) NOT NULL,
  `laporan_pp_tahun` int(1) NOT NULL,
  `laporan_laba_rugi` int(1) NOT NULL,
  `master_data` int(1) NOT NULL,
  `permision` int(1) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_permision VALUES("0","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO tbl_permision VALUES("1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO tbl_permision VALUES("2","1","1","1","0","0","0","1","1","1","0","1","1","1","1","1","1","1","1","1","0");
INSERT INTO tbl_permision VALUES("3","0","1","0","0","0","0","0","0","0","0","0","1","1","0","0","0","0","0","0","0");
INSERT INTO tbl_permision VALUES("4","0","0","0","1","0","1","0","0","0","0","0","0","0","0","0","0","0","0","0","0");
INSERT INTO tbl_permision VALUES("5","0","1","0","1","0","1","0","0","0","0","1","0","0","0","0","0","0","0","0","0");



DROP TABLE tbl_pesanan;

CREATE TABLE `tbl_pesanan` (
  `kode_pesanan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(5) NOT NULL,
  `status` int(1) NOT NULL,
  `ppn` int(12) NOT NULL,
  `total` int(12) NOT NULL,
  `potongan` int(12) NOT NULL,
  `tunai` int(12) NOT NULL DEFAULT '0',
  `kembalian` int(12) NOT NULL,
  PRIMARY KEY (`kode_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_pesanan VALUES("2010260001","2020-10-26","3","1","0","65988","0","100000","34012");
INSERT INTO tbl_pesanan VALUES("2011170001","2020-11-17","3","1","0","14000","0","16000","2000");
INSERT INTO tbl_pesanan VALUES("2011170002","2020-11-17","3","1","0","130000","0","150000","20000");
INSERT INTO tbl_pesanan VALUES("2011170003","2020-11-17","3","0","0","0","0","0","0");



DROP TABLE tbl_produk;

CREATE TABLE `tbl_produk` (
  `id_produk` int(20) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_kategori` int(2) NOT NULL,
  `id_satuan` int(5) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `id_brand` int(2) NOT NULL,
  `harga_pokok` int(12) NOT NULL DEFAULT '0',
  `harga_satuan` int(12) NOT NULL DEFAULT '0',
  `harga_grosir` int(12) NOT NULL DEFAULT '0',
  `harga_grosir2` int(12) NOT NULL,
  `harga_grosir3` int(12) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `last_update` varchar(16) NOT NULL,
  `penjualan` varchar(1) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=816 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produk VALUES("138","8998866200325","Mie Sedaap Soto","23","2","","17","2225","2500","2300","0","0","","","","");
INSERT INTO tbl_produk VALUES("139","8998866200578","mi sedap kari","23","2","","17","2225","2500","2300","0","0","","","","");
INSERT INTO tbl_produk VALUES("140","8998866200301","mi sedap goreng","23","2","","17","2350","2500","2400","0","0","","","","");
INSERT INTO tbl_produk VALUES("141","8998866202343","mie sedap korea goreng","23","2","","17","2350","2500","2400","0","0","","","","");
INSERT INTO tbl_produk VALUES("142","089686043433","indomie goreng geprek","23","2","","12","2375","2500","2450","0","0","","","","");
INSERT INTO tbl_produk VALUES("143","089686043716","indomie goreng cakalang","23","2","","12","2375","2500","2450","0","0","","","","");
INSERT INTO tbl_produk VALUES("144","089686010824","indomie Goreng","23","2","","12","2375","2500","2450","0","0","","","","");
INSERT INTO tbl_produk VALUES("145","089686010190","indomie kari ayam","23","2","","12","2375","2500","2450","0","0","","","","");
INSERT INTO tbl_produk VALUES("146","089686014280","supermi ayam bawang","23","2","","12","2250","2500","2300","0","0","","","","");
INSERT INTO tbl_produk VALUES("147","8998866200912","mie sukses kari ayam","23","2","","17","2959","3250","3042","0","0","","","","");
INSERT INTO tbl_produk VALUES("148","8998866200899","mie sukses ayam bawang","23","2","","17","2959","3250","3042","0","0","","","","");
INSERT INTO tbl_produk VALUES("149","8998866613262","mie sukses soto","23","2","","17","2959","3250","3042","0","0","","","","");
INSERT INTO tbl_produk VALUES("150","089686043495","indomie kuah seblak ","23","2","","12","2225","2500","2300","0","0","","","","");
INSERT INTO tbl_produk VALUES("151","8998866202619","mie sedap korea kuah","23","2","","17","2350","2500","2400","0","0","","","","");
INSERT INTO tbl_produk VALUES("152","8998866200981","eko mie renteng","23","2","","17","1889","2000","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("153","8998866200561","eko  mie","23","2","","17","9000","10000","9600","0","0","","","","");
INSERT INTO tbl_produk VALUES("154","8998866608039","kecap sedap revil 63 ml","23","2","","17","1823","2000","1917","0","0","","","","");
INSERT INTO tbl_produk VALUES("155","8998866608084","kecap sedap revil 550 ml","23","2","","17","18340","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("156","8998866608008","kecap sedap btl 135 ml","23","2","","17","5813","7000","6000","0","0","","","","");
INSERT INTO tbl_produk VALUES("157","8998866608015","kecap sedap btl 275 ml","23","2","","17","11625","13000","12000","0","0","","","","");
INSERT INTO tbl_produk VALUES("158","8998866608060","kecap sedap saset","23","2","","17","5188","6000","5375","0","0","","","","");
INSERT INTO tbl_produk VALUES("159","711844110113","kecap ABC btl 135 ml","23","2","","20","5542","6750","6000","0","0","","","","");
INSERT INTO tbl_produk VALUES("160","711844110083","kecap ABC btl 275 ml","23","2","","20","12042","13000","12500","0","0","","","","");
INSERT INTO tbl_produk VALUES("162","711844110144","kecap ABC revil 225 ml","23","2","","20","7625","9000","8000","0","0","","","","");
INSERT INTO tbl_produk VALUES("163","7118441101378","kecap ABC revil 520 ml","23","2","","20","15000","18000","16000","0","0","","","","");
INSERT INTO tbl_produk VALUES("164","8991976732656","kecap nasional revil 70 ml","23","2","","24","1500","2000","1600","0","0","","","","");
INSERT INTO tbl_produk VALUES("165","711844120037","sambal abc brtl 135 ml","23","2","","20","5100","6000","5417","0","0","","","","");
INSERT INTO tbl_produk VALUES("166","711844120419","sambal abc btl 275 ml","23","2","","20","11000","12000","11500","0","0","","","","");
INSERT INTO tbl_produk VALUES("167","8998866104456","mama lime 58 ml","24","2","","17","847","1000","905","0","0","","","","");
INSERT INTO tbl_produk VALUES("168","711844110250","kecap soto revi 520 ml","23","2","","20","12500","13500","13000","0","0","","","","");
INSERT INTO tbl_produk VALUES("169","8998866608459","Daiya putih 290 gr","24","2","","19","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("170","8998866604963","Daia lemon 290 gr","24","2","","19","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("171","8998866610070","soklin purple 275 gr","24","2","","19","4600","5000","4699","0","0","","","","");
INSERT INTO tbl_produk VALUES("172","8998866609487","soklin ping 275 gr","24","2","","19","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("173","8998866601429","Daia bunga 290 gr","24","2","","19","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("174","8998866609494","so klin biru 275 gr","24","2","","19","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("175","8998866805414","soklin smart pink 800 gr","24","2","","19","18400","20000","18834","0","0","","","","");
INSERT INTO tbl_produk VALUES("176","8998866605809","soklin smart white 800 gr","24","2","","19","18400","20000","18834","0","0","","","","");
INSERT INTO tbl_produk VALUES("177","8998866604956","daia lemon rtg 55 gr","24","2","","19","813","1000","917","0","0","","","","");
INSERT INTO tbl_produk VALUES("178","8998866607360","daia putih rtg 53 gr","24","2","","19","813","1000","917","0","0","","","","");
INSERT INTO tbl_produk VALUES("179","8998866610230","Daia Violet rtg 53 gr","24","2","","19","813","1000","917","0","0","","","","");
INSERT INTO tbl_produk VALUES("180","8998866608701","daia pink rtg 55 gr","24","2","","19","813","1000","917","0","0","","","","");
INSERT INTO tbl_produk VALUES("181","8999999706111","pepsoden 25 gr","24","2","","25","1500","2000","1667","0","0","","","","");
INSERT INTO tbl_produk VALUES("182","8999999706081","pepsoden 75 gr","24","2","","25","3875","4000","4000","0","0","","","","");
INSERT INTO tbl_produk VALUES("183","8999999706173","pepsoden 120 gr","24","2","","25","5833","7000","6000","0","0","","","","");
INSERT INTO tbl_produk VALUES("184","8999999706180","pepsoden 190 gr","24","2","","25","9375","10000","9500","0","0","","","","");
INSERT INTO tbl_produk VALUES("185","8999999710880","pepsoden herbal 75 gr","24","2","","25","6667","7500","7000","0","0","","","","");
INSERT INTO tbl_produk VALUES("186","8999999710866","pepsoden herbal 190 gr","24","2","","25","15417","16500","15833","0","0","","","","");
INSERT INTO tbl_produk VALUES("187","8999999707859","closeup 160 gr","24","2","","25","13625","15000","14000","0","0","","","","");
INSERT INTO tbl_produk VALUES("188","8999999027049","lifebuoy orange sct","26","4","","25","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("189","8999999027056","lifebuoy biru sct","26","4","","25","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("190","8999999027032","lifebuoy hijau sct","26","4","","25","4600","5000","4700","0","0","","","","");
INSERT INTO tbl_produk VALUES("191","8999999529819","clear biru sct","26","4","","25","9400","10000","9500","0","0","","","","");
INSERT INTO tbl_produk VALUES("192","8999999529833","clear hijau","26","4","","25","9400","10000","9500","0","0","","","","");
INSERT INTO tbl_produk VALUES("193","8999999048167","sunslik hitam sct","26","4","","25","9400","10000","9500","0","0","","","","");
INSERT INTO tbl_produk VALUES("194","8999999048242","sunslik kining sct","26","4","","25","9400","10000","9500","0","0","","","","");
INSERT INTO tbl_produk VALUES("195","xxxxxxxx","sampo sunslik hijab sct","24","4","","25","9400","10000","9500","0","0","","","","");
INSERT INTO tbl_produk VALUES("196","8934868015024","rexona women rtg","24","4","","25","23500","25000","24000","0","0","","","","");
INSERT INTO tbl_produk VALUES("197","8934868015031","rexona men rtg","24","2","","25","23500","25000","24000","0","0","","","","");
INSERT INTO tbl_produk VALUES("198","8999999007768","fair & lovely cream rtg","24","4","","25","38500","40000","39000","0","0","","","","");
INSERT INTO tbl_produk VALUES("199","8999999055752","fair & lovely sabun rtg","24","4","","25","26500","30000","27500","0","0","","","","");
INSERT INTO tbl_produk VALUES("200","8999999042639","rinso cair antinoda sct","24","7","","25","9700","11000","10000","0","0","","","","");
INSERT INTO tbl_produk VALUES("201","8999999042646","rinso cair molto sct","24","7","","25","9700","11000","10000","0","0","","","","");
INSERT INTO tbl_produk VALUES("202","8999999558062","rinso bubuk antinoda sct","24","7","","25","9700","11000","10000","0","0","","","","");
INSERT INTO tbl_produk VALUES("203","8999999050009","sunligh 2000","24","2","","25","1625","2000","1833","0","0","","","","");
INSERT INTO tbl_produk VALUES("204","8999999059781","sunligh 5000","24","2","","25","4308","5000","4500","0","0","","","","");
INSERT INTO tbl_produk VALUES("205","8999999390198","sunligh 755 ml","24","2","","25","15375","16000","15833","0","0","","","","");
INSERT INTO tbl_produk VALUES("206","8998866803908","all in1 biru rtg","24","7","","25","9333","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("207","8998866803892","all in1 merah sct","24","7","","19","9333","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("208","8992770061058","Sajiku gc 80 gr","21","2","","26","1983","2500","2100","0","0","","","","");
INSERT INTO tbl_produk VALUES("209","8992770061010","Sajiku tb 80 gr","21","2","","26","1983","2500","2100","0","0","","","","");
INSERT INTO tbl_produk VALUES("210","8992770084064","sajiku tb 240gr","21","2","","26","4750","6000","5000","0","0","","","","");
INSERT INTO tbl_produk VALUES("211","8992770033185","masako sapi rtg","21","4","","26","4517","5000","4600","0","0","","","","");
INSERT INTO tbl_produk VALUES("212","8992770033130","masako ayam rtg","21","4","","26","4517","5000","4600","0","0","","","","");
INSERT INTO tbl_produk VALUES("213","8992770034151","masako ayam 250gr","21","2","","26","0","0","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("214","8992770054012","sajiku nasi goreng ayam","21","2","","26","1625","2000","1800","0","0","","","","");
INSERT INTO tbl_produk VALUES("215","8992770054036","sajiku nasi goreng pedas","21","2","","26","1625","2000","1800","0","0","","","","");
INSERT INTO tbl_produk VALUES("216","8992770011091","Ajinomoto 250gr","21","2","","26","8600","10000","8800","0","0","","","","");
INSERT INTO tbl_produk VALUES("217","8992770011169","ajinomoto 5000","21","2","","26","4400","5000","4500","0","0","","","","");
INSERT INTO tbl_produk VALUES("218","8992770011084","ajinomoto 100gr","21","2","","26","3792","4000","3900","0","0","","","","");
INSERT INTO tbl_produk VALUES("219","8992770011152","ajinomoto 1000","21","2","","26","853","1000","900","0","0","","","","");
INSERT INTO tbl_produk VALUES("220","8992770011138","ajinomoto 500","21","5","","26","10071","11000","10214","0","0","","","","");
INSERT INTO tbl_produk VALUES("221","8996001302088","roma malkist crekers rtg","18","5","","22","8083","9000","8333","0","0","","","","");
INSERT INTO tbl_produk VALUES("222","8996001302316","roma malkist abon rtg","18","5","","22","8083","9000","8333","0","0","","","","");
INSERT INTO tbl_produk VALUES("223","8996001302620","roma malkist coklat rtg","18","5","","22","8083","9000","8333","0","0","","","","");
INSERT INTO tbl_produk VALUES("224","8996001312438","roma malkist tiramisu rtg","18","5","","22","8083","9000","8333","0","0","","","","");
INSERT INTO tbl_produk VALUES("225","8996001301111","roma kelapa rtg","18","5","","22","16333","17000","16667","0","0","","","","");
INSERT INTO tbl_produk VALUES("226","8996001301142","roma kelapa300g","18","2","","22","6607","8000","7000","0","0","","","","");
INSERT INTO tbl_produk VALUES("227","8996001305041","roma sandwich","18","2","","22","4929","6000","5143","0","0","","","","");
INSERT INTO tbl_produk VALUES("228","8996001304143","slai olai nenas 24gr","18","5","","22","9833","11000","10100","0","0","","","","");
INSERT INTO tbl_produk VALUES("229","8996001304020","slai olai nanas 240gr","18","2","","22","7700","9000","8400","0","0","","","","");
INSERT INTO tbl_produk VALUES("230","8996001304129","slai olai stoberi 24gr","18","5","","22","9833","11000","10100","0","0","","","","");
INSERT INTO tbl_produk VALUES("231","8996001304136","slai olai blubery 24gr","18","5","","22","9833","11000","10100","0","0","","","","");
INSERT INTO tbl_produk VALUES("232","8996001304037","slai olai blubery 240gr","18","2","","22","7700","9000","8400","0","0","","","","");
INSERT INTO tbl_produk VALUES("233","8996001304013","slai olai stoberi 240gr","18","2","","22","7700","9000","8400","0","0","","","","");
INSERT INTO tbl_produk VALUES("234","8996001312353","roma kelapa kopyor 250gr","18","2","","22","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("235","8996001308042","roma sari gandum 2000","18","5","","22","20500","22000","21250","0","0","","","","");
INSERT INTO tbl_produk VALUES("236","8996001523230","mi gelas soto ayam","23","4","","22","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("237","8996001523223","mi gelas kari ayam","23","4","","22","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("238","8996001523384","mi gelas sop buntut","23","4","","22","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("239","xxxx","mi gelas bakso sapi","23","4","","22","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("241","8996001355237","superstar","23","5","","22","10000","11000","10100","0","0","","","","");
INSERT INTO tbl_produk VALUES("242","8996001320051","kopiko cendy","23","5","","22","55000","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("243","8996001320136","kopiko capocino","23","5","","22","5500","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("244","8996001326220","kis cherry","28","5","","22","4625","5000","4792","0","0","","","","");
INSERT INTO tbl_produk VALUES("245","8886001100855","kis barley","28","5","","22","4625","5000","4792","0","0","","","","");
INSERT INTO tbl_produk VALUES("246","8996001523216","mi gelas ayam bawang","23","4","","22","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("247","8996001338056","Tamarin","18","5","","22","4625","5000","4792","0","0","","","","");
INSERT INTO tbl_produk VALUES("248","8996001326275","kis grape","18","5","","22","4625","5000","4792","0","0","","","","");
INSERT INTO tbl_produk VALUES("249","8996001326404","kis applepeach","18","5","","22","4625","5000","4792","0","0","","","","");
INSERT INTO tbl_produk VALUES("250","8996001318430","better","18","4","","22","12167","13000","12500","0","0","","","","");
INSERT INTO tbl_produk VALUES("251","8996001350423","super keju 500","18","5","","22","8400","9000","8700","0","0","","","","");
INSERT INTO tbl_produk VALUES("252","8996001355008","beng-beng","18","5","","22","26625","28000","27000","0","0","","","","");
INSERT INTO tbl_produk VALUES("253","8996001440520","energen jagung","17","4","","22","11063","12000","11250","0","0","","","","");
INSERT INTO tbl_produk VALUES("254","8996001440353","energen jahe","17","4","","22","11063","12000","11250","0","0","","","","");
INSERT INTO tbl_produk VALUES("255","8996001440087","energen kacang ijo","17","4","","22","11063","12000","11250","0","0","","","","");
INSERT INTO tbl_produk VALUES("256","8996001440049","energen coklat","17","4","","22","11063","12000","11250","0","0","","","","");
INSERT INTO tbl_produk VALUES("257","8996001414002","tora bika cappucino","17","4","","22","13333","14000","13750","0","0","","","","");
INSERT INTO tbl_produk VALUES("258","8998666001306","tora bika cremylatte","17","4","","22","10000","11000","10334","0","0","","","","");
INSERT INTO tbl_produk VALUES("259","8998666001931","tora bika 3in one","17","4","","22","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("260","8998666002600","tora bika kopi bubuk","17","4","","22","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("261","089686060126","pop mie bakso","23","2","","12","3709","5000","3958","0","0","","","","");
INSERT INTO tbl_produk VALUES("262","089686060461","pop mie kari ayam","23","2","","12","3709","5000","3958","0","0","","","","");
INSERT INTO tbl_produk VALUES("263","8992775203408","garuda rosta bawang","18","4","","27","7833","9000","8667","0","0","","","","");
INSERT INTO tbl_produk VALUES("264","8992775001806","gery saluut cokelapa","18","4","","27","7667","8500","8333","0","0","","","","");
INSERT INTO tbl_produk VALUES("265","8992775000793","garuda rosta pedas","18","4","","27","7833","9000","8667","0","0","","","","");
INSERT INTO tbl_produk VALUES("266","8996001431030","beng-beng drink","18","4","","27","0","-1","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("267","8992775305003","gery saluut malkis rtg","18","4","","27","7667","8500","8333","0","0","","","","");
INSERT INTO tbl_produk VALUES("268","8992775212134","garuda kacang telur ","18","4","","27","7833","9000","8667","0","0","","","","");
INSERT INTO tbl_produk VALUES("269","8992775717004","clevo coklat 115ml","17","2","","27","2000","2250","2167","0","0","","","","");
INSERT INTO tbl_produk VALUES("270","8992775717011","clevo srobery","17","2","","27","2000","2250","2167","0","0","","","","");
INSERT INTO tbl_produk VALUES("271","8992775305034","gery saluut keju rtg","18","4","","27","7667","8500","8333","0","0","","","","");
INSERT INTO tbl_produk VALUES("272","8992775315019","gery bischoc","18","4","","27","4167","4500","4333","0","0","","","","");
INSERT INTO tbl_produk VALUES("273","8992775311998","chocolatos grande 1000","18","5","","27","14833","17000","16333","0","0","","","","");
INSERT INTO tbl_produk VALUES("274","8992775311486","chocolatos dark","18","5","","27","1483","17000","16333","0","0","","","","");
INSERT INTO tbl_produk VALUES("275","8992775001615","chocolatos white","18","5","","27","14833","17000","16333","0","0","","","","");
INSERT INTO tbl_produk VALUES("276","8992775000014","chocolatos hazelnut","18","5","","27","14833","17000","16333","0","0","","","","");
INSERT INTO tbl_produk VALUES("277","8992775001844","chocolatos wafer rtg","18","4","","27","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("278","8992775312469","gery saluut wafer cklt","18","5","","27","9833","11000","10333","0","0","","","","");
INSERT INTO tbl_produk VALUES("279","8992775312414","gery saluut wafer hazelnut","18","5","","27","9833","11000","10333","0","0","","","","");
INSERT INTO tbl_produk VALUES("280","8992775311417","gery saluut roll","18","5","","27","9833","11000","10333","0","0","","","","");
INSERT INTO tbl_produk VALUES("281","8992775110157","garuda kacang kulit 75gr","18","2","","27","0","6000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("282","8992775315057","gery saluut malkis cklt","18","2","","27","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("283","8992775002087","garuda ting-ting 84gr","18","2","","27","5500","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("284","8992775311509","gery sereal","18","4","","27","8000","9000","8667","0","0","","","","");
INSERT INTO tbl_produk VALUES("285","8992775913000","kopi chocolatos","17","4","","27","16000","17000","16400","0","0","","","","");
INSERT INTO tbl_produk VALUES("286","8999999558079","rinso bubuk molto sct","24","7","","25","9700","11000","10000","0","0","","","","");
INSERT INTO tbl_produk VALUES("287","8999999045623","molto biru 1000","24","7","","25","9700","11000","10000","0","0","","","","");
INSERT INTO tbl_produk VALUES("288","8999999058067","molto hitam 1000","24","7","","25","9700","11000","10000","0","0","","","","");
INSERT INTO tbl_produk VALUES("289","8999999526856","molto biru 500","24","7","","25","4850","5500","5000","0","0","","","","");
INSERT INTO tbl_produk VALUES("290","8999999531478","molto hitam 500","24","7","","25","4850","5500","5000","0","0","","","","");
INSERT INTO tbl_produk VALUES("291","4902430542753","downy pasion 1000","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("292","4902430557122","downy sunrise 1000","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("293","4902430557139","downy antibau 1000","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("294","4902430693455","downy daring 1000","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("295","4902430870962","downy anti apek 1000","24","6","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("302","4902430685856","downy sweetheart 1000","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("303","4902430894609","downy floral pink1000","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("304","4902430803380","downy floral pink 500","24","7","","23","4750","5000","4833","0","0","","","","");
INSERT INTO tbl_produk VALUES("305","4902430821827","downy plus sports 500","24","7","","23","4750","5000","4833","0","0","","","","");
INSERT INTO tbl_produk VALUES("308","4902430928748","downy mild& gentle1000","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("309","4902430745703","downy sunrise500","24","7","","23","4750","5000","4833","0","0","","","","");
INSERT INTO tbl_produk VALUES("310","4902430952767","downy allure500","24","7","","23","4750","5000","4833","0","0","","","","");
INSERT INTO tbl_produk VALUES("311","4902430853200","downy secretgarden 25 ml","24","7","","23","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("312","4902430879583","pantene gold rtg","26","7","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("313","4902430563888","pantene hitam rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("314","4902430563901","pantene ungu rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("315","4902430563895","pantene hijau rtg","26","4","","23","9450","5000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("316","4902430563864","pantene biru rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("317","4902430799645","pantene pink rtg","25","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("318","4902430563925","pantene rambut kering rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("319","4902430759229","pantene cond gold rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("320","4902430753333","rejoice hijab rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("321","4902430787055","rejoice parfum rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("322","4902430697996","rejoice hitam rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("323","4902430660563","rejoice lembut rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("324","4902430699761","rejoice cond rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("325","4902430297219","H & S anti apek rtg","26","4","","23","9540","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("326","4902430566858","H & S anti hairfall rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("327","4902430566896","H & S cool mentol rtg","25","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("328","4902430566889","H & S lemon fres rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("329","4902430566834","H & S smooth & silky rtg","26","4","","23","9450","10000","9650","0","0","","","","");
INSERT INTO tbl_produk VALUES("330","8998866609142","giv murbery","24","2","","19","1806","2000","1917","0","0","","","","");
INSERT INTO tbl_produk VALUES("331","8998866608305","giv bengkoang 76gr","24","2","","19","1806","2000","1917","0","0","","","","");
INSERT INTO tbl_produk VALUES("332","8998866608312","giv pepaya 76gr","24","2","","19","1806","2000","1917","0","0","","","","");
INSERT INTO tbl_produk VALUES("333","8998866608602","giv sakura 76gr","24","2","","19","1806","2000","1917","0","0","","","","");
INSERT INTO tbl_produk VALUES("334","8998866888622","giv cherry","24","2","","19","1806","2000","1917","0","0","","","","");
INSERT INTO tbl_produk VALUES("335","8998866804516","giv lemon","24","2","","19","1806","2000","1917","0","0","","","","");
INSERT INTO tbl_produk VALUES("336","8999999059316","lifebuoy biru","24","2","","25","2500","3000","2667","0","0","","","","");
INSERT INTO tbl_produk VALUES("339","8999999059323","lifebuoy kuning","24","2","","25","2500","3000","2667","0","0","","","","");
INSERT INTO tbl_produk VALUES("340","8999999059309","lifebuoy merah","24","2","","25","2500","3000","2667","0","0","","","","");
INSERT INTO tbl_produk VALUES("341","8998866602549","nuvo biru","24","2","","19","1806","2000","1916","0","0","","","","");
INSERT INTO tbl_produk VALUES("342","8999999533717","citra fres white","24","2","","25","1900","2500","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("343","8999999533731","citra natural white","24","2","","25","1900","2500","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("344","8999999533724","citra pearly white","24","2","","25","1900","2500","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("345","8993379262396","champion lemon","24","2","","19","1319","1650","1500","0","0","","","","");
INSERT INTO tbl_produk VALUES("346","8993379500320","champion blu fres","24","2","","19","1319","1650","1500","0","0","","","","");
INSERT INTO tbl_produk VALUES("347","8998866500364","daia batang","24","2","","19","670","1000","750","0","0","","","","");
INSERT INTO tbl_produk VALUES("348","8993379200886","harmoni orenge","24","2","","30","1750","2500","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("349","8993379210854","harmoni apple","24","2","","30","1750","2500","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("350","8993379200862","harmoni grape","24","2","","30","1750","2500","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("351","8992946512285","shinzui kirei","24","2","","29","3425","4000","3667","0","0","","","","");
INSERT INTO tbl_produk VALUES("352","8993560025236","dettol lasting fres","24","2","","29","5300","6000","5500","0","0","","","","");
INSERT INTO tbl_produk VALUES("353","8998866604512","fres violet","24","2","","19","1458","2000","1667","0","0","","","","");
INSERT INTO tbl_produk VALUES("354","8998866103244","lavenda frescool","24","4","","19","5600","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("355","8998866104883","levenda frescitrus","19","4","","19","5600","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("356","8998866103237","lavenda fres floral","19","4","","19","5600","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("357","8999999502393","royco rtg","21","4","","25","4500","5000","4667","0","0","","","","");
INSERT INTO tbl_produk VALUES("358","8999999195649","sari wangi 25","23","2","","25","5060","6000","5167","0","0","","","","");
INSERT INTO tbl_produk VALUES("359","8998866605793","ekonomi tr","24","2","","19","5050","6000","5250","0","0","","","","");
INSERT INTO tbl_produk VALUES("360","8998866670722","wings wb 500","24","2","","19","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("361","8992727005296","jaz1 merah rtg","24","4","","31","4700","5000","4917","0","0","","","","");
INSERT INTO tbl_produk VALUES("362","8992727002479","attack softener 800gr","24","2","","31","0","22000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("363","8992929141129","B29 water guard 180gr","24","2","","32","0","3333","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("364","8998866607339","soklin bubuk rtg","24","7","","19","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("365","8991102385121","tango vanila 500","18","5","","33","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("367","8991102989428","Tango coklat 1000","18","4","","32","8200","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("368","8991102385060","tango waffle","18","5","","33","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("369","8991102381024","fullo 500 vanila","18","5","","33","10000","11000","10333","0","0","","","","");
INSERT INTO tbl_produk VALUES("370","8991102020152","sikat formula biasa","27","2","","33","2600","3000","2833","0","0","","","","");
INSERT INTO tbl_produk VALUES("371","8991102024099","sikat fomula curve","27","2","","33","2600","3000","2833","0","0","","","","");
INSERT INTO tbl_produk VALUES("372","8991102020305","sikat formula triple aksen","27","2","","33","2600","3250","2833","0","0","","","","");
INSERT INTO tbl_produk VALUES("373","8992747180201","vixal botol 780ml","24","2","","25","15500","17500","16000","0","0","","","","");
INSERT INTO tbl_produk VALUES("375","8998866181082","ciptaden 190gr","24","2","","19","7000","8000","7500","0","0","","","","");
INSERT INTO tbl_produk VALUES("376","8998866107693"," pastagg zact 190gr","24","2","","19","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("377","8993335518819","liquish 700ml","24","2","","12","16500","18000","169016","0","0","","","","");
INSERT INTO tbl_produk VALUES("378","8991102770071","fullo rtg","18","4","","33","0","9000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("379","8998866107532","zinc antidandruff rtg","26","4","","19","4750","5000","4900","0","0","","","","");
INSERT INTO tbl_produk VALUES("380","8999999533281","sampo dove rtg","26","4","","25","9400","10000","9500","0","0","","","","");
INSERT INTO tbl_produk VALUES("381","8994834000218","goriorio vanila","18","5","","35","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("382","8994834000225","goriorio coklat","18","5","","35","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("383","8994834000331","go potato original","18","5","","35","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("384","8994834001918","goriorio magic","18","5","","35","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("385","8886013470120","go potato kentang","18","5","","35","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("386","8994834000775","go malkist","18","5","","35","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("389","8994834001949","goriorio otamtam","18","5","","35","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("391","8991002304017","relaxa barley","28","2","","36","4600","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("392","8991002303829","relaxa lemon","28","2","","33","4600","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("393","8991002307360","coffee candy","28","2","","36","4600","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("394","8990800004563","mentos fruit","28","2","","33","6600","7000","6750","0","0","","","","");
INSERT INTO tbl_produk VALUES("395","8992753102204","frisian flag coklat klg","29","2","","12","9600","10000","9833","0","0","","","","");
INSERT INTO tbl_produk VALUES("396","8992753101207","frisian flag putih klg","29","2","","12","9600","10000","9833","0","0","","","","");
INSERT INTO tbl_produk VALUES("397","8992702000025","enak putih klg","29","2","","12","8200","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("398","8993007001465","enak coklat klg","29","2","","12","8200","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("399","8993007001717","enak putih sct","29","6","","12","5556","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("400","8993007001724","enak coklat sct","29","5","","12","5556","6000","5750","0","0","","","","");
INSERT INTO tbl_produk VALUES("401","8992753102006","frisian flag coklat sct","29","2","","12","7000","7500","7250","0","0","","","","");
INSERT INTO tbl_produk VALUES("402","8992753631209","omela klg","29","2","","12","8416","9000","8583","0","0","","","","");
INSERT INTO tbl_produk VALUES("403","8992753720606","omela 500gr","29","2","","12","10000","11000","10416","0","0","","","","");
INSERT INTO tbl_produk VALUES("404","8992696405417","dancow putih rtg","29","3","","37","2900","3500","3100","0","0","","","","");
INSERT INTO tbl_produk VALUES("405","8992696520103","dancow coklat rtg","29","3","","37","2900","3500","3100","0","0","","","","");
INSERT INTO tbl_produk VALUES("406","8992696404441","bear brand","29","2","","37","8667","9500","9000","0","0","","","","");
INSERT INTO tbl_produk VALUES("407","8997225200235","bintang zero","17","2","","12","6875","7500","7000","0","0","","","","");
INSERT INTO tbl_produk VALUES("408","8998866200097","jasjus jeruk","17","4","","17","2800","3000","2933","0","0","","","","");
INSERT INTO tbl_produk VALUES("409","8998866200103","jasjus lemon","17","4","","17","2800","3000","2933","0","0","","","","");
INSERT INTO tbl_produk VALUES("410","8998866200158","jasjus mangga","17","4","","17","2800","3000","2933","0","0","","","","");
INSERT INTO tbl_produk VALUES("411","8998866200127","jasjus melon","17","4","","17","2800","3000","2933","0","0","","","","");
INSERT INTO tbl_produk VALUES("412","8998866200110","jasjus stroberi","17","4","","17","2800","3000","2933","0","0","","","","");
INSERT INTO tbl_produk VALUES("416","8993500019189","marimas stroberi","17","4","","39","2847","3000","2917","0","0","","","","");
INSERT INTO tbl_produk VALUES("417","8998866605984","milkjus coklat","17","4","","12","7600","8000","7750","0","0","","","","");
INSERT INTO tbl_produk VALUES("418","8992933239119","pop ice durian","17","4","","12","9600","10000","9800","0","0","","","","");
INSERT INTO tbl_produk VALUES("419","8992933254112","pop ice vanila","17","4","","12","9600","10000","9800","0","0","","","","");
INSERT INTO tbl_produk VALUES("420","8992933233117","pop ice strawberry","17","4","","12","9600","10000","9800","0","0","","","","");
INSERT INTO tbl_produk VALUES("421","8992933231113","pop ice chocolate","17","4","","38","9600","10000","9800","0","0","","","","");
INSERT INTO tbl_produk VALUES("422","8993500120199","es puter chocorio","17","4","","39","2847","3000","2917","0","0","","","","");
INSERT INTO tbl_produk VALUES("423","8991002101746","kopi ABC mocca","17","4","","12","9416","10000","9583","0","0","","","","");
INSERT INTO tbl_produk VALUES("424","8992855888198","agar-agar bola dunia hijau","23","3","","12","3500","4000","3750","0","0","","","","");
INSERT INTO tbl_produk VALUES("425","8993500120281","cocorio banana","17","4","","39","2847","3000","2917","0","0","","","","");
INSERT INTO tbl_produk VALUES("426","8993500120205","cocorio time","17","4","","39","2847","3000","2917","0","0","","","","");
INSERT INTO tbl_produk VALUES("427","8993500010025","marimas nanas","17","4","","39","2847","3000","2917","0","0","","","","");
INSERT INTO tbl_produk VALUES("428","8993500019158","marimas anggur","17","4","","39","2847","3000","2917","0","0","","","","");
INSERT INTO tbl_produk VALUES("429","8998866500234","milkjus capocino","17","4","","17","7600","8000","7750","0","0","","","","");
INSERT INTO tbl_produk VALUES("430","8998866605991","milk jus stroberi","17","4","","17","7600","8000","7750","0","0","","","","");
INSERT INTO tbl_produk VALUES("431","749921010711","nutrisari jeruk peras","17","4","","12","10500","11000","10750","0","0","","","","");
INSERT INTO tbl_produk VALUES("432","749921005946","nutrisari sweet orange","17","4","","12","10500","11000","10750","0","0","","","","");
INSERT INTO tbl_produk VALUES("433","8998898830125","kuku bima anggur","17","2","","40","5000","5500","5200","0","0","","","","");
INSERT INTO tbl_produk VALUES("434","8995150101696","m+susu","17","2","","12","3900","5000","4300","0","0","","","","");
INSERT INTO tbl_produk VALUES("435","8993058105013","extrajoss","17","2","","40","11000","12000","11300","0","0","","","","");
INSERT INTO tbl_produk VALUES("436","8999908045805","hamaviton jreng sct","17","2","","12","8200","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("437","8991002101722","abc white","17","4","","20","10000","11000","10200","0","0","","","","");
INSERT INTO tbl_produk VALUES("438","8998866200790","top kopi moka rtg","17","4","","17","9400","10000","9600","0","0","","","","");
INSERT INTO tbl_produk VALUES("439","8998866803281","top plus","17","4","","17","4300","5000","4500","0","0","","","","");
INSERT INTO tbl_produk VALUES("440","6992715001936","cocolathos moccacino","17","4","","27","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("441","8998866809689","top capucino","17","3","","17","15000","15000","15000","0","0","","","","");
INSERT INTO tbl_produk VALUES("442","8998866201520","top toraja 165gr","17","3","","17","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("443","8991002114005","pikopi ","17","4","","12","0","9000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("444","8998866202411","chocodring kopi","17","4","","17","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("445","8991002105454","kapal api spc 30gr","17","3","","36","2250","3000","2500","0","0","","","","");
INSERT INTO tbl_produk VALUES("446","8991002105423","kapal api spc 380gr","17","3","","36","18333","20000","18889","0","0","","","","");
INSERT INTO tbl_produk VALUES("447","8998866201971","top neo moccacino","17","4","","17","11500","12000","11750","0","0","","","","");
INSERT INTO tbl_produk VALUES("448","8998866201995","top neo caramel maciato","17","4","","17","11500","12000","11750","0","0","","","","");
INSERT INTO tbl_produk VALUES("449","8998898847109","kopi jahe sidomuncul","17","4","","40","11750","12500","12000","0","0","","","","");
INSERT INTO tbl_produk VALUES("450","8998866608589","boom putih","24","3","","19","4500","5000","4750","0","0","","","","");
INSERT INTO tbl_produk VALUES("451","8998866606769","boom hijau","24","3","","19","4500","5000","4750","0","0","","","","");
INSERT INTO tbl_produk VALUES("452","8992727002844","jaz1 ungu rtg","24","4","","21","4700","5000","4916","0","0","","","","");
INSERT INTO tbl_produk VALUES("453","089686535068","sun ubi ungu","23","2","","12","7250","8000","7500","0","0","","","","");
INSERT INTO tbl_produk VALUES("454","089686535242","sun pisang susu","23","2","","12","7250","8000","7500","0","0","","","","");
INSERT INTO tbl_produk VALUES("455","089686535143","sun kacang ijo","23","2","","12","7250","8000","7500","0","0","","","","");
INSERT INTO tbl_produk VALUES("456","8997025911706","hatari gabin biru","18","3","","41","5000","6000","5500","0","0","","","","");
INSERT INTO tbl_produk VALUES("457","8997028380486","hitam manis vanila","18","3","","42","2900","3500","3300","0","0","","","","");
INSERT INTO tbl_produk VALUES("458","8995208900004","piramid marie 32","18","3","","12","2900","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("461","8992772122245","adem sari","17","5","","12","40000","42000","41000","0","0","","","","");
INSERT INTO tbl_produk VALUES("462","8992730100094","bolu vanila 1000","18","5","","12","17000","18000","17500","0","0","","","","");
INSERT INTO tbl_produk VALUES("463","8992730100117","bolu stroberi 1000","18","5","","12","17000","18000","17500","0","0","","","","");
INSERT INTO tbl_produk VALUES("464","8998866500746","protex kuning","25","3","","19","3500","4000","3667","0","0","","","","");
INSERT INTO tbl_produk VALUES("465","8998866574044","protex biru","25","3","","19","3500","4000","3667","0","0","","","","");
INSERT INTO tbl_produk VALUES("466","8993274534116","pogy-pogy ","23","2","","43","20000","23000","23000","0","0","","","","");
INSERT INTO tbl_produk VALUES("467","8998866605199","boom merah","24","3","","19","4500","5000","4750","0","0","","","","");
INSERT INTO tbl_produk VALUES("468","8997025914059","hatari gabin hijau","18","3","","41","5000","6000","5500","0","0","","","","");
INSERT INTO tbl_produk VALUES("469","8998866604215","dangdut mawar","24","3","","19","875","1000","950","0","0","","","","");
INSERT INTO tbl_produk VALUES("470","8998866601146","dangdut jeruk","24","3","","19","875","1000","950","0","0","","","","");
INSERT INTO tbl_produk VALUES("471","8993110071119","sosis so nice ayam","23","8","","12","19500","20000","20000","0","0","","","","");
INSERT INTO tbl_produk VALUES("472","8997025120061","gowos botol","24","2","","19","9000","12000","10000","0","0","","","","");
INSERT INTO tbl_produk VALUES("475","8992752112013","mizone lecy 500ml","17","9","","12","3583","4000","3750","0","0","","","","");
INSERT INTO tbl_produk VALUES("478","8997025062439","big orange 400ml","17","2","","12","3083","3750","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("479","8997025062378","big strobery 400ml","17","2","","12","3083","3750","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("480","8997025062347","big cola 400ml","17","2","","12","3083","3750","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("481","8998866610377","isoplus 350ml","17","2","","17","2333","3000","2500","0","0","","","","");
INSERT INTO tbl_produk VALUES("482","8996001600146","teh pucuk harum 350ml","17","9","","22","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("483","8999988888811","larutan badak klg jeruk ","17","2","","27","5200","6000","5333","0","0","","","","");
INSERT INTO tbl_produk VALUES("484","8999988808628","larutan klg anak badak stroberi","17","2","","27","4200","5000","4500","0","0","","","","");
INSERT INTO tbl_produk VALUES("485","8851123212038","m150 btl","17","9","","35","3460","4000","3600","0","0","","","","");
INSERT INTO tbl_produk VALUES("486","8886057883665","krating daeng","17","9","","17","4300","5000","4600","0","0","","","","");
INSERT INTO tbl_produk VALUES("487","8992761111540","fanta slim ","17","9","","12","3875","4750","4083","0","0","","","","");
INSERT INTO tbl_produk VALUES("488","8992761111519","coca cola slim","17","9","","45","3875","4750","4083","0","0","","","","");
INSERT INTO tbl_produk VALUES("489","8992761111533","sprite slim","17","9","","45","3875","4750","4083","0","0","","","","");
INSERT INTO tbl_produk VALUES("490","8997025062408","big lemon 400ml","17","9","","45","3083","3750","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("491","8999988888972","larutan badak btl 500ml","17","9","","44","6000","7000","6250","0","0","","","","");
INSERT INTO tbl_produk VALUES("492","8886008101053","Aqua Botol 600 ml","17","9","","46","2188","2500","2375","0","0","","","","");
INSERT INTO tbl_produk VALUES("493","8886008101091","Aqua Botol 1500ml","17","9","","46","4458","5000","4833","0","0","","","","");
INSERT INTO tbl_produk VALUES("494","8993007002967","susu tiga sapi 500gr","29","2","","12","9583","10000","9791","0","0","","","","");
INSERT INTO tbl_produk VALUES("495","8997019490019","terigu mila 1kg","23","3","","38","8750","10000","9200","0","0","","","","");
INSERT INTO tbl_produk VALUES("496","8993496110075","terigu tulip 1kg","23","3","","12","8300","9000","8700","0","0","","","","");
INSERT INTO tbl_produk VALUES("497","8993093115008","tepung beras rose brand 500gr","23","3","","16","6000","7000","6400","0","0","","","","");
INSERT INTO tbl_produk VALUES("498","8993093135006","tepung ketan rose brand 500gr","23","3","","12","10500","11750","11250","0","0","","","","");
INSERT INTO tbl_produk VALUES("499","8997011700062","bihun padamu kecil","23","3","","41","2708","3000","2916","0","0","","","","");
INSERT INTO tbl_produk VALUES("500","8997011700031","bihun padamu besar","23","3","","12","5500","6000","5833","0","0","","","","");
INSERT INTO tbl_produk VALUES("501","8998866200646","top kopi 165gr","17","3","","17","9500","10000","9667","0","0","","","","");
INSERT INTO tbl_produk VALUES("502","8995333060703","terigu kompas kemasan 1kg","23","3","","12","9750","10750","10150","0","0","","","","");
INSERT INTO tbl_produk VALUES("503","8997002290220","lavenia btl 250ml","23","9","","47","4104","5000","4270","0","0","","","","");
INSERT INTO tbl_produk VALUES("504","8997002290312","lavenia revil 900ml ","23","3","","47","13333","14000","13750","0","0","","","","");
INSERT INTO tbl_produk VALUES("505","8997002290688","lavenia revil 1800ml","23","3","","47","25833","28000","27500","0","0","","","","");
INSERT INTO tbl_produk VALUES("506","8997002290640","lavenia jergen 1800ml","23","3","","47","28000","30000","29000","0","0","","","","");
INSERT INTO tbl_produk VALUES("507","8997002290350","lavenia jrg 900ml","23","2","","47","14000","1500","14500","0","0","","","","");
INSERT INTO tbl_produk VALUES("508","8998866501033","minyak sedap revil 2ltr","23","3","","17","0","29000","2","0","0","","","","");
INSERT INTO tbl_produk VALUES("509","8997205400013","viola revil 900ml","23","3","","47","13333","14000","13750","0","0","","","","");
INSERT INTO tbl_produk VALUES("510","8997205400020","viola revil 1800ml","23","3","","47","25833","28000","27500","0","0","","","","");
INSERT INTO tbl_produk VALUES("511","8997002290343","lavenia btl 900ml","23","9","","47","14166","15000","14500","0","0","","","","");
INSERT INTO tbl_produk VALUES("512","8993226302503","garan daun 250gr","23","3","","45","1500","2250","2000","0","0","","","","");
INSERT INTO tbl_produk VALUES("513","8993274537544","parago 2 in 1","28","5","","12","28000","30000","29000","0","0","","","","");
INSERT INTO tbl_produk VALUES("514","8993274537650","parago peanut","28","5","","12","28000","30000","29000","0","0","","","","");
INSERT INTO tbl_produk VALUES("515","8993274531726","parago fruity","28","5","","12","28000","30000","29000","0","0","","","","");
INSERT INTO tbl_produk VALUES("516","8993274537711","parago cheese","28","5","","12","28000","30000","29000","0","0","","","","");
INSERT INTO tbl_produk VALUES("517","8888166606395","saltcheese combo rtg","18","5","","15","8000","9000","8300","0","0","","","","");
INSERT INTO tbl_produk VALUES("518","8997226852006","teh kampung manis bks","17","5","","12","4200","5000","4667","0","0","","","","");
INSERT INTO tbl_produk VALUES("519","8997002060243","kerupuk udang panda","23","3","","12","8000","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("520","8997211230079","kerupuk udang vita rasa 250g","23","3","","12","4250","5000","4500","0","0","","","","");
INSERT INTO tbl_produk VALUES("521","8997002060557","kerupuk singkong panda","23","3","","12","7500","8500","8000","0","0","","","","");
INSERT INTO tbl_produk VALUES("522","aaaaaa","kerupuk udang nuri","23","3","","12","8000","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("523","8995225601137","cookietop lemon","18","5","","12","8300","9000","8700","0","0","","","","");
INSERT INTO tbl_produk VALUES("524","8888166607361","saltcheese combociz","18","5","","12","8000","9000","8300","0","0","","","","");
INSERT INTO tbl_produk VALUES("525","8992696430266","milo","29","2","","37","4100","5000","4333","0","0","","","","");
INSERT INTO tbl_produk VALUES("526","8992696521797","milo renteng","29","4","","37","17100","18000","17500","0","0","","","","");
INSERT INTO tbl_produk VALUES("527","8996200900085","herosyn 50g","30","2","","12","6416","8000","7083","0","0","","","","");
INSERT INTO tbl_produk VALUES("529","8996838106088"," bedak rodeka white 60g","17","2","","12","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("530","8996200900047","herocyn baby 100g","30","2","","15","6916","8000","7500","0","0","","","","");
INSERT INTO tbl_produk VALUES("531","8994456000115","teh daun","17","3","","49","1650","2000","18333","0","0","","","","");
INSERT INTO tbl_produk VALUES("532","8992745550426","bedak mitu baby floral 200g","30","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("533","8992745380160","bedak mitu clasik","30","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("534","8997222070046","minyak rambut minarni 100ml","19","9","","31","5500","7000","6000","0","0","","","","");
INSERT INTO tbl_produk VALUES("535","8997001302139","minyak tokyo night 55ml pink","19","2","","15","5500","6500","5833","0","0","","","","");
INSERT INTO tbl_produk VALUES("536","8993176110067","minyak kayu putih cap lang 120ml","19","9","","40","1","0","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("537","8993176110098","minyak kayu putih caplang 15ml","19","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("538","4902430401173","pantin antiketombe 70ml ","26","8","","23","1","13000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("539","4902430869249","pantine anti ketombe 135ml","26","9","","23","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("540","4902430429405","rejoice rich 70 ml","26","9","","23","1","13000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("541","8998866106887","serasoft condisioner 170ml","26","9","","19","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("544","8998667400696","minyak telon konikare 125ml","31","9","","23","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("545","8998866107945","posh deodorant 50ml","31","2","","19","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("547","8998866609388","giv cair btl  250ml","24","9","","19","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("548","8993082071506","bedak bayi rita 125g","30","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("549","8993571003865","cuka betet 90ml","23","9","","22","2000","2500","2166","0","0","","","","");
INSERT INTO tbl_produk VALUES("550","8998866804479","giv cair revil 250ml","24","3","","19","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("551","8993037003392","sp botol","21","2","","44","1750","2000","1920","0","0","","","","");
INSERT INTO tbl_produk VALUES("552","8993037003231","kasumba cair kuning","21","2","","50","1","2000","1750","0","0","","","","");
INSERT INTO tbl_produk VALUES("553","8993037003118","kasumba cair hijau","21","2","","50","0","2000","1750","0","0","","","","");
INSERT INTO tbl_produk VALUES("554","8993037003255","kasumba cair coklat","21","2","","50","0","2000","1750","0","0","","","","");
INSERT INTO tbl_produk VALUES("555","8993571003872","frambosen btl kecil","21","9","","50","3","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("556","8992745120636","hit mat","17","5","","35","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("557","8999777026370","handsaplas","33","4","","23","0","28000","27000","0","0","","","","");
INSERT INTO tbl_produk VALUES("558","8998899004242","autan apel dan jeruk","32","4","","15","5000","6000","5417","0","0","","","","");
INSERT INTO tbl_produk VALUES("559","8998899400204","autan lavender","32","4","","15","5000","6000","5417","0","0","","","","");
INSERT INTO tbl_produk VALUES("560","8997231190261","kecap sarasa","21","3","","12","17083","19000","17916","0","0","","","","");
INSERT INTO tbl_produk VALUES("564","8993037003194","kasumba cair merah","21","2","","50","0","2000","1750","0","0","","","","");
INSERT INTO tbl_produk VALUES("565","8998866200554","tehjus gula batu","17","4","","17","2672","3500","3166","0","0","","","","");
INSERT INTO tbl_produk VALUES("566","8991102281430","mintz hijau","28","3","","33","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("567","8991102283380","mintz merah","28","3","","33","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("568","8991102281416","mintz biru","28","3","","33","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("569","8991102213189","blaster coco","28","3","","33","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("570","8714700524002","maizenaku 150g","23","2","","17","1","6000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("571","8997025914813","apilo wafer pandan","18","5","","41","0","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("572","8997025914875","apilo wafer strobery","18","5","","41","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("573","8992304049743","garnier sakura white rtg 7ml","19","4","","15","1","5000","4166","0","0","","","","");
INSERT INTO tbl_produk VALUES("574","8991976136249","kecap nasional 6kg","21","2","","24","89000","95000","92500","0","0","","","","");
INSERT INTO tbl_produk VALUES("575","8994418101065","kopi bintang 50g","17","3","","12","3300","4000","3500","0","0","","","","");
INSERT INTO tbl_produk VALUES("576","4970129733010","polpen snomen hitam","34","5","","29","9500","21000","20000","0","0","","","","");
INSERT INTO tbl_produk VALUES("577","8992727004558","softex relaxnight","25","4","","21","4750","5500","5000","0","0","","","","");
INSERT INTO tbl_produk VALUES("578","8992959117613","softex sayap daun sirih","25","4","","21","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("579","8992959117606","softex biasa daun sirih","25","4","","21","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("580","8992959107591","softex helokity","25","4","","21","4500","5000","4750","0","0","","","","");
INSERT INTO tbl_produk VALUES("581","8992959974131","softex malam daun sirih","25","4","","21","8300","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("582","8996200900092","herocyn 85g","30","2","","33","10200","12000","10500","0","0","","","","");
INSERT INTO tbl_produk VALUES("583","8992929751090","Kris HBL 100ml","19","9","","15","2916","4000","3500","0","0","","","","");
INSERT INTO tbl_produk VALUES("584","8992929752134","Kris HBL elegan 200ml","19","9","","15","4833","6000","5333","0","0","","","","");
INSERT INTO tbl_produk VALUES("585","8992929752141","Kris HBL sensuaL 200ml","19","9","","15","4833","6000","5333","0","0","","","","");
INSERT INTO tbl_produk VALUES("586","8992929752387","Kris HBL elegan 600ml","19","9","","32","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("587","8992929752363","Kris HBL sensuaL 600ml","19","9","","32","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("590","8991102900591","kiranti pegal linu","33","9","","33","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("591","8991102800020","kiranti datang bulan","33","9","","33","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("592","8998899001579","baygon jumbo 10 jam","32","5","","15","3250","4000","3500","0","0","","","","");
INSERT INTO tbl_produk VALUES("593","8998899001500","baygon max 8jam","32","5","","15","2420","3000","2667","0","0","","","","");
INSERT INTO tbl_produk VALUES("594","8992745550488","mitu baby klasik 100g","30","2","","15","6250","7500","6833","0","0","","","","");
INSERT INTO tbl_produk VALUES("595","8992745380689","mitu baby floral 100g","30","2","","15","6250","7500","6833","0","0","","","","");
INSERT INTO tbl_produk VALUES("596","8992745326816","mitu baby klasik 50g","30","2","","15","3416","5000","3833","0","0","","","","");
INSERT INTO tbl_produk VALUES("597","8886007811113","teh celup poci vanila","17","5","","12","5000","6000","5500","0","0","","","","");
INSERT INTO tbl_produk VALUES("598","8992770096128","saori btl 133ml","21","9","","26","7833","9000","8166","0","0","","","","");
INSERT INTO tbl_produk VALUES("599","8992770096135","saori botol 270ml","21","9","","26","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("600","8991102380805","fullo coklat","18","5","","33","10000","11000","10333","0","0","","","","");
INSERT INTO tbl_produk VALUES("601","8992727005319","merries rentang S","25","4","","31","9500","10000","9750","0","0","","","","");
INSERT INTO tbl_produk VALUES("602","8992727005340","merries rentang M","25","4","","21","11500","12000","11750","0","0","","","","");
INSERT INTO tbl_produk VALUES("603","8997028380448","hitam manis coklat","18","5","","12","2900","3500","3300","0","0","","","","");
INSERT INTO tbl_produk VALUES("604","8993274537698","cucu","18","5","","22","20500","22000","21000","0","0","","","","");
INSERT INTO tbl_produk VALUES("605","8993274532037","bolu vanelo stroberi","18","5","","22","20500","22000","21000","0","0","","","","");
INSERT INTO tbl_produk VALUES("606","8995077601057","sukro open","18","5","","17","8350","9000","8666","0","0","","","","");
INSERT INTO tbl_produk VALUES("607","8995077603143","tic tac mix","18","5","","51","8333","9000","8666","0","0","","","","");
INSERT INTO tbl_produk VALUES("608","8995077600579","tic tak pedas","18","5","","51","8333","9000","8666","0","0","","","","");
INSERT INTO tbl_produk VALUES("609","8995077601361","tic tac sp","18","4","","51","8333","9000","8666","0","0","","","","");
INSERT INTO tbl_produk VALUES("610","711844340008","terasi abc","23","5","","20","5200","6000","5700","0","0","","","","");
INSERT INTO tbl_produk VALUES("611","8998866808262","royal 800ml","22","2","","19","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("612","8991002304802","relaxa cherry","28","3","","36","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("613","8991002304413","relaxa grape","28","3","","36","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("614","8991102991063","minstz zing","28","3","","33","4625","5000","4791","0","0","","","","");
INSERT INTO tbl_produk VALUES("615","8998866606400","softener so klin ultra 900ml","22","3","","19","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("616","8993327211704","kacang ayam 135 g","18","3","","17","1","7000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("617","8991001503169","chacha coklat","18","4","","27","8333","9000","8700","0","0","","","","");
INSERT INTO tbl_produk VALUES("618","8888166603929","saltcheese gabin kongguan","18","5","","27","1","10000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("619","8997002290459","sinai jgn 900ml","31","10","","47","14166","15000","14583","0","0","","","","");
INSERT INTO tbl_produk VALUES("620","8997002290770","sinai jrg 1800ml","31","10","","47","283333","30000","29166","0","0","","","","");
INSERT INTO tbl_produk VALUES("621","8999999555450","vixal 190ml","24","9","","25","4250","5000","4583","0","0","","","","");
INSERT INTO tbl_produk VALUES("622","8998899013015","bayclin 100ml","24","9","","15","1","3000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("623","711844120013","sambal abc btl kaca 335ml","21","9","","20","1","14000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("624","8992753182008","susu bendera kotak 115ml","29","3","","12","2","3000","2277","0","0","","","","");
INSERT INTO tbl_produk VALUES("625","8997205400211","viola btl 900ml","31","9","","47","14166","15000","14583","0","0","","","","");
INSERT INTO tbl_produk VALUES("626","8997002290718","lavenia  btl 450ml","31","9","","47","7000","8000","7300","0","0","","","","");
INSERT INTO tbl_produk VALUES("627","711844110021","kecap abc btl 600ml","21","9","","20","1","23000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("628","8886007821242","teh sosro celup 25","17","5","","49","5000","6000","5500","0","0","","","","");
INSERT INTO tbl_produk VALUES("629","8992826112093","kuci mas revil 900ml","31","3","","47","0","15000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("630","8992826112215","kunci mas revil 2L","31","3","","47","0","30000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("631","007916248847","minyak tawon 100ml","31","2","","35","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("632","8997204620085","jeli coco nata 500g","23","3","","22","0","10000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("633","8992696405486","dancow fullcream 400g","29","5","","37","8","480000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("634","8992696405431","dancow instan 400g","29","6","","37","0","28000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("635","8999988888866","larutan badak klg lecy 320ml","17","2","","44","5166","6000","5333","0","0","","","","");
INSERT INTO tbl_produk VALUES("636","8997014450216","keju prociz gold 170g","23","2","","37","0","15000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("637","8999988888989","larutan badak btl 200ml","17","9","","44","3020","3500","3125","0","0","","","","");
INSERT INTO tbl_produk VALUES("638","8992993260351","coklat batang colatta 250g","23","2","","42","16000","20000","17500","0","0","","","","");
INSERT INTO tbl_produk VALUES("639","8993379254469","lervia ","24","2","","19","-1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("640","8992946531538","zen shiso & sulpur","24","2","","29","1","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("641","8992946531521","zen shiso & seasalt","24","2","","29","1","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("642","8993037001022","alfa coklat batang 500g","23","2","","50","1","25000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("643","3516664010004","fermipan 500g","21","5","","41","14","46000","45000","0","0","","","","");
INSERT INTO tbl_produk VALUES("644","4970129733034","polpen snomen biru","34","5","","43","19000","21000","20000","0","0","","","","");
INSERT INTO tbl_produk VALUES("645","8994043110104","coklat bubuk roman","21","2","","27","1650","2000","1800","0","0","","","","");
INSERT INTO tbl_produk VALUES("646","8886007811021","teh cap botol 40g","17","3","","49","2500","3000","2750","0","0","","","","");
INSERT INTO tbl_produk VALUES("647","8993560025397","dettol deep cleanse 105g","24","2","","19","1","6000","5500","0","0","","","","");
INSERT INTO tbl_produk VALUES("648","8992770061065","sajiku bakwan 80g","21","3","","26","1983","2500","2100","0","0","","","","");
INSERT INTO tbl_produk VALUES("649","8995102703442","terasi mamasuka","21","5","","26","5","5000","5","0","0","","","","");
INSERT INTO tbl_produk VALUES("650","8992933213119","nutri jellecy","17","3","","38","2","5000","9","0","0","","","","");
INSERT INTO tbl_produk VALUES("651","8992933241112","nutrijel coklat","17","3","","38","0","5000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("652","8991102104180","pasta +sikat formula","24","3","","19","0","5000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("653","8997210230018","ballon AAA","33","5","","41","0","7000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("654","8886020033431","kapur ajaib","33","5","","41","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("655","8992727005302","jaz1 ungu 850g","24","3","","21","15000","16000","15416","0","0","","","","");
INSERT INTO tbl_produk VALUES("656","8992753120802","susu bendera bubuk fullceam 800g","29","6","","27","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("657","8996001520420","mi gelas sosis bbq","23","4","","22","8883","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("658","8998866602556","nuvo merah","24","2","","19","1805","2000","1861","0","0","","","","");
INSERT INTO tbl_produk VALUES("659","8998866602570","nuvo kuning","24","2","","19","1805","2000","1861","0","0","","","","");
INSERT INTO tbl_produk VALUES("660","8998866602563","nuvo hijau","24","2","","19","1805","2000","1861","0","0","","","","");
INSERT INTO tbl_produk VALUES("661","8993379500313","champion aktivcare","24","2","","19","1333","2000","1500","0","0","","","","");
INSERT INTO tbl_produk VALUES("662","8993037001046","alfa coklat batang 250g","23","2","","50","0","15000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("663","8992753031894","frisian flag putih sct","29","5","","17","7000","8000","7500","0","0","","","","");
INSERT INTO tbl_produk VALUES("664","8999908010704","marina UV white briht and fresh 185ml","19","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("665","8999908559500","marina UV white hidro cool 185ml","19","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("666","8999908214805","marina natural rich moisturizing 200ml","19","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("667","8999908061003","marina natural nourished&healthy 200ml","19","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("668","8999908082800","marina uv white healthy &glow 185ml","19","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("669","8999908045706","marina natural nutri fresh 200ml","19","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("670","8999908061102","marina natural smoot & glow 200ml","19","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("671","8999908273000","marina natural protects & cares 350ml","19","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("672","8999908273307","marina natural rich moisturizing 350ml","19","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("673","8999908273208","marina natural smoot & glow 350ml","19","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("674","8999908266101","marina uv white healthy &glow 460ml","19","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("675","8999908266002","marina UV white briht and fresh 460ml","19","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("676","8999908053800","my baby sweetfloral 50g","30","2","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("677","8999908042408","my baby soft & gentle 50g","30","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("678","8999908208101","my baby soft & gentle 100g","30","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("679","8999908208200","my baby sweetfloral 100g","30","9","","15","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("680","089686021141","intermi rasa soto ","23","3","","12","1","0","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("681","8998898825114","kunyit asam sirih","33","5","","40","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("683","8997027300089","nomos 10 jam","32","5","","21","1","-3","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("684","8994171101289","luwak white kopi","17","4","","37","10000","11000","10250","0","0","","","","");
INSERT INTO tbl_produk VALUES("685","2006121690968","macis gas 2000","20","6","","48","63000","75000","70000","0","0","","","","");
INSERT INTO tbl_produk VALUES("687","8997013180046","tisu tessy 250 ","34","5","","46","1","13000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("688","8998009010590","susu kotak ultra 125ml","29","2","","37","2450","3000","2666","0","0","","","","");
INSERT INTO tbl_produk VALUES("689","6931598210776","macis gas 1000","20","5","","30","40000","45000","43000","0","0","","","","");
INSERT INTO tbl_produk VALUES("690","8994171102101","luwak white kopi botol 240ml","17","9","","45","5708","6500","6000","0","0","","","","");
INSERT INTO tbl_produk VALUES("691","8994171101968","luwak tarik malaka","17","4","","46","16938","18000","17500","0","0","","","","");
INSERT INTO tbl_produk VALUES("692","8997001300074","minyak tokyo nigh 55ml hijau","31","2","","25","55000","65000","5833","0","0","","","","");
INSERT INTO tbl_produk VALUES("693","8714700521001","maizenaku 100g","21","2","","26","1","4000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("694","8993571003889","frambosen btl besar 40ml","21","9","","50","1","8000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("695","8997018250010","kopi jahe 41","17","4","","40","1","9000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("696","8997018250058","susu jahe 41","17","4","","39","1","9000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("697","8996001402023","tora susu","17","4","","22","1","10000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("698","8996001410042","tora moka","17","4","","22","1","10000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("699","8997028630017","balado ","21","3","","27","46000","5500","5000","0","0","","","","");
INSERT INTO tbl_produk VALUES("700","8992759324136","tisu makan toply","34","5","","30","1","4000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("701","001","pasta pandan","21","9","","50","0","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("703","002","pasta coklat","21","9","","52","3000","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("704","003","pasta moka","21","9","","52","3000","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("705","004","pasta nanas","21","9","","52","3000","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("706","005","pasta nangka","21","9","","52","3000","4000","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("709","007","spekulas","21","9","","52","2500","3000","2750","0","0","","","","");
INSERT INTO tbl_produk VALUES("710","006","pemutih kue","21","9","","52","1583","2000","1750","0","0","","","","");
INSERT INTO tbl_produk VALUES("712","008","palmsugar pino","21","3","","50","5500","6000","5833","0","0","","","","");
INSERT INTO tbl_produk VALUES("714","009","rombuter/delhu 1kg","21","3","","50","27000","30000","28000","0","0","","","","");
INSERT INTO tbl_produk VALUES("715","010","rombuter/delhu 0.5kg","21","3","","50","13500","15000","15000","0","0","","","","");
INSERT INTO tbl_produk VALUES("716","011","rombuter/delhu 200g","21","3","","50","6000","10000","9000","0","0","","","","");
INSERT INTO tbl_produk VALUES("719","012","rombuter/delhu 50g","21","3","","50","1500","3000","2500","0","0","","","","");
INSERT INTO tbl_produk VALUES("720","013","sp kue 1kg","21","3","","52","27000","30000","28000","0","0","","","","");
INSERT INTO tbl_produk VALUES("721","014","sp kue 0.5kg","21","3","","52","13500","15000","15000","0","0","","","","");
INSERT INTO tbl_produk VALUES("722","015","sp kue 200g","21","3","","52","6000","10000","9000","0","0","","","","");
INSERT INTO tbl_produk VALUES("723","016","sp kue 50g","21","3","","52","1500","3000","2500","0","0","","","","");
INSERT INTO tbl_produk VALUES("725","017","susu bubuk/susu abu 0.5kg","29","3","","52","12500","15000","14000","0","0","","","","");
INSERT INTO tbl_produk VALUES("726","018","susu bubuk/susu abu 200g","29","3","","52","5500","10000","9000","0","0","","","","");
INSERT INTO tbl_produk VALUES("727","019","susu bubuk/susu abu 50g","29","3","","52","1500","3000","2500","0","0","","","","");
INSERT INTO tbl_produk VALUES("728","8998866200936","Mie Sedaap goreng crispy","23","2","","17","2350","2500","2400","0","0","","","","");
INSERT INTO tbl_produk VALUES("729","8998866202404","mie cup sedap korea goreng","23","2","","17","3916","5000","4166","0","0","","","","");
INSERT INTO tbl_produk VALUES("730","8998866202671","mie cup sedap korea kuah","23","2","","17","3916","5000","4166","0","0","","","","");
INSERT INTO tbl_produk VALUES("731","089686060027","pop mie ayam","23","2","","12","3791","4500","3958","0","0","","","","");
INSERT INTO tbl_produk VALUES("732","089686060362","pop mie soto","23","2","","12","3792","4500","3959","0","0","","","","");
INSERT INTO tbl_produk VALUES("733","8998866608824","kecap sedap btl 700 ml","21","9","","17","23500","25000","24500","0","0","","","","");
INSERT INTO tbl_produk VALUES("734","8994907000428","kecap ABC saset","21","4","","20","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("735","8991976103142","kecap nasional saset","21","5","","24","4375","5000","4875","0","0","","","","");
INSERT INTO tbl_produk VALUES("736","8992727005449","meries XL-16","25","5","","21","38750","42000","40000","0","0","","","","");
INSERT INTO tbl_produk VALUES("737","8992727006491","meries XL-38","25","5","","21","84625","88000","86000","0","0","","","","");
INSERT INTO tbl_produk VALUES("738","8992727005456","meries XL-26","25","5","","21","58750","63000","61000","0","0","","","","");
INSERT INTO tbl_produk VALUES("739","8992727005371","meries M 34","25","5","","21","58750","63000","61000","0","0","","","","");
INSERT INTO tbl_produk VALUES("740","8992727005418","meries L 30","25","5","","21","58750","63000","61000","0","0","","","","");
INSERT INTO tbl_produk VALUES("741","8992727005326","meries S 11","25","5","","21","13500","17000","15000","0","0","","","","");
INSERT INTO tbl_produk VALUES("742","8992727006118","meries L 44","25","5","","21","84625","88000","86000","0","0","","","","");
INSERT INTO tbl_produk VALUES("743","8992727005401","meries L 20","25","5","","21","38666","42000","40000","0","0","","","","");
INSERT INTO tbl_produk VALUES("744","8992727005357","meries M 9","25","5","","21","13500","17000","15000","0","0","","","","");
INSERT INTO tbl_produk VALUES("745","8992727005333","meries S26","25","5","","21","38666","42000","40000","0","0","","","","");
INSERT INTO tbl_produk VALUES("746","8992727006484","meries S 40","25","5","","21","58750","63000","61000","0","0","","","","");
INSERT INTO tbl_produk VALUES("747","8992727005364","meries M 22","25","5","","21","38666","42000","40000","0","0","","","","");
INSERT INTO tbl_produk VALUES("748","8992717900228","Nata de coco pot 1 kg","23","2","","41","12000","15000","13000","0","0","","","","");
INSERT INTO tbl_produk VALUES("749","8998899995946","Autan Pink rtg","32","4","","15","5000","6000","5417","0","0","","","","");
INSERT INTO tbl_produk VALUES("750","8991102383091","Tango coklat 500","18","5","","33","8500","9000","8750","0","0","","","","");
INSERT INTO tbl_produk VALUES("752","8992747180126","vixal botol 470 ml","24","9","","25","1","14000","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("753","8992855888105","agar-agar bola dunia coklat","23","3","","38","3500","4000","3750","0","0","","","","");
INSERT INTO tbl_produk VALUES("754","8992855888235","agar-agar bola dunia merah","23","3","","38","3500","4000","3750","0","0","","","","");
INSERT INTO tbl_produk VALUES("755","8992855888228","agar-agar bola dunia putih","23","3","","38","3500","4000","3750","0","0","","","","");
INSERT INTO tbl_produk VALUES("756","8998866609234","top white","17","4","","17","9350","10000","9600","0","0","","","","");
INSERT INTO tbl_produk VALUES("757","8999988888828","larutan badak klg stroberi 320ml","17","2","","24","5200","6000","5300","0","0","","","","");
INSERT INTO tbl_produk VALUES("758","8998225800029","minyak fortune 5 L","31","10","","48","68250","73000","70000","0","0","","","","");
INSERT INTO tbl_produk VALUES("759","8991102989534","Tango vanila 1000","18","4","","33","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("760","8998225800012","minyak fortune 1 L bantal","31","3","","48","12166","13500","12916","0","0","","","","");
INSERT INTO tbl_produk VALUES("761","8997002290152","lavenia jrg 5 L ","31","10","","47","68000","72000","69500","0","0","","","","");
INSERT INTO tbl_produk VALUES("762","8997002290190","lavenia 18 L","31","6","","47","226000","235000","232000","0","0","","","","");
INSERT INTO tbl_produk VALUES("763","8998866607353","daia putih 900g","24","3","","19","16000","17000","16250","0","0","","","","");
INSERT INTO tbl_produk VALUES("764","8998866608725","daia pink 900g","24","3","","19","16000","17000","16250","0","0","","","","");
INSERT INTO tbl_produk VALUES("765","8998866610223","daia ungu 900g","24","3","","19","16000","17000","16250","0","0","","","","");
INSERT INTO tbl_produk VALUES("766","8999999710873","pepsoden herbal 120g","24","2","","25","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("767","8992770061027","sajiku pedas 80g","21","2","","26","1975","2500","2100","0","0","","","","");
INSERT INTO tbl_produk VALUES("768","8992770084040","sajiku bumbu soto rtg","21","3","","26","1650","2000","1800","0","0","","","","");
INSERT INTO tbl_produk VALUES("769","8992770094117","saori renteng","21","4","","26","0","0","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("770","8996001523247","mie gelas baso sapi","23","4","","22","8167","9000","8500","0","0","","","","");
INSERT INTO tbl_produk VALUES("771","8996001300053","marie susu renteng","23","5","","22","16222","17000","16667","0","0","","","","");
INSERT INTO tbl_produk VALUES("772","8996001440124","energen vanila","23","4","","22","11063","12000","11250","0","0","","","","");
INSERT INTO tbl_produk VALUES("773","8998866500296","milkjus anggur","17","4","","22","7600","8000","7750","0","0","","","","");
INSERT INTO tbl_produk VALUES("774","8998866606004","milk jus melon","17","4","","22","7600","8000","7750","0","0","","","","");
INSERT INTO tbl_produk VALUES("775","5fa9431a1deec","roma wafello 48g","18","5","","22","17000","18000","17500","0","0","","","","");
INSERT INTO tbl_produk VALUES("776","89966001350522","roma wafer chocoblazt","23","5","","22","0","18000","0","0","0","","","","");
INSERT INTO tbl_produk VALUES("777","8992730997106","perman kacamata","28","5","","41","16000","17000","16500","0","0","","","","");
INSERT INTO tbl_produk VALUES("778","8998866201964","minyak sabrina 2L revil","31","3","","17","26667","28000","27500","0","0","","","","");
INSERT INTO tbl_produk VALUES("779","8998866201957","minyak sabrina 1 L revil","31","3","","17","13333","14000","13750","0","0","","","","");
INSERT INTO tbl_produk VALUES("780","8998866501026","minyak sedap revil 1ltr","31","3","","17","14583","15000","14833","0","0","","","","");
INSERT INTO tbl_produk VALUES("781","8993496001076","minyak sania revil  2L ","31","3","","48","27000","28000","27500","0","0","","","","");
INSERT INTO tbl_produk VALUES("782","8996200900023","herocyn 150g","30","2","","15","15000","16000","15500","0","0","","","","");
INSERT INTO tbl_produk VALUES("783","8998899001623","baygon max lav 10jam","32","5","","15","3133","4000","3416","0","0","","","","");
INSERT INTO tbl_produk VALUES("784","8998899001920","baygon max DBD 10 jam","32","5","","15","3133","4000","3416","0","0","","","","");
INSERT INTO tbl_produk VALUES("785","8993379152017","sabun surya ","24","2","","30","0","3000","2833","0","0","","","","");
INSERT INTO tbl_produk VALUES("786","8993496109956","terigu sania 1kg","21","3","","48","8700","10000","9200","0","0","","","","");
INSERT INTO tbl_produk VALUES("787","8998899001173","baygon kaleng 750ml","32","9","","15","36000","39500","38000","0","0","","","","");
INSERT INTO tbl_produk VALUES("788","8998899995090","baygon kaleng 675ml","32","9","","15","35000","38000","37000","0","0","","","","");
INSERT INTO tbl_produk VALUES("789","8998899995939","baygon kaleng  600ml water","32","9","","15","34000","37000","36000","0","0","","","","");
INSERT INTO tbl_produk VALUES("790","8998899995397","baygon kaleng 450ml","32","9","","15","26667","30000","28000","0","0","","","","");
INSERT INTO tbl_produk VALUES("791","8998899995922","baygon kaleng 600ml cery","32","9","","15","34000","37000","36000","0","0","","","","");
INSERT INTO tbl_produk VALUES("792","8998899400341","baygon kaleng 200ml","32","9","","15","14584","18000","16000","0","0","","","","");
INSERT INTO tbl_produk VALUES("793","8997025063672","big blueberry 400ml","17","9","","45","3083","3750","3333","0","0","","","","");
INSERT INTO tbl_produk VALUES("794","8991001400017","chocoavanhouton 45g","21","3","","50","12500","14000","13000","0","0","","","","");
INSERT INTO tbl_produk VALUES("795","8998866107495","zinc hairfall rtg","26","4","","19","4750","5000","4900","0","0","","","","");
INSERT INTO tbl_produk VALUES("796","8998866107501","zinc softcare rtg","26","4","","19","4750","5000","4900","0","0","","","","");
INSERT INTO tbl_produk VALUES("797","8997025914042","marie susu ATB","18","3","","41","5750","7000","6250","0","0","","","","");
INSERT INTO tbl_produk VALUES("798","8999999530433","citra HBL fres white 230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("799","8999999528805","citra HBL perly white 230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("800","8999999528898","citra HBL night white 230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("801","8999999531423","citra HBL sun protek 230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("802","8999999528928","citra HBL nourishing white 230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("803","8999999528911","citra HBL Golden white 230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("804","8999999528904","citra HBL sakura fair 230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("805","8999999528881","citra HBL Nat glowing  230ml","19","9","","25","17950","20000","18750","0","0","","","","");
INSERT INTO tbl_produk VALUES("806","8999999528942","citra HBL perly white 120ml","19","9","","25","10000","12000","10834","0","0","","","","");
INSERT INTO tbl_produk VALUES("807","8999999049423","rexona men rol on sprort def 45ml","19","2","","25","13550","15000","14000","0","0","","","","");
INSERT INTO tbl_produk VALUES("808","8999999049409","rexona ro men ice cool 45ml","19","2","","25","13550","15000","14000","0","0","","","","");
INSERT INTO tbl_produk VALUES("809","8999999049508","rexona ro women showerclean 45ml","19","2","","25","13550","15000","14000","0","0","","","","");
INSERT INTO tbl_produk VALUES("810","8999999049492","rexona ro women powder dry 45ml","19","2","","25","13550","15000","14000","0","0","","","","");
INSERT INTO tbl_produk VALUES("811","8992696405479","dancow fullcream 200g","19","2","","37","25075","28000","26500","0","0","","","","");
INSERT INTO tbl_produk VALUES("812","8992696405424","dancow instan 200g","29","2","","37","23225","27000","25000","0","0","","","","");
INSERT INTO tbl_produk VALUES("813","8997878000015","kiko stik","17","5","","38","5667","6000","6000","0","0","","","","");
INSERT INTO tbl_produk VALUES("814","8993468211496","saos tiga berlian botol","23","2","","41","1","1","1","0","0","","","","");
INSERT INTO tbl_produk VALUES("815","8997218380074","Ichitan Thai Milk tea","17","9","","12","6200","7000","6500","6500","6500","","","","");



DROP TABLE tbl_satuan;

CREATE TABLE `tbl_satuan` (
  `id_satuan` int(5) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(50) NOT NULL,
  `penjualan` varchar(1) NOT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tbl_satuan VALUES("2","Pcs","1");
INSERT INTO tbl_satuan VALUES("3","Bks","1");
INSERT INTO tbl_satuan VALUES("4","Renteng","2");
INSERT INTO tbl_satuan VALUES("5","Pack","2");
INSERT INTO tbl_satuan VALUES("6","Dos","");
INSERT INTO tbl_satuan VALUES("7","Lusin","");
INSERT INTO tbl_satuan VALUES("8","toples","");
INSERT INTO tbl_satuan VALUES("9","botol","");
INSERT INTO tbl_satuan VALUES("10","jerigen","");
INSERT INTO tbl_satuan VALUES("11","karung","");
INSERT INTO tbl_satuan VALUES("12","bal","");



DROP TABLE tbl_setting;

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_cetak` varchar(50) NOT NULL,
  `server_aplikasi` varchar(100) NOT NULL,
  `server_update` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_setting VALUES("1","Dewi Jaya","Kompleks Terminal Pasar Bunta","Tidak langsung","http://localhost:8080/bdl_kasir/","https://imfdp.my.id/");



DROP TABLE tbl_suplier;

CREATE TABLE `tbl_suplier` (
  `id_suplier` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  PRIMARY KEY (`id_suplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_level` int(2) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_changed` datetime NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("2","su","I Made Frandy","1b3231655cebb7a1f783eddf27d254ca","0","085656065964","frandyd125@gmail.com","2020-09-19 20:02:44","0000-00-00 00:00:00");
INSERT INTO tbl_user VALUES("3","admin","","21232f297a57a5a743894a0e4a801fc3","1","085656065964","frandyd125@gmail.com","2020-10-13 05:17:11","2020-09-19 20:00:23");
INSERT INTO tbl_user VALUES("5","kasir","Bunga","c7911af3adbd12a035b289556d96470a","4","0856","kasir@toko.com","2020-10-02 10:22:47","0000-00-00 00:00:00");



