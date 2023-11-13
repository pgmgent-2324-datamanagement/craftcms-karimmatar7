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
-- Table structure for table `wheelform_message_values`
--

DROP TABLE IF EXISTS `wheelform_message_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheelform_message_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_id` int NOT NULL,
  `field_id` int NOT NULL,
  `value` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_limwyeuardjgeacxzknrwlvnblitoaeatnhe` (`message_id`),
  KEY `fk_tfhvovsgjlneunmgfatjhqiduavgqdakicnd` (`field_id`),
  CONSTRAINT `fk_limwyeuardjgeacxzknrwlvnblitoaeatnhe` FOREIGN KEY (`message_id`) REFERENCES `wheelform_messages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_tfhvovsgjlneunmgfatjhqiduavgqdakicnd` FOREIGN KEY (`field_id`) REFERENCES `wheelform_form_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheelform_message_values`
--

LOCK TABLES `wheelform_message_values` WRITE;
/*!40000 ALTER TABLE `wheelform_message_values` DISABLE KEYS */;
INSERT INTO `wheelform_message_values` VALUES (16,6,1,'karim.matar7@hotmail.com','2023-11-11 16:51:32','2023-11-11 16:51:32','faf519e1-ad43-460b-977f-72d2d71ce7ff'),(17,6,2,'Karim ','2023-11-11 16:51:32','2023-11-11 16:51:32','e4fe97bd-be90-41c4-86a2-462f7f2af5b1'),(18,6,3,'HELLO','2023-11-11 16:51:32','2023-11-11 16:51:32','c5544d46-5308-45f4-9b19-92cf730bf7ef'),(19,7,1,'karim@gmail.com','2023-11-11 17:10:41','2023-11-11 17:10:41','58161af8-e5d6-4c42-b351-8516f35a85b8'),(20,7,2,'Karim Matar student','2023-11-11 17:10:41','2023-11-11 17:10:41','28e082e0-3e52-43b9-a122-8d9092340b3b'),(21,7,3,'Hello this works properly','2023-11-11 17:10:41','2023-11-11 17:10:41','00ec7f5f-bda3-4255-bb07-89cbedc99e55');
/*!40000 ALTER TABLE `wheelform_message_values` ENABLE KEYS */;
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
