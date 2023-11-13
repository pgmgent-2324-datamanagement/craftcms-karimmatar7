-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: db
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL,
  `ownerId` int DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_azfskjyhhrlycyajccvwslqwxchgdwugsaqa` (`ownerId`),
  CONSTRAINT `fk_azfskjyhhrlycyajccvwslqwxchgdwugsaqa` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ysquyannefpkybjxuvfzoebzwedbdgydydhy` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `pluginId` int DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qqasvxzxvnzamynlhhreirwpaamgeqhiyfan` (`userId`,`unread`,`dateRead`,`dateCreated`),
  KEY `idx_cqhytzcpsnjrjirajsvlmiuezebzxfjiiraw` (`dateRead`),
  KEY `fk_aaswemroctpmuolmbojhvdpgcnfebrdbvxfr` (`pluginId`),
  CONSTRAINT `fk_aaswemroctpmuolmbojhvdpgcnfebrdbvxfr` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ydbngjragqfikhbncanifxhmnwtzvulhwtys` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assetindexdata`
--

DROP TABLE IF EXISTS `assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetindexdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sessionId` int NOT NULL,
  `volumeId` int NOT NULL,
  `uri` text,
  `size` bigint unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT '0',
  `recordId` int DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT '0',
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_inaqavpckgtotfchikdxiikgeonaegkjkcdk` (`sessionId`,`volumeId`),
  KEY `idx_pdqslugprumzaqctcqinlcorkczjnfowbvco` (`volumeId`),
  CONSTRAINT `fk_nhppbawxjwbdccefoblbmfbxxngrluozmkli` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_nwobymcchwycelhtnbjxxkrasbbrmjzzhtua` FOREIGN KEY (`sessionId`) REFERENCES `assetindexingsessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assetindexingsessions`
--

DROP TABLE IF EXISTS `assetindexingsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetindexingsessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `indexedVolumes` text,
  `totalEntries` int DEFAULT NULL,
  `processedEntries` int NOT NULL DEFAULT '0',
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `listEmptyFolders` tinyint(1) DEFAULT '0',
  `isCli` tinyint(1) DEFAULT '0',
  `actionRequired` tinyint(1) DEFAULT '0',
  `processIfRootEmpty` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int NOT NULL,
  `volumeId` int DEFAULT NULL,
  `folderId` int NOT NULL,
  `uploaderId` int DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pdubgdfxymcphuqfabplnnopsavxvykqpkwr` (`filename`,`folderId`),
  KEY `idx_fixccimgaqajnuqykhsbmgcycbifvacfvoib` (`folderId`),
  KEY `idx_wmmtmnnjxesmfwqxtllvztgzjlgbbihramzv` (`volumeId`),
  KEY `fk_rzcqnbqhoustqdaapeayrdsoxuhtzlksqkll` (`uploaderId`),
  CONSTRAINT `fk_hxjtzniwvkjutzmggmzpbcurfxmwfbyjjejv` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_khtindaazslwsairiedbrzzfsgndcfqhgghy` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_lvkqbnsmzvuradstmauzxokgfzrsushrejbs` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_rzcqnbqhoustqdaapeayrdsoxuhtzlksqkll` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tjjhzlqruliedalieyoqaotoljwnvkzlvbea` (`groupId`),
  KEY `fk_fwwnhghowbqvxepclxcvjnsnkdtettoewujo` (`parentId`),
  CONSTRAINT `fk_fwwnhghowbqvxepclxcvjnsnkdtettoewujo` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_wjswepzrulmoylnokzpuaywdfbdkzjemelfb` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_yyunfwnegthhhitlfpluuimvucrzilthkgvo` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categorygroups`
--

DROP TABLE IF EXISTS `categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorygroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structureId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fmftpinacjjobtdfviiioejmmjexdlpunsuk` (`name`),
  KEY `idx_ftgqffdvcwutmhvvnzjxluenwpnfwkamcywp` (`handle`),
  KEY `idx_xwhtvhgfplrjgokqmzynljwgfbgkkudwyguo` (`structureId`),
  KEY `idx_fuppihdfbahcqhywctunidarzzaxiyrgffxm` (`fieldLayoutId`),
  KEY `idx_ngbmiocgqmnyewbijedifcokanikqjlhahev` (`dateDeleted`),
  CONSTRAINT `fk_ehtmvxvycwosrpckmeeqwkalnbhavyodqbqs` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_krrcizeswmsxcdaewstjcrriicgigxwevoeu` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categorygroups_sites`
--

DROP TABLE IF EXISTS `categorygroups_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorygroups_sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `groupId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mawqbprsesupighkbyvimvwredzsbbxzaofr` (`groupId`,`siteId`),
  KEY `idx_kxxwhggmkanbxrvwfvjpinupwqvwjsvtpghg` (`siteId`),
  CONSTRAINT `fk_dnbzdgfeobobgewssddxnksxditpsgodfxbe` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_wgcywqwwkuhncsnxiatdmobddvlaiikwbswh` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changedattributes`
--

DROP TABLE IF EXISTS `changedattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changedattributes` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  KEY `idx_ovmdptbsngqhtpfbpouhhtpjetpegwpnquoe` (`elementId`,`siteId`,`dateUpdated`),
  KEY `fk_ysvzzyvmoehsxjaphnigsbwkxkxybxoioqbf` (`siteId`),
  KEY `fk_exzxxcmcxjtfhyrsbcqakalqdizmfzyljsof` (`userId`),
  CONSTRAINT `fk_exzxxcmcxjtfhyrsbcqakalqdizmfzyljsof` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_nplpcjgmbkgndlzozzysepgngsmbvrkajyej` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ysvzzyvmoehsxjaphnigsbwkxkxybxoioqbf` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changedfields`
--

DROP TABLE IF EXISTS `changedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changedfields` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `fieldId` int NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  KEY `idx_lgyaqgiekfstypuecvdlwsifsulhkaqvxnil` (`elementId`,`siteId`,`dateUpdated`),
  KEY `fk_ngnarvsbdwioplmrdsotuhmtsxpttzexxtwo` (`siteId`),
  KEY `fk_vxmipuufxewylcgocktuoqrsmptvhsgrhawa` (`fieldId`),
  KEY `fk_lzbqdyxsahvyxlobpxsrskinjzfhgrqenahz` (`userId`),
  CONSTRAINT `fk_jftcgmhuyliebbzjdfmqceanqmfmsguyiepw` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lzbqdyxsahvyxlobpxsrskinjzfhgrqenahz` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_ngnarvsbdwioplmrdsotuhmtsxpttzexxtwo` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vxmipuufxewylcgocktuoqrsmptvhsgrhawa` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_body_bfcjeggh` text,
  `field_shape_ojeccuwi` varchar(7) DEFAULT NULL,
  `field_price` decimal(12,2) DEFAULT NULL,
  `field_rating_dwjuhuab` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_itzleunswssmnqbbyojomsbljywqsyqvlqke` (`elementId`,`siteId`),
  KEY `idx_kbkbtxytcfkgbwjjmhilfjglccrjgcqjxbir` (`siteId`),
  KEY `idx_kgodohcffliaszlflnrldcfmcpnexuiflggd` (`title`),
  CONSTRAINT `fk_giabduqatalthspbiirnoybbjixxxnryprdo` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ruwolucikpusyvzrzkzjcpnzuencxftsducw` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `craftidtokens`
--

DROP TABLE IF EXISTS `craftidtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craftidtokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_lasilzurjqmzxxlpyljwpgocqolzxwrgkqxe` (`userId`),
  CONSTRAINT `fk_lasilzurjqmzxxlpyljwpgocqolzxwrgkqxe` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecationerrors`
--

DROP TABLE IF EXISTS `deprecationerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecationerrors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint unsigned DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mvaoahhntidazhrdoxldrbwhokpscuzwnrpj` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drafts`
--

DROP TABLE IF EXISTS `drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drafts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `canonicalId` int DEFAULT NULL,
  `creatorId` int DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_ijfvqkcypuosvlhzhtelagexoklxhbwjmjql` (`creatorId`,`provisional`),
  KEY `idx_gethfufbekjuchnjdtkbukhsylthowrnthey` (`saved`),
  KEY `fk_gcombilgafjnwutybriqswsqdqwcrwewkdql` (`canonicalId`),
  CONSTRAINT `fk_gcombilgafjnwutybriqswsqdqwcrwewkdql` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qngsggstddtrmortgpijgdutqmzdvxyqmdmh` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `elementactivity`
--

DROP TABLE IF EXISTS `elementactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementactivity` (
  `elementId` int NOT NULL,
  `userId` int NOT NULL,
  `siteId` int NOT NULL,
  `draftId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`elementId`,`userId`,`type`),
  KEY `idx_gwmnunostvhjqqiopgqlzcnqxforhmdtejvg` (`elementId`,`timestamp`,`userId`),
  KEY `fk_xssddecspybyhlfbvxkchrzjlgppgcmgvwfv` (`userId`),
  KEY `fk_qnscjigtniiawloqribuwiyxnldgwvplczjj` (`siteId`),
  KEY `fk_bcpszitjujhvtitemzamyqldyvyahnejowns` (`draftId`),
  CONSTRAINT `fk_bcpszitjujhvtitemzamyqldyvyahnejowns` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qnscjigtniiawloqribuwiyxnldgwvplczjj` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_trlssyexstartszebhzjkvqquyupxwfkclqu` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_xssddecspybyhlfbvxkchrzjlgppgcmgvwfv` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `elements_sites`
--

DROP TABLE IF EXISTS `elements_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `authorId` int DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iqfmfrwsrwzwtlhyybpgmljgmnjksjyeewny` (`postDate`),
  KEY `idx_waiuvyknmcwuvjifdvqvhdscafdzxmrkvcpe` (`expiryDate`),
  KEY `idx_asfnatxszozcqcqihcqujgvprtbsoqlnuhzv` (`authorId`),
  KEY `idx_nsvxzyynkzeywqrebxrcdomnbybrgtocimtc` (`sectionId`),
  KEY `idx_fisofrokwknjhfrufkvaecutbssctzqiknde` (`typeId`),
  KEY `fk_tclhmkfogszdqhgnbbqtwicqpyrclzvoqyre` (`parentId`),
  CONSTRAINT `fk_arffqxpbymkkcfochlyoligafifefelxacda` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gjwxxjclrnfdtydnvfwfxukhobabmpwbgrbd` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qhlenknaitkxroweflqimaofvatoolwyrkyx` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_tclhmkfogszdqhgnbbqtwicqpyrclzvoqyre` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_viotmohnoulzywbathjqhcdbgudbdoospzgn` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entrytypes`
--

DROP TABLE IF EXISTS `entrytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrytypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sectionId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `slugTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `slugTranslationKeyFormat` text,
  `showStatusField` tinyint(1) DEFAULT '1',
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ylkkdakxojlwmlyhviiqzzsgjpopcwbowncl` (`name`,`sectionId`),
  KEY `idx_awonjudyeesxvoirrbsagqkvkzgwgmsxdiek` (`handle`,`sectionId`),
  KEY `idx_pzfyokgiqqwcyyrbrnkwikisvvzbqlcglpco` (`sectionId`),
  KEY `idx_kfkewnyoarthsqqwhrqbygppomhxxqlmrlbi` (`fieldLayoutId`),
  KEY `idx_inmrrewehxgcmadallsvrycckizbuuxlyjno` (`dateDeleted`),
  CONSTRAINT `fk_vafregxsulhjivkhqymwwxhwfjgnwibhocko` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_ygcakezlvnmtngyutxmahuwpcavuerovjavg` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_xcvhsdgqsduzstzglsmqnvigytdrtqmcqsbr` (`name`),
  KEY `idx_czwfsstwczhgdbjxxjbhvsqbdjvjevtoaens` (`dateDeleted`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldlayoutfields`
--

DROP TABLE IF EXISTS `fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `fieldlayouts`
--

DROP TABLE IF EXISTS `fieldlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayouts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_honrqwfxrpdwqnzfftiodwyenjqjeietexjm` (`dateDeleted`),
  KEY `idx_rgicrajjbazohokkxrshwwnfeqrakbysqmwj` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldlayouttabs`
--

DROP TABLE IF EXISTS `fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `globalsets`
--

DROP TABLE IF EXISTS `globalsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalsets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_xrzfpkcqehkifjoejurkfmmumrbgdmxkrbsh` (`name`),
  KEY `idx_mkomukmokgbbdwjwklsghtjkhrxphvyngour` (`handle`),
  KEY `idx_axlmjtrncqyhrpmpfnvgpedsxwcbzvxavrmh` (`fieldLayoutId`),
  KEY `idx_xyzvfywmamxauxlobefbkkygettxybqlmayo` (`sortOrder`),
  CONSTRAINT `fk_fcppqktqbgwuwwsnfhchicpdyfabtmjedwri` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ohpsobadopsceygwslouhmvpitqnyaviihxv` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gqlschemas`
--

DROP TABLE IF EXISTS `gqlschemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gqlschemas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gqltokens`
--

DROP TABLE IF EXISTS `gqltokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gqltokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_qmkirzcxebgwbafntyhjasthrzlnlhdzasdj` (`accessToken`),
  UNIQUE KEY `idx_vijhpdtpdxuyvtzbfvyeskufonqrniligeit` (`name`),
  KEY `fk_vxgztuydsjhwurwdmhkycjkaxfzgixorlisz` (`schemaId`),
  CONSTRAINT `fk_vxgztuydsjhwurwdmhkycjkaxfzgixorlisz` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imagetransformindex`
--

DROP TABLE IF EXISTS `imagetransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `imagetransforms`
--

DROP TABLE IF EXISTS `imagetransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagetransforms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop','letterbox') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `fill` varchar(11) DEFAULT NULL,
  `upscale` tinyint(1) NOT NULL DEFAULT '1',
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_gsmjdstfanwcsncyjjswqiteyycnlnavexkq` (`name`),
  KEY `idx_jmexgfwgdczfvnwdcdsaocoixxjuvijbiich` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matrixblocks`
--

