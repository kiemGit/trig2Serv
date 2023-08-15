-- --------------------------------------------------------
-- Host:                         192.168.0.22
-- Server version:               5.5.68-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for trs
CREATE DATABASE IF NOT EXISTS `trs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `trs`;


-- Dumping structure for table trs.data_temp
CREATE TABLE IF NOT EXISTS `data_temp` (
  `tableName` varchar(123) DEFAULT NULL,
  `countInsert` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table trs.data_temp: ~4 rows (approximately)
/*!40000 ALTER TABLE `data_temp` DISABLE KEYS */;
INSERT INTO `data_temp` (`tableName`, `countInsert`) VALUES
	('trs', 2),
	('trscps', 0),
	('regdetail', 1),
	('rnewdetail', 1);
/*!40000 ALTER TABLE `data_temp` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
