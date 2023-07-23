-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.33 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk db_smart
CREATE DATABASE IF NOT EXISTS `db_smart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_smart`;

-- membuang struktur untuk table db_smart.tbl_hama
CREATE TABLE IF NOT EXISTS `tbl_hama` (
  `id_hama` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT '',
  `deskripsi` text,
  `foto` text,
  `cara_penanganan` text,
  PRIMARY KEY (`id_hama`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_smart.tbl_hama: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `tbl_hama` DISABLE KEYS */;
INSERT INTO `tbl_hama` (`id_hama`, `nama`, `deskripsi`, `foto`, `cara_penanganan`) VALUES
	(1, 'tomati', 'ini tomatnya', 'no-image-available.png', 'cara nya adalah'),
	(2, 'coba 1', 'des hama', 'Desert.jpg', 'cara penanganan'),
	(3, 'tes tambah hama', 'dskripsi hama', 'hama.png', 'caranya'),
	(4, 'tesssya', 'tesssya', 'ubah kriteria.png', 'tesssya');
/*!40000 ALTER TABLE `tbl_hama` ENABLE KEYS */;

-- membuang struktur untuk table db_smart.tb_admin
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_smart.tb_admin: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` (`user`, `pass`, `level`) VALUES
	('admin', 'aji', 'admin'),
	('pimpinan', 'pimpinan', 'pimpinan');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;

-- membuang struktur untuk table db_smart.tb_alternatif
CREATE TABLE IF NOT EXISTS `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`kode_alternatif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_smart.tb_alternatif: 4 rows
/*!40000 ALTER TABLE `tb_alternatif` DISABLE KEYS */;
INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `rank`, `total`) VALUES
	('A01', 'Alternatif 2', 1, 55.385964912281),
	('A02', 'Alternatif 2', 2, 54.157894736842),
	('A03', 'Alternatif 3', 3, 78.846153846154),
	('A04', 'Alternatif 4', 2, 46.614035087719);
/*!40000 ALTER TABLE `tb_alternatif` ENABLE KEYS */;

-- membuang struktur untuk table db_smart.tb_kriteria
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

-- Membuang data untuk tabel db_smart.tb_kriteria: 10 rows
/*!40000 ALTER TABLE `tb_kriteria` DISABLE KEYS */;
INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `kondisi_buah`, `warna_kulit`, `warna_daging`, `kondisi_pohon`, `kondisi_tanah`, `bobot`) VALUES
	('C01', 'Kriteria 1', NULL, NULL, NULL, NULL, NULL, 100),
	('C02', 'Kriteria 2', NULL, NULL, NULL, NULL, NULL, 80),
	('C03', 'Kriteria 3', NULL, NULL, NULL, NULL, NULL, 90),
	('C04', 'Kriteria 4', NULL, NULL, NULL, NULL, NULL, 50),
	('C05', 'Kriteria 5', NULL, NULL, NULL, NULL, NULL, 70),
	('C06', 'dasfa', NULL, NULL, NULL, NULL, NULL, 20),
	('C07', 'sfds', NULL, NULL, NULL, NULL, NULL, 0),
	('C08', 'sdfsf', 'busuk', NULL, NULL, NULL, NULL, 40),
	('C09', 'Aldi', 'buruk', NULL, NULL, NULL, NULL, 40),
	('C10', 'jeruk', 'bagus', 'kuning', 'kuning', 'tidak bagus', 'bagus', 80);
/*!40000 ALTER TABLE `tb_kriteria` ENABLE KEYS */;

-- membuang struktur untuk table db_smart.tb_rel_alternatif
CREATE TABLE IF NOT EXISTS `tb_rel_alternatif` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kode_alternatif` varchar(16) DEFAULT NULL,
  `kode_kriteria` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_smart.tb_rel_alternatif: 40 rows
/*!40000 ALTER TABLE `tb_rel_alternatif` DISABLE KEYS */;
INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
	(1, 'A01', 'C01', 75),
	(2, 'A01', 'C02', 100),
	(3, 'A01', 'C03', 80),
	(4, 'A01', 'C04', 90),
	(5, 'A01', 'C05', 65),
	(6, 'A02', 'C01', 90),
	(7, 'A02', 'C02', 100),
	(8, 'A02', 'C03', 60),
	(9, 'A02', 'C04', 75),
	(10, 'A02', 'C05', 70),
	(11, 'A03', 'C01', 80),
	(12, 'A03', 'C02', 90),
	(13, 'A03', 'C03', 85),
	(14, 'A03', 'C04', 60),
	(15, 'A03', 'C05', 70),
	(48, 'A04', 'C01', 80),
	(47, 'A04', 'C02', 80),
	(46, 'A04', 'C03', 50),
	(45, 'A04', 'C04', 45),
	(44, 'A04', 'C05', 80),
	(60, 'A04', 'C06', -1),
	(59, 'A03', 'C06', -1),
	(58, 'A02', 'C06', -1),
	(57, 'A01', 'C06', -1),
	(61, 'A01', 'C07', -1),
	(62, 'A02', 'C07', -1),
	(63, 'A03', 'C07', -1),
	(64, 'A04', 'C07', -1),
	(65, 'A01', 'C08', -1),
	(66, 'A02', 'C08', -1),
	(67, 'A03', 'C08', -1),
	(68, 'A04', 'C08', -1),
	(69, 'A01', 'C09', -1),
	(70, 'A02', 'C09', -1),
	(71, 'A03', 'C09', -1),
	(72, 'A04', 'C09', -1),
	(150, 'A04', 'C10', -1),
	(149, 'A03', 'C10', -1),
	(148, 'A02', 'C10', -1),
	(147, 'A01', 'C10', -1);
/*!40000 ALTER TABLE `tb_rel_alternatif` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
