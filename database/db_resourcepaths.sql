-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `resourcepaths`
--

DROP TABLE IF EXISTS `resourcepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcepaths`
--

LOCK TABLES `resourcepaths` WRITE;
/*!40000 ALTER TABLE `resourcepaths` DISABLE KEYS */;
INSERT INTO `resourcepaths` VALUES ('1121ea2f','@craft/web/assets/jquerypayment/dist'),('1172354d','@craft/web/assets/jquerytouchevents/dist'),('14b6e898','@craft/web/assets/velocity/dist'),('1bb36771','@craft/web/assets/feed/dist'),('24a65a35','@craft/web/assets/craftsupport/dist'),('26c28df1','@craft/web/assets/xregexp/dist'),('279be454','@craft/web/assets/jqueryui/dist'),('289c6baa','@craft/web/assets/elementresizedetector/dist'),('2d7a30f1','@craft/web/assets/picturefill/dist'),('2d7c7442','@bower/jquery/dist'),('358725c9','@spicyweb/quickfield/resources'),('39e032ff','@craft/web/assets/fileupload/dist'),('426f5e0f','@craft/web/assets/elementresizedetector/dist'),('47890554','@craft/web/assets/picturefill/dist'),('478f41e7','@bower/jquery/dist'),('4c31b854','@craft/web/assets/xregexp/dist'),('4d68d1f1','@craft/web/assets/jqueryui/dist'),('4e556f90','@craft/web/assets/craftsupport/dist'),('5313075a','@craft/web/assets/fileupload/dist'),('62f041ba','@craft/web/assets/dashboard/dist'),('714052d4','@craft/web/assets/feed/dist'),('7626c335','@craft/web/assets/htmx/dist'),('7b8100e8','@craft/web/assets/jquerytouchevents/dist'),('7bd2df8a','@craft/web/assets/jquerypayment/dist'),('7d3aa2d6','@craft/web/assets/matrixsettings/dist'),('7e45dd3d','@craft/web/assets/velocity/dist'),('803741f','@craft/web/assets/dashboard/dist'),('830aac3c','@craft/web/assets/updateswidget/dist'),('834153e4','@craft/web/assets/d3/dist'),('88205a53','@craft/web/assets/iframeresizer/dist'),('8e498f65','@craft/web/assets/fieldsettings/dist'),('900f45d0','@craft/web/assets/pluginstore/dist'),('91edd9eb','@craft/web/assets/garnish/dist'),('92296dc7','@craft/web/assets/tailwindreset/dist'),('953cd7e5','@craft/web/assets/selectize/dist'),('9630c3','@craft/web/assets/vue/dist'),('997475ad','@craft/web/assets/cp/dist'),('a5457b0b','@craft/web/assets/axios/dist'),('b473a80d','@craft/web/assets/updater/dist'),('b95feefc','@craft/web/assets/fabric/dist'),('bdb0ee52','@craft/web/assets/recententries/dist'),('be378606','@craft/web/assets/conditionbuilder/dist'),('c3864d67','@craft/web/assets/utilities/dist'),('cb5d991e','@craft/web/assets/matrix/dist'),('cec09c','@craft/web/assets/editsection/dist'),('cfb64eae','@craft/web/assets/axios/dist'),('d3acdb59','@craft/web/assets/fabric/dist'),('d743dbf7','@craft/web/assets/recententries/dist'),('e2d36ff6','@craft/web/assets/iframeresizer/dist'),('e4babac0','@craft/web/assets/fieldsettings/dist'),('e9b26641','@craft/web/assets/d3/dist'),('e9f99999','@craft/web/assets/updateswidget/dist'),('ea90afb1','@craft/web/assets/admintable/dist'),('f3874008','@craft/web/assets/cp/dist'),('f50d4b5e','@spicyweb/quickfield/resources'),('f8da5862','@craft/web/assets/tailwindreset/dist'),('fb1eec4e','@craft/web/assets/garnish/dist'),('ffcfe240','@craft/web/assets/selectize/dist');
/*!40000 ALTER TABLE `resourcepaths` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:48
