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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eldtuvplvijgmdlcljgmzvodkvgggbrrjamz` (`uid`),
  KEY `idx_lmyerboyzhzqmzwmgpxgtvauzrakupwowxqc` (`token`),
  KEY `idx_yleuseteimuijtkiisgclsrvqlfaglffrtsi` (`dateUpdated`),
  KEY `idx_nxptakmeqjjyoybklnchfnnexakzadcahazw` (`userId`),
  CONSTRAINT `fk_caurgxzoqppppvgxjrpmqbczttmrbjpnxjqq` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'kgSj7ulK0_Etj_tZ_mrEr0GjMpXI8HlIOE6QQH4sSbwTOoNC4-kVgpdEVFjMUOPQbJKVR6a3rmGjJKyi_m_UDw3rupnwQyH5E3GX','2023-10-24 13:14:25','2023-10-26 07:25:37','31f8301f-16a4-4374-99e5-4e4888b8c53d'),(2,1,'V30FWGxQgHw6hlOiJ0kwwUGHxh1CzMz3MY64x-YnoFvtU6VjT9esBLjxQ_slPg7nJnBsL1u-vb9ZM4g_Drik4rWCEBDE9cdtRaQJ','2023-10-26 07:25:37','2023-10-26 12:45:20','a1ff1c4e-5b21-4aa9-86a5-b4974d212fe6'),(3,1,'1VTrd1LjDb677TR1zwfwmdlWaCMjUt2kBCYGkISVGpu_0RuNvnVyyviNiXFJ45sQcsKjrPbmRpCSGyqe3BAVZIWExH-QaAIyGy87','2023-10-26 12:45:20','2023-10-29 13:30:18','99986048-8c75-4796-89bd-5045f4a8ecbc'),(4,1,'mKuMZboC2yqbVneVTJk_B1G_QaiUJ12I8BGhMtXbOC5OZQwXbYyR5M9urhcBjgfrYMynE0aqMR9IsjSxFveHhBnlxYG-hMSdT1QO','2023-10-29 13:30:18','2023-11-06 07:49:45','d4322d31-a00f-447e-ada0-ef8e23b54f43'),(5,1,'1F_a639hh1TZe2qp2GXj4AweLfEG0hqIB4kbPYZd-hs796cZsOFduhLd5jh0wUXdpIVfpvha8yNQDxGg-sxVS8eH_wUY4VmRHeum','2023-11-06 07:49:45','2023-11-07 07:59:39','f75298f7-ff65-4cb6-aebe-2842f77e1880'),(6,1,'-ia4WkeAbMA9U53RDC0asqClcyS4luMDmZzhAehzcz3Ty0ta8rtZGPdUwgbN-4cYidPCzh47AuWwlT8n_4d1VX0tpE9QYkJFEUbu','2023-11-07 07:59:39','2023-11-10 22:17:14','58682586-9a01-450e-9561-05b13ed51a88'),(7,1,'U6rgfjAj9UKooKe5Oag2o3xSRdHDWjNZqG1lajsRduErCgdy6dsqmkUFO-T5LVXsATVXJ7_Qub2PV6ZIgmOfiAjB1wUj-Lvcu_5T','2023-11-10 22:17:14','2023-11-11 16:42:47','8920afe7-5e74-4070-bb9e-ccb71b76ddd8'),(8,1,'2HWR3qGbaErDS8NlpZRZq4O3OxG5i8EfTcdfJiWFaQIUMa1zI_po4iNnSP7uXH7VmnjPhNQe82zvK6NX0oQ5YahzPU6EMmTVgpx7','2023-11-11 16:42:47','2023-11-11 16:50:52','c325459b-6615-4415-88cf-4347a4294787'),(11,1,'x-qWzRInZgkkrvJ38-QoLyzlI8aXzmPxFr1GYtECDctorsN8C4LNfKg3-JfDJgub6MyAkJAaXvMqjiRo9Nq36eAsANH_mScagokg','2023-11-11 16:56:24','2023-11-11 17:15:05','b483c379-506e-4098-8aa7-e60e6f22dcbc');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 20:36:49
