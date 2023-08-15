-- --------------------------------------------------------
-- Host:                         192.168.0.19
-- Server version:               5.5.32 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for trs
CREATE DATABASE IF NOT EXISTS `trs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `trs`;


-- Dumping structure for table trs.trscps
CREATE TABLE IF NOT EXISTS `trscps_srv2` (
  `ID` bigint(20) NOT NULL,
  `TrsID` bigint(20) NOT NULL DEFAULT '0',
  `TrsCpsDate` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `RegNo` varchar(20) NOT NULL DEFAULT '',
  `TimeOut` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `ShiftCpsID` int(11) NOT NULL DEFAULT '0',
  `CpsID` int(11) NOT NULL DEFAULT '0',
  `ClassID` int(11) NOT NULL DEFAULT '0',
  `Payment` decimal(12,2) NOT NULL DEFAULT '0.00',
  `UserID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `TrsID` (`TrsID`),
  KEY `TrsCpsDate` (`TrsCpsDate`),
  KEY `ShiftCpsID` (`ShiftCpsID`),
  KEY `CpsID` (`CpsID`),
  KEY `ClassID` (`ClassID`),
  KEY `UserID` (`UserID`)
) ENGINE=FEDERATED DEFAULT CHARSET=utf8 CONNECTION='mysql://hakim:sap123@192.168.0.19:3306/trs/trscps';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
