-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2020 at 11:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tumpangsari`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `harga` int(10) DEFAULT NULL,
  `id_kategori` varchar(6) DEFAULT NULL,
  `id_supp` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga`, `id_kategori`, `id_supp`) VALUES
('00000001', 'Beras Pulen 1kg', 11000, 'MKN001', 'bers'),
('10000652', 'Indomie Ayam Bawang 85gr', 3000, 'MKN004', 'indf'),
('10002560', 'Indomie Rasa Soto Mie 85g', 3000, 'MKN004', 'indf'),
('10003517', 'Indomie Goreng 85gr', 3000, 'MKN004', 'indf'),
('10003873', 'Kopi Kapal Api 380gr', 22000, 'MNM003', 'kpla'),
('10007379', 'Ultramilk 200ml', 5000, 'MNM001', 'ultj'),
('10007970', 'Buavita 250ml', 7500, 'MNM002', 'unlv'),
('10010220', 'Sariwangi Teh Celup Isi 5', 10500, 'MNM004', 'srwg'),
('10012338', 'Bimoli Minyak Goreng Refi', 15000, 'MKN002', 'indf'),
('10021010', 'gulaku 1kg', 12500, 'MKN001', 'glku'),
('10023790', 'Sedaap Mie Instan Ayam Ba', 2500, 'MKN004', 'wing'),
('10031961', 'Charm Non Wings 10 Pads 2', 5000, 'PMB001', 'chrm'),
('10032895', 'Charm Night Wing 12 pads ', 21000, 'PMB001', 'chrm'),
('20038770', 'Pantene Shampoo 135ml', 20000, 'SMP001', 'P&Ga'),
('20043713', 'Bimoli Minyak Goreng 2000', 29000, 'MKN002', 'indf'),
('20052321', 'Daia Detergen Bubuk 1800g', 30000, 'DET001', 'wing'),
('20074226', 'Downy Softener 800ml', 26000, 'DET001', 'P&Ga'),
('20084469', 'Royco Bumbu Kaldu Ayam 23', 9300, 'MKN003', 'unlv'),
('20084470', 'Royco Bumbu Kaldu Sapi 23', 9300, 'MKN003', 'unlv'),
('20090302', 'Royco Bumbu Siap Pakai Na', 2000, 'MKN003', 'unlv'),
('20090355', 'Lifebouy Sabun Mandi Bata', 5000, 'SBN001', 'unlv'),
('20098616', 'Charm Cooling Fresh 10 pa', 17000, 'PMB001', 'chrm'),
('20098816', 'So Klin Powder Detergen 7', 17000, 'DET001', 'wing');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_nota` varchar(6) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `qty` int(3) NOT NULL,
  `total` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_nota`, `kode_barang`, `qty`, `total`) VALUES
