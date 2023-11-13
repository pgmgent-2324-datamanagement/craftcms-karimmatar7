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
-- Table structure for table `imagetransformindex`
--

DROP TABLE IF EXISTS `imagetransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagetransformindex` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assetId` int NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_qzwvtjbqieiogwitkkiyjnsrtwnxcgtsxcyv` (`assetId`,`transformString`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagetransformindex`
--

LOCK TABLES `imagetransformindex` WRITE;
/*!40000 ALTER TABLE `imagetransformindex` DISABLE KEYS */;
INSERT INTO `imagetransformindex` VALUES (1,16,'craft\\imagetransforms\\ImageTransformer','378233798_1772485156541432_2900207488565928624_n.jpg',NULL,'_25x34_crop_center-center_none',1,0,0,'2023-10-26 09:22:19','2023-10-26 09:22:19','2023-10-26 09:22:19','6cc5d5a5-5234-4e94-ab71-23d04723b200'),(2,16,'craft\\imagetransforms\\ImageTransformer','378233798_1772485156541432_2900207488565928624_n.jpg',NULL,'_51x68_crop_center-center_none',1,0,0,'2023-10-26 09:22:19','2023-10-26 09:22:19','2023-10-26 09:22:37','98f823d8-81f6-4c68-8846-a646ced4dfe2'),(3,23,'craft\\imagetransforms\\ImageTransformer','378233798_1772485156541432_2900207488565928624_n_2023-10-26-093016_gsqd.jpg',NULL,'_25x34_crop_center-center_none',1,0,0,'2023-10-26 09:30:16','2023-10-26 09:30:16','2023-10-26 09:30:17','8d3ef076-7531-463b-9849-19acde47a1df'),(4,23,'craft\\imagetransforms\\ImageTransformer','378233798_1772485156541432_2900207488565928624_n_2023-10-26-093016_gsqd.jpg',NULL,'_51x68_crop_center-center_none',1,0,0,'2023-10-26 09:30:16','2023-10-26 09:30:16','2023-10-26 09:30:18','3ba2ef93-12a1-41ca-bc45-973fb8c6845c'),(5,42,'craft\\imagetransforms\\ImageTransformer','Smartschool_app_icon_orange.png',NULL,'_33x34_crop_center-center_none',1,0,0,'2023-10-26 13:55:06','2023-10-26 13:55:06','2023-10-26 13:55:06','1fb0a86f-e988-4b21-8b53-2654d38c0e28'),(6,42,'craft\\imagetransforms\\ImageTransformer','Smartschool_app_icon_orange.png',NULL,'_66x68_crop_center-center_none',1,0,0,'2023-10-26 13:55:06','2023-10-26 13:55:06','2023-10-26 13:55:06','eeef25a7-8489-4c1b-bb99-eec330a21028'),(7,46,'craft\\imagetransforms\\ImageTransformer','case.jpg',NULL,'_34x34_crop_center-center_none',1,0,0,'2023-10-26 14:11:18','2023-10-26 14:11:18','2023-10-26 14:11:18','3885d2f9-8a4a-479b-a3e9-dddfd2a467ca'),(8,46,'craft\\imagetransforms\\ImageTransformer','case.jpg',NULL,'_68x68_crop_center-center_none',1,0,0,'2023-10-26 14:11:18','2023-10-26 14:11:18','2023-10-26 14:11:18','2d4a0206-2779-461f-9e99-a48387fbca67'),(9,50,'craft\\imagetransforms\\ImageTransformer','iphone-15.jpg',NULL,'_34x34_crop_center-center_none',1,0,0,'2023-10-26 14:12:37','2023-10-26 14:12:37','2023-10-26 14:12:37','50c14edf-1e3b-4a2c-ab0f-56c68b5a3c7b'),(10,50,'craft\\imagetransforms\\ImageTransformer','iphone-15.jpg',NULL,'_68x68_crop_center-center_none',1,0,0,'2023-10-26 14:12:37','2023-10-26 14:12:37','2023-10-26 14:12:37','35e72c67-1471-4bea-9a47-d7a4b3baefc8'),(11,53,'craft\\imagetransforms\\ImageTransformer','S23-ultra.jpg',NULL,'_34x34_crop_center-center_none',1,0,0,'2023-10-26 14:14:51','2023-10-26 14:14:51','2023-10-26 14:14:51','a2e67ffe-ed00-4281-81bb-1af693439e3e'),(12,53,'craft\\imagetransforms\\ImageTransformer','S23-ultra.jpg',NULL,'_68x68_crop_center-center_none',1,0,0,'2023-10-26 14:14:51','2023-10-26 14:14:51','2023-10-26 14:14:51','b57f50b3-7da4-4a5b-b30c-de9bbb57c79b'),(13,59,'craft\\imagetransforms\\ImageTransformer','ipad.jpg',NULL,'_34x19_crop_center-center_none',1,0,0,'2023-10-26 14:21:03','2023-10-26 14:21:03','2023-10-26 14:21:03','689b74f8-130c-42e3-a426-61ccff052b03'),(14,59,'craft\\imagetransforms\\ImageTransformer','ipad.jpg',NULL,'_68x38_crop_center-center_none',1,0,0,'2023-10-26 14:21:03','2023-10-26 14:21:03','2023-10-26 14:21:03','2b10c3b5-a1c6-43a6-a2b8-b2ae8e0ca791'),(15,62,'craft\\imagetransforms\\ImageTransformer','acer.jpg',NULL,'_34x34_crop_center-center_none',1,0,0,'2023-10-26 14:22:52','2023-10-26 14:22:52','2023-10-26 14:22:52','0049fa0d-a689-4902-b636-9ba7382642dc'),(16,62,'craft\\imagetransforms\\ImageTransformer','acer.jpg',NULL,'_68x68_crop_center-center_none',1,0,0,'2023-10-26 14:22:52','2023-10-26 14:22:52','2023-10-26 14:22:52','309585df-fe48-46e2-9910-b6f1fd9f0d15'),(17,65,'craft\\imagetransforms\\ImageTransformer','airpods.jpg',NULL,'_34x34_crop_center-center_none',1,0,0,'2023-10-26 14:23:59','2023-10-26 14:23:59','2023-10-26 14:23:59','cc8f534a-ca89-4d37-b953-342e618d0231'),(18,65,'craft\\imagetransforms\\ImageTransformer','airpods.jpg',NULL,'_68x68_crop_center-center_none',1,0,0,'2023-10-26 14:23:59','2023-10-26 14:23:59','2023-10-26 14:23:59','c67b74cc-5ba9-4f88-b9e9-4f4ecda30d08'),(19,68,'craft\\imagetransforms\\ImageTransformer','msi.jpg',NULL,'_34x27_crop_center-center_none',1,0,0,'2023-10-26 14:25:05','2023-10-26 14:25:05','2023-10-26 14:25:05','c13a409c-b04f-40d4-9b19-0580bd5cc581'),(20,68,'craft\\imagetransforms\\ImageTransformer','msi.jpg',NULL,'_68x54_crop_center-center_none',1,0,0,'2023-10-26 14:25:05','2023-10-26 14:25:05','2023-10-26 14:25:05','4473d2dd-ff9a-4eb6-8e13-a777e2918943'),(21,71,'craft\\imagetransforms\\ImageTransformer','airtag.jpg',NULL,'_34x34_crop_center-center_none',1,0,0,'2023-10-26 14:25:53','2023-10-26 14:25:53','2023-10-26 14:25:53','90a5942d-fee7-4af8-bcf8-e14c82e3319f'),(22,71,'craft\\imagetransforms\\ImageTransformer','airtag.jpg',NULL,'_68x68_crop_center-center_none',1,0,0,'2023-10-26 14:25:53','2023-10-26 14:25:53','2023-10-26 14:25:53','76c28073-a7cb-44c6-841b-54fcbaa9edcf'),(23,74,'craft\\imagetransforms\\ImageTransformer','macbook.jpg',NULL,'_34x17_crop_center-center_none',1,1,0,'2023-10-26 14:30:22','2023-10-26 14:30:22','2023-10-26 14:30:22','d80aab90-f174-4fe9-9e4d-582f8760873e'),(24,74,'craft\\imagetransforms\\ImageTransformer','macbook.jpg',NULL,'_68x35_crop_center-center_none',1,0,0,'2023-10-26 14:30:22','2023-10-26 14:30:22','2023-10-26 14:30:22','39a95f50-b9d4-49ee-bc97-06e969fd7831');
/*!40000 ALTER TABLE `imagetransformindex` ENABLE KEYS */;
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
