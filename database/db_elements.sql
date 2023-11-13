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
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `canonicalId` int DEFAULT NULL,
  `draftId` int DEFAULT NULL,
  `revisionId` int DEFAULT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_csvqwietwfchldswuyircpgdqowcwnrcqaig` (`dateDeleted`),
  KEY `idx_sbjaosqlwhrrytwmgqnuabmgxfcewhruatox` (`fieldLayoutId`),
  KEY `idx_ahbjaptxsqnsvkcsjakzgcxbupmwjoekyhgz` (`type`),
  KEY `idx_mtdvgmyrynetaybzjnolisjqjqizbkivompw` (`enabled`),
  KEY `idx_ohuvrrpoybyubkfcsmtcfvpocicxxtugqaje` (`canonicalId`),
  KEY `idx_cfjtkqckrrenahsutvxvxtwikavyranefxyf` (`archived`,`dateCreated`),
  KEY `idx_uuunhpjcesjogtbntfcqpepzlidoptwrboxn` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  KEY `idx_pferulwurcutyfqccbradpsjyiwofslwgteo` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  KEY `fk_ctxhxvnlhpzhuohywnbernozcncbiikfeizc` (`draftId`),
  KEY `fk_flrkclirbjerugvyoywvugbtpnbgzpbqplju` (`revisionId`),
  CONSTRAINT `fk_ctxhxvnlhpzhuohywnbernozcncbiikfeizc` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_flrkclirbjerugvyoywvugbtpnbgzpbqplju` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pzavuhlwxjxeswxrqfvnrsfmbfkpxokhetnq` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_rsmwhpgcbjuljehvcldjndszqnpacnzqjook` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (1,NULL,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2023-10-24 13:14:03','2023-10-24 13:14:03',NULL,NULL,'f45cefc7-e3da-4ac9-bff3-67567f0a254f'),(2,NULL,NULL,NULL,1,'craft\\elements\\GlobalSet',1,0,'2023-10-26 07:59:34','2023-10-26 08:23:50',NULL,NULL,'b5714f02-37b0-4105-8e73-8230f809a08a'),(3,NULL,NULL,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:08:05','2023-10-26 14:58:08',NULL,NULL,'2627d894-11a5-4684-aafb-0ace9eaae5a3'),(4,3,NULL,1,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:09:07','2023-10-26 08:09:07',NULL,NULL,'c2290a88-b792-456d-8415-51a0d18cc579'),(5,NULL,2,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:11:59','2023-10-26 08:11:59',NULL,NULL,'b91909b1-a7db-4536-836f-e141a95a57cd'),(6,3,NULL,2,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:12:40','2023-10-26 08:12:40',NULL,NULL,'be14b157-5f33-4472-bfbd-7f32ce860d50'),(8,3,NULL,3,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:15:35','2023-10-26 08:15:35',NULL,NULL,'558c9cb6-7637-49f6-9895-98ac8b4853ad'),(9,NULL,NULL,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:15:37','2023-10-26 09:50:41',NULL,NULL,'5cd01192-5b9c-4b36-a387-bc97a13ffc25'),(10,9,NULL,4,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:15:46','2023-10-26 08:15:46',NULL,NULL,'572af70e-6416-4c2b-ad31-f3f6a6236f04'),(11,NULL,NULL,NULL,2,'craft\\elements\\MatrixBlock',1,0,'2023-10-26 08:23:50','2023-10-26 08:23:50',NULL,NULL,'f8e6b5de-c972-4e00-9ee9-9300ad6cedd6'),(12,NULL,NULL,NULL,2,'craft\\elements\\MatrixBlock',1,0,'2023-10-26 08:23:50','2023-10-26 08:23:50',NULL,NULL,'57549643-8897-49b5-8fcd-b989ea6441bf'),(13,3,NULL,5,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:02:13','2023-10-26 09:02:13',NULL,NULL,'ba927c47-ecea-4137-8f88-59a6d5cbf7cc'),(16,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 09:22:18','2023-10-26 09:22:18',NULL,NULL,'c267bc2d-5aca-45eb-8d0c-cf37a0cc6b2a'),(18,3,NULL,6,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:22:35','2023-10-26 09:22:35',NULL,NULL,'9132a7e7-d844-4c03-8004-3dfdfc8532eb'),(20,3,NULL,7,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:22:59','2023-10-26 09:22:59',NULL,NULL,'fd31e543-09f9-41a8-b472-46600d41fe63'),(22,3,NULL,8,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:28:30','2023-10-26 09:28:30',NULL,NULL,'59fdd0e7-0aed-434b-a092-702e10a6f5e4'),(23,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 09:30:16','2023-10-26 09:30:16',NULL,NULL,'fd083e73-b04a-4e63-9cdd-87826f920e79'),(25,3,NULL,9,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:30:18','2023-10-26 09:30:18',NULL,NULL,'48f314b2-0e8c-4de3-a28d-2d4b11cb70d8'),(26,3,NULL,10,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:48:34','2023-10-26 09:48:34',NULL,NULL,'e5d97ed3-baa3-4153-917c-6211d8b2bf01'),(27,3,NULL,11,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:50:35','2023-10-26 09:50:35',NULL,NULL,'274bc00c-3983-416d-8d19-8f3a9580bc4f'),(29,9,NULL,12,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:50:41','2023-10-26 09:50:41',NULL,NULL,'9b2199fc-23f2-4fa5-aa94-6e9799f88da8'),(31,3,NULL,13,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:58:56','2023-10-26 09:58:56',NULL,NULL,'94073722-f0f6-427e-89c8-0b4fd9881dfa'),(32,NULL,12,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:01:49','2023-10-26 13:01:49',NULL,NULL,'58baf755-0bd3-4237-b5d3-7fdb786ee495'),(33,NULL,NULL,NULL,6,'craft\\elements\\Category',1,0,'2023-10-26 13:09:20','2023-10-26 13:09:43',NULL,NULL,'29d0de63-4e09-4a62-92c2-ac8f16665dcd'),(34,NULL,NULL,NULL,6,'craft\\elements\\Category',1,0,'2023-10-26 13:09:46','2023-10-26 13:09:51',NULL,NULL,'8e85499f-328d-4113-b436-5fb8a1799433'),(35,NULL,NULL,NULL,6,'craft\\elements\\Category',1,0,'2023-10-26 13:09:55','2023-10-26 13:09:59',NULL,NULL,'633188f9-0824-4f04-bd72-0f6b5fc628b9'),(36,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:10:33','2023-10-29 18:16:13',NULL,NULL,'d1046937-440c-4335-9a46-5bb58d08d7e9'),(37,36,NULL,14,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:14:34','2023-10-26 13:14:34',NULL,NULL,'dd10b4e7-058f-43d1-871c-037f6eae9229'),(38,36,NULL,15,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:30:17','2023-10-26 13:30:17',NULL,NULL,'21571140-c9a2-47d1-8a54-358cd0d0d7ce'),(39,NULL,17,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:48:09','2023-10-26 13:48:09',NULL,NULL,'18ce5a81-499b-472b-9ee8-1d00f6f7434f'),(40,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:48:16','2023-10-29 18:16:07',NULL,NULL,'b1118ccf-657e-4e79-a05b-e46e209148b0'),(41,40,NULL,16,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:48:32','2023-10-26 13:48:32',NULL,NULL,'c7329eaa-bd76-40a9-9a1c-0438c46c7b76'),(42,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 13:55:06','2023-10-26 13:55:06',NULL,NULL,'65110874-79d2-47b3-9c34-9ac52e050df7'),(44,36,NULL,17,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:55:12','2023-10-26 13:55:12',NULL,NULL,'803030e8-884c-45ca-a3a7-621d33043325'),(45,36,NULL,18,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:55:46','2023-10-26 13:55:46',NULL,NULL,'07c947c9-fae2-4d0e-86e8-227c46731013'),(46,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:11:18','2023-10-26 14:11:18',NULL,NULL,'737b369f-6506-44d0-8d15-516ad583e9b2'),(48,40,NULL,19,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:12:14','2023-10-26 14:12:14',NULL,NULL,'2e84cc23-1489-4f98-8226-91fcac9f49e9'),(50,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:12:37','2023-10-26 14:12:37',NULL,NULL,'f30d460f-ca5d-4bf0-97e2-457638da1adc'),(51,36,NULL,20,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:14:15','2023-10-26 14:14:15',NULL,NULL,'65a89fed-001b-4733-a7a7-509372c0e078'),(52,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:14:38','2023-10-29 18:15:59',NULL,NULL,'e9c08b3f-52af-4dd0-a8a8-50aeefe9dab8'),(53,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:14:51','2023-10-26 14:14:51',NULL,NULL,'1ce05dc6-36ac-4017-9d5c-90c0dd1692e0'),(54,52,NULL,21,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:15:40','2023-10-26 14:15:40',NULL,NULL,'cdb3f09f-a9c3-4961-8ad0-cf66be34de80'),(55,NULL,23,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:19:46','2023-10-26 14:19:46',NULL,NULL,'d9a294cd-a6e3-47ab-89d3-bdbfdc6bc7de'),(57,40,NULL,22,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:20:31','2023-10-26 14:20:31',NULL,NULL,'b76c16de-d3e3-4152-a8e6-33870b1f12ce'),(58,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:20:33','2023-10-26 14:21:14',NULL,NULL,'f0df2380-5d00-4f6e-9391-50efc8ccf42b'),(59,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:21:02','2023-10-26 14:21:02',NULL,NULL,'e849bfc0-dc75-49ca-83b6-4ebe0efa3f80'),(60,58,NULL,23,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:21:14','2023-10-26 14:21:14',NULL,NULL,'c988f6a0-861a-4dcb-a6c8-54887753aeea'),(61,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:22:05','2023-10-29 18:15:51',NULL,NULL,'a33c29ec-1cb0-45d4-af5d-63df2e6ce19a'),(62,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:22:52','2023-10-26 14:22:52',NULL,NULL,'11a48980-ae12-4417-a6a4-bce9b3519609'),(63,61,NULL,24,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:23:27','2023-10-26 14:23:27',NULL,NULL,'c74af64e-f074-4835-8796-2e0991705bf2'),(64,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:23:49','2023-10-29 18:15:42',NULL,NULL,'6a10967e-ccee-4d72-b5e2-3c386e67dd16'),(65,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:23:58','2023-10-26 14:23:58',NULL,NULL,'7c290454-ac54-4f82-99da-9e5956ffbe6d'),(66,64,NULL,25,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:24:34','2023-10-26 14:24:34',NULL,NULL,'91e96deb-6ac4-4c1c-8329-7b686be12a40'),(67,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:24:37','2023-10-29 18:15:36',NULL,NULL,'06f7ad04-35ed-46a2-9c4f-2d48274b4ec6'),(68,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:25:05','2023-10-26 14:25:05',NULL,NULL,'a4e82e07-9013-4ab1-b9f0-5da607cd5b0c'),(69,67,NULL,26,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:25:19','2023-10-26 14:25:19',NULL,NULL,'0f64bc1f-ae76-406f-bc04-d635ada22088'),(70,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:25:21','2023-10-29 18:15:30',NULL,NULL,'d223060c-9dcc-4d96-a97a-1edb82f985c9'),(71,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:25:53','2023-10-26 14:25:53',NULL,NULL,'a1b909c4-71a7-4f51-961a-5d390dd9c18b'),(72,70,NULL,27,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:26:04','2023-10-26 14:26:04',NULL,NULL,'9c414d53-4eb5-4ed8-84e5-71ccb215fd91'),(73,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:29:51','2023-10-29 18:15:23',NULL,NULL,'588fb518-8702-4a95-a267-c0798b2dfeae'),(74,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:30:22','2023-10-26 14:30:22',NULL,NULL,'a2abc40c-a78a-4282-bb55-6146141c4c8a'),(75,73,NULL,28,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:30:31','2023-10-26 14:30:31',NULL,NULL,'732eb57e-cc48-4f2f-b646-df0c9cf92ac2'),(77,3,NULL,29,3,'craft\\elements\\Entry',1,0,'2023-10-26 14:58:08','2023-10-26 14:58:08',NULL,NULL,'87e671d7-6fd5-4fb7-a7e5-48213b9bca97'),(79,40,NULL,30,5,'craft\\elements\\Entry',1,0,'2023-10-26 15:12:36','2023-10-26 15:12:36',NULL,NULL,'2f5492cf-459e-46d3-851d-51029658f53d'),(80,NULL,NULL,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-29 14:09:16','2023-10-29 14:09:54',NULL,NULL,'d192cf09-c9a1-43a8-81ab-3bbf3414076f'),(81,80,NULL,31,3,'craft\\elements\\Entry',1,0,'2023-10-29 14:09:54','2023-10-29 14:09:54',NULL,NULL,'df8156c8-1dc5-489f-909d-11bfb1af6677'),(83,73,NULL,32,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:23','2023-10-29 18:15:23',NULL,NULL,'862342ad-f565-46e0-ac40-b0e5c84df8d3'),(85,70,NULL,33,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:30','2023-10-29 18:15:30',NULL,NULL,'af380cf1-c9d4-45da-8366-5d325d57bf29'),(87,67,NULL,34,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:36','2023-10-29 18:15:36',NULL,NULL,'89515f82-8c7f-4503-83cc-35fb87b08b18'),(89,64,NULL,35,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:42','2023-10-29 18:15:42',NULL,NULL,'5c2bd53e-48f4-4af5-ab30-6726e62a707e'),(91,61,NULL,36,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:51','2023-10-29 18:15:51',NULL,NULL,'27eb9f58-9ea1-486c-baf0-fd728a48e790'),(93,52,NULL,37,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:59','2023-10-29 18:15:59',NULL,NULL,'241df22e-3814-410c-9cf6-38d8e9404440'),(95,40,NULL,38,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:16:07','2023-10-29 18:16:07',NULL,NULL,'71e3a7a6-ff59-4f03-89bb-93b2963a7e2c'),(97,36,NULL,39,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:16:13','2023-10-29 18:16:13',NULL,NULL,'14cfb84f-263c-4467-922a-70c5c74808a9');
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
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
