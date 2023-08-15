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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER logInsert AFTER INSERT ON trs 

FOR EACH ROW
BEGIN
  
  DECLARE countInserted INT;
  
  UPDATE trs.data_temp SET trs.data_temp.countInsert = trs.data_temp.countInsert+1 WHERE trs.data_temp.tableName = 'trs';
  
  SET countInserted = (SELECT checkCountInserted3('trs'));
  IF countInserted = 1 THEN
INSERT INTO trs_srv2 (ID,RegNo,ClassID,PosInID,PosOutID,CardNo,IsCust,TimeIn,TimeOut,Rate,RateIn,RateOut,LostTicket,Voucher,ETollRate,CPS,Valet,SRate,RateLinkA,RateLinkB,Insurance,Status,TrsType,VoidID,Barcode,UserIn,UserOut,ShiftInID,ShiftOutID,Remark,SPosID,STime,SUserID,SShiftID,VPosID,VTime,VUserID,VShiftID,CPosID,CTime,CUserID,CShiftID) 
    VALUES (NEW.ID,NEW.RegNo,NEW.ClassID,NEW.PosInID,NEW.PosOutID,NEW.CardNo,NEW.IsCust,NEW.TimeIn,NEW.TimeOut,NEW.Rate,NEW.RateIn,NEW.RateOut,NEW.LostTicket,NEW.Voucher,NEW.ETollRate,NEW.CPS,NEW.Valet,NEW.SRate,NEW.RateLinkA,NEW.RateLinkB,NEW.Insurance,NEW.Status,NEW.TrsType,NEW.VoidID,NEW.Barcode,NEW.UserIn,NEW.UserOut,NEW.ShiftInID,NEW.ShiftOutID,NEW.Remark,NEW.SPosID,NEW.STime,NEW.SUserID,NEW.SShiftID,NEW.VPosID,NEW.VTime,NEW.VUserID,NEW.VShiftID,NEW.CPosID,NEW.CTime,NEW.CUserID,NEW.CShiftID);
  END IF;
  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'trs'
--
/*!50003 DROP FUNCTION IF EXISTS `checkCountInserted3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkCountInserted3`(tableName VARCHAR(27)) RETURNS int(20)
BEGIN

   DECLARE countInserted INT(2);
   DECLARE success INT(2);
   
   SET countInserted = (SELECT trs.data_temp.countInsert FROM trs.data_temp WHERE trs.data_temp.tableName = tableName);
   
   IF countInserted = 5 THEN
      SET success = 1;
      UPDATE trs.data_temp SET trs.data_temp.countInsert = trs.data_temp.countInsert-5 WHERE trs.data_temp.tableName = tableName;
   ELSE
      SET success = 0;
      
   END IF;
   
   RETURN success;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-14 10:31:53
