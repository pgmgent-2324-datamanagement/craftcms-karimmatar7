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
-- Table structure for table `wheelform_forms`
--

DROP TABLE IF EXISTS `wheelform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheelform_forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `send_email` tinyint NOT NULL DEFAULT '0',
  `recaptcha` tinyint NOT NULL DEFAULT '0',
  `save_entry` tinyint NOT NULL DEFAULT '1',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_ztwkaconadexkjatipsjpldebnwitoxffree` (`site_id`),
  CONSTRAINT `fk_ztwkaconadexkjatipsjpldebnwitoxffree` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheelform_forms`
--

LOCK TABLES `wheelform_forms` WRITE;
/*!40000 ALTER TABLE `wheelform_forms` DISABLE KEYS */;
INSERT INTO `wheelform_forms` VALUES (1,1,'Contact Form','user@example.com',1,1,0,1,'{\"honeypot\":\"\",\"honeypot_value\":\"\",\"email_subject\":\"\",\"user_notification\":0}','2023-10-29 14:13:20','2023-10-29 14:14:08','7dd4f78b-e673-4ba4-a3c3-fd628fdcf04f');
/*!40000 ALTER TABLE `wheelform_forms` ENABLE KEYS */;
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
