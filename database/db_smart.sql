-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_smart
CREATE DATABASE IF NOT EXISTS `db_smart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_smart`;

-- Dumping structure for table db_smart.tbl_hama
CREATE TABLE IF NOT EXISTS `tbl_hama` (
  `id_hama` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT '',
  `deskripsi` text,
  `foto` text,
  `cara_penanganan` text,
  PRIMARY KEY (`id_hama`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table db_smart.tbl_hama: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_hama` DISABLE KEYS */;
INSERT INTO `tbl_hama` (`id_hama`, `nama`, `deskripsi`, `foto`, `cara_penanganan`) VALUES
	(2, 'tes Deskripsi', 'tes Deskripsi', 'jika sudah oke..ini no rekeningnya .. lama pengerjaan yang telah di sepakati  ,dan terhitung dari tanggal pembayaran ...png', 'tes Cara Penanganan');
/*!40000 ALTER TABLE `tbl_hama` ENABLE KEYS */;

-- Dumping structure for table db_smart.tb_admin
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_smart.tb_admin: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` (`user`, `pass`, `level`) VALUES
	('admin', 'admin', 'admin');
INSERT INTO `tb_admin` (`user`, `pass`, `level`) VALUES
	('pimpinan', 'pimpinan', 'pimpinan');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;

-- Dumping structure for table db_smart.tb_alternatif
CREATE TABLE IF NOT EXISTS `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`kode_alternatif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table db_smart.tb_alternatif: 4 rows
/*!40000 ALTER TABLE `tb_alternatif` DISABLE KEYS */;
INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `rank`, `total`) VALUES
	('A01', 'Alternatif 1', 1, 84.783783783784);
INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `rank`, `total`) VALUES
	('A02', 'Alternatif 2', 2, 80.27027027027);
INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `rank`, `total`) VALUES
	('A03', 'Alternatif 3', 3, 70.27027027027);
INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `rank`, `total`) VALUES
	('A04', 'Alternatif 4', 4, 59.675675675676);
/*!40000 ALTER TABLE `tb_alternatif` ENABLE KEYS */;

-- Dumping structure for table db_smart.tb_kriteria
CREATE TABLE IF NOT EXISTS `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(255) DEFAULT NULL,
  `kondisi_buah` varchar(30) DEFAULT NULL,
  `warna_kulit` varchar(30) DEFAULT NULL,
  `warna_daging` varchar(30) DEFAULT NULL,
  `kondisi_pohon` varchar(30) DEFAULT NULL,
  `kondisi_tanah` varchar(30) DEFAULT NULL,
  `bobot` double DEFAULT NULL,
  PRIMARY KEY (`kode_kriteria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table db_smart.tb_kriteria: 5 rows
/*!40000 ALTER TABLE `tb_kriteria` DISABLE KEYS */;
INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `kondisi_buah`, `warna_kulit`, `warna_daging`, `kondisi_pohon`, `kondisi_tanah`, `bobot`) VALUES
	('C01', 'Salak 1', 'Membusuk', 'Mengering', 'Coklat Kehitaman', 'Retak', 'Lembab', 36);
INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `kondisi_buah`, `warna_kulit`, `warna_daging`, `kondisi_pohon`, `kondisi_tanah`, `bobot`) VALUES
	('C02', 'Salak 2', 'Mengering', 'Hitam Busuk', 'Hitam Busuk', 'Kropos', 'Retak', 26);
INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `kondisi_buah`, `warna_kulit`, `warna_daging`, `kondisi_pohon`, `kondisi_tanah`, `bobot`) VALUES
	('C03', 'Salak 3', 'Retak', 'Coklat Pudar', 'Hitam Busuk', 'Kering dan Mati', 'Lembab', 6);
INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `kondisi_buah`, `warna_kulit`, `warna_daging`, `kondisi_pohon`, `kondisi_tanah`, `bobot`) VALUES
	('C04', 'Salak 4', 'Utuh', 'Kream Segar', 'Coklat Segar', 'Keras dan Segar', 'Subur', 92);
INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `kondisi_buah`, `warna_kulit`, `warna_daging`, `kondisi_pohon`, `kondisi_tanah`, `bobot`) VALUES
	('C05', 'Salak 5', 'Membusuk', 'Coklat Pudar', 'Hitam Busuk', 'Kropos', 'Kering', 25);
/*!40000 ALTER TABLE `tb_kriteria` ENABLE KEYS */;

-- Dumping structure for table db_smart.tb_rel_alternatif
CREATE TABLE IF NOT EXISTS `tb_rel_alternatif` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kode_alternatif` varchar(16) DEFAULT NULL,
  `kode_kriteria` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

-- Dumping data for table db_smart.tb_rel_alternatif: 20 rows
/*!40000 ALTER TABLE `tb_rel_alternatif` DISABLE KEYS */;
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(1, 'A01', 'C01', 75);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(2, 'A01', 'C02', 100);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(3, 'A01', 'C03', 80);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(4, 'A01', 'C04', 90);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(5, 'A01', 'C05', 65);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(6, 'A02', 'C01', 90);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(7, 'A02', 'C02', 100);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(8, 'A02', 'C03', 60);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(9, 'A02', 'C04', 75);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(10, 'A02', 'C05', 70);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(11, 'A03', 'C01', 80);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(12, 'A03', 'C02', 90);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(13, 'A03', 'C03', 85);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(14, 'A03', 'C04', 60);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(15, 'A03', 'C05', 70);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(48, 'A04', 'C01', 70);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(47, 'A04', 'C02', 80);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(46, 'A04', 'C03', 50);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(45, 'A04', 'C04', 45);
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(44, 'A04', 'C05', 80);
/*!40000 ALTER TABLE `tb_rel_alternatif` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
