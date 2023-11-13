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
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `canonicalId` int NOT NULL,
  `creatorId` int DEFAULT NULL,
  `num` int NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_xmhdqviiuzdevucllvagepnobtdxcrsboyxn` (`canonicalId`,`num`),
  KEY `fk_pyfwjfvhvynunhfhnfmeqfftetuaxhafwgmj` (`creatorId`),
  CONSTRAINT `fk_btlkqthzisjvqtlbpbuxqqmvghggxtejszvf` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pyfwjfvhvynunhfhnfmeqfftetuaxhafwgmj` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,3,1,1,''),(2,3,1,2,''),(3,3,1,3,'Applied “Draft 1”'),(4,9,1,1,''),(5,3,1,4,''),(6,3,1,5,'Applied “Draft 1”'),(7,3,1,6,'Applied “Draft 1”'),(8,3,1,7,'Applied “Draft 1”'),(9,3,1,8,'Applied “Draft 1”'),(10,3,1,9,''),(11,3,1,10,''),(12,9,1,2,'Applied “Draft 1”'),(13,3,1,11,'Applied “Draft 1”'),(14,36,1,1,''),(15,36,1,2,''),(16,40,1,1,''),(17,36,1,3,'Applied “Draft 1”'),(18,36,1,4,''),(19,40,1,2,'Applied “Draft 1”'),(20,36,1,5,'Applied “Draft 1”'),(21,52,1,1,''),(22,40,1,3,'Applied “Draft 1”'),(23,58,1,1,''),(24,61,1,1,''),(25,64,1,1,''),(26,67,1,1,''),(27,70,1,1,''),(28,73,1,1,''),(29,3,1,12,'Applied “Draft 1”'),(30,40,1,4,'Applied “Draft 1”'),(31,80,1,1,''),(32,73,1,2,'Applied “Draft 1”'),(33,70,1,2,'Applied “Draft 1”'),(34,67,1,2,'Applied “Draft 1”'),(35,64,1,2,'Applied “Draft 1”'),(36,61,1,2,'Applied “Draft 1”'),(37,52,1,2,'Applied “Draft 1”'),(38,40,1,5,'Applied “Draft 1”'),(39,36,1,6,'Applied “Draft 1”');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:50
