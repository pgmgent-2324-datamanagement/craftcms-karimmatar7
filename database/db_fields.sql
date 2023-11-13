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
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `groupId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_kjrvyjepspvcwbeeuoklqihvrjzmmvtqviio` (`handle`,`context`),
  KEY `idx_spjntinjeppwwdltbnydtoaxfgnkrhhwldth` (`groupId`),
  KEY `idx_lyvzlpjjvzphumrupgkxhpaxmiihskvwbnlo` (`context`),
  CONSTRAINT `fk_zppidyzeowwgmbvcrqbprbkjqkdbitwqmpqr` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,1,'navigation','navigation','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_navigation}}\",\"maxBlocks\":null,\"minBlocks\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}','2023-10-26 08:02:17','2023-10-26 08:02:17','9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3'),(2,NULL,'navname','navname','matrixBlockType:fe4a263e-3f8a-458d-8db1-e0951c3f6c71','ehppnbqf',NULL,0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}','2023-10-26 08:02:17','2023-10-26 08:02:17','3fd01f77-7c87-47f7-ac36-94628bab8e91'),(3,NULL,'navlink','navlink','matrixBlockType:fe4a263e-3f8a-458d-8db1-e0951c3f6c71',NULL,NULL,1,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"branchLimit\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Entry\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2023-10-26 08:02:17','2023-10-26 08:02:17','bac33fd7-ecfc-4b9a-a31c-a66b899ea138'),(4,1,'body','body','global','bfcjeggh',NULL,0,'none',NULL,'craft\\ckeditor\\Field','{\"availableTransforms\":\"\",\"availableVolumes\":\"*\",\"ckeConfig\":\"bac6cfb4-ccb5-462d-b720-9bd3e88a14bc\",\"columnType\":\"text\",\"defaultTransform\":null,\"enableSourceEditingForNonAdmins\":false,\"purifierConfig\":null,\"purifyHtml\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"showWordCount\":false,\"wordLimit\":null}','2023-10-26 08:07:50','2023-10-26 08:44:31','8a5a043c-5673-4141-95ba-4e0c5481febd'),(5,1,'Image','image','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:2c3cf118-1d0e-49ed-8501-035517bcdc3a\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:2c3cf118-1d0e-49ed-8501-035517bcdc3a\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2023-10-26 09:29:35','2023-10-26 09:29:35','b225808e-ba87-45b1-b29e-e5fff13cd7e7'),(6,1,'shape','shape','global','ojeccuwi',NULL,0,'none',NULL,'craft\\fields\\Dropdown','{\"columnType\":null,\"options\":[{\"label\":\"default\",\"value\":\"default\",\"default\":\"1\"},{\"label\":\"contact\",\"value\":\"contact\",\"default\":\"\"},{\"label\":\"thanks\",\"value\":\"thanks\",\"default\":\"\"}]}','2023-10-26 09:50:08','2023-10-29 14:09:42','4f2f0f30-956f-4af5-a4e3-05cda66a356c'),(7,1,'Price','price','global',NULL,NULL,0,'none',NULL,'craft\\fields\\Number','{\"defaultValue\":null,\"min\":0,\"max\":null,\"decimals\":2,\"size\":null,\"prefix\":null,\"suffix\":null,\"previewFormat\":\"decimal\",\"previewCurrency\":null}','2023-10-26 12:57:36','2023-10-26 12:59:45','e2702452-ff79-44e2-8589-26f911a1b116'),(8,1,'Category','category','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Categories','{\"allowSelfRelations\":false,\"branchLimit\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionLabel\":null,\"showSiteMenu\":false,\"source\":\"group:f0179ba9-b210-44a5-94ad-aec8a17fb158\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2023-10-26 13:13:59','2023-10-26 13:13:59','88906281-247e-498f-8e15-a54e9ef1dc5e'),(9,1,'rating','rating','global','dwjuhuab',NULL,0,'none',NULL,'craft\\fields\\Number','{\"decimals\":0,\"defaultValue\":1,\"max\":5,\"min\":1,\"prefix\":null,\"previewCurrency\":null,\"previewFormat\":\"decimal\",\"size\":null,\"suffix\":null}','2023-10-29 18:14:38','2023-10-29 18:14:38','66a50116-1564-4bc7-9a9b-c617b443ba77');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
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
