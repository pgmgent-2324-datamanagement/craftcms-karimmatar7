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
-- Table structure for table `searchindex`
--

DROP TABLE IF EXISTS `searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searchindex` (
  `elementId` int NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int NOT NULL,
  `siteId` int NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  FULLTEXT KEY `idx_xtvbmljuhmmfqejwahddroesbdelpcqtftsi` (`keywords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchindex`
--

LOCK TABLES `searchindex` WRITE;
/*!40000 ALTER TABLE `searchindex` DISABLE KEYS */;
INSERT INTO `searchindex` VALUES (1,'email',0,1,' karim matar student arteveldehs be '),(1,'firstname',0,1,''),(1,'fullname',0,1,''),(1,'lastname',0,1,''),(1,'slug',0,1,''),(1,'username',0,1,' admin '),(2,'slug',0,1,''),(3,'slug',0,1,' about '),(3,'title',0,1,' about me '),(5,'slug',0,1,' temp kgbaryhwsfawiefipoinfawksyhwpivmtyzo '),(5,'title',0,1,''),(9,'slug',0,1,' contact '),(9,'title',0,1,' contact '),(11,'field',3,1,' about '),(11,'slug',0,1,''),(12,'field',3,1,' contact '),(12,'slug',0,1,''),(16,'alt',0,1,''),(16,'extension',0,1,' jpg '),(16,'filename',0,1,' 378233798 1772485156541432 2900207488565928624 n jpg '),(16,'kind',0,1,' image '),(16,'slug',0,1,''),(16,'title',0,1,' 378233798 1772485156541432 2900207488565928624 n '),(23,'alt',0,1,''),(23,'extension',0,1,' jpg '),(23,'filename',0,1,' 378233798 1772485156541432 2900207488565928624 n 2023 10 26 093016 gsqd jpg '),(23,'kind',0,1,' image '),(23,'slug',0,1,''),(23,'title',0,1,' 378233798 1772485156541432 2900207488565928624 n '),(32,'slug',0,1,' temp xaxonkptabyloiryibxopyhkoagxmlhnunwz '),(32,'title',0,1,''),(33,'slug',0,1,' accessories '),(33,'title',0,1,' accessories '),(34,'slug',0,1,' smart phones '),(34,'title',0,1,' smart phones '),(35,'slug',0,1,' laptops '),(35,'title',0,1,' laptops '),(36,'slug',0,1,' iphone '),(36,'title',0,1,' iphone 15 '),(39,'slug',0,1,' temp prwwtoqjduuadlyzichcuoygcmdpffxouugr '),(39,'title',0,1,''),(40,'slug',0,1,' phone case '),(40,'title',0,1,' phone case '),(42,'alt',0,1,''),(42,'extension',0,1,' png '),(42,'filename',0,1,' smartschool app icon orange png '),(42,'kind',0,1,' image '),(42,'slug',0,1,''),(42,'title',0,1,' smartschool app icon orange '),(46,'alt',0,1,''),(46,'extension',0,1,' jpg '),(46,'filename',0,1,' case jpg '),(46,'kind',0,1,' image '),(46,'slug',0,1,''),(46,'title',0,1,' case '),(50,'alt',0,1,''),(50,'extension',0,1,' jpg '),(50,'filename',0,1,' iphone 15 jpg '),(50,'kind',0,1,' image '),(50,'slug',0,1,''),(50,'title',0,1,' iphone 15 '),(52,'slug',0,1,' galaxy s23 ultra '),(52,'title',0,1,' galaxy s23 ultra '),(53,'alt',0,1,''),(53,'extension',0,1,' jpg '),(53,'filename',0,1,' s23 ultra jpg '),(53,'kind',0,1,' image '),(53,'slug',0,1,''),(53,'title',0,1,' s23 ultra '),(55,'slug',0,1,' temp wzuakcsdqzndyuxvyzgcuzqcaugchupjdydy '),(55,'title',0,1,''),(58,'slug',0,1,' ipad pro '),(58,'title',0,1,' ipad pro '),(59,'alt',0,1,''),(59,'extension',0,1,' jpg '),(59,'filename',0,1,' ipad jpg '),(59,'kind',0,1,' image '),(59,'slug',0,1,''),(59,'title',0,1,' ipad '),(61,'slug',0,1,' acer laptop '),(61,'title',0,1,' acer laptop '),(62,'alt',0,1,''),(62,'extension',0,1,' jpg '),(62,'filename',0,1,' acer jpg '),(62,'kind',0,1,' image '),(62,'slug',0,1,''),(62,'title',0,1,' acer '),(64,'slug',0,1,' airpods pro '),(64,'title',0,1,' airpods pro '),(65,'alt',0,1,''),(65,'extension',0,1,' jpg '),(65,'filename',0,1,' airpods jpg '),(65,'kind',0,1,' image '),(65,'slug',0,1,''),(65,'title',0,1,' airpods '),(67,'slug',0,1,' msi laptop '),(67,'title',0,1,' msi laptop '),(68,'alt',0,1,''),(68,'extension',0,1,' jpg '),(68,'filename',0,1,' msi jpg '),(68,'kind',0,1,' image '),(68,'slug',0,1,''),(68,'title',0,1,' msi '),(70,'slug',0,1,' apple airtag '),(70,'title',0,1,' apple airtag '),(71,'alt',0,1,''),(71,'extension',0,1,' jpg '),(71,'filename',0,1,' airtag jpg '),(71,'kind',0,1,' image '),(71,'slug',0,1,''),(71,'title',0,1,' airtag '),(73,'slug',0,1,' macbook '),(73,'title',0,1,' macbook '),(74,'alt',0,1,''),(74,'extension',0,1,' jpg '),(74,'filename',0,1,' macbook jpg '),(74,'kind',0,1,' image '),(74,'slug',0,1,''),(74,'title',0,1,' macbook '),(80,'slug',0,1,' thanks '),(80,'title',0,1,' thanks ');
/*!40000 ALTER TABLE `searchindex` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:52
