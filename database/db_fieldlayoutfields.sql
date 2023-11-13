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
-- Table structure for table `fieldlayoutfields`
--

DROP TABLE IF EXISTS `fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldlayoutfields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `layoutId` int NOT NULL,
  `tabId` int NOT NULL,
  `fieldId` int NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_amfylultujimievjsdjhvukcmhsriglnkqoa` (`layoutId`,`fieldId`),
  KEY `idx_rhoqibqxqtcpwuyhwbjfgrdieulrasqhtejp` (`sortOrder`),
  KEY `idx_hriyleidwubybncxrlvuntqybhuyqwynlfjy` (`tabId`),
  KEY `idx_akyetehiapvynbkhtqopuxyoclubotlalyfg` (`fieldId`),
  CONSTRAINT `fk_fnlwvmgaiiekfledlzzpdwexrtechgdsqoxo` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_hfnrhmfqdgedpiovhantazjdswpddaqndkhf` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_hvtonafntkrihulyhecyvctvetzptqyhzmic` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutfields`
--

LOCK TABLES `fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `fieldlayoutfields` DISABLE KEYS */;
INSERT INTO `fieldlayoutfields` VALUES (1,2,2,2,0,0,'2023-10-26 08:02:17','2023-10-26 08:02:17','664bdde2-440c-4973-807a-14c4e9dd6e9d'),(2,2,2,3,1,1,'2023-10-26 08:02:17','2023-10-26 08:02:17','8e21a0e1-2319-4fa6-b98e-c780321fc7da'),(3,1,3,1,0,0,'2023-10-26 08:02:25','2023-10-26 08:02:25','31edd5df-432e-4e53-9322-166414ff9810'),(7,4,8,5,0,2,'2023-10-26 09:31:19','2023-10-26 09:31:19','564e8f3d-21eb-4ffe-b6de-52ca932bc782'),(8,3,9,4,0,1,'2023-10-26 09:50:28','2023-10-26 09:50:28','be3f450c-6e35-4a73-b0ec-f9f11e865b03'),(9,3,9,5,0,2,'2023-10-26 09:50:28','2023-10-26 09:50:28','e4003521-c252-4fc1-b4d4-4c0a1dabbf53'),(10,3,9,6,0,3,'2023-10-26 09:50:28','2023-10-26 09:50:28','b489d6f8-4229-4612-a8a2-479abeb68098'),(28,6,17,4,0,1,'2023-10-26 13:51:46','2023-10-26 13:51:46','716af680-2204-4c12-8b03-3b1501e6ff5b'),(29,6,17,8,0,2,'2023-10-26 13:51:46','2023-10-26 13:51:46','36cbce37-8d35-498c-873f-7e9df96a60a4'),(30,6,17,7,0,3,'2023-10-26 13:51:46','2023-10-26 13:51:46','aba3b051-33fa-42b9-aa23-baccf66307e5'),(31,6,17,5,0,4,'2023-10-26 13:51:46','2023-10-26 13:51:46','cb8c5c07-643f-40ab-a2d7-87f3448361c0'),(32,5,18,4,0,1,'2023-10-29 18:15:08','2023-10-29 18:15:08','c2956c1a-5f0a-42b6-aff8-4768e9d8d192'),(33,5,18,5,0,2,'2023-10-29 18:15:08','2023-10-29 18:15:08','6180d33a-fb59-464c-937c-2411583eae14'),(34,5,18,7,0,3,'2023-10-29 18:15:08','2023-10-29 18:15:08','081393bf-71ea-4e97-bebd-535ea265ce57'),(35,5,18,8,0,4,'2023-10-29 18:15:08','2023-10-29 18:15:08','59283694-b7b9-47a6-8b64-63a990615555'),(36,5,18,9,0,5,'2023-10-29 18:15:08','2023-10-29 18:15:08','15b2556b-9ca3-4112-af3e-402f283388ea');
/*!40000 ALTER TABLE `fieldlayoutfields` ENABLE KEYS */;
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
