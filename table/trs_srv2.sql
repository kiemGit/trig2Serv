-- MySQL dump 10.13  Distrib 5.5.32, for Win32 (x86)
--
-- Host: 192.168.0.19    Database: trs
-- ------------------------------------------------------
-- Server version	5.5.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trs_srv2`
--

DROP TABLE IF EXISTS `trs_srv2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trs_srv2` (
  `ID` bigint(20) NOT NULL,
  `RegNo` varchar(20) NOT NULL DEFAULT '',
  `ClassID` int(11) NOT NULL DEFAULT '0',
  `PosInID` int(11) NOT NULL DEFAULT '0',
  `PosOutID` int(11) NOT NULL DEFAULT '0',
  `CardNo` varchar(30) NOT NULL DEFAULT '',
  `IsCust` int(11) NOT NULL DEFAULT '0' COMMENT '0-No 1 -Yes',
  `TimeIn` datetime NOT NULL,
  `TimeOut` datetime DEFAULT NULL,
  `Rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `RateIn` decimal(10,2) NOT NULL DEFAULT '0.00',
  `RateOut` decimal(10,2) NOT NULL DEFAULT '0.00',
  `LostTicket` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Voucher` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ETollRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `CPS` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Valet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `RateLinkA` decimal(10,2) NOT NULL DEFAULT '0.00',
  `RateLinkB` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Insurance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Status` int(11) NOT NULL DEFAULT '0',
  `TrsType` int(11) NOT NULL DEFAULT '0',
  `VoidID` int(11) NOT NULL DEFAULT '0' COMMENT '0-No 1 - Yes',
  `Barcode` varchar(20) NOT NULL DEFAULT '',
  `UserIn` int(11) NOT NULL DEFAULT '0',
  `UserOut` int(11) NOT NULL DEFAULT '0',
  `ShiftInID` bigint(20) NOT NULL DEFAULT '0',
  `ShiftOutID` bigint(20) NOT NULL DEFAULT '0',
  `Remark` varchar(45) NOT NULL DEFAULT '',
  `SPosID` int(11) NOT NULL DEFAULT '0',
  `STime` datetime DEFAULT NULL,
  `SUserID` int(11) NOT NULL DEFAULT '0',
  `SShiftID` int(11) NOT NULL DEFAULT '0',
  `VPosID` int(11) NOT NULL DEFAULT '0' COMMENT 'Valet POS ID',
  `VTime` datetime DEFAULT NULL COMMENT 'Date Time Valet Transaction',
  `VUserID` int(11) NOT NULL DEFAULT '0' COMMENT 'Valet User ID',
  `VShiftID` int(11) NOT NULL DEFAULT '0',
  `CPosID` int(11) NOT NULL DEFAULT '0' COMMENT 'CPS POS ID',
  `CTime` datetime DEFAULT NULL COMMENT 'CPS Transaction Time',
  `CUserID` int(11) NOT NULL DEFAULT '0' COMMENT 'CPS UserID',
  `CShiftID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `ClassID` (`ClassID`),
  KEY `TimeIn` (`TimeIn`),
  KEY `TimeOut` (`TimeOut`),
  KEY `ShiftInID` (`ShiftInID`),
  KEY `ShiftOutID` (`ShiftOutID`),
  KEY `Status` (`Status`),
  KEY `CardNo` (`CardNo`),
  KEY `Barcode` (`Barcode`),
  KEY `RegNo` (`RegNo`),
  KEY `VoidID` (`VoidID`)
) ENGINE=FEDERATED DEFAULT CHARSET=utf8 CONNECTION='mysql://hakim:sap123@192.168.0.19:3306/trs/trs';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-14 11:40:38
