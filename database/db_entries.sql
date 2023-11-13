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
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entries` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `authorId` int DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iqfmfrwsrwzwtlhyybpgmljgmnjksjyeewny` (`postDate`),
  KEY `idx_waiuvyknmcwuvjifdvqvhdscafdzxmrkvcpe` (`expiryDate`),
  KEY `idx_asfnatxszozcqcqihcqujgvprtbsoqlnuhzv` (`authorId`),
  KEY `idx_nsvxzyynkzeywqrebxrcdomnbybrgtocimtc` (`sectionId`),
  KEY `idx_fisofrokwknjhfrufkvaecutbssctzqiknde` (`typeId`),
  KEY `fk_tclhmkfogszdqhgnbbqtwicqpyrclzvoqyre` (`parentId`),
  CONSTRAINT `fk_arffqxpbymkkcfochlyoligafifefelxacda` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gjwxxjclrnfdtydnvfwfxukhobabmpwbgrbd` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qhlenknaitkxroweflqimaofvatoolwyrkyx` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_tclhmkfogszdqhgnbbqtwicqpyrclzvoqyre` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_viotmohnoulzywbathjqhcdbgudbdoospzgn` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (3,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:08:05','2023-10-26 08:09:07'),(4,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:09:07','2023-10-26 08:09:07'),(5,1,NULL,1,1,'2023-10-26 08:11:59',NULL,NULL,'2023-10-26 08:11:59','2023-10-26 08:11:59'),(6,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:12:40','2023-10-26 08:12:40'),(8,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:15:35','2023-10-26 08:15:35'),(9,1,NULL,1,1,'2023-10-26 08:15:00',NULL,NULL,'2023-10-26 08:15:37','2023-10-26 08:15:46'),(10,1,NULL,1,1,'2023-10-26 08:15:00',NULL,NULL,'2023-10-26 08:15:46','2023-10-26 08:15:46'),(13,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:02:13','2023-10-26 09:02:13'),(18,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:22:35','2023-10-26 09:22:35'),(20,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:22:59','2023-10-26 09:22:59'),(22,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:28:30','2023-10-26 09:28:30'),(25,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:30:18','2023-10-26 09:30:18'),(26,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:48:34','2023-10-26 09:48:34'),(27,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:50:35','2023-10-26 09:50:35'),(29,1,NULL,1,1,'2023-10-26 08:15:00',NULL,NULL,'2023-10-26 09:50:41','2023-10-26 09:50:41'),(31,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:58:56','2023-10-26 09:58:56'),(32,2,NULL,2,1,'2023-10-26 13:01:49',NULL,NULL,'2023-10-26 13:01:49','2023-10-26 13:01:49'),(36,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:10:33','2023-10-26 13:14:34'),(37,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:14:34','2023-10-26 13:14:34'),(38,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:30:17','2023-10-26 13:30:17'),(39,2,NULL,2,1,'2023-10-26 13:48:09',NULL,NULL,'2023-10-26 13:48:09','2023-10-26 13:48:09'),(40,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 13:48:16','2023-10-26 13:48:32'),(41,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 13:48:32','2023-10-26 13:48:32'),(44,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:55:12','2023-10-26 13:55:12'),(45,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:55:46','2023-10-26 13:55:46'),(48,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 14:12:14','2023-10-26 14:12:14'),(51,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 14:14:15','2023-10-26 14:14:15'),(52,2,NULL,2,1,'2023-10-26 14:15:00',NULL,NULL,'2023-10-26 14:14:38','2023-10-26 14:15:40'),(54,2,NULL,2,1,'2023-10-26 14:15:00',NULL,NULL,'2023-10-26 14:15:40','2023-10-26 14:15:40'),(55,2,NULL,2,1,'2023-10-26 14:19:46',NULL,NULL,'2023-10-26 14:19:46','2023-10-26 14:19:46'),(57,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 14:20:31','2023-10-26 14:20:31'),(58,2,NULL,2,1,'2023-10-26 14:21:00',NULL,NULL,'2023-10-26 14:20:33','2023-10-26 14:21:14'),(60,2,NULL,2,1,'2023-10-26 14:21:00',NULL,NULL,'2023-10-26 14:21:14','2023-10-26 14:21:14'),(61,2,NULL,2,1,'2023-10-26 14:23:00',NULL,NULL,'2023-10-26 14:22:05','2023-10-26 14:23:27'),(63,2,NULL,2,1,'2023-10-26 14:23:00',NULL,NULL,'2023-10-26 14:23:27','2023-10-26 14:23:27'),(64,2,NULL,2,1,'2023-10-26 14:24:00',NULL,NULL,'2023-10-26 14:23:49','2023-10-26 14:24:34'),(66,2,NULL,2,1,'2023-10-26 14:24:00',NULL,NULL,'2023-10-26 14:24:34','2023-10-26 14:24:34'),(67,2,NULL,2,1,'2023-10-26 14:25:00',NULL,NULL,'2023-10-26 14:24:37','2023-10-26 14:25:19'),(69,2,NULL,2,1,'2023-10-26 14:25:00',NULL,NULL,'2023-10-26 14:25:19','2023-10-26 14:25:19'),(70,2,NULL,2,1,'2023-10-26 14:26:00',NULL,NULL,'2023-10-26 14:25:21','2023-10-26 14:26:04'),(72,2,NULL,2,1,'2023-10-26 14:26:00',NULL,NULL,'2023-10-26 14:26:04','2023-10-26 14:26:04'),(73,2,NULL,2,1,'2023-10-26 14:30:00',NULL,NULL,'2023-10-26 14:29:51','2023-10-26 14:30:31'),(75,2,NULL,2,1,'2023-10-26 14:30:00',NULL,NULL,'2023-10-26 14:30:31','2023-10-26 14:30:31'),(77,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 14:58:08','2023-10-26 14:58:08'),(79,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 15:12:36','2023-10-26 15:12:36'),(80,1,NULL,1,1,'2023-10-29 14:09:00',NULL,NULL,'2023-10-29 14:09:16','2023-10-29 14:09:54'),(81,1,NULL,1,1,'2023-10-29 14:09:00',NULL,NULL,'2023-10-29 14:09:54','2023-10-29 14:09:54'),(83,2,NULL,2,1,'2023-10-26 14:30:00',NULL,NULL,'2023-10-29 18:15:23','2023-10-29 18:15:23'),(85,2,NULL,2,1,'2023-10-26 14:26:00',NULL,NULL,'2023-10-29 18:15:30','2023-10-29 18:15:30'),(87,2,NULL,2,1,'2023-10-26 14:25:00',NULL,NULL,'2023-10-29 18:15:36','2023-10-29 18:15:36'),(89,2,NULL,2,1,'2023-10-26 14:24:00',NULL,NULL,'2023-10-29 18:15:42','2023-10-29 18:15:42'),(91,2,NULL,2,1,'2023-10-26 14:23:00',NULL,NULL,'2023-10-29 18:15:51','2023-10-29 18:15:51'),(93,2,NULL,2,1,'2023-10-26 14:15:00',NULL,NULL,'2023-10-29 18:15:59','2023-10-29 18:15:59'),(95,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-29 18:16:07','2023-10-29 18:16:07'),(97,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-29 18:16:13','2023-10-29 18:16:13');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
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
