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
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` int NOT NULL,
  `volumeId` int DEFAULT NULL,
  `folderId` int NOT NULL,
  `uploaderId` int DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pdubgdfxymcphuqfabplnnopsavxvykqpkwr` (`filename`,`folderId`),
  KEY `idx_fixccimgaqajnuqykhsbmgcycbifvacfvoib` (`folderId`),
  KEY `idx_wmmtmnnjxesmfwqxtllvztgzjlgbbihramzv` (`volumeId`),
  KEY `fk_rzcqnbqhoustqdaapeayrdsoxuhtzlksqkll` (`uploaderId`),
  CONSTRAINT `fk_hxjtzniwvkjutzmggmzpbcurfxmwfbyjjejv` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_khtindaazslwsairiedbrzzfsgndcfqhgghy` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_lvkqbnsmzvuradstmauzxokgfzrsushrejbs` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_rzcqnbqhoustqdaapeayrdsoxuhtzlksqkll` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (16,1,1,1,'378233798_1772485156541432_2900207488565928624_n.jpg','image',NULL,1536,2048,155176,NULL,NULL,NULL,'2023-10-26 09:22:18','2023-10-26 09:22:18','2023-10-26 09:22:18'),(23,1,1,1,'378233798_1772485156541432_2900207488565928624_n_2023-10-26-093016_gsqd.jpg','image',NULL,1536,2048,155176,NULL,NULL,NULL,'2023-10-26 09:30:16','2023-10-26 09:30:16','2023-10-26 09:30:16'),(42,1,1,1,'Smartschool_app_icon_orange.png','image',NULL,142,145,7013,NULL,NULL,NULL,'2023-10-26 13:55:06','2023-10-26 13:55:06','2023-10-26 13:55:06'),(46,1,1,1,'case.jpg','image',NULL,1205,1205,109776,NULL,NULL,NULL,'2023-10-26 14:11:18','2023-10-26 14:11:18','2023-10-26 14:11:18'),(50,1,1,1,'iphone-15.jpg','image',NULL,2000,2000,445278,NULL,NULL,NULL,'2023-10-26 14:12:37','2023-10-26 14:12:37','2023-10-26 14:12:37'),(53,1,1,1,'S23-ultra.jpg','image',NULL,1600,1600,214074,NULL,NULL,NULL,'2023-10-26 14:14:51','2023-10-26 14:14:51','2023-10-26 14:14:51'),(59,1,1,1,'ipad.jpg','image',NULL,5120,2880,706037,NULL,NULL,NULL,'2023-10-26 14:21:03','2023-10-26 14:21:03','2023-10-26 14:21:03'),(62,1,1,1,'acer.jpg','image',NULL,1600,1600,209958,NULL,NULL,NULL,'2023-10-26 14:22:52','2023-10-26 14:22:52','2023-10-26 14:22:52'),(65,1,1,1,'airpods.jpg','image',NULL,1144,1144,54596,NULL,NULL,NULL,'2023-10-26 14:23:59','2023-10-26 14:23:59','2023-10-26 14:23:59'),(68,1,1,1,'msi.jpg','image',NULL,1024,819,266733,NULL,NULL,NULL,'2023-10-26 14:25:05','2023-10-26 14:25:05','2023-10-26 14:25:05'),(71,1,1,1,'airtag.jpg','image',NULL,2000,2000,135748,NULL,NULL,NULL,'2023-10-26 14:25:53','2023-10-26 14:25:53','2023-10-26 14:25:53'),(74,1,1,1,'macbook.jpg','image',NULL,1200,630,125356,NULL,NULL,NULL,'2023-10-26 14:30:22','2023-10-26 14:30:22','2023-10-26 14:30:22');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
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