('100348', '00000001', 3, 33000),
('100348', '10002560', 5, 15000),
('100348', '20074226', 2, 52000),
('100348', '20098616', 1, 17000),
('100349', '10021010', 1, 12500),
('100349', '20043713', 1, 29000),
('100349', '20084469', 2, 18600),
('100350', '10002560', 5, 15000),
('100350', '10003873', 2, 44000),
('100350', '10007970', 1, 7500),
('100350', '10032895', 1, 21000),
('100350', '20038770', 1, 20000),
('100350', '20043713', 1, 29000),
('100350', '20090302', 2, 2000),
('100350', '20090355', 1, 5000),
('100351', '10002560', 5, 15000),
('100351', '20084469', 2, 18600),
('100351', '20090302', 1, 2000),
('100352', '00000001', 1, 11000),
('100352', '20043713', 1, 29000),
('100352', '20090302', 1, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `kategoribarang`
--

CREATE TABLE `kategoribarang` (
  `id_kategori` varchar(6) NOT NULL,
  `nama_kategori` varchar(25) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoribarang`
--

INSERT INTO `kategoribarang` (`id_kategori`, `nama_kategori`, `keterangan`) VALUES
('DET001', 'Detergen dan Pewangi', ' '),
('MKN001', 'Makanan Pokok', ' '),
('MKN002', 'Minyak Goreng', ' '),
('MKN003', 'Bumbu Masak', ' '),
('MKN004', 'Mie Instan', ' '),
('MNM001', 'Susu', ' '),
('MNM002', 'Jus', ' '),
('MNM003', 'Kopi Instan', ' '),
('MNM004', 'Teh Celup', ' '),
('MNM005', 'Minuman', ' '),
('PMB001', 'Pembalut', ' '),
('SBN001', 'Sabun Mandi', ' '),
('SMP001', 'Shampoo', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_pegawai` varchar(4) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_pegawai`, `email`, `password`) VALUES
('ADM1', 'komangwiidyas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `notabelanja`
--

CREATE TABLE `notabelanja` (
  `id_nota` varchar(6) NOT NULL,
  `tgl` date DEFAULT NULL,
  `total_belanja` int(12) DEFAULT NULL,
  `id_pegawai` varchar(4) DEFAULT NULL,
  `id_pelanggan` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notabelanja`
--

INSERT INTO `notabelanja` (`id_nota`, `tgl`, `total_belanja`, `id_pegawai`, `id_pelanggan`) VALUES
('100348', '2020-03-03', 117000, 'KSR1', '0003'),
('100349', '2020-03-03', 60100, 'KSR1', '0002'),
('100350', '2020-03-04', 143000, 'KSR1', '0005'),
('100351', '2020-03-04', 35600, 'KSR2', '0002'),
('100352', '2020-03-04', 42000, 'KSR1', '0001');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(4) NOT NULL,
  `nama_pegawai` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat_pegawai` text DEFAULT NULL,
  `notelp_pegawai` text DEFAULT NULL,
  `jabatan` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `email`, `alamat_pegawai`, `notelp_pegawai`, `jabatan`) VALUES
('ADM1', 'Ni Komang Sri Widyastuti', 'komangwiidyas@gmail.com', 'Desa Jagaraga', '081255871209', 'admin'),
('KSR1', 'Luh Putu', '', 'Desa Jagaraga', '085745183234', 'kasir'),
('KSR2', 'Desak', '', 'Desa Lemukih', '081854124856', 'kasir'),
('PMN1', 'Sinta', '', 'Desa Jagaraga', '087866253756', 'pramu'),
('PMN2', 'Budi', '', 'Desa Menyali', '087812831548', 'pramu');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(4) NOT NULL,
  `nama_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text DEFAULT NULL,
  `notelp_pelanggan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `notelp_pelanggan`) VALUES
('0001', 'Bayu', 'Desa Menyali', ' '),
('0002', 'Dina', 'Desa Menyali', ' '),
('0003', 'Desi', 'Desa Sawan', ' '),
('0004', 'Warung Desa', 'Desa Sawan', ' '),
('0005', 'Agus', 'Desa Jagaraga', ' '),
('0006', 'Putu', 'Desa Sawan', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supp` varchar(6) NOT NULL,
  `nama_supp` varchar(25) DEFAULT NULL,
  `alamat_supp` text DEFAULT NULL,
  `notelp_supp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supp`, `nama_supp`, `alamat_supp`, `notelp_supp`) VALUES
('bers', 'Beras Lokal', 'Bali', '087823425231'),
('byts', 'Banyuatis', 'Seririt, Bali', '036224095'),
('chrm', 'Uni-Charm', 'Jakarta', '0214510452'),
('glku', 'PT. Gulaku', 'Denpasar', '036242316'),
('indf', 'PT. Indofood', 'Jakarta', '021345618'),
('kpla', 'PT. Kapal Api', 'Denpasar', '036253962'),
('mhdw', 'CV Mahadewa', 'Desa Penarukan', '081877661236'),
('myra', 'Mayora', 'Jl. Gatot Subroto Barat, No. 296, Denpasar Utara', '0361411836'),
('P&Ga', 'Procter & Gamble', 'Denpasar', '036267246'),
('srwg', 'PT. Sariwangi', 'Denpasar', '036218539'),
('ultj', 'PT. Ultra Jaya', 'Denpasar', '036289561'),
('unlv', 'Unilever', 'Denpasar, Bali', '0361434731'),
('wing', 'Wings. Corp', 'Denpasar, Bali', '0362310942');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` varchar(6) NOT NULL,
  `id_nota` varchar(6) DEFAULT NULL,
  `tgl_trans` date DEFAULT NULL,
  `jml_trans` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `id_nota`, `tgl_trans`, `jml_trans`) VALUES
('100049', '100348', '2020-03-03', 117000),
('100050', '100349', '2020-03-03', 60100),
('100051', '100350', '2020-03-04', 143000),
('100052', '100351', '2020-03-04', 35600),
('100053', '100352', '2020-03-04', 42000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD UNIQUE KEY `nama_barang` (`nama_barang`),
  ADD KEY `fk_id_kategori` (`id_kategori`),
  ADD KEY `fk_id_supp` (`id_supp`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_nota`,`kode_barang`),
  ADD KEY `fk_detail_barang` (`kode_barang`);

--
-- Indexes for table `kategoribarang`
--
ALTER TABLE `kategoribarang`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `notabelanja`
--
ALTER TABLE `notabelanja`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `fk_pegawai` (`id_pegawai`),
  ADD KEY `fk_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`) USING BTREE;

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supp`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `fk_id_nota` (`id_nota`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategoribarang` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_supp` FOREIGN KEY (`id_supp`) REFERENCES `supplier` (`id_supp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `fk_detail_barang` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail_penjualan` FOREIGN KEY (`id_nota`) REFERENCES `notabelanja` (`id_nota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notabelanja`
--
ALTER TABLE `notabelanja`
  ADD CONSTRAINT `fk_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_id_nota` FOREIGN KEY (`id_nota`) REFERENCES `notabelanja` (`id_nota`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
