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
-- Table structure for table `changedfields`
--

DROP TABLE IF EXISTS `changedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changedfields` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `fieldId` int NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  KEY `idx_lgyaqgiekfstypuecvdlwsifsulhkaqvxnil` (`elementId`,`siteId`,`dateUpdated`),
  KEY `fk_ngnarvsbdwioplmrdsotuhmtsxpttzexxtwo` (`siteId`),
  KEY `fk_vxmipuufxewylcgocktuoqrsmptvhsgrhawa` (`fieldId`),
  KEY `fk_lzbqdyxsahvyxlobpxsrskinjzfhgrqenahz` (`userId`),
  CONSTRAINT `fk_jftcgmhuyliebbzjdfmqceanqmfmsguyiepw` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lzbqdyxsahvyxlobpxsrskinjzfhgrqenahz` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_ngnarvsbdwioplmrdsotuhmtsxpttzexxtwo` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vxmipuufxewylcgocktuoqrsmptvhsgrhawa` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changedfields`
--

LOCK TABLES `changedfields` WRITE;
/*!40000 ALTER TABLE `changedfields` DISABLE KEYS */;
INSERT INTO `changedfields` VALUES (3,1,4,'2023-10-26 14:58:08',0,1),(3,1,5,'2023-10-26 09:30:18',0,1),(3,1,6,'2023-10-26 09:50:35',0,1),(9,1,4,'2023-10-26 08:15:45',0,1),(9,1,6,'2023-10-26 09:50:41',0,1),(36,1,4,'2023-10-26 14:14:15',0,1),(36,1,5,'2023-10-26 14:14:15',0,1),(36,1,7,'2023-10-26 14:14:15',0,1),(36,1,8,'2023-10-26 13:14:16',0,1),(36,1,9,'2023-10-29 18:16:13',0,1),(40,1,4,'2023-10-26 14:12:14',0,1),(40,1,5,'2023-10-26 14:12:14',0,1),(40,1,7,'2023-10-26 15:12:36',0,1),(40,1,8,'2023-10-26 13:48:31',0,1),(40,1,9,'2023-10-29 18:16:07',0,1),(52,1,4,'2023-10-26 14:15:39',0,1),(52,1,5,'2023-10-26 14:14:51',0,1),(52,1,7,'2023-10-26 14:15:02',0,1),(52,1,8,'2023-10-26 14:15:06',0,1),(52,1,9,'2023-10-29 18:15:59',0,1),(58,1,4,'2023-10-26 14:20:55',0,1),(58,1,5,'2023-10-26 14:21:04',0,1),(58,1,7,'2023-10-26 14:21:09',0,1),(58,1,8,'2023-10-26 14:21:13',0,1),(61,1,4,'2023-10-26 14:22:48',0,1),(61,1,5,'2023-10-26 14:22:53',0,1),(61,1,7,'2023-10-26 14:23:20',0,1),(61,1,8,'2023-10-26 14:23:27',0,1),(61,1,9,'2023-10-29 18:15:51',0,1),(64,1,4,'2023-10-26 14:24:31',0,1),(64,1,5,'2023-10-26 14:24:00',0,1),(64,1,7,'2023-10-26 14:24:10',0,1),(64,1,8,'2023-10-26 14:24:13',0,1),(64,1,9,'2023-10-29 18:15:42',0,1),(67,1,4,'2023-10-26 14:24:59',0,1),(67,1,5,'2023-10-26 14:25:06',0,1),(67,1,7,'2023-10-26 14:25:13',0,1),(67,1,8,'2023-10-26 14:25:18',0,1),(67,1,9,'2023-10-29 18:15:36',0,1),(70,1,4,'2023-10-26 14:25:48',0,1),(70,1,5,'2023-10-26 14:25:54',0,1),(70,1,7,'2023-10-26 14:25:59',0,1),(70,1,8,'2023-10-26 14:26:02',0,1),(70,1,9,'2023-10-29 18:15:30',0,1),(73,1,4,'2023-10-26 14:30:16',0,1),(73,1,5,'2023-10-26 14:30:23',0,1),(73,1,7,'2023-10-26 14:30:27',0,1),(73,1,8,'2023-10-26 14:30:30',0,1),(73,1,9,'2023-10-29 18:15:23',0,1),(80,1,6,'2023-10-29 14:09:54',0,1);
/*!40000 ALTER TABLE `changedfields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:52
