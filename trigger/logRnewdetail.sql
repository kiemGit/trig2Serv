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


-- Dumping structure for trigger trs.logInsert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `logRnewdetail` AFTER INSERT ON `rnewdetail` FOR EACH ROW BEGIN
  
  DECLARE countInserted INT;
  
  UPDATE trs.data_temp SET trs.data_temp.countInsert = trs.data_temp.countInsert+1 WHERE trs.data_temp.tableName = 'rnewdetail';
  
  SET countInserted = (SELECT checkCountInserted3('rnewdetail'));
  IF countInserted = 1 THEN
INSERT INTO rnewdetail_srv2 (ID,RNewID,CustDetailID,CardNo,CardCode,RegNo,UserName,StartDate,EndDate,Rate) 
    VALUES (NEW.ID,NEW.RNewID,NEW.CustDetailID,NEW.CardNo,NEW.CardCode,NEW.RegNo,NEW.UserName,NEW.StartDate,NEW.EndDate,NEW.Rate);
  END IF;
  
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
