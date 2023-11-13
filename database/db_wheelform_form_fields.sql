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
-- Table structure for table `wheelform_form_fields`
--

DROP TABLE IF EXISTS `wheelform_form_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheelform_form_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `required` tinyint NOT NULL DEFAULT '0',
  `index_view` tinyint NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ktwvidwmllksspmjclpniquofbrvmkkgzpeu` (`active`),
  KEY `fk_jfpdjgennettbdjnfxjowwbxjwioqchjxtlk` (`form_id`),
  CONSTRAINT `fk_jfpdjgennettbdjnfxjowwbxjwioqchjxtlk` FOREIGN KEY (`form_id`) REFERENCES `wheelform_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheelform_form_fields`
--

LOCK TABLES `wheelform_form_fields` WRITE;
/*!40000 ALTER TABLE `wheelform_form_fields` DISABLE KEYS */;
INSERT INTO `wheelform_form_fields` VALUES (1,1,'email','email',1,0,1,1,'{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"is_reply_to\":false,\"placeholder\":\"\",\"is_user_notification_field\":false,\"display_required_attribute\":false}','2023-10-29 14:13:20','2023-10-29 14:14:08','bd84c0da-837b-4890-9cf0-e0f821a646d9'),(2,1,'name','text',0,0,2,1,'{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"placeholder\":\"\",\"display_required_attribute\":false}','2023-10-29 14:13:20','2023-10-29 14:14:08','bb1ce8a9-fcf8-4145-8c44-9c5df2bc806e'),(3,1,'message','text',1,0,3,1,'{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"placeholder\":\"\",\"display_required_attribute\":false}','2023-10-29 14:13:20','2023-10-29 14:14:08','d9ca9d2f-c1af-4464-b6fc-b861dbe57ef4');
/*!40000 ALTER TABLE `wheelform_form_fields` ENABLE KEYS */;
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
