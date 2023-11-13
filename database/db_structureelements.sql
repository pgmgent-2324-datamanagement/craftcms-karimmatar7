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
-- Table structure for table `structureelements`
--

DROP TABLE IF EXISTS `structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `structureelements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structureId` int NOT NULL,
  `elementId` int DEFAULT NULL,
  `root` int unsigned DEFAULT NULL,
  `lft` int unsigned NOT NULL,
  `rgt` int unsigned NOT NULL,
  `level` smallint unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_wsoakvklzvtyyrwjltospibsgwgyjnvbcvtm` (`structureId`,`elementId`),
  KEY `idx_mjohfiosyngwpxajozrnimsptnfgvgzjbcsn` (`root`),
  KEY `idx_peyexpdfipmdzoeknqvzxkqonwlkbdpajgtt` (`lft`),
  KEY `idx_nwbvjjxrhbhatqgaexaxwwqasbpcybuspybd` (`rgt`),
  KEY `idx_tmiuvsotrvfjytyefxqhziebiuozsqpqvcgc` (`level`),
  KEY `idx_vtcssjrvejppnulktswinlgmdyuwiuocbyjd` (`elementId`),
  CONSTRAINT `fk_znwtwgnfcwunpypgepnixasjxbmxqrttjina` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structureelements`
--

LOCK TABLES `structureelements` WRITE;
/*!40000 ALTER TABLE `structureelements` DISABLE KEYS */;
INSERT INTO `structureelements` VALUES (1,1,NULL,1,1,10,0,'2023-10-26 08:08:05','2023-10-29 14:09:16','b21a4f17-85ce-4914-9d8d-186c1fa9dbdf'),(2,1,3,1,2,3,1,'2023-10-26 08:08:05','2023-10-26 08:08:05','c13fa3a5-b643-4e60-adeb-17124b67ce00'),(3,1,5,1,4,5,1,'2023-10-26 08:11:59','2023-10-26 08:11:59','d0151898-a4d5-4398-ad9d-8ba8f56fc241'),(4,1,9,1,6,7,1,'2023-10-26 08:15:37','2023-10-26 08:15:37','9262da29-f4c9-4a1c-bd60-45c8691f2f88'),(6,2,NULL,6,1,8,0,'2023-10-26 13:09:20','2023-10-26 13:09:55','47afbc1d-63ac-473f-afa8-479321f82e57'),(7,2,33,6,2,3,1,'2023-10-26 13:09:20','2023-10-26 13:09:20','cee7f5ac-7eab-4503-8f36-405cd5f04e24'),(8,2,34,6,4,5,1,'2023-10-26 13:09:46','2023-10-26 13:09:46','a8ed1cff-4187-4f6b-8722-b8e684c6f4ae'),(9,2,35,6,6,7,1,'2023-10-26 13:09:55','2023-10-26 13:09:55','57f71a0a-ef90-437f-b96e-c49edecdbd2b'),(10,1,80,1,8,9,1,'2023-10-29 14:09:16','2023-10-29 14:09:16','88be0fae-a0c9-4e36-ab42-bd3b914e3971');
/*!40000 ALTER TABLE `structureelements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:47
