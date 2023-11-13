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
-- Table structure for table `fieldlayouttabs`
--

DROP TABLE IF EXISTS `fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldlayouttabs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `layoutId` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `settings` text,
  `elements` text,
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ygzfpdtojubehltsrbgtdfgcbjkgwjzcttqo` (`sortOrder`),
  KEY `idx_yinfwybjpoazcwmzbvfrjpojncywuyxmuhvw` (`layoutId`),
  CONSTRAINT `fk_iwohocvkeqdsibklksiwbjehadlxelxqpmcg` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayouttabs`
--

LOCK TABLES `fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `fieldlayouttabs` DISABLE KEYS */;
INSERT INTO `fieldlayouttabs` VALUES (2,2,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"03709973-8b5f-4f02-9cb0-2188c900f589\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"3fd01f77-7c87-47f7-ac36-94628bab8e91\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"2d5e4638-7959-4919-bb5f-bf9bedad9c82\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"bac33fd7-ecfc-4b9a-a31c-a66b899ea138\"}]',1,'2023-10-26 08:02:17','2023-10-26 08:02:17','ccbe5c43-e908-4cce-9a91-eb0228188b0c'),(3,1,'navigation','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"6ec15b1a-4c2e-4baa-816f-08f12081d116\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3\"}]',1,'2023-10-26 08:02:25','2023-10-26 08:02:25','34836475-0cde-42fc-8360-f747d32d4a7f'),(8,4,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"a2068f29-0505-4b45-99a7-1038d5649228\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AltField\",\"attribute\":\"alt\",\"requirable\":true,\"class\":null,\"rows\":null,\"cols\":null,\"name\":null,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"fb112e52-e76b-4b49-8b00-b978b0116df8\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"005fc869-dc43-4746-9457-a303b6899681\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"}]',1,'2023-10-26 09:31:19','2023-10-26 09:31:19','32eef56c-5b41-439b-9a0a-c605a43cd157'),(9,3,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"f9b69dc6-859e-4b87-bef1-1cd30e3a8edb\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a1b20f8f-d9dd-4fcc-b8d3-b08abf9a247d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"8a5a043c-5673-4141-95ba-4e0c5481febd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"458154ab-27f4-496e-b52f-efb589543c1e\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"86baae64-de54-4999-87c3-223e3bbb5697\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"4f2f0f30-956f-4af5-a4e3-05cda66a356c\"}]',1,'2023-10-26 09:50:28','2023-10-26 09:50:28','0aed763d-d10a-42a6-aea0-dabf608e617e'),(17,6,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"9be78c60-0f82-43bf-97d1-9a3e22f176f2\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a08c1080-086f-42df-91db-0c531906c060\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"8a5a043c-5673-4141-95ba-4e0c5481febd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"967bc4b2-c470-44c7-9d07-b1aec8b0a064\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"88906281-247e-498f-8e15-a54e9ef1dc5e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"f7920709-d5d1-47be-b750-f0d1f6bbc8f0\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e2702452-ff79-44e2-8589-26f911a1b116\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"93a7dc73-16b2-48f2-ab73-dfea573f5f8c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"}]',1,'2023-10-26 13:51:46','2023-10-26 13:51:46','76eedede-15e9-4a50-a200-e9c3edb44256'),(18,5,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"90d6fa07-3596-4d17-a295-28c14317e81b\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d8ff1c6d-296a-4d8c-9ae4-ec55cb46e4ea\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"8a5a043c-5673-4141-95ba-4e0c5481febd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a796653a-318f-446e-a93e-12be1b1ffe7d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"106cc52a-0f0d-4acd-a439-c2df9fcd2976\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e2702452-ff79-44e2-8589-26f911a1b116\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"8fc49efc-0972-4abe-afd9-2a7660f39164\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"88906281-247e-498f-8e15-a54e9ef1dc5e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"43e82dcc-8563-412a-a0cc-5427013ec94f\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"66a50116-1564-4bc7-9a9b-c617b443ba77\"}]',1,'2023-10-29 18:15:08','2023-10-29 18:15:08','a24e03d0-04fb-4b43-9383-f6131d4155e4');
/*!40000 ALTER TABLE `fieldlayouttabs` ENABLE KEYS */;
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
