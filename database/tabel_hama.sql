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
  `id_hama` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT '',
  `deskripsi` text,
  `foto` text,
  `cara_penanganan` text,
  PRIMARY KEY (`id_hama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_smart.tbl_hama: ~1 rows (approximately)
/*!40000 ALTER TABLE `tbl_hama` DISABLE KEYS */;
INSERT INTO `tbl_hama` (`id_hama`, `nama`, `deskripsi`, `foto`, `cara_penanganan`) VALUES
	(1, 'tomat', 'ini tomat', 'asdasda.png', 'cara nya adalah');
/*!40000 ALTER TABLE `tbl_hama` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