DROP TABLE IF EXISTS `matrixblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixblocks` (
  `id` int NOT NULL,
  `primaryOwnerId` int NOT NULL,
  `fieldId` int NOT NULL,
  `typeId` int NOT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cmsypysjflwpgxaggtoyvrhcyoudhlpyvycq` (`primaryOwnerId`),
  KEY `idx_otcoifudrhlvkjwllsxpogsstrsdwmyuevpj` (`fieldId`),
  KEY `idx_qgbrdjpbhpwsapwbukkcmffvnnvlpgpxwixr` (`typeId`),
  CONSTRAINT `fk_muaudpmbrvpsqeprqaabewbtqyigaiayuhva` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_npqmpuhvfodjsqbpsntahjrjzkfqeotrehps` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qhhobslnqwvquyoiklfwankluscnyfwsvsin` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ubtuhreuqjehpwbggvqcdwkfdfxodoqxlbqx` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matrixblocks_owners`
--

DROP TABLE IF EXISTS `matrixblocks_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixblocks_owners` (
  `blockId` int NOT NULL,
  `ownerId` int NOT NULL,
  `sortOrder` smallint unsigned NOT NULL,
  PRIMARY KEY (`blockId`,`ownerId`),
  KEY `fk_lnogaymmgelondobfhfxuyexumrkdbzkudwj` (`ownerId`),
  CONSTRAINT `fk_ipckjzmzgpeosqgpjnisyhmnsfqsuwkviapw` FOREIGN KEY (`blockId`) REFERENCES `matrixblocks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_lnogaymmgelondobfhfxuyexumrkdbzkudwj` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matrixblocktypes`
--

DROP TABLE IF EXISTS `matrixblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixblocktypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fieldId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_afvqnjebpdhuepiqfttkehturpsosmlpbeeb` (`name`,`fieldId`),
  KEY `idx_rctajltupwnaghvjjoodbdwoaqtelbkhqccd` (`handle`,`fieldId`),
  KEY `idx_plzpvbykizjgzssfdmylszpwzldffgowpyvg` (`fieldId`),
  KEY `idx_vsuwcasnyawwummwpginvreqpfoiaqvkvafl` (`fieldLayoutId`),
  CONSTRAINT `fk_ilzpffbtoekvdrrrfbhknffuxcrleykbneku` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_mmopmtlgjhkyjccrnvujtrzjzizwsaoeosie` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matrixcontent_navigation`
--

DROP TABLE IF EXISTS `matrixcontent_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixcontent_navigation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_navigation_navname_ehppnbqf` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_avucrrzjjykdyxmhjtewbbneofjodelosqsf` (`elementId`,`siteId`),
  KEY `fk_qnujpuebckfsmbhjehmxshdmlqcjohmrdhoi` (`siteId`),
  CONSTRAINT `fk_qnujpuebckfsmbhjehmxshdmlqcjohmrdhoi` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yaosfczknrrpmkdkreftkbqeqyazykygobva` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_lvhlzquuwrgaslwszgmobdqjtwpjgdsysiki` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectconfig`
--

DROP TABLE IF EXISTS `projectconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queue`
--

DROP TABLE IF EXISTS `queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int NOT NULL,
  `ttr` int NOT NULL,
  `delay` int NOT NULL DEFAULT '0',
  `priority` int unsigned NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int DEFAULT NULL,
  `progress` smallint NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text,
  PRIMARY KEY (`id`),
  KEY `idx_ulnoilbakrqupzkriecnavgzmpzwmqbqzjvb` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  KEY `idx_wvqgqulebpjnkpnttorychvybmowkgvyykup` (`channel`,`fail`,`timeUpdated`,`delay`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fieldId` int NOT NULL,
  `sourceId` int NOT NULL,
  `sourceSiteId` int DEFAULT NULL,
  `targetId` int NOT NULL,
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mhawhknjxsocslcpkhtbqbzwopavqbftencm` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  KEY `idx_nfipnhufpwnukmijmifaevqoywlpinpoehia` (`sourceId`),
  KEY `idx_yohripohhbiocmxhfrtjpqycpbwijsyfcedd` (`targetId`),
  KEY `idx_itcwobmhorniaccnwjdvjgewtzdudfpjmggi` (`sourceSiteId`),
  CONSTRAINT `fk_eqyotfcrdksiqjduwcaibixrjogiqjhahybk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gqffvntkfaqinwwkfrbnwhzyokrcjxrvdmgt` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_oinbrobyhqglctwmbsghhykbrtudttwxbzmn` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resourcepaths`
--

DROP TABLE IF EXISTS `resourcepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `canonicalId` int NOT NULL,
  `creatorId` int DEFAULT NULL,
  `num` int NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_xmhdqviiuzdevucllvagepnobtdxcrsboyxn` (`canonicalId`,`num`),
  KEY `fk_pyfwjfvhvynunhfhnfmeqfftetuaxhafwgmj` (`creatorId`),
  CONSTRAINT `fk_btlkqthzisjvqtlbpbuxqqmvghggxtejszvf` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pyfwjfvhvynunhfhnfmeqfftetuaxhafwgmj` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `searchindex`
--

DROP TABLE IF EXISTS `searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structureId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ucsgvpjksgcxkxmncnqcliqpwlsozspewmae` (`handle`),
  KEY `idx_roqaonyjoxhezxhrxuacdiiiyyzuyfxgscdo` (`name`),
  KEY `idx_perwcshtcrhmifnuppavhpplssbnljcznxnr` (`structureId`),
  KEY `idx_nnclohphoyrkjmdemfqdaozppcbslmatkbze` (`dateDeleted`),
  CONSTRAINT `fk_slrmpfedxczsdboqjqckgbldgpwuxnhipzxu` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sections_sites`
--

DROP TABLE IF EXISTS `sections_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections_sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sectionId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_kstlaqzopbhvucfzdzyljrorxqownobzxfvt` (`sectionId`,`siteId`),
  KEY `idx_kjjnlrdpgxxtbnolmixvmoobgxwlphrcwcui` (`siteId`),
  CONSTRAINT `fk_lkduullknnfceprlychdpobqgoyeclqxpwnk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_mfrdylnzvilwjfbzjksyvshcolebycuyytlp` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sequences`
--

DROP TABLE IF EXISTS `sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shunnedmessages`
--

DROP TABLE IF EXISTS `shunnedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shunnedmessages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_bksqzxazongpbgrdvojdefqqxdosvsvkbpih` (`userId`,`message`),
  CONSTRAINT `fk_tpshudejqzenbiksutcyossqwapeksadykim` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sitegroups`
--

DROP TABLE IF EXISTS `sitegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitegroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rpmkphxmlailpgyudhilbomlmavsnizmfaqd` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `groupId` int NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ozdsouvsqsncoyoflnbmykcgskraqqobyrbd` (`dateDeleted`),
  KEY `idx_mzohpzrfcdeutwlcyaxwmhxjsllmzcbifmta` (`handle`),
  KEY `idx_xflrblumwgrsdcwkfyksfbyzaijdqdnxdjhe` (`sortOrder`),
  KEY `fk_ovtugdywyhcccvnxfxmnbdxxyanlrhufxzye` (`groupId`),
  CONSTRAINT `fk_ovtugdywyhcccvnxfxmnbdxxyanlrhufxzye` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `structureelements`
--

DROP TABLE IF EXISTS `structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structureelements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structureId` int NOT NULL,
  `elementId` int DEFAULT NULL,
  `root` int unsigned DEFAULT NULL,
  `lft` int unsigned NOT NULL,
  `rgt` int unsigned NOT NULL,
  `level` smallint unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_wsoakvklzvtyyrwjltospibsgwgyjnvbcvtm` (`structureId`,`elementId`),
  KEY `idx_mjohfiosyngwpxajozrnimsptnfgvgzjbcsn` (`root`),
  KEY `idx_peyexpdfipmdzoeknqvzxkqonwlkbdpajgtt` (`lft`),
  KEY `idx_nwbvjjxrhbhatqgaexaxwwqasbpcybuspybd` (`rgt`),
  KEY `idx_tmiuvsotrvfjytyefxqhziebiuozsqpqvcgc` (`level`),
  KEY `idx_vtcssjrvejppnulktswinlgmdyuwiuocbyjd` (`elementId`),
  CONSTRAINT `fk_znwtwgnfcwunpypgepnixasjxbmxqrttjina` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `structures`
--

DROP TABLE IF EXISTS `structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_neepvskblnirupjxulcowmtzgkvstwegpxmu` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `systemmessages`
--

DROP TABLE IF EXISTS `systemmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemmessages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_nkfsmzrnscpenbzramesdiowaeddidmrseru` (`key`,`language`),
  KEY `idx_ycmawbxcdsqjrzffutsehadcqcqbitobxqah` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `taggroups`
--

DROP TABLE IF EXISTS `taggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_hcmiaieoybapyhvhcpdnuilwfxtarihyvzgv` (`name`),
  KEY `idx_mryoayzaupflsfimkouvqbltftumstlsgflp` (`handle`),
  KEY `idx_eqdpaeoejymeguxuryzinqfitpylfrrpdxau` (`dateDeleted`),
  KEY `fk_uytzghsslnlhjkirsdahqrdahmfrxlqwhmeb` (`fieldLayoutId`),
  CONSTRAINT `fk_uytzghsslnlhjkirsdahqrdahmfrxlqwhmeb` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fmilbkbnnizktzodxnbjsuhccprpktwsuljb` (`groupId`),
  CONSTRAINT `fk_maiveulovlkzzrxjhqszblfwstnqjsqesnuq` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_olkygkwvqpwgocmvqnjhytawqzwynqspufwf` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint unsigned DEFAULT NULL,
  `usageCount` tinyint unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_qopeivufruiqpghaoeifkkzbrtrmciirhrid` (`token`),
  KEY `idx_upctqyhvndpooppvpccthhqizgxrzklkcjjd` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_mceihbjqlrcbmwosjhdiejmjnpbyeeoswfac` (`handle`),
  KEY `idx_mwaybajonydnvlclxzdtwdfbziwyaiuegdme` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usergroups_users`
--

DROP TABLE IF EXISTS `usergroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `groupId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_zyaocrpqhedgiedoripteopwjhdntbqbuyiv` (`groupId`,`userId`),
  KEY `idx_wdgisxmqqbzwzackbepnyeoykypeipzyjncr` (`userId`),
  CONSTRAINT `fk_rahzzrjsxiiuhpmqeixqvntzperjwrxzuzhb` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_romjhajdqjhylzaqaxnzjydogfsagsnhttxa` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userpermissions`
--

DROP TABLE IF EXISTS `userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_zceohwjbkskreyaqqsnptrpdzjegiyaivcqk` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userpermissions_usergroups`
--

DROP TABLE IF EXISTS `userpermissions_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions_usergroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permissionId` int NOT NULL,
  `groupId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_wbxhmckdqdjkpydemlkmjkywfrxecurrprok` (`permissionId`,`groupId`),
  KEY `idx_yucbtoudwjkuwgyvptraqhgteqcfgendcnvc` (`groupId`),
  CONSTRAINT `fk_lgxbmanfjsulcozbxhjmwbldxpwjqhaqftnq` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_vzerotyeqnaaxamhytaxdajvorzgxjovuaci` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userpermissions_users`
--

DROP TABLE IF EXISTS `userpermissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permissionId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_jpgtcfqjfzuybihpczxhsxfjudxgihhlawnm` (`permissionId`,`userId`),
  KEY `idx_psfxbaenqjlkqrgzkpjxqnsufgmehvcrrupz` (`userId`),
  CONSTRAINT `fk_avotuawribpeufdtxwtzdzncuikllqiihhdf` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_kcodicqvxcacsqhollhdiesoaumywukqpsnn` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userpreferences`
--

DROP TABLE IF EXISTS `userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpreferences` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `preferences` text,
  PRIMARY KEY (`userId`),
  CONSTRAINT `fk_yxdaybceefacunrhccjdohtxzjcxrttacflg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `photoId` int DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_avqqmxvnhxnemrckcozsyhxsogjczyykzicp` (`active`),
  KEY `idx_zkwzzdgrmvgkaobvjwpectndiefrbhrbmvjj` (`locked`),
  KEY `idx_vttgufydtbdzbpbtuytziazvpkbxlstxigom` (`pending`),
  KEY `idx_eocjuswabmotugfngkqkyrhullilzffmtmlc` (`suspended`),
  KEY `idx_jaknfkabqclodxbdxbrsrzxkplyzniclcbje` (`verificationCode`),
  KEY `idx_ghmbzohtiobnbntewxzoaddamghdzzdubdrt` (`email`),
  KEY `idx_stpjpirjvrnibdejnmbuggprlrexqcouceyz` (`username`),
  KEY `fk_jcaxukfpvjuqugxrrivoxnojmqsqysrcscik` (`photoId`),
  CONSTRAINT `fk_jcaxukfpvjuqugxrrivoxnojmqsqysrcscik` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_mgfqkdwvczuazewcoaxibfsfknglzvnlxmbx` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `volumefolders`
--

DROP TABLE IF EXISTS `volumefolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumefolders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentId` int DEFAULT NULL,
  `volumeId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_dcdwvvhwxomxalkpkulvnqmzxpiyszswwfly` (`name`,`parentId`,`volumeId`),
  KEY `idx_ttvprazeedurnszxyhtuniujovvdoucywrro` (`parentId`),
  KEY `idx_mzpbpilngxiigktjqralblrugjtrgveavarj` (`volumeId`),
  CONSTRAINT `fk_firszhbtvhqdilncpbdmdursixzmarnetusu` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_umipdtgemgrmcuisebulqpkeiftlhjptkrgc` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `volumes`
--

DROP TABLE IF EXISTS `volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `sortOrder` smallint unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_dwrgefplhdeacjpxfqzcvuwahtgkvhcckohs` (`name`),
  KEY `idx_bapruqxlenofyfvdtrcsooklouklmjnuewzc` (`handle`),
  KEY `idx_gevvmyyxqrvtrnwnsqqsyfwbolcgqqtrgwwi` (`fieldLayoutId`),
  KEY `idx_nccfccyjsxphvnadmygzlrrzbdednbhucusx` (`dateDeleted`),
  CONSTRAINT `fk_lauewxzctsdqdzsnpveedwpsiatavdxlrgyj` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wheelform_form_fields`
--

DROP TABLE IF EXISTS `wheelform_form_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wheelform_form_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `required` tinyint NOT NULL DEFAULT '0',
  `index_view` tinyint NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ktwvidwmllksspmjclpniquofbrvmkkgzpeu` (`active`),
  KEY `fk_jfpdjgennettbdjnfxjowwbxjwioqchjxtlk` (`form_id`),
  CONSTRAINT `fk_jfpdjgennettbdjnfxjowwbxjwioqchjxtlk` FOREIGN KEY (`form_id`) REFERENCES `wheelform_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wheelform_forms`
--

DROP TABLE IF EXISTS `wheelform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wheelform_forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `send_email` tinyint NOT NULL DEFAULT '0',
  `recaptcha` tinyint NOT NULL DEFAULT '0',
  `save_entry` tinyint NOT NULL DEFAULT '1',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_ztwkaconadexkjatipsjpldebnwitoxffree` (`site_id`),
  CONSTRAINT `fk_ztwkaconadexkjatipsjpldebnwitoxffree` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wheelform_message_values`
--

DROP TABLE IF EXISTS `wheelform_message_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `wheelform_messages`
--

DROP TABLE IF EXISTS `wheelform_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wheelform_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_id` int NOT NULL,
  `read` tinyint NOT NULL DEFAULT '0',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_fbxxzifbncwmmuhxgxruwkejrfkugpwoearv` (`form_id`),
  CONSTRAINT `fk_fbxxzifbncwmmuhxgxruwkejrfkugpwoearv` FOREIGN KEY (`form_id`) REFERENCES `wheelform_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint unsigned DEFAULT NULL,
  `colspan` tinyint DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_jgdyybsywgcncdmrttuqvlxmepnjpcivvrmg` (`userId`),
  CONSTRAINT `fk_gxvdquubpaqlhptrwdtkrbaypcelsicbfvtg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 13:31:02
-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: db
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `assetindexingsessions`
--

LOCK TABLES `assetindexingsessions` WRITE;
/*!40000 ALTER TABLE `assetindexingsessions` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `assetindexingsessions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `assets` VALUES (16,1,1,1,'378233798_1772485156541432_2900207488565928624_n.jpg','image',NULL,1536,2048,155176,NULL,NULL,NULL,'2023-10-26 09:22:18','2023-10-26 09:22:18','2023-10-26 09:22:18'),(23,1,1,1,'378233798_1772485156541432_2900207488565928624_n_2023-10-26-093016_gsqd.jpg','image',NULL,1536,2048,155176,NULL,NULL,NULL,'2023-10-26 09:30:16','2023-10-26 09:30:16','2023-10-26 09:30:16'),(42,1,1,1,'Smartschool_app_icon_orange.png','image',NULL,142,145,7013,NULL,NULL,NULL,'2023-10-26 13:55:06','2023-10-26 13:55:06','2023-10-26 13:55:06'),(46,1,1,1,'case.jpg','image',NULL,1205,1205,109776,NULL,NULL,NULL,'2023-10-26 14:11:18','2023-10-26 14:11:18','2023-10-26 14:11:18'),(50,1,1,1,'iphone-15.jpg','image',NULL,2000,2000,445278,NULL,NULL,NULL,'2023-10-26 14:12:37','2023-10-26 14:12:37','2023-10-26 14:12:37'),(53,1,1,1,'S23-ultra.jpg','image',NULL,1600,1600,214074,NULL,NULL,NULL,'2023-10-26 14:14:51','2023-10-26 14:14:51','2023-10-26 14:14:51'),(59,1,1,1,'ipad.jpg','image',NULL,5120,2880,706037,NULL,NULL,NULL,'2023-10-26 14:21:03','2023-10-26 14:21:03','2023-10-26 14:21:03'),(62,1,1,1,'acer.jpg','image',NULL,1600,1600,209958,NULL,NULL,NULL,'2023-10-26 14:22:52','2023-10-26 14:22:52','2023-10-26 14:22:52'),(65,1,1,1,'airpods.jpg','image',NULL,1144,1144,54596,NULL,NULL,NULL,'2023-10-26 14:23:59','2023-10-26 14:23:59','2023-10-26 14:23:59'),(68,1,1,1,'msi.jpg','image',NULL,1024,819,266733,NULL,NULL,NULL,'2023-10-26 14:25:05','2023-10-26 14:25:05','2023-10-26 14:25:05'),(71,1,1,1,'airtag.jpg','image',NULL,2000,2000,135748,NULL,NULL,NULL,'2023-10-26 14:25:53','2023-10-26 14:25:53','2023-10-26 14:25:53'),(74,1,1,1,'macbook.jpg','image',NULL,1200,630,125356,NULL,NULL,NULL,'2023-10-26 14:30:22','2023-10-26 14:30:22','2023-10-26 14:30:22');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `categories` VALUES (33,1,NULL,NULL,'2023-10-26 13:09:20','2023-10-26 13:09:20'),(34,1,NULL,NULL,'2023-10-26 13:09:46','2023-10-26 13:09:46'),(35,1,NULL,NULL,'2023-10-26 13:09:55','2023-10-26 13:09:55');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `categorygroups`
--

LOCK TABLES `categorygroups` WRITE;
/*!40000 ALTER TABLE `categorygroups` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `categorygroups` VALUES (1,2,6,'Product Categories','productCategories','end','2023-10-26 13:06:45','2023-10-26 13:06:45',NULL,'f0179ba9-b210-44a5-94ad-aec8a17fb158');
/*!40000 ALTER TABLE `categorygroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `categorygroups_sites`
--

LOCK TABLES `categorygroups_sites` WRITE;
/*!40000 ALTER TABLE `categorygroups_sites` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `categorygroups_sites` VALUES (1,1,1,1,'categories/{slug}','pages/_products.twig','2023-10-26 13:06:45','2023-10-26 13:51:46','f6c5afd3-b614-47c7-bf32-310335c2e027');
/*!40000 ALTER TABLE `categorygroups_sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `changedattributes`
--

LOCK TABLES `changedattributes` WRITE;
/*!40000 ALTER TABLE `changedattributes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `changedattributes` VALUES (3,1,'postDate','2023-10-26 08:09:07',0,1),(3,1,'slug','2023-10-26 08:08:15',0,1),(3,1,'title','2023-10-26 09:58:56',0,1),(3,1,'uri','2023-10-26 08:08:15',0,1),(9,1,'postDate','2023-10-26 08:15:46',0,1),(9,1,'slug','2023-10-26 08:15:42',0,1),(9,1,'title','2023-10-26 08:15:42',0,1),(9,1,'uri','2023-10-26 08:15:42',0,1),(33,1,'slug','2023-10-26 13:09:40',0,1),(33,1,'title','2023-10-26 13:09:42',0,1),(33,1,'uri','2023-10-26 13:09:40',0,1),(34,1,'slug','2023-10-26 13:09:50',0,1),(34,1,'title','2023-10-26 13:09:50',0,1),(34,1,'uri','2023-10-26 13:09:50',0,1),(35,1,'slug','2023-10-26 13:09:58',0,1),(35,1,'title','2023-10-26 13:09:58',0,1),(35,1,'uri','2023-10-26 13:09:58',0,1),(36,1,'postDate','2023-10-26 13:14:34',0,1),(36,1,'slug','2023-10-26 13:10:38',0,1),(36,1,'title','2023-10-26 14:14:15',0,1),(36,1,'uri','2023-10-26 13:10:38',0,1),(40,1,'postDate','2023-10-26 13:48:32',0,1),(40,1,'slug','2023-10-26 13:48:23',0,1),(40,1,'title','2023-10-26 14:20:31',0,1),(40,1,'uri','2023-10-26 13:48:23',0,1),(52,1,'postDate','2023-10-26 14:15:40',0,1),(52,1,'slug','2023-10-26 14:14:47',0,1),(52,1,'title','2023-10-26 14:14:47',0,1),(52,1,'uri','2023-10-26 14:14:47',0,1),(58,1,'postDate','2023-10-26 14:21:14',0,1),(58,1,'slug','2023-10-26 14:20:40',0,1),(58,1,'title','2023-10-26 14:20:40',0,1),(58,1,'uri','2023-10-26 14:20:40',0,1),(61,1,'postDate','2023-10-26 14:23:27',0,1),(61,1,'slug','2023-10-26 14:22:11',0,1),(61,1,'title','2023-10-26 14:22:11',0,1),(61,1,'uri','2023-10-26 14:22:11',0,1),(64,1,'postDate','2023-10-26 14:24:34',0,1),(64,1,'slug','2023-10-26 14:24:04',0,1),(64,1,'title','2023-10-26 14:24:04',0,1),(64,1,'uri','2023-10-26 14:24:04',0,1),(67,1,'postDate','2023-10-26 14:25:19',0,1),(67,1,'slug','2023-10-26 14:24:43',0,1),(67,1,'title','2023-10-26 14:24:43',0,1),(67,1,'uri','2023-10-26 14:24:43',0,1),(70,1,'postDate','2023-10-26 14:26:04',0,1),(70,1,'slug','2023-10-26 14:25:28',0,1),(70,1,'title','2023-10-26 14:25:30',0,1),(70,1,'uri','2023-10-26 14:25:28',0,1),(73,1,'postDate','2023-10-26 14:30:31',0,1),(73,1,'slug','2023-10-26 14:29:55',0,1),(73,1,'title','2023-10-26 14:29:55',0,1),(73,1,'uri','2023-10-26 14:29:55',0,1),(80,1,'postDate','2023-10-29 14:09:54',0,1),(80,1,'slug','2023-10-29 14:09:20',0,1),(80,1,'title','2023-10-29 14:09:20',0,1),(80,1,'uri','2023-10-29 14:09:20',0,1);
/*!40000 ALTER TABLE `changedattributes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `changedfields`
--

LOCK TABLES `changedfields` WRITE;
/*!40000 ALTER TABLE `changedfields` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `changedfields` VALUES (3,1,4,'2023-10-26 14:58:08',0,1),(3,1,5,'2023-10-26 09:30:18',0,1),(3,1,6,'2023-10-26 09:50:35',0,1),(9,1,4,'2023-10-26 08:15:45',0,1),(9,1,6,'2023-10-26 09:50:41',0,1),(36,1,4,'2023-10-26 14:14:15',0,1),(36,1,5,'2023-10-26 14:14:15',0,1),(36,1,7,'2023-10-26 14:14:15',0,1),(36,1,8,'2023-10-26 13:14:16',0,1),(36,1,9,'2023-10-29 18:16:13',0,1),(40,1,4,'2023-10-26 14:12:14',0,1),(40,1,5,'2023-10-26 14:12:14',0,1),(40,1,7,'2023-10-26 15:12:36',0,1),(40,1,8,'2023-10-26 13:48:31',0,1),(40,1,9,'2023-10-29 18:16:07',0,1),(52,1,4,'2023-10-26 14:15:39',0,1),(52,1,5,'2023-10-26 14:14:51',0,1),(52,1,7,'2023-10-26 14:15:02',0,1),(52,1,8,'2023-10-26 14:15:06',0,1),(52,1,9,'2023-10-29 18:15:59',0,1),(58,1,4,'2023-10-26 14:20:55',0,1),(58,1,5,'2023-10-26 14:21:04',0,1),(58,1,7,'2023-10-26 14:21:09',0,1),(58,1,8,'2023-10-26 14:21:13',0,1),(61,1,4,'2023-10-26 14:22:48',0,1),(61,1,5,'2023-10-26 14:22:53',0,1),(61,1,7,'2023-10-26 14:23:20',0,1),(61,1,8,'2023-10-26 14:23:27',0,1),(61,1,9,'2023-10-29 18:15:51',0,1),(64,1,4,'2023-10-26 14:24:31',0,1),(64,1,5,'2023-10-26 14:24:00',0,1),(64,1,7,'2023-10-26 14:24:10',0,1),(64,1,8,'2023-10-26 14:24:13',0,1),(64,1,9,'2023-10-29 18:15:42',0,1),(67,1,4,'2023-10-26 14:24:59',0,1),(67,1,5,'2023-10-26 14:25:06',0,1),(67,1,7,'2023-10-26 14:25:13',0,1),(67,1,8,'2023-10-26 14:25:18',0,1),(67,1,9,'2023-10-29 18:15:36',0,1),(70,1,4,'2023-10-26 14:25:48',0,1),(70,1,5,'2023-10-26 14:25:54',0,1),(70,1,7,'2023-10-26 14:25:59',0,1),(70,1,8,'2023-10-26 14:26:02',0,1),(70,1,9,'2023-10-29 18:15:30',0,1),(73,1,4,'2023-10-26 14:30:16',0,1),(73,1,5,'2023-10-26 14:30:23',0,1),(73,1,7,'2023-10-26 14:30:27',0,1),(73,1,8,'2023-10-26 14:30:30',0,1),(73,1,9,'2023-10-29 18:15:23',0,1),(80,1,6,'2023-10-29 14:09:54',0,1);
/*!40000 ALTER TABLE `changedfields` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `content` VALUES (1,1,1,NULL,'2023-10-24 13:14:03','2023-10-24 13:14:03','18b6a9c0-fa0b-4edb-8c21-88428ca5f2df',NULL,NULL,NULL,NULL),(2,2,1,NULL,'2023-10-26 07:59:34','2023-10-26 08:23:50','077b59e5-50e5-4a0e-8d2a-d2cf23989ce6',NULL,NULL,NULL,NULL),(3,3,1,'About Me','2023-10-26 08:08:05','2023-10-26 14:58:08','70da94bb-0680-46b5-9c80-b08bc355c082','<p>Hello, I\'m Karim Matar, a student at Arteveldehogeschool in Belgium. I\'m currently 20 years old and in my second year of my graduate degree program. I\'m really passionate about programming and have been focusing on honing my skills in various web development technologies such as CSS, JavaScript, PHP, and HTML.</p><p>I also have experience working with databases, particularly with SQLite. It\'s been an exciting journey so far, and I\'m looking forward to exploring and mastering more aspects of web development as I continue my education. If you have any questions or need help with anything related to programming, feel free to ask!</p>','default',NULL,NULL),(4,4,1,'About','2023-10-26 08:09:07','2023-10-26 08:09:07','cdd7ecd0-388d-4be7-a1df-0b9995af6e00','<p>dsfkjhsdhfkdsj</p>',NULL,NULL,NULL),(5,5,1,NULL,'2023-10-26 08:11:59','2023-10-26 08:11:59','733efb6c-1289-4c34-870f-6988cca0f518',NULL,NULL,NULL,NULL),(6,6,1,'About','2023-10-26 08:12:40','2023-10-26 08:12:40','3e568cb7-c7d9-4906-bc62-28eb5998dc19','<p>dsfkjhsdhfkdsj</p>',NULL,NULL,NULL),(8,8,1,'About','2023-10-26 08:15:35','2023-10-26 08:15:35','1e0f08d5-817f-4a5a-9b9a-dc4337282204','<p>Klo 5ra tfoto btizi</p>',NULL,NULL,NULL),(9,9,1,'Contact','2023-10-26 08:15:37','2023-10-26 09:50:41','a53cbb0e-44dd-49fe-a008-f35d9291bba5','<p>dfsfsdfdsf\'é\"èy\'!\"éè§\'è!\"é\'</p>','contact',NULL,NULL),(10,10,1,'Contact','2023-10-26 08:15:46','2023-10-26 08:15:46','b7b7287a-42c3-498e-8e94-fcb69b2b7fe0','<p>dfsfsdfdsf\'é\"èy\'!\"éè§\'è!\"é\'</p>',NULL,NULL,NULL),(11,13,1,'About','2023-10-26 09:02:13','2023-10-26 09:02:13','9e68cd7c-1d94-4ce3-8ab5-e0344152a81d','<p>Klo 5ra tfoto btizi</p>',NULL,NULL,NULL),(14,16,1,'378233798 1772485156541432 2900207488565928624 n','2023-10-26 09:22:18','2023-10-26 09:22:18','56021a36-99a7-4473-9c33-5b610345fcc7',NULL,NULL,NULL,NULL),(16,18,1,'About','2023-10-26 09:22:35','2023-10-26 09:22:35','3208f5e2-bb85-4dad-90d7-f2813f9a5c5d','<p><img src=\"{asset:16:url||https://webstore-craftcms.ddev.site/assets/378233798_1772485156541432_2900207488565928624_n.jpg}\" alt=\"\" /></p>',NULL,NULL,NULL),(18,20,1,'About','2023-10-26 09:22:59','2023-10-26 09:22:59','2265eea1-1ed3-4a5f-841f-902147a56297','<p>Hey i\'m karim<img src=\"{asset:16:url||https://webstore-craftcms.ddev.site/assets/378233798_1772485156541432_2900207488565928624_n.jpg}\" alt=\"\" /></p>',NULL,NULL,NULL),(20,22,1,'About','2023-10-26 09:28:30','2023-10-26 09:28:30','7be8fe90-5ce5-4347-b0da-31c653902693',NULL,NULL,NULL,NULL),(21,23,1,'378233798 1772485156541432 2900207488565928624 n','2023-10-26 09:30:16','2023-10-26 09:30:16','71bff233-851b-4e8c-b6c7-46e8314c335e',NULL,NULL,NULL,NULL),(23,25,1,'About','2023-10-26 09:30:18','2023-10-26 09:30:18','16c64c03-f384-48da-8f19-d04d7be59e13',NULL,NULL,NULL,NULL),(24,26,1,'About','2023-10-26 09:48:34','2023-10-26 09:48:34','aa977388-1cdf-4bdc-aafa-6a69fe384f65',NULL,NULL,NULL,NULL),(25,27,1,'About','2023-10-26 09:50:35','2023-10-26 09:50:35','9f1dfb05-52d2-4e37-99d0-8a5702a1dc37',NULL,'default',NULL,NULL),(27,29,1,'Contact','2023-10-26 09:50:41','2023-10-26 09:50:41','8b520b4a-edb5-456c-be8c-1d8435dde443','<p>dfsfsdfdsf\'é\"èy\'!\"éè§\'è!\"é\'</p>','contact',NULL,NULL),(29,31,1,'About Me','2023-10-26 09:58:56','2023-10-26 09:58:56','69a38e12-1111-4b6d-b03c-c07143a74820',NULL,'default',NULL,NULL),(30,32,1,NULL,'2023-10-26 13:01:49','2023-10-26 13:01:49','148563bc-37fc-4927-a7df-2931b90712af',NULL,NULL,NULL,NULL),(31,33,1,'Accessories','2023-10-26 13:09:20','2023-10-26 13:09:43','827a1fba-ed81-4371-b0f2-d9e354678bab',NULL,NULL,NULL,NULL),(32,34,1,'Smart Phones','2023-10-26 13:09:46','2023-10-26 13:09:51','d9b1960c-78b2-4671-9027-cbd88d8a5067',NULL,NULL,NULL,NULL),(33,35,1,'Laptops','2023-10-26 13:09:55','2023-10-26 13:09:59','f1e1fdbe-c0f5-4249-9aa9-3c623e6e9caa',NULL,NULL,NULL,NULL),(34,36,1,'Iphone 15','2023-10-26 13:10:33','2023-10-29 18:16:13','8f0f74cc-515d-44ed-a839-6e05cc8123f8','<p>The iPhone 15 is Apple\'s latest smartphone, featuring a brilliant OLED display, a lightning-fast A16 Bionic chip, and an advanced camera system. It offers enhanced privacy and security, supports 5G connectivity, and boasts a sleek, water-resistant design. This model combines cutting-edge technology with style, setting new standards in the world of mobile devices.</p>',NULL,799.99,4),(35,37,1,'Iphone','2023-10-26 13:14:34','2023-10-26 13:14:34','db8a6f5c-177e-4b0e-b7eb-a9bfad024443','<p>This is iphone </p>',NULL,20.20,NULL),(36,38,1,'Iphone','2023-10-26 13:30:17','2023-10-26 13:30:17','6de97eb2-e5df-47a7-b5b8-c4b5c52214fe','<p>This is iphone </p>',NULL,20.20,NULL),(37,39,1,NULL,'2023-10-26 13:48:09','2023-10-26 13:48:09','caf99cef-cade-4a6f-976e-5cfa444dacf0',NULL,NULL,NULL,NULL),(38,40,1,'Phone Case','2023-10-26 13:48:16','2023-10-29 18:16:07','a1431b46-00b9-4133-8f94-e27f960686df','<p>A phone case is a protective accessory designed to safeguard your smartphone from damage due to drops, impacts, and daily wear and tear. Typically made from a variety of materials such as plastic, silicone, or leather, phone cases come in various styles and designs, offering both style and functionality. They are essential for preserving the appearance and functionality of your phone while allowing access to its buttons, ports, and camera. Whether you prefer a sleek, minimalist case or a vibrant, eye-catching design, a phone case is a practical and stylish addition to your mobile device.</p>',NULL,20.50,2),(39,41,1,'Phone case','2023-10-26 13:48:32','2023-10-26 13:48:32','d543e73d-360d-405d-891e-440c69deb30e','<p>A7A</p>',NULL,20.20,NULL),(40,42,1,'Smartschool app icon orange','2023-10-26 13:55:06','2023-10-26 13:55:06','895ba8af-dd39-4fe9-b552-66f41e5dfe7c',NULL,NULL,NULL,NULL),(42,44,1,'Iphone','2023-10-26 13:55:12','2023-10-26 13:55:12','e8a82ded-a139-4fc3-bee8-6e4638b91080','<p>This is iphone </p>',NULL,20.20,NULL),(43,45,1,'Iphone','2023-10-26 13:55:46','2023-10-26 13:55:46','167b1917-7557-4134-9ea6-48196d8a084e','<p>This is iphone </p>',NULL,20.20,NULL),(44,46,1,'Case','2023-10-26 14:11:18','2023-10-26 14:11:18','538b9175-cc85-4e46-9db1-b7619f0d9503',NULL,NULL,NULL,NULL),(46,48,1,'Phone case','2023-10-26 14:12:14','2023-10-26 14:12:14','283a07b0-1b25-4402-9e61-9561da8f5bff','<p>A phone case is a protective accessory designed to safeguard your smartphone from damage due to drops, impacts, and daily wear and tear. Typically made from a variety of materials such as plastic, silicone, or leather, phone cases come in various styles and designs, offering both style and functionality. They are essential for preserving the appearance and functionality of your phone while allowing access to its buttons, ports, and camera. Whether you prefer a sleek, minimalist case or a vibrant, eye-catching design, a phone case is a practical and stylish addition to your mobile device.</p>',NULL,20.00,NULL),(48,50,1,'Iphone 15','2023-10-26 14:12:37','2023-10-26 14:12:37','b712cc37-00b8-4dfc-8bfe-2066d99ecb1d',NULL,NULL,NULL,NULL),(49,51,1,'Iphone 15','2023-10-26 14:14:15','2023-10-26 14:14:15','21a04c3b-02ef-4477-bcec-4000d352e6d7','<p>The iPhone 15 is Apple\'s latest smartphone, featuring a brilliant OLED display, a lightning-fast A16 Bionic chip, and an advanced camera system. It offers enhanced privacy and security, supports 5G connectivity, and boasts a sleek, water-resistant design. This model combines cutting-edge technology with style, setting new standards in the world of mobile devices.</p>',NULL,799.99,NULL),(50,52,1,'Galaxy S23 Ultra','2023-10-26 14:14:38','2023-10-29 18:15:59','083be6de-0ce2-48fc-9fab-077b53553ffb','<p>The Samsung Galaxy S23 Ultra is the pinnacle of smartphone innovation, offering an exceptional blend of power and sophistication. It boasts a breathtaking Dynamic AMOLED display with vibrant colors and a high refresh rate, delivering an immersive viewing experience like never before.</p>',NULL,999.99,4),(51,53,1,'S23 ultra','2023-10-26 14:14:51','2023-10-26 14:14:51','606d62c1-b72b-4f40-93e7-9536f20c4805',NULL,NULL,NULL,NULL),(52,54,1,'Galaxy S23 Ultra','2023-10-26 14:15:40','2023-10-26 14:15:40','9224e9af-9e0c-4bca-b2fd-a5825068f535','<p>The Samsung Galaxy S23 Ultra is the pinnacle of smartphone innovation, offering an exceptional blend of power and sophistication. It boasts a breathtaking Dynamic AMOLED display with vibrant colors and a high refresh rate, delivering an immersive viewing experience like never before.</p>',NULL,999.99,NULL),(53,55,1,NULL,'2023-10-26 14:19:46','2023-10-26 14:19:46','6c58e7cf-0d65-4ac7-9742-f0ab434bb715',NULL,NULL,NULL,NULL),(55,57,1,'Phone Case','2023-10-26 14:20:31','2023-10-26 14:20:31','4cf4c5c6-a757-4d56-9b17-26cc75b0ec86','<p>A phone case is a protective accessory designed to safeguard your smartphone from damage due to drops, impacts, and daily wear and tear. Typically made from a variety of materials such as plastic, silicone, or leather, phone cases come in various styles and designs, offering both style and functionality. They are essential for preserving the appearance and functionality of your phone while allowing access to its buttons, ports, and camera. Whether you prefer a sleek, minimalist case or a vibrant, eye-catching design, a phone case is a practical and stylish addition to your mobile device.</p>',NULL,20.00,NULL),(56,58,1,'Ipad Pro','2023-10-26 14:20:33','2023-10-26 14:21:14','c019d73e-fb29-4ede-87fa-b647bad54c5d','<p><br />The iPad Pro is a premium tablet by Apple, designed to provide a powerful and versatile computing experience. It features a stunning Liquid Retina display with ProMotion technology for smooth scrolling and responsive touch. With the M1 chip, it offers remarkable performance, making it suitable for a wide range of tasks, from creative work to productivity.</p>',NULL,999.99,NULL),(57,59,1,'Ipad','2023-10-26 14:21:02','2023-10-26 14:21:02','faf856b9-b6c4-41e0-8e95-71a6bd6e3635',NULL,NULL,NULL,NULL),(58,60,1,'Ipad Pro','2023-10-26 14:21:14','2023-10-26 14:21:14','5dd5d9e7-61f7-4c19-82b0-a2665744ce7b','<p><br />The iPad Pro is a premium tablet by Apple, designed to provide a powerful and versatile computing experience. It features a stunning Liquid Retina display with ProMotion technology for smooth scrolling and responsive touch. With the M1 chip, it offers remarkable performance, making it suitable for a wide range of tasks, from creative work to productivity.</p>',NULL,999.99,NULL),(59,61,1,'Acer Laptop','2023-10-26 14:22:05','2023-10-29 18:15:51','729c0310-95c1-48f6-9d41-548c51d11e93','<p>Acer laptops are known for their combination of performance, value, and a range of options to suit various user needs. These laptops come in different series, offering diverse features and capabilities. Here\'s a general description of what you can expect from an Acer laptop:</p><p>Acer laptops are designed to provide a reliable and affordable computing experience for a wide range of users. They come in various sizes and form factors, from ultra-portable notebooks to robust gaming laptops and versatile 2-in-1 convertible models.</p>',NULL,750.50,4),(60,62,1,'Acer','2023-10-26 14:22:52','2023-10-26 14:22:52','840af014-9cb5-49ae-87e3-b6383de80f9e',NULL,NULL,NULL,NULL),(61,63,1,'Acer Laptop','2023-10-26 14:23:27','2023-10-26 14:23:27','77a24c3d-da74-4a98-80ff-054ab5aabd07','<p>Acer laptops are known for their combination of performance, value, and a range of options to suit various user needs. These laptops come in different series, offering diverse features and capabilities. Here\'s a general description of what you can expect from an Acer laptop:</p><p>Acer laptops are designed to provide a reliable and affordable computing experience for a wide range of users. They come in various sizes and form factors, from ultra-portable notebooks to robust gaming laptops and versatile 2-in-1 convertible models.</p>',NULL,750.50,NULL),(62,64,1,'Airpods Pro','2023-10-26 14:23:49','2023-10-29 18:15:42','b792b499-8cc7-40bb-9bef-318459a32565','<p>The AirPods Pro are the pinnacle of true wireless earbuds, offering a compact, in-ear design with active noise cancellation. They provide a truly immersive audio experience, with high-quality sound that adapts to your ear shape for a personalized fit.</p>',NULL,199.99,5),(63,65,1,'Airpods','2023-10-26 14:23:59','2023-10-26 14:23:59','29e5c88d-a465-492b-ac02-d48904ce3f52',NULL,NULL,NULL,NULL),(64,66,1,'Airpods Pro','2023-10-26 14:24:34','2023-10-26 14:24:34','f5c41f2a-1aef-4212-8500-8bb830875861','<p>The AirPods Pro are the pinnacle of true wireless earbuds, offering a compact, in-ear design with active noise cancellation. They provide a truly immersive audio experience, with high-quality sound that adapts to your ear shape for a personalized fit.</p>',NULL,199.99,NULL),(65,67,1,'MSI Laptop','2023-10-26 14:24:37','2023-10-29 18:15:36','2a9021d5-5720-4856-b048-bd8da52bc74d','<p>MSI (Micro-Star International) is renowned for its gaming laptops, known for their robust performance and cutting-edge gaming features. Here\'s a brief description of an MSI laptop:</p><p>MSI laptops are engineered for gamers and power users, delivering top-tier performance and innovative features. They come in various sizes and configurations to cater to a wide range of needs, from gaming and content creation to professional tasks.</p>',NULL,1200.00,3),(66,68,1,'Msi','2023-10-26 14:25:05','2023-10-26 14:25:05','6cdb9159-1648-4bbd-8168-98b64e165fda',NULL,NULL,NULL,NULL),(67,69,1,'MSI Laptop','2023-10-26 14:25:19','2023-10-26 14:25:19','e1d1ff5a-4c12-4b7c-b2aa-6fcf8e359392','<p>MSI (Micro-Star International) is renowned for its gaming laptops, known for their robust performance and cutting-edge gaming features. Here\'s a brief description of an MSI laptop:</p><p>MSI laptops are engineered for gamers and power users, delivering top-tier performance and innovative features. They come in various sizes and configurations to cater to a wide range of needs, from gaming and content creation to professional tasks.</p>',NULL,1200.00,NULL),(68,70,1,'Apple AirTag','2023-10-26 14:25:21','2023-10-29 18:15:30','8a61c655-fc34-4c87-9cbc-67d253b8ff2d','<p>AirTag is a compact and lightweight tracking device that can be easily attached to your belongings. It uses Bluetooth technology to connect to your Apple device, such as an iPhone, iPad, or Mac. With the Find My app, you can track the location of your tagged items with precision.</p>',NULL,29.99,5),(69,71,1,'Airtag','2023-10-26 14:25:53','2023-10-26 14:25:53','fc82b114-2083-4b07-a384-47b82be16e11',NULL,NULL,NULL,NULL),(70,72,1,'Apple AirTag','2023-10-26 14:26:04','2023-10-26 14:26:04','dd47ba3d-c404-4785-91b4-ab062e9fefd3','<p>AirTag is a compact and lightweight tracking device that can be easily attached to your belongings. It uses Bluetooth technology to connect to your Apple device, such as an iPhone, iPad, or Mac. With the Find My app, you can track the location of your tagged items with precision.</p>',NULL,29.99,NULL),(71,73,1,'MacBook','2023-10-26 14:29:51','2023-10-29 18:15:23','f6fd7f46-b5d9-4b42-b006-477af7dbfec1','<p>MacBooks cater to a wide range of users, from professionals and creatives to students and everyday users. They provide a premium computing experience with a blend of style, performance, and a user-friendly ecosystem. Specific features and specifications can vary between different MacBook models, so it\'s advisable to check the details of a particular MacBook before making a purchase.</p>',NULL,1400.99,4),(72,74,1,'Macbook','2023-10-26 14:30:22','2023-10-26 14:30:22','b944f072-5594-4c22-80eb-8de991fb7de6',NULL,NULL,NULL,NULL),(73,75,1,'MacBook','2023-10-26 14:30:31','2023-10-26 14:30:31','a1b4c2de-e96c-42c5-bb44-d6c35e65e47f','<p>MacBooks cater to a wide range of users, from professionals and creatives to students and everyday users. They provide a premium computing experience with a blend of style, performance, and a user-friendly ecosystem. Specific features and specifications can vary between different MacBook models, so it\'s advisable to check the details of a particular MacBook before making a purchase.</p>',NULL,1400.99,NULL),(75,77,1,'About Me','2023-10-26 14:58:08','2023-10-26 14:58:08','a1be7a84-8437-414b-8dd5-a0b514e62130','<p>Hello, I\'m Karim Matar, a student at Arteveldehogeschool in Belgium. I\'m currently 20 years old and in my second year of my graduate degree program. I\'m really passionate about programming and have been focusing on honing my skills in various web development technologies such as CSS, JavaScript, PHP, and HTML.</p><p>I also have experience working with databases, particularly with SQLite. It\'s been an exciting journey so far, and I\'m looking forward to exploring and mastering more aspects of web development as I continue my education. If you have any questions or need help with anything related to programming, feel free to ask!</p>','default',NULL,NULL),(77,79,1,'Phone Case','2023-10-26 15:12:36','2023-10-26 15:12:36','27c9332f-c7c3-44ce-9583-e6632b4a368c','<p>A phone case is a protective accessory designed to safeguard your smartphone from damage due to drops, impacts, and daily wear and tear. Typically made from a variety of materials such as plastic, silicone, or leather, phone cases come in various styles and designs, offering both style and functionality. They are essential for preserving the appearance and functionality of your phone while allowing access to its buttons, ports, and camera. Whether you prefer a sleek, minimalist case or a vibrant, eye-catching design, a phone case is a practical and stylish addition to your mobile device.</p>',NULL,20.50,NULL),(78,80,1,'Thanks','2023-10-29 14:09:16','2023-10-29 14:09:54','2376315f-f39f-4770-b472-5c26d7512f77',NULL,'thanks',NULL,NULL),(79,81,1,'Thanks','2023-10-29 14:09:54','2023-10-29 14:09:54','c8403468-81dc-4397-a2a3-f3bee1852af3',NULL,'thanks',NULL,NULL),(81,83,1,'MacBook','2023-10-29 18:15:23','2023-10-29 18:15:23','df2ebef0-94ee-4bf0-a39c-457fdf81df5f','<p>MacBooks cater to a wide range of users, from professionals and creatives to students and everyday users. They provide a premium computing experience with a blend of style, performance, and a user-friendly ecosystem. Specific features and specifications can vary between different MacBook models, so it\'s advisable to check the details of a particular MacBook before making a purchase.</p>',NULL,1400.99,4),(83,85,1,'Apple AirTag','2023-10-29 18:15:30','2023-10-29 18:15:30','c6cc0c1e-152a-493a-a049-b0b0ea16cd7f','<p>AirTag is a compact and lightweight tracking device that can be easily attached to your belongings. It uses Bluetooth technology to connect to your Apple device, such as an iPhone, iPad, or Mac. With the Find My app, you can track the location of your tagged items with precision.</p>',NULL,29.99,5),(85,87,1,'MSI Laptop','2023-10-29 18:15:36','2023-10-29 18:15:36','8c4955e5-17f5-4686-a750-7d5df1e22c02','<p>MSI (Micro-Star International) is renowned for its gaming laptops, known for their robust performance and cutting-edge gaming features. Here\'s a brief description of an MSI laptop:</p><p>MSI laptops are engineered for gamers and power users, delivering top-tier performance and innovative features. They come in various sizes and configurations to cater to a wide range of needs, from gaming and content creation to professional tasks.</p>',NULL,1200.00,3),(87,89,1,'Airpods Pro','2023-10-29 18:15:42','2023-10-29 18:15:42','4f0911b9-4ad0-4db8-af1a-f9891367148a','<p>The AirPods Pro are the pinnacle of true wireless earbuds, offering a compact, in-ear design with active noise cancellation. They provide a truly immersive audio experience, with high-quality sound that adapts to your ear shape for a personalized fit.</p>',NULL,199.99,5),(89,91,1,'Acer Laptop','2023-10-29 18:15:51','2023-10-29 18:15:51','3e00b513-ae13-4d87-a8e5-72c97fe8ba15','<p>Acer laptops are known for their combination of performance, value, and a range of options to suit various user needs. These laptops come in different series, offering diverse features and capabilities. Here\'s a general description of what you can expect from an Acer laptop:</p><p>Acer laptops are designed to provide a reliable and affordable computing experience for a wide range of users. They come in various sizes and form factors, from ultra-portable notebooks to robust gaming laptops and versatile 2-in-1 convertible models.</p>',NULL,750.50,4),(91,93,1,'Galaxy S23 Ultra','2023-10-29 18:15:59','2023-10-29 18:15:59','3166b45c-15c1-4868-838c-c27c52ccf6c6','<p>The Samsung Galaxy S23 Ultra is the pinnacle of smartphone innovation, offering an exceptional blend of power and sophistication. It boasts a breathtaking Dynamic AMOLED display with vibrant colors and a high refresh rate, delivering an immersive viewing experience like never before.</p>',NULL,999.99,4),(93,95,1,'Phone Case','2023-10-29 18:16:07','2023-10-29 18:16:07','ca407b1c-7378-46d2-9b5a-55a587f97b43','<p>A phone case is a protective accessory designed to safeguard your smartphone from damage due to drops, impacts, and daily wear and tear. Typically made from a variety of materials such as plastic, silicone, or leather, phone cases come in various styles and designs, offering both style and functionality. They are essential for preserving the appearance and functionality of your phone while allowing access to its buttons, ports, and camera. Whether you prefer a sleek, minimalist case or a vibrant, eye-catching design, a phone case is a practical and stylish addition to your mobile device.</p>',NULL,20.50,2),(95,97,1,'Iphone 15','2023-10-29 18:16:13','2023-10-29 18:16:13','a689e144-75cd-4eab-8541-32816566af2d','<p>The iPhone 15 is Apple\'s latest smartphone, featuring a brilliant OLED display, a lightning-fast A16 Bionic chip, and an advanced camera system. It offers enhanced privacy and security, supports 5G connectivity, and boasts a sleek, water-resistant design. This model combines cutting-edge technology with style, setting new standards in the world of mobile devices.</p>',NULL,799.99,4);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `craftidtokens`
--

LOCK TABLES `craftidtokens` WRITE;
/*!40000 ALTER TABLE `craftidtokens` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `craftidtokens` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `deprecationerrors`
--

LOCK TABLES `deprecationerrors` WRITE;
/*!40000 ALTER TABLE `deprecationerrors` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `drafts`
--

LOCK TABLES `drafts` WRITE;
/*!40000 ALTER TABLE `drafts` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `drafts` VALUES (2,NULL,1,0,'First draft',NULL,0,NULL,0),(12,NULL,1,0,'First draft',NULL,0,NULL,0),(17,NULL,1,0,'First draft',NULL,0,NULL,0),(23,NULL,1,0,'First draft',NULL,0,NULL,0);
/*!40000 ALTER TABLE `drafts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `elementactivity`
--

LOCK TABLES `elementactivity` WRITE;
/*!40000 ALTER TABLE `elementactivity` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `elementactivity` VALUES (3,1,1,NULL,'edit','2023-10-26 14:58:07'),(3,1,1,NULL,'save','2023-10-26 14:58:08'),(9,1,1,NULL,'edit','2023-10-26 09:50:39'),(9,1,1,NULL,'save','2023-10-26 09:50:41'),(33,1,1,NULL,'save','2023-10-26 13:09:43'),(34,1,1,NULL,'save','2023-10-26 13:09:51'),(35,1,1,NULL,'save','2023-10-26 13:09:59'),(36,1,1,NULL,'edit','2023-10-29 18:16:12'),(36,1,1,NULL,'save','2023-10-29 18:16:13'),(40,1,1,NULL,'edit','2023-10-29 18:16:06'),(40,1,1,NULL,'save','2023-10-29 18:16:07'),(52,1,1,NULL,'edit','2023-10-29 18:15:58'),(52,1,1,NULL,'save','2023-10-29 18:15:59'),(58,1,1,NULL,'save','2023-10-26 14:21:14'),(61,1,1,NULL,'edit','2023-10-29 18:15:49'),(61,1,1,NULL,'save','2023-10-29 18:15:51'),(64,1,1,NULL,'edit','2023-10-29 18:15:41'),(64,1,1,NULL,'save','2023-10-29 18:15:42'),(67,1,1,NULL,'edit','2023-10-29 18:15:35'),(67,1,1,NULL,'save','2023-10-29 18:15:36'),(70,1,1,NULL,'edit','2023-10-29 18:15:28'),(70,1,1,NULL,'save','2023-10-29 18:15:30'),(73,1,1,NULL,'edit','2023-10-29 18:15:21'),(73,1,1,NULL,'save','2023-10-29 18:15:23'),(80,1,1,NULL,'save','2023-10-29 14:09:54');
/*!40000 ALTER TABLE `elementactivity` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `elements` VALUES (1,NULL,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2023-10-24 13:14:03','2023-10-24 13:14:03',NULL,NULL,'f45cefc7-e3da-4ac9-bff3-67567f0a254f'),(2,NULL,NULL,NULL,1,'craft\\elements\\GlobalSet',1,0,'2023-10-26 07:59:34','2023-10-26 08:23:50',NULL,NULL,'b5714f02-37b0-4105-8e73-8230f809a08a'),(3,NULL,NULL,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:08:05','2023-10-26 14:58:08',NULL,NULL,'2627d894-11a5-4684-aafb-0ace9eaae5a3'),(4,3,NULL,1,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:09:07','2023-10-26 08:09:07',NULL,NULL,'c2290a88-b792-456d-8415-51a0d18cc579'),(5,NULL,2,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:11:59','2023-10-26 08:11:59',NULL,NULL,'b91909b1-a7db-4536-836f-e141a95a57cd'),(6,3,NULL,2,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:12:40','2023-10-26 08:12:40',NULL,NULL,'be14b157-5f33-4472-bfbd-7f32ce860d50'),(8,3,NULL,3,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:15:35','2023-10-26 08:15:35',NULL,NULL,'558c9cb6-7637-49f6-9895-98ac8b4853ad'),(9,NULL,NULL,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:15:37','2023-10-26 09:50:41',NULL,NULL,'5cd01192-5b9c-4b36-a387-bc97a13ffc25'),(10,9,NULL,4,3,'craft\\elements\\Entry',1,0,'2023-10-26 08:15:46','2023-10-26 08:15:46',NULL,NULL,'572af70e-6416-4c2b-ad31-f3f6a6236f04'),(11,NULL,NULL,NULL,2,'craft\\elements\\MatrixBlock',1,0,'2023-10-26 08:23:50','2023-10-26 08:23:50',NULL,NULL,'f8e6b5de-c972-4e00-9ee9-9300ad6cedd6'),(12,NULL,NULL,NULL,2,'craft\\elements\\MatrixBlock',1,0,'2023-10-26 08:23:50','2023-10-26 08:23:50',NULL,NULL,'57549643-8897-49b5-8fcd-b989ea6441bf'),(13,3,NULL,5,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:02:13','2023-10-26 09:02:13',NULL,NULL,'ba927c47-ecea-4137-8f88-59a6d5cbf7cc'),(16,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 09:22:18','2023-10-26 09:22:18',NULL,NULL,'c267bc2d-5aca-45eb-8d0c-cf37a0cc6b2a'),(18,3,NULL,6,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:22:35','2023-10-26 09:22:35',NULL,NULL,'9132a7e7-d844-4c03-8004-3dfdfc8532eb'),(20,3,NULL,7,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:22:59','2023-10-26 09:22:59',NULL,NULL,'fd31e543-09f9-41a8-b472-46600d41fe63'),(22,3,NULL,8,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:28:30','2023-10-26 09:28:30',NULL,NULL,'59fdd0e7-0aed-434b-a092-702e10a6f5e4'),(23,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 09:30:16','2023-10-26 09:30:16',NULL,NULL,'fd083e73-b04a-4e63-9cdd-87826f920e79'),(25,3,NULL,9,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:30:18','2023-10-26 09:30:18',NULL,NULL,'48f314b2-0e8c-4de3-a28d-2d4b11cb70d8'),(26,3,NULL,10,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:48:34','2023-10-26 09:48:34',NULL,NULL,'e5d97ed3-baa3-4153-917c-6211d8b2bf01'),(27,3,NULL,11,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:50:35','2023-10-26 09:50:35',NULL,NULL,'274bc00c-3983-416d-8d19-8f3a9580bc4f'),(29,9,NULL,12,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:50:41','2023-10-26 09:50:41',NULL,NULL,'9b2199fc-23f2-4fa5-aa94-6e9799f88da8'),(31,3,NULL,13,3,'craft\\elements\\Entry',1,0,'2023-10-26 09:58:56','2023-10-26 09:58:56',NULL,NULL,'94073722-f0f6-427e-89c8-0b4fd9881dfa'),(32,NULL,12,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:01:49','2023-10-26 13:01:49',NULL,NULL,'58baf755-0bd3-4237-b5d3-7fdb786ee495'),(33,NULL,NULL,NULL,6,'craft\\elements\\Category',1,0,'2023-10-26 13:09:20','2023-10-26 13:09:43',NULL,NULL,'29d0de63-4e09-4a62-92c2-ac8f16665dcd'),(34,NULL,NULL,NULL,6,'craft\\elements\\Category',1,0,'2023-10-26 13:09:46','2023-10-26 13:09:51',NULL,NULL,'8e85499f-328d-4113-b436-5fb8a1799433'),(35,NULL,NULL,NULL,6,'craft\\elements\\Category',1,0,'2023-10-26 13:09:55','2023-10-26 13:09:59',NULL,NULL,'633188f9-0824-4f04-bd72-0f6b5fc628b9'),(36,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:10:33','2023-10-29 18:16:13',NULL,NULL,'d1046937-440c-4335-9a46-5bb58d08d7e9'),(37,36,NULL,14,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:14:34','2023-10-26 13:14:34',NULL,NULL,'dd10b4e7-058f-43d1-871c-037f6eae9229'),(38,36,NULL,15,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:30:17','2023-10-26 13:30:17',NULL,NULL,'21571140-c9a2-47d1-8a54-358cd0d0d7ce'),(39,NULL,17,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:48:09','2023-10-26 13:48:09',NULL,NULL,'18ce5a81-499b-472b-9ee8-1d00f6f7434f'),(40,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:48:16','2023-10-29 18:16:07',NULL,NULL,'b1118ccf-657e-4e79-a05b-e46e209148b0'),(41,40,NULL,16,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:48:32','2023-10-26 13:48:32',NULL,NULL,'c7329eaa-bd76-40a9-9a1c-0438c46c7b76'),(42,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 13:55:06','2023-10-26 13:55:06',NULL,NULL,'65110874-79d2-47b3-9c34-9ac52e050df7'),(44,36,NULL,17,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:55:12','2023-10-26 13:55:12',NULL,NULL,'803030e8-884c-45ca-a3a7-621d33043325'),(45,36,NULL,18,5,'craft\\elements\\Entry',1,0,'2023-10-26 13:55:46','2023-10-26 13:55:46',NULL,NULL,'07c947c9-fae2-4d0e-86e8-227c46731013'),(46,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:11:18','2023-10-26 14:11:18',NULL,NULL,'737b369f-6506-44d0-8d15-516ad583e9b2'),(48,40,NULL,19,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:12:14','2023-10-26 14:12:14',NULL,NULL,'2e84cc23-1489-4f98-8226-91fcac9f49e9'),(50,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:12:37','2023-10-26 14:12:37',NULL,NULL,'f30d460f-ca5d-4bf0-97e2-457638da1adc'),(51,36,NULL,20,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:14:15','2023-10-26 14:14:15',NULL,NULL,'65a89fed-001b-4733-a7a7-509372c0e078'),(52,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:14:38','2023-10-29 18:15:59',NULL,NULL,'e9c08b3f-52af-4dd0-a8a8-50aeefe9dab8'),(53,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:14:51','2023-10-26 14:14:51',NULL,NULL,'1ce05dc6-36ac-4017-9d5c-90c0dd1692e0'),(54,52,NULL,21,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:15:40','2023-10-26 14:15:40',NULL,NULL,'cdb3f09f-a9c3-4961-8ad0-cf66be34de80'),(55,NULL,23,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:19:46','2023-10-26 14:19:46',NULL,NULL,'d9a294cd-a6e3-47ab-89d3-bdbfdc6bc7de'),(57,40,NULL,22,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:20:31','2023-10-26 14:20:31',NULL,NULL,'b76c16de-d3e3-4152-a8e6-33870b1f12ce'),(58,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:20:33','2023-10-26 14:21:14',NULL,NULL,'f0df2380-5d00-4f6e-9391-50efc8ccf42b'),(59,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:21:02','2023-10-26 14:21:02',NULL,NULL,'e849bfc0-dc75-49ca-83b6-4ebe0efa3f80'),(60,58,NULL,23,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:21:14','2023-10-26 14:21:14',NULL,NULL,'c988f6a0-861a-4dcb-a6c8-54887753aeea'),(61,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:22:05','2023-10-29 18:15:51',NULL,NULL,'a33c29ec-1cb0-45d4-af5d-63df2e6ce19a'),(62,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:22:52','2023-10-26 14:22:52',NULL,NULL,'11a48980-ae12-4417-a6a4-bce9b3519609'),(63,61,NULL,24,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:23:27','2023-10-26 14:23:27',NULL,NULL,'c74af64e-f074-4835-8796-2e0991705bf2'),(64,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:23:49','2023-10-29 18:15:42',NULL,NULL,'6a10967e-ccee-4d72-b5e2-3c386e67dd16'),(65,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:23:58','2023-10-26 14:23:58',NULL,NULL,'7c290454-ac54-4f82-99da-9e5956ffbe6d'),(66,64,NULL,25,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:24:34','2023-10-26 14:24:34',NULL,NULL,'91e96deb-6ac4-4c1c-8329-7b686be12a40'),(67,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:24:37','2023-10-29 18:15:36',NULL,NULL,'06f7ad04-35ed-46a2-9c4f-2d48274b4ec6'),(68,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:25:05','2023-10-26 14:25:05',NULL,NULL,'a4e82e07-9013-4ab1-b9f0-5da607cd5b0c'),(69,67,NULL,26,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:25:19','2023-10-26 14:25:19',NULL,NULL,'0f64bc1f-ae76-406f-bc04-d635ada22088'),(70,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:25:21','2023-10-29 18:15:30',NULL,NULL,'d223060c-9dcc-4d96-a97a-1edb82f985c9'),(71,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:25:53','2023-10-26 14:25:53',NULL,NULL,'a1b909c4-71a7-4f51-961a-5d390dd9c18b'),(72,70,NULL,27,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:26:04','2023-10-26 14:26:04',NULL,NULL,'9c414d53-4eb5-4ed8-84e5-71ccb215fd91'),(73,NULL,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:29:51','2023-10-29 18:15:23',NULL,NULL,'588fb518-8702-4a95-a267-c0798b2dfeae'),(74,NULL,NULL,NULL,4,'craft\\elements\\Asset',1,0,'2023-10-26 14:30:22','2023-10-26 14:30:22',NULL,NULL,'a2abc40c-a78a-4282-bb55-6146141c4c8a'),(75,73,NULL,28,5,'craft\\elements\\Entry',1,0,'2023-10-26 14:30:31','2023-10-26 14:30:31',NULL,NULL,'732eb57e-cc48-4f2f-b646-df0c9cf92ac2'),(77,3,NULL,29,3,'craft\\elements\\Entry',1,0,'2023-10-26 14:58:08','2023-10-26 14:58:08',NULL,NULL,'87e671d7-6fd5-4fb7-a7e5-48213b9bca97'),(79,40,NULL,30,5,'craft\\elements\\Entry',1,0,'2023-10-26 15:12:36','2023-10-26 15:12:36',NULL,NULL,'2f5492cf-459e-46d3-851d-51029658f53d'),(80,NULL,NULL,NULL,3,'craft\\elements\\Entry',1,0,'2023-10-29 14:09:16','2023-10-29 14:09:54',NULL,NULL,'d192cf09-c9a1-43a8-81ab-3bbf3414076f'),(81,80,NULL,31,3,'craft\\elements\\Entry',1,0,'2023-10-29 14:09:54','2023-10-29 14:09:54',NULL,NULL,'df8156c8-1dc5-489f-909d-11bfb1af6677'),(83,73,NULL,32,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:23','2023-10-29 18:15:23',NULL,NULL,'862342ad-f565-46e0-ac40-b0e5c84df8d3'),(85,70,NULL,33,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:30','2023-10-29 18:15:30',NULL,NULL,'af380cf1-c9d4-45da-8366-5d325d57bf29'),(87,67,NULL,34,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:36','2023-10-29 18:15:36',NULL,NULL,'89515f82-8c7f-4503-83cc-35fb87b08b18'),(89,64,NULL,35,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:42','2023-10-29 18:15:42',NULL,NULL,'5c2bd53e-48f4-4af5-ab30-6726e62a707e'),(91,61,NULL,36,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:51','2023-10-29 18:15:51',NULL,NULL,'27eb9f58-9ea1-486c-baf0-fd728a48e790'),(93,52,NULL,37,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:15:59','2023-10-29 18:15:59',NULL,NULL,'241df22e-3814-410c-9cf6-38d8e9404440'),(95,40,NULL,38,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:16:07','2023-10-29 18:16:07',NULL,NULL,'71e3a7a6-ff59-4f03-89bb-93b2963a7e2c'),(97,36,NULL,39,5,'craft\\elements\\Entry',1,0,'2023-10-29 18:16:13','2023-10-29 18:16:13',NULL,NULL,'14cfb84f-263c-4467-922a-70c5c74808a9');
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `elements_sites`
--

LOCK TABLES `elements_sites` WRITE;
/*!40000 ALTER TABLE `elements_sites` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `elements_sites` VALUES (1,1,1,NULL,NULL,1,'2023-10-24 13:14:03','2023-10-24 13:14:03','c84c67c2-b7ce-45dd-8ba8-0c5e3d0c50a8'),(2,2,1,NULL,NULL,1,'2023-10-26 07:59:34','2023-10-26 07:59:34','083e19f1-ab72-4f3a-987d-e56efc7d73a4'),(3,3,1,'about','pages/about',1,'2023-10-26 08:08:05','2023-10-26 08:08:15','946b3285-2d93-484a-8010-e5d40da75c3a'),(4,4,1,'about','pages/about',1,'2023-10-26 08:09:07','2023-10-26 08:09:07','8e4a66c7-f1ee-40c0-97ed-a2429df17b46'),(5,5,1,'__temp_kgbaryhwsfawiefipoinfawksyhwpivmtyzo','pages/__temp_kgbaryhwsfawiefipoinfawksyhwpivmtyzo',1,'2023-10-26 08:11:59','2023-10-26 08:11:59','27ab1792-b72e-4e6b-807d-aa1868afb058'),(6,6,1,'about','pages/about',1,'2023-10-26 08:12:40','2023-10-26 08:12:40','8d30f7c3-f408-4875-a959-56673384eb06'),(8,8,1,'about','pages/about',1,'2023-10-26 08:15:35','2023-10-26 08:15:35','edee64eb-8cc8-4e30-995f-46d40b8db86c'),(9,9,1,'contact','pages/contact',1,'2023-10-26 08:15:37','2023-10-26 08:15:42','9e4585ca-2c14-4110-b184-bbb4c62ae706'),(10,10,1,'contact','pages/contact',1,'2023-10-26 08:15:46','2023-10-26 08:15:46','06143e2f-954c-460a-a1d7-246fbf176800'),(11,11,1,NULL,NULL,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','a0e9263f-4976-4087-a24e-c31200167259'),(12,12,1,NULL,NULL,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','c3b0608d-bd47-46c7-b376-43220acbe46e'),(13,13,1,'about','pages/about',1,'2023-10-26 09:02:13','2023-10-26 09:02:13','daac683e-99c8-40c2-9627-671e5b9af99f'),(16,16,1,NULL,NULL,1,'2023-10-26 09:22:18','2023-10-26 09:22:18','ee64f800-7f89-4f4b-accc-8b30dcda6937'),(18,18,1,'about','pages/about',1,'2023-10-26 09:22:35','2023-10-26 09:22:35','82ae91e1-558a-40e2-8698-5916bb982aa8'),(20,20,1,'about','pages/about',1,'2023-10-26 09:22:59','2023-10-26 09:22:59','fbbbb493-c8d0-4739-8921-d53ff9142faf'),(22,22,1,'about','pages/about',1,'2023-10-26 09:28:30','2023-10-26 09:28:30','ca4c3f82-11ee-4877-9983-57bbda739f08'),(23,23,1,NULL,NULL,1,'2023-10-26 09:30:16','2023-10-26 09:30:16','ee5902f0-ab12-4d70-bdff-ce8d3283898c'),(25,25,1,'about','pages/about',1,'2023-10-26 09:30:18','2023-10-26 09:30:18','d459ffd8-edd7-49c5-9a71-93ad1749a12c'),(26,26,1,'about','pages/about',1,'2023-10-26 09:48:34','2023-10-26 09:48:34','ea13012c-b176-4068-824e-257abe2328e5'),(27,27,1,'about','pages/about',1,'2023-10-26 09:50:35','2023-10-26 09:50:35','ebac76cf-7ea5-415a-8f9d-a7878d623369'),(29,29,1,'contact','pages/contact',1,'2023-10-26 09:50:41','2023-10-26 09:50:41','47d81043-be42-4979-93d9-8c22364b9a4d'),(31,31,1,'about','pages/about',1,'2023-10-26 09:58:56','2023-10-26 09:58:56','4a25e05a-498d-46c2-830b-3b8d38768f76'),(32,32,1,'__temp_xaxonkptabyloiryibxopyhkoagxmlhnunwz','product/__temp_xaxonkptabyloiryibxopyhkoagxmlhnunwz',1,'2023-10-26 13:01:49','2023-10-26 13:01:49','930b5130-d3ba-46f5-ad1a-60957c6949ee'),(33,33,1,'accessories','categories/accessories',1,'2023-10-26 13:09:20','2023-10-26 13:51:46','e2260fd2-60ed-4cc3-920e-5ab62c85d0d7'),(34,34,1,'smart-phones','categories/smart-phones',1,'2023-10-26 13:09:46','2023-10-26 13:51:46','7b477b9a-dc1a-4e05-b9c7-f4fb608a5b9e'),(35,35,1,'laptops','categories/laptops',1,'2023-10-26 13:09:55','2023-10-26 13:51:46','563cc9a9-9dca-4ee8-bef1-6327e9827e91'),(36,36,1,'iphone','product/iphone',1,'2023-10-26 13:10:33','2023-10-26 13:10:38','0db5770e-80f7-4953-b814-74a5ee52f64a'),(37,37,1,'iphone','product/iphone',1,'2023-10-26 13:14:34','2023-10-26 13:14:34','18083994-ee09-4c8f-ad8a-2bba6829a497'),(38,38,1,'iphone','product/iphone',1,'2023-10-26 13:30:17','2023-10-26 13:30:17','9afdf859-6ccb-4230-ae7f-8989ec757fe1'),(39,39,1,'__temp_prwwtoqjduuadlyzichcuoygcmdpffxouugr','product/__temp_prwwtoqjduuadlyzichcuoygcmdpffxouugr',1,'2023-10-26 13:48:09','2023-10-26 13:48:09','2915f838-89d6-4757-b825-48b0ba6ddbf8'),(40,40,1,'phone-case','product/phone-case',1,'2023-10-26 13:48:16','2023-10-26 13:48:23','61808872-35a2-4fd1-8599-8487b9aa9baf'),(41,41,1,'phone-case','product/phone-case',1,'2023-10-26 13:48:32','2023-10-26 13:48:32','fd729df2-24ec-478f-bcd6-0be22a9c8f79'),(42,42,1,NULL,NULL,1,'2023-10-26 13:55:06','2023-10-26 13:55:06','c24131b9-ab6c-4ea8-b36a-28059c5d17ec'),(44,44,1,'iphone','product/iphone',1,'2023-10-26 13:55:12','2023-10-26 13:55:12','4e9e4f51-35bb-425f-b0ab-0de3120323af'),(45,45,1,'iphone','product/iphone',1,'2023-10-26 13:55:46','2023-10-26 13:55:46','34ccf403-677c-486b-9f90-880790a4d900'),(46,46,1,NULL,NULL,1,'2023-10-26 14:11:18','2023-10-26 14:11:18','dc9acda2-b2c5-4b06-9df2-a221a1892bca'),(48,48,1,'phone-case','product/phone-case',1,'2023-10-26 14:12:14','2023-10-26 14:12:14','a8b884a2-9eeb-4e88-8052-fb35160be4c3'),(50,50,1,NULL,NULL,1,'2023-10-26 14:12:37','2023-10-26 14:12:37','04db2a6e-4d55-4bbd-a680-64cae96a9d88'),(51,51,1,'iphone','product/iphone',1,'2023-10-26 14:14:15','2023-10-26 14:14:15','26a6d8d8-bcce-4dea-939d-bc27f47ced05'),(52,52,1,'galaxy-s23-ultra','product/galaxy-s23-ultra',1,'2023-10-26 14:14:38','2023-10-26 14:14:47','e66e8b09-ad07-4d92-a5d1-c60c23b03fc9'),(53,53,1,NULL,NULL,1,'2023-10-26 14:14:51','2023-10-26 14:14:51','9f24840f-7396-4d18-9748-f0306941f506'),(54,54,1,'galaxy-s23-ultra','product/galaxy-s23-ultra',1,'2023-10-26 14:15:40','2023-10-26 14:15:40','b2464a50-d59b-40b3-9a93-5af67cc56855'),(55,55,1,'__temp_wzuakcsdqzndyuxvyzgcuzqcaugchupjdydy','product/__temp_wzuakcsdqzndyuxvyzgcuzqcaugchupjdydy',1,'2023-10-26 14:19:46','2023-10-26 14:19:46','ebaa7375-973b-4dc9-adef-c2b7f452539c'),(57,57,1,'phone-case','product/phone-case',1,'2023-10-26 14:20:31','2023-10-26 14:20:31','186da248-ad07-4500-a17f-f4de515f1d0c'),(58,58,1,'ipad-pro','product/ipad-pro',1,'2023-10-26 14:20:33','2023-10-26 14:20:40','1dd1300e-fcfd-4748-9c6f-139a69bf72a7'),(59,59,1,NULL,NULL,1,'2023-10-26 14:21:02','2023-10-26 14:21:02','8f185f48-6134-43c3-8e53-400ea651923f'),(60,60,1,'ipad-pro','product/ipad-pro',1,'2023-10-26 14:21:14','2023-10-26 14:21:14','e1fd8002-406b-4f22-8b89-6231fabca537'),(61,61,1,'acer-laptop','product/acer-laptop',1,'2023-10-26 14:22:05','2023-10-26 14:22:11','99ec0d4e-5f1f-43ea-b963-c2ea879a69c0'),(62,62,1,NULL,NULL,1,'2023-10-26 14:22:52','2023-10-26 14:22:52','52a8dbc4-1bfb-4cf2-b65d-6c536d912e35'),(63,63,1,'acer-laptop','product/acer-laptop',1,'2023-10-26 14:23:27','2023-10-26 14:23:27','1fcc063c-422b-43e4-b8bf-a8b8dadde59a'),(64,64,1,'airpods-pro','product/airpods-pro',1,'2023-10-26 14:23:49','2023-10-26 14:24:04','1333db56-4d3d-499d-95f8-d268773aefb6'),(65,65,1,NULL,NULL,1,'2023-10-26 14:23:58','2023-10-26 14:23:58','96926a6c-e57f-4d1a-a116-d7f8a2a0ff94'),(66,66,1,'airpods-pro','product/airpods-pro',1,'2023-10-26 14:24:34','2023-10-26 14:24:34','c3f202e8-ae38-480c-8cb0-fb30f953d4b0'),(67,67,1,'msi-laptop','product/msi-laptop',1,'2023-10-26 14:24:37','2023-10-26 14:24:43','8558041d-b5e8-4f39-93aa-de94db88283f'),(68,68,1,NULL,NULL,1,'2023-10-26 14:25:05','2023-10-26 14:25:05','b22d827e-c724-432e-9db3-1e397993e6dd'),(69,69,1,'msi-laptop','product/msi-laptop',1,'2023-10-26 14:25:19','2023-10-26 14:25:19','5f050ee7-429e-4a7e-a701-1924beffdee6'),(70,70,1,'apple-airtag','product/apple-airtag',1,'2023-10-26 14:25:21','2023-10-26 14:25:28','44846a6c-b6bc-46dc-b65d-fbbdb617c9e9'),(71,71,1,NULL,NULL,1,'2023-10-26 14:25:53','2023-10-26 14:25:53','9e4dd41e-27b7-4f7c-9283-66790679fc65'),(72,72,1,'apple-airtag','product/apple-airtag',1,'2023-10-26 14:26:04','2023-10-26 14:26:04','734f5390-5d5e-4942-b7b7-224e218d82c0'),(73,73,1,'macbook','product/macbook',1,'2023-10-26 14:29:51','2023-10-26 14:29:55','1d54d561-8c0a-423d-81fb-3629eba2a4b9'),(74,74,1,NULL,NULL,1,'2023-10-26 14:30:22','2023-10-26 14:30:22','8b7621fb-cf18-4767-807a-64d2b7f18b8b'),(75,75,1,'macbook','product/macbook',1,'2023-10-26 14:30:31','2023-10-26 14:30:31','d4ea483b-c891-4719-b1df-9e6f4377382c'),(77,77,1,'about','pages/about',1,'2023-10-26 14:58:08','2023-10-26 14:58:08','36f40561-67c5-453d-b7e7-d3694b02de81'),(79,79,1,'phone-case','product/phone-case',1,'2023-10-26 15:12:36','2023-10-26 15:12:36','c8b2ec57-e66d-4590-9c51-5361d83f2b5f'),(80,80,1,'thanks','pages/thanks',1,'2023-10-29 14:09:16','2023-10-29 14:09:20','041d25d4-eb09-4e71-9787-085c9dabbae5'),(81,81,1,'thanks','pages/thanks',1,'2023-10-29 14:09:54','2023-10-29 14:09:54','38aca09f-7af2-4c87-a60b-5d3ec8551dcc'),(83,83,1,'macbook','product/macbook',1,'2023-10-29 18:15:23','2023-10-29 18:15:23','18ac6ff0-842c-4ee8-b093-bbc5011dd3d8'),(85,85,1,'apple-airtag','product/apple-airtag',1,'2023-10-29 18:15:30','2023-10-29 18:15:30','7d0f517b-0dba-432f-b96f-5d044d9cbd29'),(87,87,1,'msi-laptop','product/msi-laptop',1,'2023-10-29 18:15:36','2023-10-29 18:15:36','87b1a08c-b098-4fa6-8133-066b2adf4feb'),(89,89,1,'airpods-pro','product/airpods-pro',1,'2023-10-29 18:15:42','2023-10-29 18:15:42','d3583cb9-5625-4b60-9895-0726a1ad9160'),(91,91,1,'acer-laptop','product/acer-laptop',1,'2023-10-29 18:15:51','2023-10-29 18:15:51','70bf2596-1a73-4575-ae0c-4b2a41275286'),(93,93,1,'galaxy-s23-ultra','product/galaxy-s23-ultra',1,'2023-10-29 18:15:59','2023-10-29 18:15:59','703f312a-a269-4d9f-a101-1a7886ffe092'),(95,95,1,'phone-case','product/phone-case',1,'2023-10-29 18:16:07','2023-10-29 18:16:07','586a00cf-ecf7-4e58-b464-a7f5c43041ca'),(97,97,1,'iphone','product/iphone',1,'2023-10-29 18:16:13','2023-10-29 18:16:13','c6b33436-cbcc-4706-b0a5-ea1f3146cd36');
/*!40000 ALTER TABLE `elements_sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `entries` VALUES (3,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:08:05','2023-10-26 08:09:07'),(4,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:09:07','2023-10-26 08:09:07'),(5,1,NULL,1,1,'2023-10-26 08:11:59',NULL,NULL,'2023-10-26 08:11:59','2023-10-26 08:11:59'),(6,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:12:40','2023-10-26 08:12:40'),(8,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 08:15:35','2023-10-26 08:15:35'),(9,1,NULL,1,1,'2023-10-26 08:15:00',NULL,NULL,'2023-10-26 08:15:37','2023-10-26 08:15:46'),(10,1,NULL,1,1,'2023-10-26 08:15:00',NULL,NULL,'2023-10-26 08:15:46','2023-10-26 08:15:46'),(13,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:02:13','2023-10-26 09:02:13'),(18,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:22:35','2023-10-26 09:22:35'),(20,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:22:59','2023-10-26 09:22:59'),(22,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:28:30','2023-10-26 09:28:30'),(25,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:30:18','2023-10-26 09:30:18'),(26,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:48:34','2023-10-26 09:48:34'),(27,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:50:35','2023-10-26 09:50:35'),(29,1,NULL,1,1,'2023-10-26 08:15:00',NULL,NULL,'2023-10-26 09:50:41','2023-10-26 09:50:41'),(31,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 09:58:56','2023-10-26 09:58:56'),(32,2,NULL,2,1,'2023-10-26 13:01:49',NULL,NULL,'2023-10-26 13:01:49','2023-10-26 13:01:49'),(36,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:10:33','2023-10-26 13:14:34'),(37,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:14:34','2023-10-26 13:14:34'),(38,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:30:17','2023-10-26 13:30:17'),(39,2,NULL,2,1,'2023-10-26 13:48:09',NULL,NULL,'2023-10-26 13:48:09','2023-10-26 13:48:09'),(40,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 13:48:16','2023-10-26 13:48:32'),(41,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 13:48:32','2023-10-26 13:48:32'),(44,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:55:12','2023-10-26 13:55:12'),(45,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 13:55:46','2023-10-26 13:55:46'),(48,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 14:12:14','2023-10-26 14:12:14'),(51,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-26 14:14:15','2023-10-26 14:14:15'),(52,2,NULL,2,1,'2023-10-26 14:15:00',NULL,NULL,'2023-10-26 14:14:38','2023-10-26 14:15:40'),(54,2,NULL,2,1,'2023-10-26 14:15:00',NULL,NULL,'2023-10-26 14:15:40','2023-10-26 14:15:40'),(55,2,NULL,2,1,'2023-10-26 14:19:46',NULL,NULL,'2023-10-26 14:19:46','2023-10-26 14:19:46'),(57,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 14:20:31','2023-10-26 14:20:31'),(58,2,NULL,2,1,'2023-10-26 14:21:00',NULL,NULL,'2023-10-26 14:20:33','2023-10-26 14:21:14'),(60,2,NULL,2,1,'2023-10-26 14:21:00',NULL,NULL,'2023-10-26 14:21:14','2023-10-26 14:21:14'),(61,2,NULL,2,1,'2023-10-26 14:23:00',NULL,NULL,'2023-10-26 14:22:05','2023-10-26 14:23:27'),(63,2,NULL,2,1,'2023-10-26 14:23:00',NULL,NULL,'2023-10-26 14:23:27','2023-10-26 14:23:27'),(64,2,NULL,2,1,'2023-10-26 14:24:00',NULL,NULL,'2023-10-26 14:23:49','2023-10-26 14:24:34'),(66,2,NULL,2,1,'2023-10-26 14:24:00',NULL,NULL,'2023-10-26 14:24:34','2023-10-26 14:24:34'),(67,2,NULL,2,1,'2023-10-26 14:25:00',NULL,NULL,'2023-10-26 14:24:37','2023-10-26 14:25:19'),(69,2,NULL,2,1,'2023-10-26 14:25:00',NULL,NULL,'2023-10-26 14:25:19','2023-10-26 14:25:19'),(70,2,NULL,2,1,'2023-10-26 14:26:00',NULL,NULL,'2023-10-26 14:25:21','2023-10-26 14:26:04'),(72,2,NULL,2,1,'2023-10-26 14:26:00',NULL,NULL,'2023-10-26 14:26:04','2023-10-26 14:26:04'),(73,2,NULL,2,1,'2023-10-26 14:30:00',NULL,NULL,'2023-10-26 14:29:51','2023-10-26 14:30:31'),(75,2,NULL,2,1,'2023-10-26 14:30:00',NULL,NULL,'2023-10-26 14:30:31','2023-10-26 14:30:31'),(77,1,NULL,1,1,'2023-10-26 08:09:00',NULL,NULL,'2023-10-26 14:58:08','2023-10-26 14:58:08'),(79,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-26 15:12:36','2023-10-26 15:12:36'),(80,1,NULL,1,1,'2023-10-29 14:09:00',NULL,NULL,'2023-10-29 14:09:16','2023-10-29 14:09:54'),(81,1,NULL,1,1,'2023-10-29 14:09:00',NULL,NULL,'2023-10-29 14:09:54','2023-10-29 14:09:54'),(83,2,NULL,2,1,'2023-10-26 14:30:00',NULL,NULL,'2023-10-29 18:15:23','2023-10-29 18:15:23'),(85,2,NULL,2,1,'2023-10-26 14:26:00',NULL,NULL,'2023-10-29 18:15:30','2023-10-29 18:15:30'),(87,2,NULL,2,1,'2023-10-26 14:25:00',NULL,NULL,'2023-10-29 18:15:36','2023-10-29 18:15:36'),(89,2,NULL,2,1,'2023-10-26 14:24:00',NULL,NULL,'2023-10-29 18:15:42','2023-10-29 18:15:42'),(91,2,NULL,2,1,'2023-10-26 14:23:00',NULL,NULL,'2023-10-29 18:15:51','2023-10-29 18:15:51'),(93,2,NULL,2,1,'2023-10-26 14:15:00',NULL,NULL,'2023-10-29 18:15:59','2023-10-29 18:15:59'),(95,2,NULL,2,1,'2023-10-26 13:48:00',NULL,NULL,'2023-10-29 18:16:07','2023-10-29 18:16:07'),(97,2,NULL,2,1,'2023-10-26 13:14:00',NULL,NULL,'2023-10-29 18:16:13','2023-10-29 18:16:13');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `entrytypes`
--

LOCK TABLES `entrytypes` WRITE;
/*!40000 ALTER TABLE `entrytypes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `entrytypes` VALUES (1,1,3,'Default','default',1,'site',NULL,NULL,'site',NULL,1,1,'2023-10-26 08:07:14','2023-10-26 08:07:14',NULL,'c453e827-d8d0-4bed-847d-05a28ea91f8d'),(2,2,5,'Default','default',1,'site',NULL,NULL,'site',NULL,1,1,'2023-10-26 12:56:15','2023-10-26 12:56:15',NULL,'7958a590-988a-4dd3-b336-2d63da050ee3');
/*!40000 ALTER TABLE `entrytypes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fieldgroups` VALUES (1,'Common','2023-10-24 13:14:03','2023-10-24 13:14:03',NULL,'d065c9b6-646f-4d79-a80f-69ee321e38e6');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `fieldlayoutfields`
--

LOCK TABLES `fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `fieldlayoutfields` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fieldlayoutfields` VALUES (1,2,2,2,0,0,'2023-10-26 08:02:17','2023-10-26 08:02:17','664bdde2-440c-4973-807a-14c4e9dd6e9d'),(2,2,2,3,1,1,'2023-10-26 08:02:17','2023-10-26 08:02:17','8e21a0e1-2319-4fa6-b98e-c780321fc7da'),(3,1,3,1,0,0,'2023-10-26 08:02:25','2023-10-26 08:02:25','31edd5df-432e-4e53-9322-166414ff9810'),(7,4,8,5,0,2,'2023-10-26 09:31:19','2023-10-26 09:31:19','564e8f3d-21eb-4ffe-b6de-52ca932bc782'),(8,3,9,4,0,1,'2023-10-26 09:50:28','2023-10-26 09:50:28','be3f450c-6e35-4a73-b0ec-f9f11e865b03'),(9,3,9,5,0,2,'2023-10-26 09:50:28','2023-10-26 09:50:28','e4003521-c252-4fc1-b4d4-4c0a1dabbf53'),(10,3,9,6,0,3,'2023-10-26 09:50:28','2023-10-26 09:50:28','b489d6f8-4229-4612-a8a2-479abeb68098'),(28,6,17,4,0,1,'2023-10-26 13:51:46','2023-10-26 13:51:46','716af680-2204-4c12-8b03-3b1501e6ff5b'),(29,6,17,8,0,2,'2023-10-26 13:51:46','2023-10-26 13:51:46','36cbce37-8d35-498c-873f-7e9df96a60a4'),(30,6,17,7,0,3,'2023-10-26 13:51:46','2023-10-26 13:51:46','aba3b051-33fa-42b9-aa23-baccf66307e5'),(31,6,17,5,0,4,'2023-10-26 13:51:46','2023-10-26 13:51:46','cb8c5c07-643f-40ab-a2d7-87f3448361c0'),(32,5,18,4,0,1,'2023-10-29 18:15:08','2023-10-29 18:15:08','c2956c1a-5f0a-42b6-aff8-4768e9d8d192'),(33,5,18,5,0,2,'2023-10-29 18:15:08','2023-10-29 18:15:08','6180d33a-fb59-464c-937c-2411583eae14'),(34,5,18,7,0,3,'2023-10-29 18:15:08','2023-10-29 18:15:08','081393bf-71ea-4e97-bebd-535ea265ce57'),(35,5,18,8,0,4,'2023-10-29 18:15:08','2023-10-29 18:15:08','59283694-b7b9-47a6-8b64-63a990615555'),(36,5,18,9,0,5,'2023-10-29 18:15:08','2023-10-29 18:15:08','15b2556b-9ca3-4112-af3e-402f283388ea');
/*!40000 ALTER TABLE `fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `fieldlayouts`
--

LOCK TABLES `fieldlayouts` WRITE;
/*!40000 ALTER TABLE `fieldlayouts` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fieldlayouts` VALUES (1,'craft\\elements\\GlobalSet','2023-10-26 07:59:34','2023-10-26 07:59:34',NULL,'df374500-1c47-43b8-86df-da651bc26536'),(2,'craft\\elements\\MatrixBlock','2023-10-26 08:02:17','2023-10-26 08:02:17',NULL,'7ec205b1-a1b0-47ca-ac9e-ea587adfb133'),(3,'craft\\elements\\Entry','2023-10-26 08:07:14','2023-10-26 08:07:14',NULL,'73cd2c5a-0a47-40ca-8459-79e3b3456d15'),(4,'craft\\elements\\Asset','2023-10-26 08:43:58','2023-10-26 08:43:58',NULL,'c36975de-b991-4d27-862a-c48e7a1e56b7'),(5,'craft\\elements\\Entry','2023-10-26 12:56:15','2023-10-26 12:56:15',NULL,'8af49c1b-15b1-43a4-9efa-c26d0f345f54'),(6,'craft\\elements\\Category','2023-10-26 13:06:45','2023-10-26 13:06:45',NULL,'3fa561c6-ab03-4542-8c63-8f654c524013');
/*!40000 ALTER TABLE `fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `fieldlayouttabs`
--

LOCK TABLES `fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `fieldlayouttabs` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fieldlayouttabs` VALUES (2,2,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"03709973-8b5f-4f02-9cb0-2188c900f589\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"3fd01f77-7c87-47f7-ac36-94628bab8e91\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"2d5e4638-7959-4919-bb5f-bf9bedad9c82\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"bac33fd7-ecfc-4b9a-a31c-a66b899ea138\"}]',1,'2023-10-26 08:02:17','2023-10-26 08:02:17','ccbe5c43-e908-4cce-9a91-eb0228188b0c'),(3,1,'navigation','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"6ec15b1a-4c2e-4baa-816f-08f12081d116\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3\"}]',1,'2023-10-26 08:02:25','2023-10-26 08:02:25','34836475-0cde-42fc-8360-f747d32d4a7f'),(8,4,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"a2068f29-0505-4b45-99a7-1038d5649228\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AltField\",\"attribute\":\"alt\",\"requirable\":true,\"class\":null,\"rows\":null,\"cols\":null,\"name\":null,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"fb112e52-e76b-4b49-8b00-b978b0116df8\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"005fc869-dc43-4746-9457-a303b6899681\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"}]',1,'2023-10-26 09:31:19','2023-10-26 09:31:19','32eef56c-5b41-439b-9a0a-c605a43cd157'),(9,3,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"f9b69dc6-859e-4b87-bef1-1cd30e3a8edb\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a1b20f8f-d9dd-4fcc-b8d3-b08abf9a247d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"8a5a043c-5673-4141-95ba-4e0c5481febd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"458154ab-27f4-496e-b52f-efb589543c1e\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"86baae64-de54-4999-87c3-223e3bbb5697\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"4f2f0f30-956f-4af5-a4e3-05cda66a356c\"}]',1,'2023-10-26 09:50:28','2023-10-26 09:50:28','0aed763d-d10a-42a6-aea0-dabf608e617e'),(17,6,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"9be78c60-0f82-43bf-97d1-9a3e22f176f2\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a08c1080-086f-42df-91db-0c531906c060\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"8a5a043c-5673-4141-95ba-4e0c5481febd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"967bc4b2-c470-44c7-9d07-b1aec8b0a064\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"88906281-247e-498f-8e15-a54e9ef1dc5e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"f7920709-d5d1-47be-b750-f0d1f6bbc8f0\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e2702452-ff79-44e2-8589-26f911a1b116\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"93a7dc73-16b2-48f2-ab73-dfea573f5f8c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"}]',1,'2023-10-26 13:51:46','2023-10-26 13:51:46','76eedede-15e9-4a50-a200-e9c3edb44256'),(18,5,'Content','{\"userCondition\":null,\"elementCondition\":null}','[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"90d6fa07-3596-4d17-a295-28c14317e81b\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d8ff1c6d-296a-4d8c-9ae4-ec55cb46e4ea\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"8a5a043c-5673-4141-95ba-4e0c5481febd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a796653a-318f-446e-a93e-12be1b1ffe7d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"106cc52a-0f0d-4acd-a439-c2df9fcd2976\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e2702452-ff79-44e2-8589-26f911a1b116\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"8fc49efc-0972-4abe-afd9-2a7660f39164\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"88906281-247e-498f-8e15-a54e9ef1dc5e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"43e82dcc-8563-412a-a0cc-5427013ec94f\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"66a50116-1564-4bc7-9a9b-c617b443ba77\"}]',1,'2023-10-29 18:15:08','2023-10-29 18:15:08','a24e03d0-04fb-4b43-9383-f6131d4155e4');
/*!40000 ALTER TABLE `fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fields` VALUES (1,1,'navigation','navigation','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_navigation}}\",\"maxBlocks\":null,\"minBlocks\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}','2023-10-26 08:02:17','2023-10-26 08:02:17','9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3'),(2,NULL,'navname','navname','matrixBlockType:fe4a263e-3f8a-458d-8db1-e0951c3f6c71','ehppnbqf',NULL,0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}','2023-10-26 08:02:17','2023-10-26 08:02:17','3fd01f77-7c87-47f7-ac36-94628bab8e91'),(3,NULL,'navlink','navlink','matrixBlockType:fe4a263e-3f8a-458d-8db1-e0951c3f6c71',NULL,NULL,1,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"branchLimit\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Entry\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2023-10-26 08:02:17','2023-10-26 08:02:17','bac33fd7-ecfc-4b9a-a31c-a66b899ea138'),(4,1,'body','body','global','bfcjeggh',NULL,0,'none',NULL,'craft\\ckeditor\\Field','{\"availableTransforms\":\"\",\"availableVolumes\":\"*\",\"ckeConfig\":\"bac6cfb4-ccb5-462d-b720-9bd3e88a14bc\",\"columnType\":\"text\",\"defaultTransform\":null,\"enableSourceEditingForNonAdmins\":false,\"purifierConfig\":null,\"purifyHtml\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"showWordCount\":false,\"wordLimit\":null}','2023-10-26 08:07:50','2023-10-26 08:44:31','8a5a043c-5673-4141-95ba-4e0c5481febd'),(5,1,'Image','image','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:2c3cf118-1d0e-49ed-8501-035517bcdc3a\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:2c3cf118-1d0e-49ed-8501-035517bcdc3a\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2023-10-26 09:29:35','2023-10-26 09:29:35','b225808e-ba87-45b1-b29e-e5fff13cd7e7'),(6,1,'shape','shape','global','ojeccuwi',NULL,0,'none',NULL,'craft\\fields\\Dropdown','{\"columnType\":null,\"options\":[{\"label\":\"default\",\"value\":\"default\",\"default\":\"1\"},{\"label\":\"contact\",\"value\":\"contact\",\"default\":\"\"},{\"label\":\"thanks\",\"value\":\"thanks\",\"default\":\"\"}]}','2023-10-26 09:50:08','2023-10-29 14:09:42','4f2f0f30-956f-4af5-a4e3-05cda66a356c'),(7,1,'Price','price','global',NULL,NULL,0,'none',NULL,'craft\\fields\\Number','{\"defaultValue\":null,\"min\":0,\"max\":null,\"decimals\":2,\"size\":null,\"prefix\":null,\"suffix\":null,\"previewFormat\":\"decimal\",\"previewCurrency\":null}','2023-10-26 12:57:36','2023-10-26 12:59:45','e2702452-ff79-44e2-8589-26f911a1b116'),(8,1,'Category','category','global',NULL,NULL,0,'site',NULL,'craft\\fields\\Categories','{\"allowSelfRelations\":false,\"branchLimit\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionLabel\":null,\"showSiteMenu\":false,\"source\":\"group:f0179ba9-b210-44a5-94ad-aec8a17fb158\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2023-10-26 13:13:59','2023-10-26 13:13:59','88906281-247e-498f-8e15-a54e9ef1dc5e'),(9,1,'rating','rating','global','dwjuhuab',NULL,0,'none',NULL,'craft\\fields\\Number','{\"decimals\":0,\"defaultValue\":1,\"max\":5,\"min\":1,\"prefix\":null,\"previewCurrency\":null,\"previewFormat\":\"decimal\",\"size\":null,\"suffix\":null}','2023-10-29 18:14:38','2023-10-29 18:14:38','66a50116-1564-4bc7-9a9b-c617b443ba77');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `globalsets`
--

LOCK TABLES `globalsets` WRITE;
/*!40000 ALTER TABLE `globalsets` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `globalsets` VALUES (2,'Navigation','navigation',1,1,'2023-10-26 07:59:34','2023-10-26 07:59:34','b5714f02-37b0-4105-8e73-8230f809a08a');
/*!40000 ALTER TABLE `globalsets` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `gqlschemas`
--

LOCK TABLES `gqlschemas` WRITE;
/*!40000 ALTER TABLE `gqlschemas` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `gqlschemas` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `gqltokens`
--

LOCK TABLES `gqltokens` WRITE;
/*!40000 ALTER TABLE `gqltokens` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `gqltokens` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `imagetransforms`
--

LOCK TABLES `imagetransforms` WRITE;
/*!40000 ALTER TABLE `imagetransforms` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `imagetransforms` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `info` VALUES (1,'4.5.9','4.5.3.0',0,'kwqjrbveyemz','3@jbenutrukp','2023-10-24 13:14:03','2023-10-29 18:15:08','cead920c-3f45-4071-96e9-984d34e78d1d');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `matrixblocks`
--

LOCK TABLES `matrixblocks` WRITE;
/*!40000 ALTER TABLE `matrixblocks` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `matrixblocks` VALUES (11,2,1,1,NULL,'2023-10-26 08:23:50','2023-10-26 08:23:50'),(12,2,1,1,NULL,'2023-10-26 08:23:50','2023-10-26 08:23:50');
/*!40000 ALTER TABLE `matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `matrixblocks_owners`
--

LOCK TABLES `matrixblocks_owners` WRITE;
/*!40000 ALTER TABLE `matrixblocks_owners` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `matrixblocks_owners` VALUES (11,2,1),(12,2,2);
/*!40000 ALTER TABLE `matrixblocks_owners` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `matrixblocktypes`
--

LOCK TABLES `matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `matrixblocktypes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `matrixblocktypes` VALUES (1,1,2,'navigation','navigation',1,'2023-10-26 08:02:17','2023-10-26 08:02:17','fe4a263e-3f8a-458d-8db1-e0951c3f6c71');
/*!40000 ALTER TABLE `matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `matrixcontent_navigation`
--

LOCK TABLES `matrixcontent_navigation` WRITE;
/*!40000 ALTER TABLE `matrixcontent_navigation` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `matrixcontent_navigation` VALUES (1,11,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','08ad08df-375e-472f-bab2-2168336bcabf','About'),(2,12,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','e77c1c2d-a80c-4ca9-a0eb-d092e9d10d44','Contact');
/*!40000 ALTER TABLE `matrixcontent_navigation` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `migrations` VALUES (1,'craft','Install','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','73a5ff7b-7a1d-4db4-94d5-0944333604a3'),(2,'craft','m210121_145800_asset_indexing_changes','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','d419cbd4-2d57-4f1a-aace-b1091db4604e'),(3,'craft','m210624_222934_drop_deprecated_tables','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','58dfab65-0a03-465b-815c-9883abe70ccd'),(4,'craft','m210724_180756_rename_source_cols','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','b30a81c9-61d8-4f4b-8285-55aeadc0a2f1'),(5,'craft','m210809_124211_remove_superfluous_uids','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','069c3d47-dec5-4a1f-8c81-5a60f09ea2cd'),(6,'craft','m210817_014201_universal_users','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','5b2414b1-c7f3-438b-ad9e-42be3081ac6e'),(7,'craft','m210904_132612_store_element_source_settings_in_project_config','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','00d32d23-8dd3-4fc0-aa97-7ce6e7d6532f'),(8,'craft','m211115_135500_image_transformers','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','ed34a08a-b91d-41ef-88b9-c4d680db9d98'),(9,'craft','m211201_131000_filesystems','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','b20478c9-f6c3-4426-84e7-b7d81081557a'),(10,'craft','m220103_043103_tab_conditions','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','764edebd-b5dc-4a25-bfbd-5f98a81ca29d'),(11,'craft','m220104_003433_asset_alt_text','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','d036eede-c95e-47c6-abc9-f371fc793081'),(12,'craft','m220123_213619_update_permissions','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','6de79375-f002-41da-a663-9c002ae7b011'),(13,'craft','m220126_003432_addresses','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','16e1dfcf-733a-46aa-95b3-f0f864de103e'),(14,'craft','m220209_095604_add_indexes','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','35741eca-4b63-4994-b54c-812309c73e53'),(15,'craft','m220213_015220_matrixblocks_owners_table','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','8e5888b7-4c9f-4dda-9876-4bfb8b148438'),(16,'craft','m220214_000000_truncate_sessions','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','bf778669-9e3b-499a-a5e4-a5e589fb8d5e'),(17,'craft','m220222_122159_full_names','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','f7abd923-3994-43ed-b2dc-d0d5771e780b'),(18,'craft','m220223_180559_nullable_address_owner','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','bfb54c2c-3a4c-4f48-93b5-ff4ce3e53022'),(19,'craft','m220225_165000_transform_filesystems','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','82a6d63c-8410-43ad-9231-3096cc1026a8'),(20,'craft','m220309_152006_rename_field_layout_elements','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','844a4025-4d54-46dd-a8bc-23570f8c315f'),(21,'craft','m220314_211928_field_layout_element_uids','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','9f24df29-b118-49c2-bd28-384b813c32c9'),(22,'craft','m220316_123800_transform_fs_subpath','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','738d849d-0ffa-43e1-a788-8a4916eafed8'),(23,'craft','m220317_174250_release_all_jobs','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','f05257dc-7300-46c4-a198-427020b8a554'),(24,'craft','m220330_150000_add_site_gql_schema_components','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','2b9401f0-6123-46e2-809e-d3b9afddf0a9'),(25,'craft','m220413_024536_site_enabled_string','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','7e9b3ec8-489f-4df5-8246-a9c23a905ed1'),(26,'craft','m221027_160703_add_image_transform_fill','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','dc0c9171-7036-41be-bba3-264842155aa6'),(27,'craft','m221028_130548_add_canonical_id_index','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','4802016f-eac3-414b-992f-c45bb2a63680'),(28,'craft','m221118_003031_drop_element_fks','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','46f2365d-638d-4a0c-90c0-ee03414c43ed'),(29,'craft','m230131_120713_asset_indexing_session_new_options','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','661d7ce4-06bf-41a7-9975-f2ff40176c53'),(30,'craft','m230226_013114_drop_plugin_license_columns','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','4a63545b-7c78-44e9-b14b-e3055550af76'),(31,'craft','m230531_123004_add_entry_type_show_status_field','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','dc92125a-5215-48a8-b447-9eea5113c7fe'),(32,'craft','m230607_102049_add_entrytype_slug_translation_columns','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','68246c03-a51f-46e5-90b0-44362ac00b7e'),(33,'craft','m230710_162700_element_activity','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','6fb832a8-066b-46ee-b91e-9eede121a9fd'),(34,'craft','m230820_162023_fix_cache_id_type','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','1a2a66f2-1943-42c3-a581-0e977b345bad'),(35,'craft','m230826_094050_fix_session_id_type','2023-10-24 13:14:03','2023-10-24 13:14:03','2023-10-24 13:14:03','5a179d59-ca11-4811-b008-6d0dbb767d71'),(36,'plugin:ckeditor','Install','2023-10-26 07:27:02','2023-10-26 07:27:02','2023-10-26 07:27:02','e5a44ea4-5121-4d44-b22d-8c04c68b49f9'),(37,'plugin:ckeditor','m230408_163704_v3_upgrade','2023-10-26 07:27:02','2023-10-26 07:27:02','2023-10-26 07:27:02','5e1c2cb1-cf22-44af-a785-f8b174a78edd'),(38,'plugin:wheelform','Install','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','ca9943bc-f836-4ea8-87f3-82d3683ffa9b'),(39,'plugin:wheelform','m180407_040301_add_index_view_column_to_form_fields_table','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','991663a9-f57d-4882-b9f2-6a4d24da9575'),(40,'plugin:wheelform','m180407_170219_add_active_column_to_form_fields','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','5bb1ca11-c321-40f1-adf7-75ce08abcb1d'),(41,'plugin:wheelform','m180430_232743_add_read_column_to_message','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','0a031f4b-34e6-41de-9f11-57dfc9c6b0de'),(42,'plugin:wheelform','m180602_051517_AddOrderToField','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','2fe6b3c3-96d8-472a-981e-d3b6fc9519c9'),(43,'plugin:wheelform','m180802_015031_save_entry_to_forms_table','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','d4305272-ccea-461e-9b45-ea67574db525'),(44,'plugin:wheelform','m180804_230709_add_options_to_form_fields','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','186fb951-190e-4979-8702-dde5b15b52dd'),(45,'plugin:wheelform','m180814_230614_add_options_column_forms_table','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','94acbb40-6ef3-4e57-8783-74027b6d954b');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `plugins` VALUES (1,'quick-field','2.0.7','1.0.0','2023-10-26 07:26:13','2023-10-26 07:26:13','2023-10-26 07:26:13','0afb0d91-34dd-4316-9e3a-98b4d2d4fa36'),(2,'ckeditor','3.6.0','3.0.0.0','2023-10-26 07:27:02','2023-10-26 07:27:02','2023-10-26 07:27:02','ad381a75-c404-4290-9976-1d4704d9f4f0'),(3,'contact-form','3.0.1','1.0.0','2023-10-26 07:27:47','2023-10-26 07:27:47','2023-10-26 07:27:47','f1a04c7c-99d4-4ca0-ade5-c4e01a195b49'),(4,'wheelform','3.1.7','2.0.0','2023-10-29 14:13:20','2023-10-29 14:13:20','2023-10-29 14:13:20','dc04f44a-5be0-42f8-8dcb-8e2b6034ab58');
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `projectconfig`
--

LOCK TABLES `projectconfig` WRITE;
/*!40000 ALTER TABLE `projectconfig` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `projectconfig` VALUES ('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.defaultPlacement','\"end\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elementCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.autocapitalize','true'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.autocomplete','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.autocorrect','true'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.class','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.disabled','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.elementCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.id','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.instructions','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.label','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.max','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.min','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.name','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.orientation','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.placeholder','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.readonly','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.requirable','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.size','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.step','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.tip','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.title','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\TitleField\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.uid','\"9be78c60-0f82-43bf-97d1-9a3e22f176f2\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.userCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.warning','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.0.width','100'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.elementCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.fieldUid','\"8a5a043c-5673-4141-95ba-4e0c5481febd\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.instructions','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.label','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.required','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.tip','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.uid','\"a08c1080-086f-42df-91db-0c531906c060\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.userCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.warning','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.1.width','100'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.elementCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.fieldUid','\"88906281-247e-498f-8e15-a54e9ef1dc5e\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.instructions','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.label','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.required','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.tip','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.uid','\"967bc4b2-c470-44c7-9d07-b1aec8b0a064\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.userCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.warning','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.2.width','100'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.elementCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.fieldUid','\"e2702452-ff79-44e2-8589-26f911a1b116\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.instructions','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.label','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.required','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.tip','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.uid','\"f7920709-d5d1-47be-b750-f0d1f6bbc8f0\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.userCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.warning','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.3.width','100'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.elementCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.fieldUid','\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.instructions','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.label','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.required','false'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.tip','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.uid','\"93a7dc73-16b2-48f2-ab73-dfea573f5f8c\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.userCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.warning','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.elements.4.width','100'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.name','\"Content\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.uid','\"76eedede-15e9-4a50-a200-e9c3edb44256\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.fieldLayouts.3fa561c6-ab03-4542-8c63-8f654c524013.tabs.0.userCondition','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.handle','\"productCategories\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.name','\"Product Categories\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.hasUrls','true'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.template','\"pages/_products.twig\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.uriFormat','\"categories/{slug}\"'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.structure.maxLevels','null'),('categoryGroups.f0179ba9-b210-44a5-94ad-aec8a17fb158.structure.uid','\"b9c8a09e-f636-4b4c-8eba-21e362599850\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.headingLevels.0','1'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.headingLevels.1','2'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.headingLevels.2','3'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.headingLevels.3','4'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.headingLevels.4','5'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.headingLevels.5','6'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.listPlugin','\"List\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.name','\"Simple\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.toolbar.0','\"heading\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.toolbar.1','\"insertImage\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.toolbar.2','\"|\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.toolbar.3','\"bold\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.toolbar.4','\"italic\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.toolbar.5','\"link\"'),('ckeditor.configs.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc.toolbar.6','\"bulletedList\"'),('dateModified','1698603308'),('email.fromEmail','\"karim.matar@student.arteveldehs.be\"'),('email.fromName','\"Karim Matar Webstore\"'),('email.transportType','\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elementCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.autocapitalize','true'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.autocomplete','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.autocorrect','true'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.class','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.disabled','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.elementCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.id','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.instructions','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.label','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.max','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.min','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.name','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.orientation','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.placeholder','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.readonly','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.requirable','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.size','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.step','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.tip','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.title','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.uid','\"90d6fa07-3596-4d17-a295-28c14317e81b\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.userCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.warning','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.0.width','100'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.elementCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.fieldUid','\"8a5a043c-5673-4141-95ba-4e0c5481febd\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.instructions','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.label','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.required','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.tip','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.uid','\"d8ff1c6d-296a-4d8c-9ae4-ec55cb46e4ea\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.userCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.warning','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.1.width','100'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.elementCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.fieldUid','\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.instructions','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.label','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.required','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.tip','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.uid','\"a796653a-318f-446e-a93e-12be1b1ffe7d\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.userCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.warning','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.2.width','100'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.elementCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.fieldUid','\"e2702452-ff79-44e2-8589-26f911a1b116\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.instructions','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.label','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.required','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.tip','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.uid','\"106cc52a-0f0d-4acd-a439-c2df9fcd2976\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.userCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.warning','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.3.width','100'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.elementCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.fieldUid','\"88906281-247e-498f-8e15-a54e9ef1dc5e\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.instructions','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.label','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.required','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.tip','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.uid','\"8fc49efc-0972-4abe-afd9-2a7660f39164\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.userCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.warning','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.4.width','100'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.elementCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.fieldUid','\"66a50116-1564-4bc7-9a9b-c617b443ba77\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.instructions','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.label','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.required','false'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.tip','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.uid','\"43e82dcc-8563-412a-a0cc-5427013ec94f\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.userCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.warning','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.elements.5.width','100'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.name','\"Content\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.uid','\"a24e03d0-04fb-4b43-9383-f6131d4155e4\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.fieldLayouts.8af49c1b-15b1-43a4-9efa-c26d0f345f54.tabs.0.userCondition','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.handle','\"default\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.hasTitleField','true'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.name','\"Default\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.section','\"1c04db77-1649-4c67-90a7-cc5ad88002ba\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.showStatusField','true'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.slugTranslationKeyFormat','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.slugTranslationMethod','\"site\"'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.sortOrder','1'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.titleFormat','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.titleTranslationKeyFormat','null'),('entryTypes.7958a590-988a-4dd3-b336-2d63da050ee3.titleTranslationMethod','\"site\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elementCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.autocapitalize','true'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.autocomplete','false'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.autocorrect','true'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.class','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.disabled','false'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.elementCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.id','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.instructions','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.label','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.max','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.min','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.name','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.orientation','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.placeholder','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.readonly','false'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.requirable','false'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.size','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.step','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.tip','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.title','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.uid','\"f9b69dc6-859e-4b87-bef1-1cd30e3a8edb\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.userCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.warning','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.0.width','100'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.elementCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.fieldUid','\"8a5a043c-5673-4141-95ba-4e0c5481febd\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.instructions','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.label','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.required','false'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.tip','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.uid','\"a1b20f8f-d9dd-4fcc-b8d3-b08abf9a247d\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.userCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.warning','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.1.width','100'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.elementCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.fieldUid','\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.instructions','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.label','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.required','false'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.tip','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.uid','\"458154ab-27f4-496e-b52f-efb589543c1e\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.userCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.warning','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.2.width','100'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.elementCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.fieldUid','\"4f2f0f30-956f-4af5-a4e3-05cda66a356c\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.instructions','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.label','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.required','false'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.tip','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.uid','\"86baae64-de54-4999-87c3-223e3bbb5697\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.userCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.warning','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.elements.3.width','100'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.name','\"Content\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.uid','\"0aed763d-d10a-42a6-aea0-dabf608e617e\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.fieldLayouts.73cd2c5a-0a47-40ca-8459-79e3b3456d15.tabs.0.userCondition','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.handle','\"default\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.hasTitleField','true'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.name','\"Default\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.section','\"d317ddf8-29cb-4593-b8b6-f1b62ae957b2\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.showStatusField','true'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.slugTranslationKeyFormat','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.slugTranslationMethod','\"site\"'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.sortOrder','1'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.titleFormat','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.titleTranslationKeyFormat','null'),('entryTypes.c453e827-d8d0-4bed-847d-05a28ea91f8d.titleTranslationMethod','\"site\"'),('fieldGroups.d065c9b6-646f-4d79-a80f-69ee321e38e6.name','\"Common\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.columnSuffix','\"ojeccuwi\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.contentColumnType','\"string(7)\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.fieldGroup','\"d065c9b6-646f-4d79-a80f-69ee321e38e6\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.handle','\"shape\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.instructions','null'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.name','\"shape\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.searchable','false'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.columnType','null'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.0.__assoc__.0.0','\"label\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.0.__assoc__.0.1','\"default\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.0.__assoc__.1.0','\"value\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.0.__assoc__.1.1','\"default\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.0.__assoc__.2.0','\"default\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.0.__assoc__.2.1','\"1\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.1.__assoc__.0.0','\"label\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.1.__assoc__.0.1','\"contact\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.1.__assoc__.1.0','\"value\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.1.__assoc__.1.1','\"contact\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.1.__assoc__.2.0','\"default\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.1.__assoc__.2.1','\"\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.2.__assoc__.0.0','\"label\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.2.__assoc__.0.1','\"thanks\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.2.__assoc__.1.0','\"value\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.2.__assoc__.1.1','\"thanks\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.2.__assoc__.2.0','\"default\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.settings.options.2.__assoc__.2.1','\"\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.translationKeyFormat','null'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.translationMethod','\"none\"'),('fields.4f2f0f30-956f-4af5-a4e3-05cda66a356c.type','\"craft\\\\fields\\\\Dropdown\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.columnSuffix','\"dwjuhuab\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.contentColumnType','\"smallint(1)\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.fieldGroup','\"d065c9b6-646f-4d79-a80f-69ee321e38e6\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.handle','\"rating\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.instructions','null'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.name','\"rating\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.searchable','false'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.decimals','0'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.defaultValue','1'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.max','5'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.min','1'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.prefix','null'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.previewCurrency','null'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.previewFormat','\"decimal\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.size','null'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.settings.suffix','null'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.translationKeyFormat','null'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.translationMethod','\"none\"'),('fields.66a50116-1564-4bc7-9a9b-c617b443ba77.type','\"craft\\\\fields\\\\Number\"'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.columnSuffix','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.contentColumnType','\"string\"'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.fieldGroup','\"d065c9b6-646f-4d79-a80f-69ee321e38e6\"'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.handle','\"category\"'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.instructions','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.name','\"Category\"'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.searchable','false'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.allowSelfRelations','false'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.branchLimit','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.localizeRelations','false'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.maintainHierarchy','false'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.maxRelations','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.minRelations','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.selectionLabel','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.showSiteMenu','false'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.source','\"group:f0179ba9-b210-44a5-94ad-aec8a17fb158\"'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.targetSiteId','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.validateRelatedElements','false'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.settings.viewMode','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.translationKeyFormat','null'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.translationMethod','\"site\"'),('fields.88906281-247e-498f-8e15-a54e9ef1dc5e.type','\"craft\\\\fields\\\\Categories\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.columnSuffix','\"bfcjeggh\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.contentColumnType','\"text\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.fieldGroup','\"d065c9b6-646f-4d79-a80f-69ee321e38e6\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.handle','\"body\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.instructions','null'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.name','\"body\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.searchable','false'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.availableTransforms','\"\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.availableVolumes','\"*\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.ckeConfig','\"bac6cfb4-ccb5-462d-b720-9bd3e88a14bc\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.columnType','\"text\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.defaultTransform','null'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.enableSourceEditingForNonAdmins','false'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.purifierConfig','null'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.purifyHtml','true'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.showUnpermittedFiles','false'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.showUnpermittedVolumes','false'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.showWordCount','false'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.settings.wordLimit','null'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.translationKeyFormat','null'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.translationMethod','\"none\"'),('fields.8a5a043c-5673-4141-95ba-4e0c5481febd.type','\"craft\\\\ckeditor\\\\Field\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.columnSuffix','null'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.contentColumnType','\"string\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.fieldGroup','\"d065c9b6-646f-4d79-a80f-69ee321e38e6\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.handle','\"navigation\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.instructions','null'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.name','\"navigation\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.searchable','false'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.settings.contentTable','\"{{%matrixcontent_navigation}}\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.settings.maxBlocks','null'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.settings.minBlocks','null'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.settings.propagationKeyFormat','null'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.settings.propagationMethod','\"all\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.translationKeyFormat','null'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.translationMethod','\"site\"'),('fields.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3.type','\"craft\\\\fields\\\\Matrix\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.columnSuffix','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.contentColumnType','\"string\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.fieldGroup','\"d065c9b6-646f-4d79-a80f-69ee321e38e6\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.handle','\"image\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.instructions','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.name','\"Image\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.searchable','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.allowedKinds','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.allowSelfRelations','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.allowSubfolders','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.allowUploads','true'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.branchLimit','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.defaultUploadLocationSource','\"volume:2c3cf118-1d0e-49ed-8501-035517bcdc3a\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.defaultUploadLocationSubpath','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.localizeRelations','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.maintainHierarchy','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.maxRelations','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.minRelations','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.previewMode','\"full\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.restrictedDefaultUploadSubpath','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.restrictedLocationSource','\"volume:2c3cf118-1d0e-49ed-8501-035517bcdc3a\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.restrictedLocationSubpath','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.restrictFiles','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.restrictLocation','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.selectionCondition.__assoc__.0.0','\"elementType\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.selectionCondition.__assoc__.0.1','\"craft\\\\elements\\\\Asset\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.selectionCondition.__assoc__.1.0','\"fieldContext\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.selectionCondition.__assoc__.1.1','\"global\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.selectionCondition.__assoc__.2.0','\"class\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.selectionCondition.__assoc__.2.1','\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.selectionLabel','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.showSiteMenu','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.showUnpermittedFiles','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.showUnpermittedVolumes','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.sources','\"*\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.targetSiteId','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.validateRelatedElements','false'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.settings.viewMode','\"list\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.translationKeyFormat','null'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.translationMethod','\"site\"'),('fields.b225808e-ba87-45b1-b29e-e5fff13cd7e7.type','\"craft\\\\fields\\\\Assets\"'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.columnSuffix','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.contentColumnType','\"decimal(12,2)\"'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.fieldGroup','\"d065c9b6-646f-4d79-a80f-69ee321e38e6\"'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.handle','\"price\"'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.instructions','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.name','\"Price\"'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.searchable','false'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.decimals','2'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.defaultValue','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.max','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.min','0'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.prefix','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.previewCurrency','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.previewFormat','\"decimal\"'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.size','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.settings.suffix','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.translationKeyFormat','null'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.translationMethod','\"none\"'),('fields.e2702452-ff79-44e2-8589-26f911a1b116.type','\"craft\\\\fields\\\\Number\"'),('fs.assets.hasUrls','true'),('fs.assets.name','\"assets\"'),('fs.assets.settings.path','\"@webroot/assets\"'),('fs.assets.type','\"craft\\\\fs\\\\Local\"'),('fs.assets.url','\"@web/assets\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elementCondition','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.elementCondition','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.fieldUid','\"9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.instructions','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.label','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.required','false'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.tip','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.uid','\"6ec15b1a-4c2e-4baa-816f-08f12081d116\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.userCondition','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.warning','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.elements.0.width','100'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.name','\"navigation\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.uid','\"34836475-0cde-42fc-8360-f747d32d4a7f\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.fieldLayouts.df374500-1c47-43b8-86df-da651bc26536.tabs.0.userCondition','null'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.handle','\"navigation\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.name','\"Navigation\"'),('globalSets.b5714f02-37b0-4105-8e73-8230f809a08a.sortOrder','1'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.field','\"9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elementCondition','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.elementCondition','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.fieldUid','\"3fd01f77-7c87-47f7-ac36-94628bab8e91\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.label','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.required','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.tip','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.uid','\"03709973-8b5f-4f02-9cb0-2188c900f589\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.userCondition','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.warning','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.0.width','100'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.elementCondition','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.fieldUid','\"bac33fd7-ecfc-4b9a-a31c-a66b899ea138\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.label','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.required','true'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.tip','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.uid','\"2d5e4638-7959-4919-bb5f-bf9bedad9c82\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.userCondition','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.warning','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.elements.1.width','100'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.name','\"Content\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.uid','\"ccbe5c43-e908-4cce-9a91-eb0228188b0c\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fieldLayouts.7ec205b1-a1b0-47ca-ac9e-ea587adfb133.tabs.0.userCondition','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.columnSuffix','\"ehppnbqf\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.contentColumnType','\"text\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.fieldGroup','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.handle','\"navname\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.instructions','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.name','\"navname\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.searchable','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.byteLimit','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.charLimit','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.code','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.columnType','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.initialRows','4'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.multiline','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.placeholder','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.settings.uiMode','\"normal\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.translationKeyFormat','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.translationMethod','\"none\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.3fd01f77-7c87-47f7-ac36-94628bab8e91.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.columnSuffix','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.contentColumnType','\"string\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.fieldGroup','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.handle','\"navlink\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.instructions','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.name','\"navlink\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.searchable','true'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.allowSelfRelations','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.branchLimit','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.localizeRelations','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.maintainHierarchy','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.maxRelations','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.minRelations','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.selectionCondition.__assoc__.0.0','\"elementType\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.selectionCondition.__assoc__.0.1','\"craft\\\\elements\\\\Entry\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.selectionCondition.__assoc__.1.0','\"fieldContext\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.selectionCondition.__assoc__.1.1','\"global\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.selectionCondition.__assoc__.2.0','\"class\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.selectionCondition.__assoc__.2.1','\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.selectionLabel','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.showSiteMenu','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.sources','\"*\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.targetSiteId','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.validateRelatedElements','false'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.settings.viewMode','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.translationKeyFormat','null'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.translationMethod','\"site\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.fields.bac33fd7-ecfc-4b9a-a31c-a66b899ea138.type','\"craft\\\\fields\\\\Entries\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.handle','\"navigation\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.name','\"navigation\"'),('matrixBlockTypes.fe4a263e-3f8a-458d-8db1-e0951c3f6c71.sortOrder','1'),('meta.__names__.1c04db77-1649-4c67-90a7-cc5ad88002ba','\"Product\"'),('meta.__names__.2c3cf118-1d0e-49ed-8501-035517bcdc3a','\"images\"'),('meta.__names__.3fd01f77-7c87-47f7-ac36-94628bab8e91','\"navname\"'),('meta.__names__.4f2f0f30-956f-4af5-a4e3-05cda66a356c','\"shape\"'),('meta.__names__.5793ed2d-1dd5-4bd6-b70c-1c56d2460493','\"Karim Matar Webstore\"'),('meta.__names__.66a50116-1564-4bc7-9a9b-c617b443ba77','\"rating\"'),('meta.__names__.7958a590-988a-4dd3-b336-2d63da050ee3','\"Default\"'),('meta.__names__.88906281-247e-498f-8e15-a54e9ef1dc5e','\"Category\"'),('meta.__names__.8a5a043c-5673-4141-95ba-4e0c5481febd','\"body\"'),('meta.__names__.9d38ae0c-fc56-4900-bfe1-bb7c04fe33d3','\"navigation\"'),('meta.__names__.b225808e-ba87-45b1-b29e-e5fff13cd7e7','\"Image\"'),('meta.__names__.b5714f02-37b0-4105-8e73-8230f809a08a','\"Navigation\"'),('meta.__names__.bac33fd7-ecfc-4b9a-a31c-a66b899ea138','\"navlink\"'),('meta.__names__.bac6cfb4-ccb5-462d-b720-9bd3e88a14bc','\"Simple\"'),('meta.__names__.c4379a72-a17c-497e-b548-3c8b6ce10bf7','\"Karim Matar Webstore\"'),('meta.__names__.c453e827-d8d0-4bed-847d-05a28ea91f8d','\"Default\"'),('meta.__names__.d065c9b6-646f-4d79-a80f-69ee321e38e6','\"Common\"'),('meta.__names__.d317ddf8-29cb-4593-b8b6-f1b62ae957b2','\"Pages\"'),('meta.__names__.e2702452-ff79-44e2-8589-26f911a1b116','\"Price\"'),('meta.__names__.f0179ba9-b210-44a5-94ad-aec8a17fb158','\"Product Categories\"'),('meta.__names__.fe4a263e-3f8a-458d-8db1-e0951c3f6c71','\"navigation\"'),('plugins.ckeditor.edition','\"standard\"'),('plugins.ckeditor.enabled','true'),('plugins.ckeditor.schemaVersion','\"3.0.0.0\"'),('plugins.contact-form.edition','\"standard\"'),('plugins.contact-form.enabled','true'),('plugins.contact-form.schemaVersion','\"1.0.0\"'),('plugins.contact-form.settings.allowAttachments','\"1\"'),('plugins.contact-form.settings.allowedMessageFields','null'),('plugins.contact-form.settings.prependSender','\"On behalf of\"'),('plugins.contact-form.settings.prependSubject','\"New message from Karim Matar Webstore\"'),('plugins.contact-form.settings.successFlashMessage','\"Your message has been sent.\"'),('plugins.contact-form.settings.toEmail','\"karim.matar@student.arteveldehs.be\"'),('plugins.quick-field.edition','\"standard\"'),('plugins.quick-field.enabled','true'),('plugins.quick-field.schemaVersion','\"1.0.0\"'),('plugins.wheelform.edition','\"standard\"'),('plugins.wheelform.enabled','true'),('plugins.wheelform.schemaVersion','\"2.0.0\"'),('plugins.wheelform.settings.cp_label','\"Forms\"'),('plugins.wheelform.settings.disabled_fields','\"\"'),('plugins.wheelform.settings.from_email','\"karim.matar@student.arteveldehs.be\"'),('plugins.wheelform.settings.from_name','\"\"'),('plugins.wheelform.settings.recaptcha_min_score','\"0.5\"'),('plugins.wheelform.settings.recaptcha_public','\"\"'),('plugins.wheelform.settings.recaptcha_secret','\"\"'),('plugins.wheelform.settings.recaptcha_version','\"3\"'),('plugins.wheelform.settings.success_message','\"Thank You! we will review your submission shortly.\"'),('plugins.wheelform.settings.volume_id','\"1\"'),('routes.4fd69b4c-0201-4d61-a049-27143b088d2a.siteUid','null'),('routes.4fd69b4c-0201-4d61-a049-27143b088d2a.sortOrder','1'),('routes.4fd69b4c-0201-4d61-a049-27143b088d2a.template','\"category-list.twig\"'),('routes.4fd69b4c-0201-4d61-a049-27143b088d2a.uriParts.0','\"categories\"'),('routes.4fd69b4c-0201-4d61-a049-27143b088d2a.uriPattern','\"categories\"'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.defaultPlacement','\"end\"'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.enableVersioning','true'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.handle','\"product\"'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.name','\"Product\"'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.propagationMethod','\"all\"'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.enabledByDefault','true'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.hasUrls','true'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.template','\"pages/_product.twig\"'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.uriFormat','\"product/{slug}\"'),('sections.1c04db77-1649-4c67-90a7-cc5ad88002ba.type','\"channel\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.defaultPlacement','\"end\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.enableVersioning','true'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.handle','\"pages\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.name','\"Pages\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.propagationMethod','\"all\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.enabledByDefault','true'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.hasUrls','true'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.template','\"pages/_entry\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.siteSettings.c4379a72-a17c-497e-b548-3c8b6ce10bf7.uriFormat','\"pages/{slug}\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.structure.maxLevels','null'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.structure.uid','\"ac370ac5-500f-43aa-8c22-9bd39c2fd017\"'),('sections.d317ddf8-29cb-4593-b8b6-f1b62ae957b2.type','\"structure\"'),('siteGroups.5793ed2d-1dd5-4bd6-b70c-1c56d2460493.name','\"Karim Matar Webstore\"'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.baseUrl','\"$PRIMARY_SITE_URL\"'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.handle','\"default\"'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.hasUrls','true'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.language','\"en-US\"'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.name','\"Karim Matar Webstore\"'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.primary','true'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.siteGroup','\"5793ed2d-1dd5-4bd6-b70c-1c56d2460493\"'),('sites.c4379a72-a17c-497e-b548-3c8b6ce10bf7.sortOrder','1'),('system.edition','\"solo\"'),('system.live','true'),('system.name','\"Karim Matar Webstore\"'),('system.schemaVersion','\"4.5.3.0\"'),('system.timeZone','\"America/Los_Angeles\"'),('users.allowPublicRegistration','false'),('users.defaultGroup','null'),('users.photoSubpath','null'),('users.photoVolumeUid','null'),('users.requireEmailVerification','true'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elementCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.autocapitalize','true'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.autocomplete','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.autocorrect','true'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.class','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.disabled','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.elementCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.id','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.instructions','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.label','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.max','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.min','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.name','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.orientation','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.placeholder','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.readonly','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.requirable','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.size','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.step','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.tip','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.title','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.uid','\"a2068f29-0505-4b45-99a7-1038d5649228\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.userCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.warning','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.0.width','100'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.attribute','\"alt\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.class','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.cols','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.disabled','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.elementCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.id','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.instructions','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.label','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.name','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.orientation','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.placeholder','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.readonly','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.requirable','true'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.required','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.rows','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.tip','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.title','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\assets\\\\AltField\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.uid','\"fb112e52-e76b-4b49-8b00-b978b0116df8\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.userCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.warning','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.1.width','100'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.elementCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.fieldUid','\"b225808e-ba87-45b1-b29e-e5fff13cd7e7\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.instructions','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.label','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.required','false'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.tip','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.uid','\"005fc869-dc43-4746-9457-a303b6899681\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.userCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.warning','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.elements.2.width','100'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.name','\"Content\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.uid','\"32eef56c-5b41-439b-9a0a-c605a43cd157\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fieldLayouts.c36975de-b991-4d27-862a-c48e7a1e56b7.tabs.0.userCondition','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.fs','\"assets\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.handle','\"images\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.name','\"images\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.sortOrder','1'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.titleTranslationKeyFormat','null'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.titleTranslationMethod','\"site\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.transformFs','\"\"'),('volumes.2c3cf118-1d0e-49ed-8501-035517bcdc3a.transformSubpath','\"\"');
/*!40000 ALTER TABLE `projectconfig` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `queue`
--

LOCK TABLES `queue` WRITE;
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `queue` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `relations` VALUES (1,3,11,NULL,3,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','cd18df3d-e2d8-4bbe-91b8-6bd4db1b0d8f'),(2,3,12,NULL,9,1,'2023-10-26 08:23:50','2023-10-26 08:23:50','ff7e5ec5-93c1-4db5-8c83-cf61cf0d8445'),(4,5,3,NULL,23,1,'2023-10-26 09:30:18','2023-10-26 09:30:18','4c39b226-4832-4506-8894-0e1db2708d27'),(5,5,25,NULL,23,1,'2023-10-26 09:30:18','2023-10-26 09:30:18','f69b3e8e-501c-434c-b04b-9b5ab8f77576'),(6,5,26,NULL,23,1,'2023-10-26 09:48:34','2023-10-26 09:48:34','1ddbb829-fb70-451b-ad33-699ad91520d5'),(7,5,27,NULL,23,1,'2023-10-26 09:50:35','2023-10-26 09:50:35','a637a27d-0871-4945-947a-a63fb4a4c8b4'),(9,5,31,NULL,23,1,'2023-10-26 09:58:56','2023-10-26 09:58:56','1249c31b-7642-426c-ac5b-1e967d7a8f03'),(10,8,36,NULL,34,1,'2023-10-26 13:14:16','2023-10-26 13:14:16','fa27c82f-7694-4dcd-b6b2-50b81e7faa52'),(11,8,37,NULL,34,1,'2023-10-26 13:14:34','2023-10-26 13:14:34','2510621f-5a29-413d-abd4-3c1e716e8b25'),(12,8,38,NULL,34,1,'2023-10-26 13:30:17','2023-10-26 13:30:17','b217a488-0dae-4430-aaff-fc69eceda1f8'),(13,8,40,NULL,33,1,'2023-10-26 13:48:31','2023-10-26 13:48:31','e4c6f5aa-1a09-4f2a-b45d-f86925698e8d'),(14,8,41,NULL,33,1,'2023-10-26 13:48:32','2023-10-26 13:48:32','2fec93cb-ebb3-4e03-be41-d3fdd3de5c4c'),(18,5,44,NULL,42,1,'2023-10-26 13:55:12','2023-10-26 13:55:12','51a2d65a-e2c5-420d-8f05-c49e8abf87dd'),(19,8,44,NULL,34,1,'2023-10-26 13:55:12','2023-10-26 13:55:12','6871c2d0-b5fa-485a-b029-fd3450c6b575'),(20,5,45,NULL,42,1,'2023-10-26 13:55:46','2023-10-26 13:55:46','c62c8548-bed3-4882-a3c8-c3ed7c1e99d5'),(21,8,45,NULL,34,1,'2023-10-26 13:55:46','2023-10-26 13:55:46','8c64a7da-87dd-4562-b2fb-65e34b646e87'),(24,5,40,NULL,46,1,'2023-10-26 14:12:14','2023-10-26 14:12:14','1feab2c1-d6ad-4683-8668-10f7be2faa65'),(25,5,48,NULL,46,1,'2023-10-26 14:12:14','2023-10-26 14:12:14','ee335805-e1ff-4599-a83b-69d887ddeab7'),(26,8,48,NULL,33,1,'2023-10-26 14:12:14','2023-10-26 14:12:14','63a53722-7335-42b4-81a7-d8d342b7fd7b'),(30,5,36,NULL,50,1,'2023-10-26 14:14:15','2023-10-26 14:14:15','6c2cdb35-ffdf-4851-8f12-2741bf4a8e80'),(31,5,51,NULL,50,1,'2023-10-26 14:14:15','2023-10-26 14:14:15','1bbb27da-de5e-4ef2-9de5-9399d09b894d'),(32,8,51,NULL,34,1,'2023-10-26 14:14:15','2023-10-26 14:14:15','1562395e-656f-4040-b321-930ee8c4b7e9'),(33,5,52,NULL,53,1,'2023-10-26 14:14:51','2023-10-26 14:14:51','252bef4f-17cb-4c1d-86d0-b3a7d24756fd'),(34,8,52,NULL,34,1,'2023-10-26 14:15:06','2023-10-26 14:15:06','afff76b6-0901-4c90-8a8e-a09c643e3fda'),(35,5,54,NULL,53,1,'2023-10-26 14:15:40','2023-10-26 14:15:40','51632357-58c4-4676-aceb-0a406d8dab81'),(36,8,54,NULL,34,1,'2023-10-26 14:15:40','2023-10-26 14:15:40','0c5d68de-4386-4e53-8337-b4ec577ab69f'),(39,5,57,NULL,46,1,'2023-10-26 14:20:31','2023-10-26 14:20:31','6e5210a7-bb8a-49ad-9504-e0faa8eb7f3a'),(40,8,57,NULL,33,1,'2023-10-26 14:20:31','2023-10-26 14:20:31','35183ab0-e685-42d4-8e05-993ee9133d7f'),(41,5,58,NULL,59,1,'2023-10-26 14:21:04','2023-10-26 14:21:04','a8751b43-208e-474c-a3b2-ce0d98cd1a0f'),(42,8,58,NULL,34,1,'2023-10-26 14:21:13','2023-10-26 14:21:13','0480cfe4-d8a7-4ae1-90be-23e8a38ff5c7'),(43,5,60,NULL,59,1,'2023-10-26 14:21:14','2023-10-26 14:21:14','b1fd1d92-b58e-412f-b31b-ff66d397021a'),(44,8,60,NULL,34,1,'2023-10-26 14:21:14','2023-10-26 14:21:14','808745a7-cdc3-4236-ba07-89a234179247'),(45,5,61,NULL,62,1,'2023-10-26 14:22:53','2023-10-26 14:22:53','fe7ca7ba-6a7b-42c0-b155-d70bdd5ff0dc'),(46,8,61,NULL,35,1,'2023-10-26 14:23:25','2023-10-26 14:23:25','58d9a882-3dcb-4426-b1e4-96b6b9ffe87c'),(47,5,63,NULL,62,1,'2023-10-26 14:23:27','2023-10-26 14:23:27','1e2e4074-a040-418e-8df0-e78de76c6d7a'),(48,8,63,NULL,35,1,'2023-10-26 14:23:27','2023-10-26 14:23:27','ed2245d4-eaa6-4e80-88b6-80219fe1c0b4'),(49,5,64,NULL,65,1,'2023-10-26 14:24:00','2023-10-26 14:24:00','1aa44231-67be-43d9-8238-d23680d10a70'),(50,8,64,NULL,33,1,'2023-10-26 14:24:13','2023-10-26 14:24:13','726e5018-25dc-44a7-b84d-60f4e51f0f93'),(51,5,66,NULL,65,1,'2023-10-26 14:24:34','2023-10-26 14:24:34','115ad977-1a31-463e-b255-b14e52043a17'),(52,8,66,NULL,33,1,'2023-10-26 14:24:34','2023-10-26 14:24:34','1b970749-bef9-4495-9e47-67acc293e615'),(53,5,67,NULL,68,1,'2023-10-26 14:25:06','2023-10-26 14:25:06','19226ed2-70f2-4bed-be45-150058156714'),(54,8,67,NULL,35,1,'2023-10-26 14:25:18','2023-10-26 14:25:18','21925544-4893-4ad2-9498-82f7cb6ad091'),(55,5,69,NULL,68,1,'2023-10-26 14:25:19','2023-10-26 14:25:19','1bed485f-0603-4fa8-af12-bd36e1933bda'),(56,8,69,NULL,35,1,'2023-10-26 14:25:19','2023-10-26 14:25:19','0568cb87-09a6-477e-a1e6-313f35e7c592'),(57,5,70,NULL,71,1,'2023-10-26 14:25:54','2023-10-26 14:25:54','ddd185ee-4f55-4538-b393-72f2f7a52946'),(58,8,70,NULL,33,1,'2023-10-26 14:26:02','2023-10-26 14:26:02','9611a159-ce7d-4f65-a0bf-99daad1b8df7'),(59,5,72,NULL,71,1,'2023-10-26 14:26:04','2023-10-26 14:26:04','aa0daa1a-158a-4caa-9885-c08262ccae07'),(60,8,72,NULL,33,1,'2023-10-26 14:26:04','2023-10-26 14:26:04','85e1a5d0-04ed-4f3c-a97d-13854baee404'),(61,5,73,NULL,74,1,'2023-10-26 14:30:23','2023-10-26 14:30:23','a0a93b68-929c-44cc-833d-8cb43f463eb7'),(62,8,73,NULL,35,1,'2023-10-26 14:30:30','2023-10-26 14:30:30','2e5343b7-cb30-4fc2-b0f0-be432af7f142'),(63,5,75,NULL,74,1,'2023-10-26 14:30:31','2023-10-26 14:30:31','69d4807c-5c25-450d-8d4d-fd9600512814'),(64,8,75,NULL,35,1,'2023-10-26 14:30:31','2023-10-26 14:30:31','8edb8201-2114-4ed9-a2c9-8cafd51406b3'),(66,5,77,NULL,23,1,'2023-10-26 14:58:08','2023-10-26 14:58:08','5376010a-08ff-40bc-b9df-ba62adb65c08'),(69,5,79,NULL,46,1,'2023-10-26 15:12:36','2023-10-26 15:12:36','ddd9f1c5-420e-4be2-a6c3-829d5c12f2a9'),(70,8,79,NULL,33,1,'2023-10-26 15:12:36','2023-10-26 15:12:36','941bed03-7199-4400-ad1d-9fe340538329'),(73,5,83,NULL,74,1,'2023-10-29 18:15:23','2023-10-29 18:15:23','6fd48150-0c38-4866-a354-5b7bf65b44b5'),(74,8,83,NULL,35,1,'2023-10-29 18:15:23','2023-10-29 18:15:23','22a058c4-a3d2-43e7-9d88-20bd037fb1d6'),(77,5,85,NULL,71,1,'2023-10-29 18:15:30','2023-10-29 18:15:30','649bfe08-6a22-4ebe-9dce-8bded942f5f2'),(78,8,85,NULL,33,1,'2023-10-29 18:15:30','2023-10-29 18:15:30','8f5dabf8-c0e2-4094-99b8-d6fde0dc9e9a'),(81,5,87,NULL,68,1,'2023-10-29 18:15:36','2023-10-29 18:15:36','ac550fe1-2c7a-4df4-bcd4-0b3dfe6d63c9'),(82,8,87,NULL,35,1,'2023-10-29 18:15:36','2023-10-29 18:15:36','921b7e2a-c50f-43d5-a189-46e27d3c1b6b'),(85,5,89,NULL,65,1,'2023-10-29 18:15:42','2023-10-29 18:15:42','dcf1e9e3-2f61-4119-9f6f-25e2f1896bab'),(86,8,89,NULL,33,1,'2023-10-29 18:15:42','2023-10-29 18:15:42','2b8aa492-d178-49aa-b691-6b57bac15341'),(89,5,91,NULL,62,1,'2023-10-29 18:15:51','2023-10-29 18:15:51','0b193da0-d74f-435c-a4ee-040c3633f74e'),(90,8,91,NULL,35,1,'2023-10-29 18:15:51','2023-10-29 18:15:51','0c13bead-72dc-4374-9c87-7722590db30e'),(93,5,93,NULL,53,1,'2023-10-29 18:15:59','2023-10-29 18:15:59','4c4b6691-ae6e-4430-9c74-c0567e6dbd2a'),(94,8,93,NULL,34,1,'2023-10-29 18:15:59','2023-10-29 18:15:59','5a45ebca-9572-42b8-904e-31f7887212ca'),(97,5,95,NULL,46,1,'2023-10-29 18:16:07','2023-10-29 18:16:07','4ba608b6-33fe-4f0e-91ab-d6f477bb17dd'),(98,8,95,NULL,33,1,'2023-10-29 18:16:07','2023-10-29 18:16:07','e859215b-e2cf-48f0-bd5c-3b11fb2abcf3'),(101,5,97,NULL,50,1,'2023-10-29 18:16:13','2023-10-29 18:16:13','1962f3e6-fc5d-43a0-b721-952e8fc52e8b'),(102,8,97,NULL,34,1,'2023-10-29 18:16:13','2023-10-29 18:16:13','e41b4bf8-a628-44b7-91f0-e994b9bbf093');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `revisions` VALUES (1,3,1,1,''),(2,3,1,2,''),(3,3,1,3,'Applied “Draft 1”'),(4,9,1,1,''),(5,3,1,4,''),(6,3,1,5,'Applied “Draft 1”'),(7,3,1,6,'Applied “Draft 1”'),(8,3,1,7,'Applied “Draft 1”'),(9,3,1,8,'Applied “Draft 1”'),(10,3,1,9,''),(11,3,1,10,''),(12,9,1,2,'Applied “Draft 1”'),(13,3,1,11,'Applied “Draft 1”'),(14,36,1,1,''),(15,36,1,2,''),(16,40,1,1,''),(17,36,1,3,'Applied “Draft 1”'),(18,36,1,4,''),(19,40,1,2,'Applied “Draft 1”'),(20,36,1,5,'Applied “Draft 1”'),(21,52,1,1,''),(22,40,1,3,'Applied “Draft 1”'),(23,58,1,1,''),(24,61,1,1,''),(25,64,1,1,''),(26,67,1,1,''),(27,70,1,1,''),(28,73,1,1,''),(29,3,1,12,'Applied “Draft 1”'),(30,40,1,4,'Applied “Draft 1”'),(31,80,1,1,''),(32,73,1,2,'Applied “Draft 1”'),(33,70,1,2,'Applied “Draft 1”'),(34,67,1,2,'Applied “Draft 1”'),(35,64,1,2,'Applied “Draft 1”'),(36,61,1,2,'Applied “Draft 1”'),(37,52,1,2,'Applied “Draft 1”'),(38,40,1,5,'Applied “Draft 1”'),(39,36,1,6,'Applied “Draft 1”');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `searchindex`
--

LOCK TABLES `searchindex` WRITE;
/*!40000 ALTER TABLE `searchindex` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `searchindex` VALUES (1,'email',0,1,' karim matar student arteveldehs be '),(1,'firstname',0,1,''),(1,'fullname',0,1,''),(1,'lastname',0,1,''),(1,'slug',0,1,''),(1,'username',0,1,' admin '),(2,'slug',0,1,''),(3,'slug',0,1,' about '),(3,'title',0,1,' about me '),(5,'slug',0,1,' temp kgbaryhwsfawiefipoinfawksyhwpivmtyzo '),(5,'title',0,1,''),(9,'slug',0,1,' contact '),(9,'title',0,1,' contact '),(11,'field',3,1,' about '),(11,'slug',0,1,''),(12,'field',3,1,' contact '),(12,'slug',0,1,''),(16,'alt',0,1,''),(16,'extension',0,1,' jpg '),(16,'filename',0,1,' 378233798 1772485156541432 2900207488565928624 n jpg '),(16,'kind',0,1,' image '),(16,'slug',0,1,''),(16,'title',0,1,' 378233798 1772485156541432 2900207488565928624 n '),(23,'alt',0,1,''),(23,'extension',0,1,' jpg '),(23,'filename',0,1,' 378233798 1772485156541432 2900207488565928624 n 2023 10 26 093016 gsqd jpg '),(23,'kind',0,1,' image '),(23,'slug',0,1,''),(23,'title',0,1,' 378233798 1772485156541432 2900207488565928624 n '),(32,'slug',0,1,' temp xaxonkptabyloiryibxopyhkoagxmlhnunwz '),(32,'title',0,1,''),(33,'slug',0,1,' accessories '),(33,'title',0,1,' accessories '),(34,'slug',0,1,' smart phones '),(34,'title',0,1,' smart phones '),(35,'slug',0,1,' laptops '),(35,'title',0,1,' laptops '),(36,'slug',0,1,' iphone '),(36,'title',0,1,' iphone 15 '),(39,'slug',0,1,' temp prwwtoqjduuadlyzichcuoygcmdpffxouugr '),(39,'title',0,1,''),(40,'slug',0,1,' phone case '),(40,'title',0,1,' phone case '),(42,'alt',0,1,''),(42,'extension',0,1,' png '),(42,'filename',0,1,' smartschool app icon orange png '),(42,'kind',0,1,' image '),(42,'slug',0,1,''),(42,'title',0,1,' smartschool app icon orange '),(46,'alt',0,1,''),(46,'extension',0,1,' jpg '),(46,'filename',0,1,' case jpg '),(46,'kind',0,1,' image '),(46,'slug',0,1,''),(46,'title',0,1,' case '),(50,'alt',0,1,''),(50,'extension',0,1,' jpg '),(50,'filename',0,1,' iphone 15 jpg '),(50,'kind',0,1,' image '),(50,'slug',0,1,''),(50,'title',0,1,' iphone 15 '),(52,'slug',0,1,' galaxy s23 ultra '),(52,'title',0,1,' galaxy s23 ultra '),(53,'alt',0,1,''),(53,'extension',0,1,' jpg '),(53,'filename',0,1,' s23 ultra jpg '),(53,'kind',0,1,' image '),(53,'slug',0,1,''),(53,'title',0,1,' s23 ultra '),(55,'slug',0,1,' temp wzuakcsdqzndyuxvyzgcuzqcaugchupjdydy '),(55,'title',0,1,''),(58,'slug',0,1,' ipad pro '),(58,'title',0,1,' ipad pro '),(59,'alt',0,1,''),(59,'extension',0,1,' jpg '),(59,'filename',0,1,' ipad jpg '),(59,'kind',0,1,' image '),(59,'slug',0,1,''),(59,'title',0,1,' ipad '),(61,'slug',0,1,' acer laptop '),(61,'title',0,1,' acer laptop '),(62,'alt',0,1,''),(62,'extension',0,1,' jpg '),(62,'filename',0,1,' acer jpg '),(62,'kind',0,1,' image '),(62,'slug',0,1,''),(62,'title',0,1,' acer '),(64,'slug',0,1,' airpods pro '),(64,'title',0,1,' airpods pro '),(65,'alt',0,1,''),(65,'extension',0,1,' jpg '),(65,'filename',0,1,' airpods jpg '),(65,'kind',0,1,' image '),(65,'slug',0,1,''),(65,'title',0,1,' airpods '),(67,'slug',0,1,' msi laptop '),(67,'title',0,1,' msi laptop '),(68,'alt',0,1,''),(68,'extension',0,1,' jpg '),(68,'filename',0,1,' msi jpg '),(68,'kind',0,1,' image '),(68,'slug',0,1,''),(68,'title',0,1,' msi '),(70,'slug',0,1,' apple airtag '),(70,'title',0,1,' apple airtag '),(71,'alt',0,1,''),(71,'extension',0,1,' jpg '),(71,'filename',0,1,' airtag jpg '),(71,'kind',0,1,' image '),(71,'slug',0,1,''),(71,'title',0,1,' airtag '),(73,'slug',0,1,' macbook '),(73,'title',0,1,' macbook '),(74,'alt',0,1,''),(74,'extension',0,1,' jpg '),(74,'filename',0,1,' macbook jpg '),(74,'kind',0,1,' image '),(74,'slug',0,1,''),(74,'title',0,1,' macbook '),(80,'slug',0,1,' thanks '),(80,'title',0,1,' thanks ');
/*!40000 ALTER TABLE `searchindex` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sections` VALUES (1,1,'Pages','pages','structure',1,'all','end',NULL,'2023-10-26 08:07:14','2023-10-26 08:07:14',NULL,'d317ddf8-29cb-4593-b8b6-f1b62ae957b2'),(2,NULL,'Product','product','channel',1,'all','end',NULL,'2023-10-26 12:56:15','2023-10-26 12:56:15',NULL,'1c04db77-1649-4c67-90a7-cc5ad88002ba');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `sections_sites`
--

LOCK TABLES `sections_sites` WRITE;
/*!40000 ALTER TABLE `sections_sites` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sections_sites` VALUES (1,1,1,1,'pages/{slug}','pages/_entry',1,'2023-10-26 08:07:14','2023-10-26 08:07:14','ab24e5cd-68e4-40f0-ba8e-e6f1a79df72b'),(2,2,1,1,'product/{slug}','pages/_product.twig',1,'2023-10-26 12:56:15','2023-10-26 12:56:15','43fb3187-ea20-48b3-92d5-f99b74efe937');
/*!40000 ALTER TABLE `sections_sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `sequences`
--

LOCK TABLES `sequences` WRITE;
/*!40000 ALTER TABLE `sequences` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `sequences` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `shunnedmessages`
--

LOCK TABLES `shunnedmessages` WRITE;
/*!40000 ALTER TABLE `shunnedmessages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `sitegroups`
--

LOCK TABLES `sitegroups` WRITE;
/*!40000 ALTER TABLE `sitegroups` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sitegroups` VALUES (1,'Karim Matar Webstore','2023-10-24 13:14:03','2023-10-24 13:14:03',NULL,'5793ed2d-1dd5-4bd6-b70c-1c56d2460493');
/*!40000 ALTER TABLE `sitegroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sites` VALUES (1,1,1,'true','Karim Matar Webstore','default','en-US',1,'$PRIMARY_SITE_URL',1,'2023-10-24 13:14:03','2023-10-24 13:14:03',NULL,'c4379a72-a17c-497e-b548-3c8b6ce10bf7');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `structureelements`
--

LOCK TABLES `structureelements` WRITE;
/*!40000 ALTER TABLE `structureelements` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `structureelements` VALUES (1,1,NULL,1,1,10,0,'2023-10-26 08:08:05','2023-10-29 14:09:16','b21a4f17-85ce-4914-9d8d-186c1fa9dbdf'),(2,1,3,1,2,3,1,'2023-10-26 08:08:05','2023-10-26 08:08:05','c13fa3a5-b643-4e60-adeb-17124b67ce00'),(3,1,5,1,4,5,1,'2023-10-26 08:11:59','2023-10-26 08:11:59','d0151898-a4d5-4398-ad9d-8ba8f56fc241'),(4,1,9,1,6,7,1,'2023-10-26 08:15:37','2023-10-26 08:15:37','9262da29-f4c9-4a1c-bd60-45c8691f2f88'),(6,2,NULL,6,1,8,0,'2023-10-26 13:09:20','2023-10-26 13:09:55','47afbc1d-63ac-473f-afa8-479321f82e57'),(7,2,33,6,2,3,1,'2023-10-26 13:09:20','2023-10-26 13:09:20','cee7f5ac-7eab-4503-8f36-405cd5f04e24'),(8,2,34,6,4,5,1,'2023-10-26 13:09:46','2023-10-26 13:09:46','a8ed1cff-4187-4f6b-8722-b8e684c6f4ae'),(9,2,35,6,6,7,1,'2023-10-26 13:09:55','2023-10-26 13:09:55','57f71a0a-ef90-437f-b96e-c49edecdbd2b'),(10,1,80,1,8,9,1,'2023-10-29 14:09:16','2023-10-29 14:09:16','88be0fae-a0c9-4e36-ab42-bd3b914e3971');
/*!40000 ALTER TABLE `structureelements` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `structures`
--

LOCK TABLES `structures` WRITE;
/*!40000 ALTER TABLE `structures` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `structures` VALUES (1,NULL,'2023-10-26 08:07:14','2023-10-26 08:07:14',NULL,'ac370ac5-500f-43aa-8c22-9bd39c2fd017'),(2,NULL,'2023-10-26 13:06:45','2023-10-26 13:06:45',NULL,'b9c8a09e-f636-4b4c-8eba-21e362599850');
/*!40000 ALTER TABLE `structures` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `systemmessages`
--

LOCK TABLES `systemmessages` WRITE;
/*!40000 ALTER TABLE `systemmessages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `systemmessages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `taggroups`
--

LOCK TABLES `taggroups` WRITE;
/*!40000 ALTER TABLE `taggroups` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `taggroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `usergroups_users`
--

LOCK TABLES `usergroups_users` WRITE;
/*!40000 ALTER TABLE `usergroups_users` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `userpermissions`
--

LOCK TABLES `userpermissions` WRITE;
/*!40000 ALTER TABLE `userpermissions` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `userpermissions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `userpermissions_usergroups`
--

LOCK TABLES `userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `userpermissions_usergroups` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `userpermissions_users`
--

LOCK TABLES `userpermissions_users` WRITE;
/*!40000 ALTER TABLE `userpermissions_users` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `userpreferences`
--

LOCK TABLES `userpreferences` WRITE;
/*!40000 ALTER TABLE `userpreferences` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `userpreferences` VALUES (1,'{\"language\":\"en-US\"}');
/*!40000 ALTER TABLE `userpreferences` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `users` VALUES (1,NULL,1,0,0,0,1,'admin',NULL,NULL,NULL,'karim.matar@student.arteveldehs.be','$2y$13$7jwBSXvzW950crYQ4KSQ2.h826KGs5pthuXHfw6tiqk9/O9ATOnzW','2023-11-13 13:30:53',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'2023-10-24 13:14:03','2023-10-24 13:14:03','2023-11-13 13:30:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `volumefolders`
--

LOCK TABLES `volumefolders` WRITE;
/*!40000 ALTER TABLE `volumefolders` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `volumefolders` VALUES (1,NULL,1,'images',NULL,'2023-10-26 08:43:58','2023-10-26 09:31:19','cdbcedb8-826c-4f93-8aa8-b047d9087b3f'),(2,NULL,NULL,'Temporary filesystem',NULL,'2023-10-26 08:45:31','2023-10-26 08:45:31','f34877d7-e9e2-4edb-8540-3a4b85c287dc'),(3,2,NULL,'user_1','user_1/','2023-10-26 08:45:31','2023-10-26 08:45:31','8b4adb75-c2a2-40a3-a3c5-cd39192452fe');
/*!40000 ALTER TABLE `volumefolders` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `volumes`
--

LOCK TABLES `volumes` WRITE;
/*!40000 ALTER TABLE `volumes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `volumes` VALUES (1,4,'images','images','assets','','','site',NULL,1,'2023-10-26 08:43:58','2023-10-26 08:43:58',NULL,'2c3cf118-1d0e-49ed-8501-035517bcdc3a');
/*!40000 ALTER TABLE `volumes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `wheelform_form_fields`
--

LOCK TABLES `wheelform_form_fields` WRITE;
/*!40000 ALTER TABLE `wheelform_form_fields` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wheelform_form_fields` VALUES (1,1,'email','email',1,0,1,1,'{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"is_reply_to\":false,\"placeholder\":\"\",\"is_user_notification_field\":false,\"display_required_attribute\":false}','2023-10-29 14:13:20','2023-10-29 14:14:08','bd84c0da-837b-4890-9cf0-e0f821a646d9'),(2,1,'name','text',0,0,2,1,'{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"placeholder\":\"\",\"display_required_attribute\":false}','2023-10-29 14:13:20','2023-10-29 14:14:08','bb1ce8a9-fcf8-4145-8c44-9c5df2bc806e'),(3,1,'message','text',1,0,3,1,'{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"placeholder\":\"\",\"display_required_attribute\":false}','2023-10-29 14:13:20','2023-10-29 14:14:08','d9ca9d2f-c1af-4464-b6fc-b861dbe57ef4');
/*!40000 ALTER TABLE `wheelform_form_fields` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `wheelform_forms`
--

LOCK TABLES `wheelform_forms` WRITE;
/*!40000 ALTER TABLE `wheelform_forms` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wheelform_forms` VALUES (1,1,'Contact Form','user@example.com',1,1,0,1,'{\"honeypot\":\"\",\"honeypot_value\":\"\",\"email_subject\":\"\",\"user_notification\":0}','2023-10-29 14:13:20','2023-10-29 14:14:08','7dd4f78b-e673-4ba4-a3c3-fd628fdcf04f');
/*!40000 ALTER TABLE `wheelform_forms` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `wheelform_message_values`
--

LOCK TABLES `wheelform_message_values` WRITE;
/*!40000 ALTER TABLE `wheelform_message_values` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wheelform_message_values` VALUES (16,6,1,'karim.matar7@hotmail.com','2023-11-11 16:51:32','2023-11-11 16:51:32','faf519e1-ad43-460b-977f-72d2d71ce7ff'),(17,6,2,'Karim ','2023-11-11 16:51:32','2023-11-11 16:51:32','e4fe97bd-be90-41c4-86a2-462f7f2af5b1'),(18,6,3,'HELLO','2023-11-11 16:51:32','2023-11-11 16:51:32','c5544d46-5308-45f4-9b19-92cf730bf7ef'),(19,7,1,'karim@gmail.com','2023-11-11 17:10:41','2023-11-11 17:10:41','58161af8-e5d6-4c42-b351-8516f35a85b8'),(20,7,2,'Karim Matar student','2023-11-11 17:10:41','2023-11-11 17:10:41','28e082e0-3e52-43b9-a122-8d9092340b3b'),(21,7,3,'Hello this works properly','2023-11-11 17:10:41','2023-11-11 17:10:41','00ec7f5f-bda3-4255-bb07-89cbedc99e55');
/*!40000 ALTER TABLE `wheelform_message_values` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `wheelform_messages`
--

LOCK TABLES `wheelform_messages` WRITE;
/*!40000 ALTER TABLE `wheelform_messages` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wheelform_messages` VALUES (6,1,1,NULL,'2023-11-11 16:51:32','2023-11-11 16:51:38','3295b29b-c3c4-4287-bb7e-92ce64194618'),(7,1,1,NULL,'2023-11-11 17:10:41','2023-11-11 17:10:54','a8747270-806e-47df-97a0-9e3704cbd9cb');
/*!40000 ALTER TABLE `wheelform_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `widgets` VALUES (1,1,'craft\\widgets\\RecentEntries',1,NULL,'{\"siteId\":1,\"section\":\"*\",\"limit\":10}',1,'2023-10-24 13:14:25','2023-10-24 13:14:25','008b055d-6194-482e-9bb2-9f3280862b23'),(2,1,'craft\\widgets\\CraftSupport',2,NULL,'[]',1,'2023-10-24 13:14:25','2023-10-24 13:14:25','eb822e7d-f890-4c49-90d2-840ba3a8f3c0'),(3,1,'craft\\widgets\\Updates',3,NULL,'[]',1,'2023-10-24 13:14:25','2023-10-24 13:14:25','45a627bc-653c-44f2-9ead-3afbc96e6027'),(4,1,'craft\\widgets\\Feed',4,NULL,'{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\",\"limit\":5}',1,'2023-10-24 13:14:25','2023-10-24 13:14:25','160ee739-df03-43af-b4fa-7ca6ef6f9a32');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping routines for database 'db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 13:31:03
