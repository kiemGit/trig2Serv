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


-- Dumping structure for table trs.rnewdetail
CREATE TABLE IF NOT EXISTS `rnewdetail_srv2` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RNewID` int(11) NOT NULL DEFAULT '0',
  `CustDetailID` int(11) NOT NULL DEFAULT '0',
  `CardNo` varchar(30) NOT NULL DEFAULT '',
  `CardCode` varchar(20) NOT NULL DEFAULT '',
  `RegNo` varchar(20) NOT NULL DEFAULT '',
  `UserName` varchar(45) NOT NULL DEFAULT '',
  `StartDate` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `EndDate` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `Rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `RNewID` (`RNewID`),
  KEY `CustDetailID` (`CustDetailID`)
) ENGINE=FEDERATED DEFAULT CHARSET=utf8 CONNECTION='mysql://hakim:sap123@192.168.0.19:3306/trs/rnewdetail';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
