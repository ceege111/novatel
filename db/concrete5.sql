-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: novatel
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

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
-- Table structure for table `AreaGroupBlockTypes`
--

DROP TABLE IF EXISTS `AreaGroupBlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaGroupBlockTypes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`gID`,`uID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaGroupBlockTypes`
--

LOCK TABLES `AreaGroupBlockTypes` WRITE;
/*!40000 ALTER TABLE `AreaGroupBlockTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaGroupBlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaGroups`
--

DROP TABLE IF EXISTS `AreaGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaGroups` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `agPermissions` varchar(64) NOT NULL,
  PRIMARY KEY (`cID`,`arHandle`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaGroups`
--

LOCK TABLES `AreaGroups` WRITE;
/*!40000 ALTER TABLE `AreaGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,96,'Header',0,0,0),(2,96,'Column 1',0,0,0),(3,96,'Column 2',0,0,0),(4,96,'Column 3',0,0,0),(5,96,'Column 4',0,0,0),(6,95,'Primary',0,0,0),(7,95,'Secondary 1',0,0,0),(8,95,'Secondary 2',0,0,0),(9,95,'Secondary 3',0,0,0),(10,95,'Secondary 4',0,0,0),(11,95,'Secondary 5',0,0,0),(12,1,'Header Nav',0,0,1),(13,1,'Header',0,0,0),(14,1,'Sidebar',0,0,0),(15,1,'Main',0,0,0),(16,107,'Main',0,0,0),(17,1,'Home Featured',0,0,0),(18,1,'Main Menu',0,0,0),(19,142,'Main',0,0,0),(20,115,'Header Nav',0,0,1),(21,115,'LeftSidebar',0,0,0),(22,115,'Main',0,0,0),(23,116,'Header Nav',0,0,1),(24,116,'LeftSidebar',0,0,0),(25,116,'Main',0,0,0),(26,117,'Header Nav',0,0,1),(27,117,'LeftSidebar',0,0,0),(28,117,'Main',0,0,0),(29,118,'Header Nav',0,0,1),(30,118,'LeftSidebar',0,0,0),(31,118,'Main',0,0,0),(32,119,'Header Nav',0,0,1),(33,119,'LeftSidebar',0,0,0),(34,119,'Main',0,0,0),(35,120,'Header Nav',0,0,1),(36,120,'LeftSidebar',0,0,0),(37,120,'Main',0,0,0),(38,113,'Header Nav',0,0,1),(39,113,'LeftSidebar',0,0,0),(40,113,'Main',0,0,0),(41,143,'Main',0,0,0),(42,144,'Main',0,0,0),(43,113,'Sub Nav',0,0,0),(44,111,'Header Nav',0,0,1),(45,111,'Sub Nav',0,0,0),(46,111,'Main',0,0,0),(47,114,'Header Nav',0,0,1),(48,114,'Sub Nav',0,0,0),(49,114,'LeftSidebar',0,0,0),(50,114,'Main',0,0,0),(51,114,'RightSidebar',0,0,0),(52,115,'Sub Nav',0,0,0),(53,116,'Sub Nav',0,0,0),(54,117,'Sub Nav',0,0,0),(55,145,'Header Nav',0,0,1),(56,145,'Sub Nav',0,0,0),(57,145,'Main',0,0,0),(58,146,'Sub Nav',0,0,0),(59,147,'Sub Nav',0,0,0),(60,148,'Sub Nav',0,0,0),(61,146,'Header Nav',0,0,1),(62,146,'Main',0,0,0),(63,148,'Header Nav',0,0,1),(64,148,'Main',0,0,0),(65,147,'Header Nav',0,0,1),(66,147,'Main',0,0,0),(67,149,'Sub Nav',0,0,0),(68,149,'Main',0,0,0),(69,150,'Sub Nav',0,0,0),(70,150,'Main',0,0,0),(71,151,'Sub Nav',0,0,0),(72,151,'Main',0,0,0),(73,152,'Sub Nav',0,0,0),(74,152,'Main',0,0,0),(75,153,'Sub Nav',0,0,0),(76,153,'Main',0,0,0),(77,154,'Sub Nav',0,0,0),(78,154,'Main',0,0,0),(79,155,'Sub Nav',0,0,0),(80,155,'Main',0,0,0),(81,156,'Sub Nav',0,0,0),(82,156,'Main',0,0,0),(83,157,'Sub Nav',0,0,0),(84,157,'Main',0,0,0),(85,158,'Sub Nav',0,0,0),(86,158,'Main',0,0,0),(87,159,'Sub Nav',0,0,0),(88,159,'Main',0,0,0),(89,160,'Sub Nav',0,0,0),(90,160,'Main',0,0,0),(91,161,'Sub Nav',0,0,0),(92,161,'Main',0,0,0),(93,111,'RightSidebar',0,0,0),(94,112,'Header Nav',0,0,1),(95,112,'Home Featured',0,0,0),(96,112,'Main',0,0,0),(97,1,'Footer',0,0,1),(98,206,'Main',0,0,0),(99,162,'Sub Nav',0,0,0),(100,162,'Main',0,0,0),(101,163,'Sub Nav',0,0,0),(102,163,'Main',0,0,0),(103,164,'Sub Nav',0,0,0),(104,164,'Main',0,0,0),(105,164,'RightSidebar',0,0,0),(106,165,'Sub Nav',0,0,0),(107,165,'Main',0,0,0),(108,165,'RightSidebar',0,0,0),(109,166,'Sub Nav',0,0,0),(110,166,'Main',0,0,0),(111,166,'RightSidebar',0,0,0),(112,167,'Sub Nav',0,0,0),(113,167,'Main',0,0,0),(114,167,'LeftSidebar',0,0,0),(115,167,'RightSidebar',0,0,0),(116,168,'Sub Nav',0,0,0),(117,168,'Main',0,0,0),(118,168,'LeftSidebar',0,0,0),(119,168,'RightSidebar',0,0,0),(120,169,'Sub Nav',0,0,0),(121,169,'Main',0,0,0),(122,169,'LeftSidebar',0,0,0),(123,169,'RightSidebar',0,0,0),(124,170,'Sub Nav',0,0,0),(125,170,'Main',0,0,0),(126,170,'RightSidebar',0,0,0),(127,171,'Sub Nav',0,0,0),(128,171,'Main',0,0,0),(129,171,'RightSidebar',0,0,0),(130,172,'Sub Nav',0,0,0),(131,172,'Main',0,0,0),(132,172,'RightSidebar',0,0,0),(133,173,'Sub Nav',0,0,0),(134,173,'Main',0,0,0),(135,173,'RightSidebar',0,0,0),(136,174,'Sub Nav',0,0,0),(137,174,'Main',0,0,0),(138,174,'RightSidebar',0,0,0),(139,175,'Sub Nav',0,0,0),(140,175,'Main',0,0,0),(141,175,'RightSidebar',0,0,0),(142,176,'Sub Nav',0,0,0),(143,176,'Main',0,0,0),(144,176,'RightSidebar',0,0,0),(145,177,'Sub Nav',0,0,0),(146,177,'Main',0,0,0),(147,177,'RightSidebar',0,0,0),(148,178,'Sub Nav',0,0,0),(149,178,'Main',0,0,0),(150,178,'RightSidebar',0,0,0),(151,179,'Sub Nav',0,0,0),(152,179,'Main',0,0,0),(153,179,'RightSidebar',0,0,0),(154,180,'Sub Nav',0,0,0),(155,180,'Main',0,0,0),(156,180,'RightSidebar',0,0,0),(157,181,'Sub Nav',0,0,0),(158,181,'Main',0,0,0),(159,181,'RightSidebar',0,0,0),(160,182,'Sub Nav',0,0,0),(161,182,'Main',0,0,0),(162,182,'LeftSidebar',0,0,0),(163,182,'RightSidebar',0,0,0),(164,183,'Sub Nav',0,0,0),(165,183,'Main',0,0,0),(166,184,'Sub Nav',0,0,0),(167,184,'Main',0,0,0),(168,185,'Sub Nav',0,0,0),(169,185,'Main',0,0,0),(170,186,'Sub Nav',0,0,0),(171,186,'Main',0,0,0),(172,187,'Sub Nav',0,0,0),(173,187,'Main',0,0,0),(174,188,'Sub Nav',0,0,0),(175,188,'Main',0,0,0),(176,189,'Sub Nav',0,0,0),(177,189,'Main',0,0,0),(178,189,'RightSidebar',0,0,0),(179,190,'Sub Nav',0,0,0),(180,190,'Main',0,0,0),(181,190,'RightSidebar',0,0,0),(182,191,'Sub Nav',0,0,0),(183,191,'Main',0,0,0),(184,191,'RightSidebar',0,0,0),(185,192,'Sub Nav',0,0,0),(186,192,'Main',0,0,0),(187,192,'RightSidebar',0,0,0),(188,193,'Sub Nav',0,0,0),(189,193,'Main',0,0,0),(190,193,'RightSidebar',0,0,0),(191,194,'Sub Nav',0,0,0),(192,194,'Main',0,0,0),(193,194,'RightSidebar',0,0,0),(194,195,'Sub Nav',0,0,0),(195,195,'Main',0,0,0),(196,195,'RightSidebar',0,0,0),(197,196,'Sub Nav',0,0,0),(198,196,'Main',0,0,0),(199,196,'RightSidebar',0,0,0),(200,197,'Sub Nav',0,0,0),(201,197,'Main',0,0,0),(202,197,'RightSidebar',0,0,0),(203,198,'Sub Nav',0,0,0),(204,198,'Main',0,0,0),(205,198,'RightSidebar',0,0,0),(206,199,'Sub Nav',0,0,0),(207,199,'Main',0,0,0),(208,199,'RightSidebar',0,0,0),(209,200,'Sub Nav',0,0,0),(210,200,'Main',0,0,0),(211,200,'RightSidebar',0,0,0),(212,201,'Sub Nav',0,0,0),(213,201,'Main',0,0,0),(214,201,'RightSidebar',0,0,0),(215,202,'Sub Nav',0,0,0),(216,202,'Main',0,0,0),(217,202,'RightSidebar',0,0,0),(218,203,'Sub Nav',0,0,0),(219,203,'Main',0,0,0),(220,203,'RightSidebar',0,0,0),(221,204,'Sub Nav',0,0,0),(222,204,'Main',0,0,0),(223,204,'RightSidebar',0,0,0),(224,205,'Sub Nav',0,0,0),(225,205,'Main',0,0,0),(226,205,'RightSidebar',0,0,0),(227,162,'Header Nav',0,0,1),(228,162,'Footer',0,0,1),(229,187,'Header Nav',0,0,1),(230,187,'Footer',0,0,1),(231,163,'Header Nav',0,0,1),(232,163,'Footer',0,0,1),(233,164,'Header Nav',0,0,1),(234,164,'Footer',0,0,1),(235,179,'Header Nav',0,0,1),(236,179,'Footer',0,0,1),(237,165,'Header Nav',0,0,1),(238,165,'Footer',0,0,1),(239,166,'Header Nav',0,0,1),(240,166,'Footer',0,0,1),(241,167,'Header Nav',0,0,1),(242,167,'Footer',0,0,1),(243,183,'Header Nav',0,0,1),(244,183,'Footer',0,0,1);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,1,2,1,0),(4,'exclude_nav','Exclude From Nav',1,1,0,0,1,3,1,0),(5,'exclude_page_list','Exclude From Page List',1,1,0,0,1,3,1,0),(6,'header_extra_content','Header Extra Content',1,1,0,0,1,2,1,0),(7,'exclude_search_index','Exclude From Search Index',1,1,0,0,1,3,1,0),(8,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,1,3,1,0),(9,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,1,3,2,0),(10,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,1,3,2,0),(11,'width','Width',1,1,0,0,1,6,3,0),(12,'height','Height',1,1,0,0,1,6,3,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,1,4),(7,2,3),(8,2,4);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'Page Header','page_header',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2012-08-22 16:38:22',1,2),(2,3,'2012-08-22 16:38:22',1,2),(3,3,'2012-08-22 16:38:22',1,2),(4,3,'2012-08-22 16:38:22',1,2),(5,3,'2012-08-22 16:38:22',1,2),(6,3,'2012-08-22 16:38:22',1,2),(7,3,'2012-08-22 16:38:22',1,2),(8,3,'2012-08-22 16:38:22',1,2),(9,3,'2012-08-22 16:38:22',1,2),(10,3,'2012-08-22 16:38:22',1,2),(11,4,'2012-08-22 16:38:22',1,3),(12,3,'2012-08-22 16:38:22',1,2),(13,3,'2012-08-22 16:38:22',1,2),(14,3,'2012-08-22 16:38:22',1,2),(15,3,'2012-08-22 16:38:22',1,2),(16,3,'2012-08-22 16:38:22',1,2),(17,3,'2012-08-22 16:38:22',1,2),(18,3,'2012-08-22 16:38:22',1,2),(19,3,'2012-08-22 16:38:22',1,2),(20,3,'2012-08-22 16:38:22',1,2),(21,3,'2012-08-22 16:38:22',1,2),(22,3,'2012-08-22 16:38:22',1,2),(23,3,'2012-08-22 16:38:22',1,2),(24,3,'2012-08-22 16:38:22',1,2),(25,3,'2012-08-22 16:38:22',1,2),(26,3,'2012-08-22 16:38:22',1,2),(27,3,'2012-08-22 16:38:22',1,2),(28,3,'2012-08-22 16:38:23',1,2),(29,4,'2012-08-22 16:38:23',1,3),(30,7,'2012-08-22 16:38:23',1,3),(31,4,'2012-08-22 16:38:23',1,3),(32,4,'2012-08-22 16:38:23',1,3),(33,3,'2012-08-22 16:38:23',1,2),(34,3,'2012-08-22 16:38:23',1,2),(35,3,'2012-08-22 16:38:23',1,2),(36,3,'2012-08-22 16:38:23',1,2),(37,3,'2012-08-22 16:38:23',1,2),(38,4,'2012-08-22 16:38:23',1,3),(39,3,'2012-08-22 16:38:23',1,2),(40,3,'2012-08-22 16:38:23',1,2),(41,3,'2012-08-22 16:38:23',1,2),(42,3,'2012-08-22 16:38:23',1,2),(43,3,'2012-08-22 16:38:23',1,2),(44,3,'2012-08-22 16:38:23',1,2),(45,3,'2012-08-22 16:38:23',1,2),(46,3,'2012-08-22 16:38:23',1,2),(47,3,'2012-08-22 16:38:23',1,2),(48,3,'2012-08-22 16:38:23',1,2),(49,3,'2012-08-22 16:38:23',1,2),(50,3,'2012-08-22 16:38:23',1,2),(51,3,'2012-08-22 16:38:23',1,2),(52,3,'2012-08-22 16:38:23',1,2),(53,3,'2012-08-22 16:38:23',1,2),(54,3,'2012-08-22 16:38:23',1,2),(55,3,'2012-08-22 16:38:23',1,2),(56,3,'2012-08-22 16:38:23',1,2),(57,3,'2012-08-22 16:38:23',1,2),(58,3,'2012-08-22 16:38:23',1,2),(59,3,'2012-08-22 16:38:24',1,2),(60,3,'2012-08-22 16:38:24',1,2),(61,3,'2012-08-22 16:38:24',1,2),(62,3,'2012-08-22 16:38:24',1,2),(63,3,'2012-08-22 16:38:24',1,2),(64,3,'2012-08-22 16:38:24',1,2),(65,3,'2012-08-22 16:38:24',1,2),(66,3,'2012-08-22 16:38:24',1,2),(67,7,'2012-08-22 16:38:24',1,3),(68,3,'2012-08-22 16:38:24',1,2),(69,3,'2012-08-22 16:38:24',1,2),(70,3,'2012-08-22 16:38:24',1,2),(71,3,'2012-08-22 16:38:24',1,2),(72,3,'2012-08-22 16:38:24',1,2),(73,4,'2012-08-22 16:38:24',1,3),(74,4,'2012-08-22 16:38:25',1,3),(75,7,'2012-08-22 16:38:25',1,3);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,24,15,'DUPLICATE'),(2,25,14,'DUPLICATE'),(3,26,25,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,600,465,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,400,200,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,350,460,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,1,0,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,400,210,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(2,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(3,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(4,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(5,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(6,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',6,1),(7,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',7,1),(8,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',5,1),(9,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',5,1),(10,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',4,1),(11,'','2012-08-22 16:38:24','2012-08-22 16:38:25',NULL,'1',3,1),(12,'','2012-08-22 16:38:25','2012-08-22 16:38:25',NULL,'1',5,1),(13,NULL,'2012-08-30 12:46:17','2012-08-30 12:46:17',NULL,'1',8,1),(14,NULL,'2012-08-30 12:50:01','2012-08-30 12:50:01',NULL,'1',8,1),(15,NULL,'2012-08-30 12:50:18','2012-08-30 12:50:18',NULL,'1',8,1),(16,NULL,'2012-08-30 12:53:49','2012-08-30 12:53:49',NULL,'1',8,1),(17,NULL,'2012-08-30 12:54:09','2012-08-30 12:54:09',NULL,'1',2,1),(18,NULL,'2012-08-30 12:54:33','2012-08-30 12:54:33',NULL,'1',2,1),(19,NULL,'2012-08-30 12:54:56','2012-08-30 12:54:56',NULL,'1',2,1),(20,NULL,'2012-08-30 13:37:02','2012-08-30 13:37:02',NULL,'1',9,1),(21,NULL,'2012-08-30 13:38:36','2012-08-30 14:00:21',NULL,'1',9,1),(22,NULL,'2012-08-30 14:00:47','2012-08-30 14:00:47',NULL,'1',9,1),(23,NULL,'2012-08-30 14:03:13','2012-08-30 14:03:13',NULL,'1',2,1),(24,'','2012-08-30 14:11:39','2012-08-30 14:11:39','breadcrumb.php','1',8,1),(25,'','2012-08-30 14:14:39','2012-08-30 14:14:49','header_menu.php','1',8,1),(26,'','2012-08-30 14:17:12','2012-08-30 14:17:12','','1',8,1),(27,NULL,'2012-08-30 14:18:35','2012-08-30 14:18:35',NULL,'1',9,1),(28,NULL,'2012-08-30 14:19:00','2012-08-30 14:19:00',NULL,'1',9,1),(29,NULL,'2012-08-30 14:19:22','2012-08-30 14:19:22',NULL,'1',9,1),(30,NULL,'2012-08-30 14:20:05','2012-08-30 14:20:05',NULL,'1',9,1),(31,NULL,'2012-08-30 14:20:26','2012-08-30 14:20:26',NULL,'1',9,1),(32,NULL,'2012-08-30 14:20:46','2012-08-30 14:20:46',NULL,'1',9,1),(33,NULL,'2012-08-30 14:21:06','2012-08-30 14:21:06',NULL,'1',9,1),(34,NULL,'2012-08-30 14:26:28','2012-08-30 14:26:28',NULL,'1',9,1),(38,NULL,'2012-08-30 14:33:30','2012-08-30 14:33:47',NULL,'1',9,1),(39,NULL,'2012-08-30 14:33:58','2012-08-30 14:33:58',NULL,'1',9,1),(40,NULL,'2012-08-30 14:34:36','2012-08-30 14:37:24',NULL,'1',9,1),(41,NULL,'2012-08-30 14:39:54','2012-08-30 14:39:54',NULL,'1',1,1),(42,NULL,'2012-08-30 14:40:01','2012-08-30 14:40:01',NULL,'1',1,1),(43,NULL,'2012-08-30 14:40:16','2012-08-30 14:40:16',NULL,'1',1,1),(44,NULL,'2012-08-30 14:42:15','2012-08-30 14:42:15',NULL,'1',1,1),(45,NULL,'2012-08-30 14:42:20','2012-08-30 14:42:20',NULL,'1',1,1),(46,NULL,'2012-08-30 14:42:25','2012-08-30 14:42:25',NULL,'1',1,1),(47,NULL,'2012-08-30 14:42:32','2012-08-30 14:42:32',NULL,'1',1,1),(48,NULL,'2012-08-30 14:42:49','2012-08-30 14:43:50',NULL,'1',9,1),(50,NULL,'2012-08-30 14:44:51','2012-08-30 14:44:51',NULL,'1',9,1),(51,NULL,'2012-08-30 14:44:57','2012-08-30 14:44:57',NULL,'1',1,1),(52,NULL,'2012-08-30 14:45:08','2012-08-30 14:45:08',NULL,'1',9,1),(53,NULL,'2012-08-30 14:45:25','2012-08-30 14:45:25',NULL,'1',9,1);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (3,1,3,1),(4,1,3,2),(5,1,3,3),(6,1,3,4),(7,1,3,5),(8,1,3,6),(9,1,3,7),(11,1,3,8),(12,1,3,9),(13,1,3,10),(14,1,4,11),(15,1,3,12),(16,1,3,13),(17,1,3,14),(18,1,3,15),(19,1,3,16),(20,1,3,17),(21,1,3,18),(22,1,3,19),(23,1,3,20),(24,1,3,21),(25,1,3,22),(26,1,3,23),(27,1,3,24),(28,1,3,25),(30,1,3,26),(31,1,3,27),(33,1,3,28),(37,1,4,29),(37,1,7,30),(39,1,4,31),(40,1,4,32),(41,1,3,33),(42,1,3,34),(43,1,3,35),(44,1,3,36),(45,1,3,37),(46,1,4,38),(48,1,3,39),(49,1,3,40),(50,1,3,41),(51,1,3,42),(52,1,3,43),(53,1,3,44),(55,1,3,45),(56,1,3,46),(57,1,3,47),(58,1,3,48),(60,1,3,49),(61,1,3,50),(62,1,3,51),(64,1,3,52),(65,1,3,53),(66,1,3,54),(67,1,3,55),(68,1,3,56),(69,1,3,57),(70,1,3,58),(71,1,3,59),(73,1,3,60),(74,1,3,61),(75,1,3,62),(76,1,3,63),(77,1,3,64),(78,1,3,65),(79,1,3,66),(82,1,7,67),(83,1,3,68),(84,1,3,69),(85,1,3,70),(86,1,3,71),(89,1,3,72),(95,1,4,74),(95,1,7,75),(96,1,4,73);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,NULL,NULL,NULL,0,0,NULL,0,0),(3,NULL,NULL,'blog, blogging',0,0,NULL,0,0),(4,NULL,NULL,'new blog, write blog',0,0,NULL,0,0),(5,NULL,NULL,'blog drafts,composer',0,0,NULL,0,0),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0),(9,NULL,NULL,'find page, search page, search, find',0,0,NULL,0,0),(11,NULL,NULL,'files, add file, delete file, copy, move, alias',0,0,NULL,0,0),(12,NULL,NULL,'file, file attributes',0,0,NULL,0,0),(13,NULL,NULL,'files, category, categories',0,0,NULL,0,0),(14,NULL,NULL,NULL,1,0,NULL,0,0),(15,NULL,NULL,'users, groups, people',0,0,NULL,0,0),(16,NULL,NULL,'find, search, people',0,0,NULL,0,0),(17,NULL,NULL,'user, group, people',0,0,NULL,0,0),(18,NULL,NULL,'user attributes',0,0,NULL,0,0),(19,NULL,NULL,'new user',0,0,NULL,0,0),(20,NULL,NULL,'new user group, new group, group',0,0,NULL,0,0),(21,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0,0,NULL,0,0),(22,NULL,NULL,'hits, pageviews, visitors, activity',0,0,NULL,0,0),(23,NULL,NULL,'forms, questions',0,0,NULL,0,0),(24,NULL,NULL,'survey, questions, quiz',0,0,NULL,0,0),(25,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0,0,NULL,0,0),(26,NULL,NULL,'page types, themes, single pages',0,0,NULL,0,0),(27,NULL,NULL,'new theme, theme, active theme, change theme, template, css',0,0,NULL,0,0),(28,NULL,NULL,'add theme',0,0,NULL,0,0),(30,NULL,NULL,'custom theme, change theme, custom css, css',0,0,NULL,0,0),(31,NULL,NULL,'page type defaults, global block, global area',0,0,NULL,0,0),(33,NULL,NULL,'page attributes',0,0,NULL,0,0),(37,NULL,NULL,NULL,1,0,NULL,1,0),(39,NULL,NULL,NULL,1,0,NULL,0,0),(40,NULL,NULL,NULL,1,0,NULL,0,0),(41,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',0,0,NULL,0,0),(42,NULL,NULL,'update, upgrade',0,0,NULL,0,0),(43,NULL,NULL,'concrete5.org, my account, marketplace',0,0,NULL,0,0),(44,NULL,NULL,'buy theme, new theme, marketplace, template',0,0,NULL,0,0),(45,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',0,0,NULL,0,0),(46,NULL,NULL,NULL,1,0,NULL,0,0),(48,NULL,NULL,'website name',0,0,NULL,0,0),(49,NULL,NULL,'logo, favicon, iphone',0,0,NULL,0,0),(50,NULL,NULL,'tinymce, content block, fonts, editor',0,0,NULL,0,0),(51,NULL,NULL,'translate, translation',0,0,NULL,0,0),(52,NULL,NULL,'timezone',0,0,NULL,0,0),(53,NULL,NULL,'interface, quick nav, dashboard background, background image',0,0,NULL,0,0),(55,NULL,NULL,'vanity, pretty url, seo',0,0,NULL,0,0),(56,NULL,NULL,'traffic, statistics, google analytics, quant',0,0,NULL,0,0),(57,NULL,NULL,'turn off statistics',0,0,NULL,0,0),(58,NULL,NULL,'configure search, site search, search option',0,0,NULL,0,0),(60,NULL,NULL,'cache option, change cache, turn on cache, turn off cache, no cache, page cache, caching',0,0,NULL,0,0),(61,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',0,0,NULL,0,0),(62,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',0,0,NULL,0,0),(64,NULL,NULL,'editors, hide site, offline, private, public',0,0,NULL,0,0),(65,NULL,NULL,'file options, file manager',0,0,NULL,0,0),(66,NULL,NULL,'security, files, media ',0,0,NULL,0,0),(67,NULL,NULL,'security, users, actions, administrator, admin',0,0,NULL,0,0),(68,NULL,NULL,'security, lock ip, lock out, block ip',0,0,NULL,0,0),(69,NULL,NULL,'security, registration',0,0,NULL,0,0),(70,NULL,NULL,'antispam, block spam, security',0,0,NULL,0,0),(71,NULL,NULL,'lock site, under construction',0,0,NULL,0,0),(73,NULL,NULL,'profile',0,0,NULL,0,0),(74,NULL,NULL,'member profile, member page,community',0,0,NULL,0,0),(75,NULL,NULL,'signup, new user, community',0,0,NULL,0,0),(76,NULL,NULL,'smtp, mail settings',0,0,NULL,0,0),(77,NULL,NULL,'email server, mail settings, mail configuration',0,0,NULL,0,0),(78,NULL,NULL,'email server, mail settings, mail configuration, private message, message system',0,0,NULL,0,0),(79,NULL,NULL,'attribute configuration',0,0,NULL,0,0),(82,NULL,NULL,NULL,0,0,NULL,1,0),(83,NULL,NULL,'overrides, system info, debug, support,help',0,0,NULL,0,0),(84,NULL,NULL,'errors,exceptions, develop, support, help',0,0,NULL,0,0),(85,NULL,NULL,'logs, email, error, exceptions',0,0,NULL,0,0),(86,NULL,NULL,'security, alternate storage, hide files',0,0,NULL,0,0),(89,NULL,NULL,'upgrade, new version',0,0,NULL,0,0),(95,NULL,NULL,NULL,1,0,NULL,1,0),(96,NULL,NULL,NULL,1,0,NULL,0,0),(111,NULL,NULL,NULL,0,0,NULL,0,0),(112,NULL,NULL,NULL,0,0,NULL,0,0),(113,NULL,NULL,NULL,0,0,NULL,0,0),(114,NULL,NULL,NULL,0,0,NULL,0,0),(115,NULL,NULL,NULL,0,0,NULL,0,0),(116,NULL,NULL,NULL,0,0,NULL,0,0),(117,NULL,NULL,NULL,0,0,NULL,0,0),(118,NULL,NULL,NULL,0,0,NULL,0,0),(119,NULL,NULL,NULL,0,0,NULL,0,0),(120,NULL,NULL,NULL,0,0,NULL,0,0),(121,NULL,NULL,NULL,0,0,NULL,0,0),(122,NULL,NULL,NULL,0,0,NULL,0,0),(123,NULL,NULL,NULL,0,0,NULL,0,0),(124,NULL,NULL,NULL,0,0,NULL,0,0),(125,NULL,NULL,NULL,0,0,NULL,0,0),(126,NULL,NULL,NULL,0,0,NULL,0,0),(127,NULL,NULL,NULL,0,0,NULL,0,0),(128,NULL,NULL,NULL,0,0,NULL,0,0),(129,NULL,NULL,NULL,0,0,NULL,0,0),(130,NULL,NULL,NULL,0,0,NULL,0,0),(131,NULL,NULL,NULL,0,0,NULL,0,0),(132,NULL,NULL,NULL,0,0,NULL,0,0),(133,NULL,NULL,NULL,0,0,NULL,0,0),(134,NULL,NULL,NULL,0,0,NULL,0,0),(135,NULL,NULL,NULL,0,0,NULL,0,0),(136,NULL,NULL,NULL,0,0,NULL,0,0),(137,NULL,NULL,NULL,0,0,NULL,0,0),(138,NULL,NULL,NULL,0,0,NULL,0,0),(139,NULL,NULL,NULL,0,0,NULL,0,0),(140,NULL,NULL,NULL,0,0,NULL,0,0),(141,NULL,NULL,NULL,0,0,NULL,0,0),(142,NULL,NULL,NULL,0,0,NULL,0,0),(144,NULL,NULL,NULL,0,0,NULL,0,0),(145,NULL,NULL,NULL,0,0,NULL,0,0),(146,NULL,NULL,NULL,0,0,NULL,0,0),(147,NULL,NULL,NULL,0,0,NULL,0,0),(148,NULL,NULL,NULL,0,0,NULL,0,0),(149,NULL,NULL,NULL,0,0,NULL,0,0),(150,NULL,NULL,NULL,0,0,NULL,0,0),(151,NULL,NULL,NULL,0,0,NULL,0,0),(152,NULL,NULL,NULL,0,0,NULL,0,0),(153,NULL,NULL,NULL,0,0,NULL,0,0),(154,NULL,NULL,NULL,0,0,NULL,0,0),(155,NULL,NULL,NULL,0,0,NULL,0,0),(156,NULL,NULL,NULL,0,0,NULL,0,0),(157,NULL,NULL,NULL,0,0,NULL,0,0),(158,NULL,NULL,NULL,0,0,NULL,0,0),(159,NULL,NULL,NULL,0,0,NULL,0,0),(160,NULL,NULL,NULL,0,0,NULL,0,0),(161,NULL,NULL,NULL,0,0,NULL,0,0),(162,NULL,NULL,NULL,0,0,NULL,0,0),(163,NULL,NULL,NULL,0,0,NULL,0,0),(164,NULL,NULL,NULL,0,0,NULL,0,0),(165,NULL,NULL,NULL,0,0,NULL,0,0),(166,NULL,NULL,NULL,0,0,NULL,0,0),(167,NULL,NULL,NULL,0,0,NULL,0,0),(168,NULL,NULL,NULL,0,0,NULL,0,0),(169,NULL,NULL,NULL,0,0,NULL,0,0),(170,NULL,NULL,NULL,0,0,NULL,0,0),(171,NULL,NULL,NULL,0,0,NULL,0,0),(172,NULL,NULL,NULL,0,0,NULL,0,0),(173,NULL,NULL,NULL,0,0,NULL,0,0),(174,NULL,NULL,NULL,0,0,NULL,0,0),(175,NULL,NULL,NULL,0,0,NULL,0,0),(176,NULL,NULL,NULL,0,0,NULL,0,0),(177,NULL,NULL,NULL,0,0,NULL,0,0),(178,NULL,NULL,NULL,0,0,NULL,0,0),(179,NULL,NULL,NULL,0,0,NULL,0,0),(180,NULL,NULL,NULL,0,0,NULL,0,0),(181,NULL,NULL,NULL,0,0,NULL,0,0),(182,NULL,NULL,NULL,0,0,NULL,0,0),(183,NULL,NULL,NULL,0,0,NULL,0,0),(184,NULL,NULL,NULL,0,0,NULL,0,0),(185,NULL,NULL,NULL,0,0,NULL,0,0),(186,NULL,NULL,NULL,0,0,NULL,0,0),(187,NULL,NULL,NULL,0,0,NULL,0,0),(188,NULL,NULL,NULL,0,0,NULL,0,0),(189,NULL,NULL,NULL,0,0,NULL,0,0),(190,NULL,NULL,NULL,0,0,NULL,0,0),(191,NULL,NULL,NULL,0,0,NULL,0,0),(192,NULL,NULL,NULL,0,0,NULL,0,0),(193,NULL,NULL,NULL,0,0,NULL,0,0),(194,NULL,NULL,NULL,0,0,NULL,0,0),(195,NULL,NULL,NULL,0,0,NULL,0,0),(196,NULL,NULL,NULL,0,0,NULL,0,0),(197,NULL,NULL,NULL,0,0,NULL,0,0),(198,NULL,NULL,NULL,0,0,NULL,0,0),(199,NULL,NULL,NULL,0,0,NULL,0,0),(200,NULL,NULL,NULL,0,0,NULL,0,0),(201,NULL,NULL,NULL,0,0,NULL,0,0),(202,NULL,NULL,NULL,0,0,NULL,0,0),(203,NULL,NULL,NULL,0,0,NULL,0,0),(204,NULL,NULL,NULL,0,0,NULL,0,0),(205,NULL,NULL,NULL,0,0,NULL,0,0);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaLayouts`
--

LOCK TABLES `CollectionVersionAreaLayouts` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockPermissions`
--

DROP TABLE IF EXISTS `CollectionVersionBlockPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockPermissions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cbgPermissions` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockPermissions`
--

LOCK TABLES `CollectionVersionBlockPermissions` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlockPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (144,2,14,'Main',0),(144,2,15,'Main',1),(144,3,24,'Main',1),(144,3,25,'Main',2),(144,4,24,'Main',1),(144,4,26,'Main',3),(146,1,23,'Sub Nav',0),(146,2,23,'Sub Nav',0),(147,1,23,'Sub Nav',0),(147,2,23,'Sub Nav',0),(148,1,23,'Sub Nav',0),(148,2,23,'Sub Nav',0),(149,1,18,'Sub Nav',0),(149,1,31,'Main',0),(150,1,18,'Sub Nav',0),(150,1,31,'Main',0),(151,1,18,'Sub Nav',0),(151,1,31,'Main',0),(152,1,18,'Sub Nav',0),(152,1,31,'Main',0),(153,1,18,'Sub Nav',0),(153,1,31,'Main',0),(154,1,18,'Sub Nav',0),(154,1,31,'Main',0),(155,1,18,'Sub Nav',0),(155,1,31,'Main',0),(156,1,18,'Sub Nav',0),(156,1,31,'Main',0),(157,1,18,'Sub Nav',0),(157,1,31,'Main',0),(158,1,18,'Sub Nav',0),(158,1,31,'Main',0),(159,1,18,'Sub Nav',0),(159,1,31,'Main',0),(160,1,18,'Sub Nav',0),(160,1,31,'Main',0),(161,1,18,'Sub Nav',0),(161,1,31,'Main',0),(162,1,23,'Sub Nav',0),(162,1,32,'Main',0),(162,1,34,'Main',0),(163,1,23,'Sub Nav',0),(163,1,32,'Main',0),(163,1,34,'Main',0),(164,1,18,'Sub Nav',0),(164,1,31,'Main',0),(164,1,38,'RightSidebar',0),(164,1,39,'RightSidebar',0),(164,1,40,'Main',0),(165,1,18,'Sub Nav',0),(165,1,31,'Main',0),(165,1,38,'RightSidebar',0),(165,1,39,'RightSidebar',0),(165,1,40,'Main',0),(166,1,18,'Sub Nav',0),(166,1,31,'Main',0),(166,1,38,'RightSidebar',0),(166,1,39,'RightSidebar',0),(166,1,40,'Main',0),(167,1,19,'Sub Nav',0),(167,1,33,'Main',0),(167,1,44,'LeftSidebar',0),(167,1,45,'LeftSidebar',0),(167,1,46,'RightSidebar',0),(167,1,47,'RightSidebar',0),(167,1,48,'Main',0),(168,1,19,'Sub Nav',0),(168,1,33,'Main',0),(168,1,44,'LeftSidebar',0),(168,1,45,'LeftSidebar',0),(168,1,46,'RightSidebar',0),(168,1,47,'RightSidebar',0),(168,1,48,'Main',0),(169,1,19,'Sub Nav',0),(169,1,33,'Main',0),(169,1,44,'LeftSidebar',0),(169,1,45,'LeftSidebar',0),(169,1,46,'RightSidebar',0),(169,1,47,'RightSidebar',0),(169,1,48,'Main',0),(170,1,18,'Sub Nav',0),(170,1,31,'Main',0),(170,1,38,'RightSidebar',0),(170,1,39,'RightSidebar',0),(170,1,40,'Main',0),(171,1,18,'Sub Nav',0),(171,1,31,'Main',0),(171,1,38,'RightSidebar',0),(171,1,39,'RightSidebar',0),(171,1,40,'Main',0),(172,1,18,'Sub Nav',0),(172,1,31,'Main',0),(172,1,38,'RightSidebar',0),(172,1,39,'RightSidebar',0),(172,1,40,'Main',0),(173,1,18,'Sub Nav',0),(173,1,31,'Main',0),(173,1,38,'RightSidebar',0),(173,1,39,'RightSidebar',0),(173,1,40,'Main',0),(174,1,18,'Sub Nav',0),(174,1,31,'Main',0),(174,1,38,'RightSidebar',0),(174,1,39,'RightSidebar',0),(174,1,40,'Main',0),(175,1,18,'Sub Nav',0),(175,1,31,'Main',0),(175,1,38,'RightSidebar',0),(175,1,39,'RightSidebar',0),(175,1,40,'Main',0),(176,1,18,'Sub Nav',0),(176,1,31,'Main',0),(176,1,38,'RightSidebar',0),(176,1,39,'RightSidebar',0),(176,1,40,'Main',0),(177,1,18,'Sub Nav',0),(177,1,31,'Main',0),(177,1,38,'RightSidebar',0),(177,1,39,'RightSidebar',0),(177,1,40,'Main',0),(178,1,18,'Sub Nav',0),(178,1,31,'Main',0),(178,1,38,'RightSidebar',0),(178,1,39,'RightSidebar',0),(178,1,40,'Main',0),(179,1,18,'Sub Nav',0),(179,1,31,'Main',0),(179,1,38,'RightSidebar',0),(179,1,39,'RightSidebar',0),(179,1,40,'Main',0),(180,1,18,'Sub Nav',0),(180,1,31,'Main',0),(180,1,38,'RightSidebar',0),(180,1,39,'RightSidebar',0),(180,1,40,'Main',0),(181,1,18,'Sub Nav',0),(181,1,31,'Main',0),(181,1,38,'RightSidebar',0),(181,1,39,'RightSidebar',0),(181,1,40,'Main',0),(182,1,19,'Sub Nav',0),(182,1,33,'Main',0),(182,1,44,'LeftSidebar',0),(182,1,45,'LeftSidebar',0),(182,1,46,'RightSidebar',0),(182,1,47,'RightSidebar',0),(182,1,48,'Main',0),(183,1,23,'Sub Nav',0),(183,1,32,'Main',0),(183,1,34,'Main',0),(184,1,23,'Sub Nav',0),(184,1,32,'Main',0),(184,1,34,'Main',0),(185,1,23,'Sub Nav',0),(185,1,32,'Main',0),(185,1,34,'Main',0),(186,1,23,'Sub Nav',0),(186,1,32,'Main',0),(186,1,34,'Main',0),(187,1,23,'Sub Nav',0),(187,1,32,'Main',0),(187,1,34,'Main',0),(188,1,23,'Sub Nav',0),(188,1,32,'Main',0),(188,1,34,'Main',0),(189,1,18,'Sub Nav',0),(189,1,31,'Main',0),(189,1,38,'RightSidebar',0),(189,1,39,'RightSidebar',0),(189,1,40,'Main',0),(190,1,18,'Sub Nav',0),(190,1,31,'Main',0),(190,1,38,'RightSidebar',0),(190,1,39,'RightSidebar',0),(190,1,40,'Main',0),(191,1,18,'Sub Nav',0),(191,1,31,'Main',0),(191,1,38,'RightSidebar',0),(191,1,39,'RightSidebar',0),(191,1,40,'Main',0),(192,1,18,'Sub Nav',0),(192,1,31,'Main',0),(192,1,38,'RightSidebar',0),(192,1,39,'RightSidebar',0),(192,1,40,'Main',0),(193,1,18,'Sub Nav',0),(193,1,31,'Main',0),(193,1,38,'RightSidebar',0),(193,1,39,'RightSidebar',0),(193,1,40,'Main',0),(194,1,18,'Sub Nav',0),(194,1,31,'Main',0),(194,1,38,'RightSidebar',0),(194,1,39,'RightSidebar',0),(194,1,40,'Main',0),(195,1,18,'Sub Nav',0),(195,1,31,'Main',0),(195,1,38,'RightSidebar',0),(195,1,39,'RightSidebar',0),(195,1,40,'Main',0),(196,1,18,'Sub Nav',0),(196,1,31,'Main',0),(196,1,38,'RightSidebar',0),(196,1,39,'RightSidebar',0),(196,1,40,'Main',0),(197,1,18,'Sub Nav',0),(197,1,31,'Main',0),(197,1,38,'RightSidebar',0),(197,1,39,'RightSidebar',0),(197,1,40,'Main',0),(198,1,18,'Sub Nav',0),(198,1,31,'Main',0),(198,1,38,'RightSidebar',0),(198,1,39,'RightSidebar',0),(198,1,40,'Main',0),(199,1,18,'Sub Nav',0),(199,1,31,'Main',0),(199,1,38,'RightSidebar',0),(199,1,39,'RightSidebar',0),(199,1,40,'Main',0),(200,1,18,'Sub Nav',0),(200,1,31,'Main',0),(200,1,38,'RightSidebar',0),(200,1,39,'RightSidebar',0),(200,1,40,'Main',0),(201,1,18,'Sub Nav',0),(201,1,31,'Main',0),(201,1,38,'RightSidebar',0),(201,1,39,'RightSidebar',0),(201,1,40,'Main',0),(202,1,18,'Sub Nav',0),(202,1,31,'Main',0),(202,1,38,'RightSidebar',0),(202,1,39,'RightSidebar',0),(202,1,40,'Main',0),(203,1,18,'Sub Nav',0),(203,1,31,'Main',0),(203,1,38,'RightSidebar',0),(203,1,39,'RightSidebar',0),(203,1,40,'Main',0),(204,1,18,'Sub Nav',0),(204,1,31,'Main',0),(204,1,38,'RightSidebar',0),(204,1,39,'RightSidebar',0),(204,1,40,'Main',0),(205,1,18,'Sub Nav',0),(205,1,31,'Main',0),(205,1,38,'RightSidebar',0),(205,1,39,'RightSidebar',0),(205,1,40,'Main',0);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (1,3,20,'Home Featured',0,1,0,0),(1,4,21,'Home Featured',1,1,0,0),(1,4,22,'Main',0,1,0,0),(95,1,6,'Primary',0,1,0,0),(95,1,7,'Primary',1,1,0,0),(95,1,8,'Secondary 1',0,1,0,0),(95,1,9,'Secondary 2',0,1,0,0),(95,1,10,'Secondary 3',0,1,0,0),(95,1,11,'Secondary 4',0,1,0,0),(95,1,12,'Secondary 5',0,1,0,0),(96,1,1,'Header',0,1,0,0),(96,1,2,'Column 1',0,1,0,0),(96,1,3,'Column 2',0,1,0,0),(96,1,4,'Column 3',0,1,0,0),(96,1,5,'Column 4',0,1,0,0),(111,1,18,'Sub Nav',0,1,0,0),(111,1,31,'Main',1,1,0,0),(111,1,38,'RightSidebar',0,1,0,0),(111,1,39,'RightSidebar',1,1,0,0),(111,1,40,'Main',0,1,0,0),(112,1,50,'Home Featured',1,1,0,0),(112,1,51,'Main',0,1,0,0),(112,1,52,'Main',1,1,0,0),(112,1,53,'Home Featured',0,1,0,0),(113,1,17,'Sub Nav',0,1,0,0),(113,1,30,'Main',2,1,0,0),(113,1,41,'LeftSidebar',0,1,0,0),(113,1,42,'LeftSidebar',1,1,0,0),(113,1,43,'Main',1,1,0,0),(114,1,19,'Sub Nav',0,1,0,0),(114,1,33,'Main',1,1,0,0),(114,1,44,'LeftSidebar',0,1,0,0),(114,1,45,'LeftSidebar',1,1,0,0),(114,1,46,'RightSidebar',0,1,0,0),(114,1,47,'RightSidebar',1,1,0,0),(114,1,48,'Main',0,1,0,0),(142,1,13,'Main',0,1,0,0),(142,2,16,'Main',0,1,0,0),(144,1,14,'Main',0,1,0,0),(144,1,15,'Main',1,1,0,0),(144,2,14,'Main',0,0,0,0),(144,2,15,'Main',1,0,0,0),(144,3,24,'Main',1,1,0,0),(144,3,25,'Main',0,1,0,0),(144,4,24,'Main',1,0,0,0),(144,4,26,'Main',0,1,0,0),(145,1,23,'Sub Nav',0,1,0,0),(145,1,32,'Main',1,1,0,0),(145,1,34,'Main',0,1,0,0),(146,1,23,'Sub Nav',0,0,0,0),(146,2,23,'Sub Nav',0,0,0,0),(146,2,27,'Main',0,1,0,0),(147,1,23,'Sub Nav',0,0,0,0),(147,2,23,'Sub Nav',0,0,0,0),(147,2,28,'Main',0,1,0,0),(148,1,23,'Sub Nav',0,0,0,0),(148,2,23,'Sub Nav',0,0,0,0),(148,2,29,'Main',0,1,0,0),(149,1,18,'Sub Nav',0,0,0,0),(149,1,31,'Main',0,0,0,0),(150,1,18,'Sub Nav',0,0,0,0),(150,1,31,'Main',0,0,0,0),(151,1,18,'Sub Nav',0,0,0,0),(151,1,31,'Main',0,0,0,0),(152,1,18,'Sub Nav',0,0,0,0),(152,1,31,'Main',0,0,0,0),(153,1,18,'Sub Nav',0,0,0,0),(153,1,31,'Main',0,0,0,0),(154,1,18,'Sub Nav',0,0,0,0),(154,1,31,'Main',0,0,0,0),(155,1,18,'Sub Nav',0,0,0,0),(155,1,31,'Main',0,0,0,0),(156,1,18,'Sub Nav',0,0,0,0),(156,1,31,'Main',0,0,0,0),(157,1,18,'Sub Nav',0,0,0,0),(157,1,31,'Main',0,0,0,0),(158,1,18,'Sub Nav',0,0,0,0),(158,1,31,'Main',0,0,0,0),(159,1,18,'Sub Nav',0,0,0,0),(159,1,31,'Main',0,0,0,0),(160,1,18,'Sub Nav',0,0,0,0),(160,1,31,'Main',0,0,0,0),(161,1,18,'Sub Nav',0,0,0,0),(161,1,31,'Main',0,0,0,0),(162,1,23,'Sub Nav',0,0,0,0),(162,1,32,'Main',1,0,0,0),(162,1,34,'Main',0,0,0,0),(163,1,23,'Sub Nav',0,0,0,0),(163,1,32,'Main',1,0,0,0),(163,1,34,'Main',0,0,0,0),(164,1,18,'Sub Nav',0,0,0,0),(164,1,31,'Main',1,0,0,0),(164,1,38,'RightSidebar',0,0,0,0),(164,1,39,'RightSidebar',1,0,0,0),(164,1,40,'Main',0,0,0,0),(165,1,18,'Sub Nav',0,0,0,0),(165,1,31,'Main',1,0,0,0),(165,1,38,'RightSidebar',0,0,0,0),(165,1,39,'RightSidebar',1,0,0,0),(165,1,40,'Main',0,0,0,0),(166,1,18,'Sub Nav',0,0,0,0),(166,1,31,'Main',1,0,0,0),(166,1,38,'RightSidebar',0,0,0,0),(166,1,39,'RightSidebar',1,0,0,0),(166,1,40,'Main',0,0,0,0),(167,1,19,'Sub Nav',0,0,0,0),(167,1,33,'Main',1,0,0,0),(167,1,44,'LeftSidebar',0,0,0,0),(167,1,45,'LeftSidebar',1,0,0,0),(167,1,46,'RightSidebar',0,0,0,0),(167,1,47,'RightSidebar',1,0,0,0),(167,1,48,'Main',0,0,0,0),(168,1,19,'Sub Nav',0,0,0,0),(168,1,33,'Main',1,0,0,0),(168,1,44,'LeftSidebar',0,0,0,0),(168,1,45,'LeftSidebar',1,0,0,0),(168,1,46,'RightSidebar',0,0,0,0),(168,1,47,'RightSidebar',1,0,0,0),(168,1,48,'Main',0,0,0,0),(169,1,19,'Sub Nav',0,0,0,0),(169,1,33,'Main',1,0,0,0),(169,1,44,'LeftSidebar',0,0,0,0),(169,1,45,'LeftSidebar',1,0,0,0),(169,1,46,'RightSidebar',0,0,0,0),(169,1,47,'RightSidebar',1,0,0,0),(169,1,48,'Main',0,0,0,0),(170,1,18,'Sub Nav',0,0,0,0),(170,1,31,'Main',1,0,0,0),(170,1,38,'RightSidebar',0,0,0,0),(170,1,39,'RightSidebar',1,0,0,0),(170,1,40,'Main',0,0,0,0),(171,1,18,'Sub Nav',0,0,0,0),(171,1,31,'Main',1,0,0,0),(171,1,38,'RightSidebar',0,0,0,0),(171,1,39,'RightSidebar',1,0,0,0),(171,1,40,'Main',0,0,0,0),(172,1,18,'Sub Nav',0,0,0,0),(172,1,31,'Main',1,0,0,0),(172,1,38,'RightSidebar',0,0,0,0),(172,1,39,'RightSidebar',1,0,0,0),(172,1,40,'Main',0,0,0,0),(173,1,18,'Sub Nav',0,0,0,0),(173,1,31,'Main',1,0,0,0),(173,1,38,'RightSidebar',0,0,0,0),(173,1,39,'RightSidebar',1,0,0,0),(173,1,40,'Main',0,0,0,0),(174,1,18,'Sub Nav',0,0,0,0),(174,1,31,'Main',1,0,0,0),(174,1,38,'RightSidebar',0,0,0,0),(174,1,39,'RightSidebar',1,0,0,0),(174,1,40,'Main',0,0,0,0),(175,1,18,'Sub Nav',0,0,0,0),(175,1,31,'Main',1,0,0,0),(175,1,38,'RightSidebar',0,0,0,0),(175,1,39,'RightSidebar',1,0,0,0),(175,1,40,'Main',0,0,0,0),(176,1,18,'Sub Nav',0,0,0,0),(176,1,31,'Main',1,0,0,0),(176,1,38,'RightSidebar',0,0,0,0),(176,1,39,'RightSidebar',1,0,0,0),(176,1,40,'Main',0,0,0,0),(177,1,18,'Sub Nav',0,0,0,0),(177,1,31,'Main',1,0,0,0),(177,1,38,'RightSidebar',0,0,0,0),(177,1,39,'RightSidebar',1,0,0,0),(177,1,40,'Main',0,0,0,0),(178,1,18,'Sub Nav',0,0,0,0),(178,1,31,'Main',1,0,0,0),(178,1,38,'RightSidebar',0,0,0,0),(178,1,39,'RightSidebar',1,0,0,0),(178,1,40,'Main',0,0,0,0),(179,1,18,'Sub Nav',0,0,0,0),(179,1,31,'Main',1,0,0,0),(179,1,38,'RightSidebar',0,0,0,0),(179,1,39,'RightSidebar',1,0,0,0),(179,1,40,'Main',0,0,0,0),(180,1,18,'Sub Nav',0,0,0,0),(180,1,31,'Main',1,0,0,0),(180,1,38,'RightSidebar',0,0,0,0),(180,1,39,'RightSidebar',1,0,0,0),(180,1,40,'Main',0,0,0,0),(181,1,18,'Sub Nav',0,0,0,0),(181,1,31,'Main',1,0,0,0),(181,1,38,'RightSidebar',0,0,0,0),(181,1,39,'RightSidebar',1,0,0,0),(181,1,40,'Main',0,0,0,0),(182,1,19,'Sub Nav',0,0,0,0),(182,1,33,'Main',1,0,0,0),(182,1,44,'LeftSidebar',0,0,0,0),(182,1,45,'LeftSidebar',1,0,0,0),(182,1,46,'RightSidebar',0,0,0,0),(182,1,47,'RightSidebar',1,0,0,0),(182,1,48,'Main',0,0,0,0),(183,1,23,'Sub Nav',0,0,0,0),(183,1,32,'Main',1,0,0,0),(183,1,34,'Main',0,0,0,0),(184,1,23,'Sub Nav',0,0,0,0),(184,1,32,'Main',1,0,0,0),(184,1,34,'Main',0,0,0,0),(185,1,23,'Sub Nav',0,0,0,0),(185,1,32,'Main',1,0,0,0),(185,1,34,'Main',0,0,0,0),(186,1,23,'Sub Nav',0,0,0,0),(186,1,32,'Main',1,0,0,0),(186,1,34,'Main',0,0,0,0),(187,1,23,'Sub Nav',0,0,0,0),(187,1,32,'Main',1,0,0,0),(187,1,34,'Main',0,0,0,0),(188,1,23,'Sub Nav',0,0,0,0),(188,1,32,'Main',1,0,0,0),(188,1,34,'Main',0,0,0,0),(189,1,18,'Sub Nav',0,0,0,0),(189,1,31,'Main',1,0,0,0),(189,1,38,'RightSidebar',0,0,0,0),(189,1,39,'RightSidebar',1,0,0,0),(189,1,40,'Main',0,0,0,0),(190,1,18,'Sub Nav',0,0,0,0),(190,1,31,'Main',1,0,0,0),(190,1,38,'RightSidebar',0,0,0,0),(190,1,39,'RightSidebar',1,0,0,0),(190,1,40,'Main',0,0,0,0),(191,1,18,'Sub Nav',0,0,0,0),(191,1,31,'Main',1,0,0,0),(191,1,38,'RightSidebar',0,0,0,0),(191,1,39,'RightSidebar',1,0,0,0),(191,1,40,'Main',0,0,0,0),(192,1,18,'Sub Nav',0,0,0,0),(192,1,31,'Main',1,0,0,0),(192,1,38,'RightSidebar',0,0,0,0),(192,1,39,'RightSidebar',1,0,0,0),(192,1,40,'Main',0,0,0,0),(193,1,18,'Sub Nav',0,0,0,0),(193,1,31,'Main',1,0,0,0),(193,1,38,'RightSidebar',0,0,0,0),(193,1,39,'RightSidebar',1,0,0,0),(193,1,40,'Main',0,0,0,0),(194,1,18,'Sub Nav',0,0,0,0),(194,1,31,'Main',1,0,0,0),(194,1,38,'RightSidebar',0,0,0,0),(194,1,39,'RightSidebar',1,0,0,0),(194,1,40,'Main',0,0,0,0),(195,1,18,'Sub Nav',0,0,0,0),(195,1,31,'Main',1,0,0,0),(195,1,38,'RightSidebar',0,0,0,0),(195,1,39,'RightSidebar',1,0,0,0),(195,1,40,'Main',0,0,0,0),(196,1,18,'Sub Nav',0,0,0,0),(196,1,31,'Main',1,0,0,0),(196,1,38,'RightSidebar',0,0,0,0),(196,1,39,'RightSidebar',1,0,0,0),(196,1,40,'Main',0,0,0,0),(197,1,18,'Sub Nav',0,0,0,0),(197,1,31,'Main',1,0,0,0),(197,1,38,'RightSidebar',0,0,0,0),(197,1,39,'RightSidebar',1,0,0,0),(197,1,40,'Main',0,0,0,0),(198,1,18,'Sub Nav',0,0,0,0),(198,1,31,'Main',1,0,0,0),(198,1,38,'RightSidebar',0,0,0,0),(198,1,39,'RightSidebar',1,0,0,0),(198,1,40,'Main',0,0,0,0),(199,1,18,'Sub Nav',0,0,0,0),(199,1,31,'Main',1,0,0,0),(199,1,38,'RightSidebar',0,0,0,0),(199,1,39,'RightSidebar',1,0,0,0),(199,1,40,'Main',0,0,0,0),(200,1,18,'Sub Nav',0,0,0,0),(200,1,31,'Main',1,0,0,0),(200,1,38,'RightSidebar',0,0,0,0),(200,1,39,'RightSidebar',1,0,0,0),(200,1,40,'Main',0,0,0,0),(201,1,18,'Sub Nav',0,0,0,0),(201,1,31,'Main',1,0,0,0),(201,1,38,'RightSidebar',0,0,0,0),(201,1,39,'RightSidebar',1,0,0,0),(201,1,40,'Main',0,0,0,0),(202,1,18,'Sub Nav',0,0,0,0),(202,1,31,'Main',1,0,0,0),(202,1,38,'RightSidebar',0,0,0,0),(202,1,39,'RightSidebar',1,0,0,0),(202,1,40,'Main',0,0,0,0),(203,1,18,'Sub Nav',0,0,0,0),(203,1,31,'Main',1,0,0,0),(203,1,38,'RightSidebar',0,0,0,0),(203,1,39,'RightSidebar',1,0,0,0),(203,1,40,'Main',0,0,0,0),(204,1,18,'Sub Nav',0,0,0,0),(204,1,31,'Main',1,0,0,0),(204,1,38,'RightSidebar',0,0,0,0),(204,1,39,'RightSidebar',1,0,0,0),(204,1,40,'Main',0,0,0,0),(205,1,18,'Sub Nav',0,0,0,0),(205,1,31,'Main',1,0,0,0),(205,1,38,'RightSidebar',0,0,0,0),(205,1,39,'RightSidebar',1,0,0,0),(205,1,40,'Main',0,0,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
INSERT INTO `CollectionVersionRelatedEdits` VALUES (1,2,142,1),(113,1,142,2);
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2012-08-22 16:38:12','2012-08-22 16:38:12','Version 1',0,0,1,NULL,NULL),(1,2,'Home','home','','2012-08-22 16:38:12','2012-08-30 12:46:17','Version 1',0,0,1,1,NULL),(1,3,'Home','home','','2012-08-22 16:38:12','2012-08-30 13:37:02','Version 1',0,0,1,1,NULL),(1,4,'Home','home','','2012-08-22 16:38:12','2012-08-30 13:38:36','New Version 4',1,0,1,1,NULL),(2,1,'Dashboard','dashboard','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(3,1,'Composer','composer','Write for your site.','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(4,1,'Write','write','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(5,1,'Drafts','drafts','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(7,1,'Full Sitemap','full','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(8,1,'Flat View','explore','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(9,1,'Page Search','search','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(10,1,'Files','files','All documents and images.','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(11,1,'File Manager','search','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(12,1,'Attributes','attributes','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(13,1,'File Sets','sets','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(14,1,'Add File Set','add_set','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(16,1,'Search Users','search','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(17,1,'User Groups','groups','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(18,1,'Attributes','attributes','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(19,1,'Add User','add','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(20,1,'Add Group','add_group','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(21,1,'Reports','reports','Get data from forms and logs.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(22,1,'Statistics','statistics','View your site activity.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(23,1,'Form Results','forms','Get submission data.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(24,1,'Surveys','surveys','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(25,1,'Logs','logs','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(26,1,'Pages & Themes','pages','Reskin your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(27,1,'Themes','themes','Reskin your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(28,1,'Add','add','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(29,1,'Inspect','inspect','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(30,1,'Customize','customize','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(31,1,'Page Types','types','What goes in your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(32,1,'Add Page Type','add','Add page types to your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(33,1,'Attributes','attributes','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(34,1,'Single Pages','single','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(35,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(36,1,'Stacks','stacks','Share content across your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(37,1,'Stack List','list','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(38,1,'Block Types','types','Manage the installed block types in your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(39,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(40,1,'Dashboard','news','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(41,1,'Add Functionality','install','Install add-ons & themes.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(42,1,'Update Add-Ons','update','Update your installed packages.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(43,1,'Connect to the Community','connect','Connect to the concrete5 community.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(44,1,'Get More Themes','themes','Download themes from concrete5.org.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(45,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(46,1,'System & Settings','system','Secure and setup your site.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(47,1,'Basics','basics','Basic information about your website.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(48,1,'Site Name','site_name','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(49,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(50,1,'Rich Text Editor','editor','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(51,1,'Languages','multilingual','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(52,1,'Time Zone','timezone','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(53,1,'Interface Preferences','interface','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(54,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(55,1,'Pretty URLs','urls','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(56,1,'Tracking Codes','tracking_codes','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(57,1,'Statistics','statistics','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(58,1,'Search Index','search_index','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(59,1,'Optimization','optimization','Keep your site running well.','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(60,1,'Cache & Speed Settings','cache','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(61,1,'Clear Cache','clear_cache','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(62,1,'Automated Jobs','jobs','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(63,1,'Permissions & Access','permissions','Control who sees and edits your site.','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(64,1,'Site Access','site','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(65,1,'File Manager Permissions','files','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(66,1,'Allowed File Types','file_types','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(67,1,'Task Permissions','tasks','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(68,1,'IP Blacklist','ip_blacklist','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(69,1,'Captcha Setup','captcha','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(70,1,'Spam Control','antispam','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(71,1,'Maintenance Mode','maintenance_mode','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(72,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(73,1,'Login Destination','postlogin','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(74,1,'Public Profiles','profiles','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(75,1,'Public Registration','public_registration','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(76,1,'Email','mail','Control how your site send and processes mail.','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(77,1,'SMTP Method','method','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(78,1,'Email Importers','importers','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(79,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(80,1,'Sets','sets','Group attributes into sets for easier organization','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(81,1,'Types','types','Choose which attribute types are available for different items.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(82,1,'Environment','environment','Advanced settings for web developers.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(83,1,'Environment Information','info','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(84,1,'Debug Settings','debug','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(85,1,'Logging Settings','logging','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(86,1,'File Storage Locations','file_storage_locations','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(87,1,'Backup & Restore','backup_restore','Backup or restore your website.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(88,1,'Backup Database','backup','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(89,1,'Update concrete5','update','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(90,1,'Database XML','database','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(91,1,'Composer','composer','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(92,1,'',NULL,NULL,'2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,NULL,NULL,NULL),(93,1,'',NULL,NULL,'2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,NULL,NULL,NULL),(94,1,'',NULL,NULL,'2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,NULL,NULL,NULL),(95,1,'Customize Dashboard Home','home','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(96,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(97,1,'Drafts','!drafts','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(98,1,'Trash','!trash','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(99,1,'Stacks','!stacks','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(100,1,'Login','login','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(101,1,'Register','register','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(102,1,'Profile','profile','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(103,1,'Edit','edit','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(104,1,'Avatar','avatar','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(105,1,'Messages','messages','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(106,1,'Friends','friends','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(107,1,'Page Not Found','page_not_found','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(108,1,'Page Forbidden','page_forbidden','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(109,1,'Download File','download_file','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(110,1,'Members','members','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(111,1,'',NULL,NULL,'2012-08-22 16:38:27','2012-08-22 16:38:27','Version 1',1,0,NULL,1,NULL),(112,1,'',NULL,NULL,'2012-08-30 09:51:35','2012-08-30 09:51:35','Initial Version',1,0,NULL,1,NULL),(113,1,'',NULL,NULL,'2012-08-30 09:51:52','2012-08-30 09:51:52','Initial Version',1,0,NULL,1,NULL),(114,1,'',NULL,NULL,'2012-08-30 09:52:29','2012-08-30 09:52:29','Initial Version',1,0,NULL,1,NULL),(115,1,'Products','products','','2012-08-30 10:19:00','2012-08-30 10:20:06','Initial Version',1,0,1,1,NULL),(116,1,'Our Expertise','our-expertise','','2012-08-30 10:20:00','2012-08-30 10:20:21','Initial Version',1,0,1,1,NULL),(117,1,'News & Events','news-and-events','','2012-08-30 10:20:00','2012-08-30 10:20:34','Initial Version',1,0,1,1,NULL),(118,1,'Our Partners','our-partners','','2012-08-30 10:20:00','2012-08-30 10:20:45','Initial Version',1,0,1,1,NULL),(119,1,'About','about','','2012-08-30 10:20:00','2012-08-30 10:20:54','Initial Version',1,0,1,1,NULL),(120,1,'Support','support','','2012-08-30 10:20:00','2012-08-30 10:21:03','Initial Version',1,0,1,1,NULL),(121,1,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 10:21:00','2012-08-30 10:21:33','Initial Version',1,0,1,1,NULL),(122,1,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 10:21:00','2012-08-30 10:21:49','Initial Version',1,0,1,1,NULL),(123,1,'Target Markets','target-markets','','2012-08-30 10:21:00','2012-08-30 10:22:01','Initial Version',1,0,1,1,NULL),(124,1,'Innovation','innovation','','2012-08-30 10:22:00','2012-08-30 10:22:10','Initial Version',1,0,1,1,NULL),(125,1,'Professional Services','professional-services','','2012-08-30 10:22:00','2012-08-30 10:22:23','Initial Version',1,0,1,1,NULL),(126,1,'Research & Development','research-and-development','','2012-08-30 10:22:00','2012-08-30 10:22:35','Initial Version',1,0,1,1,NULL),(127,1,'Press Releases','press-releases','','2012-08-30 10:22:00','2012-08-30 10:22:47','Initial Version',1,0,1,1,NULL),(128,1,'In the News','in-the-news','','2012-08-30 10:22:00','2012-08-30 10:22:57','Initial Version',1,0,1,1,NULL),(129,1,'Events','events','','2012-08-30 10:23:00','2012-08-30 10:23:18','Initial Version',1,0,1,1,NULL),(130,1,'Media Center','media-center','','2012-08-30 10:23:00','2012-08-30 10:23:29','Initial Version',1,0,1,1,NULL),(131,1,'Mobile Operators','mobile-operators','','2012-08-30 10:23:00','2012-08-30 10:23:41','Initial Version',1,0,1,1,NULL),(132,1,'System Integrators','system-integrators','','2012-08-30 10:23:00','2012-08-30 10:23:55','Initial Version',1,0,1,1,NULL),(133,1,'Application Service Providers','application-service-providers','','2012-08-30 10:23:00','2012-08-30 10:24:15','Initial Version',1,0,1,1,NULL),(134,1,'Manufacturing & Engineering','manufacturing-and-engineering','','2012-08-30 10:24:00','2012-08-30 10:24:35','Initial Version',1,0,1,1,NULL),(135,1,'About Us','about-us','','2012-08-30 10:24:00','2012-08-30 10:24:52','Initial Version',1,0,1,1,NULL),(136,1,'Management Team','management-team','','2012-08-30 10:24:00','2012-08-30 10:25:08','Initial Version',1,0,1,1,NULL),(137,1,'Management Team','management-team','','2012-08-30 10:24:00','2012-08-30 10:25:08','Initial Version',0,0,1,1,NULL),(137,2,'Investors','investors','','2012-08-30 10:24:00','2012-08-30 10:25:29','New Version 2',1,0,1,1,NULL),(138,1,'Careers','careers','','2012-08-30 10:25:00','2012-08-30 10:25:39','Initial Version',1,0,1,1,NULL),(139,1,'Contact Us','contact-us','','2012-08-30 10:25:00','2012-08-30 10:25:49','Initial Version',1,0,1,1,NULL),(140,1,'Main','main','','2012-08-30 10:25:00','2012-08-30 10:26:02','Initial Version',1,0,1,1,NULL),(141,1,'Certification','certification','','2012-08-30 10:26:00','2012-08-30 10:26:11','Initial Version',1,0,1,1,NULL),(142,1,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-08-30 12:46:06','Initial Version',0,0,1,1,NULL),(142,2,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-08-30 12:53:38','New Version 2',1,0,1,1,NULL),(143,1,'Side Nav','side-nav',NULL,'2012-08-30 12:47:33','2012-08-30 12:47:33','Initial Version',1,1,1,NULL,NULL),(144,1,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 12:49:41','Version 1',0,0,1,1,NULL),(144,2,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 14:05:23','Version 2',0,0,1,1,NULL),(144,3,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 14:11:39','Version 3',0,0,1,1,NULL),(144,4,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 14:17:05','Version 4',1,0,1,1,NULL),(145,1,'',NULL,NULL,'2012-08-30 14:02:54','2012-08-30 14:02:54','Initial Version',1,0,NULL,1,NULL),(146,1,'Products','products','','2012-08-30 14:03:00','2012-08-30 14:03:41','Version 1',0,0,1,1,NULL),(146,2,'Products','products','','2012-08-30 14:03:00','2012-08-30 14:18:35','Version 2',1,0,1,1,NULL),(147,1,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:03:00','2012-08-30 14:04:01','Initial Version',0,0,1,1,NULL),(147,2,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:03:00','2012-08-30 14:19:00','Initial Version',1,0,1,1,NULL),(148,1,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 14:04:00','2012-08-30 14:04:17','Initial Version',0,0,1,1,NULL),(148,2,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 14:04:00','2012-08-30 14:19:22','Initial Version',1,0,1,1,NULL),(149,1,'MIFI Intelligent Mobile Hotspots','mifi-intelligent-mobile-hotspots','','2012-08-30 14:21:00','2012-08-30 14:22:23','Initial Version',1,0,1,1,NULL),(150,1,'USB Devices','usb-devices','','2012-08-30 14:22:00','2012-08-30 14:22:36','Initial Version',1,0,1,1,NULL),(151,1,'Data Cards Modems','data-cards-modems','','2012-08-30 14:22:00','2012-08-30 14:22:52','Initial Version',1,0,1,1,NULL),(152,1,'Embedded Modules','embedded-modules','','2012-08-30 14:22:00','2012-08-30 14:23:04','Initial Version',1,0,1,1,NULL),(153,1,'Software','software','','2012-08-30 14:23:00','2012-08-30 14:23:15','Initial Version',1,0,1,1,NULL),(154,1,'Connection Manager','connection-manager','','2012-08-30 14:23:00','2012-08-30 14:23:29','Initial Version',1,0,1,1,NULL),(155,1,'SDK','sdk','','2012-08-30 14:23:00','2012-08-30 14:23:39','Initial Version',1,0,1,1,NULL),(156,1,'Android RIL','android-ril','','2012-08-30 14:23:00','2012-08-30 14:23:49','Initial Version',1,0,1,1,NULL),(157,1,'Mobile Tracking','mobile-tracking','','2012-08-30 14:23:00','2012-08-30 14:24:08','Initial Version',1,0,1,1,NULL),(158,1,'Assets Tracking','assets-tracking','','2012-08-30 14:24:00','2012-08-30 14:24:20','Initial Version',1,0,1,1,NULL),(159,1,'Workforce Monitoring','workforce-monitoring','','2012-08-30 14:24:00','2012-08-30 14:24:35','Initial Version',1,0,1,1,NULL),(160,1,'Telemetry','telemetry','','2012-08-30 14:24:00','2012-08-30 14:24:49','Initial Version',1,0,1,1,NULL),(161,1,'Service Delivery Platform','service-delivery-platform','','2012-08-30 14:24:00','2012-08-30 14:25:02','Initial Version',1,0,1,1,NULL),(162,1,'Products','products','','2012-08-30 14:47:00','2012-08-30 14:47:36','Initial Version',1,0,1,1,NULL),(163,1,'Our Expertise','our-expertise','','2012-08-30 14:47:00','2012-08-30 14:47:47','Initial Version',1,0,1,1,NULL),(164,1,'News & Events','news-and-events','','2012-08-30 14:47:00','2012-08-30 14:47:59','Initial Version',1,0,1,1,NULL),(165,1,'Our Partners','our-partners','','2012-08-30 14:48:00','2012-08-30 14:48:10','Initial Version',1,0,1,1,NULL),(166,1,'About','about','','2012-08-30 14:48:00','2012-08-30 14:48:19','Initial Version',1,0,1,1,NULL),(167,1,'Support','support','','2012-08-30 14:48:00','2012-08-30 14:48:36','Initial Version',1,0,1,1,NULL),(168,1,'Main','main','','2012-08-30 14:48:00','2012-08-30 14:48:48','Initial Version',1,0,1,1,NULL),(169,1,'Certification','certification','','2012-08-30 14:48:00','2012-08-30 14:49:04','Initial Version',1,0,1,1,NULL),(170,1,'About Us','about-us','','2012-08-30 14:49:00','2012-08-30 14:49:26','Initial Version',1,0,1,1,NULL),(171,1,'Management Team','management-team','','2012-08-30 14:49:00','2012-08-30 14:49:38','Initial Version',1,0,1,1,NULL),(172,1,'Investors','investors','','2012-08-30 14:49:00','2012-08-30 14:49:51','Initial Version',1,0,1,1,NULL),(173,1,'Careers','careers','','2012-08-30 14:49:00','2012-08-30 14:50:03','Initial Version',1,0,1,1,NULL),(174,1,'Contact Us','contact-us','','2012-08-30 14:50:00','2012-08-30 14:50:18','Initial Version',1,0,1,1,NULL),(175,1,'Mobile Operators','mobile-operators','','2012-08-30 14:50:00','2012-08-30 14:50:41','Initial Version',1,0,1,1,NULL),(176,1,'System Integrations','system-integrations','','2012-08-30 14:50:00','2012-08-30 14:51:03','Initial Version',1,0,1,1,NULL),(177,1,'Application Service Providers','application-service-providers','','2012-08-30 14:51:00','2012-08-30 14:51:18','Initial Version',1,0,1,1,NULL),(178,1,'Manufacturing & Engineering','manufacturing-and-engineering','','2012-08-30 14:51:00','2012-08-30 14:51:44','Initial Version',1,0,1,1,NULL),(179,1,'Press Releases','press-releases','','2012-08-30 14:51:00','2012-08-30 14:52:04','Initial Version',1,0,1,1,NULL),(180,1,'In the News','in-the-news','','2012-08-30 14:52:00','2012-08-30 14:52:15','Initial Version',1,0,1,1,NULL),(181,1,'Events','events','','2012-08-30 14:52:00','2012-08-30 14:52:25','Initial Version',1,0,1,1,NULL),(182,1,'Media Center','media-center','','2012-08-30 14:52:00','2012-08-30 14:52:36','Initial Version',1,0,1,1,NULL),(183,1,'Target Markets','target-markets','','2012-08-30 14:52:00','2012-08-30 14:53:01','Initial Version',1,0,1,1,NULL),(184,1,'Innovation','innovation','','2012-08-30 14:53:00','2012-08-30 14:53:13','Initial Version',1,0,1,1,NULL),(185,1,'Professional Services','professional-services','','2012-08-30 14:53:00','2012-08-30 14:53:25','Initial Version',1,0,1,1,NULL),(186,1,'Research & Development','research-and-development','','2012-08-30 14:53:00','2012-08-30 14:53:43','Initial Version',1,0,1,1,NULL),(187,1,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:53:00','2012-08-30 14:54:02','Initial Version',1,0,1,1,NULL),(188,1,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 14:54:00','2012-08-30 14:54:21','Initial Version',1,0,1,1,NULL),(189,1,'MIFI Intelligent Mobile Hotspots','mifi-intelligent-mobile-hotspots','','2012-08-30 14:54:00','2012-08-30 14:55:15','Initial Version',1,0,1,1,NULL),(190,1,'USB Devices','usb-devices','','2012-08-30 14:55:00','2012-08-30 14:55:30','Initial Version',1,0,1,1,NULL),(191,1,'Data Card Modems','data-card-modems','','2012-08-30 14:55:00','2012-08-30 14:55:43','Initial Version',1,0,1,1,NULL),(192,1,'Embedded Modules','embedded-modules','','2012-08-30 14:55:00','2012-08-30 14:55:55','Initial Version',1,0,1,1,NULL),(193,1,'Software','software','','2012-08-30 14:56:00','2012-08-30 14:56:06','Initial Version',1,0,1,1,NULL),(194,1,'Connection Manager','connection-manager','','2012-08-30 14:56:00','2012-08-30 14:56:25','Initial Version',1,0,1,1,NULL),(195,1,'SDK','sdk','','2012-08-30 14:56:00','2012-08-30 14:56:40','Initial Version',1,0,1,1,NULL),(196,1,'Android RIL','android-ril','','2012-08-30 14:56:00','2012-08-30 14:56:50','Initial Version',1,0,1,1,NULL),(197,1,'Mobile Tracking','mobile-tracking','','2012-08-30 14:56:00','2012-08-30 14:57:07','Initial Version',1,0,1,1,NULL),(198,1,'Asset Tracking','asset-tracking','','2012-08-30 14:57:00','2012-08-30 14:57:22','Initial Version',1,0,1,1,NULL),(199,1,'Workforce Monitoring','workforce-monitoring','','2012-08-30 14:57:00','2012-08-30 14:57:35','Initial Version',1,0,1,1,NULL),(200,1,'Telemetry','telemetry','','2012-08-30 14:57:00','2012-08-30 14:57:48','Initial Version',1,0,1,1,NULL),(201,1,'Service Delivery Platform','service-delivery-platform','','2012-08-30 14:57:00','2012-08-30 14:58:04','Initial Version',1,0,1,1,NULL),(202,1,'Professional Services','professional-services','','2012-08-30 14:58:00','2012-08-30 14:58:18','Initial Version',1,0,1,1,NULL),(203,1,'CMS','cms','','2012-08-30 14:58:00','2012-08-30 14:58:29','Initial Version',1,0,1,1,NULL),(204,1,'Plug-Ins','plug-ins','','2012-08-30 14:58:00','2012-08-30 14:58:53','Initial Version',1,0,1,1,NULL),(205,1,'Device Manager','device-manager','','2012-08-30 14:58:00','2012-08-30 14:59:06','Initial Version',1,0,1,1,NULL),(206,1,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-08-30 14:59:12','Initial Version',1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2012-08-22 16:38:12','2012-08-30 14:00:51','home'),(2,'2012-08-22 16:38:15','2012-08-22 16:38:15','dashboard'),(3,'2012-08-22 16:38:15','2012-08-22 16:38:15','composer'),(4,'2012-08-22 16:38:15','2012-08-22 16:38:15','write'),(5,'2012-08-22 16:38:15','2012-08-22 16:38:15','drafts'),(6,'2012-08-22 16:38:15','2012-08-22 16:38:15','sitemap'),(7,'2012-08-22 16:38:15','2012-08-22 16:38:15','full'),(8,'2012-08-22 16:38:15','2012-08-22 16:38:15','explore'),(9,'2012-08-22 16:38:15','2012-08-22 16:38:15','search'),(10,'2012-08-22 16:38:15','2012-08-22 16:38:15','files'),(11,'2012-08-22 16:38:16','2012-08-22 16:38:16','search'),(12,'2012-08-22 16:38:16','2012-08-22 16:38:16','attributes'),(13,'2012-08-22 16:38:16','2012-08-22 16:38:16','sets'),(14,'2012-08-22 16:38:16','2012-08-22 16:38:16','add_set'),(15,'2012-08-22 16:38:16','2012-08-22 16:38:16','users'),(16,'2012-08-22 16:38:16','2012-08-22 16:38:16','search'),(17,'2012-08-22 16:38:16','2012-08-22 16:38:16','groups'),(18,'2012-08-22 16:38:16','2012-08-22 16:38:16','attributes'),(19,'2012-08-22 16:38:16','2012-08-22 16:38:16','add'),(20,'2012-08-22 16:38:16','2012-08-22 16:38:16','add_group'),(21,'2012-08-22 16:38:16','2012-08-22 16:38:16','reports'),(22,'2012-08-22 16:38:16','2012-08-22 16:38:16','statistics'),(23,'2012-08-22 16:38:16','2012-08-22 16:38:16','forms'),(24,'2012-08-22 16:38:16','2012-08-22 16:38:16','surveys'),(25,'2012-08-22 16:38:16','2012-08-22 16:38:17','logs'),(26,'2012-08-22 16:38:17','2012-08-22 16:38:17','pages'),(27,'2012-08-22 16:38:17','2012-08-22 16:38:17','themes'),(28,'2012-08-22 16:38:17','2012-08-22 16:38:17','add'),(29,'2012-08-22 16:38:17','2012-08-22 16:38:17','inspect'),(30,'2012-08-22 16:38:17','2012-08-22 16:38:17','customize'),(31,'2012-08-22 16:38:17','2012-08-22 16:38:17','types'),(32,'2012-08-22 16:38:17','2012-08-22 16:38:17','add'),(33,'2012-08-22 16:38:17','2012-08-22 16:38:17','attributes'),(34,'2012-08-22 16:38:17','2012-08-22 16:38:17','single'),(35,'2012-08-22 16:38:17','2012-08-22 16:38:17','blocks'),(36,'2012-08-22 16:38:17','2012-08-22 16:38:17','stacks'),(37,'2012-08-22 16:38:17','2012-08-22 16:38:17','list'),(38,'2012-08-22 16:38:17','2012-08-22 16:38:17','types'),(39,'2012-08-22 16:38:17','2012-08-22 16:38:18','extend'),(40,'2012-08-22 16:38:18','2012-08-22 16:38:18','news'),(41,'2012-08-22 16:38:18','2012-08-22 16:38:18','install'),(42,'2012-08-22 16:38:18','2012-08-22 16:38:18','update'),(43,'2012-08-22 16:38:18','2012-08-22 16:38:18','connect'),(44,'2012-08-22 16:38:18','2012-08-22 16:38:18','themes'),(45,'2012-08-22 16:38:18','2012-08-22 16:38:18','add-ons'),(46,'2012-08-22 16:38:18','2012-08-22 16:38:18','system'),(47,'2012-08-22 16:38:18','2012-08-22 16:38:18','basics'),(48,'2012-08-22 16:38:18','2012-08-22 16:38:18','site_name'),(49,'2012-08-22 16:38:18','2012-08-22 16:38:18','icons'),(50,'2012-08-22 16:38:18','2012-08-22 16:38:18','editor'),(51,'2012-08-22 16:38:18','2012-08-22 16:38:18','multilingual'),(52,'2012-08-22 16:38:18','2012-08-22 16:38:18','timezone'),(53,'2012-08-22 16:38:18','2012-08-22 16:38:19','interface'),(54,'2012-08-22 16:38:19','2012-08-22 16:38:19','seo'),(55,'2012-08-22 16:38:19','2012-08-22 16:38:19','urls'),(56,'2012-08-22 16:38:19','2012-08-22 16:38:19','tracking_codes'),(57,'2012-08-22 16:38:19','2012-08-22 16:38:19','statistics'),(58,'2012-08-22 16:38:19','2012-08-22 16:38:19','search_index'),(59,'2012-08-22 16:38:19','2012-08-22 16:38:19','optimization'),(60,'2012-08-22 16:38:19','2012-08-22 16:38:19','cache'),(61,'2012-08-22 16:38:19','2012-08-22 16:38:19','clear_cache'),(62,'2012-08-22 16:38:19','2012-08-22 16:38:19','jobs'),(63,'2012-08-22 16:38:19','2012-08-22 16:38:19','permissions'),(64,'2012-08-22 16:38:19','2012-08-22 16:38:19','site'),(65,'2012-08-22 16:38:19','2012-08-22 16:38:19','files'),(66,'2012-08-22 16:38:19','2012-08-22 16:38:19','file_types'),(67,'2012-08-22 16:38:19','2012-08-22 16:38:20','tasks'),(68,'2012-08-22 16:38:20','2012-08-22 16:38:20','ip_blacklist'),(69,'2012-08-22 16:38:20','2012-08-22 16:38:20','captcha'),(70,'2012-08-22 16:38:20','2012-08-22 16:38:20','antispam'),(71,'2012-08-22 16:38:20','2012-08-22 16:38:20','maintenance_mode'),(72,'2012-08-22 16:38:20','2012-08-22 16:38:20','registration'),(73,'2012-08-22 16:38:20','2012-08-22 16:38:20','postlogin'),(74,'2012-08-22 16:38:20','2012-08-22 16:38:20','profiles'),(75,'2012-08-22 16:38:20','2012-08-22 16:38:20','public_registration'),(76,'2012-08-22 16:38:20','2012-08-22 16:38:20','mail'),(77,'2012-08-22 16:38:20','2012-08-22 16:38:20','method'),(78,'2012-08-22 16:38:20','2012-08-22 16:38:20','importers'),(79,'2012-08-22 16:38:20','2012-08-22 16:38:20','attributes'),(80,'2012-08-22 16:38:20','2012-08-22 16:38:21','sets'),(81,'2012-08-22 16:38:21','2012-08-22 16:38:21','types'),(82,'2012-08-22 16:38:21','2012-08-22 16:38:21','environment'),(83,'2012-08-22 16:38:21','2012-08-22 16:38:21','info'),(84,'2012-08-22 16:38:21','2012-08-22 16:38:21','debug'),(85,'2012-08-22 16:38:21','2012-08-22 16:38:21','logging'),(86,'2012-08-22 16:38:21','2012-08-22 16:38:21','file_storage_locations'),(87,'2012-08-22 16:38:21','2012-08-22 16:38:21','backup_restore'),(88,'2012-08-22 16:38:21','2012-08-22 16:38:21','backup'),(89,'2012-08-22 16:38:21','2012-08-22 16:38:21','update'),(90,'2012-08-22 16:38:21','2012-08-22 16:38:21','database'),(91,'2012-08-22 16:38:21','2012-08-22 16:38:21','composer'),(92,'2012-08-22 16:38:21','2012-08-22 16:38:21',NULL),(93,'2012-08-22 16:38:21','2012-08-22 16:38:21',NULL),(94,'2012-08-22 16:38:21','2012-08-22 16:38:21',NULL),(95,'2012-08-22 16:38:21','2012-08-22 16:38:21','home'),(96,'2012-08-22 16:38:21','2012-08-22 16:38:22','welcome'),(97,'2012-08-22 16:38:25','2012-08-22 16:38:25','!drafts'),(98,'2012-08-22 16:38:25','2012-08-22 16:38:25','!trash'),(99,'2012-08-22 16:38:25','2012-08-22 16:38:25','!stacks'),(100,'2012-08-22 16:38:25','2012-08-22 16:38:25','login'),(101,'2012-08-22 16:38:25','2012-08-22 16:38:25','register'),(102,'2012-08-22 16:38:25','2012-08-22 16:38:25','profile'),(103,'2012-08-22 16:38:25','2012-08-22 16:38:25','edit'),(104,'2012-08-22 16:38:25','2012-08-22 16:38:25','avatar'),(105,'2012-08-22 16:38:25','2012-08-22 16:38:26','messages'),(106,'2012-08-22 16:38:26','2012-08-22 16:38:26','friends'),(107,'2012-08-22 16:38:26','2012-08-22 16:38:26','page_not_found'),(108,'2012-08-22 16:38:26','2012-08-22 16:38:26','page_forbidden'),(109,'2012-08-22 16:38:26','2012-08-22 16:38:26','download_file'),(110,'2012-08-22 16:38:26','2012-08-22 16:38:26','members'),(111,'2012-08-22 16:38:27','2012-08-30 14:39:37',NULL),(112,'2012-08-30 09:51:35','2012-08-30 14:45:28',NULL),(113,'2012-08-30 09:51:52','2012-08-30 14:40:26',NULL),(114,'2012-08-30 09:52:29','2012-08-30 14:43:53',NULL),(115,'2012-08-30 10:20:06','2012-08-30 12:55:45','products'),(116,'2012-08-30 10:20:21','2012-08-30 12:55:41','our-expertise'),(117,'2012-08-30 10:20:34','2012-08-30 12:55:38','news-and-events'),(118,'2012-08-30 10:20:45','2012-08-30 12:55:34','our-partners'),(119,'2012-08-30 10:20:54','2012-08-30 12:55:31','about'),(120,'2012-08-30 10:21:03','2012-08-30 12:55:27','support'),(121,'2012-08-30 10:21:33','2012-08-30 10:21:33','mobile-broadband-solutions'),(122,'2012-08-30 10:21:49','2012-08-30 10:21:49','integrated-m2m-solutions'),(123,'2012-08-30 10:22:01','2012-08-30 10:22:01','target-markets'),(124,'2012-08-30 10:22:10','2012-08-30 10:22:10','innovation'),(125,'2012-08-30 10:22:23','2012-08-30 10:22:23','professional-services'),(126,'2012-08-30 10:22:35','2012-08-30 10:22:35','research-and-development'),(127,'2012-08-30 10:22:47','2012-08-30 10:22:47','press-releases'),(128,'2012-08-30 10:22:57','2012-08-30 10:22:57','in-the-news'),(129,'2012-08-30 10:23:18','2012-08-30 10:23:18','events'),(130,'2012-08-30 10:23:29','2012-08-30 10:23:29','media-center'),(131,'2012-08-30 10:23:41','2012-08-30 10:23:41','mobile-operators'),(132,'2012-08-30 10:23:55','2012-08-30 10:23:55','system-integrators'),(133,'2012-08-30 10:24:15','2012-08-30 10:24:15','application-service-providers'),(134,'2012-08-30 10:24:35','2012-08-30 10:24:35','manufacturing-and-engineering'),(135,'2012-08-30 10:24:52','2012-08-30 10:24:52','about-us'),(136,'2012-08-30 10:25:08','2012-08-30 10:25:08','management-team'),(137,'2012-08-30 10:25:08','2012-08-30 10:25:29','management-team'),(138,'2012-08-30 10:25:39','2012-08-30 10:25:39','careers'),(139,'2012-08-30 10:25:49','2012-08-30 10:25:49','contact-us'),(140,'2012-08-30 10:26:02','2012-08-30 10:26:02','main'),(141,'2012-08-30 10:26:11','2012-08-30 10:26:11','certification'),(142,'2012-08-30 12:46:06','2012-08-30 12:53:54','header-nav'),(143,'2012-08-30 12:47:33','2012-08-30 12:47:33','side-nav'),(144,'2012-08-30 12:49:41','2012-08-30 14:17:15','sub-nav'),(145,'2012-08-30 14:02:54','2012-08-30 14:26:40',NULL),(146,'2012-08-30 14:03:41','2012-08-30 14:46:00','products'),(147,'2012-08-30 14:04:01','2012-08-30 14:19:04','mobile-broadband-solutions'),(148,'2012-08-30 14:04:17','2012-08-30 14:19:25','integrated-m2m-solutions'),(149,'2012-08-30 14:22:23','2012-08-30 14:22:23','mifi-intelligent-mobile-hotspots'),(150,'2012-08-30 14:22:36','2012-08-30 14:22:36','usb-devices'),(151,'2012-08-30 14:22:52','2012-08-30 14:22:52','data-cards-modems'),(152,'2012-08-30 14:23:04','2012-08-30 14:23:04','embedded-modules'),(153,'2012-08-30 14:23:15','2012-08-30 14:23:16','software'),(154,'2012-08-30 14:23:29','2012-08-30 14:23:29','connection-manager'),(155,'2012-08-30 14:23:39','2012-08-30 14:23:39','sdk'),(156,'2012-08-30 14:23:49','2012-08-30 14:23:49','android-ril'),(157,'2012-08-30 14:24:08','2012-08-30 14:24:08','mobile-tracking'),(158,'2012-08-30 14:24:20','2012-08-30 14:24:20','assets-tracking'),(159,'2012-08-30 14:24:35','2012-08-30 14:24:35','workforce-monitoring'),(160,'2012-08-30 14:24:49','2012-08-30 14:24:49','telemetry'),(161,'2012-08-30 14:25:02','2012-08-30 14:25:02','service-delivery-platform'),(162,'2012-08-30 14:47:36','2012-08-30 14:47:36','products'),(163,'2012-08-30 14:47:47','2012-08-30 14:47:47','our-expertise'),(164,'2012-08-30 14:47:59','2012-08-30 14:47:59','news-and-events'),(165,'2012-08-30 14:48:10','2012-08-30 14:48:10','our-partners'),(166,'2012-08-30 14:48:19','2012-08-30 14:48:19','about'),(167,'2012-08-30 14:48:36','2012-08-30 14:48:36','support'),(168,'2012-08-30 14:48:48','2012-08-30 14:48:48','main'),(169,'2012-08-30 14:49:04','2012-08-30 14:49:04','certification'),(170,'2012-08-30 14:49:26','2012-08-30 14:49:26','about-us'),(171,'2012-08-30 14:49:38','2012-08-30 14:49:38','management-team'),(172,'2012-08-30 14:49:51','2012-08-30 14:49:51','investors'),(173,'2012-08-30 14:50:03','2012-08-30 14:50:03','careers'),(174,'2012-08-30 14:50:18','2012-08-30 14:50:18','contact-us'),(175,'2012-08-30 14:50:41','2012-08-30 14:50:42','mobile-operators'),(176,'2012-08-30 14:51:03','2012-08-30 14:51:03','system-integrations'),(177,'2012-08-30 14:51:18','2012-08-30 14:51:18','application-service-providers'),(178,'2012-08-30 14:51:44','2012-08-30 14:51:44','manufacturing-and-engineering'),(179,'2012-08-30 14:52:04','2012-08-30 14:52:04','press-releases'),(180,'2012-08-30 14:52:15','2012-08-30 14:52:15','in-the-news'),(181,'2012-08-30 14:52:25','2012-08-30 14:52:26','events'),(182,'2012-08-30 14:52:36','2012-08-30 14:52:36','media-center'),(183,'2012-08-30 14:53:01','2012-08-30 14:53:01','target-markets'),(184,'2012-08-30 14:53:13','2012-08-30 14:53:13','innovation'),(185,'2012-08-30 14:53:25','2012-08-30 14:53:25','professional-services'),(186,'2012-08-30 14:53:43','2012-08-30 14:53:43','research-and-development'),(187,'2012-08-30 14:54:02','2012-08-30 14:54:03','mobile-broadband-solutions'),(188,'2012-08-30 14:54:21','2012-08-30 14:54:22','integrated-m2m-solutions'),(189,'2012-08-30 14:55:15','2012-08-30 14:55:15','mifi-intelligent-mobile-hotspots'),(190,'2012-08-30 14:55:30','2012-08-30 14:55:31','usb-devices'),(191,'2012-08-30 14:55:43','2012-08-30 14:55:43','data-card-modems'),(192,'2012-08-30 14:55:55','2012-08-30 14:55:55','embedded-modules'),(193,'2012-08-30 14:56:06','2012-08-30 14:56:06','software'),(194,'2012-08-30 14:56:25','2012-08-30 14:56:26','connection-manager'),(195,'2012-08-30 14:56:40','2012-08-30 14:56:40','sdk'),(196,'2012-08-30 14:56:50','2012-08-30 14:56:51','android-ril'),(197,'2012-08-30 14:57:07','2012-08-30 14:57:07','mobile-tracking'),(198,'2012-08-30 14:57:22','2012-08-30 14:57:22','asset-tracking'),(199,'2012-08-30 14:57:35','2012-08-30 14:57:35','workforce-monitoring'),(200,'2012-08-30 14:57:48','2012-08-30 14:57:48','telemetry'),(201,'2012-08-30 14:58:04','2012-08-30 14:58:04','service-delivery-platform'),(202,'2012-08-30 14:58:18','2012-08-30 14:58:18','professional-services'),(203,'2012-08-30 14:58:29','2012-08-30 14:58:29','cms'),(204,'2012-08-30 14:58:53','2012-08-30 14:58:53','plug-ins'),(205,'2012-08-30 14:59:06','2012-08-30 14:59:06','device-manager'),(206,'2012-08-30 14:59:12','2012-08-30 14:59:12','footer');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerContentLayout`
--

DROP TABLE IF EXISTS `ComposerContentLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerContentLayout`
--

LOCK TABLES `ComposerContentLayout` WRITE;
/*!40000 ALTER TABLE `ComposerContentLayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerContentLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerDrafts`
--

DROP TABLE IF EXISTS `ComposerDrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerDrafts`
--

LOCK TABLES `ComposerDrafts` WRITE;
/*!40000 ALTER TABLE `ComposerDrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerDrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerTypes`
--

DROP TABLE IF EXISTS `ComposerTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerTypes`
--

LOCK TABLES `ComposerTypes` WRITE;
/*!40000 ALTER TABLE `ComposerTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('ANTISPAM_LOG_SPAM','2012-08-22 23:38:26','1',0,0),('APP_VERSION_LATEST','2012-09-04 21:31:28','5.5.2.1',0,0),('DASHBOARD_BACKGROUND_IMAGE','2012-08-30 21:12:37','',0,0),('DASHBOARD_BACKGROUND_IMAGE_CUSTOM_FILE_ID','2012-08-30 21:12:37','0',0,0),('DO_PAGE_REINDEX_CHECK','2012-08-30 21:59:17','0',0,0),('ENABLE_CACHE','2012-08-22 23:38:26','1',0,0),('ENABLE_LOG_EMAILS','2012-08-22 23:38:26','1',0,0),('ENABLE_LOG_ERRORS','2012-08-22 23:38:26','1',0,0),('ENABLE_MARKETPLACE_SUPPORT','2012-08-22 23:38:26','1',0,0),('FULL_PAGE_CACHE_GLOBAL','2012-08-22 23:38:26','0',0,0),('NEWSFLOW_LAST_VIEWED','2012-09-04 21:31:26','1346794286',1,0),('SEEN_INTRODUCTION','2012-08-22 23:38:48','1',0,0),('SITE','2012-08-22 23:38:27','Novatel Wireless',0,0),('SITE_APP_VERSION','2012-08-22 23:38:27','5.5.2.1',0,0),('SITE_DEBUG_LEVEL','2012-08-22 23:38:26','1',0,0),('TOOLBAR_QUICK_NAV_BEHAVIOR','2012-08-30 21:12:37','',0,0),('URL_REWRITING','2012-08-28 18:02:11','1',0,0);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStylePresets`
--

DROP TABLE IF EXISTS `CustomStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStyleRules`
--

DROP TABLE IF EXISTS `CustomStyleRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
INSERT INTO `CustomStyleRules` VALUES (1,'','breadcrumb','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(2,'','subNav','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(3,'','tabs','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','');
/*!40000 ALTER TABLE `CustomStyleRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DashboardHomepage`
--

DROP TABLE IF EXISTS `DashboardHomepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DashboardHomepage` (
  `dbhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbhModule` varchar(255) NOT NULL,
  `dbhDisplayName` varchar(255) DEFAULT NULL,
  `dbhDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DashboardHomepage`
--

LOCK TABLES `DashboardHomepage` WRITE;
/*!40000 ALTER TABLE `DashboardHomepage` DISABLE KEYS */;
/*!40000 ALTER TABLE `DashboardHomepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissions`
--

DROP TABLE IF EXISTS `FilePermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissions`
--

LOCK TABLES `FilePermissions` WRITE;
/*!40000 ALTER TABLE `FilePermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissions`
--

DROP TABLE IF EXISTS `FileSetPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissions` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) DEFAULT NULL,
  `canWrite` int(4) DEFAULT NULL,
  `canAdmin` int(4) DEFAULT NULL,
  `canAdd` int(4) DEFAULT NULL,
  `canSearch` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`),
  KEY `canRead` (`canRead`),
  KEY `canWrite` (`canWrite`),
  KEY `canAdmin` (`canAdmin`),
  KEY `canSearch` (`canSearch`),
  KEY `canAdd` (`canAdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissions`
--

LOCK TABLES `FileSetPermissions` WRITE;
/*!40000 ALTER TABLE `FileSetPermissions` DISABLE KEYS */;
INSERT INTO `FileSetPermissions` VALUES (0,1,0,10,0,0,0,0),(0,2,0,10,0,0,0,0),(0,3,0,10,10,10,10,10);
/*!40000 ALTER TABLE `FileSetPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL),(3,'Administrators','',0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine','Index the site to allow searching to work quickly and accurately.','2012-08-22 16:38:15',NULL,0,NULL,0,'ENABLED','index_search',1),(2,'Generate Sitemap File','Generate the sitemap.xml file that search engines use to crawl your site.','2012-08-22 16:38:15',NULL,0,NULL,0,'ENABLED','generate_sitemap',0),(3,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2012-08-22 16:38:15',NULL,0,NULL,0,'ENABLED','process_email',0),(4,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2012-08-22 16:38:15',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPresets`
--

DROP TABLE IF EXISTS `LayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPresets`
--

LOCK TABLES `LayoutPresets` WRITE;
/*!40000 ALTER TABLE `LayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layouts`
--

DROP TABLE IF EXISTS `Layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layouts`
--

LOCK TABLES `Layouts` WRITE;
/*!40000 ALTER TABLE `Layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/reports','1'),(21,22,'/dashboard/reports/statistics','1'),(22,23,'/dashboard/reports/forms','1'),(23,24,'/dashboard/reports/surveys','1'),(24,25,'/dashboard/reports/logs','1'),(25,26,'/dashboard/pages','1'),(26,27,'/dashboard/pages/themes','1'),(27,28,'/dashboard/pages/themes/add','1'),(28,29,'/dashboard/pages/themes/inspect','1'),(29,30,'/dashboard/pages/themes/customize','1'),(30,31,'/dashboard/pages/types','1'),(31,32,'/dashboard/pages/types/add','1'),(32,33,'/dashboard/pages/attributes','1'),(33,34,'/dashboard/pages/single','1'),(34,35,'/dashboard/blocks','1'),(35,36,'/dashboard/blocks/stacks','1'),(36,37,'/dashboard/blocks/stacks/list','1'),(37,38,'/dashboard/blocks/types','1'),(38,39,'/dashboard/extend','1'),(39,40,'/dashboard/news','1'),(40,41,'/dashboard/extend/install','1'),(41,42,'/dashboard/extend/update','1'),(42,43,'/dashboard/extend/connect','1'),(43,44,'/dashboard/extend/themes','1'),(44,45,'/dashboard/extend/add-ons','1'),(45,46,'/dashboard/system','1'),(46,47,'/dashboard/system/basics','1'),(47,48,'/dashboard/system/basics/site_name','1'),(48,49,'/dashboard/system/basics/icons','1'),(49,50,'/dashboard/system/basics/editor','1'),(50,51,'/dashboard/system/basics/multilingual','1'),(51,52,'/dashboard/system/basics/timezone','1'),(52,53,'/dashboard/system/basics/interface','1'),(53,54,'/dashboard/system/seo','1'),(54,55,'/dashboard/system/seo/urls','1'),(55,56,'/dashboard/system/seo/tracking_codes','1'),(56,57,'/dashboard/system/seo/statistics','1'),(57,58,'/dashboard/system/seo/search_index','1'),(58,59,'/dashboard/system/optimization','1'),(59,60,'/dashboard/system/optimization/cache','1'),(60,61,'/dashboard/system/optimization/clear_cache','1'),(61,62,'/dashboard/system/optimization/jobs','1'),(62,63,'/dashboard/system/permissions','1'),(63,64,'/dashboard/system/permissions/site','1'),(64,65,'/dashboard/system/permissions/files','1'),(65,66,'/dashboard/system/permissions/file_types','1'),(66,67,'/dashboard/system/permissions/tasks','1'),(67,68,'/dashboard/system/permissions/ip_blacklist','1'),(68,69,'/dashboard/system/permissions/captcha','1'),(69,70,'/dashboard/system/permissions/antispam','1'),(70,71,'/dashboard/system/permissions/maintenance_mode','1'),(71,72,'/dashboard/system/registration','1'),(72,73,'/dashboard/system/registration/postlogin','1'),(73,74,'/dashboard/system/registration/profiles','1'),(74,75,'/dashboard/system/registration/public_registration','1'),(75,76,'/dashboard/system/mail','1'),(76,77,'/dashboard/system/mail/method','1'),(77,78,'/dashboard/system/mail/importers','1'),(78,79,'/dashboard/system/attributes','1'),(79,80,'/dashboard/system/attributes/sets','1'),(80,81,'/dashboard/system/attributes/types','1'),(81,82,'/dashboard/system/environment','1'),(82,83,'/dashboard/system/environment/info','1'),(83,84,'/dashboard/system/environment/debug','1'),(84,85,'/dashboard/system/environment/logging','1'),(85,86,'/dashboard/system/environment/file_storage_locations','1'),(86,87,'/dashboard/system/backup_restore','1'),(87,88,'/dashboard/system/backup_restore/backup','1'),(88,89,'/dashboard/system/backup_restore/update','1'),(89,90,'/dashboard/system/backup_restore/database','1'),(90,91,'/dashboard/pages/types/composer','1'),(91,95,'/dashboard/home','1'),(92,96,'/dashboard/welcome','1'),(93,97,'/!drafts','1'),(94,98,'/!trash','1'),(95,99,'/!stacks','1'),(96,100,'/login','1'),(97,101,'/register','1'),(98,102,'/profile','1'),(99,103,'/profile/edit','1'),(100,104,'/profile/avatar','1'),(101,105,'/profile/messages','1'),(102,106,'/profile/friends','1'),(103,107,'/page_not_found','1'),(104,108,'/page_forbidden','1'),(105,109,'/download_file','1'),(106,110,'/members','1'),(130,137,'/management-team','0'),(138,143,'/!stacks/side-nav','1'),(141,142,'/!stacks/header-nav','1'),(142,120,'/!trash/support','1'),(143,140,'/!trash/support/main','1'),(144,141,'/!trash/support/certification','1'),(145,119,'/!trash/about','1'),(146,135,'/!trash/about/about-us','1'),(147,136,'/!trash/about/management-team','1'),(148,137,'/!trash/about/investors','1'),(149,138,'/!trash/about/careers','1'),(150,139,'/!trash/about/contact-us','1'),(151,118,'/!trash/our-partners','1'),(152,131,'/!trash/our-partners/mobile-operators','1'),(153,132,'/!trash/our-partners/system-integrators','1'),(154,133,'/!trash/our-partners/application-service-providers','1'),(155,134,'/!trash/our-partners/manufacturing-and-engineering','1'),(156,117,'/!trash/news-and-events','1'),(157,127,'/!trash/news-and-events/press-releases','1'),(158,128,'/!trash/news-and-events/in-the-news','1'),(159,129,'/!trash/news-and-events/events','1'),(160,130,'/!trash/news-and-events/media-center','1'),(161,116,'/!trash/our-expertise','1'),(162,123,'/!trash/our-expertise/target-markets','1'),(163,124,'/!trash/our-expertise/innovation','1'),(164,125,'/!trash/our-expertise/professional-services','1'),(165,126,'/!trash/our-expertise/research-and-development','1'),(166,115,'/!trash/products','1'),(167,121,'/!trash/products/mobile-broadband-solutions','1'),(168,122,'/!trash/products/integrated-m2m-solutions','1'),(174,144,'/!stacks/sub-nav','1'),(193,146,'/!trash/products1','1'),(194,147,'/!trash/products1/mobile-broadband-solutions','1'),(195,149,'/!trash/products1/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','1'),(196,150,'/!trash/products1/mobile-broadband-solutions/usb-devices','1'),(197,151,'/!trash/products1/mobile-broadband-solutions/data-cards-modems','1'),(198,152,'/!trash/products1/mobile-broadband-solutions/embedded-modules','1'),(199,153,'/!trash/products1/mobile-broadband-solutions/software','1'),(200,154,'/!trash/products1/mobile-broadband-solutions/software/connection-manager','1'),(201,155,'/!trash/products1/mobile-broadband-solutions/software/sdk','1'),(202,156,'/!trash/products1/mobile-broadband-solutions/software/android-ril','1'),(203,148,'/!trash/products1/integrated-m2m-solutions','1'),(204,157,'/!trash/products1/integrated-m2m-solutions/mobile-tracking','1'),(205,158,'/!trash/products1/integrated-m2m-solutions/assets-tracking','1'),(206,159,'/!trash/products1/integrated-m2m-solutions/workforce-monitoring','1'),(207,160,'/!trash/products1/integrated-m2m-solutions/telemetry','1'),(208,161,'/!trash/products1/integrated-m2m-solutions/service-delivery-platform','1'),(209,162,'/products','1'),(210,163,'/our-expertise','1'),(211,164,'/news-and-events','1'),(212,165,'/our-partners','1'),(213,166,'/about','1'),(214,167,'/support','1'),(215,168,'/support/main','1'),(216,169,'/support/certification','1'),(217,170,'/about/about-us','1'),(218,171,'/about/management-team','1'),(219,172,'/about/investors','1'),(220,173,'/about/careers','1'),(221,174,'/about/contact-us','1'),(222,175,'/our-partners/mobile-operators','1'),(223,176,'/our-partners/system-integrations','1'),(224,177,'/our-partners/application-service-providers','1'),(225,178,'/about/manufacturing-and-engineering','1'),(226,179,'/news-and-events/press-releases','1'),(227,180,'/news-and-events/in-the-news','1'),(228,181,'/news-and-events/events','1'),(229,182,'/news-and-events/media-center','1'),(230,183,'/our-expertise/target-markets','1'),(231,184,'/our-expertise/innovation','1'),(232,185,'/our-expertise/professional-services','1'),(233,186,'/our-expertise/research-and-development','1'),(234,187,'/products/mobile-broadband-solutions','1'),(235,188,'/products/integrated-m2m-solutions','1'),(236,189,'/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','1'),(237,190,'/products/mobile-broadband-solutions/usb-devices','1'),(238,191,'/products/mobile-broadband-solutions/data-card-modems','1'),(239,192,'/products/mobile-broadband-solutions/embedded-modules','1'),(240,193,'/products/mobile-broadband-solutions/software','1'),(241,194,'/products/mobile-broadband-solutions/software/connection-manager','1'),(242,195,'/products/mobile-broadband-solutions/software/sdk','1'),(243,196,'/products/mobile-broadband-solutions/software/android-ril','1'),(244,197,'/products/integrated-m2m-solutions/mobile-tracking','1'),(245,198,'/products/integrated-m2m-solutions/asset-tracking','1'),(246,199,'/products/integrated-m2m-solutions/workforce-monitoring','1'),(247,200,'/products/integrated-m2m-solutions/telemetry','1'),(248,201,'/products/integrated-m2m-solutions/service-delivery-platform','1'),(249,202,'/products/integrated-m2m-solutions/professional-services','1'),(250,203,'/products/integrated-m2m-solutions/service-delivery-platform/cms','1'),(251,204,'/products/integrated-m2m-solutions/service-delivery-platform/plug-ins','1'),(252,205,'/products/integrated-m2m-solutions/service-delivery-platform/device-manager','1'),(253,206,'/!stacks/footer','1');
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypes`
--

DROP TABLE IF EXISTS `PagePermissionPageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`gID`,`uID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypes`
--

LOCK TABLES `PagePermissionPageTypes` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissions`
--

DROP TABLE IF EXISTS `PagePermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cgPermissions` varchar(32) DEFAULT NULL,
  `cgStartDate` datetime DEFAULT NULL,
  `cgEndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissions`
--

LOCK TABLES `PagePermissions` WRITE;
/*!40000 ALTER TABLE `PagePermissions` DISABLE KEYS */;
INSERT INTO `PagePermissions` VALUES (1,1,0,'r',NULL,NULL),(1,3,0,'r:rv:wa:db:av:dc:adm',NULL,NULL),(2,3,0,'r:wa:adm',NULL,NULL),(37,1,0,'r',NULL,NULL),(37,3,0,'r:wa:adm',NULL,NULL),(100,1,0,'r',NULL,NULL),(100,2,0,'r',NULL,NULL),(101,1,0,'r',NULL,NULL);
/*!40000 ALTER TABLE `PagePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(4,'','Write','','/dashboard/composer/write','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(11,'','File Manager','','/dashboard/files/search','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(16,'','Search Users','','/dashboard/users/search','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(19,'','Add User','','/dashboard/users/add','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(21,'','Reports','Get data from forms and logs.','/dashboard/reports','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(22,'','Statistics','View your site activity.','/dashboard/reports/statistics','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(23,'','Form Results','Get submission data.','/dashboard/reports/forms','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(24,'','Surveys','','/dashboard/reports/surveys','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(25,'','Logs','','/dashboard/reports/logs','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(26,'','Pages & Themes','Reskin your site.','/dashboard/pages','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(27,'','Themes','Reskin your site.','/dashboard/pages/themes','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(28,'','Add','','/dashboard/pages/themes/add','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(30,'','Customize','','/dashboard/pages/themes/customize','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(31,'','Page Types','What goes in your site.','/dashboard/pages/types','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(33,'','Attributes','','/dashboard/pages/attributes','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(37,'','Stack List','','/dashboard/blocks/stacks/list','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(39,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(40,'','Dashboard','','/dashboard/news','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(41,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(42,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(43,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(44,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(45,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(46,'','System & Settings','Secure and setup your site.','/dashboard/system','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(48,'','Site Name','','/dashboard/system/basics/site_name','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(49,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(50,'','Rich Text Editor','','/dashboard/system/basics/editor','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(51,'','Languages','','/dashboard/system/basics/multilingual','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(52,'','Time Zone','','/dashboard/system/basics/timezone','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(53,'','Interface Preferences','','/dashboard/system/basics/interface','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(55,'','Pretty URLs','','/dashboard/system/seo/urls','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(56,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(57,'','Statistics','','/dashboard/system/seo/statistics','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(58,'','Search Index','','/dashboard/system/seo/search_index','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(60,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(61,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(62,'','Automated Jobs','','/dashboard/system/optimization/jobs','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(64,'','Site Access','','/dashboard/system/permissions/site','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(65,'','File Manager Permissions','','/dashboard/system/permissions/files','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(66,'','Allowed File Types','','/dashboard/system/permissions/file_types','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(67,'','Task Permissions','','/dashboard/system/permissions/tasks','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(68,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2012-08-22 16:38:20','2012-08-22 16:38:23',NULL,0),(69,'','Captcha Setup','','/dashboard/system/permissions/captcha','2012-08-22 16:38:20','2012-08-22 16:38:23',NULL,0),(70,'','Spam Control','','/dashboard/system/permissions/antispam','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(71,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(73,'','Login Destination','','/dashboard/system/registration/postlogin','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(74,'','Public Profiles','','/dashboard/system/registration/profiles','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(75,'','Public Registration','','/dashboard/system/registration/public_registration','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(76,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(77,'','SMTP Method','','/dashboard/system/mail/method','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(78,'','Email Importers','','/dashboard/system/mail/importers','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(79,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(82,'','Environment','Advanced settings for web developers.','/dashboard/system/environment','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(83,'','Environment Information','','/dashboard/system/environment/info','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(84,'','Debug Settings','','/dashboard/system/environment/debug','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(85,'','Logging Settings','','/dashboard/system/environment/logging','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(86,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(89,'','Update concrete5','','/dashboard/system/backup_restore/update','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(96,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(95,'','Customize Dashboard Home','','/dashboard/home','2012-08-22 16:38:21','2012-08-22 16:38:25',NULL,0),(1,'    Homepage Text Goes Here  ','Home','',NULL,'2012-08-22 16:38:12','2012-08-30 14:00:53',NULL,0),(115,'','Products','','/products','2012-08-30 10:19:00','2012-08-30 12:45:29',NULL,0),(116,'','Our Expertise','','/our-expertise','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(117,'','News & Events','','/news-and-events','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(118,'','Our Partners','','/our-partners','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(119,'','About','','/about','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(120,'','Support','','/support','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(121,'','Mobile Broadband Solutions','','/products/mobile-broadband-solutions','2012-08-30 10:21:00','2012-08-30 12:45:29',NULL,0),(122,'','Integrated M2M Solutions','','/products/integrated-m2m-solutions','2012-08-30 10:21:00','2012-08-30 12:45:29',NULL,0),(123,'','Target Markets','','/our-expertise/target-markets','2012-08-30 10:21:00','2012-08-30 12:45:29',NULL,0),(124,'','Innovation','','/our-expertise/innovation','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(125,'','Professional Services','','/our-expertise/professional-services','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(126,'','Research & Development','','/our-expertise/research-and-development','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(127,'','Press Releases','','/news-and-events/press-releases','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(128,'','In the News','','/news-and-events/in-the-news','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(129,'','Events','','/news-and-events/events','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(130,'','Media Center','','/news-and-events/media-center','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(131,'','Mobile Operators','','/our-partners/mobile-operators','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(132,'','System Integrators','','/our-partners/system-integrators','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(133,'','Application Service Providers','','/our-partners/application-service-providers','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(134,'','Manufacturing & Engineering','','/our-partners/manufacturing-and-engineering','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(135,'','About Us','','/about/about-us','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(136,'','Management Team','','/about/management-team','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(137,'','Investors','','/about/investors','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(138,'','Careers','','/about/careers','2012-08-30 10:25:00','2012-08-30 12:45:29',NULL,0),(139,'','Contact Us','','/about/contact-us','2012-08-30 10:25:00','2012-08-30 12:45:29',NULL,0),(140,'','Main','','/support/main','2012-08-30 10:25:00','2012-08-30 12:45:29',NULL,0),(141,'','Certification','','/support/certification','2012-08-30 10:26:00','2012-08-30 12:45:29',NULL,0),(142,'','Header Nav',NULL,'/!stacks/header-nav','2012-08-30 12:46:06','2012-08-30 12:53:54',NULL,0),(144,'','Sub Nav',NULL,'/!stacks/sub-nav','2012-08-30 12:49:41','2012-08-30 14:17:21',NULL,0),(113,' Content goes here  ','',NULL,NULL,'2012-08-30 09:51:52','2012-08-30 14:40:28',NULL,0),(111,' Content goes here      Sidebar Content     ','',NULL,NULL,'2012-08-22 16:38:27','2012-08-30 14:39:39',NULL,0),(114,' Content goes here     ','',NULL,NULL,'2012-08-30 09:52:29','2012-08-30 14:43:56',NULL,0),(145,' Content goes here     ','',NULL,NULL,'2012-08-30 14:02:54','2012-08-30 14:26:42',NULL,0),(146,' Content Goes Here  ','Products','','/products','2012-08-30 14:03:00','2012-08-30 14:18:44',NULL,0),(147,' Content goes here  ','Mobile Broadband Solutions','','/products/mobile-broadband-solutions','2012-08-30 14:03:00','2012-08-30 14:19:06',NULL,0),(148,' Content goes here  ','Integrated M2M Solutions','','/products/integrated-m2m-solutions','2012-08-30 14:04:00','2012-08-30 14:19:27',NULL,0),(149,' Content goes here  ','MIFI Intelligent Mobile Hotspots','','/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','2012-08-30 14:21:00','2012-08-30 14:25:25',NULL,0),(150,' Content goes here  ','USB Devices','','/products/mobile-broadband-solutions/usb-devices','2012-08-30 14:22:00','2012-08-30 14:25:25',NULL,0),(151,' Content goes here  ','Data Cards Modems','','/products/mobile-broadband-solutions/data-cards-modems','2012-08-30 14:22:00','2012-08-30 14:25:25',NULL,0),(152,' Content goes here  ','Embedded Modules','','/products/mobile-broadband-solutions/embedded-modules','2012-08-30 14:22:00','2012-08-30 14:25:25',NULL,0),(153,' Content goes here  ','Software','','/products/mobile-broadband-solutions/software','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(154,' Content goes here  ','Connection Manager','','/products/mobile-broadband-solutions/software/connection-manager','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(155,' Content goes here  ','SDK','','/products/mobile-broadband-solutions/software/sdk','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(156,' Content goes here  ','Android RIL','','/products/mobile-broadband-solutions/software/android-ril','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(157,' Content goes here  ','Mobile Tracking','','/products/integrated-m2m-solutions/mobile-tracking','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(158,' Content goes here  ','Assets Tracking','','/products/integrated-m2m-solutions/assets-tracking','2012-08-30 14:24:00','2012-08-30 14:25:25',NULL,0),(159,' Content goes here  ','Workforce Monitoring','','/products/integrated-m2m-solutions/workforce-monitoring','2012-08-30 14:24:00','2012-08-30 14:25:25',NULL,0),(160,' Content goes here  ','Telemetry','','/products/integrated-m2m-solutions/telemetry','2012-08-30 14:24:00','2012-08-30 14:25:25',NULL,0),(161,' Content goes here  ','Service Delivery Platform','','/products/integrated-m2m-solutions/service-delivery-platform','2012-08-30 14:24:00','2012-08-30 14:25:26',NULL,0),(112,' Featured content goes here   Homepage content goes here     ','',NULL,NULL,'2012-08-30 09:51:35','2012-08-30 14:45:31',NULL,0),(162,' Content goes here     ','Products','','/products','2012-08-30 14:47:00','2012-08-30 14:59:14',NULL,0),(163,' Content goes here     ','Our Expertise','','/our-expertise','2012-08-30 14:47:00','2012-08-30 14:59:14',NULL,0),(164,' Content goes here      Sidebar Content     ','News & Events','','/news-and-events','2012-08-30 14:47:00','2012-08-30 14:59:14',NULL,0),(165,' Content goes here      Sidebar Content     ','Our Partners','','/our-partners','2012-08-30 14:48:00','2012-08-30 14:59:14',NULL,0),(166,' Content goes here      Sidebar Content     ','About','','/about','2012-08-30 14:48:00','2012-08-30 14:59:14',NULL,0),(167,' Content goes here     ','Support','','/support','2012-08-30 14:48:00','2012-08-30 14:59:14',NULL,0),(168,' Content goes here     ','Main','','/support/main','2012-08-30 14:48:00','2012-08-30 14:59:14',NULL,0),(169,' Content goes here     ','Certification','','/support/certification','2012-08-30 14:48:00','2012-08-30 14:59:14',NULL,0),(170,' Content goes here      Sidebar Content     ','About Us','','/about/about-us','2012-08-30 14:49:00','2012-08-30 14:59:15',NULL,0),(171,' Content goes here      Sidebar Content     ','Management Team','','/about/management-team','2012-08-30 14:49:00','2012-08-30 14:59:15',NULL,0),(172,' Content goes here      Sidebar Content     ','Investors','','/about/investors','2012-08-30 14:49:00','2012-08-30 14:59:15',NULL,0),(173,' Content goes here      Sidebar Content     ','Careers','','/about/careers','2012-08-30 14:49:00','2012-08-30 14:59:15',NULL,0),(174,' Content goes here      Sidebar Content     ','Contact Us','','/about/contact-us','2012-08-30 14:50:00','2012-08-30 14:59:15',NULL,0),(175,' Content goes here      Sidebar Content     ','Mobile Operators','','/our-partners/mobile-operators','2012-08-30 14:50:00','2012-08-30 14:59:15',NULL,0),(176,' Content goes here      Sidebar Content     ','System Integrations','','/our-partners/system-integrations','2012-08-30 14:50:00','2012-08-30 14:59:15',NULL,0),(177,' Content goes here      Sidebar Content     ','Application Service Providers','','/our-partners/application-service-providers','2012-08-30 14:51:00','2012-08-30 14:59:15',NULL,0),(178,' Content goes here      Sidebar Content     ','Manufacturing & Engineering','','/about/manufacturing-and-engineering','2012-08-30 14:51:00','2012-08-30 14:59:15',NULL,0),(179,' Content goes here      Sidebar Content     ','Press Releases','','/news-and-events/press-releases','2012-08-30 14:51:00','2012-08-30 14:59:15',NULL,0),(180,' Content goes here      Sidebar Content     ','In the News','','/news-and-events/in-the-news','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(181,' Content goes here      Sidebar Content     ','Events','','/news-and-events/events','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(182,' Content goes here     ','Media Center','','/news-and-events/media-center','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(183,' Content goes here     ','Target Markets','','/our-expertise/target-markets','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(184,' Content goes here     ','Innovation','','/our-expertise/innovation','2012-08-30 14:53:00','2012-08-30 14:59:16',NULL,0),(185,' Content goes here     ','Professional Services','','/our-expertise/professional-services','2012-08-30 14:53:00','2012-08-30 14:59:16',NULL,0),(186,' Content goes here     ','Research & Development','','/our-expertise/research-and-development','2012-08-30 14:53:00','2012-08-30 14:59:16',NULL,0),(187,' Content goes here     ','Mobile Broadband Solutions','','/products/mobile-broadband-solutions','2012-08-30 14:53:00','2012-08-30 14:59:16',NULL,0),(188,' Content goes here     ','Integrated M2M Solutions','','/products/integrated-m2m-solutions','2012-08-30 14:54:00','2012-08-30 14:59:16',NULL,0),(189,' Content goes here      Sidebar Content     ','MIFI Intelligent Mobile Hotspots','','/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','2012-08-30 14:54:00','2012-08-30 14:59:16',NULL,0),(190,' Content goes here      Sidebar Content     ','USB Devices','','/products/mobile-broadband-solutions/usb-devices','2012-08-30 14:55:00','2012-08-30 14:59:16',NULL,0),(191,' Content goes here      Sidebar Content     ','Data Card Modems','','/products/mobile-broadband-solutions/data-card-modems','2012-08-30 14:55:00','2012-08-30 14:59:16',NULL,0),(192,' Content goes here      Sidebar Content     ','Embedded Modules','','/products/mobile-broadband-solutions/embedded-modules','2012-08-30 14:55:00','2012-08-30 14:59:16',NULL,0),(193,' Content goes here      Sidebar Content     ','Software','','/products/mobile-broadband-solutions/software','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(194,' Content goes here      Sidebar Content     ','Connection Manager','','/products/mobile-broadband-solutions/software/connection-manager','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(195,' Content goes here      Sidebar Content     ','SDK','','/products/mobile-broadband-solutions/software/sdk','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(196,' Content goes here      Sidebar Content     ','Android RIL','','/products/mobile-broadband-solutions/software/android-ril','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(197,' Content goes here      Sidebar Content     ','Mobile Tracking','','/products/integrated-m2m-solutions/mobile-tracking','2012-08-30 14:56:00','2012-08-30 14:59:17',NULL,0),(198,' Content goes here      Sidebar Content     ','Asset Tracking','','/products/integrated-m2m-solutions/asset-tracking','2012-08-30 14:57:00','2012-08-30 14:59:17',NULL,0),(199,' Content goes here      Sidebar Content     ','Workforce Monitoring','','/products/integrated-m2m-solutions/workforce-monitoring','2012-08-30 14:57:00','2012-08-30 14:59:17',NULL,0),(200,' Content goes here      Sidebar Content     ','Telemetry','','/products/integrated-m2m-solutions/telemetry','2012-08-30 14:57:00','2012-08-30 14:59:17',NULL,0),(201,' Content goes here      Sidebar Content     ','Service Delivery Platform','','/products/integrated-m2m-solutions/service-delivery-platform','2012-08-30 14:57:00','2012-08-30 14:59:17',NULL,0),(202,' Content goes here      Sidebar Content     ','Professional Services','','/products/integrated-m2m-solutions/professional-services','2012-08-30 14:58:00','2012-08-30 14:59:17',NULL,0),(203,' Content goes here      Sidebar Content     ','CMS','','/products/integrated-m2m-solutions/service-delivery-platform/cms','2012-08-30 14:58:00','2012-08-30 14:59:17',NULL,0),(204,' Content goes here      Sidebar Content     ','Plug-Ins','','/products/integrated-m2m-solutions/service-delivery-platform/plug-ins','2012-08-30 14:58:00','2012-08-30 14:59:17',NULL,0),(205,' Content goes here      Sidebar Content     ','Device Manager','','/products/integrated-m2m-solutions/service-delivery-platform/device-manager','2012-08-30 14:58:00','2012-08-30 14:59:17',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageStatistics`
--

DROP TABLE IF EXISTS `PageStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=673 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
INSERT INTO `PageStatistics` VALUES (1,1,'2012-08-22','2012-08-22 23:38:48',1),(2,96,'2012-08-22','2012-08-22 23:38:50',1),(3,1,'2012-08-22','2012-08-22 23:38:55',1),(4,2,'2012-08-22','2012-08-22 23:39:11',1),(5,1,'2012-08-23','2012-08-23 23:26:34',0),(6,1,'2012-08-23','2012-08-23 23:27:47',1),(7,2,'2012-08-23','2012-08-23 23:27:54',1),(8,27,'2012-08-23','2012-08-23 23:27:58',1),(9,27,'2012-08-23','2012-08-23 23:28:02',1),(10,29,'2012-08-23','2012-08-23 23:28:02',1),(11,27,'2012-08-23','2012-08-23 23:28:15',1),(12,27,'2012-08-23','2012-08-23 23:28:20',1),(13,27,'2012-08-23','2012-08-23 23:28:23',1),(14,1,'2012-08-23','2012-08-23 23:28:26',1),(15,27,'2012-08-23','2012-08-23 23:28:40',1),(16,1,'2012-08-23','2012-08-23 23:28:42',1),(17,1,'2012-08-23','2012-08-23 23:28:44',1),(18,27,'2012-08-23','2012-08-23 23:28:47',1),(19,1,'2012-08-23','2012-08-23 23:28:49',1),(20,27,'2012-08-23','2012-08-23 23:33:29',1),(21,27,'2012-08-23','2012-08-23 23:33:31',1),(22,27,'2012-08-23','2012-08-23 23:35:00',1),(23,27,'2012-08-23','2012-08-23 23:36:51',1),(24,1,'2012-08-28','2012-08-28 17:56:26',1),(25,95,'2012-08-28','2012-08-28 17:56:28',1),(26,2,'2012-08-28','2012-08-28 17:56:37',1),(27,100,'2012-08-28','2012-08-28 17:57:59',1),(28,1,'2012-08-28','2012-08-28 17:57:59',0),(29,1,'2012-08-28','2012-08-28 17:58:08',0),(30,1,'2012-08-28','2012-08-28 17:58:10',0),(31,100,'2012-08-28','2012-08-28 17:58:24',0),(32,100,'2012-08-28','2012-08-28 17:58:27',0),(33,100,'2012-08-28','2012-08-28 17:58:33',0),(34,100,'2012-08-28','2012-08-28 17:58:39',0),(35,100,'2012-08-28','2012-08-28 17:59:21',0),(36,100,'2012-08-28','2012-08-28 17:59:33',0),(37,1,'2012-08-28','2012-08-28 17:59:34',1),(38,2,'2012-08-28','2012-08-28 17:59:41',1),(39,100,'2012-08-28','2012-08-28 18:01:46',1),(40,100,'2012-08-28','2012-08-28 18:01:51',1),(41,1,'2012-08-28','2012-08-28 18:01:51',1),(42,2,'2012-08-28','2012-08-28 18:01:54',1),(43,2,'2012-08-28','2012-08-28 18:02:02',1),(44,46,'2012-08-28','2012-08-28 18:02:06',1),(45,55,'2012-08-28','2012-08-28 18:02:09',1),(46,55,'2012-08-28','2012-08-28 18:02:11',1),(47,55,'2012-08-28','2012-08-28 18:02:11',1),(48,55,'2012-08-28','2012-08-28 18:02:21',1),(49,55,'2012-08-28','2012-08-28 18:02:21',1),(50,2,'2012-08-28','2012-08-28 18:02:25',1),(51,2,'2012-08-28','2012-08-28 18:02:26',1),(52,2,'2012-08-28','2012-08-28 18:02:26',1),(53,2,'2012-08-28','2012-08-28 18:02:30',1),(54,1,'2012-08-28','2012-08-28 18:02:38',1),(55,46,'2012-08-28','2012-08-28 18:02:51',1),(56,55,'2012-08-28','2012-08-28 18:02:52',1),(57,46,'2012-08-28','2012-08-28 18:02:54',1),(58,48,'2012-08-28','2012-08-28 18:02:56',1),(59,46,'2012-08-28','2012-08-28 18:02:58',1),(60,49,'2012-08-28','2012-08-28 18:03:00',1),(61,46,'2012-08-28','2012-08-28 18:12:11',1),(62,52,'2012-08-28','2012-08-28 18:12:43',1),(63,46,'2012-08-28','2012-08-28 18:12:47',1),(64,73,'2012-08-28','2012-08-28 18:12:55',1),(65,46,'2012-08-28','2012-08-28 18:12:58',1),(66,74,'2012-08-28','2012-08-28 18:13:01',1),(67,46,'2012-08-28','2012-08-28 18:13:05',1),(68,75,'2012-08-28','2012-08-28 18:13:06',1),(69,46,'2012-08-28','2012-08-28 18:13:13',1),(70,46,'2012-08-28','2012-08-28 18:54:03',1),(71,1,'2012-08-28','2012-08-28 20:28:50',1),(72,2,'2012-08-28','2012-08-28 20:29:10',1),(73,27,'2012-08-28','2012-08-28 20:29:15',1),(74,1,'2012-08-29','2012-08-29 16:37:45',1),(75,1,'2012-08-29','2012-08-29 21:06:15',1),(76,95,'2012-08-29','2012-08-29 21:06:18',1),(77,1,'2012-08-29','2012-08-29 22:24:40',1),(78,1,'2012-08-30','2012-08-30 16:40:26',1),(79,2,'2012-08-30','2012-08-30 16:40:31',1),(80,27,'2012-08-30','2012-08-30 16:42:12',1),(81,27,'2012-08-30','2012-08-30 16:42:15',1),(82,27,'2012-08-30','2012-08-30 16:42:17',1),(83,2,'2012-08-30','2012-08-30 16:42:20',1),(84,1,'2012-08-30','2012-08-30 16:42:22',1),(85,1,'2012-08-30','2012-08-30 16:42:30',1),(86,1,'2012-08-30','2012-08-30 16:44:01',1),(87,1,'2012-08-30','2012-08-30 16:45:49',1),(88,1,'2012-08-30','2012-08-30 16:47:17',1),(89,1,'2012-08-30','2012-08-30 16:48:26',1),(90,1,'2012-08-30','2012-08-30 16:48:39',1),(91,1,'2012-08-30','2012-08-30 16:48:42',1),(92,1,'2012-08-30','2012-08-30 16:50:17',1),(93,1,'2012-08-30','2012-08-30 16:50:20',1),(94,7,'2012-08-30','2012-08-30 16:50:41',1),(95,2,'2012-08-30','2012-08-30 16:50:57',1),(96,31,'2012-08-30','2012-08-30 16:51:00',1),(97,32,'2012-08-30','2012-08-30 16:51:12',1),(98,32,'2012-08-30','2012-08-30 16:51:35',1),(99,31,'2012-08-30','2012-08-30 16:51:35',1),(100,32,'2012-08-30','2012-08-30 16:51:37',1),(101,32,'2012-08-30','2012-08-30 16:51:52',1),(102,31,'2012-08-30','2012-08-30 16:51:52',1),(103,32,'2012-08-30','2012-08-30 16:51:54',1),(104,32,'2012-08-30','2012-08-30 16:52:29',1),(105,31,'2012-08-30','2012-08-30 16:52:29',1),(106,7,'2012-08-30','2012-08-30 16:52:36',1),(107,1,'2012-08-30','2012-08-30 16:52:46',1),(108,1,'2012-08-30','2012-08-30 17:12:44',1),(109,1,'2012-08-30','2012-08-30 17:14:39',1),(110,1,'2012-08-30','2012-08-30 17:14:45',1),(111,1,'2012-08-30','2012-08-30 17:14:54',1),(112,1,'2012-08-30','2012-08-30 17:14:59',1),(113,1,'2012-08-30','2012-08-30 17:15:12',1),(114,1,'2012-08-30','2012-08-30 17:15:20',1),(115,1,'2012-08-30','2012-08-30 17:16:04',1),(116,2,'2012-08-30','2012-08-30 17:16:20',1),(117,27,'2012-08-30','2012-08-30 17:16:23',1),(118,2,'2012-08-30','2012-08-30 17:16:24',1),(119,31,'2012-08-30','2012-08-30 17:16:26',1),(120,7,'2012-08-30','2012-08-30 17:19:45',1),(121,6,'2012-08-30','2012-08-30 17:20:06',1),(122,7,'2012-08-30','2012-08-30 17:20:06',1),(123,6,'2012-08-30','2012-08-30 17:20:22',1),(124,7,'2012-08-30','2012-08-30 17:20:22',1),(125,6,'2012-08-30','2012-08-30 17:20:35',1),(126,7,'2012-08-30','2012-08-30 17:20:35',1),(127,6,'2012-08-30','2012-08-30 17:20:45',1),(128,7,'2012-08-30','2012-08-30 17:20:45',1),(129,6,'2012-08-30','2012-08-30 17:20:54',1),(130,7,'2012-08-30','2012-08-30 17:20:54',1),(131,6,'2012-08-30','2012-08-30 17:21:03',1),(132,7,'2012-08-30','2012-08-30 17:21:04',1),(133,6,'2012-08-30','2012-08-30 17:21:33',1),(134,7,'2012-08-30','2012-08-30 17:21:33',1),(135,6,'2012-08-30','2012-08-30 17:21:50',1),(136,7,'2012-08-30','2012-08-30 17:21:50',1),(137,6,'2012-08-30','2012-08-30 17:22:02',1),(138,7,'2012-08-30','2012-08-30 17:22:02',1),(139,6,'2012-08-30','2012-08-30 17:22:11',1),(140,7,'2012-08-30','2012-08-30 17:22:11',1),(141,6,'2012-08-30','2012-08-30 17:22:24',1),(142,7,'2012-08-30','2012-08-30 17:22:24',1),(143,6,'2012-08-30','2012-08-30 17:22:36',1),(144,7,'2012-08-30','2012-08-30 17:22:36',1),(145,6,'2012-08-30','2012-08-30 17:22:48',1),(146,7,'2012-08-30','2012-08-30 17:22:48',1),(147,6,'2012-08-30','2012-08-30 17:22:57',1),(148,7,'2012-08-30','2012-08-30 17:22:58',1),(149,6,'2012-08-30','2012-08-30 17:23:19',1),(150,7,'2012-08-30','2012-08-30 17:23:19',1),(151,6,'2012-08-30','2012-08-30 17:23:29',1),(152,7,'2012-08-30','2012-08-30 17:23:30',1),(153,6,'2012-08-30','2012-08-30 17:23:41',1),(154,7,'2012-08-30','2012-08-30 17:23:41',1),(155,6,'2012-08-30','2012-08-30 17:23:55',1),(156,7,'2012-08-30','2012-08-30 17:23:55',1),(157,6,'2012-08-30','2012-08-30 17:24:15',1),(158,7,'2012-08-30','2012-08-30 17:24:15',1),(159,6,'2012-08-30','2012-08-30 17:24:35',1),(160,7,'2012-08-30','2012-08-30 17:24:36',1),(161,6,'2012-08-30','2012-08-30 17:24:52',1),(162,7,'2012-08-30','2012-08-30 17:24:52',1),(163,6,'2012-08-30','2012-08-30 17:25:09',1),(164,7,'2012-08-30','2012-08-30 17:25:09',1),(165,6,'2012-08-30','2012-08-30 17:25:40',1),(166,7,'2012-08-30','2012-08-30 17:25:40',1),(167,6,'2012-08-30','2012-08-30 17:25:49',1),(168,7,'2012-08-30','2012-08-30 17:25:50',1),(169,6,'2012-08-30','2012-08-30 17:26:03',1),(170,7,'2012-08-30','2012-08-30 17:26:03',1),(171,6,'2012-08-30','2012-08-30 17:26:11',1),(172,7,'2012-08-30','2012-08-30 17:26:11',1),(173,1,'2012-08-30','2012-08-30 19:45:27',1),(174,1,'2012-08-30','2012-08-30 19:46:06',1),(175,1,'2012-08-30','2012-08-30 19:46:23',1),(176,115,'2012-08-30','2012-08-30 19:46:26',1),(177,115,'2012-08-30','2012-08-30 19:46:27',1),(178,116,'2012-08-30','2012-08-30 19:46:29',1),(179,116,'2012-08-30','2012-08-30 19:46:30',1),(180,117,'2012-08-30','2012-08-30 19:46:31',1),(181,117,'2012-08-30','2012-08-30 19:46:32',1),(182,118,'2012-08-30','2012-08-30 19:46:33',1),(183,118,'2012-08-30','2012-08-30 19:46:35',1),(184,119,'2012-08-30','2012-08-30 19:46:35',1),(185,119,'2012-08-30','2012-08-30 19:46:37',1),(186,120,'2012-08-30','2012-08-30 19:46:38',1),(187,120,'2012-08-30','2012-08-30 19:46:39',1),(188,2,'2012-08-30','2012-08-30 19:46:46',1),(189,31,'2012-08-30','2012-08-30 19:46:50',1),(190,31,'2012-08-30','2012-08-30 19:46:59',1),(191,113,'2012-08-30','2012-08-30 19:46:59',1),(192,113,'2012-08-30','2012-08-30 19:47:04',1),(193,2,'2012-08-30','2012-08-30 19:47:12',1),(194,36,'2012-08-30','2012-08-30 19:47:14',1),(195,2,'2012-08-30','2012-08-30 19:47:24',1),(196,36,'2012-08-30','2012-08-30 19:47:26',1),(197,36,'2012-08-30','2012-08-30 19:47:33',1),(198,36,'2012-08-30','2012-08-30 19:47:34',1),(199,36,'2012-08-30','2012-08-30 19:49:41',1),(200,36,'2012-08-30','2012-08-30 19:49:41',1),(201,36,'2012-08-30','2012-08-30 19:49:43',1),(202,144,'2012-08-30','2012-08-30 19:50:23',1),(203,36,'2012-08-30','2012-08-30 19:50:23',1),(204,2,'2012-08-30','2012-08-30 19:50:25',1),(205,27,'2012-08-30','2012-08-30 19:50:27',1),(206,2,'2012-08-30','2012-08-30 19:50:29',1),(207,31,'2012-08-30','2012-08-30 19:50:31',1),(208,31,'2012-08-30','2012-08-30 19:50:37',1),(209,113,'2012-08-30','2012-08-30 19:50:37',1),(210,113,'2012-08-30','2012-08-30 19:53:54',1),(211,113,'2012-08-30','2012-08-30 19:54:01',1),(212,113,'2012-08-30','2012-08-30 19:54:14',1),(213,31,'2012-08-30','2012-08-30 19:54:18',1),(214,31,'2012-08-30','2012-08-30 19:54:21',1),(215,111,'2012-08-30','2012-08-30 19:54:21',1),(216,111,'2012-08-30','2012-08-30 19:54:26',1),(217,111,'2012-08-30','2012-08-30 19:54:37',1),(218,31,'2012-08-30','2012-08-30 19:54:43',1),(219,31,'2012-08-30','2012-08-30 19:54:46',1),(220,114,'2012-08-30','2012-08-30 19:54:46',1),(221,114,'2012-08-30','2012-08-30 19:54:49',1),(222,114,'2012-08-30','2012-08-30 19:55:00',1),(223,2,'2012-08-30','2012-08-30 19:55:04',1),(224,1,'2012-08-30','2012-08-30 19:55:06',1),(225,115,'2012-08-30','2012-08-30 19:55:09',1),(226,115,'2012-08-30','2012-08-30 19:55:10',1),(227,116,'2012-08-30','2012-08-30 19:55:12',1),(228,116,'2012-08-30','2012-08-30 19:55:13',1),(229,117,'2012-08-30','2012-08-30 19:55:14',1),(230,117,'2012-08-30','2012-08-30 19:55:15',1),(231,2,'2012-08-30','2012-08-30 19:55:19',1),(232,7,'2012-08-30','2012-08-30 19:55:21',1),(233,1,'2012-08-30','2012-08-30 19:55:48',1),(234,1,'2012-08-30','2012-08-30 19:57:41',1),(235,1,'2012-08-30','2012-08-30 19:57:45',1),(236,1,'2012-08-30','2012-08-30 20:00:07',1),(237,1,'2012-08-30','2012-08-30 20:00:27',1),(238,1,'2012-08-30','2012-08-30 20:01:10',1),(239,1,'2012-08-30','2012-08-30 20:01:29',1),(240,1,'2012-08-30','2012-08-30 20:02:47',1),(241,1,'2012-08-30','2012-08-30 20:04:12',1),(242,1,'2012-08-30','2012-08-30 20:05:30',1),(243,1,'2012-08-30','2012-08-30 20:06:02',1),(244,1,'2012-08-30','2012-08-30 20:06:40',1),(245,1,'2012-08-30','2012-08-30 20:11:04',1),(246,1,'2012-08-30','2012-08-30 20:12:17',1),(247,1,'2012-08-30','2012-08-30 20:12:52',1),(248,1,'2012-08-30','2012-08-30 20:13:42',1),(249,1,'2012-08-30','2012-08-30 20:14:49',1),(250,1,'2012-08-30','2012-08-30 20:16:01',1),(251,1,'2012-08-30','2012-08-30 20:17:24',1),(252,1,'2012-08-30','2012-08-30 20:17:40',1),(253,1,'2012-08-30','2012-08-30 20:18:13',1),(254,1,'2012-08-30','2012-08-30 20:18:34',1),(255,1,'2012-08-30','2012-08-30 20:19:06',1),(256,1,'2012-08-30','2012-08-30 20:33:22',1),(257,1,'2012-08-30','2012-08-30 20:37:06',1),(258,1,'2012-08-30','2012-08-30 20:37:11',1),(259,1,'2012-08-30','2012-08-30 20:37:38',1),(260,1,'2012-08-30','2012-08-30 20:41:07',1),(261,1,'2012-08-30','2012-08-30 20:41:10',1),(262,1,'2012-08-30','2012-08-30 20:51:46',1),(263,1,'2012-08-30','2012-08-30 20:52:38',1),(264,1,'2012-08-30','2012-08-30 20:53:17',1),(265,1,'2012-08-30','2012-08-30 20:56:52',1),(266,1,'2012-08-30','2012-08-30 20:57:30',1),(267,1,'2012-08-30','2012-08-30 20:57:50',1),(268,1,'2012-08-30','2012-08-30 20:58:04',1),(269,1,'2012-08-30','2012-08-30 20:58:31',1),(270,1,'2012-08-30','2012-08-30 21:00:51',1),(271,1,'2012-08-30','2012-08-30 21:01:10',1),(272,2,'2012-08-30','2012-08-30 21:02:03',1),(273,7,'2012-08-30','2012-08-30 21:02:05',1),(274,2,'2012-08-30','2012-08-30 21:02:38',1),(275,31,'2012-08-30','2012-08-30 21:02:40',1),(276,32,'2012-08-30','2012-08-30 21:02:43',1),(277,32,'2012-08-30','2012-08-30 21:02:54',1),(278,31,'2012-08-30','2012-08-30 21:02:54',1),(279,31,'2012-08-30','2012-08-30 21:03:00',1),(280,145,'2012-08-30','2012-08-30 21:03:00',1),(281,145,'2012-08-30','2012-08-30 21:03:03',1),(282,145,'2012-08-30','2012-08-30 21:03:16',1),(283,2,'2012-08-30','2012-08-30 21:03:21',1),(284,7,'2012-08-30','2012-08-30 21:03:25',1),(285,6,'2012-08-30','2012-08-30 21:03:42',1),(286,7,'2012-08-30','2012-08-30 21:03:42',1),(287,6,'2012-08-30','2012-08-30 21:04:01',1),(288,7,'2012-08-30','2012-08-30 21:04:02',1),(289,6,'2012-08-30','2012-08-30 21:04:17',1),(290,7,'2012-08-30','2012-08-30 21:04:18',1),(291,1,'2012-08-30','2012-08-30 21:04:21',1),(292,146,'2012-08-30','2012-08-30 21:04:26',1),(293,146,'2012-08-30','2012-08-30 21:04:27',1),(294,2,'2012-08-30','2012-08-30 21:05:03',1),(295,36,'2012-08-30','2012-08-30 21:05:05',1),(296,36,'2012-08-30','2012-08-30 21:05:10',1),(297,144,'2012-08-30','2012-08-30 21:05:23',1),(298,36,'2012-08-30','2012-08-30 21:05:23',1),(299,144,'2012-08-30','2012-08-30 21:05:28',1),(300,36,'2012-08-30','2012-08-30 21:05:29',1),(301,146,'2012-08-30','2012-08-30 21:05:31',1),(302,146,'2012-08-30','2012-08-30 21:05:33',1),(303,146,'2012-08-30','2012-08-30 21:11:43',1),(304,146,'2012-08-30','2012-08-30 21:11:45',1),(305,95,'2012-08-30','2012-08-30 21:11:46',1),(306,46,'2012-08-30','2012-08-30 21:11:58',1),(307,90,'2012-08-30','2012-08-30 21:12:10',1),(308,46,'2012-08-30','2012-08-30 21:12:13',1),(309,53,'2012-08-30','2012-08-30 21:12:21',1),(310,53,'2012-08-30','2012-08-30 21:12:37',1),(311,53,'2012-08-30','2012-08-30 21:12:37',1),(312,2,'2012-08-30','2012-08-30 21:12:42',1),(313,46,'2012-08-30','2012-08-30 21:12:58',1),(314,83,'2012-08-30','2012-08-30 21:13:15',1),(315,83,'2012-08-30','2012-08-30 21:13:17',1),(316,2,'2012-08-30','2012-08-30 21:13:22',1),(317,146,'2012-08-30','2012-08-30 21:13:32',1),(318,146,'2012-08-30','2012-08-30 21:13:33',1),(319,148,'2012-08-30','2012-08-30 21:13:37',1),(320,148,'2012-08-30','2012-08-30 21:13:38',1),(321,146,'2012-08-30','2012-08-30 21:13:45',1),(322,146,'2012-08-30','2012-08-30 21:13:45',1),(323,36,'2012-08-30','2012-08-30 21:13:54',1),(324,36,'2012-08-30','2012-08-30 21:13:56',1),(325,144,'2012-08-30','2012-08-30 21:14:39',1),(326,36,'2012-08-30','2012-08-30 21:14:40',1),(327,144,'2012-08-30','2012-08-30 21:14:52',1),(328,36,'2012-08-30','2012-08-30 21:14:52',1),(329,146,'2012-08-30','2012-08-30 21:14:54',1),(330,146,'2012-08-30','2012-08-30 21:14:55',1),(331,146,'2012-08-30','2012-08-30 21:15:00',1),(332,146,'2012-08-30','2012-08-30 21:15:11',1),(333,144,'2012-08-30','2012-08-30 21:17:05',1),(334,36,'2012-08-30','2012-08-30 21:17:05',1),(335,144,'2012-08-30','2012-08-30 21:17:15',1),(336,36,'2012-08-30','2012-08-30 21:17:16',1),(337,146,'2012-08-30','2012-08-30 21:17:19',1),(338,2,'2012-08-30','2012-08-30 21:18:19',1),(339,146,'2012-08-30','2012-08-30 21:18:23',1),(340,146,'2012-08-30','2012-08-30 21:18:40',1),(341,147,'2012-08-30','2012-08-30 21:18:42',1),(342,147,'2012-08-30','2012-08-30 21:18:43',1),(343,147,'2012-08-30','2012-08-30 21:18:45',1),(344,147,'2012-08-30','2012-08-30 21:19:04',1),(345,146,'2012-08-30','2012-08-30 21:19:06',1),(346,146,'2012-08-30','2012-08-30 21:19:08',1),(347,148,'2012-08-30','2012-08-30 21:19:08',1),(348,148,'2012-08-30','2012-08-30 21:19:09',1),(349,148,'2012-08-30','2012-08-30 21:19:11',1),(350,148,'2012-08-30','2012-08-30 21:19:25',1),(351,146,'2012-08-30','2012-08-30 21:19:28',1),(352,146,'2012-08-30','2012-08-30 21:19:29',1),(353,1,'2012-08-30','2012-08-30 21:19:30',1),(354,146,'2012-08-30','2012-08-30 21:19:32',1),(355,146,'2012-08-30','2012-08-30 21:19:33',1),(356,31,'2012-08-30','2012-08-30 21:19:41',1),(357,31,'2012-08-30','2012-08-30 21:19:46',1),(358,113,'2012-08-30','2012-08-30 21:19:46',1),(359,113,'2012-08-30','2012-08-30 21:19:50',1),(360,113,'2012-08-30','2012-08-30 21:20:09',1),(361,31,'2012-08-30','2012-08-30 21:20:12',1),(362,31,'2012-08-30','2012-08-30 21:20:14',1),(363,111,'2012-08-30','2012-08-30 21:20:14',1),(364,111,'2012-08-30','2012-08-30 21:20:17',1),(365,111,'2012-08-30','2012-08-30 21:20:29',1),(366,31,'2012-08-30','2012-08-30 21:20:32',1),(367,31,'2012-08-30','2012-08-30 21:20:34',1),(368,145,'2012-08-30','2012-08-30 21:20:34',1),(369,145,'2012-08-30','2012-08-30 21:20:37',1),(370,145,'2012-08-30','2012-08-30 21:20:49',1),(371,31,'2012-08-30','2012-08-30 21:20:52',1),(372,31,'2012-08-30','2012-08-30 21:20:55',1),(373,114,'2012-08-30','2012-08-30 21:20:55',1),(374,114,'2012-08-30','2012-08-30 21:20:58',1),(375,114,'2012-08-30','2012-08-30 21:21:10',1),(376,31,'2012-08-30','2012-08-30 21:21:13',1),(377,2,'2012-08-30','2012-08-30 21:21:15',1),(378,7,'2012-08-30','2012-08-30 21:21:37',1),(379,6,'2012-08-30','2012-08-30 21:22:23',1),(380,7,'2012-08-30','2012-08-30 21:22:23',1),(381,6,'2012-08-30','2012-08-30 21:22:37',1),(382,7,'2012-08-30','2012-08-30 21:22:37',1),(383,6,'2012-08-30','2012-08-30 21:22:52',1),(384,7,'2012-08-30','2012-08-30 21:22:52',1),(385,6,'2012-08-30','2012-08-30 21:23:04',1),(386,7,'2012-08-30','2012-08-30 21:23:04',1),(387,6,'2012-08-30','2012-08-30 21:23:16',1),(388,7,'2012-08-30','2012-08-30 21:23:16',1),(389,6,'2012-08-30','2012-08-30 21:23:29',1),(390,7,'2012-08-30','2012-08-30 21:23:29',1),(391,6,'2012-08-30','2012-08-30 21:23:39',1),(392,7,'2012-08-30','2012-08-30 21:23:40',1),(393,6,'2012-08-30','2012-08-30 21:23:50',1),(394,7,'2012-08-30','2012-08-30 21:23:50',1),(395,6,'2012-08-30','2012-08-30 21:24:08',1),(396,7,'2012-08-30','2012-08-30 21:24:09',1),(397,6,'2012-08-30','2012-08-30 21:24:21',1),(398,7,'2012-08-30','2012-08-30 21:24:21',1),(399,6,'2012-08-30','2012-08-30 21:24:35',1),(400,7,'2012-08-30','2012-08-30 21:24:35',1),(401,6,'2012-08-30','2012-08-30 21:24:49',1),(402,7,'2012-08-30','2012-08-30 21:24:49',1),(403,6,'2012-08-30','2012-08-30 21:25:03',1),(404,7,'2012-08-30','2012-08-30 21:25:03',1),(405,2,'2012-08-30','2012-08-30 21:25:16',1),(406,31,'2012-08-30','2012-08-30 21:25:19',1),(407,31,'2012-08-30','2012-08-30 21:25:22',1),(408,145,'2012-08-30','2012-08-30 21:25:23',1),(409,145,'2012-08-30','2012-08-30 21:25:26',1),(410,145,'2012-08-30','2012-08-30 21:26:40',1),(411,2,'2012-08-30','2012-08-30 21:26:51',1),(412,31,'2012-08-30','2012-08-30 21:26:54',1),(413,31,'2012-08-30','2012-08-30 21:26:58',1),(414,113,'2012-08-30','2012-08-30 21:26:59',1),(415,113,'2012-08-30','2012-08-30 21:27:02',1),(416,113,'2012-08-30','2012-08-30 21:27:21',1),(417,2,'2012-08-30','2012-08-30 21:27:24',1),(418,31,'2012-08-30','2012-08-30 21:27:26',1),(419,31,'2012-08-30','2012-08-30 21:27:28',1),(420,111,'2012-08-30','2012-08-30 21:27:28',1),(421,111,'2012-08-30','2012-08-30 21:27:32',1),(422,111,'2012-08-30','2012-08-30 21:28:56',1),(423,111,'2012-08-30','2012-08-30 21:29:04',1),(424,31,'2012-08-30','2012-08-30 21:29:07',1),(425,31,'2012-08-30','2012-08-30 21:29:59',1),(426,111,'2012-08-30','2012-08-30 21:29:59',1),(427,111,'2012-08-30','2012-08-30 21:30:03',1),(428,111,'2012-08-30','2012-08-30 21:30:18',1),(429,111,'2012-08-30','2012-08-30 21:31:11',1),(430,31,'2012-08-30','2012-08-30 21:31:26',1),(431,31,'2012-08-30','2012-08-30 21:31:29',1),(432,145,'2012-08-30','2012-08-30 21:31:29',1),(433,31,'2012-08-30','2012-08-30 21:31:32',1),(434,31,'2012-08-30','2012-08-30 21:31:35',1),(435,114,'2012-08-30','2012-08-30 21:31:35',1),(436,114,'2012-08-30','2012-08-30 21:31:39',1),(437,114,'2012-08-30','2012-08-30 21:31:50',1),(438,146,'2012-08-30','2012-08-30 21:31:59',1),(439,146,'2012-08-30','2012-08-30 21:32:01',1),(440,146,'2012-08-30','2012-08-30 21:32:04',1),(441,146,'2012-08-30','2012-08-30 21:32:09',1),(442,31,'2012-08-30','2012-08-30 21:32:25',1),(443,31,'2012-08-30','2012-08-30 21:32:28',1),(444,111,'2012-08-30','2012-08-30 21:32:28',1),(445,111,'2012-08-30','2012-08-30 21:32:31',1),(446,111,'2012-08-30','2012-08-30 21:34:42',1),(447,111,'2012-08-30','2012-08-30 21:35:15',1),(448,111,'2012-08-30','2012-08-30 21:36:47',1),(449,111,'2012-08-30','2012-08-30 21:37:10',1),(450,111,'2012-08-30','2012-08-30 21:37:28',1),(451,111,'2012-08-30','2012-08-30 21:39:24',1),(452,111,'2012-08-30','2012-08-30 21:39:37',1),(453,31,'2012-08-30','2012-08-30 21:39:41',1),(454,31,'2012-08-30','2012-08-30 21:39:45',1),(455,113,'2012-08-30','2012-08-30 21:39:45',1),(456,113,'2012-08-30','2012-08-30 21:39:48',1),(457,113,'2012-08-30','2012-08-30 21:40:26',1),(458,113,'2012-08-30','2012-08-30 21:41:48',1),(459,31,'2012-08-30','2012-08-30 21:41:57',1),(460,31,'2012-08-30','2012-08-30 21:42:01',1),(461,114,'2012-08-30','2012-08-30 21:42:02',1),(462,114,'2012-08-30','2012-08-30 21:42:07',1),(463,114,'2012-08-30','2012-08-30 21:42:57',1),(464,114,'2012-08-30','2012-08-30 21:43:14',1),(465,114,'2012-08-30','2012-08-30 21:43:23',1),(466,114,'2012-08-30','2012-08-30 21:43:54',1),(467,31,'2012-08-30','2012-08-30 21:44:06',1),(468,31,'2012-08-30','2012-08-30 21:44:13',1),(469,145,'2012-08-30','2012-08-30 21:44:14',1),(470,31,'2012-08-30','2012-08-30 21:44:18',1),(471,31,'2012-08-30','2012-08-30 21:44:19',1),(472,112,'2012-08-30','2012-08-30 21:44:20',1),(473,112,'2012-08-30','2012-08-30 21:44:24',1),(474,112,'2012-08-30','2012-08-30 21:45:29',1),(475,146,'2012-08-30','2012-08-30 21:45:37',1),(476,1,'2012-08-30','2012-08-30 21:45:41',1),(477,1,'2012-08-30','2012-08-30 21:45:44',1),(478,146,'2012-08-30','2012-08-30 21:45:45',1),(479,146,'2012-08-30','2012-08-30 21:45:46',1),(480,147,'2012-08-30','2012-08-30 21:45:47',1),(481,147,'2012-08-30','2012-08-30 21:45:49',1),(482,2,'2012-08-30','2012-08-30 21:45:53',1),(483,7,'2012-08-30','2012-08-30 21:45:55',1),(484,6,'2012-08-30','2012-08-30 21:47:37',1),(485,7,'2012-08-30','2012-08-30 21:47:37',1),(486,6,'2012-08-30','2012-08-30 21:47:47',1),(487,7,'2012-08-30','2012-08-30 21:47:48',1),(488,6,'2012-08-30','2012-08-30 21:48:00',1),(489,7,'2012-08-30','2012-08-30 21:48:00',1),(490,6,'2012-08-30','2012-08-30 21:48:10',1),(491,7,'2012-08-30','2012-08-30 21:48:11',1),(492,6,'2012-08-30','2012-08-30 21:48:20',1),(493,7,'2012-08-30','2012-08-30 21:48:20',1),(494,6,'2012-08-30','2012-08-30 21:48:37',1),(495,7,'2012-08-30','2012-08-30 21:48:37',1),(496,6,'2012-08-30','2012-08-30 21:48:48',1),(497,7,'2012-08-30','2012-08-30 21:48:49',1),(498,6,'2012-08-30','2012-08-30 21:49:04',1),(499,7,'2012-08-30','2012-08-30 21:49:05',1),(500,6,'2012-08-30','2012-08-30 21:49:26',1),(501,7,'2012-08-30','2012-08-30 21:49:26',1),(502,6,'2012-08-30','2012-08-30 21:49:38',1),(503,7,'2012-08-30','2012-08-30 21:49:39',1),(504,6,'2012-08-30','2012-08-30 21:49:51',1),(505,7,'2012-08-30','2012-08-30 21:49:52',1),(506,6,'2012-08-30','2012-08-30 21:50:03',1),(507,7,'2012-08-30','2012-08-30 21:50:04',1),(508,6,'2012-08-30','2012-08-30 21:50:18',1),(509,7,'2012-08-30','2012-08-30 21:50:18',1),(510,6,'2012-08-30','2012-08-30 21:50:42',1),(511,7,'2012-08-30','2012-08-30 21:50:42',1),(512,6,'2012-08-30','2012-08-30 21:51:03',1),(513,7,'2012-08-30','2012-08-30 21:51:03',1),(514,6,'2012-08-30','2012-08-30 21:51:18',1),(515,7,'2012-08-30','2012-08-30 21:51:19',1),(516,6,'2012-08-30','2012-08-30 21:51:44',1),(517,7,'2012-08-30','2012-08-30 21:51:45',1),(518,6,'2012-08-30','2012-08-30 21:52:05',1),(519,7,'2012-08-30','2012-08-30 21:52:05',1),(520,6,'2012-08-30','2012-08-30 21:52:15',1),(521,7,'2012-08-30','2012-08-30 21:52:15',1),(522,6,'2012-08-30','2012-08-30 21:52:26',1),(523,7,'2012-08-30','2012-08-30 21:52:26',1),(524,6,'2012-08-30','2012-08-30 21:52:36',1),(525,7,'2012-08-30','2012-08-30 21:52:37',1),(526,6,'2012-08-30','2012-08-30 21:53:01',1),(527,7,'2012-08-30','2012-08-30 21:53:02',1),(528,6,'2012-08-30','2012-08-30 21:53:13',1),(529,7,'2012-08-30','2012-08-30 21:53:13',1),(530,6,'2012-08-30','2012-08-30 21:53:26',1),(531,7,'2012-08-30','2012-08-30 21:53:26',1),(532,6,'2012-08-30','2012-08-30 21:53:43',1),(533,7,'2012-08-30','2012-08-30 21:53:43',1),(534,6,'2012-08-30','2012-08-30 21:54:03',1),(535,7,'2012-08-30','2012-08-30 21:54:03',1),(536,6,'2012-08-30','2012-08-30 21:54:22',1),(537,7,'2012-08-30','2012-08-30 21:54:22',1),(538,6,'2012-08-30','2012-08-30 21:55:15',1),(539,7,'2012-08-30','2012-08-30 21:55:16',1),(540,6,'2012-08-30','2012-08-30 21:55:31',1),(541,7,'2012-08-30','2012-08-30 21:55:31',1),(542,6,'2012-08-30','2012-08-30 21:55:44',1),(543,7,'2012-08-30','2012-08-30 21:55:44',1),(544,6,'2012-08-30','2012-08-30 21:55:56',1),(545,7,'2012-08-30','2012-08-30 21:55:56',1),(546,6,'2012-08-30','2012-08-30 21:56:07',1),(547,7,'2012-08-30','2012-08-30 21:56:07',1),(548,6,'2012-08-30','2012-08-30 21:56:26',1),(549,7,'2012-08-30','2012-08-30 21:56:26',1),(550,6,'2012-08-30','2012-08-30 21:56:40',1),(551,7,'2012-08-30','2012-08-30 21:56:41',1),(552,6,'2012-08-30','2012-08-30 21:56:51',1),(553,7,'2012-08-30','2012-08-30 21:56:51',1),(554,6,'2012-08-30','2012-08-30 21:57:08',1),(555,7,'2012-08-30','2012-08-30 21:57:08',1),(556,6,'2012-08-30','2012-08-30 21:57:22',1),(557,7,'2012-08-30','2012-08-30 21:57:22',1),(558,6,'2012-08-30','2012-08-30 21:57:36',1),(559,7,'2012-08-30','2012-08-30 21:57:36',1),(560,6,'2012-08-30','2012-08-30 21:57:48',1),(561,7,'2012-08-30','2012-08-30 21:57:48',1),(562,6,'2012-08-30','2012-08-30 21:58:05',1),(563,7,'2012-08-30','2012-08-30 21:58:05',1),(564,6,'2012-08-30','2012-08-30 21:58:18',1),(565,7,'2012-08-30','2012-08-30 21:58:18',1),(566,6,'2012-08-30','2012-08-30 21:58:29',1),(567,7,'2012-08-30','2012-08-30 21:58:30',1),(568,6,'2012-08-30','2012-08-30 21:58:54',1),(569,7,'2012-08-30','2012-08-30 21:58:54',1),(570,6,'2012-08-30','2012-08-30 21:59:07',1),(571,7,'2012-08-30','2012-08-30 21:59:07',1),(572,1,'2012-08-30','2012-08-30 21:59:12',1),(573,1,'2012-08-30','2012-08-30 21:59:30',1),(574,1,'2012-08-30','2012-08-30 21:59:49',1),(575,1,'2012-08-30','2012-08-30 22:00:28',1),(576,162,'2012-08-30','2012-08-30 22:00:34',1),(577,162,'2012-08-30','2012-08-30 22:00:35',1),(578,187,'2012-08-30','2012-08-30 22:00:39',1),(579,187,'2012-08-30','2012-08-30 22:00:41',1),(580,163,'2012-08-30','2012-08-30 22:00:43',1),(581,163,'2012-08-30','2012-08-30 22:00:44',1),(582,164,'2012-08-30','2012-08-30 22:00:46',1),(583,164,'2012-08-30','2012-08-30 22:00:47',1),(584,179,'2012-08-30','2012-08-30 22:00:56',1),(585,179,'2012-08-30','2012-08-30 22:00:57',1),(586,1,'2012-08-30','2012-08-30 22:03:11',1),(587,100,'2012-08-30','2012-08-30 22:03:56',1),(588,1,'2012-08-30','2012-08-30 22:03:56',0),(589,100,'2012-08-30','2012-08-30 22:04:00',0),(590,100,'2012-08-30','2012-08-30 22:04:06',0),(591,1,'2012-08-30','2012-08-30 22:04:07',1),(592,1,'2012-08-30','2012-08-30 22:05:27',1),(593,100,'2012-08-30','2012-08-30 22:05:31',1),(594,1,'2012-08-30','2012-08-30 22:05:31',0),(595,100,'2012-08-30','2012-08-30 22:05:34',0),(596,100,'2012-08-30','2012-08-30 22:05:38',0),(597,1,'2012-08-30','2012-08-30 22:11:36',0),(598,162,'2012-08-30','2012-08-30 22:11:38',0),(599,162,'2012-08-30','2012-08-30 22:11:38',0),(600,163,'2012-08-30','2012-08-30 22:11:39',0),(601,163,'2012-08-30','2012-08-30 22:11:39',0),(602,164,'2012-08-30','2012-08-30 22:11:40',0),(603,164,'2012-08-30','2012-08-30 22:11:40',0),(604,165,'2012-08-30','2012-08-30 22:11:41',0),(605,165,'2012-08-30','2012-08-30 22:11:42',0),(606,166,'2012-08-30','2012-08-30 22:11:42',0),(607,166,'2012-08-30','2012-08-30 22:11:43',0),(608,167,'2012-08-30','2012-08-30 22:11:43',0),(609,167,'2012-08-30','2012-08-30 22:11:44',0),(610,1,'2012-08-31','2012-08-31 04:59:53',0),(611,167,'2012-08-31','2012-08-31 08:02:33',0),(612,167,'2012-08-31','2012-08-31 08:02:34',0),(613,1,'2012-08-31','2012-08-31 08:02:44',0),(614,1,'2012-09-01','2012-09-01 01:47:18',0),(615,1,'2012-09-02','2012-09-02 08:19:12',0),(616,1,'2012-09-02','2012-09-02 09:18:46',0),(617,1,'2012-09-04','2012-09-04 02:59:25',0),(618,1,'2012-09-04','2012-09-04 21:08:10',0),(619,1,'2012-09-04','2012-09-04 21:08:20',0),(620,1,'2012-09-04','2012-09-04 21:08:25',0),(621,162,'2012-09-04','2012-09-04 21:08:27',0),(622,162,'2012-09-04','2012-09-04 21:08:27',0),(623,163,'2012-09-04','2012-09-04 21:08:31',0),(624,163,'2012-09-04','2012-09-04 21:08:32',0),(625,164,'2012-09-04','2012-09-04 21:08:33',0),(626,164,'2012-09-04','2012-09-04 21:08:34',0),(627,165,'2012-09-04','2012-09-04 21:08:35',0),(628,165,'2012-09-04','2012-09-04 21:08:36',0),(629,166,'2012-09-04','2012-09-04 21:08:37',0),(630,166,'2012-09-04','2012-09-04 21:08:37',0),(631,167,'2012-09-04','2012-09-04 21:08:39',0),(632,167,'2012-09-04','2012-09-04 21:08:39',0),(633,1,'2012-09-04','2012-09-04 21:08:43',0),(634,1,'2012-09-04','2012-09-04 21:11:25',0),(635,1,'2012-09-04','2012-09-04 21:12:45',0),(636,162,'2012-09-04','2012-09-04 21:12:47',0),(637,162,'2012-09-04','2012-09-04 21:12:48',0),(638,163,'2012-09-04','2012-09-04 21:12:48',0),(639,163,'2012-09-04','2012-09-04 21:12:49',0),(640,183,'2012-09-04','2012-09-04 21:12:50',0),(641,183,'2012-09-04','2012-09-04 21:12:50',0),(642,164,'2012-09-04','2012-09-04 21:12:51',0),(643,164,'2012-09-04','2012-09-04 21:12:52',0),(644,165,'2012-09-04','2012-09-04 21:12:52',0),(645,165,'2012-09-04','2012-09-04 21:12:53',0),(646,166,'2012-09-04','2012-09-04 21:12:53',0),(647,166,'2012-09-04','2012-09-04 21:12:53',0),(648,167,'2012-09-04','2012-09-04 21:12:54',0),(649,167,'2012-09-04','2012-09-04 21:12:54',0),(650,1,'2012-09-04','2012-09-04 21:12:55',0),(651,1,'2012-09-04','2012-09-04 21:13:43',0),(652,1,'2012-09-04','2012-09-04 21:14:39',0),(653,100,'2012-09-04','2012-09-04 21:28:26',0),(654,100,'2012-09-04','2012-09-04 21:28:37',0),(655,100,'2012-09-04','2012-09-04 21:29:31',0),(656,100,'2012-09-04','2012-09-04 21:29:45',0),(657,100,'2012-09-04','2012-09-04 21:29:51',0),(658,100,'2012-09-04','2012-09-04 21:30:23',0),(659,100,'2012-09-04','2012-09-04 21:30:31',0),(660,100,'2012-09-04','2012-09-04 21:30:43',0),(661,100,'2012-09-04','2012-09-04 21:31:15',0),(662,100,'2012-09-04','2012-09-04 21:31:25',0),(663,1,'2012-09-04','2012-09-04 21:31:25',1),(664,95,'2012-09-04','2012-09-04 21:31:26',1),(665,100,'2012-09-04','2012-09-04 21:33:02',0),(666,1,'2012-09-04','2012-09-04 21:33:11',0),(667,100,'2012-09-04','2012-09-04 21:33:21',0),(668,100,'2012-09-04','2012-09-04 21:33:36',0),(669,100,'2012-09-04','2012-09-04 21:34:01',0),(670,100,'2012-09-04','2012-09-04 21:36:15',0),(671,1,'2012-09-04','2012-09-04 21:36:15',1),(672,100,'2012-09-04','2012-09-04 21:36:27',0);
/*!40000 ALTER TABLE `PageStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeStyles`
--

DROP TABLE IF EXISTS `PageThemeStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeStyles`
--

LOCK TABLES `PageThemeStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0),(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0),(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0),(4,'novatel','Novatel Theme','Theme for Concrete5 for NovatelWireless.com',0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeAttributes`
--

DROP TABLE IF EXISTS `PageTypeAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeAttributes`
--

LOCK TABLES `PageTypeAttributes` WRITE;
/*!40000 ALTER TABLE `PageTypeAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(5,'home','main.png','Home',0,0),(6,'left_sidebar','template1.png','Left Sidebar',0,0),(7,'three_column','template2.png','Three Column',0,0),(8,'one_column','main.png','Single Column',0,0);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cPendingAction` varchar(6) DEFAULT NULL,
  `cPendingActionDatetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cPendingActionUID` int(10) unsigned DEFAULT NULL,
  `cPendingActionTargetCID` int(10) unsigned DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `ctID` (`ctID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,5,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,17,0,0,0,4,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,12,0,0,0,4,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,4,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,4,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,4,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,4,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,4,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,4,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,4,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,4,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,4,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,4,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,4,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,4,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,5,3,2,0,4,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,4,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,4,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,4,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,4,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,4,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,4,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,21,0,4,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,21,0,4,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,21,0,4,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,21,0,4,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,4,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,26,0,4,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,27,0,4,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,27,0,4,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,27,0,4,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,26,0,4,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,31,0,4,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,26,0,4,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,26,0,4,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,2,6,2,0,4,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,35,0,4,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,37,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,36,0,4,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,1,35,0,4,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,7,2,0,4,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,8,2,0,4,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,39,0,4,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,39,0,4,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,39,0,4,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,39,0,4,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,39,0,4,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,9,2,0,4,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,46,0,4,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,47,0,4,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,47,0,4,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,47,0,4,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,47,0,4,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,47,0,4,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,47,0,4,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,4,1,46,0,4,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,54,0,4,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,1,54,0,4,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,2,54,0,4,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,3,54,0,4,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,46,0,4,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,59,0,4,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,59,0,4,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,59,0,4,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,3,46,0,4,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,63,0,4,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,63,0,4,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,63,0,4,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,63,0,4,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,4,63,0,4,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,63,0,4,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,63,0,4,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,7,63,0,4,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,46,0,4,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,72,0,4,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,72,0,4,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,72,0,4,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,46,0,4,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,76,0,4,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,76,0,4,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,46,0,4,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,79,0,4,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,79,0,4,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,4,7,46,0,4,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,82,0,4,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,82,0,4,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,82,0,4,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,82,0,4,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,46,0,4,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,87,0,4,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,87,0,4,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,87,0,4,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,31,0,4,-1,'0',0,1),(92,1,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(93,2,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(94,3,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(95,2,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,10,2,0,4,-1,'0',0,1),(96,3,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,4,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,4,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,7,0,0,0,4,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,4,0,0,0,4,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,100,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,4,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,101,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,4,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,4,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,102,0,4,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,102,0,4,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,102,0,4,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,102,0,4,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,4,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,4,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,4,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,4,-1,'0',0,1),(111,4,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(112,5,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(113,6,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(114,7,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(115,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,2,3,98,0,4,-1,'0',0,1),(116,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,4,4,98,0,4,-1,'0',0,1),(117,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,4,5,98,0,4,-1,'0',0,1),(118,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,4,6,98,0,4,-1,'0',0,1),(119,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,5,7,98,0,4,-1,'0',0,1),(120,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,2,8,98,0,4,-1,'0',0,1),(121,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,115,0,4,-1,'0',0,1),(122,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,115,0,4,-1,'0',0,1),(123,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,116,0,4,-1,'0',0,1),(124,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,116,0,4,-1,'0',0,1),(125,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,116,0,4,-1,'0',0,1),(126,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,116,0,4,-1,'0',0,1),(127,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,117,0,4,-1,'0',0,1),(128,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,117,0,4,-1,'0',0,1),(129,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,117,0,4,-1,'0',0,1),(130,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,117,0,4,-1,'0',0,1),(131,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,118,0,4,-1,'0',0,1),(132,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,118,0,4,-1,'0',0,1),(133,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,118,0,4,-1,'0',0,1),(134,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,118,0,4,-1,'0',0,1),(135,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,119,0,4,-1,'0',0,1),(136,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,119,0,4,-1,'0',0,1),(137,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,119,0,4,-1,'0',0,1),(138,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,119,0,4,-1,'0',0,1),(139,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,119,0,4,-1,'0',0,1),(140,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,120,0,4,-1,'0',0,1),(141,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,120,0,4,-1,'0',0,1),(142,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,99,0,4,-1,'0',0,1),(143,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,99,0,4,-1,'0',0,1),(144,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,99,0,4,-1,'0',0,1),(145,8,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(146,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,2,3,98,0,4,-1,'0',0,1),(147,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,0,146,0,4,-1,'0',0,1),(148,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,1,146,0,4,-1,'0',0,1),(149,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,147,0,4,-1,'0',0,1),(150,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,147,0,4,-1,'0',0,1),(151,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,147,0,4,-1,'0',0,1),(152,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,147,0,4,-1,'0',0,1),(153,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,147,0,4,-1,'0',0,1),(154,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,153,0,4,-1,'0',0,1),(155,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,153,0,4,-1,'0',0,1),(156,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,153,0,4,-1,'0',0,1),(157,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,148,0,4,-1,'0',0,1),(158,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,148,0,4,-1,'0',0,1),(159,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,148,0,4,-1,'0',0,1),(160,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,148,0,4,-1,'0',0,1),(161,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,148,0,4,-1,'0',0,1),(162,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,3,1,0,4,-1,'0',0,0),(163,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,4,1,0,4,-1,'0',0,0),(164,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,5,1,0,4,-1,'0',0,0),(165,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,6,1,0,4,-1,'0',0,0),(166,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,7,1,0,4,-1,'0',0,0),(167,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,8,1,0,4,-1,'0',0,0),(168,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,167,0,4,-1,'0',0,0),(169,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,167,0,4,-1,'0',0,0),(170,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,166,0,4,-1,'0',0,0),(171,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,166,0,4,-1,'0',0,0),(172,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,166,0,4,-1,'0',0,0),(173,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,166,0,4,-1,'0',0,0),(174,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,166,0,4,-1,'0',0,0),(175,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,165,0,4,-1,'0',0,0),(176,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,165,0,4,-1,'0',0,0),(177,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,165,0,4,-1,'0',0,0),(178,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,166,0,4,-1,'0',0,0),(179,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,164,0,4,-1,'0',0,0),(180,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,164,0,4,-1,'0',0,0),(181,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,164,0,4,-1,'0',0,0),(182,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,164,0,4,-1,'0',0,0),(183,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,163,0,4,-1,'0',0,0),(184,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,163,0,4,-1,'0',0,0),(185,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,163,0,4,-1,'0',0,0),(186,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,163,0,4,-1,'0',0,0),(187,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,0,162,0,4,-1,'0',0,0),(188,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,1,162,0,4,-1,'0',0,0),(189,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,187,0,4,-1,'0',0,0),(190,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,187,0,4,-1,'0',0,0),(191,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,187,0,4,-1,'0',0,0),(192,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,187,0,4,-1,'0',0,0),(193,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,187,0,4,-1,'0',0,0),(194,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,193,0,4,-1,'0',0,0),(195,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,193,0,4,-1,'0',0,0),(196,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,193,0,4,-1,'0',0,0),(197,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,188,0,4,-1,'0',0,0),(198,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,188,0,4,-1,'0',0,0),(199,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,188,0,4,-1,'0',0,0),(200,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,188,0,4,-1,'0',0,0),(201,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,188,0,4,-1,'0',0,0),(202,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,188,0,4,-1,'0',0,0),(203,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,201,0,4,-1,'0',0,0),(204,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,201,0,4,-1,'0',0,0),(205,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,201,0,4,-1,'0',0,0),(206,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,99,0,4,-1,'0',0,1);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
INSERT INTO `PileContents` VALUES (1,1,34,'BLOCK',1,'2012-08-30 21:26:38',1),(2,1,40,'BLOCK',1,'2012-08-30 21:39:29',2),(3,1,31,'BLOCK',1,'2012-08-30 21:39:30',3),(4,1,38,'BLOCK',1,'2012-08-30 21:39:32',4),(5,1,39,'BLOCK',1,'2012-08-30 21:39:34',5);
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2012-08-30 21:26:38',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Nav',20,142),(2,'Side Nav',0,143),(3,'Sub Nav',0,144),(4,'Footer',20,206);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotifications`
--

DROP TABLE IF EXISTS `SystemNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaskPermissionUserGroups`
--

DROP TABLE IF EXISTS `TaskPermissionUserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskPermissionUserGroups` (
  `tpID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tpID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskPermissionUserGroups`
--

LOCK TABLES `TaskPermissionUserGroups` WRITE;
/*!40000 ALTER TABLE `TaskPermissionUserGroups` DISABLE KEYS */;
INSERT INTO `TaskPermissionUserGroups` VALUES (1,3,0,1),(2,3,0,1),(3,3,0,1),(4,3,0,1),(5,3,0,1),(6,3,0,1),(8,3,0,1),(9,3,0,1),(10,3,0,1),(11,3,0,1);
/*!40000 ALTER TABLE `TaskPermissionUserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaskPermissions`
--

DROP TABLE IF EXISTS `TaskPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskPermissions` (
  `tpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tpHandle` varchar(255) DEFAULT NULL,
  `tpName` varchar(255) DEFAULT NULL,
  `tpDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tpID`),
  UNIQUE KEY `tpHandle` (`tpHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskPermissions`
--

LOCK TABLES `TaskPermissions` WRITE;
/*!40000 ALTER TABLE `TaskPermissions` DISABLE KEYS */;
INSERT INTO `TaskPermissions` VALUES (1,'access_task_permissions','Change Task Permissions','',0),(2,'access_sitemap','Access Sitemap and Page Search','',0),(3,'access_user_search','Access User Search','',0),(4,'access_group_search','Access Group Search','',0),(5,'access_page_defaults','Change Content on Page Type Default Pages','',0),(6,'backup','Perform Full Database Backups','',0),(7,'sudo','Sign in as User','',0),(8,'uninstall_packages','Uninstall Packages','',0),(9,'install_packages','Install Packages and Connect to the Marketplace','',0),(10,'delete_user','Delete Users','',0),(11,'view_newsflow','View Newsflow Updates in an Overlay','',0);
/*!40000 ALTER TABLE `TaskPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (9,0,0,1,0,1,0,1,1),(10,0,0,1,0,1,0,2,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserOpenIDs`
--

DROP TABLE IF EXISTS `UserOpenIDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserOpenIDs`
--

LOCK TABLES `UserOpenIDs` WRITE;
/*!40000 ALTER TABLE `UserOpenIDs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserOpenIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','admin@rtio.nl','dd719a38f31546376b401fd6a14bf0e5','1',-1,1,'2012-08-22 16:38:12',0,1346794575,1346794575,1346794285,6,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersFriends`
--

DROP TABLE IF EXISTS `UsersFriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersFriends`
--

LOCK TABLES `UsersFriends` WRITE;
/*!40000 ALTER TABLE `UsersFriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (11,1),(29,1),(30,1),(31,1),(32,1),(38,1),(67,1),(73,1),(74,1),(75,1);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (4,0),(5,0),(7,0),(8,0),(9,1),(10,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'blog, blogging'),(2,'new blog, write blog'),(3,'blog drafts,composer'),(4,'pages, add page, delete page, copy, move, alias'),(5,'pages, add page, delete page, copy, move, alias'),(6,'pages, add page, delete page, copy, move, alias'),(7,'find page, search page, search, find'),(8,'files, add file, delete file, copy, move, alias'),(9,'file, file attributes'),(10,'files, category, categories'),(12,'users, groups, people'),(13,'find, search, people'),(14,'user, group, people'),(15,'user attributes'),(16,'new user'),(17,'new user group, new group, group'),(18,'forms, log, error, email, mysql, exception, survey'),(19,'hits, pageviews, visitors, activity'),(20,'forms, questions'),(21,'survey, questions, quiz'),(22,'forms, log, error, email, mysql, exception, survey'),(23,'page types, themes, single pages'),(24,'new theme, theme, active theme, change theme, template, css'),(25,'add theme'),(26,'custom theme, change theme, custom css, css'),(27,'page type defaults, global block, global area'),(28,'page attributes'),(33,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(34,'update, upgrade'),(35,'concrete5.org, my account, marketplace'),(36,'buy theme, new theme, marketplace, template'),(37,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(39,'website name'),(40,'logo, favicon, iphone'),(41,'tinymce, content block, fonts, editor'),(42,'translate, translation'),(43,'timezone'),(44,'interface, quick nav, dashboard background, background image'),(45,'vanity, pretty url, seo'),(46,'traffic, statistics, google analytics, quant'),(47,'turn off statistics'),(48,'configure search, site search, search option'),(49,'cache option, change cache, turn on cache, turn off cache, no cache, page cache, caching'),(50,'cache option, turn off cache, no cache, page cache, caching'),(51,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(52,'editors, hide site, offline, private, public'),(53,'file options, file manager'),(54,'security, files, media '),(55,'security, users, actions, administrator, admin'),(56,'security, lock ip, lock out, block ip'),(57,'security, registration'),(58,'antispam, block spam, security'),(59,'lock site, under construction'),(60,'profile'),(61,'member profile, member page,community'),(62,'signup, new user, community'),(63,'smtp, mail settings'),(64,'email server, mail settings, mail configuration'),(65,'email server, mail settings, mail configuration, private message, message system'),(66,'attribute configuration'),(68,'overrides, system info, debug, support,help'),(69,'errors,exceptions, develop, support, help'),(70,'logs, email, error, exceptions'),(71,'security, alternate storage, hide files'),(72,'upgrade, new version');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,''),(3,''),(6,'');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'),(20,''),(21,'<p><img src=\"http://rtio.nl/i/?w=1024&amp;h=400\" alt=\"Home News\" /></p>'),(22,'<p>Homepage Text Goes Here</p>'),(27,'<p>Content Goes Here</p>'),(28,'<p>Content goes here</p>'),(29,'<p>Content goes here</p>'),(30,'<p>Content goes here</p>'),(31,'<p>Content goes here</p>'),(32,'<p>Content goes here</p>'),(33,'<p>Content goes here</p>'),(34,'<p><img src=\"http://rtio.nl/i/?w=1024&amp;h=100&amp;\" alt=\"Content Header / Banner\" width=\"1024\" height=\"100\" /></p>'),(38,'<p><img src=\"http://rtio.nl/i/?w=200&amp;h=400\" alt=\"Sidebar Image\" /></p>'),(39,'<p>Sidebar Content</p>'),(40,'<p><img src=\"http://rtio.nl/i/?w=800&amp;h=100&amp;\" alt=\"Content Header / Banner\" /></p>'),(48,'<p><img src=\"http://rtio.nl/i/?w=624&amp;h=100&amp;\" alt=\"Content Header / Banner\" /></p>'),(50,'<p>Featured content goes here</p>'),(52,'<p>Homepage content goes here</p>'),(53,'<p><img src=\"http://rtio.nl/i/?w=1024&amp;h=400&amp;\" alt=\"Content Header / Banner\" /></p>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
INSERT INTO `btCoreScrapbookDisplay` VALUES (41,38),(42,39),(43,40),(44,38),(45,39),(46,38),(47,39),(51,34);
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
INSERT INTO `btCoreStackDisplay` VALUES (17,144),(18,144),(19,144),(23,144);
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (8,'A'),(9,'B'),(12,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNav`
--

DROP TABLE IF EXISTS `btDateNav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNav`
--

LOCK TABLES `btDateNav` WRITE;
/*!40000 ALTER TABLE `btDateNav` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlashContent`
--

DROP TABLE IF EXISTS `btFlashContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlashContent`
--

LOCK TABLES `btFlashContent` WRITE;
/*!40000 ALTER TABLE `btFlashContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlashContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBook`
--

DROP TABLE IF EXISTS `btGuestBook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBook`
--

LOCK TABLES `btGuestBook` WRITE;
/*!40000 ALTER TABLE `btGuestBook` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBookEntries`
--

DROP TABLE IF EXISTS `btGuestBookEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBookEntries`
--

LOCK TABLES `btGuestBookEntries` WRITE;
/*!40000 ALTER TABLE `btGuestBookEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBookEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (13,'display_asc','top',0,0,'none','enough',0,0),(14,'display_asc','below',0,0,'relevant','enough_plus1',0,0),(15,'display_asc','top',0,0,'relevant_breadcrumb','enough',0,0),(16,'display_asc','top',0,0,'none','enough',0,0),(24,'display_asc','top',0,0,'relevant_breadcrumb','enough',0,0),(25,'display_asc','below',0,0,'relevant','enough_plus1',0,0),(26,'display_asc','below',0,0,'relevant','enough_plus1',0,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshow`
--

DROP TABLE IF EXISTS `btSlideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshow`
--

LOCK TABLES `btSlideshow` WRITE;
/*!40000 ALTER TABLE `btSlideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshowImg`
--

DROP TABLE IF EXISTS `btSlideshowImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshowImg`
--

LOCK TABLES `btSlideshowImg` WRITE;
/*!40000 ALTER TABLE `btSlideshowImg` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshowImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-04 21:52:34
