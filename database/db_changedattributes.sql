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
-- Table structure for table `changedattributes`
--

DROP TABLE IF EXISTS `changedattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changedattributes` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  KEY `idx_ovmdptbsngqhtpfbpouhhtpjetpegwpnquoe` (`elementId`,`siteId`,`dateUpdated`),
  KEY `fk_ysvzzyvmoehsxjaphnigsbwkxkxybxoioqbf` (`siteId`),
  KEY `fk_exzxxcmcxjtfhyrsbcqakalqdizmfzyljsof` (`userId`),
  CONSTRAINT `fk_exzxxcmcxjtfhyrsbcqakalqdizmfzyljsof` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_nplpcjgmbkgndlzozzysepgngsmbvrkajyej` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ysvzzyvmoehsxjaphnigsbwkxkxybxoioqbf` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changedattributes`
--

LOCK TABLES `changedattributes` WRITE;
/*!40000 ALTER TABLE `changedattributes` DISABLE KEYS */;
INSERT INTO `changedattributes` VALUES (3,1,'postDate','2023-10-26 08:09:07',0,1),(3,1,'slug','2023-10-26 08:08:15',0,1),(3,1,'title','2023-10-26 09:58:56',0,1),(3,1,'uri','2023-10-26 08:08:15',0,1),(9,1,'postDate','2023-10-26 08:15:46',0,1),(9,1,'slug','2023-10-26 08:15:42',0,1),(9,1,'title','2023-10-26 08:15:42',0,1),(9,1,'uri','2023-10-26 08:15:42',0,1),(33,1,'slug','2023-10-26 13:09:40',0,1),(33,1,'title','2023-10-26 13:09:42',0,1),(33,1,'uri','2023-10-26 13:09:40',0,1),(34,1,'slug','2023-10-26 13:09:50',0,1),(34,1,'title','2023-10-26 13:09:50',0,1),(34,1,'uri','2023-10-26 13:09:50',0,1),(35,1,'slug','2023-10-26 13:09:58',0,1),(35,1,'title','2023-10-26 13:09:58',0,1),(35,1,'uri','2023-10-26 13:09:58',0,1),(36,1,'postDate','2023-10-26 13:14:34',0,1),(36,1,'slug','2023-10-26 13:10:38',0,1),(36,1,'title','2023-10-26 14:14:15',0,1),(36,1,'uri','2023-10-26 13:10:38',0,1),(40,1,'postDate','2023-10-26 13:48:32',0,1),(40,1,'slug','2023-10-26 13:48:23',0,1),(40,1,'title','2023-10-26 14:20:31',0,1),(40,1,'uri','2023-10-26 13:48:23',0,1),(52,1,'postDate','2023-10-26 14:15:40',0,1),(52,1,'slug','2023-10-26 14:14:47',0,1),(52,1,'title','2023-10-26 14:14:47',0,1),(52,1,'uri','2023-10-26 14:14:47',0,1),(58,1,'postDate','2023-10-26 14:21:14',0,1),(58,1,'slug','2023-10-26 14:20:40',0,1),(58,1,'title','2023-10-26 14:20:40',0,1),(58,1,'uri','2023-10-26 14:20:40',0,1),(61,1,'postDate','2023-10-26 14:23:27',0,1),(61,1,'slug','2023-10-26 14:22:11',0,1),(61,1,'title','2023-10-26 14:22:11',0,1),(61,1,'uri','2023-10-26 14:22:11',0,1),(64,1,'postDate','2023-10-26 14:24:34',0,1),(64,1,'slug','2023-10-26 14:24:04',0,1),(64,1,'title','2023-10-26 14:24:04',0,1),(64,1,'uri','2023-10-26 14:24:04',0,1),(67,1,'postDate','2023-10-26 14:25:19',0,1),(67,1,'slug','2023-10-26 14:24:43',0,1),(67,1,'title','2023-10-26 14:24:43',0,1),(67,1,'uri','2023-10-26 14:24:43',0,1),(70,1,'postDate','2023-10-26 14:26:04',0,1),(70,1,'slug','2023-10-26 14:25:28',0,1),(70,1,'title','2023-10-26 14:25:30',0,1),(70,1,'uri','2023-10-26 14:25:28',0,1),(73,1,'postDate','2023-10-26 14:30:31',0,1),(73,1,'slug','2023-10-26 14:29:55',0,1),(73,1,'title','2023-10-26 14:29:55',0,1),(73,1,'uri','2023-10-26 14:29:55',0,1),(80,1,'postDate','2023-10-29 14:09:54',0,1),(80,1,'slug','2023-10-29 14:09:20',0,1),(80,1,'title','2023-10-29 14:09:20',0,1),(80,1,'uri','2023-10-29 14:09:20',0,1);
/*!40000 ALTER TABLE `changedattributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:51
