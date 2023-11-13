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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_bvnhmjgprotxroazbnnnmcuawlcorhnzkpdl` (`track`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'craft','Install','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','73a5ff7b-7a1d-4db4-94d5-0944333604a3'),(2,'craft','m210121_145800_asset_indexing_changes','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','d419cbd4-2d57-4f1a-aace-b1091db4604e'),(3,'craft','m210624_222934_drop_deprecated_tables','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','58dfab65-0a03-465b-815c-9883abe70ccd'),(4,'craft','m210724_180756_rename_source_cols','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','b30a81c9-61d8-4f4b-8285-55aeadc0a2f1'),(5,'craft','m210809_124211_remove_superfluous_uids','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','069c3d47-dec5-4a1f-8c81-5a60f09ea2cd'),(6,'craft','m210817_014201_universal_users','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','5b2414b1-c7f3-438b-ad9e-42be3081ac6e'),(7,'craft','m210904_132612_store_element_source_settings_in_project_config','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','00d32d23-8dd3-4fc0-aa97-7ce6e7d6532f'),(8,'craft','m211115_135500_image_transformers','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','ed34a08a-b91d-41ef-88b9-c4d680db9d98'),(9,'craft','m211201_131000_filesystems','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','b20478c9-f6c3-4426-84e7-b7d81081557a'),(10,'craft','m220103_043103_tab_conditions','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','764edebd-b5dc-4a25-bfbd-5f98a81ca29d'),(11,'craft','m220104_003433_asset_alt_text','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','d036eede-c95e-47c6-abc9-f371fc793081'),(12,'craft','m220123_213619_update_permissions','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','6de79375-f002-41da-a663-9c002ae7b011'),(13,'craft','m220126_003432_addresses','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','16e1dfcf-733a-46aa-95b3-f0f864de103e'),(14,'craft','m220209_095604_add_indexes','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','35741eca-4b63-4994-b54c-812309c73e53'),(15,'craft','m220213_015220_matrixblocks_owners_table','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','8e5888b7-4c9f-4dda-9876-4bfb8b148438'),(16,'craft','m220214_000000_truncate_sessions','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','bf778669-9e3b-499a-a5e4-a5e589fb8d5e'),(17,'craft','m220222_122159_full_names','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','f7abd923-3994-43ed-b2dc-d0d5771e780b'),(18,'craft','m220223_180559_nullable_address_owner','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','bfb54c2c-3a4c-4f48-93b5-ff4ce3e53022'),(19,'craft','m220225_165000_transform_filesystems','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','82a6d63c-8410-43ad-9231-3096cc1026a8'),(20,'craft','m220309_152006_rename_field_layout_elements','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','844a4025-4d54-46dd-a8bc-23570f8c315f'),(21,'craft','m220314_211928_field_layout_element_uids','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','9f24df29-b118-49c2-bd28-384b813c32c9'),(22,'craft','m220316_123800_transform_fs_subpath','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','738d849d-0ffa-43e1-a788-8a4916eafed8'),(23,'craft','m220317_174250_release_all_jobs','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','f05257dc-7300-46c4-a198-427020b8a554'),(24,'craft','m220330_150000_add_site_gql_schema_components','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','2b9401f0-6123-46e2-809e-d3b9afddf0a9'),(25,'craft','m220413_024536_site_enabled_string','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','7e9b3ec8-489f-4df5-8246-a9c23a905ed1'),(26,'craft','m221027_160703_add_image_transform_fill','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','dc0c9171-7036-41be-bba3-264842155aa6'),(27,'craft','m221028_130548_add_canonical_id_index','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','4802016f-eac3-414b-992f-c45bb2a63680'),(28,'craft','m221118_003031_drop_element_fks','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','46f2365d-638d-4a0c-90c0-ee03414c43ed'),(29,'craft','m230131_120713_asset_indexing_session_new_options','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','661d7ce4-06bf-41a7-9975-f2ff40176c53'),(30,'craft','m230226_013114_drop_plugin_license_columns','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','4a63545b-7c78-44e9-b14b-e3055550af76'),(31,'craft','m230531_123004_add_entry_type_show_status_field','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','dc92125a-5215-48a8-b447-9eea5113c7fe'),(32,'craft','m230607_102049_add_entrytype_slug_translation_columns','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','68246c03-a51f-46e5-90b0-44362ac00b7e'),(33,'craft','m230710_162700_element_activity','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','6fb832a8-066b-46ee-b91e-9eede121a9fd'),(34,'craft','m230820_162023_fix_cache_id_type','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','1a2a66f2-1943-42c3-a581-0e977b345bad'),(35,'craft','m230826_094050_fix_session_id_type','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','5a179d59-ca11-4811-b008-6d0dbb767d71'),(36,'plugin:ckeditor','Install','2023-10-26 07:27:02','2023-10-26 07:27:02','2023-10-26 07:27:02','e5a44ea4-5121-4d44-b22d-8c04c68b49f9'),(37,'plugin:ckeditor','m230408_163704_v3_upgrade','2023-10-26 07:27:02','2023-10-26 07:27:02','2023-10-26 07:27:02','5e1c2cb1-cf22-44af-a785-f8b174a78edd'),(38,'plugin:wheelform','Install','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','ca9943bc-f836-4ea8-87f3-82d3683ffa9b'),(39,'plugin:wheelform','m180407_040301_add_index_view_column_to_form_fields_table','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','991663a9-f57d-4882-b9f2-6a4d24da9575'),(40,'plugin:wheelform','m180407_170219_add_active_column_to_form_fields','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','5bb1ca11-c321-40f1-adf7-75ce08abcb1d'),(41,'plugin:wheelform','m180430_232743_add_read_column_to_message','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','0a031f4b-34e6-41de-9f11-57dfc9c6b0de'),(42,'plugin:wheelform','m180602_051517_AddOrderToField','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','2fe6b3c3-96d8-472a-981e-d3b6fc9519c9'),(43,'plugin:wheelform','m180802_015031_save_entry_to_forms_table','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','d4305272-ccea-461e-9b45-ea67574db525'),(44,'plugin:wheelform','m180804_230709_add_options_to_form_fields','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','186fb951-190e-4979-8702-dde5b15b52dd'),(45,'plugin:wheelform','m180814_230614_add_options_column_forms_table','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','94acbb40-6ef3-4e57-8783-74027b6d954b');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
