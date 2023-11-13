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
-- Table structure for table `elements_sites`
--

DROP TABLE IF EXISTS `elements_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elements_sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_nvebvcqfrjcdbyekvrvzmdcxglytcupuoppi` (`elementId`,`siteId`),
  KEY `idx_noaptygjxopqqyomuhvnpovdhygwqiwwdjps` (`siteId`),
  KEY `idx_fsmobibgwljvyyzqimwnxpmajjcxpukmpyfr` (`slug`,`siteId`),
  KEY `idx_obrmubdgkjcrwpmbbufyaoqhiukdzoldjtbl` (`enabled`),
  KEY `idx_zadgcrcjdiwwtwbokygvwzdyeggviadjhniq` (`uri`,`siteId`),
  CONSTRAINT `fk_dzkmdcsfzbodnwinxsmgseiynoaofhorunif` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_wucfaiebdnnmjetkowbghujkhvhfshpdhcvk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements_sites`
--

LOCK TABLES `elements_sites` WRITE;
/*!40000 ALTER TABLE `elements_sites` DISABLE KEYS */;
INSERT INTO `elements_sites` VALUES (1,1,1,NULL,NULL,1,'2023-10-24 13:14:03','2023-10-24 13:14:03','c84c67c2-b7ce-45dd-8ba8-0c5e3d0c50a8'),(2,2,1,NULL,NULL,1,'2023-10-26 07:59:34','2023-10-26 07:59:34','083e19f1-ab72-4f3a-987d-e56efc7d73a4'),(3,3,1,'about','pages/about',1,'2023-10-26 08:08:05','2023-10-26 08:08:15','946b3285-2d93-484a-8010-e5d40da75c3a'),(4,4,1,'about','pages/about',1,'2023-10-26 08:09:07','2023-10-26 08:09:07','8e4a66c7-f1ee-40c0-97ed-a2429df17b46'),(5,5,1,'__temp_kgbaryhwsfawiefipoinfawksyhwpivmtyzo','pages/__temp_kgbaryhwsfawiefipoinfawksyhwpivmtyzo',1,'2023-10-26 08:11:59','2023-10-26 08:11:59','27ab1792-b72e-4e6b-807d-aa1868afb058'),(6,6,1,'about','pages/about',1,'2023-10-26 08:12:40','2023-10-26 08:12:40','8d30f7c3-f408-4875-a959-56673384eb06'),(8,8,1,'about','pages/about',1,'2023-10-26 08:15:35','2023-10-26 08:15:35','edee64eb-8cc8-4e30-995f-46d40b8db86c'),(9,9,1,'contact','pages/contact',1,'2023-10-26 08:15:37','2023-10-26 08:15:42','9e4585ca-2c14-4110-b184-bbb4c62ae706'),(10,10,1,'contact','pages/contact',1,'2023-10-26 08:15:46','2023-10-26 08:15:46','06143e2f-954c-460a-a1d7-246fbf176800'),(11,11,1,NULL,NULL,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','a0e9263f-4976-4087-a24e-c31200167259'),(12,12,1,NULL,NULL,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','c3b0608d-bd47-46c7-b376-43220acbe46e'),(13,13,1,'about','pages/about',1,'2023-10-26 09:02:13','2023-10-26 09:02:13','daac683e-99c8-40c2-9627-671e5b9af99f'),(16,16,1,NULL,NULL,1,'2023-10-26 09:22:18','2023-10-26 09:22:18','ee64f800-7f89-4f4b-accc-8b30dcda6937'),(18,18,1,'about','pages/about',1,'2023-10-26 09:22:35','2023-10-26 09:22:35','82ae91e1-558a-40e2-8698-5916bb982aa8'),(20,20,1,'about','pages/about',1,'2023-10-26 09:22:59','2023-10-26 09:22:59','fbbbb493-c8d0-4739-8921-d53ff9142faf'),(22,22,1,'about','pages/about',1,'2023-10-26 09:28:30','2023-10-26 09:28:30','ca4c3f82-11ee-4877-9983-57bbda739f08'),(23,23,1,NULL,NULL,1,'2023-10-26 09:30:16','2023-10-26 09:30:16','ee5902f0-ab12-4d70-bdff-ce8d3283898c'),(25,25,1,'about','pages/about',1,'2023-10-26 09:30:18','2023-10-26 09:30:18','d459ffd8-edd7-49c5-9a71-93ad1749a12c'),(26,26,1,'about','pages/about',1,'2023-10-26 09:48:34','2023-10-26 09:48:34','ea13012c-b176-4068-824e-257abe2328e5'),(27,27,1,'about','pages/about',1,'2023-10-26 09:50:35','2023-10-26 09:50:35','ebac76cf-7ea5-415a-8f9d-a7878d623369'),(29,29,1,'contact','pages/contact',1,'2023-10-26 09:50:41','2023-10-26 09:50:41','47d81043-be42-4979-93d9-8c22364b9a4d'),(31,31,1,'about','pages/about',1,'2023-10-26 09:58:56','2023-10-26 09:58:56','4a25e05a-498d-46c2-830b-3b8d38768f76'),(32,32,1,'__temp_xaxonkptabyloiryibxopyhkoagxmlhnunwz','product/__temp_xaxonkptabyloiryibxopyhkoagxmlhnunwz',1,'2023-10-26 13:01:49','2023-10-26 13:01:49','930b5130-d3ba-46f5-ad1a-60957c6949ee'),(33,33,1,'accessories','categories/accessories',1,'2023-10-26 13:09:20','2023-10-26 13:51:46','e2260fd2-60ed-4cc3-920e-5ab62c85d0d7'),(34,34,1,'smart-phones','categories/smart-phones',1,'2023-10-26 13:09:46','2023-10-26 13:51:46','7b477b9a-dc1a-4e05-b9c7-f4fb608a5b9e'),(35,35,1,'laptops','categories/laptops',1,'2023-10-26 13:09:55','2023-10-26 13:51:46','563cc9a9-9dca-4ee8-bef1-6327e9827e91'),(36,36,1,'iphone','product/iphone',1,'2023-10-26 13:10:33','2023-10-26 13:10:38','0db5770e-80f7-4953-b814-74a5ee52f64a'),(37,37,1,'iphone','product/iphone',1,'2023-10-26 13:14:34','2023-10-26 13:14:34','18083994-ee09-4c8f-ad8a-2bba6829a497'),(38,38,1,'iphone','product/iphone',1,'2023-10-26 13:30:17','2023-10-26 13:30:17','9afdf859-6ccb-4230-ae7f-8989ec757fe1'),(39,39,1,'__temp_prwwtoqjduuadlyzichcuoygcmdpffxouugr','product/__temp_prwwtoqjduuadlyzichcuoygcmdpffxouugr',1,'2023-10-26 13:48:09','2023-10-26 13:48:09','2915f838-89d6-4757-b825-48b0ba6ddbf8'),(40,40,1,'phone-case','product/phone-case',1,'2023-10-26 13:48:16','2023-10-26 13:48:23','61808872-35a2-4fd1-8599-8487b9aa9baf'),(41,41,1,'phone-case','product/phone-case',1,'2023-10-26 13:48:32','2023-10-26 13:48:32','fd729df2-24ec-478f-bcd6-0be22a9c8f79'),(42,42,1,NULL,NULL,1,'2023-10-26 13:55:06','2023-10-26 13:55:06','c24131b9-ab6c-4ea8-b36a-28059c5d17ec'),(44,44,1,'iphone','product/iphone',1,'2023-10-26 13:55:12','2023-10-26 13:55:12','4e9e4f51-35bb-425f-b0ab-0de3120323af'),(45,45,1,'iphone','product/iphone',1,'2023-10-26 13:55:46','2023-10-26 13:55:46','34ccf403-677c-486b-9f90-880790a4d900'),(46,46,1,NULL,NULL,1,'2023-10-26 14:11:18','2023-10-26 14:11:18','dc9acda2-b2c5-4b06-9df2-a221a1892bca'),(48,48,1,'phone-case','product/phone-case',1,'2023-10-26 14:12:14','2023-10-26 14:12:14','a8b884a2-9eeb-4e88-8052-fb35160be4c3'),(50,50,1,NULL,NULL,1,'2023-10-26 14:12:37','2023-10-26 14:12:37','04db2a6e-4d55-4bbd-a680-64cae96a9d88'),(51,51,1,'iphone','product/iphone',1,'2023-10-26 14:14:15','2023-10-26 14:14:15','26a6d8d8-bcce-4dea-939d-bc27f47ced05'),(52,52,1,'galaxy-s23-ultra','product/galaxy-s23-ultra',1,'2023-10-26 14:14:38','2023-10-26 14:14:47','e66e8b09-ad07-4d92-a5d1-c60c23b03fc9'),(53,53,1,NULL,NULL,1,'2023-10-26 14:14:51','2023-10-26 14:14:51','9f24840f-7396-4d18-9748-f0306941f506'),(54,54,1,'galaxy-s23-ultra','product/galaxy-s23-ultra',1,'2023-10-26 14:15:40','2023-10-26 14:15:40','b2464a50-d59b-40b3-9a93-5af67cc56855'),(55,55,1,'__temp_wzuakcsdqzndyuxvyzgcuzqcaugchupjdydy','product/__temp_wzuakcsdqzndyuxvyzgcuzqcaugchupjdydy',1,'2023-10-26 14:19:46','2023-10-26 14:19:46','ebaa7375-973b-4dc9-adef-c2b7f452539c'),(57,57,1,'phone-case','product/phone-case',1,'2023-10-26 14:20:31','2023-10-26 14:20:31','186da248-ad07-4500-a17f-f4de515f1d0c'),(58,58,1,'ipad-pro','product/ipad-pro',1,'2023-10-26 14:20:33','2023-10-26 14:20:40','1dd1300e-fcfd-4748-9c6f-139a69bf72a7'),(59,59,1,NULL,NULL,1,'2023-10-26 14:21:02','2023-10-26 14:21:02','8f185f48-6134-43c3-8e53-400ea651923f'),(60,60,1,'ipad-pro','product/ipad-pro',1,'2023-10-26 14:21:14','2023-10-26 14:21:14','e1fd8002-406b-4f22-8b89-6231fabca537'),(61,61,1,'acer-laptop','product/acer-laptop',1,'2023-10-26 14:22:05','2023-10-26 14:22:11','99ec0d4e-5f1f-43ea-b963-c2ea879a69c0'),(62,62,1,NULL,NULL,1,'2023-10-26 14:22:52','2023-10-26 14:22:52','52a8dbc4-1bfb-4cf2-b65d-6c536d912e35'),(63,63,1,'acer-laptop','product/acer-laptop',1,'2023-10-26 14:23:27','2023-10-26 14:23:27','1fcc063c-422b-43e4-b8bf-a8b8dadde59a'),(64,64,1,'airpods-pro','product/airpods-pro',1,'2023-10-26 14:23:49','2023-10-26 14:24:04','1333db56-4d3d-499d-95f8-d268773aefb6'),(65,65,1,NULL,NULL,1,'2023-10-26 14:23:58','2023-10-26 14:23:58','96926a6c-e57f-4d1a-a116-d7f8a2a0ff94'),(66,66,1,'airpods-pro','product/airpods-pro',1,'2023-10-26 14:24:34','2023-10-26 14:24:34','c3f202e8-ae38-480c-8cb0-fb30f953d4b0'),(67,67,1,'msi-laptop','product/msi-laptop',1,'2023-10-26 14:24:37','2023-10-26 14:24:43','8558041d-b5e8-4f39-93aa-de94db88283f'),(68,68,1,NULL,NULL,1,'2023-10-26 14:25:05','2023-10-26 14:25:05','b22d827e-c724-432e-9db3-1e397993e6dd'),(69,69,1,'msi-laptop','product/msi-laptop',1,'2023-10-26 14:25:19','2023-10-26 14:25:19','5f050ee7-429e-4a7e-a701-1924beffdee6'),(70,70,1,'apple-airtag','product/apple-airtag',1,'2023-10-26 14:25:21','2023-10-26 14:25:28','44846a6c-b6bc-46dc-b65d-fbbdb617c9e9'),(71,71,1,NULL,NULL,1,'2023-10-26 14:25:53','2023-10-26 14:25:53','9e4dd41e-27b7-4f7c-9283-66790679fc65'),(72,72,1,'apple-airtag','product/apple-airtag',1,'2023-10-26 14:26:04','2023-10-26 14:26:04','734f5390-5d5e-4942-b7b7-224e218d82c0'),(73,73,1,'macbook','product/macbook',1,'2023-10-26 14:29:51','2023-10-26 14:29:55','1d54d561-8c0a-423d-81fb-3629eba2a4b9'),(74,74,1,NULL,NULL,1,'2023-10-26 14:30:22','2023-10-26 14:30:22','8b7621fb-cf18-4767-807a-64d2b7f18b8b'),(75,75,1,'macbook','product/macbook',1,'2023-10-26 14:30:31','2023-10-26 14:30:31','d4ea483b-c891-4719-b1df-9e6f4377382c'),(77,77,1,'about','pages/about',1,'2023-10-26 14:58:08','2023-10-26 14:58:08','36f40561-67c5-453d-b7e7-d3694b02de81'),(79,79,1,'phone-case','product/phone-case',1,'2023-10-26 15:12:36','2023-10-26 15:12:36','c8b2ec57-e66d-4590-9c51-5361d83f2b5f'),(80,80,1,'thanks','pages/thanks',1,'2023-10-29 14:09:16','2023-10-29 14:09:20','041d25d4-eb09-4e71-9787-085c9dabbae5'),(81,81,1,'thanks','pages/thanks',1,'2023-10-29 14:09:54','2023-10-29 14:09:54','38aca09f-7af2-4c87-a60b-5d3ec8551dcc'),(83,83,1,'macbook','product/macbook',1,'2023-10-29 18:15:23','2023-10-29 18:15:23','18ac6ff0-842c-4ee8-b093-bbc5011dd3d8'),(85,85,1,'apple-airtag','product/apple-airtag',1,'2023-10-29 18:15:30','2023-10-29 18:15:30','7d0f517b-0dba-432f-b96f-5d044d9cbd29'),(87,87,1,'msi-laptop','product/msi-laptop',1,'2023-10-29 18:15:36','2023-10-29 18:15:36','87b1a08c-b098-4fa6-8133-066b2adf4feb'),(89,89,1,'airpods-pro','product/airpods-pro',1,'2023-10-29 18:15:42','2023-10-29 18:15:42','d3583cb9-5625-4b60-9895-0726a1ad9160'),(91,91,1,'acer-laptop','product/acer-laptop',1,'2023-10-29 18:15:51','2023-10-29 18:15:51','70bf2596-1a73-4575-ae0c-4b2a41275286'),(93,93,1,'galaxy-s23-ultra','product/galaxy-s23-ultra',1,'2023-10-29 18:15:59','2023-10-29 18:15:59','703f312a-a269-4d9f-a101-1a7886ffe092'),(95,95,1,'phone-case','product/phone-case',1,'2023-10-29 18:16:07','2023-10-29 18:16:07','586a00cf-ecf7-4e58-b464-a7f5c43041ca'),(97,97,1,'iphone','product/iphone',1,'2023-10-29 18:16:13','2023-10-29 18:16:13','c6b33436-cbcc-4706-b0a5-ea1f3146cd36');
/*!40000 ALTER TABLE `elements_sites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:48
