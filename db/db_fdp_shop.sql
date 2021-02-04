-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 08:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_fdp_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_belanja_member`
--

CREATE TABLE IF NOT EXISTS `tbl_belanja_member` (
`id_belanja` int(10) NOT NULL,
  `tanggal` varchar(16) NOT NULL,
  `total` int(12) NOT NULL,
  `metode_bayar` int(1) NOT NULL,
  `pembayaran` int(12) NOT NULL,
  `id_penyalur` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
`id_brand` int(2) NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `brand`) VALUES
(12, 'Indofood'),
(14, '-'),
(15, 'Johnson'),
(17, 'Wingfood');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory`
--

CREATE TABLE IF NOT EXISTS `tbl_inventory` (
`id` int(10) NOT NULL,
  `id_produk` varchar(50) NOT NULL,
  `jenis` int(1) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_suplier` int(5) DEFAULT '0',
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inventory`
--

INSERT INTO `tbl_inventory` (`id`, `id_produk`, `jenis`, `jumlah`, `tanggal`, `id_user`, `id_suplier`, `keterangan`) VALUES
(29, '71', 1, 20, '2020-10-09', 3, 6, 'Pembelian Barang'),
(33, '73', 1, 2, '2020-10-15', 3, 0, 'Pembelian Barang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
`id_kategori` int(2) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`) VALUES
(17, 'Minuman'),
(19, 'Lotion'),
(20, 'Rokok'),
(21, 'Bumbu Dapur'),
(22, 'Pengharum Ruangan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keranjang`
--

CREATE TABLE IF NOT EXISTS `tbl_keranjang` (
`id_keranjang` int(10) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `berat` int(5) NOT NULL,
  `harga` int(13) NOT NULL,
  `diskon` int(12) NOT NULL,
  `kode_pesanan` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE IF NOT EXISTS `tbl_level` (
`id_level` int(2) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`id_level`, `level`) VALUES
(0, 'Super User'),
(1, 'Admin'),
(2, 'Manager'),
(3, 'Gudang'),
(4, 'Kasir'),
(5, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyalur`
--

CREATE TABLE IF NOT EXISTS `tbl_penyalur` (
  `id_penyalur` varchar(10) NOT NULL,
  `nama_penyalur` varchar(50) NOT NULL,
  `jenis_usaha` int(1) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hutang` int(12) NOT NULL DEFAULT '0',
  `batas_hutang` int(12) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `barcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penyalur`
--

INSERT INTO `tbl_penyalur` (`id_penyalur`, `nama_penyalur`, `jenis_usaha`, `no_hp`, `alamat`, `hutang`, `batas_hutang`, `status`, `barcode`) VALUES
('0907200001', 'Kios Mbak Ida 2', 0, '0856', 'Jl.Pulau Sandakan', 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permision`
--

CREATE TABLE IF NOT EXISTS `tbl_permision` (
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
  `permision` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permision`
--

INSERT INTO `tbl_permision` (`id_level`, `brand`, `inventory`, `kategori`, `keranjang`, `level`, `pesanan`, `produk`, `satuan`, `suplier`, `user`, `laporan`, `laporan_d_barang`, `laporan_s_barang`, `laporan_penjualan`, `laporan_pp_tanggal`, `laporan_pp_bulan`, `laporan_pp_tahun`, `laporan_laba_rugi`, `master_data`, `permision`) VALUES
(0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(2, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan`
--

CREATE TABLE IF NOT EXISTS `tbl_pesanan` (
  `kode_pesanan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(5) NOT NULL,
  `status` int(1) NOT NULL,
  `ppn` int(12) NOT NULL,
  `total` int(12) NOT NULL,
  `tunai` int(12) NOT NULL DEFAULT '0',
  `kembalian` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
`id_produk` int(20) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_kategori` int(2) NOT NULL,
  `id_satuan` int(5) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `id_brand` int(2) NOT NULL,
  `harga_pokok` int(12) NOT NULL DEFAULT '0',
  `harga_satuan` int(12) NOT NULL DEFAULT '0',
  `harga_grosir` int(12) NOT NULL DEFAULT '0',
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `last_update` varchar(16) NOT NULL,
  `penjualan` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama`, `id_kategori`, `id_satuan`, `tipe`, `id_brand`, `harga_pokok`, `harga_satuan`, `harga_grosir`, `gambar`, `keterangan`, `last_update`, `penjualan`) VALUES
(71, '8992779139406', 'Glade Spray Wild Lavender 400ml', 22, 2, '', 15, 25000, 35000, 32000, '', '', '', ''),
(72, '5f7fdaca4d107', 'Mei Qian', 19, 2, '', 14, 700000, 75000, 0, '', '-', '', '1'),
(73, '8998899400341', 'Baygon Double Nozzle Wangi Citrus Fresh 200ml', 22, 2, '', 15, 14000, 16000, 15000, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE IF NOT EXISTS `tbl_satuan` (
`id_satuan` int(5) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `penjualan` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`id_satuan`, `satuan`, `penjualan`) VALUES
(2, 'Pcs', '1'),
(3, 'Bks', '1'),
(5, 'Pack', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
`id` int(1) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_cetak` varchar(50) NOT NULL,
  `server_aplikasi` varchar(100) NOT NULL,
  `server_update` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `alamat`, `jenis_cetak`, `server_aplikasi`, `server_update`) VALUES
(1, 'Dewi Jaya', 'Jl. Trans Sulawesi Bunta', 'Langsung', 'http://localhost:8080/2020/fdp-kasir/', 'https://imfdp.my.id/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE IF NOT EXISTS `tbl_suplier` (
`id_suplier` int(5) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`id_suplier`, `nama`, `alamat`, `no_hp`) VALUES
(6, 'PT. Totalindo Perkasa', 'Kintom', '081234567890');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id_user` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_level` int(2) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_changed` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `nama`, `password`, `id_level`, `no_hp`, `email`, `last_login`, `last_changed`) VALUES
(2, 'su', 'I Made Frandy', '1b3231655cebb7a1f783eddf27d254ca', 0, '085656065964', 'frandyd125@gmail.com', '2020-09-19 20:02:44', '0000-00-00 00:00:00'),
(3, 'admin', 'Frandy', '21232f297a57a5a743894a0e4a801fc3', 1, '085656065964', 'frandyd125@gmail.com', '2020-10-13 18:52:21', '2020-09-19 20:00:23'),
(5, 'kasir', 'Bunga', 'c7911af3adbd12a035b289556d96470a', 4, '0856', 'kasir@toko.com', '2020-10-02 10:22:47', '0000-00-00 00:00:00'),
(8, 'bambang', 'Bambang', '25d55ad283aa400af464c76d713c07ad', 3, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_belanja_member`
--
ALTER TABLE `tbl_belanja_member`
 ADD PRIMARY KEY (`id_belanja`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
 ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `tbl_inventory`
--
ALTER TABLE `tbl_inventory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
 ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
 ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tbl_penyalur`
--
ALTER TABLE `tbl_penyalur`
 ADD PRIMARY KEY (`id_penyalur`);

--
-- Indexes for table `tbl_permision`
--
ALTER TABLE `tbl_permision`
 ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
 ADD PRIMARY KEY (`kode_pesanan`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
 ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
 ADD PRIMARY KEY (`id_suplier`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_belanja_member`
--
ALTER TABLE `tbl_belanja_member`
MODIFY `id_belanja` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
MODIFY `id_brand` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_inventory`
--
ALTER TABLE `tbl_inventory`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
MODIFY `id_kategori` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
MODIFY `id_keranjang` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
MODIFY `id_level` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
MODIFY `id_produk` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
MODIFY `id_satuan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
MODIFY `id_suplier` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
