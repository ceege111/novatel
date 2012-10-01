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
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,96,'Header',0,0,0),(2,96,'Column 1',0,0,0),(3,96,'Column 2',0,0,0),(4,96,'Column 3',0,0,0),(5,96,'Column 4',0,0,0),(6,95,'Primary',0,0,0),(7,95,'Secondary 1',0,0,0),(8,95,'Secondary 2',0,0,0),(9,95,'Secondary 3',0,0,0),(10,95,'Secondary 4',0,0,0),(11,95,'Secondary 5',0,0,0),(12,1,'Header Nav',0,0,1),(13,1,'Header',0,0,0),(14,1,'Sidebar',0,0,0),(15,1,'Main',0,0,0),(16,107,'Main',0,0,0),(17,1,'Home Featured',0,0,0),(18,1,'Main Menu',0,0,0),(19,142,'Main',0,0,0),(20,115,'Header Nav',0,0,1),(21,115,'LeftSidebar',0,0,0),(22,115,'Main',0,0,0),(23,116,'Header Nav',0,0,1),(24,116,'LeftSidebar',0,0,0),(25,116,'Main',0,0,0),(26,117,'Header Nav',0,0,1),(27,117,'LeftSidebar',0,0,0),(28,117,'Main',0,0,0),(29,118,'Header Nav',0,0,1),(30,118,'LeftSidebar',0,0,0),(31,118,'Main',0,0,0),(32,119,'Header Nav',0,0,1),(33,119,'LeftSidebar',0,0,0),(34,119,'Main',0,0,0),(35,120,'Header Nav',0,0,1),(36,120,'LeftSidebar',0,0,0),(37,120,'Main',0,0,0),(38,113,'Header Nav',0,0,1),(39,113,'LeftSidebar',0,0,0),(40,113,'Main',0,0,0),(41,143,'Main',0,0,0),(42,144,'Main',0,0,0),(43,113,'Sub Nav',0,0,0),(44,111,'Header Nav',0,0,1),(45,111,'Sub Nav',0,0,0),(46,111,'Main',0,0,0),(47,114,'Header Nav',0,0,1),(48,114,'Sub Nav',0,0,0),(49,114,'LeftSidebar',0,0,0),(50,114,'Main',0,0,0),(51,114,'RightSidebar',0,0,0),(52,115,'Sub Nav',0,0,0),(53,116,'Sub Nav',0,0,0),(54,117,'Sub Nav',0,0,0),(55,145,'Header Nav',0,0,1),(56,145,'Sub Nav',0,0,0),(57,145,'Main',0,0,0),(58,146,'Sub Nav',0,0,0),(59,147,'Sub Nav',0,0,0),(60,148,'Sub Nav',0,0,0),(61,146,'Header Nav',0,0,1),(62,146,'Main',0,0,0),(63,148,'Header Nav',0,0,1),(64,148,'Main',0,0,0),(65,147,'Header Nav',0,0,1),(66,147,'Main',0,0,0),(67,149,'Sub Nav',0,0,0),(68,149,'Main',0,0,0),(69,150,'Sub Nav',0,0,0),(70,150,'Main',0,0,0),(71,151,'Sub Nav',0,0,0),(72,151,'Main',0,0,0),(73,152,'Sub Nav',0,0,0),(74,152,'Main',0,0,0),(75,153,'Sub Nav',0,0,0),(76,153,'Main',0,0,0),(77,154,'Sub Nav',0,0,0),(78,154,'Main',0,0,0),(79,155,'Sub Nav',0,0,0),(80,155,'Main',0,0,0),(81,156,'Sub Nav',0,0,0),(82,156,'Main',0,0,0),(83,157,'Sub Nav',0,0,0),(84,157,'Main',0,0,0),(85,158,'Sub Nav',0,0,0),(86,158,'Main',0,0,0),(87,159,'Sub Nav',0,0,0),(88,159,'Main',0,0,0),(89,160,'Sub Nav',0,0,0),(90,160,'Main',0,0,0),(91,161,'Sub Nav',0,0,0),(92,161,'Main',0,0,0),(93,111,'RightSidebar',0,0,0),(94,112,'Header Nav',0,0,1),(95,112,'Home Featured',0,0,0),(96,112,'Main',0,0,0),(97,1,'Footer',0,0,1),(98,206,'Main',0,0,0),(99,162,'Sub Nav',0,0,0),(100,162,'Main',0,0,0),(101,163,'Sub Nav',0,0,0),(102,163,'Main',0,0,0),(103,164,'Sub Nav',0,0,0),(104,164,'Main',0,0,0),(105,164,'RightSidebar',0,0,0),(106,165,'Sub Nav',0,0,0),(107,165,'Main',0,0,0),(108,165,'RightSidebar',0,0,0),(109,166,'Sub Nav',0,0,0),(110,166,'Main',0,0,0),(111,166,'RightSidebar',0,0,0),(112,167,'Sub Nav',0,0,0),(113,167,'Main',0,0,0),(114,167,'LeftSidebar',0,0,0),(115,167,'RightSidebar',0,0,0),(116,168,'Sub Nav',0,0,0),(117,168,'Main',0,0,0),(118,168,'LeftSidebar',0,0,0),(119,168,'RightSidebar',0,0,0),(120,169,'Sub Nav',0,0,0),(121,169,'Main',0,0,0),(122,169,'LeftSidebar',0,0,0),(123,169,'RightSidebar',0,0,0),(124,170,'Sub Nav',0,0,0),(125,170,'Main',0,0,0),(126,170,'RightSidebar',0,0,0),(127,171,'Sub Nav',0,0,0),(128,171,'Main',0,0,0),(129,171,'RightSidebar',0,0,0),(130,172,'Sub Nav',0,0,0),(131,172,'Main',0,0,0),(132,172,'RightSidebar',0,0,0),(133,173,'Sub Nav',0,0,0),(134,173,'Main',0,0,0),(135,173,'RightSidebar',0,0,0),(136,174,'Sub Nav',0,0,0),(137,174,'Main',0,0,0),(138,174,'RightSidebar',0,0,0),(139,175,'Sub Nav',0,0,0),(140,175,'Main',0,0,0),(141,175,'RightSidebar',0,0,0),(142,176,'Sub Nav',0,0,0),(143,176,'Main',0,0,0),(144,176,'RightSidebar',0,0,0),(145,177,'Sub Nav',0,0,0),(146,177,'Main',0,0,0),(147,177,'RightSidebar',0,0,0),(148,178,'Sub Nav',0,0,0),(149,178,'Main',0,0,0),(150,178,'RightSidebar',0,0,0),(151,179,'Sub Nav',0,0,0),(152,179,'Main',0,0,0),(153,179,'RightSidebar',0,0,0),(154,180,'Sub Nav',0,0,0),(155,180,'Main',0,0,0),(156,180,'RightSidebar',0,0,0),(157,181,'Sub Nav',0,0,0),(158,181,'Main',0,0,0),(159,181,'RightSidebar',0,0,0),(160,182,'Sub Nav',0,0,0),(161,182,'Main',0,0,0),(162,182,'LeftSidebar',0,0,0),(163,182,'RightSidebar',0,0,0),(164,183,'Sub Nav',0,0,0),(165,183,'Main',0,0,0),(166,184,'Sub Nav',0,0,0),(167,184,'Main',0,0,0),(168,185,'Sub Nav',0,0,0),(169,185,'Main',0,0,0),(170,186,'Sub Nav',0,0,0),(171,186,'Main',0,0,0),(172,187,'Sub Nav',0,0,0),(173,187,'Main',0,0,0),(174,188,'Sub Nav',0,0,0),(175,188,'Main',0,0,0),(176,189,'Sub Nav',0,0,0),(177,189,'Main',0,0,0),(178,189,'RightSidebar',0,0,0),(179,190,'Sub Nav',0,0,0),(180,190,'Main',0,0,0),(181,190,'RightSidebar',0,0,0),(182,191,'Sub Nav',0,0,0),(183,191,'Main',0,0,0),(184,191,'RightSidebar',0,0,0),(185,192,'Sub Nav',0,0,0),(186,192,'Main',0,0,0),(187,192,'RightSidebar',0,0,0),(188,193,'Sub Nav',0,0,0),(189,193,'Main',0,0,0),(190,193,'RightSidebar',0,0,0),(191,194,'Sub Nav',0,0,0),(192,194,'Main',0,0,0),(193,194,'RightSidebar',0,0,0),(194,195,'Sub Nav',0,0,0),(195,195,'Main',0,0,0),(196,195,'RightSidebar',0,0,0),(197,196,'Sub Nav',0,0,0),(198,196,'Main',0,0,0),(199,196,'RightSidebar',0,0,0),(200,197,'Sub Nav',0,0,0),(201,197,'Main',0,0,0),(202,197,'RightSidebar',0,0,0),(203,198,'Sub Nav',0,0,0),(204,198,'Main',0,0,0),(205,198,'RightSidebar',0,0,0),(206,199,'Sub Nav',0,0,0),(207,199,'Main',0,0,0),(208,199,'RightSidebar',0,0,0),(209,200,'Sub Nav',0,0,0),(210,200,'Main',0,0,0),(211,200,'RightSidebar',0,0,0),(212,201,'Sub Nav',0,0,0),(213,201,'Main',0,0,0),(214,201,'RightSidebar',0,0,0),(215,202,'Sub Nav',0,0,0),(216,202,'Main',0,0,0),(217,202,'RightSidebar',0,0,0),(218,203,'Sub Nav',0,0,0),(219,203,'Main',0,0,0),(220,203,'RightSidebar',0,0,0),(221,204,'Sub Nav',0,0,0),(222,204,'Main',0,0,0),(223,204,'RightSidebar',0,0,0),(224,205,'Sub Nav',0,0,0),(225,205,'Main',0,0,0),(226,205,'RightSidebar',0,0,0),(227,162,'Header Nav',0,0,1),(228,162,'Footer',0,0,1),(229,187,'Header Nav',0,0,1),(230,187,'Footer',0,0,1),(231,163,'Header Nav',0,0,1),(232,163,'Footer',0,0,1),(233,164,'Header Nav',0,0,1),(234,164,'Footer',0,0,1),(235,179,'Header Nav',0,0,1),(236,179,'Footer',0,0,1),(237,165,'Header Nav',0,0,1),(238,165,'Footer',0,0,1),(239,166,'Header Nav',0,0,1),(240,166,'Footer',0,0,1),(241,167,'Header Nav',0,0,1),(242,167,'Footer',0,0,1),(243,183,'Header Nav',0,0,1),(244,183,'Footer',0,0,1),(245,1,'Header Alt Nav',0,0,1),(246,207,'Main',0,0,0),(247,1,'Company Logo',0,0,1),(248,208,'Main',0,0,0),(249,163,'Company Logo',0,0,1),(250,163,'Header Alt Nav',0,0,1),(251,165,'Company Logo',0,0,1),(252,165,'Header Alt Nav',0,0,1),(253,164,'Company Logo',0,0,1),(254,164,'Header Alt Nav',0,0,1),(255,162,'Company Logo',0,0,1),(256,162,'Header Alt Nav',0,0,1),(257,183,'Company Logo',0,0,1),(258,183,'Header Alt Nav',0,0,1),(259,190,'Company Logo',0,0,1),(260,190,'Header Alt Nav',0,0,1),(261,190,'Header Nav',0,0,1),(262,190,'Footer',0,0,1),(263,167,'Company Logo',0,0,1),(264,167,'Header Alt Nav',0,0,1),(265,188,'Company Logo',0,0,1),(266,188,'Header Alt Nav',0,0,1),(267,188,'Header Nav',0,0,1),(268,188,'Footer',0,0,1),(269,197,'Company Logo',0,0,1),(270,197,'Header Alt Nav',0,0,1),(271,197,'Header Nav',0,0,1),(272,197,'Footer',0,0,1),(273,187,'Company Logo',0,0,1),(274,187,'Header Alt Nav',0,0,1),(275,198,'Company Logo',0,0,1),(276,198,'Header Alt Nav',0,0,1),(277,198,'Header Nav',0,0,1),(278,198,'Footer',0,0,1),(279,201,'Company Logo',0,0,1),(280,201,'Header Alt Nav',0,0,1),(281,201,'Header Nav',0,0,1),(282,201,'Footer',0,0,1),(283,166,'Company Logo',0,0,1),(284,166,'Header Alt Nav',0,0,1),(285,200,'Company Logo',0,0,1),(286,200,'Header Alt Nav',0,0,1),(287,200,'Header Nav',0,0,1),(288,200,'Footer',0,0,1),(289,170,'Company Logo',0,0,1),(290,170,'Header Alt Nav',0,0,1),(291,170,'Header Nav',0,0,1),(292,170,'Footer',0,0,1),(293,171,'Company Logo',0,0,1),(294,171,'Header Alt Nav',0,0,1),(295,171,'Header Nav',0,0,1),(296,171,'Footer',0,0,1),(297,1,'Main News',0,0,0),(298,189,'Company Logo',0,0,1),(299,189,'Header Alt Nav',0,0,1),(300,189,'Header Nav',0,0,1),(301,189,'Footer',0,0,1),(302,209,'Sub Nav',0,0,0),(303,209,'Main',0,0,0),(304,209,'Company Logo',0,0,1),(305,209,'Header Alt Nav',0,0,1),(306,209,'Header Nav',0,0,1),(307,209,'Footer',0,0,1),(308,162,'Header Banner',0,0,0),(309,187,'Header Banner',0,0,0),(310,209,'Header Banner',0,0,0),(311,168,'Company Logo',0,0,1),(312,168,'Header Alt Nav',0,0,1),(313,168,'Header Nav',0,0,1),(314,168,'Footer',0,0,1),(315,169,'Company Logo',0,0,1),(316,169,'Header Alt Nav',0,0,1),(317,169,'Header Nav',0,0,1),(318,169,'Footer',0,0,1),(319,175,'Company Logo',0,0,1),(320,175,'Header Alt Nav',0,0,1),(321,175,'Header Nav',0,0,1),(322,175,'Footer',0,0,1),(323,179,'Company Logo',0,0,1),(324,179,'Header Alt Nav',0,0,1),(325,184,'Company Logo',0,0,1),(326,184,'Header Alt Nav',0,0,1),(327,184,'Header Nav',0,0,1),(328,184,'Footer',0,0,1),(329,189,'Header Banner',0,0,0),(330,162,'Product Title',0,0,0),(331,162,'Product Images',0,0,0),(332,162,'Product Description',0,0,0),(333,162,'RightSidebar',0,0,0),(334,209,'Product Title',0,0,0),(335,209,'Product Images',0,0,0),(336,209,'Product Description',0,0,0),(337,209,'RightSidebar',0,0,0),(338,209,'Product More Info',0,0,0),(339,162,'Product More Info',0,0,0),(340,211,'Sub Nav',0,0,0),(341,211,'Main',0,0,0),(342,211,'Company Logo',0,0,1),(343,211,'Header Alt Nav',0,0,1),(344,211,'Header Nav',0,0,1),(345,211,'Footer',0,0,1),(346,211,'Header Banner',0,0,0),(347,177,'Company Logo',0,0,1),(348,177,'Header Alt Nav',0,0,1),(349,177,'Header Nav',0,0,1),(350,177,'Footer',0,0,1),(351,186,'Company Logo',0,0,1),(352,186,'Header Alt Nav',0,0,1),(353,186,'Header Nav',0,0,1),(354,186,'Footer',0,0,1),(355,176,'Company Logo',0,0,1),(356,176,'Header Alt Nav',0,0,1),(357,176,'Header Nav',0,0,1),(358,176,'Footer',0,0,1),(359,203,'Company Logo',0,0,1),(360,203,'Header Alt Nav',0,0,1),(361,203,'Header Nav',0,0,1),(362,203,'Footer',0,0,1),(363,212,'Sub Nav',0,0,0),(364,212,'Main',0,0,0),(365,212,'RightSidebar',0,0,0),(366,216,'Sub Nav',0,0,0),(367,216,'Main',0,0,0),(368,216,'RightSidebar',0,0,0),(369,217,'Sub Nav',0,0,0),(370,217,'Main',0,0,0),(371,217,'RightSidebar',0,0,0),(372,218,'Sub Nav',0,0,0),(373,218,'Main',0,0,0),(374,218,'RightSidebar',0,0,0),(375,166,'Header Banner',0,0,0),(376,219,'Sub Nav',0,0,0),(377,219,'Main',0,0,0),(378,219,'RightSidebar',0,0,0),(379,188,'Header Banner',0,0,0),(380,202,'Company Logo',0,0,1),(381,202,'Header Alt Nav',0,0,1),(382,202,'Header Nav',0,0,1),(383,202,'Footer',0,0,1),(384,202,'Header Banner',0,0,0),(385,201,'Header Banner',0,0,0),(386,203,'Header Banner',0,0,0),(387,204,'Company Logo',0,0,1),(388,204,'Header Alt Nav',0,0,1),(389,204,'Header Nav',0,0,1),(390,204,'Footer',0,0,1),(391,205,'Company Logo',0,0,1),(392,205,'Header Alt Nav',0,0,1),(393,205,'Header Nav',0,0,1),(394,205,'Footer',0,0,1),(395,205,'Header Banner',0,0,0),(396,199,'Company Logo',0,0,1),(397,199,'Header Alt Nav',0,0,1),(398,199,'Header Nav',0,0,1),(399,199,'Footer',0,0,1),(400,199,'Header Banner',0,0,0),(401,219,'Company Logo',0,0,1),(402,219,'Header Alt Nav',0,0,1),(403,219,'Header Nav',0,0,1),(404,219,'Footer',0,0,1),(405,219,'Header Banner',0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,1,2,1,0),(4,'exclude_nav','Exclude From Nav',1,1,0,0,1,3,1,0),(5,'exclude_page_list','Exclude From Page List',1,1,0,0,1,3,1,0),(6,'header_extra_content','Header Extra Content',1,1,0,0,1,2,1,0),(7,'exclude_search_index','Exclude From Search Index',1,1,0,0,1,3,1,0),(8,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,1,3,1,0),(9,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,1,3,2,0),(10,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,1,3,2,0),(11,'width','Width',1,1,0,0,1,6,3,0),(12,'height','Height',1,1,0,0,1,6,3,0),(13,'exclude_dropdown_nav','Exclude From Dropdown Navigation',0,0,0,0,1,3,1,0);
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
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,1,4),(7,2,3),(8,2,4),(13,2,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2012-08-22 16:38:22',1,2),(2,3,'2012-08-22 16:38:22',1,2),(3,3,'2012-08-22 16:38:22',1,2),(4,3,'2012-08-22 16:38:22',1,2),(5,3,'2012-08-22 16:38:22',1,2),(6,3,'2012-08-22 16:38:22',1,2),(7,3,'2012-08-22 16:38:22',1,2),(8,3,'2012-08-22 16:38:22',1,2),(9,3,'2012-08-22 16:38:22',1,2),(10,3,'2012-08-22 16:38:22',1,2),(11,4,'2012-08-22 16:38:22',1,3),(12,3,'2012-08-22 16:38:22',1,2),(13,3,'2012-08-22 16:38:22',1,2),(14,3,'2012-08-22 16:38:22',1,2),(15,3,'2012-08-22 16:38:22',1,2),(16,3,'2012-08-22 16:38:22',1,2),(17,3,'2012-08-22 16:38:22',1,2),(18,3,'2012-08-22 16:38:22',1,2),(19,3,'2012-08-22 16:38:22',1,2),(20,3,'2012-08-22 16:38:22',1,2),(21,3,'2012-08-22 16:38:22',1,2),(22,3,'2012-08-22 16:38:22',1,2),(23,3,'2012-08-22 16:38:22',1,2),(24,3,'2012-08-22 16:38:22',1,2),(25,3,'2012-08-22 16:38:22',1,2),(26,3,'2012-08-22 16:38:22',1,2),(27,3,'2012-08-22 16:38:22',1,2),(28,3,'2012-08-22 16:38:23',1,2),(29,4,'2012-08-22 16:38:23',1,3),(30,7,'2012-08-22 16:38:23',1,3),(31,4,'2012-08-22 16:38:23',1,3),(32,4,'2012-08-22 16:38:23',1,3),(33,3,'2012-08-22 16:38:23',1,2),(34,3,'2012-08-22 16:38:23',1,2),(35,3,'2012-08-22 16:38:23',1,2),(36,3,'2012-08-22 16:38:23',1,2),(37,3,'2012-08-22 16:38:23',1,2),(38,4,'2012-08-22 16:38:23',1,3),(39,3,'2012-08-22 16:38:23',1,2),(40,3,'2012-08-22 16:38:23',1,2),(41,3,'2012-08-22 16:38:23',1,2),(42,3,'2012-08-22 16:38:23',1,2),(43,3,'2012-08-22 16:38:23',1,2),(44,3,'2012-08-22 16:38:23',1,2),(45,3,'2012-08-22 16:38:23',1,2),(46,3,'2012-08-22 16:38:23',1,2),(47,3,'2012-08-22 16:38:23',1,2),(48,3,'2012-08-22 16:38:23',1,2),(49,3,'2012-08-22 16:38:23',1,2),(50,3,'2012-08-22 16:38:23',1,2),(51,3,'2012-08-22 16:38:23',1,2),(52,3,'2012-08-22 16:38:23',1,2),(53,3,'2012-08-22 16:38:23',1,2),(54,3,'2012-08-22 16:38:23',1,2),(55,3,'2012-08-22 16:38:23',1,2),(56,3,'2012-08-22 16:38:23',1,2),(57,3,'2012-08-22 16:38:23',1,2),(58,3,'2012-08-22 16:38:23',1,2),(59,3,'2012-08-22 16:38:24',1,2),(60,3,'2012-08-22 16:38:24',1,2),(61,3,'2012-08-22 16:38:24',1,2),(62,3,'2012-08-22 16:38:24',1,2),(63,3,'2012-08-22 16:38:24',1,2),(64,3,'2012-08-22 16:38:24',1,2),(65,3,'2012-08-22 16:38:24',1,2),(66,3,'2012-08-22 16:38:24',1,2),(67,7,'2012-08-22 16:38:24',1,3),(68,3,'2012-08-22 16:38:24',1,2),(69,3,'2012-08-22 16:38:24',1,2),(70,3,'2012-08-22 16:38:24',1,2),(71,3,'2012-08-22 16:38:24',1,2),(72,3,'2012-08-22 16:38:24',1,2),(73,4,'2012-08-22 16:38:24',1,3),(74,4,'2012-08-22 16:38:25',1,3),(75,7,'2012-08-22 16:38:25',1,3),(76,11,'2012-09-07 14:23:28',1,6),(77,12,'2012-09-07 14:23:28',1,6),(78,11,'2012-09-10 18:03:41',1,6),(79,12,'2012-09-10 18:03:41',1,6),(80,11,'2012-09-11 18:18:39',1,6),(81,12,'2012-09-11 18:18:39',1,6),(82,11,'2012-09-11 19:56:37',1,6),(83,12,'2012-09-11 19:56:37',1,6),(84,11,'2012-09-11 19:56:47',1,6),(85,12,'2012-09-11 19:56:47',1,6),(86,4,'2012-09-11 23:51:03',1,3),(87,4,'2012-09-11 23:51:17',1,3),(88,11,'2012-09-12 17:43:27',1,6),(89,12,'2012-09-12 17:43:27',1,6),(90,11,'2012-09-12 17:50:54',1,6),(91,12,'2012-09-12 17:50:54',1,6),(92,11,'2012-09-12 17:52:41',1,6),(93,12,'2012-09-12 17:52:41',1,6),(94,11,'2012-09-12 18:14:22',1,6),(95,12,'2012-09-12 18:14:22',1,6),(96,4,'2012-09-12 20:51:12',1,3),(97,11,'2012-09-12 13:44:38',1,6),(98,12,'2012-09-12 13:44:38',1,6),(99,4,'2012-09-19 21:06:48',1,3),(100,13,'2012-09-19 21:06:48',1,3),(101,4,'2012-09-19 21:07:04',1,3),(102,13,'2012-09-19 21:07:04',1,3),(103,4,'2012-09-19 21:07:22',1,3),(104,13,'2012-09-19 21:07:22',1,3),(105,4,'2012-09-19 22:08:49',1,3),(106,5,'2012-09-19 22:08:49',1,3),(107,13,'2012-09-19 22:08:49',1,3),(108,4,'2012-09-19 23:18:58',1,3),(109,13,'2012-09-19 23:25:52',1,3),(110,4,'2012-09-26 18:38:32',1,3),(111,13,'2012-09-26 18:38:32',1,3),(112,4,'2012-09-26 18:39:27',1,3),(113,13,'2012-09-26 18:39:27',1,3),(114,4,'2012-09-26 18:40:04',1,3),(115,13,'2012-09-26 18:40:04',1,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,24,15,'DUPLICATE'),(2,25,14,'DUPLICATE'),(3,26,25,'DUPLICATE'),(4,55,54,'DUPLICATE'),(5,56,55,'DUPLICATE'),(6,57,22,'DUPLICATE'),(7,58,21,'DUPLICATE'),(8,61,60,'DUPLICATE'),(9,63,61,'DUPLICATE'),(10,64,63,'DUPLICATE'),(11,65,16,'DUPLICATE'),(12,66,65,'DUPLICATE'),(13,67,66,'DUPLICATE'),(14,72,70,'DUPLICATE'),(15,73,71,'DUPLICATE'),(16,75,67,'DUPLICATE'),(17,76,75,'DUPLICATE'),(18,77,76,'DUPLICATE'),(19,79,78,'DUPLICATE'),(20,81,31,'DUPLICATE'),(22,83,31,'DUPLICATE'),(23,84,31,'DUPLICATE'),(24,85,31,'DUPLICATE'),(25,86,31,'DUPLICATE'),(26,89,88,'DUPLICATE'),(27,90,89,'DUPLICATE'),(28,91,90,'DUPLICATE'),(29,93,64,'DUPLICATE'),(30,94,38,'DUPLICATE'),(31,95,79,'DUPLICATE'),(32,100,56,'DUPLICATE'),(33,111,109,'DUPLICATE'),(34,113,111,'DUPLICATE'),(35,115,114,'DUPLICATE'),(36,116,115,'DUPLICATE'),(37,117,74,'DUPLICATE'),(38,118,101,'DUPLICATE'),(39,120,80,'DUPLICATE'),(40,122,121,'DUPLICATE'),(41,123,105,'DUPLICATE'),(42,124,26,'DUPLICATE'),(43,125,100,'DUPLICATE'),(44,128,39,'DUPLICATE'),(45,129,127,'DUPLICATE'),(46,131,31,'DUPLICATE'),(47,133,31,'DUPLICATE'),(48,134,31,'DUPLICATE'),(49,135,133,'DUPLICATE'),(50,136,134,'DUPLICATE'),(51,137,135,'DUPLICATE'),(52,138,31,'DUPLICATE'),(53,139,31,'DUPLICATE'),(54,140,31,'DUPLICATE');
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
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,580,380,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,400,200,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,350,460,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,1,0,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,400,210,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(2,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(3,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(4,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(5,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',9,1),(6,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',6,1),(7,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',7,1),(8,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',5,1),(9,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',5,1),(10,'','2012-08-22 16:38:24','2012-08-22 16:38:24',NULL,'1',4,1),(11,'','2012-08-22 16:38:24','2012-08-22 16:38:25',NULL,'1',3,1),(12,'','2012-08-22 16:38:25','2012-08-22 16:38:25',NULL,'1',5,1),(13,NULL,'2012-08-30 12:46:17','2012-08-30 12:46:17',NULL,'1',8,1),(14,NULL,'2012-08-30 12:50:01','2012-08-30 12:50:01',NULL,'1',8,1),(15,NULL,'2012-08-30 12:50:18','2012-08-30 12:50:18',NULL,'1',8,1),(16,NULL,'2012-08-30 12:53:49','2012-08-30 12:53:49',NULL,'1',8,1),(17,NULL,'2012-08-30 12:54:09','2012-08-30 12:54:09',NULL,'1',2,1),(18,NULL,'2012-08-30 12:54:33','2012-08-30 12:54:33',NULL,'1',2,1),(19,NULL,'2012-08-30 12:54:56','2012-08-30 12:54:56',NULL,'1',2,1),(20,NULL,'2012-08-30 13:37:02','2012-08-30 13:37:02',NULL,'1',9,1),(21,NULL,'2012-08-30 13:38:36','2012-08-30 14:00:21',NULL,'1',9,1),(22,NULL,'2012-08-30 14:00:47','2012-08-30 14:00:47',NULL,'1',9,1),(23,NULL,'2012-08-30 14:03:13','2012-08-30 14:03:13',NULL,'1',2,1),(24,'','2012-08-30 14:11:39','2012-08-30 14:11:39','breadcrumb.php','1',8,1),(25,'','2012-08-30 14:14:39','2012-08-30 14:14:49','header_menu.php','1',8,1),(26,'','2012-08-30 14:17:12','2012-08-30 14:17:12','','1',8,1),(27,NULL,'2012-08-30 14:18:35','2012-08-30 14:18:35',NULL,'1',9,1),(28,NULL,'2012-08-30 14:19:00','2012-08-30 14:19:00',NULL,'1',9,1),(29,NULL,'2012-08-30 14:19:22','2012-08-30 14:19:22',NULL,'1',9,1),(30,NULL,'2012-08-30 14:20:05','2012-08-30 14:20:05',NULL,'1',9,1),(31,NULL,'2012-08-30 14:20:26','2012-08-30 14:20:26',NULL,'1',9,1),(32,NULL,'2012-08-30 14:20:46','2012-08-30 14:20:46',NULL,'1',9,1),(33,NULL,'2012-08-30 14:21:06','2012-08-30 14:21:06',NULL,'1',9,1),(34,NULL,'2012-08-30 14:26:28','2012-08-30 14:26:28',NULL,'1',9,1),(38,NULL,'2012-08-30 14:33:30','2012-08-30 14:33:47',NULL,'1',9,1),(39,NULL,'2012-08-30 14:33:58','2012-08-30 14:33:58',NULL,'1',9,1),(40,NULL,'2012-08-30 14:34:36','2012-08-30 14:37:24',NULL,'1',9,1),(41,NULL,'2012-08-30 14:39:54','2012-08-30 14:39:54',NULL,'1',1,1),(42,NULL,'2012-08-30 14:40:01','2012-08-30 14:40:01',NULL,'1',1,1),(43,NULL,'2012-08-30 14:40:16','2012-08-30 14:40:16',NULL,'1',1,1),(44,NULL,'2012-08-30 14:42:15','2012-08-30 14:42:15',NULL,'1',1,1),(45,NULL,'2012-08-30 14:42:20','2012-08-30 14:42:20',NULL,'1',1,1),(46,NULL,'2012-08-30 14:42:25','2012-08-30 14:42:25',NULL,'1',1,1),(47,NULL,'2012-08-30 14:42:32','2012-08-30 14:42:32',NULL,'1',1,1),(48,NULL,'2012-08-30 14:42:49','2012-08-30 14:43:50',NULL,'1',9,1),(50,NULL,'2012-08-30 14:44:51','2012-08-30 14:44:51',NULL,'1',9,1),(51,NULL,'2012-08-30 14:44:57','2012-08-30 14:44:57',NULL,'1',1,1),(52,NULL,'2012-08-30 14:45:08','2012-08-30 14:45:08',NULL,'1',9,1),(53,NULL,'2012-08-30 14:45:25','2012-08-30 14:45:25',NULL,'1',9,1),(54,NULL,'2012-09-04 15:11:35','2012-09-04 15:11:35',NULL,'1',8,1),(55,NULL,'2012-09-04 15:23:24','2012-09-04 15:23:41',NULL,'1',8,1),(56,NULL,'2012-09-04 15:24:24','2012-09-04 15:24:24',NULL,'1',8,1),(57,NULL,'2012-09-05 10:15:03','2012-09-05 10:15:03',NULL,'1',9,1),(58,NULL,'2012-09-05 10:15:12','2012-09-05 10:15:12',NULL,'1',9,1),(59,NULL,'2012-09-05 10:23:38','2012-09-05 10:23:38',NULL,'1',22,1),(60,NULL,'2012-09-05 10:32:13','2012-09-05 10:32:13',NULL,'1',9,1),(61,NULL,'2012-09-05 10:33:13','2012-09-05 10:34:02',NULL,'1',9,1),(62,NULL,'2012-09-05 10:59:54','2012-09-05 10:59:54',NULL,'1',17,1),(63,NULL,'2012-09-05 11:03:44','2012-09-05 11:03:44',NULL,'1',9,1),(64,NULL,'2012-09-05 11:16:54','2012-09-05 11:16:54',NULL,'1',9,1),(65,NULL,'2012-09-05 11:29:00','2012-09-05 11:29:01',NULL,'1',8,1),(66,'','2012-09-05 11:32:25','2012-09-05 11:32:25','dropdown.php','1',8,1),(67,'','2012-09-05 11:37:26','2012-09-05 11:37:26','dropdown.php','1',8,1),(68,NULL,'2012-09-05 12:24:25','2012-09-05 12:24:25',NULL,'1',17,1),(69,NULL,'2012-09-05 12:25:06','2012-09-05 12:25:06',NULL,'1',1,1),(70,NULL,'2012-09-05 12:25:12','2012-09-05 12:25:12',NULL,'1',1,1),(71,NULL,'2012-09-05 12:25:16','2012-09-05 12:25:16',NULL,'1',1,1),(72,NULL,'2012-09-05 12:26:12','2012-09-05 12:26:12',NULL,'1',1,1),(73,NULL,'2012-09-05 12:26:23','2012-09-05 12:26:23',NULL,'1',1,1),(74,NULL,'2012-09-05 12:55:21','2012-09-05 12:59:33',NULL,'1',9,1),(75,'','2012-09-06 17:17:42','2012-09-06 17:17:42','dropdown.php','1',8,1),(76,'','2012-09-06 17:18:21','2012-09-06 17:18:21','dropdown.php','1',8,1),(77,'','2012-09-06 17:18:59','2012-09-06 17:19:18','dropdown.php','1',8,1),(78,NULL,'2012-09-07 14:25:18','2012-09-07 14:25:18',NULL,'1',18,1),(79,NULL,'2012-09-10 17:47:50','2012-09-10 17:47:50',NULL,'1',18,1),(80,NULL,'2012-09-10 18:04:16','2012-09-10 18:04:29',NULL,'1',18,1),(81,NULL,'2012-09-10 18:30:56','2012-09-10 18:30:56',NULL,'1',9,1),(83,NULL,'2012-09-10 18:55:49','2012-09-10 18:56:02',NULL,'1',9,1),(84,NULL,'2012-09-10 18:56:44','2012-09-10 18:56:44',NULL,'1',9,1),(85,NULL,'2012-09-10 18:57:43','2012-09-10 18:57:43',NULL,'1',9,1),(86,NULL,'2012-09-10 18:58:53','2012-09-10 18:58:54',NULL,'1',9,1),(87,NULL,'2012-09-10 22:05:10','2012-09-10 22:05:10',NULL,'1',9,1),(88,NULL,'2012-09-10 22:14:55','2012-09-10 22:15:25',NULL,'1',17,1),(89,NULL,'2012-09-10 22:15:52','2012-09-10 22:16:05',NULL,'1',17,1),(90,NULL,'2012-09-10 22:16:42','2012-09-10 22:16:57',NULL,'1',17,1),(91,NULL,'2012-09-10 22:18:41','2012-09-10 22:18:41',NULL,'1',17,1),(93,NULL,'2012-09-10 22:40:57','2012-09-10 22:40:57',NULL,'1',9,1),(94,NULL,'2012-09-11 18:18:47','2012-09-11 18:18:47',NULL,'1',9,1),(95,NULL,'2012-09-11 19:57:07','2012-09-11 19:57:07',NULL,'1',18,1),(96,NULL,'2012-09-11 19:58:32','2012-09-11 19:58:32',NULL,'1',18,1),(98,NULL,'2012-09-11 20:11:49','2012-09-11 20:11:49',NULL,'1',18,1),(99,NULL,'2012-09-11 20:37:13','2012-09-11 20:37:13',NULL,'1',18,1),(100,NULL,'2012-09-11 21:26:35','2012-09-11 21:26:35',NULL,'1',8,1),(101,NULL,'2012-09-12 16:49:44','2012-09-12 16:49:44',NULL,'1',22,1),(102,NULL,'2012-09-12 17:11:05','2012-09-12 17:11:05',NULL,'1',20,1),(103,NULL,'2012-09-12 17:11:38','2012-09-12 17:11:38',NULL,'1',20,1),(104,NULL,'2012-09-12 17:15:13','2012-09-12 17:15:13',NULL,'1',22,1),(105,NULL,'2012-09-12 17:41:47','2012-09-12 17:41:47',NULL,'1',22,1),(106,NULL,'2012-09-12 17:42:30','2012-09-12 17:42:30',NULL,'1',9,1),(107,NULL,'2012-09-12 17:43:04','2012-09-12 17:43:12',NULL,'1',9,1),(108,NULL,'2012-09-12 17:43:33','2012-09-12 17:43:33',NULL,'1',18,1),(109,NULL,'2012-09-12 17:43:51','2012-09-12 17:51:07',NULL,'1',9,1),(110,NULL,'2012-09-12 17:52:48','2012-09-12 17:52:48',NULL,'1',18,1),(111,NULL,'2012-09-12 18:00:39','2012-09-12 18:00:39',NULL,'1',9,1),(112,NULL,'2012-09-12 18:00:52','2012-09-12 18:00:52',NULL,'1',9,1),(113,NULL,'2012-09-12 18:11:00','2012-09-12 18:11:00',NULL,'1',9,1),(114,NULL,'2012-09-12 18:14:29','2012-09-12 18:14:29',NULL,'1',18,1),(115,NULL,'2012-09-12 18:20:37','2012-09-12 18:20:37',NULL,'1',18,1),(116,NULL,'2012-09-12 18:27:20','2012-09-12 18:27:20',NULL,'1',18,1),(117,NULL,'2012-09-12 18:49:18','2012-09-12 18:49:18',NULL,'1',9,1),(118,NULL,'2012-09-12 20:52:55','2012-09-12 20:53:01',NULL,'1',22,1),(119,NULL,'2012-09-12 20:55:31','2012-09-12 20:55:31',NULL,'1',22,1),(120,NULL,'2012-09-12 13:44:53','2012-09-12 13:44:53',NULL,'1',18,1),(121,NULL,'2012-09-12 13:56:03','2012-09-12 13:56:03',NULL,'1',8,1),(122,'','2012-09-12 13:56:57','2012-09-12 13:56:57','product_tabs.php','1',8,1),(123,NULL,'2012-09-19 20:25:21','2012-09-19 20:25:21',NULL,'1',22,1),(124,'','2012-09-19 21:10:37','2012-09-19 21:10:37','product_tabs.php','1',8,1),(125,'','2012-09-19 22:04:08','2012-09-19 22:04:08','footer_menu.php','1',8,1),(126,NULL,'2012-09-20 00:19:54','2012-09-20 00:19:54',NULL,'1',22,1),(127,NULL,'2012-09-20 00:20:24','2012-09-20 00:21:05',NULL,'1',9,1),(128,NULL,'2012-09-20 00:20:54','2012-09-20 00:20:54',NULL,'1',9,1),(129,NULL,'2012-09-20 00:25:56','2012-09-20 00:25:56',NULL,'1',9,1),(130,NULL,'2012-09-28 17:02:41','2012-09-28 17:02:41',NULL,'1',20,1),(131,NULL,'2012-09-28 17:04:28','2012-09-28 17:04:28',NULL,'1',9,1),(132,'','2012-09-28 17:05:31','2012-09-28 17:05:48','product_tabs.php','1',8,1),(133,NULL,'2012-09-28 17:09:47','2012-09-28 17:09:48',NULL,'1',9,1),(134,NULL,'2012-09-28 17:11:06','2012-09-28 17:12:18',NULL,'1',9,1),(135,NULL,'2012-09-28 17:13:00','2012-09-28 17:13:18',NULL,'1',9,1),(136,NULL,'2012-09-28 17:13:49','2012-09-28 17:13:49',NULL,'1',9,1),(137,NULL,'2012-09-28 17:14:19','2012-09-28 17:14:19',NULL,'1',9,1),(138,NULL,'2012-09-28 17:16:02','2012-09-28 17:16:33',NULL,'1',9,1),(139,NULL,'2012-09-28 17:20:18','2012-09-28 17:20:18',NULL,'1',9,1),(140,NULL,'2012-09-28 17:26:49','2012-09-28 17:26:49',NULL,'1',9,1);
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
INSERT INTO `CollectionAttributeValues` VALUES (1,36,4,105),(1,36,5,106),(1,36,13,107),(3,1,3,1),(4,1,3,2),(5,1,3,3),(6,1,3,4),(7,1,3,5),(8,1,3,6),(9,1,3,7),(11,1,3,8),(12,1,3,9),(13,1,3,10),(14,1,4,11),(15,1,3,12),(16,1,3,13),(17,1,3,14),(18,1,3,15),(19,1,3,16),(20,1,3,17),(21,1,3,18),(22,1,3,19),(23,1,3,20),(24,1,3,21),(25,1,3,22),(26,1,3,23),(27,1,3,24),(28,1,3,25),(30,1,3,26),(31,1,3,27),(33,1,3,28),(37,1,4,29),(37,1,7,30),(39,1,4,31),(40,1,4,32),(41,1,3,33),(42,1,3,34),(43,1,3,35),(44,1,3,36),(45,1,3,37),(46,1,4,38),(48,1,3,39),(49,1,3,40),(50,1,3,41),(51,1,3,42),(52,1,3,43),(53,1,3,44),(55,1,3,45),(56,1,3,46),(57,1,3,47),(58,1,3,48),(60,1,3,49),(61,1,3,50),(62,1,3,51),(64,1,3,52),(65,1,3,53),(66,1,3,54),(67,1,3,55),(68,1,3,56),(69,1,3,57),(70,1,3,58),(71,1,3,59),(73,1,3,60),(74,1,3,61),(75,1,3,62),(76,1,3,63),(77,1,3,64),(78,1,3,65),(79,1,3,66),(82,1,7,67),(83,1,3,68),(84,1,3,69),(85,1,3,70),(86,1,3,71),(89,1,3,72),(95,1,4,74),(95,1,7,75),(96,1,4,73),(168,2,4,86),(168,3,4,99),(168,3,13,100),(168,4,4,110),(168,4,13,111),(168,5,4,112),(168,5,13,113),(168,6,4,114),(168,6,13,115),(169,2,4,87),(169,3,4,101),(169,3,13,102),(170,3,4,108),(211,2,4,96),(211,3,4,96),(211,4,4,96),(211,5,4,103),(211,5,13,104),(212,2,13,109);
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
  `ak_exclude_dropdown_nav` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,NULL,NULL,NULL,1,1,NULL,0,0,1),(3,NULL,NULL,'blog, blogging',0,0,NULL,0,0,0),(4,NULL,NULL,'new blog, write blog',0,0,NULL,0,0,0),(5,NULL,NULL,'blog drafts,composer',0,0,NULL,0,0,0),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0,0),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0,0),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0,0),(9,NULL,NULL,'find page, search page, search, find',0,0,NULL,0,0,0),(11,NULL,NULL,'files, add file, delete file, copy, move, alias',0,0,NULL,0,0,0),(12,NULL,NULL,'file, file attributes',0,0,NULL,0,0,0),(13,NULL,NULL,'files, category, categories',0,0,NULL,0,0,0),(14,NULL,NULL,NULL,1,0,NULL,0,0,0),(15,NULL,NULL,'users, groups, people',0,0,NULL,0,0,0),(16,NULL,NULL,'find, search, people',0,0,NULL,0,0,0),(17,NULL,NULL,'user, group, people',0,0,NULL,0,0,0),(18,NULL,NULL,'user attributes',0,0,NULL,0,0,0),(19,NULL,NULL,'new user',0,0,NULL,0,0,0),(20,NULL,NULL,'new user group, new group, group',0,0,NULL,0,0,0),(21,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0,0,NULL,0,0,0),(22,NULL,NULL,'hits, pageviews, visitors, activity',0,0,NULL,0,0,0),(23,NULL,NULL,'forms, questions',0,0,NULL,0,0,0),(24,NULL,NULL,'survey, questions, quiz',0,0,NULL,0,0,0),(25,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0,0,NULL,0,0,0),(26,NULL,NULL,'page types, themes, single pages',0,0,NULL,0,0,0),(27,NULL,NULL,'new theme, theme, active theme, change theme, template, css',0,0,NULL,0,0,0),(28,NULL,NULL,'add theme',0,0,NULL,0,0,0),(30,NULL,NULL,'custom theme, change theme, custom css, css',0,0,NULL,0,0,0),(31,NULL,NULL,'page type defaults, global block, global area',0,0,NULL,0,0,0),(33,NULL,NULL,'page attributes',0,0,NULL,0,0,0),(37,NULL,NULL,NULL,1,0,NULL,1,0,0),(39,NULL,NULL,NULL,1,0,NULL,0,0,0),(40,NULL,NULL,NULL,1,0,NULL,0,0,0),(41,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',0,0,NULL,0,0,0),(42,NULL,NULL,'update, upgrade',0,0,NULL,0,0,0),(43,NULL,NULL,'concrete5.org, my account, marketplace',0,0,NULL,0,0,0),(44,NULL,NULL,'buy theme, new theme, marketplace, template',0,0,NULL,0,0,0),(45,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',0,0,NULL,0,0,0),(46,NULL,NULL,NULL,1,0,NULL,0,0,0),(48,NULL,NULL,'website name',0,0,NULL,0,0,0),(49,NULL,NULL,'logo, favicon, iphone',0,0,NULL,0,0,0),(50,NULL,NULL,'tinymce, content block, fonts, editor',0,0,NULL,0,0,0),(51,NULL,NULL,'translate, translation',0,0,NULL,0,0,0),(52,NULL,NULL,'timezone',0,0,NULL,0,0,0),(53,NULL,NULL,'interface, quick nav, dashboard background, background image',0,0,NULL,0,0,0),(55,NULL,NULL,'vanity, pretty url, seo',0,0,NULL,0,0,0),(56,NULL,NULL,'traffic, statistics, google analytics, quant',0,0,NULL,0,0,0),(57,NULL,NULL,'turn off statistics',0,0,NULL,0,0,0),(58,NULL,NULL,'configure search, site search, search option',0,0,NULL,0,0,0),(60,NULL,NULL,'cache option, change cache, turn on cache, turn off cache, no cache, page cache, caching',0,0,NULL,0,0,0),(61,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',0,0,NULL,0,0,0),(62,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',0,0,NULL,0,0,0),(64,NULL,NULL,'editors, hide site, offline, private, public',0,0,NULL,0,0,0),(65,NULL,NULL,'file options, file manager',0,0,NULL,0,0,0),(66,NULL,NULL,'security, files, media ',0,0,NULL,0,0,0),(67,NULL,NULL,'security, users, actions, administrator, admin',0,0,NULL,0,0,0),(68,NULL,NULL,'security, lock ip, lock out, block ip',0,0,NULL,0,0,0),(69,NULL,NULL,'security, registration',0,0,NULL,0,0,0),(70,NULL,NULL,'antispam, block spam, security',0,0,NULL,0,0,0),(71,NULL,NULL,'lock site, under construction',0,0,NULL,0,0,0),(73,NULL,NULL,'profile',0,0,NULL,0,0,0),(74,NULL,NULL,'member profile, member page,community',0,0,NULL,0,0,0),(75,NULL,NULL,'signup, new user, community',0,0,NULL,0,0,0),(76,NULL,NULL,'smtp, mail settings',0,0,NULL,0,0,0),(77,NULL,NULL,'email server, mail settings, mail configuration',0,0,NULL,0,0,0),(78,NULL,NULL,'email server, mail settings, mail configuration, private message, message system',0,0,NULL,0,0,0),(79,NULL,NULL,'attribute configuration',0,0,NULL,0,0,0),(82,NULL,NULL,NULL,0,0,NULL,1,0,0),(83,NULL,NULL,'overrides, system info, debug, support,help',0,0,NULL,0,0,0),(84,NULL,NULL,'errors,exceptions, develop, support, help',0,0,NULL,0,0,0),(85,NULL,NULL,'logs, email, error, exceptions',0,0,NULL,0,0,0),(86,NULL,NULL,'security, alternate storage, hide files',0,0,NULL,0,0,0),(89,NULL,NULL,'upgrade, new version',0,0,NULL,0,0,0),(95,NULL,NULL,NULL,1,0,NULL,1,0,0),(96,NULL,NULL,NULL,1,0,NULL,0,0,0),(111,NULL,NULL,NULL,0,0,NULL,0,0,0),(112,NULL,NULL,NULL,0,0,NULL,0,0,0),(113,NULL,NULL,NULL,0,0,NULL,0,0,0),(114,NULL,NULL,NULL,0,0,NULL,0,0,0),(115,NULL,NULL,NULL,0,0,NULL,0,0,0),(116,NULL,NULL,NULL,0,0,NULL,0,0,0),(117,NULL,NULL,NULL,0,0,NULL,0,0,0),(118,NULL,NULL,NULL,0,0,NULL,0,0,0),(119,NULL,NULL,NULL,0,0,NULL,0,0,0),(120,NULL,NULL,NULL,0,0,NULL,0,0,0),(121,NULL,NULL,NULL,0,0,NULL,0,0,0),(122,NULL,NULL,NULL,0,0,NULL,0,0,0),(123,NULL,NULL,NULL,0,0,NULL,0,0,0),(124,NULL,NULL,NULL,0,0,NULL,0,0,0),(125,NULL,NULL,NULL,0,0,NULL,0,0,0),(126,NULL,NULL,NULL,0,0,NULL,0,0,0),(127,NULL,NULL,NULL,0,0,NULL,0,0,0),(128,NULL,NULL,NULL,0,0,NULL,0,0,0),(129,NULL,NULL,NULL,0,0,NULL,0,0,0),(130,NULL,NULL,NULL,0,0,NULL,0,0,0),(131,NULL,NULL,NULL,0,0,NULL,0,0,0),(132,NULL,NULL,NULL,0,0,NULL,0,0,0),(133,NULL,NULL,NULL,0,0,NULL,0,0,0),(134,NULL,NULL,NULL,0,0,NULL,0,0,0),(135,NULL,NULL,NULL,0,0,NULL,0,0,0),(136,NULL,NULL,NULL,0,0,NULL,0,0,0),(137,NULL,NULL,NULL,0,0,NULL,0,0,0),(138,NULL,NULL,NULL,0,0,NULL,0,0,0),(139,NULL,NULL,NULL,0,0,NULL,0,0,0),(140,NULL,NULL,NULL,0,0,NULL,0,0,0),(141,NULL,NULL,NULL,0,0,NULL,0,0,0),(142,NULL,NULL,NULL,0,0,NULL,0,0,0),(144,NULL,NULL,NULL,0,0,NULL,0,0,0),(145,NULL,NULL,NULL,0,0,NULL,0,0,0),(146,NULL,NULL,NULL,0,0,NULL,0,0,0),(147,NULL,NULL,NULL,0,0,NULL,0,0,0),(148,NULL,NULL,NULL,0,0,NULL,0,0,0),(149,NULL,NULL,NULL,0,0,NULL,0,0,0),(150,NULL,NULL,NULL,0,0,NULL,0,0,0),(151,NULL,NULL,NULL,0,0,NULL,0,0,0),(152,NULL,NULL,NULL,0,0,NULL,0,0,0),(153,NULL,NULL,NULL,0,0,NULL,0,0,0),(154,NULL,NULL,NULL,0,0,NULL,0,0,0),(155,NULL,NULL,NULL,0,0,NULL,0,0,0),(156,NULL,NULL,NULL,0,0,NULL,0,0,0),(157,NULL,NULL,NULL,0,0,NULL,0,0,0),(158,NULL,NULL,NULL,0,0,NULL,0,0,0),(159,NULL,NULL,NULL,0,0,NULL,0,0,0),(160,NULL,NULL,NULL,0,0,NULL,0,0,0),(161,NULL,NULL,NULL,0,0,NULL,0,0,0),(162,NULL,NULL,NULL,0,0,NULL,0,0,0),(163,NULL,NULL,NULL,0,0,NULL,0,0,0),(164,NULL,NULL,NULL,0,0,NULL,0,0,0),(165,NULL,NULL,NULL,0,0,NULL,0,0,0),(166,NULL,NULL,NULL,0,0,NULL,0,0,0),(167,NULL,NULL,NULL,0,0,NULL,0,0,0),(168,NULL,NULL,NULL,0,0,NULL,0,0,1),(169,NULL,NULL,NULL,0,0,NULL,0,0,1),(170,NULL,NULL,NULL,1,0,NULL,0,0,0),(171,NULL,NULL,NULL,0,0,NULL,0,0,0),(172,NULL,NULL,NULL,0,0,NULL,0,0,0),(173,NULL,NULL,NULL,0,0,NULL,0,0,0),(174,NULL,NULL,NULL,0,0,NULL,0,0,0),(175,NULL,NULL,NULL,0,0,NULL,0,0,0),(176,NULL,NULL,NULL,0,0,NULL,0,0,0),(177,NULL,NULL,NULL,0,0,NULL,0,0,0),(178,NULL,NULL,NULL,0,0,NULL,0,0,0),(179,NULL,NULL,NULL,0,0,NULL,0,0,0),(180,NULL,NULL,NULL,0,0,NULL,0,0,0),(181,NULL,NULL,NULL,0,0,NULL,0,0,0),(182,NULL,NULL,NULL,0,0,NULL,0,0,0),(183,NULL,NULL,NULL,0,0,NULL,0,0,0),(184,NULL,NULL,NULL,0,0,NULL,0,0,0),(185,NULL,NULL,NULL,0,0,NULL,0,0,0),(186,NULL,NULL,NULL,0,0,NULL,0,0,0),(187,NULL,NULL,NULL,0,0,NULL,0,0,0),(188,NULL,NULL,NULL,0,0,NULL,0,0,0),(189,NULL,NULL,NULL,0,0,NULL,0,0,0),(190,NULL,NULL,NULL,0,0,NULL,0,0,0),(191,NULL,NULL,NULL,0,0,NULL,0,0,0),(192,NULL,NULL,NULL,0,0,NULL,0,0,0),(193,NULL,NULL,NULL,0,0,NULL,0,0,0),(194,NULL,NULL,NULL,0,0,NULL,0,0,0),(195,NULL,NULL,NULL,0,0,NULL,0,0,0),(196,NULL,NULL,NULL,0,0,NULL,0,0,0),(197,NULL,NULL,NULL,0,0,NULL,0,0,0),(198,NULL,NULL,NULL,0,0,NULL,0,0,0),(199,NULL,NULL,NULL,0,0,NULL,0,0,0),(200,NULL,NULL,NULL,0,0,NULL,0,0,0),(201,NULL,NULL,NULL,0,0,NULL,0,0,0),(202,NULL,NULL,NULL,0,0,NULL,0,0,0),(203,NULL,NULL,NULL,0,0,NULL,0,0,0),(204,NULL,NULL,NULL,0,0,NULL,0,0,0),(205,NULL,NULL,NULL,0,0,NULL,0,0,0),(206,NULL,NULL,NULL,0,0,NULL,0,0,0),(207,NULL,NULL,NULL,0,0,NULL,0,0,0),(208,NULL,NULL,NULL,0,0,NULL,0,0,0),(209,NULL,NULL,NULL,0,0,NULL,0,0,0),(211,NULL,NULL,NULL,0,0,NULL,0,0,1),(212,NULL,NULL,NULL,0,0,NULL,0,0,1),(216,NULL,NULL,NULL,0,0,NULL,0,0,0),(217,NULL,NULL,NULL,0,0,NULL,0,0,0),(218,NULL,NULL,NULL,0,0,NULL,0,0,0),(219,NULL,NULL,NULL,0,0,NULL,0,0,0);
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
INSERT INTO `CollectionVersionBlockStyles` VALUES (1,5,21,'Home Featured',0),(1,5,22,'Main',0),(1,6,21,'Home Featured',0),(1,6,22,'Main',0),(1,7,21,'Home Featured',0),(1,7,22,'Main',0),(1,8,57,'Main',6),(1,8,58,'Home Featured',6),(1,9,57,'Main',6),(1,9,58,'Home Featured',6),(1,10,57,'Main',6),(1,10,58,'Home Featured',6),(1,11,57,'Main',6),(1,11,58,'Home Featured',6),(1,12,57,'Main',6),(1,12,58,'Home Featured',6),(1,13,57,'Main',6),(1,13,58,'Home Featured',6),(1,14,57,'Main',6),(1,14,58,'Home Featured',6),(1,15,57,'Main',6),(1,15,58,'Home Featured',6),(1,16,57,'Main',6),(1,16,58,'Home Featured',6),(1,17,57,'Main',6),(1,17,58,'Home Featured',6),(1,18,57,'Main',6),(1,18,58,'Home Featured',6),(1,18,68,'Main',9),(1,19,57,'Main',6),(1,19,58,'Home Featured',6),(1,19,68,'Main',9),(1,19,69,'Main',10),(1,19,72,'Main',11),(1,19,73,'Main',12),(1,20,57,'Main',6),(1,20,58,'Home Featured',6),(1,20,68,'Main',9),(1,20,69,'Main',10),(1,20,72,'Main',11),(1,20,73,'Main',12),(1,21,57,'Main',6),(1,21,58,'Home Featured',6),(1,21,68,'Main',9),(1,21,69,'Main',10),(1,21,72,'Main',11),(1,21,73,'Main',12),(1,22,57,'Main',6),(1,22,68,'Main',9),(1,22,69,'Main',10),(1,22,72,'Main',11),(1,22,73,'Main',12),(1,23,57,'Main',6),(1,23,68,'Main',9),(1,23,69,'Main',10),(1,23,72,'Main',11),(1,23,73,'Main',12),(1,23,79,'Home Featured',0),(1,24,57,'Main',6),(1,24,68,'Main',9),(1,24,69,'Main',10),(1,24,72,'Main',11),(1,24,73,'Main',12),(1,24,79,'Home Featured',0),(1,25,68,'Main',9),(1,25,69,'Main',10),(1,25,72,'Main',11),(1,25,73,'Main',12),(1,25,79,'Home Featured',0),(1,26,79,'Home Featured',0),(1,26,87,'Main News',0),(1,27,79,'Home Featured',0),(1,27,87,'Main News',0),(1,28,79,'Home Featured',0),(1,28,87,'Main News',0),(1,28,89,'Main',0),(1,29,79,'Home Featured',0),(1,29,87,'Main News',0),(1,29,90,'Main',0),(1,30,79,'Home Featured',0),(1,30,87,'Main News',0),(1,30,91,'Main',0),(1,31,79,'Home Featured',0),(1,31,87,'Main News',0),(1,31,91,'Main',0),(1,32,87,'Main News',0),(1,32,91,'Main',0),(1,32,95,'Home Featured',18),(1,33,87,'Main News',0),(1,33,91,'Main',0),(1,33,95,'Home Featured',6),(1,34,87,'Main News',0),(1,34,91,'Main',0),(1,34,95,'Home Featured',6),(1,35,87,'Main News',0),(1,35,91,'Main',0),(1,35,95,'Home Featured',6),(1,36,87,'Main News',0),(1,36,91,'Main',0),(1,36,95,'Home Featured',6),(142,3,16,'Main',4),(142,4,65,'Main',4),(142,5,66,'Main',4),(142,6,67,'Main',4),(142,7,75,'Main',4),(142,8,76,'Main',4),(142,9,77,'Main',4),(144,2,14,'Main',0),(144,2,15,'Main',1),(144,3,24,'Main',1),(144,3,25,'Main',2),(144,4,24,'Main',1),(144,4,26,'Main',3),(144,5,24,'Main',1),(144,5,124,'Main',3),(144,6,24,'Main',1),(144,6,124,'Main',3),(144,7,24,'Main',1),(144,7,124,'Main',3),(146,1,23,'Sub Nav',0),(146,2,23,'Sub Nav',0),(147,1,23,'Sub Nav',0),(147,2,23,'Sub Nav',0),(148,1,23,'Sub Nav',0),(148,2,23,'Sub Nav',0),(149,1,18,'Sub Nav',0),(149,1,31,'Main',0),(150,1,18,'Sub Nav',0),(150,1,31,'Main',0),(151,1,18,'Sub Nav',0),(151,1,31,'Main',0),(152,1,18,'Sub Nav',0),(152,1,31,'Main',0),(153,1,18,'Sub Nav',0),(153,1,31,'Main',0),(154,1,18,'Sub Nav',0),(154,1,31,'Main',0),(155,1,18,'Sub Nav',0),(155,1,31,'Main',0),(156,1,18,'Sub Nav',0),(156,1,31,'Main',0),(157,1,18,'Sub Nav',0),(157,1,31,'Main',0),(158,1,18,'Sub Nav',0),(158,1,31,'Main',0),(159,1,18,'Sub Nav',0),(159,1,31,'Main',0),(160,1,18,'Sub Nav',0),(160,1,31,'Main',0),(161,1,18,'Sub Nav',0),(161,1,31,'Main',0),(162,1,23,'Sub Nav',0),(162,1,32,'Main',0),(162,1,34,'Main',0),(162,2,23,'Sub Nav',0),(162,2,32,'Main',0),(162,2,34,'Main',0),(162,2,96,'Header Banner',6),(162,3,23,'Sub Nav',0),(162,3,32,'Main',0),(162,3,34,'Main',0),(162,3,96,'Header Banner',6),(162,4,23,'Sub Nav',0),(162,4,32,'Main',0),(162,4,34,'Main',0),(162,4,96,'Header Banner',6),(162,4,104,'RightSidebar',0),(162,5,23,'Sub Nav',0),(162,5,32,'Main',0),(162,5,34,'Main',0),(162,5,96,'Header Banner',6),(162,5,104,'RightSidebar',0),(162,6,23,'Sub Nav',0),(162,6,32,'Main',0),(162,6,34,'Main',0),(162,6,96,'Header Banner',6),(162,6,104,'RightSidebar',0),(163,1,23,'Sub Nav',0),(163,1,32,'Main',0),(163,1,34,'Main',0),(164,1,18,'Sub Nav',0),(164,1,31,'Main',0),(164,1,38,'RightSidebar',0),(164,1,39,'RightSidebar',0),(164,1,40,'Main',0),(165,1,18,'Sub Nav',0),(165,1,31,'Main',0),(165,1,38,'RightSidebar',0),(165,1,39,'RightSidebar',0),(165,1,40,'Main',0),(165,2,18,'Sub Nav',0),(165,2,31,'Main',0),(165,2,38,'RightSidebar',0),(165,2,39,'RightSidebar',0),(165,2,40,'Main',0),(166,1,18,'Sub Nav',0),(166,1,31,'Main',0),(166,1,38,'RightSidebar',0),(166,1,39,'RightSidebar',0),(166,1,40,'Main',0),(166,2,18,'Sub Nav',0),(166,2,31,'Main',0),(166,2,40,'Main',0),(166,2,128,'RightSidebar',0),(166,3,18,'Sub Nav',0),(166,3,31,'Main',0),(166,3,40,'Main',0),(166,3,126,'RightSidebar',0),(166,3,127,'RightSidebar',0),(166,3,128,'RightSidebar',25),(166,4,128,'RightSidebar',25),(166,4,129,'RightSidebar',26),(167,1,19,'Sub Nav',0),(167,1,33,'Main',0),(167,1,44,'LeftSidebar',0),(167,1,45,'LeftSidebar',0),(167,1,46,'RightSidebar',0),(167,1,47,'RightSidebar',0),(167,1,48,'Main',0),(168,1,19,'Sub Nav',0),(168,1,33,'Main',0),(168,1,44,'LeftSidebar',0),(168,1,45,'LeftSidebar',0),(168,1,46,'RightSidebar',0),(168,1,47,'RightSidebar',0),(168,1,48,'Main',0),(168,2,19,'Sub Nav',0),(168,2,33,'Main',0),(168,2,44,'LeftSidebar',0),(168,2,45,'LeftSidebar',0),(168,2,46,'RightSidebar',0),(168,2,47,'RightSidebar',0),(168,2,48,'Main',0),(168,3,19,'Sub Nav',0),(168,3,33,'Main',0),(168,3,44,'LeftSidebar',0),(168,3,45,'LeftSidebar',0),(168,3,46,'RightSidebar',0),(168,3,47,'RightSidebar',0),(168,3,48,'Main',0),(168,4,19,'Sub Nav',0),(168,4,33,'Main',0),(168,4,44,'LeftSidebar',0),(168,4,45,'LeftSidebar',0),(168,4,46,'RightSidebar',0),(168,4,47,'RightSidebar',0),(168,4,48,'Main',0),(168,5,19,'Sub Nav',0),(168,5,33,'Main',0),(168,5,44,'LeftSidebar',0),(168,5,45,'LeftSidebar',0),(168,5,46,'RightSidebar',0),(168,5,47,'RightSidebar',0),(168,5,48,'Main',0),(168,6,19,'Sub Nav',0),(168,6,33,'Main',0),(168,6,44,'LeftSidebar',0),(168,6,45,'LeftSidebar',0),(168,6,46,'RightSidebar',0),(168,6,47,'RightSidebar',0),(168,6,48,'Main',0),(169,1,19,'Sub Nav',0),(169,1,33,'Main',0),(169,1,44,'LeftSidebar',0),(169,1,45,'LeftSidebar',0),(169,1,46,'RightSidebar',0),(169,1,47,'RightSidebar',0),(169,1,48,'Main',0),(169,2,19,'Sub Nav',0),(169,2,33,'Main',0),(169,2,44,'LeftSidebar',0),(169,2,45,'LeftSidebar',0),(169,2,46,'RightSidebar',0),(169,2,47,'RightSidebar',0),(169,2,48,'Main',0),(169,3,19,'Sub Nav',0),(169,3,33,'Main',0),(169,3,44,'LeftSidebar',0),(169,3,45,'LeftSidebar',0),(169,3,46,'RightSidebar',0),(169,3,47,'RightSidebar',0),(169,3,48,'Main',0),(170,1,18,'Sub Nav',0),(170,1,31,'Main',0),(170,1,38,'RightSidebar',0),(170,1,39,'RightSidebar',0),(170,1,40,'Main',0),(170,2,18,'Sub Nav',0),(170,2,38,'RightSidebar',0),(170,2,39,'RightSidebar',0),(170,2,40,'Main',0),(170,2,85,'Main',0),(170,3,18,'Sub Nav',0),(170,3,38,'RightSidebar',0),(170,3,39,'RightSidebar',0),(170,3,40,'Main',0),(170,3,85,'Main',0),(171,1,18,'Sub Nav',0),(171,1,31,'Main',0),(171,1,38,'RightSidebar',0),(171,1,39,'RightSidebar',0),(171,1,40,'Main',0),(171,2,18,'Sub Nav',0),(171,2,38,'RightSidebar',0),(171,2,39,'RightSidebar',0),(171,2,40,'Main',0),(171,2,86,'Main',0),(172,1,18,'Sub Nav',0),(172,1,31,'Main',0),(172,1,38,'RightSidebar',0),(172,1,39,'RightSidebar',0),(172,1,40,'Main',0),(173,1,18,'Sub Nav',0),(173,1,31,'Main',0),(173,1,38,'RightSidebar',0),(173,1,39,'RightSidebar',0),(173,1,40,'Main',0),(174,1,18,'Sub Nav',0),(174,1,31,'Main',0),(174,1,38,'RightSidebar',0),(174,1,39,'RightSidebar',0),(174,1,40,'Main',0),(175,1,18,'Sub Nav',0),(175,1,31,'Main',0),(175,1,38,'RightSidebar',0),(175,1,39,'RightSidebar',0),(175,1,40,'Main',0),(176,1,18,'Sub Nav',0),(176,1,31,'Main',0),(176,1,38,'RightSidebar',0),(176,1,39,'RightSidebar',0),(176,1,40,'Main',0),(177,1,18,'Sub Nav',0),(177,1,31,'Main',0),(177,1,38,'RightSidebar',0),(177,1,39,'RightSidebar',0),(177,1,40,'Main',0),(178,1,18,'Sub Nav',0),(178,1,31,'Main',0),(178,1,38,'RightSidebar',0),(178,1,39,'RightSidebar',0),(178,1,40,'Main',0),(179,1,18,'Sub Nav',0),(179,1,31,'Main',0),(179,1,38,'RightSidebar',0),(179,1,39,'RightSidebar',0),(179,1,40,'Main',0),(180,1,18,'Sub Nav',0),(180,1,31,'Main',0),(180,1,38,'RightSidebar',0),(180,1,39,'RightSidebar',0),(180,1,40,'Main',0),(181,1,18,'Sub Nav',0),(181,1,31,'Main',0),(181,1,38,'RightSidebar',0),(181,1,39,'RightSidebar',0),(181,1,40,'Main',0),(182,1,19,'Sub Nav',0),(182,1,33,'Main',0),(182,1,44,'LeftSidebar',0),(182,1,45,'LeftSidebar',0),(182,1,46,'RightSidebar',0),(182,1,47,'RightSidebar',0),(182,1,48,'Main',0),(183,1,23,'Sub Nav',0),(183,1,32,'Main',0),(183,1,34,'Main',0),(184,1,23,'Sub Nav',0),(184,1,32,'Main',0),(184,1,34,'Main',0),(185,1,23,'Sub Nav',0),(185,1,32,'Main',0),(185,1,34,'Main',0),(186,1,23,'Sub Nav',0),(186,1,32,'Main',0),(186,1,34,'Main',0),(187,1,23,'Sub Nav',0),(187,1,32,'Main',0),(187,1,34,'Main',0),(187,2,23,'Sub Nav',0),(187,2,32,'Main',0),(187,2,34,'Main',0),(187,3,23,'Sub Nav',0),(187,3,32,'Main',0),(187,3,34,'Main',0),(187,3,99,'Header Banner',6),(187,4,23,'Sub Nav',0),(187,4,99,'Header Banner',6),(188,1,23,'Sub Nav',0),(188,1,32,'Main',0),(188,1,34,'Main',0),(188,2,23,'Sub Nav',0),(188,2,32,'Main',0),(188,2,34,'Main',0),(189,1,18,'Sub Nav',0),(189,1,31,'Main',0),(189,1,38,'RightSidebar',0),(189,1,39,'RightSidebar',0),(189,1,40,'Main',0),(189,2,18,'Sub Nav',0),(189,2,39,'RightSidebar',0),(190,1,18,'Sub Nav',0),(190,1,31,'Main',0),(190,1,38,'RightSidebar',0),(190,1,39,'RightSidebar',0),(190,1,40,'Main',0),(191,1,18,'Sub Nav',0),(191,1,31,'Main',0),(191,1,38,'RightSidebar',0),(191,1,39,'RightSidebar',0),(191,1,40,'Main',0),(192,1,18,'Sub Nav',0),(192,1,31,'Main',0),(192,1,38,'RightSidebar',0),(192,1,39,'RightSidebar',0),(192,1,40,'Main',0),(193,1,18,'Sub Nav',0),(193,1,31,'Main',0),(193,1,38,'RightSidebar',0),(193,1,39,'RightSidebar',0),(193,1,40,'Main',0),(194,1,18,'Sub Nav',0),(194,1,31,'Main',0),(194,1,38,'RightSidebar',0),(194,1,39,'RightSidebar',0),(194,1,40,'Main',0),(195,1,18,'Sub Nav',0),(195,1,31,'Main',0),(195,1,38,'RightSidebar',0),(195,1,39,'RightSidebar',0),(195,1,40,'Main',0),(196,1,18,'Sub Nav',0),(196,1,31,'Main',0),(196,1,38,'RightSidebar',0),(196,1,39,'RightSidebar',0),(196,1,40,'Main',0),(197,1,18,'Sub Nav',0),(197,1,31,'Main',0),(197,1,38,'RightSidebar',0),(197,1,39,'RightSidebar',0),(197,1,40,'Main',0),(197,2,18,'Sub Nav',0),(197,2,38,'RightSidebar',0),(197,2,39,'RightSidebar',0),(197,2,40,'Main',0),(197,2,81,'Main',0),(197,3,18,'Sub Nav',0),(197,3,39,'RightSidebar',0),(197,3,40,'Main',0),(197,3,81,'Main',0),(197,3,94,'RightSidebar',0),(198,1,18,'Sub Nav',0),(198,1,31,'Main',0),(198,1,38,'RightSidebar',0),(198,1,39,'RightSidebar',0),(198,1,40,'Main',0),(198,2,18,'Sub Nav',0),(198,2,38,'RightSidebar',0),(198,2,39,'RightSidebar',0),(198,2,40,'Main',0),(198,2,83,'Main',0),(199,1,18,'Sub Nav',0),(199,1,31,'Main',0),(199,1,38,'RightSidebar',0),(199,1,39,'RightSidebar',0),(199,1,40,'Main',0),(199,2,18,'Sub Nav',0),(199,2,38,'RightSidebar',0),(199,2,39,'RightSidebar',0),(199,2,40,'Main',0),(199,2,139,'Main',0),(200,1,18,'Sub Nav',0),(200,1,31,'Main',0),(200,1,38,'RightSidebar',0),(200,1,39,'RightSidebar',0),(200,1,40,'Main',0),(200,2,18,'Sub Nav',0),(200,2,38,'RightSidebar',0),(200,2,39,'RightSidebar',0),(200,2,40,'Main',0),(200,2,84,'Main',0),(201,1,18,'Sub Nav',0),(201,1,31,'Main',0),(201,1,38,'RightSidebar',0),(201,1,39,'RightSidebar',0),(201,1,40,'Main',0),(201,2,18,'Sub Nav',0),(201,2,31,'Main',0),(201,2,38,'RightSidebar',0),(201,2,39,'RightSidebar',0),(201,2,40,'Main',0),(201,3,18,'Sub Nav',0),(201,3,38,'RightSidebar',0),(201,3,39,'RightSidebar',0),(201,3,40,'Main',0),(201,3,133,'Main',0),(201,4,18,'Sub Nav',0),(201,4,38,'RightSidebar',0),(201,4,39,'RightSidebar',0),(201,4,40,'Main',0),(201,4,135,'Main',0),(201,5,18,'Sub Nav',0),(201,5,38,'RightSidebar',0),(201,5,39,'RightSidebar',0),(201,5,40,'Main',0),(201,5,137,'Main',0),(202,1,18,'Sub Nav',0),(202,1,31,'Main',0),(202,1,38,'RightSidebar',0),(202,1,39,'RightSidebar',0),(202,1,40,'Main',0),(202,2,18,'Sub Nav',0),(202,2,38,'RightSidebar',0),(202,2,39,'RightSidebar',0),(202,2,40,'Main',0),(202,2,131,'Main',0),(203,1,18,'Sub Nav',0),(203,1,31,'Main',0),(203,1,38,'RightSidebar',0),(203,1,39,'RightSidebar',0),(203,1,40,'Main',0),(203,2,18,'Sub Nav',0),(203,2,38,'RightSidebar',0),(203,2,39,'RightSidebar',0),(203,2,40,'Main',0),(203,2,134,'Main',0),(203,3,18,'Sub Nav',0),(203,3,38,'RightSidebar',0),(203,3,39,'RightSidebar',0),(203,3,40,'Main',0),(203,3,136,'Main',0),(204,1,18,'Sub Nav',0),(204,1,31,'Main',0),(204,1,38,'RightSidebar',0),(204,1,39,'RightSidebar',0),(204,1,40,'Main',0),(205,1,18,'Sub Nav',0),(205,1,31,'Main',0),(205,1,38,'RightSidebar',0),(205,1,39,'RightSidebar',0),(205,1,40,'Main',0),(205,2,18,'Sub Nav',0),(205,2,38,'RightSidebar',0),(205,2,39,'RightSidebar',0),(205,2,40,'Main',0),(205,2,138,'Main',0),(206,2,55,'Main',0),(206,3,56,'Main',0),(206,4,56,'Main',5),(206,5,56,'Main',5),(206,5,74,'Main',15),(206,6,74,'Main',15),(206,6,100,'Main',5),(206,7,100,'Main',5),(206,7,117,'Main',15),(206,8,117,'Main',15),(206,8,125,'Main',5),(207,3,61,'Main',7),(207,4,63,'Main',7),(207,5,64,'Main',7),(207,6,93,'Main',7),(207,7,93,'Main',7),(207,8,93,'Main',7),(207,8,101,'Main',19),(207,9,93,'Main',7),(207,9,101,'Main',19),(207,10,93,'Main',7),(207,10,118,'Main',19),(207,11,93,'Main',7),(207,11,108,'Main',24),(207,11,118,'Main',19),(208,3,120,'Main',0),(209,1,23,'Sub Nav',0),(209,1,32,'Main',0),(209,1,34,'Main',0),(209,2,23,'Sub Nav',0),(209,2,32,'Main',0),(209,2,34,'Main',0),(209,2,98,'Header Banner',6),(209,3,23,'Sub Nav',0),(209,3,98,'Header Banner',6),(209,4,23,'Sub Nav',0),(209,4,98,'Header Banner',6),(209,5,23,'Sub Nav',0),(209,5,98,'Header Banner',6),(209,5,105,'RightSidebar',0),(209,5,106,'RightSidebar',0),(209,5,108,'Product Images',0),(209,5,110,'Product Images',0),(209,5,111,'Product Description',0),(209,6,23,'Sub Nav',0),(209,6,98,'Header Banner',6),(209,6,105,'RightSidebar',0),(209,6,106,'RightSidebar',0),(209,6,108,'Product Images',0),(209,6,110,'Product Images',0),(209,6,112,'Product Title',0),(209,6,113,'Product Description',0),(209,7,23,'Sub Nav',0),(209,7,98,'Header Banner',6),(209,7,105,'RightSidebar',0),(209,7,106,'RightSidebar',0),(209,7,108,'Product Images',0),(209,7,110,'Product Images',0),(209,7,112,'Product Title',0),(209,7,113,'Product Description',0),(209,8,23,'Sub Nav',0),(209,8,98,'Header Banner',6),(209,8,105,'RightSidebar',0),(209,8,106,'RightSidebar',0),(209,8,108,'Product Images',0),(209,8,110,'Product Images',0),(209,8,112,'Product Title',0),(209,8,113,'Product Description',0),(209,8,114,'Main',20),(209,9,23,'Sub Nav',0),(209,9,98,'Header Banner',6),(209,9,105,'RightSidebar',0),(209,9,106,'RightSidebar',0),(209,9,108,'Product Images',0),(209,9,110,'Product Images',0),(209,9,112,'Product Title',0),(209,9,113,'Product Description',0),(209,9,115,'Main',21),(209,10,23,'Sub Nav',0),(209,10,98,'Header Banner',6),(209,10,105,'RightSidebar',0),(209,10,106,'RightSidebar',0),(209,10,108,'Product Images',0),(209,10,110,'Product Images',0),(209,10,112,'Product Title',0),(209,10,113,'Product Description',0),(209,10,115,'Main',22),(209,11,23,'Sub Nav',0),(209,11,98,'Header Banner',6),(209,11,105,'RightSidebar',0),(209,11,106,'RightSidebar',0),(209,11,108,'Product Images',0),(209,11,110,'Product Images',0),(209,11,112,'Product Title',0),(209,11,113,'Product Description',0),(209,11,116,'Main',23),(209,12,23,'Sub Nav',0),(209,12,98,'Header Banner',6),(209,12,105,'RightSidebar',0),(209,12,106,'RightSidebar',0),(209,12,108,'Product Images',0),(209,12,110,'Product Images',0),(209,12,112,'Product Title',0),(209,12,113,'Product Description',0),(209,12,116,'Main',23),(209,13,23,'Sub Nav',0),(209,13,98,'Header Banner',6),(209,13,105,'RightSidebar',0),(209,13,106,'RightSidebar',0),(209,13,108,'Product Images',0),(209,13,110,'Product Images',0),(209,13,112,'Product Title',0),(209,13,113,'Product Description',0),(209,13,116,'Main',23),(209,14,23,'Sub Nav',0),(209,14,98,'Header Banner',6),(209,14,105,'RightSidebar',0),(209,14,106,'RightSidebar',0),(209,14,108,'Product Images',0),(209,14,110,'Product Images',0),(209,14,112,'Product Title',0),(209,14,113,'Product Description',0),(209,14,116,'Main',23),(209,14,122,'Sub Nav',0),(209,15,23,'Sub Nav',0),(209,15,98,'Header Banner',6),(209,15,106,'RightSidebar',0),(209,15,108,'Product Images',0),(209,15,110,'Product Images',0),(209,15,112,'Product Title',0),(209,15,113,'Product Description',0),(209,15,116,'Main',23),(209,15,122,'Sub Nav',0),(209,15,123,'RightSidebar',0),(211,1,23,'Sub Nav',0),(211,1,32,'Main',0),(211,1,34,'Main',0),(211,2,23,'Sub Nav',0),(211,2,32,'Main',0),(211,2,34,'Main',0),(211,3,23,'Sub Nav',0),(211,4,23,'Sub Nav',0),(211,5,23,'Sub Nav',0),(211,5,119,'Main',0),(212,1,18,'Sub Nav',0),(212,1,31,'Main',0),(212,1,38,'RightSidebar',0),(212,1,39,'RightSidebar',0),(212,1,40,'Main',0),(212,2,18,'Sub Nav',0),(212,2,31,'Main',0),(212,2,38,'RightSidebar',0),(212,2,39,'RightSidebar',0),(212,2,40,'Main',0),(216,1,18,'Sub Nav',0),(216,1,31,'Main',0),(216,1,38,'RightSidebar',0),(216,1,39,'RightSidebar',0),(216,1,40,'Main',0),(217,1,18,'Sub Nav',0),(217,1,31,'Main',0),(217,1,38,'RightSidebar',0),(217,1,39,'RightSidebar',0),(217,1,40,'Main',0),(218,1,18,'Sub Nav',0),(218,1,31,'Main',0),(218,1,38,'RightSidebar',0),(218,1,39,'RightSidebar',0),(218,1,40,'Main',0),(219,1,18,'Sub Nav',0),(219,1,31,'Main',0),(219,1,38,'RightSidebar',0),(219,1,39,'RightSidebar',0),(219,1,40,'Main',0),(219,2,18,'Sub Nav',0),(219,2,38,'RightSidebar',0),(219,2,39,'RightSidebar',0),(219,2,40,'Main',0),(219,2,140,'Main',0);
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
INSERT INTO `CollectionVersionBlocks` VALUES (1,3,20,'Home Featured',0,1,0,0),(1,4,21,'Home Featured',1,1,0,0),(1,4,22,'Main',0,1,0,0),(1,5,21,'Home Featured',0,0,0,0),(1,5,22,'Main',0,0,0,0),(1,6,21,'Home Featured',0,0,0,0),(1,6,22,'Main',0,0,0,0),(1,7,21,'Home Featured',0,0,0,0),(1,7,22,'Main',0,0,0,0),(1,8,57,'Main',0,1,0,0),(1,8,58,'Home Featured',0,1,0,0),(1,9,57,'Main',0,0,0,0),(1,9,58,'Home Featured',0,0,0,0),(1,10,57,'Main',0,0,0,0),(1,10,58,'Home Featured',0,0,0,0),(1,11,57,'Main',0,0,0,0),(1,11,58,'Home Featured',0,0,0,0),(1,12,57,'Main',0,0,0,0),(1,12,58,'Home Featured',0,0,0,0),(1,13,57,'Main',0,0,0,0),(1,13,58,'Home Featured',0,0,0,0),(1,14,57,'Main',0,0,0,0),(1,14,58,'Home Featured',0,0,0,0),(1,15,57,'Main',0,0,0,0),(1,15,58,'Home Featured',0,0,0,0),(1,16,57,'Main',0,0,0,0),(1,16,58,'Home Featured',0,0,0,0),(1,17,57,'Main',0,0,0,0),(1,17,58,'Home Featured',0,0,0,0),(1,18,57,'Main',0,0,0,0),(1,18,58,'Home Featured',0,0,0,0),(1,18,68,'Main',1,1,0,0),(1,18,69,'Main',2,1,0,0),(1,18,70,'Main',3,1,0,0),(1,18,71,'Main',4,1,0,0),(1,19,57,'Main',0,0,0,0),(1,19,58,'Home Featured',0,0,0,0),(1,19,68,'Main',1,0,0,0),(1,19,69,'Main',2,0,0,0),(1,19,72,'Main',3,1,0,0),(1,19,73,'Main',4,1,0,0),(1,20,57,'Main',0,0,0,0),(1,20,58,'Home Featured',0,0,0,0),(1,20,68,'Main',1,0,0,0),(1,20,69,'Main',2,0,0,0),(1,20,72,'Main',3,0,0,0),(1,20,73,'Main',4,0,0,0),(1,21,57,'Main',0,0,0,0),(1,21,58,'Home Featured',0,0,0,0),(1,21,68,'Main',1,0,0,0),(1,21,69,'Main',2,0,0,0),(1,21,72,'Main',3,0,0,0),(1,21,73,'Main',4,0,0,0),(1,22,57,'Main',0,0,0,0),(1,22,68,'Main',1,0,0,0),(1,22,69,'Main',2,0,0,0),(1,22,72,'Main',3,0,0,0),(1,22,73,'Main',4,0,0,0),(1,22,78,'Home Featured',0,1,0,0),(1,23,57,'Main',0,0,0,0),(1,23,68,'Main',1,0,0,0),(1,23,69,'Main',2,0,0,0),(1,23,72,'Main',3,0,0,0),(1,23,73,'Main',4,0,0,0),(1,23,79,'Home Featured',0,1,0,0),(1,24,57,'Main',0,0,0,0),(1,24,68,'Main',1,0,0,0),(1,24,69,'Main',2,0,0,0),(1,24,72,'Main',3,0,0,0),(1,24,73,'Main',4,0,0,0),(1,24,79,'Home Featured',0,0,0,0),(1,25,68,'Main',1,0,0,0),(1,25,69,'Main',2,0,0,0),(1,25,72,'Main',3,0,0,0),(1,25,73,'Main',4,0,0,0),(1,25,79,'Home Featured',0,0,0,0),(1,25,87,'Main News',0,1,0,0),(1,26,79,'Home Featured',0,0,0,0),(1,26,87,'Main News',0,0,0,0),(1,27,79,'Home Featured',0,0,0,0),(1,27,87,'Main News',0,0,0,0),(1,27,88,'Main',0,1,0,0),(1,28,79,'Home Featured',0,0,0,0),(1,28,87,'Main News',0,0,0,0),(1,28,89,'Main',0,1,0,0),(1,29,79,'Home Featured',0,0,0,0),(1,29,87,'Main News',0,0,0,0),(1,29,90,'Main',0,1,0,0),(1,30,79,'Home Featured',0,0,0,0),(1,30,87,'Main News',0,0,0,0),(1,30,91,'Main',0,1,0,0),(1,31,79,'Home Featured',0,0,0,0),(1,31,87,'Main News',0,0,0,0),(1,31,91,'Main',0,0,0,0),(1,32,87,'Main News',0,0,0,0),(1,32,91,'Main',0,0,0,0),(1,32,95,'Home Featured',0,1,0,0),(1,33,87,'Main News',0,0,0,0),(1,33,91,'Main',0,0,0,0),(1,33,95,'Home Featured',0,0,0,0),(1,34,87,'Main News',0,0,0,0),(1,34,91,'Main',0,0,0,0),(1,34,95,'Home Featured',0,0,0,0),(1,35,87,'Main News',0,0,0,0),(1,35,91,'Main',0,0,0,0),(1,35,95,'Home Featured',0,0,0,0),(1,36,87,'Main News',0,0,0,0),(1,36,91,'Main',0,0,0,0),(1,36,95,'Home Featured',0,0,0,0),(95,1,6,'Primary',0,1,0,0),(95,1,7,'Primary',1,1,0,0),(95,1,8,'Secondary 1',0,1,0,0),(95,1,9,'Secondary 2',0,1,0,0),(95,1,10,'Secondary 3',0,1,0,0),(95,1,11,'Secondary 4',0,1,0,0),(95,1,12,'Secondary 5',0,1,0,0),(96,1,1,'Header',0,1,0,0),(96,1,2,'Column 1',0,1,0,0),(96,1,3,'Column 2',0,1,0,0),(96,1,4,'Column 3',0,1,0,0),(96,1,5,'Column 4',0,1,0,0),(111,1,18,'Sub Nav',0,1,0,0),(111,1,31,'Main',1,1,0,0),(111,1,38,'RightSidebar',0,1,0,0),(111,1,39,'RightSidebar',1,1,0,0),(111,1,40,'Main',0,1,0,0),(112,1,50,'Home Featured',1,1,0,0),(112,1,51,'Main',0,1,0,0),(112,1,52,'Main',1,1,0,0),(112,1,53,'Home Featured',0,1,0,0),(113,1,17,'Sub Nav',0,1,0,0),(113,1,30,'Main',2,1,0,0),(113,1,41,'LeftSidebar',0,1,0,0),(113,1,42,'LeftSidebar',1,1,0,0),(113,1,43,'Main',1,1,0,0),(114,1,19,'Sub Nav',0,1,0,0),(114,1,33,'Main',1,1,0,0),(114,1,44,'LeftSidebar',0,1,0,0),(114,1,45,'LeftSidebar',1,1,0,0),(114,1,46,'RightSidebar',0,1,0,0),(114,1,47,'RightSidebar',1,1,0,0),(114,1,48,'Main',0,1,0,0),(142,1,13,'Main',0,1,0,0),(142,2,16,'Main',0,1,0,0),(142,3,16,'Main',0,0,0,0),(142,4,65,'Main',0,1,0,0),(142,5,66,'Main',0,1,0,0),(142,6,67,'Main',0,1,0,0),(142,7,75,'Main',0,1,0,0),(142,8,76,'Main',0,1,0,0),(142,9,77,'Main',0,1,0,0),(144,1,14,'Main',0,1,0,0),(144,1,15,'Main',1,1,0,0),(144,2,14,'Main',0,0,0,0),(144,2,15,'Main',1,0,0,0),(144,3,24,'Main',1,1,0,0),(144,3,25,'Main',0,1,0,0),(144,4,24,'Main',1,0,0,0),(144,4,26,'Main',0,1,0,0),(144,5,24,'Main',1,0,0,0),(144,5,124,'Main',1,1,0,0),(144,6,24,'Main',0,0,0,0),(144,6,124,'Main',1,0,0,0),(144,6,132,'Main',2,1,0,0),(144,7,24,'Main',0,0,0,0),(144,7,124,'Main',1,0,0,0),(145,1,23,'Sub Nav',0,1,0,0),(145,1,32,'Main',1,1,0,0),(145,1,34,'Main',0,1,0,0),(146,1,23,'Sub Nav',0,0,0,0),(146,2,23,'Sub Nav',0,0,0,0),(146,2,27,'Main',0,1,0,0),(147,1,23,'Sub Nav',0,0,0,0),(147,2,23,'Sub Nav',0,0,0,0),(147,2,28,'Main',0,1,0,0),(148,1,23,'Sub Nav',0,0,0,0),(148,2,23,'Sub Nav',0,0,0,0),(148,2,29,'Main',0,1,0,0),(149,1,18,'Sub Nav',0,0,0,0),(149,1,31,'Main',0,0,0,0),(150,1,18,'Sub Nav',0,0,0,0),(150,1,31,'Main',0,0,0,0),(151,1,18,'Sub Nav',0,0,0,0),(151,1,31,'Main',0,0,0,0),(152,1,18,'Sub Nav',0,0,0,0),(152,1,31,'Main',0,0,0,0),(153,1,18,'Sub Nav',0,0,0,0),(153,1,31,'Main',0,0,0,0),(154,1,18,'Sub Nav',0,0,0,0),(154,1,31,'Main',0,0,0,0),(155,1,18,'Sub Nav',0,0,0,0),(155,1,31,'Main',0,0,0,0),(156,1,18,'Sub Nav',0,0,0,0),(156,1,31,'Main',0,0,0,0),(157,1,18,'Sub Nav',0,0,0,0),(157,1,31,'Main',0,0,0,0),(158,1,18,'Sub Nav',0,0,0,0),(158,1,31,'Main',0,0,0,0),(159,1,18,'Sub Nav',0,0,0,0),(159,1,31,'Main',0,0,0,0),(160,1,18,'Sub Nav',0,0,0,0),(160,1,31,'Main',0,0,0,0),(161,1,18,'Sub Nav',0,0,0,0),(161,1,31,'Main',0,0,0,0),(162,1,23,'Sub Nav',0,0,0,0),(162,1,32,'Main',1,0,0,0),(162,1,34,'Main',0,0,0,0),(162,2,23,'Sub Nav',0,0,0,0),(162,2,32,'Main',1,0,0,0),(162,2,34,'Main',0,0,0,0),(162,2,96,'Header Banner',0,1,0,0),(162,3,23,'Sub Nav',0,0,0,0),(162,3,32,'Main',1,0,0,0),(162,3,34,'Main',0,0,0,0),(162,3,96,'Header Banner',0,0,0,0),(162,3,104,'RightSidebar',0,1,0,0),(162,4,23,'Sub Nav',0,0,0,0),(162,4,32,'Main',1,0,0,0),(162,4,34,'Main',0,0,0,0),(162,4,96,'Header Banner',0,0,0,0),(162,4,104,'RightSidebar',0,0,0,0),(162,5,23,'Sub Nav',0,0,0,0),(162,5,32,'Main',1,0,0,0),(162,5,34,'Main',0,0,0,0),(162,5,96,'Header Banner',0,0,0,0),(162,5,104,'RightSidebar',0,0,0,0),(162,6,23,'Sub Nav',0,0,0,0),(162,6,32,'Main',1,0,0,0),(162,6,34,'Main',0,0,0,0),(162,6,96,'Header Banner',0,0,0,0),(162,6,104,'RightSidebar',0,0,0,0),(163,1,23,'Sub Nav',0,0,0,0),(163,1,32,'Main',1,0,0,0),(163,1,34,'Main',0,0,0,0),(164,1,18,'Sub Nav',0,0,0,0),(164,1,31,'Main',1,0,0,0),(164,1,38,'RightSidebar',0,0,0,0),(164,1,39,'RightSidebar',1,0,0,0),(164,1,40,'Main',0,0,0,0),(165,1,18,'Sub Nav',0,0,0,0),(165,1,31,'Main',1,0,0,0),(165,1,38,'RightSidebar',0,0,0,0),(165,1,39,'RightSidebar',1,0,0,0),(165,1,40,'Main',0,0,0,0),(165,2,18,'Sub Nav',0,0,0,0),(165,2,31,'Main',1,0,0,0),(165,2,38,'RightSidebar',0,0,0,0),(165,2,39,'RightSidebar',1,0,0,0),(165,2,40,'Main',0,0,0,0),(166,1,18,'Sub Nav',0,0,0,0),(166,1,31,'Main',1,0,0,0),(166,1,38,'RightSidebar',0,0,0,0),(166,1,39,'RightSidebar',1,0,0,0),(166,1,40,'Main',0,0,0,0),(166,2,18,'Sub Nav',0,0,0,0),(166,2,31,'Main',1,0,0,0),(166,2,40,'Main',0,0,0,0),(166,2,126,'RightSidebar',2,1,0,0),(166,2,127,'RightSidebar',3,1,0,0),(166,2,128,'RightSidebar',1,1,0,0),(166,3,18,'Sub Nav',0,0,0,0),(166,3,31,'Main',1,0,0,0),(166,3,40,'Main',0,0,0,0),(166,3,126,'RightSidebar',1,0,0,0),(166,3,127,'RightSidebar',2,0,0,0),(166,3,128,'RightSidebar',0,0,0,0),(166,4,18,'Sub Nav',0,0,0,0),(166,4,31,'Main',1,0,0,0),(166,4,40,'Main',0,0,0,0),(166,4,126,'RightSidebar',0,0,0,0),(166,4,128,'RightSidebar',1,0,0,0),(166,4,129,'RightSidebar',2,1,0,0),(167,1,19,'Sub Nav',0,0,0,0),(167,1,33,'Main',1,0,0,0),(167,1,44,'LeftSidebar',0,0,0,0),(167,1,45,'LeftSidebar',1,0,0,0),(167,1,46,'RightSidebar',0,0,0,0),(167,1,47,'RightSidebar',1,0,0,0),(167,1,48,'Main',0,0,0,0),(168,1,19,'Sub Nav',0,0,0,0),(168,1,33,'Main',1,0,0,0),(168,1,44,'LeftSidebar',0,0,0,0),(168,1,45,'LeftSidebar',1,0,0,0),(168,1,46,'RightSidebar',0,0,0,0),(168,1,47,'RightSidebar',1,0,0,0),(168,1,48,'Main',0,0,0,0),(168,2,19,'Sub Nav',0,0,0,0),(168,2,33,'Main',1,0,0,0),(168,2,44,'LeftSidebar',0,0,0,0),(168,2,45,'LeftSidebar',1,0,0,0),(168,2,46,'RightSidebar',0,0,0,0),(168,2,47,'RightSidebar',1,0,0,0),(168,2,48,'Main',0,0,0,0),(168,3,19,'Sub Nav',0,0,0,0),(168,3,33,'Main',1,0,0,0),(168,3,44,'LeftSidebar',0,0,0,0),(168,3,45,'LeftSidebar',1,0,0,0),(168,3,46,'RightSidebar',0,0,0,0),(168,3,47,'RightSidebar',1,0,0,0),(168,3,48,'Main',0,0,0,0),(168,4,19,'Sub Nav',0,0,0,0),(168,4,33,'Main',1,0,0,0),(168,4,44,'LeftSidebar',0,0,0,0),(168,4,45,'LeftSidebar',1,0,0,0),(168,4,46,'RightSidebar',0,0,0,0),(168,4,47,'RightSidebar',1,0,0,0),(168,4,48,'Main',0,0,0,0),(168,5,19,'Sub Nav',0,0,0,0),(168,5,33,'Main',1,0,0,0),(168,5,44,'LeftSidebar',0,0,0,0),(168,5,45,'LeftSidebar',1,0,0,0),(168,5,46,'RightSidebar',0,0,0,0),(168,5,47,'RightSidebar',1,0,0,0),(168,5,48,'Main',0,0,0,0),(168,6,19,'Sub Nav',0,0,0,0),(168,6,33,'Main',1,0,0,0),(168,6,44,'LeftSidebar',0,0,0,0),(168,6,45,'LeftSidebar',1,0,0,0),(168,6,46,'RightSidebar',0,0,0,0),(168,6,47,'RightSidebar',1,0,0,0),(168,6,48,'Main',0,0,0,0),(169,1,19,'Sub Nav',0,0,0,0),(169,1,33,'Main',1,0,0,0),(169,1,44,'LeftSidebar',0,0,0,0),(169,1,45,'LeftSidebar',1,0,0,0),(169,1,46,'RightSidebar',0,0,0,0),(169,1,47,'RightSidebar',1,0,0,0),(169,1,48,'Main',0,0,0,0),(169,2,19,'Sub Nav',0,0,0,0),(169,2,33,'Main',1,0,0,0),(169,2,44,'LeftSidebar',0,0,0,0),(169,2,45,'LeftSidebar',1,0,0,0),(169,2,46,'RightSidebar',0,0,0,0),(169,2,47,'RightSidebar',1,0,0,0),(169,2,48,'Main',0,0,0,0),(169,3,19,'Sub Nav',0,0,0,0),(169,3,33,'Main',1,0,0,0),(169,3,44,'LeftSidebar',0,0,0,0),(169,3,45,'LeftSidebar',1,0,0,0),(169,3,46,'RightSidebar',0,0,0,0),(169,3,47,'RightSidebar',1,0,0,0),(169,3,48,'Main',0,0,0,0),(170,1,18,'Sub Nav',0,0,0,0),(170,1,31,'Main',1,0,0,0),(170,1,38,'RightSidebar',0,0,0,0),(170,1,39,'RightSidebar',1,0,0,0),(170,1,40,'Main',0,0,0,0),(170,2,18,'Sub Nav',0,0,0,0),(170,2,38,'RightSidebar',0,0,0,0),(170,2,39,'RightSidebar',1,0,0,0),(170,2,40,'Main',0,0,0,0),(170,2,85,'Main',1,1,0,0),(170,3,18,'Sub Nav',0,0,0,0),(170,3,38,'RightSidebar',0,0,0,0),(170,3,39,'RightSidebar',1,0,0,0),(170,3,40,'Main',0,0,0,0),(170,3,85,'Main',1,0,0,0),(171,1,18,'Sub Nav',0,0,0,0),(171,1,31,'Main',1,0,0,0),(171,1,38,'RightSidebar',0,0,0,0),(171,1,39,'RightSidebar',1,0,0,0),(171,1,40,'Main',0,0,0,0),(171,2,18,'Sub Nav',0,0,0,0),(171,2,38,'RightSidebar',0,0,0,0),(171,2,39,'RightSidebar',1,0,0,0),(171,2,40,'Main',0,0,0,0),(171,2,86,'Main',1,1,0,0),(172,1,18,'Sub Nav',0,0,0,0),(172,1,31,'Main',1,0,0,0),(172,1,38,'RightSidebar',0,0,0,0),(172,1,39,'RightSidebar',1,0,0,0),(172,1,40,'Main',0,0,0,0),(173,1,18,'Sub Nav',0,0,0,0),(173,1,31,'Main',1,0,0,0),(173,1,38,'RightSidebar',0,0,0,0),(173,1,39,'RightSidebar',1,0,0,0),(173,1,40,'Main',0,0,0,0),(174,1,18,'Sub Nav',0,0,0,0),(174,1,31,'Main',1,0,0,0),(174,1,38,'RightSidebar',0,0,0,0),(174,1,39,'RightSidebar',1,0,0,0),(174,1,40,'Main',0,0,0,0),(175,1,18,'Sub Nav',0,0,0,0),(175,1,31,'Main',1,0,0,0),(175,1,38,'RightSidebar',0,0,0,0),(175,1,39,'RightSidebar',1,0,0,0),(175,1,40,'Main',0,0,0,0),(176,1,18,'Sub Nav',0,0,0,0),(176,1,31,'Main',1,0,0,0),(176,1,38,'RightSidebar',0,0,0,0),(176,1,39,'RightSidebar',1,0,0,0),(176,1,40,'Main',0,0,0,0),(177,1,18,'Sub Nav',0,0,0,0),(177,1,31,'Main',1,0,0,0),(177,1,38,'RightSidebar',0,0,0,0),(177,1,39,'RightSidebar',1,0,0,0),(177,1,40,'Main',0,0,0,0),(178,1,18,'Sub Nav',0,0,0,0),(178,1,31,'Main',1,0,0,0),(178,1,38,'RightSidebar',0,0,0,0),(178,1,39,'RightSidebar',1,0,0,0),(178,1,40,'Main',0,0,0,0),(179,1,18,'Sub Nav',0,0,0,0),(179,1,31,'Main',1,0,0,0),(179,1,38,'RightSidebar',0,0,0,0),(179,1,39,'RightSidebar',1,0,0,0),(179,1,40,'Main',0,0,0,0),(180,1,18,'Sub Nav',0,0,0,0),(180,1,31,'Main',1,0,0,0),(180,1,38,'RightSidebar',0,0,0,0),(180,1,39,'RightSidebar',1,0,0,0),(180,1,40,'Main',0,0,0,0),(181,1,18,'Sub Nav',0,0,0,0),(181,1,31,'Main',1,0,0,0),(181,1,38,'RightSidebar',0,0,0,0),(181,1,39,'RightSidebar',1,0,0,0),(181,1,40,'Main',0,0,0,0),(182,1,19,'Sub Nav',0,0,0,0),(182,1,33,'Main',1,0,0,0),(182,1,44,'LeftSidebar',0,0,0,0),(182,1,45,'LeftSidebar',1,0,0,0),(182,1,46,'RightSidebar',0,0,0,0),(182,1,47,'RightSidebar',1,0,0,0),(182,1,48,'Main',0,0,0,0),(183,1,23,'Sub Nav',0,0,0,0),(183,1,32,'Main',1,0,0,0),(183,1,34,'Main',0,0,0,0),(184,1,23,'Sub Nav',0,0,0,0),(184,1,32,'Main',1,0,0,0),(184,1,34,'Main',0,0,0,0),(185,1,23,'Sub Nav',0,0,0,0),(185,1,32,'Main',1,0,0,0),(185,1,34,'Main',0,0,0,0),(186,1,23,'Sub Nav',0,0,0,0),(186,1,32,'Main',1,0,0,0),(186,1,34,'Main',0,0,0,0),(187,1,23,'Sub Nav',0,0,0,0),(187,1,32,'Main',1,0,0,0),(187,1,34,'Main',0,0,0,0),(187,2,23,'Sub Nav',0,0,0,0),(187,2,32,'Main',1,0,0,0),(187,2,34,'Main',0,0,0,0),(187,2,99,'Header Banner',0,1,0,0),(187,3,23,'Sub Nav',0,0,0,0),(187,3,32,'Main',1,0,0,0),(187,3,34,'Main',0,0,0,0),(187,3,99,'Header Banner',0,0,0,0),(187,4,23,'Sub Nav',0,0,0,0),(187,4,99,'Header Banner',0,0,0,0),(187,4,102,'Main',0,1,0,0),(188,1,23,'Sub Nav',0,0,0,0),(188,1,32,'Main',1,0,0,0),(188,1,34,'Main',0,0,0,0),(188,2,23,'Sub Nav',0,0,0,0),(188,2,32,'Main',1,0,0,0),(188,2,34,'Main',0,0,0,0),(188,2,130,'Main',2,1,0,0),(189,1,18,'Sub Nav',0,0,0,0),(189,1,31,'Main',1,0,0,0),(189,1,38,'RightSidebar',0,0,0,0),(189,1,39,'RightSidebar',1,0,0,0),(189,1,40,'Main',0,0,0,0),(189,2,18,'Sub Nav',0,0,0,0),(189,2,39,'RightSidebar',1,0,0,0),(189,2,103,'Main',0,1,0,0),(190,1,18,'Sub Nav',0,0,0,0),(190,1,31,'Main',1,0,0,0),(190,1,38,'RightSidebar',0,0,0,0),(190,1,39,'RightSidebar',1,0,0,0),(190,1,40,'Main',0,0,0,0),(191,1,18,'Sub Nav',0,0,0,0),(191,1,31,'Main',1,0,0,0),(191,1,38,'RightSidebar',0,0,0,0),(191,1,39,'RightSidebar',1,0,0,0),(191,1,40,'Main',0,0,0,0),(192,1,18,'Sub Nav',0,0,0,0),(192,1,31,'Main',1,0,0,0),(192,1,38,'RightSidebar',0,0,0,0),(192,1,39,'RightSidebar',1,0,0,0),(192,1,40,'Main',0,0,0,0),(193,1,18,'Sub Nav',0,0,0,0),(193,1,31,'Main',1,0,0,0),(193,1,38,'RightSidebar',0,0,0,0),(193,1,39,'RightSidebar',1,0,0,0),(193,1,40,'Main',0,0,0,0),(194,1,18,'Sub Nav',0,0,0,0),(194,1,31,'Main',1,0,0,0),(194,1,38,'RightSidebar',0,0,0,0),(194,1,39,'RightSidebar',1,0,0,0),(194,1,40,'Main',0,0,0,0),(195,1,18,'Sub Nav',0,0,0,0),(195,1,31,'Main',1,0,0,0),(195,1,38,'RightSidebar',0,0,0,0),(195,1,39,'RightSidebar',1,0,0,0),(195,1,40,'Main',0,0,0,0),(196,1,18,'Sub Nav',0,0,0,0),(196,1,31,'Main',1,0,0,0),(196,1,38,'RightSidebar',0,0,0,0),(196,1,39,'RightSidebar',1,0,0,0),(196,1,40,'Main',0,0,0,0),(197,1,18,'Sub Nav',0,0,0,0),(197,1,31,'Main',1,0,0,0),(197,1,38,'RightSidebar',0,0,0,0),(197,1,39,'RightSidebar',1,0,0,0),(197,1,40,'Main',0,0,0,0),(197,2,18,'Sub Nav',0,0,0,0),(197,2,38,'RightSidebar',0,0,0,0),(197,2,39,'RightSidebar',1,0,0,0),(197,2,40,'Main',0,0,0,0),(197,2,81,'Main',1,1,0,0),(197,3,18,'Sub Nav',0,0,0,0),(197,3,39,'RightSidebar',1,0,0,0),(197,3,40,'Main',0,0,0,0),(197,3,81,'Main',1,0,0,0),(197,3,94,'RightSidebar',0,1,0,0),(198,1,18,'Sub Nav',0,0,0,0),(198,1,31,'Main',1,0,0,0),(198,1,38,'RightSidebar',0,0,0,0),(198,1,39,'RightSidebar',1,0,0,0),(198,1,40,'Main',0,0,0,0),(198,2,18,'Sub Nav',0,0,0,0),(198,2,38,'RightSidebar',0,0,0,0),(198,2,39,'RightSidebar',1,0,0,0),(198,2,40,'Main',0,0,0,0),(198,2,83,'Main',1,1,0,0),(199,1,18,'Sub Nav',0,0,0,0),(199,1,31,'Main',1,0,0,0),(199,1,38,'RightSidebar',0,0,0,0),(199,1,39,'RightSidebar',1,0,0,0),(199,1,40,'Main',0,0,0,0),(199,2,18,'Sub Nav',0,0,0,0),(199,2,38,'RightSidebar',0,0,0,0),(199,2,39,'RightSidebar',1,0,0,0),(199,2,40,'Main',0,0,0,0),(199,2,139,'Main',1,1,0,0),(200,1,18,'Sub Nav',0,0,0,0),(200,1,31,'Main',1,0,0,0),(200,1,38,'RightSidebar',0,0,0,0),(200,1,39,'RightSidebar',1,0,0,0),(200,1,40,'Main',0,0,0,0),(200,2,18,'Sub Nav',0,0,0,0),(200,2,38,'RightSidebar',0,0,0,0),(200,2,39,'RightSidebar',1,0,0,0),(200,2,40,'Main',0,0,0,0),(200,2,84,'Main',1,1,0,0),(201,1,18,'Sub Nav',0,0,0,0),(201,1,31,'Main',1,0,0,0),(201,1,38,'RightSidebar',0,0,0,0),(201,1,39,'RightSidebar',1,0,0,0),(201,1,40,'Main',0,0,0,0),(201,2,18,'Sub Nav',0,0,0,0),(201,2,31,'Main',1,0,0,0),(201,2,38,'RightSidebar',0,0,0,0),(201,2,39,'RightSidebar',1,0,0,0),(201,2,40,'Main',0,0,0,0),(201,3,18,'Sub Nav',0,0,0,0),(201,3,38,'RightSidebar',0,0,0,0),(201,3,39,'RightSidebar',1,0,0,0),(201,3,40,'Main',0,0,0,0),(201,3,133,'Main',1,1,0,0),(201,4,18,'Sub Nav',0,0,0,0),(201,4,38,'RightSidebar',0,0,0,0),(201,4,39,'RightSidebar',1,0,0,0),(201,4,40,'Main',0,0,0,0),(201,4,135,'Main',1,1,0,0),(201,5,18,'Sub Nav',0,0,0,0),(201,5,38,'RightSidebar',0,0,0,0),(201,5,39,'RightSidebar',1,0,0,0),(201,5,40,'Main',0,0,0,0),(201,5,137,'Main',1,1,0,0),(202,1,18,'Sub Nav',0,0,0,0),(202,1,31,'Main',1,0,0,0),(202,1,38,'RightSidebar',0,0,0,0),(202,1,39,'RightSidebar',1,0,0,0),(202,1,40,'Main',0,0,0,0),(202,2,18,'Sub Nav',0,0,0,0),(202,2,38,'RightSidebar',0,0,0,0),(202,2,39,'RightSidebar',1,0,0,0),(202,2,40,'Main',0,0,0,0),(202,2,131,'Main',1,1,0,0),(203,1,18,'Sub Nav',0,0,0,0),(203,1,31,'Main',1,0,0,0),(203,1,38,'RightSidebar',0,0,0,0),(203,1,39,'RightSidebar',1,0,0,0),(203,1,40,'Main',0,0,0,0),(203,2,18,'Sub Nav',0,0,0,0),(203,2,38,'RightSidebar',0,0,0,0),(203,2,39,'RightSidebar',1,0,0,0),(203,2,40,'Main',0,0,0,0),(203,2,134,'Main',1,1,0,0),(203,3,18,'Sub Nav',0,0,0,0),(203,3,38,'RightSidebar',0,0,0,0),(203,3,39,'RightSidebar',1,0,0,0),(203,3,40,'Main',0,0,0,0),(203,3,136,'Main',1,1,0,0),(204,1,18,'Sub Nav',0,0,0,0),(204,1,31,'Main',1,0,0,0),(204,1,38,'RightSidebar',0,0,0,0),(204,1,39,'RightSidebar',1,0,0,0),(204,1,40,'Main',0,0,0,0),(205,1,18,'Sub Nav',0,0,0,0),(205,1,31,'Main',1,0,0,0),(205,1,38,'RightSidebar',0,0,0,0),(205,1,39,'RightSidebar',1,0,0,0),(205,1,40,'Main',0,0,0,0),(205,2,18,'Sub Nav',0,0,0,0),(205,2,38,'RightSidebar',0,0,0,0),(205,2,39,'RightSidebar',1,0,0,0),(205,2,40,'Main',0,0,0,0),(205,2,138,'Main',1,1,0,0),(206,1,54,'Main',0,1,0,0),(206,2,55,'Main',0,1,0,0),(206,3,56,'Main',0,1,0,0),(206,4,56,'Main',0,0,0,0),(206,5,56,'Main',0,0,0,0),(206,5,74,'Main',1,1,0,0),(206,6,74,'Main',1,0,0,0),(206,6,100,'Main',0,1,0,0),(206,7,100,'Main',0,0,0,0),(206,7,117,'Main',1,1,0,0),(206,8,117,'Main',1,0,0,0),(206,8,125,'Main',0,1,0,0),(207,1,59,'Main',0,1,0,0),(207,2,60,'Main',0,1,0,0),(207,3,61,'Main',0,1,0,0),(207,4,63,'Main',0,1,0,0),(207,5,64,'Main',0,1,0,0),(207,6,93,'Main',0,1,0,0),(207,7,93,'Main',0,0,0,0),(207,7,101,'Main',1,1,0,0),(207,8,93,'Main',0,0,0,0),(207,8,101,'Main',1,0,0,0),(207,9,93,'Main',1,0,0,0),(207,9,101,'Main',0,0,0,0),(207,10,93,'Main',1,0,0,0),(207,10,118,'Main',0,1,0,0),(207,11,93,'Main',1,0,0,0),(207,11,118,'Main',0,0,0,0),(208,1,62,'Main',0,1,0,0),(208,2,80,'Main',1,1,0,0),(208,3,120,'Main',1,1,0,0),(209,1,23,'Sub Nav',0,0,0,0),(209,1,32,'Main',1,0,0,0),(209,1,34,'Main',0,0,0,0),(209,2,23,'Sub Nav',0,0,0,0),(209,2,32,'Main',1,0,0,0),(209,2,34,'Main',0,0,0,0),(209,2,98,'Header Banner',0,1,0,0),(209,3,23,'Sub Nav',0,0,0,0),(209,3,98,'Header Banner',0,0,0,0),(209,4,23,'Sub Nav',0,0,0,0),(209,4,98,'Header Banner',0,0,0,0),(209,4,105,'RightSidebar',0,1,0,0),(209,4,106,'RightSidebar',1,1,0,0),(209,4,107,'Product Title',0,1,0,0),(209,4,108,'Product Images',0,1,0,0),(209,4,109,'Product Description',0,1,0,0),(209,4,110,'Product Images',1,1,0,0),(209,5,23,'Sub Nav',0,0,0,0),(209,5,98,'Header Banner',0,0,0,0),(209,5,105,'RightSidebar',0,0,0,0),(209,5,106,'RightSidebar',1,0,0,0),(209,5,108,'Product Images',0,0,0,0),(209,5,110,'Product Images',1,0,0,0),(209,5,111,'Product Description',0,1,0,0),(209,5,112,'Product Title',0,1,0,0),(209,6,23,'Sub Nav',0,0,0,0),(209,6,98,'Header Banner',0,0,0,0),(209,6,105,'RightSidebar',0,0,0,0),(209,6,106,'RightSidebar',1,0,0,0),(209,6,108,'Product Images',0,0,0,0),(209,6,110,'Product Images',1,0,0,0),(209,6,112,'Product Title',0,0,0,0),(209,6,113,'Product Description',0,1,0,0),(209,7,23,'Sub Nav',0,0,0,0),(209,7,98,'Header Banner',0,0,0,0),(209,7,105,'RightSidebar',0,0,0,0),(209,7,106,'RightSidebar',1,0,0,0),(209,7,108,'Product Images',0,0,0,0),(209,7,110,'Product Images',1,0,0,0),(209,7,112,'Product Title',0,0,0,0),(209,7,113,'Product Description',0,0,0,0),(209,7,114,'Main',0,1,0,0),(209,8,23,'Sub Nav',0,0,0,0),(209,8,98,'Header Banner',0,0,0,0),(209,8,105,'RightSidebar',0,0,0,0),(209,8,106,'RightSidebar',1,0,0,0),(209,8,108,'Product Images',0,0,0,0),(209,8,110,'Product Images',1,0,0,0),(209,8,112,'Product Title',0,0,0,0),(209,8,113,'Product Description',0,0,0,0),(209,8,114,'Main',0,0,0,0),(209,9,23,'Sub Nav',0,0,0,0),(209,9,98,'Header Banner',0,0,0,0),(209,9,105,'RightSidebar',0,0,0,0),(209,9,106,'RightSidebar',1,0,0,0),(209,9,108,'Product Images',0,0,0,0),(209,9,110,'Product Images',1,0,0,0),(209,9,112,'Product Title',0,0,0,0),(209,9,113,'Product Description',0,0,0,0),(209,9,115,'Main',0,1,0,0),(209,10,23,'Sub Nav',0,0,0,0),(209,10,98,'Header Banner',0,0,0,0),(209,10,105,'RightSidebar',0,0,0,0),(209,10,106,'RightSidebar',1,0,0,0),(209,10,108,'Product Images',0,0,0,0),(209,10,110,'Product Images',1,0,0,0),(209,10,112,'Product Title',0,0,0,0),(209,10,113,'Product Description',0,0,0,0),(209,10,115,'Main',0,0,0,0),(209,11,23,'Sub Nav',0,0,0,0),(209,11,98,'Header Banner',0,0,0,0),(209,11,105,'RightSidebar',0,0,0,0),(209,11,106,'RightSidebar',1,0,0,0),(209,11,108,'Product Images',0,0,0,0),(209,11,110,'Product Images',1,0,0,0),(209,11,112,'Product Title',0,0,0,0),(209,11,113,'Product Description',0,0,0,0),(209,11,116,'Main',0,1,0,0),(209,12,23,'Sub Nav',0,0,0,0),(209,12,98,'Header Banner',0,0,0,0),(209,12,105,'RightSidebar',0,0,0,0),(209,12,106,'RightSidebar',1,0,0,0),(209,12,108,'Product Images',0,0,0,0),(209,12,110,'Product Images',1,0,0,0),(209,12,112,'Product Title',0,0,0,0),(209,12,113,'Product Description',0,0,0,0),(209,12,116,'Main',0,0,0,0),(209,13,23,'Sub Nav',0,0,0,0),(209,13,98,'Header Banner',0,0,0,0),(209,13,105,'RightSidebar',0,0,0,0),(209,13,106,'RightSidebar',1,0,0,0),(209,13,108,'Product Images',0,0,0,0),(209,13,110,'Product Images',1,0,0,0),(209,13,112,'Product Title',0,0,0,0),(209,13,113,'Product Description',0,0,0,0),(209,13,116,'Main',0,0,0,0),(209,13,121,'Sub Nav',1,1,0,0),(209,14,23,'Sub Nav',0,0,0,0),(209,14,98,'Header Banner',0,0,0,0),(209,14,105,'RightSidebar',0,0,0,0),(209,14,106,'RightSidebar',1,0,0,0),(209,14,108,'Product Images',0,0,0,0),(209,14,110,'Product Images',1,0,0,0),(209,14,112,'Product Title',0,0,0,0),(209,14,113,'Product Description',0,0,0,0),(209,14,116,'Main',0,0,0,0),(209,14,122,'Sub Nav',1,1,0,0),(209,15,23,'Sub Nav',0,0,0,0),(209,15,98,'Header Banner',0,0,0,0),(209,15,106,'RightSidebar',1,0,0,0),(209,15,108,'Product Images',0,0,0,0),(209,15,110,'Product Images',1,0,0,0),(209,15,112,'Product Title',0,0,0,0),(209,15,113,'Product Description',0,0,0,0),(209,15,116,'Main',0,0,0,0),(209,15,122,'Sub Nav',1,0,0,0),(209,15,123,'RightSidebar',0,1,0,0),(211,1,23,'Sub Nav',0,0,0,0),(211,1,32,'Main',1,0,0,0),(211,1,34,'Main',0,0,0,0),(211,2,23,'Sub Nav',0,0,0,0),(211,2,32,'Main',1,0,0,0),(211,2,34,'Main',0,0,0,0),(211,3,23,'Sub Nav',0,0,0,0),(211,4,23,'Sub Nav',0,0,0,0),(211,4,119,'Main',0,1,0,0),(211,5,23,'Sub Nav',0,0,0,0),(211,5,119,'Main',0,0,0,0),(212,1,18,'Sub Nav',0,0,0,0),(212,1,31,'Main',1,0,0,0),(212,1,38,'RightSidebar',0,0,0,0),(212,1,39,'RightSidebar',1,0,0,0),(212,1,40,'Main',0,0,0,0),(212,2,18,'Sub Nav',0,0,0,0),(212,2,31,'Main',1,0,0,0),(212,2,38,'RightSidebar',0,0,0,0),(212,2,39,'RightSidebar',1,0,0,0),(212,2,40,'Main',0,0,0,0),(216,1,18,'Sub Nav',0,0,0,0),(216,1,31,'Main',1,0,0,0),(216,1,38,'RightSidebar',0,0,0,0),(216,1,39,'RightSidebar',1,0,0,0),(216,1,40,'Main',0,0,0,0),(217,1,18,'Sub Nav',0,0,0,0),(217,1,31,'Main',1,0,0,0),(217,1,38,'RightSidebar',0,0,0,0),(217,1,39,'RightSidebar',1,0,0,0),(217,1,40,'Main',0,0,0,0),(218,1,18,'Sub Nav',0,0,0,0),(218,1,31,'Main',1,0,0,0),(218,1,38,'RightSidebar',0,0,0,0),(218,1,39,'RightSidebar',1,0,0,0),(218,1,40,'Main',0,0,0,0),(219,1,18,'Sub Nav',0,0,0,0),(219,1,31,'Main',1,0,0,0),(219,1,38,'RightSidebar',0,0,0,0),(219,1,39,'RightSidebar',1,0,0,0),(219,1,40,'Main',0,0,0,0),(219,2,18,'Sub Nav',0,0,0,0),(219,2,38,'RightSidebar',0,0,0,0),(219,2,39,'RightSidebar',1,0,0,0),(219,2,40,'Main',0,0,0,0),(219,2,140,'Main',1,1,0,0);
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
INSERT INTO `CollectionVersionRelatedEdits` VALUES (1,2,142,1),(1,5,206,1),(1,6,206,2),(1,7,142,3),(1,8,206,4),(1,9,207,1),(1,10,207,2),(1,11,207,3),(1,12,208,1),(1,13,207,4),(1,14,207,5),(1,15,142,4),(1,16,142,5),(1,17,142,6),(1,20,206,5),(1,21,142,7),(1,24,208,2),(1,31,207,6),(1,34,207,7),(1,35,207,8),(113,1,142,2),(162,4,208,3),(162,5,207,11),(209,12,206,7);
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
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2012-08-22 16:38:12','2012-08-22 16:38:12','Version 1',0,0,1,NULL,NULL),(1,2,'Home','home','','2012-08-22 16:38:12','2012-08-30 12:46:17','Version 1',0,0,1,1,NULL),(1,3,'Home','home','','2012-08-22 16:38:12','2012-08-30 13:37:02','Version 1',0,0,1,1,NULL),(1,4,'Home','home','','2012-08-22 16:38:12','2012-08-30 13:38:36','New Version 4',0,0,1,1,NULL),(1,5,'Home','home','','2012-08-22 16:38:12','2012-09-04 15:11:35','New Version 4',0,0,1,1,NULL),(1,6,'Home','home','','2012-08-22 16:38:12','2012-09-04 15:23:24','Version 6',0,0,1,1,NULL),(1,7,'Home','home','','2012-08-22 16:38:12','2012-09-05 10:13:02','New Version 7',0,0,1,1,NULL),(1,8,'Home','home','','2012-08-22 16:38:12','2012-09-05 10:14:42','New Version 8',0,0,1,1,NULL),(1,9,'Home','home','','2012-08-22 16:38:12','2012-09-05 10:23:38','New Version 8',0,0,1,1,NULL),(1,10,'Home','home','','2012-08-22 16:38:12','2012-09-05 10:29:37','New Version 8',0,0,1,1,NULL),(1,11,'Home','home','','2012-08-22 16:38:12','2012-09-05 10:33:13','New Version 11',0,0,1,1,NULL),(1,12,'Home','home','','2012-08-22 16:38:12','2012-09-05 10:59:54','New Version 11',0,0,1,1,NULL),(1,13,'Home','home','','2012-08-22 16:38:12','2012-09-05 11:03:44','New Version 11',0,0,1,1,NULL),(1,14,'Home','home','','2012-08-22 16:38:12','2012-09-05 11:16:53','New Version 11',0,0,1,1,NULL),(1,15,'Home','home','','2012-08-22 16:38:12','2012-09-05 11:29:00','New Version 11',0,0,1,1,NULL),(1,16,'Home','home','','2012-08-22 16:38:12','2012-09-05 11:32:25','New Version 11',0,0,1,1,NULL),(1,17,'Home','home','','2012-08-22 16:38:12','2012-09-05 11:37:26','New Version 11',0,0,1,1,NULL),(1,18,'Home','home','','2012-08-22 16:38:12','2012-09-05 12:24:25','New Version 18',0,0,1,1,NULL),(1,19,'Home','home','','2012-08-22 16:38:12','2012-09-05 12:26:02','New Version 19',0,0,1,1,NULL),(1,20,'Home','home','','2012-08-22 16:38:12','2012-09-05 12:55:21','Version 20',0,0,1,1,NULL),(1,21,'Home','home','','2012-08-22 16:38:12','2012-09-06 17:17:42','Version 20',0,0,1,1,NULL),(1,22,'Home','home','','2012-08-22 16:38:12','2012-09-07 14:24:33','Version 20',0,0,1,1,NULL),(1,23,'Home','home','','2012-08-22 16:38:12','2012-09-10 17:47:49','Version 20',0,0,1,1,NULL),(1,24,'Home','home','','2012-08-22 16:38:12','2012-09-10 18:04:16','Version 20',0,0,1,1,NULL),(1,25,'Home','home','','2012-08-22 16:38:12','2012-09-10 22:04:58','Version 20',0,0,1,1,NULL),(1,26,'Home','home','','2012-08-22 16:38:12','2012-09-10 22:07:12','Version 20',0,0,1,1,NULL),(1,27,'Home','home','','2012-08-22 16:38:12','2012-09-10 22:14:55','Version 20',0,0,1,1,NULL),(1,28,'Home','home','','2012-08-22 16:38:12','2012-09-10 22:15:52','Version 20',0,0,1,1,NULL),(1,29,'Home','home','','2012-08-22 16:38:12','2012-09-10 22:16:41','Version 20',0,0,1,1,NULL),(1,30,'Home','home','','2012-08-22 16:38:12','2012-09-10 22:18:41','Version 20',0,0,1,1,NULL),(1,31,'Home','home','','2012-08-22 16:38:12','2012-09-10 22:40:41','Version 20',0,0,1,1,NULL),(1,32,'Home','home','','2012-08-22 16:38:12','2012-09-11 19:57:06','New Version 32',0,0,1,1,NULL),(1,33,'Home','home','','2012-08-22 16:38:12','2012-09-11 19:58:08','New Version 33',0,0,1,1,NULL),(1,34,'Home','home','','2012-08-22 16:38:12','2012-09-12 16:49:45','New Version 33',0,0,1,1,NULL),(1,35,'Home','home','','2012-08-22 16:38:12','2012-09-12 16:50:02','Version 35',0,0,1,1,NULL),(1,36,'Home','home','','2012-08-22 16:38:00','2012-09-19 22:08:49','New Version 36',1,0,1,1,NULL),(2,1,'Dashboard','dashboard','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(3,1,'Composer','composer','Write for your site.','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(4,1,'Write','write','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(5,1,'Drafts','drafts','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(7,1,'Full Sitemap','full','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(8,1,'Flat View','explore','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(9,1,'Page Search','search','','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(10,1,'Files','files','All documents and images.','2012-08-22 16:38:15','2012-08-22 16:38:15','Initial Version',1,1,1,NULL,NULL),(11,1,'File Manager','search','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(12,1,'Attributes','attributes','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(13,1,'File Sets','sets','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(14,1,'Add File Set','add_set','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(16,1,'Search Users','search','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(17,1,'User Groups','groups','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(18,1,'Attributes','attributes','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(19,1,'Add User','add','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(20,1,'Add Group','add_group','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(21,1,'Reports','reports','Get data from forms and logs.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(22,1,'Statistics','statistics','View your site activity.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(23,1,'Form Results','forms','Get submission data.','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(24,1,'Surveys','surveys','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(25,1,'Logs','logs','','2012-08-22 16:38:16','2012-08-22 16:38:16','Initial Version',1,1,1,NULL,NULL),(26,1,'Pages & Themes','pages','Reskin your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(27,1,'Themes','themes','Reskin your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(28,1,'Add','add','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(29,1,'Inspect','inspect','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(30,1,'Customize','customize','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(31,1,'Page Types','types','What goes in your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(32,1,'Add Page Type','add','Add page types to your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(33,1,'Attributes','attributes','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(34,1,'Single Pages','single','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(35,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(36,1,'Stacks','stacks','Share content across your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(37,1,'Stack List','list','','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(38,1,'Block Types','types','Manage the installed block types in your site.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(39,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2012-08-22 16:38:17','2012-08-22 16:38:17','Initial Version',1,1,1,NULL,NULL),(40,1,'Dashboard','news','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(41,1,'Add Functionality','install','Install add-ons & themes.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(42,1,'Update Add-Ons','update','Update your installed packages.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(43,1,'Connect to the Community','connect','Connect to the concrete5 community.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(44,1,'Get More Themes','themes','Download themes from concrete5.org.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(45,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(46,1,'System & Settings','system','Secure and setup your site.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(47,1,'Basics','basics','Basic information about your website.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(48,1,'Site Name','site_name','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(49,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(50,1,'Rich Text Editor','editor','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(51,1,'Languages','multilingual','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(52,1,'Time Zone','timezone','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(53,1,'Interface Preferences','interface','','2012-08-22 16:38:18','2012-08-22 16:38:18','Initial Version',1,1,1,NULL,NULL),(54,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(55,1,'Pretty URLs','urls','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(56,1,'Tracking Codes','tracking_codes','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(57,1,'Statistics','statistics','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(58,1,'Search Index','search_index','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(59,1,'Optimization','optimization','Keep your site running well.','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(60,1,'Cache & Speed Settings','cache','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(61,1,'Clear Cache','clear_cache','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(62,1,'Automated Jobs','jobs','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(63,1,'Permissions & Access','permissions','Control who sees and edits your site.','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(64,1,'Site Access','site','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(65,1,'File Manager Permissions','files','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(66,1,'Allowed File Types','file_types','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(67,1,'Task Permissions','tasks','','2012-08-22 16:38:19','2012-08-22 16:38:19','Initial Version',1,1,1,NULL,NULL),(68,1,'IP Blacklist','ip_blacklist','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(69,1,'Captcha Setup','captcha','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(70,1,'Spam Control','antispam','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(71,1,'Maintenance Mode','maintenance_mode','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(72,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(73,1,'Login Destination','postlogin','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(74,1,'Public Profiles','profiles','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(75,1,'Public Registration','public_registration','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(76,1,'Email','mail','Control how your site send and processes mail.','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(77,1,'SMTP Method','method','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(78,1,'Email Importers','importers','','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(79,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(80,1,'Sets','sets','Group attributes into sets for easier organization','2012-08-22 16:38:20','2012-08-22 16:38:20','Initial Version',1,1,1,NULL,NULL),(81,1,'Types','types','Choose which attribute types are available for different items.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(82,1,'Environment','environment','Advanced settings for web developers.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(83,1,'Environment Information','info','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(84,1,'Debug Settings','debug','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(85,1,'Logging Settings','logging','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(86,1,'File Storage Locations','file_storage_locations','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(87,1,'Backup & Restore','backup_restore','Backup or restore your website.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(88,1,'Backup Database','backup','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(89,1,'Update concrete5','update','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(90,1,'Database XML','database','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(91,1,'Composer','composer','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(92,1,'',NULL,NULL,'2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,NULL,NULL,NULL),(93,1,'',NULL,NULL,'2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,NULL,NULL,NULL),(94,1,'',NULL,NULL,'2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,NULL,NULL,NULL),(95,1,'Customize Dashboard Home','home','','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(96,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2012-08-22 16:38:21','2012-08-22 16:38:21','Initial Version',1,1,1,NULL,NULL),(97,1,'Drafts','!drafts','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(98,1,'Trash','!trash','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(99,1,'Stacks','!stacks','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(100,1,'Login','login','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(101,1,'Register','register','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(102,1,'Profile','profile','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(103,1,'Edit','edit','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(104,1,'Avatar','avatar','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(105,1,'Messages','messages','','2012-08-22 16:38:25','2012-08-22 16:38:25','Initial Version',1,1,1,NULL,NULL),(106,1,'Friends','friends','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(107,1,'Page Not Found','page_not_found','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(108,1,'Page Forbidden','page_forbidden','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(109,1,'Download File','download_file','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(110,1,'Members','members','','2012-08-22 16:38:26','2012-08-22 16:38:26','Initial Version',1,1,1,NULL,NULL),(111,1,'',NULL,NULL,'2012-08-22 16:38:27','2012-08-22 16:38:27','Version 1',1,0,NULL,1,NULL),(112,1,'',NULL,NULL,'2012-08-30 09:51:35','2012-08-30 09:51:35','Initial Version',1,0,NULL,1,NULL),(113,1,'',NULL,NULL,'2012-08-30 09:51:52','2012-08-30 09:51:52','Initial Version',1,0,NULL,1,NULL),(114,1,'',NULL,NULL,'2012-08-30 09:52:29','2012-08-30 09:52:29','Initial Version',1,0,NULL,1,NULL),(115,1,'Products','products','','2012-08-30 10:19:00','2012-08-30 10:20:06','Initial Version',1,0,1,1,NULL),(116,1,'Our Expertise','our-expertise','','2012-08-30 10:20:00','2012-08-30 10:20:21','Initial Version',1,0,1,1,NULL),(117,1,'News & Events','news-and-events','','2012-08-30 10:20:00','2012-08-30 10:20:34','Initial Version',1,0,1,1,NULL),(118,1,'Our Partners','our-partners','','2012-08-30 10:20:00','2012-08-30 10:20:45','Initial Version',1,0,1,1,NULL),(119,1,'About','about','','2012-08-30 10:20:00','2012-08-30 10:20:54','Initial Version',1,0,1,1,NULL),(120,1,'Support','support','','2012-08-30 10:20:00','2012-08-30 10:21:03','Initial Version',1,0,1,1,NULL),(121,1,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 10:21:00','2012-08-30 10:21:33','Initial Version',1,0,1,1,NULL),(122,1,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 10:21:00','2012-08-30 10:21:49','Initial Version',1,0,1,1,NULL),(123,1,'Target Markets','target-markets','','2012-08-30 10:21:00','2012-08-30 10:22:01','Initial Version',1,0,1,1,NULL),(124,1,'Innovation','innovation','','2012-08-30 10:22:00','2012-08-30 10:22:10','Initial Version',1,0,1,1,NULL),(125,1,'Professional Services','professional-services','','2012-08-30 10:22:00','2012-08-30 10:22:23','Initial Version',1,0,1,1,NULL),(126,1,'Research & Development','research-and-development','','2012-08-30 10:22:00','2012-08-30 10:22:35','Initial Version',1,0,1,1,NULL),(127,1,'Press Releases','press-releases','','2012-08-30 10:22:00','2012-08-30 10:22:47','Initial Version',1,0,1,1,NULL),(128,1,'In the News','in-the-news','','2012-08-30 10:22:00','2012-08-30 10:22:57','Initial Version',1,0,1,1,NULL),(129,1,'Events','events','','2012-08-30 10:23:00','2012-08-30 10:23:18','Initial Version',1,0,1,1,NULL),(130,1,'Media Center','media-center','','2012-08-30 10:23:00','2012-08-30 10:23:29','Initial Version',1,0,1,1,NULL),(131,1,'Mobile Operators','mobile-operators','','2012-08-30 10:23:00','2012-08-30 10:23:41','Initial Version',1,0,1,1,NULL),(132,1,'System Integrators','system-integrators','','2012-08-30 10:23:00','2012-08-30 10:23:55','Initial Version',1,0,1,1,NULL),(133,1,'Application Service Providers','application-service-providers','','2012-08-30 10:23:00','2012-08-30 10:24:15','Initial Version',1,0,1,1,NULL),(134,1,'Manufacturing & Engineering','manufacturing-and-engineering','','2012-08-30 10:24:00','2012-08-30 10:24:35','Initial Version',1,0,1,1,NULL),(135,1,'About Us','about-us','','2012-08-30 10:24:00','2012-08-30 10:24:52','Initial Version',1,0,1,1,NULL),(136,1,'Management Team','management-team','','2012-08-30 10:24:00','2012-08-30 10:25:08','Initial Version',1,0,1,1,NULL),(137,1,'Management Team','management-team','','2012-08-30 10:24:00','2012-08-30 10:25:08','Initial Version',0,0,1,1,NULL),(137,2,'Investors','investors','','2012-08-30 10:24:00','2012-08-30 10:25:29','New Version 2',1,0,1,1,NULL),(138,1,'Careers','careers','','2012-08-30 10:25:00','2012-08-30 10:25:39','Initial Version',1,0,1,1,NULL),(139,1,'Contact Us','contact-us','','2012-08-30 10:25:00','2012-08-30 10:25:49','Initial Version',1,0,1,1,NULL),(140,1,'Main','main','','2012-08-30 10:25:00','2012-08-30 10:26:02','Initial Version',1,0,1,1,NULL),(141,1,'Certification','certification','','2012-08-30 10:26:00','2012-08-30 10:26:11','Initial Version',1,0,1,1,NULL),(142,1,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-08-30 12:46:06','Initial Version',0,0,1,1,NULL),(142,2,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-08-30 12:53:38','New Version 2',0,0,1,1,NULL),(142,3,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-09-05 10:13:02','New Version 3',0,0,1,1,NULL),(142,4,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-09-05 11:29:00','New Version 4',0,0,1,1,NULL),(142,5,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-09-05 11:32:25','New Version 5',0,0,1,1,NULL),(142,6,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-09-05 11:37:26','New Version 6',0,0,1,1,NULL),(142,7,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-09-06 17:17:42','New Version 7',0,0,1,1,NULL),(142,8,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-09-06 17:18:21','Version 8',0,0,1,1,NULL),(142,9,'Header Nav','header-nav',NULL,'2012-08-30 12:46:06','2012-09-06 17:18:59','Version 9',1,0,1,1,NULL),(143,1,'Side Nav','side-nav',NULL,'2012-08-30 12:47:33','2012-08-30 12:47:33','Initial Version',1,1,1,NULL,NULL),(144,1,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 12:49:41','Version 1',0,0,1,1,NULL),(144,2,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 14:05:23','Version 2',0,0,1,1,NULL),(144,3,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 14:11:39','Version 3',0,0,1,1,NULL),(144,4,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-08-30 14:17:05','Version 4',0,0,1,1,NULL),(144,5,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-09-11 19:45:32','Version 5',0,0,1,1,NULL),(144,6,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-09-28 17:05:31','Version 6',1,0,1,1,NULL),(144,7,'Sub Nav','sub-nav',NULL,'2012-08-30 12:49:41','2012-09-28 17:06:03','New Version 7',0,1,1,NULL,NULL),(145,1,'',NULL,NULL,'2012-08-30 14:02:54','2012-08-30 14:02:54','Initial Version',1,0,NULL,1,NULL),(146,1,'Products','products','','2012-08-30 14:03:00','2012-08-30 14:03:41','Version 1',0,0,1,1,NULL),(146,2,'Products','products','','2012-08-30 14:03:00','2012-08-30 14:18:35','Version 2',1,0,1,1,NULL),(147,1,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:03:00','2012-08-30 14:04:01','Initial Version',0,0,1,1,NULL),(147,2,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:03:00','2012-08-30 14:19:00','Initial Version',1,0,1,1,NULL),(148,1,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 14:04:00','2012-08-30 14:04:17','Initial Version',0,0,1,1,NULL),(148,2,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 14:04:00','2012-08-30 14:19:22','Initial Version',1,0,1,1,NULL),(149,1,'MIFI Intelligent Mobile Hotspots','mifi-intelligent-mobile-hotspots','','2012-08-30 14:21:00','2012-08-30 14:22:23','Initial Version',1,0,1,1,NULL),(150,1,'USB Devices','usb-devices','','2012-08-30 14:22:00','2012-08-30 14:22:36','Initial Version',1,0,1,1,NULL),(151,1,'Data Cards Modems','data-cards-modems','','2012-08-30 14:22:00','2012-08-30 14:22:52','Initial Version',1,0,1,1,NULL),(152,1,'Embedded Modules','embedded-modules','','2012-08-30 14:22:00','2012-08-30 14:23:04','Initial Version',1,0,1,1,NULL),(153,1,'Software','software','','2012-08-30 14:23:00','2012-08-30 14:23:15','Initial Version',1,0,1,1,NULL),(154,1,'Connection Manager','connection-manager','','2012-08-30 14:23:00','2012-08-30 14:23:29','Initial Version',1,0,1,1,NULL),(155,1,'SDK','sdk','','2012-08-30 14:23:00','2012-08-30 14:23:39','Initial Version',1,0,1,1,NULL),(156,1,'Android RIL','android-ril','','2012-08-30 14:23:00','2012-08-30 14:23:49','Initial Version',1,0,1,1,NULL),(157,1,'Mobile Tracking','mobile-tracking','','2012-08-30 14:23:00','2012-08-30 14:24:08','Initial Version',1,0,1,1,NULL),(158,1,'Assets Tracking','assets-tracking','','2012-08-30 14:24:00','2012-08-30 14:24:20','Initial Version',1,0,1,1,NULL),(159,1,'Workforce Monitoring','workforce-monitoring','','2012-08-30 14:24:00','2012-08-30 14:24:35','Initial Version',1,0,1,1,NULL),(160,1,'Telemetry','telemetry','','2012-08-30 14:24:00','2012-08-30 14:24:49','Initial Version',1,0,1,1,NULL),(161,1,'Service Delivery Platform','service-delivery-platform','','2012-08-30 14:24:00','2012-08-30 14:25:02','Initial Version',1,0,1,1,NULL),(162,1,'Products','products','','2012-08-30 14:47:00','2012-08-30 14:47:36','Initial Version',0,0,1,1,NULL),(162,2,'Products','products','','2012-08-30 14:47:00','2012-09-11 19:58:32','Version 2',0,0,1,1,NULL),(162,3,'Products','products','','2012-08-30 14:47:00','2012-09-12 17:13:54','New Version 3',0,0,1,1,NULL),(162,4,'Products','products','','2012-08-30 14:47:00','2012-09-12 13:44:53','New Version 3',0,0,1,1,NULL),(162,5,'Products','products','','2012-08-30 14:47:00','2012-09-12 13:45:58','New Version 5',0,0,1,1,NULL),(162,6,'Products','products','','2012-08-30 14:47:00','2012-09-19 21:14:05','New Version 6',1,0,1,1,NULL),(163,1,'Our Expertise','our-expertise','','2012-08-30 14:47:00','2012-08-30 14:47:47','Initial Version',1,0,1,1,NULL),(164,1,'News & Events','news-and-events','','2012-08-30 14:47:00','2012-08-30 14:47:59','Initial Version',1,0,1,1,NULL),(165,1,'Our Partners','our-partners','','2012-08-30 14:48:00','2012-08-30 14:48:10','Initial Version',0,0,1,1,NULL),(165,2,'Solutions','our-partners','','2012-08-30 14:48:00','2012-09-11 21:12:08','New Version 2',1,0,1,1,NULL),(166,1,'About','about','','2012-08-30 14:48:00','2012-08-30 14:48:19','Initial Version',0,0,1,1,NULL),(166,2,'About','about','','2012-08-30 14:48:00','2012-09-20 00:19:22','Version 2',0,0,1,1,NULL),(166,3,'About','about','','2012-08-30 14:48:00','2012-09-20 00:24:37','New Version 3',0,0,1,1,NULL),(166,4,'About','about','','2012-08-30 14:48:00','2012-09-20 00:25:42','New Version 4',1,0,1,1,NULL),(167,1,'Support','support','','2012-08-30 14:48:00','2012-08-30 14:48:36','Initial Version',1,0,1,1,NULL),(168,1,'Main','main','','2012-08-30 14:48:00','2012-08-30 14:48:48','Initial Version',0,0,1,1,NULL),(168,2,'Main','main','','2012-08-30 14:48:00','2012-09-11 23:51:03','New Version 2',0,0,1,1,NULL),(168,3,'Main','main','','2012-08-30 14:48:00','2012-09-19 21:06:48','New Version 3',0,0,1,1,NULL),(168,4,'Main','main','','2012-08-30 14:48:00','2012-09-26 18:38:31','New Version 4',0,0,1,1,NULL),(168,5,'Main','main','','2012-08-30 14:48:00','2012-09-26 18:39:26','New Version 5',0,0,1,1,NULL),(168,6,'Main','main','','2012-08-30 14:48:00','2012-09-26 18:40:03','New Version 6',1,0,1,1,NULL),(169,1,'Certification','certification','','2012-08-30 14:48:00','2012-08-30 14:49:04','Initial Version',0,0,1,1,NULL),(169,2,'Certification','certification','','2012-08-30 14:48:00','2012-09-11 23:51:16','New Version 2',0,0,1,1,NULL),(169,3,'Certification','certification','','2012-08-30 14:48:00','2012-09-19 21:07:02','New Version 3',1,0,1,1,NULL),(170,1,'About Us','about-us','','2012-08-30 14:49:00','2012-08-30 14:49:26','Initial Version',0,0,1,1,NULL),(170,2,'About Us','about-us','','2012-08-30 14:49:00','2012-09-10 18:57:43','Initial Version',0,0,1,1,NULL),(170,3,'About Us','about-us','','2012-08-30 14:49:00','2012-09-19 23:18:58','New Version 3',1,0,1,1,NULL),(171,1,'Management Team','management-team','','2012-08-30 14:49:00','2012-08-30 14:49:38','Initial Version',0,0,1,1,NULL),(171,2,'Management Team','management-team','','2012-08-30 14:49:00','2012-09-10 18:58:53','Initial Version',1,0,1,1,NULL),(172,1,'Investors','investors','','2012-08-30 14:49:00','2012-08-30 14:49:51','Initial Version',1,0,1,1,NULL),(173,1,'Careers','careers','','2012-08-30 14:49:00','2012-08-30 14:50:03','Initial Version',1,0,1,1,NULL),(174,1,'Contact Us','contact-us','','2012-08-30 14:50:00','2012-08-30 14:50:18','Initial Version',1,0,1,1,NULL),(175,1,'Mobile Operators','mobile-operators','','2012-08-30 14:50:00','2012-08-30 14:50:41','Initial Version',1,0,1,1,NULL),(176,1,'System Integrations','system-integrations','','2012-08-30 14:50:00','2012-08-30 14:51:03','Initial Version',1,0,1,1,NULL),(177,1,'Application Service Providers','application-service-providers','','2012-08-30 14:51:00','2012-08-30 14:51:18','Initial Version',1,0,1,1,NULL),(178,1,'Manufacturing & Engineering','manufacturing-and-engineering','','2012-08-30 14:51:00','2012-08-30 14:51:44','Initial Version',1,0,1,1,NULL),(179,1,'Press Releases','press-releases','','2012-08-30 14:51:00','2012-08-30 14:52:04','Initial Version',1,0,1,1,NULL),(180,1,'In the News','in-the-news','','2012-08-30 14:52:00','2012-08-30 14:52:15','Initial Version',1,0,1,1,NULL),(181,1,'Events','events','','2012-08-30 14:52:00','2012-08-30 14:52:25','Initial Version',1,0,1,1,NULL),(182,1,'Media Center','media-center','','2012-08-30 14:52:00','2012-08-30 14:52:36','Initial Version',1,0,1,1,NULL),(183,1,'Target Markets','target-markets','','2012-08-30 14:52:00','2012-08-30 14:53:01','Initial Version',1,0,1,1,NULL),(184,1,'Innovation','innovation','','2012-08-30 14:53:00','2012-08-30 14:53:13','Initial Version',1,0,1,1,NULL),(185,1,'Professional Services','professional-services','','2012-08-30 14:53:00','2012-08-30 14:53:25','Initial Version',1,0,1,1,NULL),(186,1,'Research & Development','research-and-development','','2012-08-30 14:53:00','2012-08-30 14:53:43','Initial Version',1,0,1,1,NULL),(187,1,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:53:00','2012-08-30 14:54:02','Version 1',0,0,1,1,NULL),(187,2,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:53:00','2012-09-11 20:37:12','Version 1',0,0,1,1,NULL),(187,3,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:53:00','2012-09-11 20:37:29','New Version 3',0,0,1,1,NULL),(187,4,'Mobile Broadband Solutions','mobile-broadband-solutions','','2012-08-30 14:53:00','2012-09-12 17:10:43','Version 4',1,0,1,1,NULL),(188,1,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 14:54:00','2012-08-30 14:54:21','Initial Version',0,0,1,1,NULL),(188,2,'Integrated M2M Solutions','integrated-m2m-solutions','','2012-08-30 14:54:00','2012-09-28 17:02:41','Initial Version',1,0,1,1,NULL),(189,1,'MIFI Intelligent Mobile Hotspots','mifi-intelligent-mobile-hotspots','','2012-08-30 14:54:00','2012-08-30 14:55:15','Initial Version',0,0,1,1,NULL),(189,2,'MIFI Intelligent Mobile Hotspots','mifi-intelligent-mobile-hotspots','','2012-08-30 14:54:00','2012-09-12 17:11:23','Initial Version',1,0,1,1,NULL),(190,1,'USB Devices','usb-devices','','2012-08-30 14:55:00','2012-08-30 14:55:30','Initial Version',1,0,1,1,NULL),(191,1,'Data Card Modems','data-card-modems','','2012-08-30 14:55:00','2012-08-30 14:55:43','Initial Version',1,0,1,1,NULL),(192,1,'Embedded Modules','embedded-modules','','2012-08-30 14:55:00','2012-08-30 14:55:55','Initial Version',1,0,1,1,NULL),(193,1,'Software','software','','2012-08-30 14:56:00','2012-08-30 14:56:06','Initial Version',1,0,1,1,NULL),(194,1,'Connection Manager','connection-manager','','2012-08-30 14:56:00','2012-08-30 14:56:25','Initial Version',1,0,1,1,NULL),(195,1,'SDK','sdk','','2012-08-30 14:56:00','2012-08-30 14:56:40','Initial Version',1,0,1,1,NULL),(196,1,'Android RIL','android-ril','','2012-08-30 14:56:00','2012-08-30 14:56:50','Initial Version',1,0,1,1,NULL),(197,1,'Mobile Tracking','mobile-tracking','','2012-08-30 14:56:00','2012-08-30 14:57:07','Initial Version',0,0,1,1,NULL),(197,2,'Mobile Tracking','mobile-tracking','','2012-08-30 14:56:00','2012-09-10 18:30:56','Version 2',0,0,1,1,NULL),(197,3,'Mobile Tracking','mobile-tracking','','2012-08-30 14:56:00','2012-09-11 18:18:47','Version 2',1,0,1,1,NULL),(198,1,'Asset Tracking','asset-tracking','','2012-08-30 14:57:00','2012-08-30 14:57:22','Initial Version',0,0,1,1,NULL),(198,2,'Asset Tracking','asset-tracking','','2012-08-30 14:57:00','2012-09-10 18:55:49','Initial Version',1,0,1,1,NULL),(199,1,'Workforce Monitoring','workforce-monitoring','','2012-08-30 14:57:00','2012-08-30 14:57:35','Initial Version',0,0,1,1,NULL),(199,2,'Workforce Monitoring','workforce-monitoring','','2012-08-30 14:57:00','2012-09-28 17:20:17','Initial Version',1,0,1,1,NULL),(200,1,'Telemetry','telemetry','','2012-08-30 14:57:00','2012-08-30 14:57:48','Initial Version',0,0,1,1,NULL),(200,2,'Telemetry','telemetry','','2012-08-30 14:57:00','2012-09-10 18:56:44','Initial Version',1,0,1,1,NULL),(201,1,'Service Delivery Platform','service-delivery-platform','','2012-08-30 14:57:00','2012-08-30 14:58:04','Initial Version',0,0,1,1,NULL),(201,2,'Service Enablements Platform','service-delivery-platform','','2012-08-30 14:57:00','2012-09-28 16:53:43','New Version 2',0,0,1,1,NULL),(201,3,'Service Enablements Platform','service-delivery-platform','','2012-08-30 14:57:00','2012-09-28 17:09:47','New Version 2',0,0,1,1,NULL),(201,4,'Service Enablements Platform','service-delivery-platform','','2012-08-30 14:57:00','2012-09-28 17:13:00','New Version 2',0,0,1,1,NULL),(201,5,'Service Enablements Platform','service-delivery-platform','','2012-08-30 14:57:00','2012-09-28 17:14:19','New Version 2',1,0,1,1,NULL),(202,1,'Professional Services','professional-services','','2012-08-30 14:58:00','2012-08-30 14:58:18','Initial Version',0,0,1,1,NULL),(202,2,'Professional Services','professional-services','','2012-08-30 14:58:00','2012-09-28 17:04:28','Initial Version',1,0,1,1,NULL),(203,1,'CMS','cms','','2012-08-30 14:58:00','2012-08-30 14:58:29','Initial Version',0,0,1,1,NULL),(203,2,'CMS','cms','','2012-08-30 14:58:00','2012-09-28 17:11:06','Initial Version',1,0,1,1,NULL),(203,3,'CMS','cms','','2012-08-30 14:58:00','2012-09-28 17:13:49','New Version 3',0,1,1,NULL,NULL),(204,1,'Plug-Ins','plug-ins','','2012-08-30 14:58:00','2012-08-30 14:58:53','Initial Version',1,0,1,1,NULL),(205,1,'Device Manager','device-manager','','2012-08-30 14:58:00','2012-08-30 14:59:06','Version 1',0,0,1,1,NULL),(205,2,'Device Manager','device-manager','','2012-08-30 14:58:00','2012-09-28 17:16:02','Version 1',1,0,1,1,NULL),(206,1,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-08-30 14:59:12','Initial Version',0,0,1,1,NULL),(206,2,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-09-04 15:23:24','New Version 2',0,0,1,1,NULL),(206,3,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-09-04 15:24:24','Version 3',0,0,1,1,NULL),(206,4,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-09-05 10:14:42','New Version 4',0,0,1,1,NULL),(206,5,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-09-05 12:55:21','New Version 5',0,0,1,1,NULL),(206,6,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-09-11 21:26:35','Version 6',0,0,1,1,NULL),(206,7,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-09-12 18:49:17','New Version 7',0,0,1,1,NULL),(206,8,'Footer','footer',NULL,'2012-08-30 14:59:12','2012-09-19 22:04:08','Version 8',1,0,1,1,NULL),(207,1,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-04 16:00:28','Initial Version',0,0,1,1,NULL),(207,2,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-05 10:29:37','New Version 2',0,0,1,1,NULL),(207,3,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-05 10:33:13','New Version 3',0,0,1,1,NULL),(207,4,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-05 11:03:44','New Version 4',0,0,1,1,NULL),(207,5,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-05 11:16:53','New Version 5',0,0,1,1,NULL),(207,6,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-10 22:40:41','New Version 6',0,0,1,1,NULL),(207,7,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-12 16:49:44','New Version 7',0,0,1,1,NULL),(207,8,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-12 16:50:02','New Version 8',0,0,1,1,NULL),(207,9,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-12 16:51:18','Version 9',0,0,1,1,NULL),(207,10,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-12 20:52:55','Version 10',0,0,1,1,NULL),(207,11,'Header Alt Nav','header-alt-nav',NULL,'2012-09-04 16:00:28','2012-09-12 13:45:57','New Version 11',1,0,1,1,NULL),(208,1,'Company Logo','company-logo',NULL,'2012-09-05 10:39:59','2012-09-05 10:39:59','Initial Version',0,0,1,1,NULL),(208,2,'Company Logo','company-logo',NULL,'2012-09-05 10:39:59','2012-09-10 18:04:16','New Version 2',0,0,1,1,NULL),(208,3,'Company Logo','company-logo',NULL,'2012-09-05 10:39:59','2012-09-12 13:44:53','New Version 3',1,0,1,1,NULL),(209,1,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-11 19:45:05','Initial Version',0,0,1,1,NULL),(209,2,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-11 20:11:49','New Version 2',0,0,1,1,NULL),(209,3,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 17:12:04','New Version 2',0,0,1,1,NULL),(209,4,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 17:41:29','New Version 4',0,0,1,1,NULL),(209,5,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:00:07','New Version 4',0,0,1,1,NULL),(209,6,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:11:00','New Version 4',0,0,1,1,NULL),(209,7,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:14:29','Version 7',0,0,1,1,NULL),(209,8,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:19:58','New Version 8',0,0,1,1,NULL),(209,9,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:20:37','New Version 9',0,0,1,1,NULL),(209,10,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:26:55','New Version 10',0,0,1,1,NULL),(209,11,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:27:20','New Version 11',0,0,1,1,NULL),(209,12,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 18:49:17','New Version 11',0,0,1,1,NULL),(209,13,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 13:56:03','New Version 11',0,0,1,1,NULL),(209,14,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-12 13:56:56','New Version 11',0,0,1,1,NULL),(209,15,'Mifi 4620L','mifi-4620l','','2012-09-11 19:44:00','2012-09-19 20:25:21','Version 15',1,0,1,1,NULL),(210,1,'',NULL,NULL,'2012-09-12 17:12:47','2012-09-12 17:12:47','Initial Version',1,1,NULL,NULL,NULL),(211,1,'Search Results','search-results','','2012-09-12 20:50:00','2012-09-12 20:51:01','Initial Version',0,0,1,1,NULL),(211,2,'Search Results','search-results','','2012-09-12 20:50:00','2012-09-12 20:51:12','New Version 2',0,0,1,1,NULL),(211,3,'Search Results','search-results','','2012-09-12 20:50:00','2012-09-12 20:51:41','New Version 2',0,0,1,1,NULL),(211,4,'Search Results','search-results','','2012-09-12 20:50:00','2012-09-12 20:55:31','New Version 2',0,0,1,1,NULL),(211,5,'Search Results','search-results','','2012-09-12 20:50:00','2012-09-19 21:07:22','New Version 5',1,0,1,1,NULL),(212,1,'Follow Us','follow-us','','2012-09-19 23:20:00','2012-09-19 23:20:21','Initial Version',0,0,1,1,NULL),(212,2,'Follow Us','follow-us','','2012-09-19 23:20:00','2012-09-19 23:25:51','New Version 2',1,0,1,1,NULL),(213,1,'Facebook','httpfacebook.com',NULL,'2012-09-19 23:20:38','2012-09-19 23:20:38','Initial Version',1,1,NULL,NULL,NULL),(214,1,'Twitter','httptwitter.com',NULL,'2012-09-19 23:20:55','2012-09-19 23:20:55','Initial Version',1,1,NULL,NULL,NULL),(215,1,'RSS Feed','',NULL,'2012-09-19 23:21:13','2012-09-19 23:21:13','Initial Version',1,1,NULL,NULL,NULL),(216,1,'Transportation','transportation','','2012-09-19 23:27:00','2012-09-19 23:27:54','Initial Version',1,0,1,1,NULL),(217,1,'Security','security','','2012-09-19 23:28:00','2012-09-19 23:28:10','Initial Version',1,0,1,1,NULL),(218,1,'Telehealth/Medical','telehealth-medical','','2012-09-19 23:28:00','2012-09-19 23:28:30','Initial Version',1,0,1,1,NULL),(219,1,'M2M Modules','m2m-modules','','2012-09-28 16:52:00','2012-09-28 16:52:59','Initial Version',0,0,1,1,NULL),(219,2,'M2M Modules','m2m-modules','','2012-09-28 16:52:00','2012-09-28 17:26:49','Initial Version',1,0,1,1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2012-08-22 16:38:12','2012-09-19 22:08:49','home'),(2,'2012-08-22 16:38:15','2012-08-22 16:38:15','dashboard'),(3,'2012-08-22 16:38:15','2012-08-22 16:38:15','composer'),(4,'2012-08-22 16:38:15','2012-08-22 16:38:15','write'),(5,'2012-08-22 16:38:15','2012-08-22 16:38:15','drafts'),(6,'2012-08-22 16:38:15','2012-08-22 16:38:15','sitemap'),(7,'2012-08-22 16:38:15','2012-08-22 16:38:15','full'),(8,'2012-08-22 16:38:15','2012-08-22 16:38:15','explore'),(9,'2012-08-22 16:38:15','2012-08-22 16:38:15','search'),(10,'2012-08-22 16:38:15','2012-08-22 16:38:15','files'),(11,'2012-08-22 16:38:16','2012-08-22 16:38:16','search'),(12,'2012-08-22 16:38:16','2012-08-22 16:38:16','attributes'),(13,'2012-08-22 16:38:16','2012-08-22 16:38:16','sets'),(14,'2012-08-22 16:38:16','2012-08-22 16:38:16','add_set'),(15,'2012-08-22 16:38:16','2012-08-22 16:38:16','users'),(16,'2012-08-22 16:38:16','2012-08-22 16:38:16','search'),(17,'2012-08-22 16:38:16','2012-08-22 16:38:16','groups'),(18,'2012-08-22 16:38:16','2012-08-22 16:38:16','attributes'),(19,'2012-08-22 16:38:16','2012-08-22 16:38:16','add'),(20,'2012-08-22 16:38:16','2012-08-22 16:38:16','add_group'),(21,'2012-08-22 16:38:16','2012-08-22 16:38:16','reports'),(22,'2012-08-22 16:38:16','2012-08-22 16:38:16','statistics'),(23,'2012-08-22 16:38:16','2012-08-22 16:38:16','forms'),(24,'2012-08-22 16:38:16','2012-08-22 16:38:16','surveys'),(25,'2012-08-22 16:38:16','2012-08-22 16:38:17','logs'),(26,'2012-08-22 16:38:17','2012-08-22 16:38:17','pages'),(27,'2012-08-22 16:38:17','2012-08-22 16:38:17','themes'),(28,'2012-08-22 16:38:17','2012-08-22 16:38:17','add'),(29,'2012-08-22 16:38:17','2012-08-22 16:38:17','inspect'),(30,'2012-08-22 16:38:17','2012-08-22 16:38:17','customize'),(31,'2012-08-22 16:38:17','2012-08-22 16:38:17','types'),(32,'2012-08-22 16:38:17','2012-08-22 16:38:17','add'),(33,'2012-08-22 16:38:17','2012-08-22 16:38:17','attributes'),(34,'2012-08-22 16:38:17','2012-08-22 16:38:17','single'),(35,'2012-08-22 16:38:17','2012-08-22 16:38:17','blocks'),(36,'2012-08-22 16:38:17','2012-08-22 16:38:17','stacks'),(37,'2012-08-22 16:38:17','2012-08-22 16:38:17','list'),(38,'2012-08-22 16:38:17','2012-08-22 16:38:17','types'),(39,'2012-08-22 16:38:17','2012-08-22 16:38:18','extend'),(40,'2012-08-22 16:38:18','2012-08-22 16:38:18','news'),(41,'2012-08-22 16:38:18','2012-08-22 16:38:18','install'),(42,'2012-08-22 16:38:18','2012-08-22 16:38:18','update'),(43,'2012-08-22 16:38:18','2012-08-22 16:38:18','connect'),(44,'2012-08-22 16:38:18','2012-08-22 16:38:18','themes'),(45,'2012-08-22 16:38:18','2012-08-22 16:38:18','add-ons'),(46,'2012-08-22 16:38:18','2012-08-22 16:38:18','system'),(47,'2012-08-22 16:38:18','2012-08-22 16:38:18','basics'),(48,'2012-08-22 16:38:18','2012-08-22 16:38:18','site_name'),(49,'2012-08-22 16:38:18','2012-08-22 16:38:18','icons'),(50,'2012-08-22 16:38:18','2012-08-22 16:38:18','editor'),(51,'2012-08-22 16:38:18','2012-08-22 16:38:18','multilingual'),(52,'2012-08-22 16:38:18','2012-08-22 16:38:18','timezone'),(53,'2012-08-22 16:38:18','2012-08-22 16:38:19','interface'),(54,'2012-08-22 16:38:19','2012-08-22 16:38:19','seo'),(55,'2012-08-22 16:38:19','2012-08-22 16:38:19','urls'),(56,'2012-08-22 16:38:19','2012-08-22 16:38:19','tracking_codes'),(57,'2012-08-22 16:38:19','2012-08-22 16:38:19','statistics'),(58,'2012-08-22 16:38:19','2012-08-22 16:38:19','search_index'),(59,'2012-08-22 16:38:19','2012-08-22 16:38:19','optimization'),(60,'2012-08-22 16:38:19','2012-08-22 16:38:19','cache'),(61,'2012-08-22 16:38:19','2012-08-22 16:38:19','clear_cache'),(62,'2012-08-22 16:38:19','2012-08-22 16:38:19','jobs'),(63,'2012-08-22 16:38:19','2012-08-22 16:38:19','permissions'),(64,'2012-08-22 16:38:19','2012-08-22 16:38:19','site'),(65,'2012-08-22 16:38:19','2012-08-22 16:38:19','files'),(66,'2012-08-22 16:38:19','2012-08-22 16:38:19','file_types'),(67,'2012-08-22 16:38:19','2012-08-22 16:38:20','tasks'),(68,'2012-08-22 16:38:20','2012-08-22 16:38:20','ip_blacklist'),(69,'2012-08-22 16:38:20','2012-08-22 16:38:20','captcha'),(70,'2012-08-22 16:38:20','2012-08-22 16:38:20','antispam'),(71,'2012-08-22 16:38:20','2012-08-22 16:38:20','maintenance_mode'),(72,'2012-08-22 16:38:20','2012-08-22 16:38:20','registration'),(73,'2012-08-22 16:38:20','2012-08-22 16:38:20','postlogin'),(74,'2012-08-22 16:38:20','2012-08-22 16:38:20','profiles'),(75,'2012-08-22 16:38:20','2012-08-22 16:38:20','public_registration'),(76,'2012-08-22 16:38:20','2012-08-22 16:38:20','mail'),(77,'2012-08-22 16:38:20','2012-08-22 16:38:20','method'),(78,'2012-08-22 16:38:20','2012-08-22 16:38:20','importers'),(79,'2012-08-22 16:38:20','2012-08-22 16:38:20','attributes'),(80,'2012-08-22 16:38:20','2012-08-22 16:38:21','sets'),(81,'2012-08-22 16:38:21','2012-08-22 16:38:21','types'),(82,'2012-08-22 16:38:21','2012-08-22 16:38:21','environment'),(83,'2012-08-22 16:38:21','2012-08-22 16:38:21','info'),(84,'2012-08-22 16:38:21','2012-08-22 16:38:21','debug'),(85,'2012-08-22 16:38:21','2012-08-22 16:38:21','logging'),(86,'2012-08-22 16:38:21','2012-08-22 16:38:21','file_storage_locations'),(87,'2012-08-22 16:38:21','2012-08-22 16:38:21','backup_restore'),(88,'2012-08-22 16:38:21','2012-08-22 16:38:21','backup'),(89,'2012-08-22 16:38:21','2012-08-22 16:38:21','update'),(90,'2012-08-22 16:38:21','2012-08-22 16:38:21','database'),(91,'2012-08-22 16:38:21','2012-08-22 16:38:21','composer'),(92,'2012-08-22 16:38:21','2012-08-22 16:38:21',NULL),(93,'2012-08-22 16:38:21','2012-08-22 16:38:21',NULL),(94,'2012-08-22 16:38:21','2012-08-22 16:38:21',NULL),(95,'2012-08-22 16:38:21','2012-08-22 16:38:21','home'),(96,'2012-08-22 16:38:21','2012-08-22 16:38:22','welcome'),(97,'2012-08-22 16:38:25','2012-08-22 16:38:25','!drafts'),(98,'2012-08-22 16:38:25','2012-08-22 16:38:25','!trash'),(99,'2012-08-22 16:38:25','2012-08-22 16:38:25','!stacks'),(100,'2012-08-22 16:38:25','2012-08-22 16:38:25','login'),(101,'2012-08-22 16:38:25','2012-08-22 16:38:25','register'),(102,'2012-08-22 16:38:25','2012-08-22 16:38:25','profile'),(103,'2012-08-22 16:38:25','2012-08-22 16:38:25','edit'),(104,'2012-08-22 16:38:25','2012-08-22 16:38:25','avatar'),(105,'2012-08-22 16:38:25','2012-08-22 16:38:26','messages'),(106,'2012-08-22 16:38:26','2012-08-22 16:38:26','friends'),(107,'2012-08-22 16:38:26','2012-08-22 16:38:26','page_not_found'),(108,'2012-08-22 16:38:26','2012-08-22 16:38:26','page_forbidden'),(109,'2012-08-22 16:38:26','2012-08-22 16:38:26','download_file'),(110,'2012-08-22 16:38:26','2012-08-22 16:38:26','members'),(111,'2012-08-22 16:38:27','2012-08-30 14:39:37',NULL),(112,'2012-08-30 09:51:35','2012-08-30 14:45:28',NULL),(113,'2012-08-30 09:51:52','2012-08-30 14:40:26',NULL),(114,'2012-08-30 09:52:29','2012-08-30 14:43:53',NULL),(115,'2012-08-30 10:20:06','2012-08-30 12:55:45','products'),(116,'2012-08-30 10:20:21','2012-08-30 12:55:41','our-expertise'),(117,'2012-08-30 10:20:34','2012-08-30 12:55:38','news-and-events'),(118,'2012-08-30 10:20:45','2012-08-30 12:55:34','our-partners'),(119,'2012-08-30 10:20:54','2012-08-30 12:55:31','about'),(120,'2012-08-30 10:21:03','2012-08-30 12:55:27','support'),(121,'2012-08-30 10:21:33','2012-08-30 10:21:33','mobile-broadband-solutions'),(122,'2012-08-30 10:21:49','2012-08-30 10:21:49','integrated-m2m-solutions'),(123,'2012-08-30 10:22:01','2012-08-30 10:22:01','target-markets'),(124,'2012-08-30 10:22:10','2012-08-30 10:22:10','innovation'),(125,'2012-08-30 10:22:23','2012-08-30 10:22:23','professional-services'),(126,'2012-08-30 10:22:35','2012-08-30 10:22:35','research-and-development'),(127,'2012-08-30 10:22:47','2012-08-30 10:22:47','press-releases'),(128,'2012-08-30 10:22:57','2012-08-30 10:22:57','in-the-news'),(129,'2012-08-30 10:23:18','2012-08-30 10:23:18','events'),(130,'2012-08-30 10:23:29','2012-08-30 10:23:29','media-center'),(131,'2012-08-30 10:23:41','2012-08-30 10:23:41','mobile-operators'),(132,'2012-08-30 10:23:55','2012-08-30 10:23:55','system-integrators'),(133,'2012-08-30 10:24:15','2012-08-30 10:24:15','application-service-providers'),(134,'2012-08-30 10:24:35','2012-08-30 10:24:35','manufacturing-and-engineering'),(135,'2012-08-30 10:24:52','2012-08-30 10:24:52','about-us'),(136,'2012-08-30 10:25:08','2012-08-30 10:25:08','management-team'),(137,'2012-08-30 10:25:08','2012-08-30 10:25:29','management-team'),(138,'2012-08-30 10:25:39','2012-08-30 10:25:39','careers'),(139,'2012-08-30 10:25:49','2012-08-30 10:25:49','contact-us'),(140,'2012-08-30 10:26:02','2012-08-30 10:26:02','main'),(141,'2012-08-30 10:26:11','2012-08-30 10:26:11','certification'),(142,'2012-08-30 12:46:06','2012-09-06 17:19:24','header-nav'),(143,'2012-08-30 12:47:33','2012-08-30 12:47:33','side-nav'),(144,'2012-08-30 12:49:41','2012-09-28 17:05:50','sub-nav'),(145,'2012-08-30 14:02:54','2012-08-30 14:26:40',NULL),(146,'2012-08-30 14:03:41','2012-08-30 14:46:00','products'),(147,'2012-08-30 14:04:01','2012-08-30 14:19:04','mobile-broadband-solutions'),(148,'2012-08-30 14:04:17','2012-08-30 14:19:25','integrated-m2m-solutions'),(149,'2012-08-30 14:22:23','2012-08-30 14:22:23','mifi-intelligent-mobile-hotspots'),(150,'2012-08-30 14:22:36','2012-08-30 14:22:36','usb-devices'),(151,'2012-08-30 14:22:52','2012-08-30 14:22:52','data-cards-modems'),(152,'2012-08-30 14:23:04','2012-08-30 14:23:04','embedded-modules'),(153,'2012-08-30 14:23:15','2012-08-30 14:23:16','software'),(154,'2012-08-30 14:23:29','2012-08-30 14:23:29','connection-manager'),(155,'2012-08-30 14:23:39','2012-08-30 14:23:39','sdk'),(156,'2012-08-30 14:23:49','2012-08-30 14:23:49','android-ril'),(157,'2012-08-30 14:24:08','2012-08-30 14:24:08','mobile-tracking'),(158,'2012-08-30 14:24:20','2012-08-30 14:24:20','assets-tracking'),(159,'2012-08-30 14:24:35','2012-08-30 14:24:35','workforce-monitoring'),(160,'2012-08-30 14:24:49','2012-08-30 14:24:49','telemetry'),(161,'2012-08-30 14:25:02','2012-08-30 14:25:02','service-delivery-platform'),(162,'2012-08-30 14:47:36','2012-09-19 21:14:16','products'),(163,'2012-08-30 14:47:47','2012-08-30 14:47:47','our-expertise'),(164,'2012-08-30 14:47:59','2012-08-30 14:47:59','news-and-events'),(165,'2012-08-30 14:48:10','2012-09-11 21:12:08','our-partners'),(166,'2012-08-30 14:48:19','2012-09-20 00:26:02','about'),(167,'2012-08-30 14:48:36','2012-08-30 14:48:36','support'),(168,'2012-08-30 14:48:48','2012-09-26 18:40:04','main'),(169,'2012-08-30 14:49:04','2012-09-19 21:07:04','certification'),(170,'2012-08-30 14:49:26','2012-09-19 23:18:58','about-us'),(171,'2012-08-30 14:49:38','2012-09-10 18:58:58','management-team'),(172,'2012-08-30 14:49:51','2012-08-30 14:49:51','investors'),(173,'2012-08-30 14:50:03','2012-08-30 14:50:03','careers'),(174,'2012-08-30 14:50:18','2012-08-30 14:50:18','contact-us'),(175,'2012-08-30 14:50:41','2012-08-30 14:50:42','mobile-operators'),(176,'2012-08-30 14:51:03','2012-08-30 14:51:03','system-integrations'),(177,'2012-08-30 14:51:18','2012-08-30 14:51:18','application-service-providers'),(178,'2012-08-30 14:51:44','2012-08-30 14:51:44','manufacturing-and-engineering'),(179,'2012-08-30 14:52:04','2012-08-30 14:52:04','press-releases'),(180,'2012-08-30 14:52:15','2012-08-30 14:52:15','in-the-news'),(181,'2012-08-30 14:52:25','2012-08-30 14:52:26','events'),(182,'2012-08-30 14:52:36','2012-08-30 14:52:36','media-center'),(183,'2012-08-30 14:53:01','2012-08-30 14:53:01','target-markets'),(184,'2012-08-30 14:53:13','2012-08-30 14:53:13','innovation'),(185,'2012-08-30 14:53:25','2012-08-30 14:53:25','professional-services'),(186,'2012-08-30 14:53:43','2012-08-30 14:53:43','research-and-development'),(187,'2012-08-30 14:54:02','2012-09-12 17:11:11','mobile-broadband-solutions'),(188,'2012-08-30 14:54:21','2012-09-28 17:02:45','integrated-m2m-solutions'),(189,'2012-08-30 14:55:15','2012-09-12 17:11:41','mifi-intelligent-mobile-hotspots'),(190,'2012-08-30 14:55:30','2012-08-30 14:55:31','usb-devices'),(191,'2012-08-30 14:55:43','2012-08-30 14:55:43','data-card-modems'),(192,'2012-08-30 14:55:55','2012-08-30 14:55:55','embedded-modules'),(193,'2012-08-30 14:56:06','2012-08-30 14:56:06','software'),(194,'2012-08-30 14:56:25','2012-08-30 14:56:26','connection-manager'),(195,'2012-08-30 14:56:40','2012-08-30 14:56:40','sdk'),(196,'2012-08-30 14:56:50','2012-08-30 14:56:51','android-ril'),(197,'2012-08-30 14:57:07','2012-09-11 18:18:57','mobile-tracking'),(198,'2012-08-30 14:57:22','2012-09-10 18:56:04','asset-tracking'),(199,'2012-08-30 14:57:35','2012-09-28 17:21:03','workforce-monitoring'),(200,'2012-08-30 14:57:48','2012-09-10 18:56:47','telemetry'),(201,'2012-08-30 14:58:04','2012-09-28 17:14:57','service-delivery-platform'),(202,'2012-08-30 14:58:18','2012-09-28 17:04:33','professional-services'),(203,'2012-08-30 14:58:29','2012-09-28 17:12:22','cms'),(204,'2012-08-30 14:58:53','2012-08-30 14:58:53','plug-ins'),(205,'2012-08-30 14:59:06','2012-09-28 17:16:42','device-manager'),(206,'2012-08-30 14:59:12','2012-09-19 22:04:14','footer'),(207,'2012-09-04 16:00:28','2012-09-12 13:46:14','header-alt-nav'),(208,'2012-09-05 10:39:59','2012-09-12 13:45:00','company-logo'),(209,'2012-09-11 19:45:05','2012-09-19 20:25:24','mifi-4620l'),(210,'2012-09-12 17:12:47','2012-09-12 17:12:47',NULL),(211,'2012-09-12 20:51:01','2012-09-19 21:07:22','search-results'),(212,'2012-09-19 23:20:21','2012-09-19 23:25:52','follow-us'),(213,'2012-09-19 23:20:38','2012-09-19 23:20:38','httpfacebook.com'),(214,'2012-09-19 23:20:55','2012-09-19 23:20:55','httptwitter.com'),(215,'2012-09-19 23:21:13','2012-09-19 23:21:13',''),(216,'2012-09-19 23:27:54','2012-09-19 23:27:54','transportation'),(217,'2012-09-19 23:28:10','2012-09-19 23:28:10','security'),(218,'2012-09-19 23:28:30','2012-09-19 23:28:30','telehealth-medical'),(219,'2012-09-28 16:52:59','2012-09-28 17:27:21','m2m-modules');
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
INSERT INTO `Config` VALUES ('ANTISPAM_LOG_SPAM','2012-08-22 23:38:26','1',0,0),('APP_VERSION_LATEST','2012-09-26 18:05:50','5.6.0.2',0,0),('CONTENTS_TXT_EDITOR_CUSTOM_CODE','2012-09-05 19:59:19','theme : \"concrete\", \r\nplugins: \"inlinepopups,spellchecker,safari,advlink\",\r\neditor_selector : \"ccm-advanced-editor\",\r\nspellchecker_languages : \"+English=en\",	\r\ntheme_concrete_buttons1 : \"bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,hr,|,styleselect,formatselect,fontsizeselect\",\r\ntheme_concrete_buttons2 : \"bullist,numlist,|,outdent,indent,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,forecolor\",\r\ntheme_concrete_blockformats : \"p,address,pre,h1,h2,h3,h4,h5,h6,span,section,div,blockquote,cite\",\r\ntheme_concrete_toolbar_align : \"left\",\r\ntheme_concrete_fonts : \"Andale Mono=andale mono,times;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Book Antiqua=book antiqua,palatino;Comic Sans MS=comic sans ms,sans-serif;Courier New=courier new,courier;Georgia=georgia,palatino;Helvetica=helvetica;Impact=impact,chicago;Symbol=symbol;Tahoma=tahoma,arial,helvetica,sans-serif;Terminal=terminal,monaco;Times New Roman=times new roman,times;Trebuchet MS=trebuchet ms,geneva;Verdana=verdana,geneva;Webdings=webdings;Wingdings=wingdings,zapf dingbats\",\r\ntheme_concrete_font_sizes : \"1,2,3,4,5,6,7\",\r\ntheme_concrete_styles: \"Note=ccm-note,Small=small\",\r\nspellchecker_languages : \"+English=en\"\r\n\r\n/*\r\n// Use the advanced theme for more than two rows of content\r\nplugins: \"inlinepopups,spellchecker,safari,advlink,table,advhr,xhtmlxtras,emotions,insertdatetime,paste,visualchars,nonbreaking,pagebreak,style\",\r\neditor_selector : \"ccm-advanced-editor\",\r\ntheme : \"advanced\",\r\ntheme_advanced_buttons1 : \"cut,copy,paste,pastetext,pasteword,|,undo,redo,|,styleselect,formatselect,fontsizeselect,fontselect\",\r\ntheme_advanced_buttons2 : \"bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,bullist,numlist,|,outdent,indent,blockquote,|,link,unlink,anchor,|,forecolor,backcolor,|,image,charmap,emotions\",\r\ntheme_advanced_fonts : \"Andale Mono=andale mono,times;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Book Antiqua=book antiqua,palatino;Comic Sans MS=comic sans ms,sans-serif;Courier New=courier new,courier;Georgia=georgia,palatino;Helvetica=helvetica;Impact=impact,chicago;Symbol=symbol;Tahoma=tahoma,arial,helvetica,sans-serif;Terminal=terminal,monaco;Times New Roman=times new roman,times;Trebuchet MS=trebuchet ms,geneva;Verdana=verdana,geneva;Webdings=webdings;Wingdings=wingdings,zapf dingbats\",\r\n// etc.\r\n*/',0,0),('CONTENTS_TXT_EDITOR_HEIGHT','2012-09-05 19:59:19','380',0,0),('CONTENTS_TXT_EDITOR_MODE','2012-09-05 19:59:19','CUSTOM',0,0),('CONTENTS_TXT_EDITOR_WIDTH','2012-09-05 19:59:19','580',0,0),('DASHBOARD_BACKGROUND_IMAGE','2012-08-30 21:12:37','',0,0),('DASHBOARD_BACKGROUND_IMAGE_CUSTOM_FILE_ID','2012-08-30 21:12:37','0',0,0),('DO_PAGE_REINDEX_CHECK','2012-09-28 17:27:23','0',0,0),('ENABLE_CACHE','2012-08-22 23:38:26','1',0,0),('ENABLE_LOG_EMAILS','2012-08-22 23:38:26','1',0,0),('ENABLE_LOG_ERRORS','2012-08-22 23:38:26','1',0,0),('ENABLE_MARKETPLACE_SUPPORT','2012-08-22 23:38:26','1',0,0),('FULL_PAGE_CACHE_GLOBAL','2012-08-22 23:38:26','0',0,0),('NEWSFLOW_LAST_VIEWED','2012-09-28 16:42:48','1348850568',1,0),('SEEN_INTRODUCTION','2012-08-22 23:38:48','1',0,0),('SITE','2012-08-22 23:38:27','Novatel Wireless',0,0),('SITE_APP_VERSION','2012-08-22 23:38:27','5.5.2.1',0,0),('SITE_DEBUG_LEVEL','2012-08-22 23:38:26','1',0,0),('TOOLBAR_QUICK_NAV_BEHAVIOR','2012-08-30 21:12:37','',0,0),('URL_REWRITING','2012-08-28 18:02:11','1',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
INSERT INTO `CustomStylePresets` VALUES (1,'span12',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
INSERT INTO `CustomStyleRules` VALUES (1,'','breadcrumb','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(2,'','subNav','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(3,'','tabs','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(4,'','span12','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(5,'','span12','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(6,'','span12','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(7,'','pull-right','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(8,'','span4','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(9,'','span3','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(10,'','span3','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(11,'','span3','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(12,'','span3','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(13,'','pull-right','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(14,'','pull-right small','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(15,'','pull-right','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(16,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','width: 100%;'),(17,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','width: 1024px;'),(18,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(19,'','pull-right','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(20,'','span8 offset2','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(21,'','span12','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(22,'','span12 offset2','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(23,'','span12 offset1','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(24,'','pull-right','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(25,'','sidebar-block','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}',''),(26,'','sidebar-block','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','');
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
INSERT INTO `FileAttributeValues` VALUES (1,1,11,76),(1,1,12,77),(2,1,11,78),(2,1,12,79),(3,1,11,80),(3,1,12,81),(4,1,11,82),(4,1,12,83),(5,1,11,84),(5,1,12,85),(6,1,11,88),(6,1,12,89),(7,1,11,90),(7,1,12,91),(8,1,11,92),(8,1,12,93),(9,1,11,94),(9,1,12,95),(10,1,11,97),(10,1,12,98);
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
INSERT INTO `FileSearchIndexAttributes` VALUES (1,1024.0000,416.0000),(2,230.0000,30.0000),(3,242.0000,231.0000),(4,962.0000,256.0000),(5,1023.0000,411.0000),(6,250.0000,239.0000),(7,101.0000,27.0000),(8,236.0000,72.0000),(9,801.0000,510.0000),(10,230.0000,30.0000);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,11),(2,1,1,5,12),(3,2,1,5,11),(4,2,1,5,12),(5,3,1,5,11),(6,3,1,5,12),(7,4,1,5,11),(8,4,1,5,12),(9,5,1,5,11),(10,5,1,5,12),(11,6,1,5,11),(12,6,1,5,12),(13,7,1,5,11),(14,7,1,5,12),(15,8,1,5,11),(16,8,1,5,12),(17,9,1,5,11),(18,9,1,5,12),(19,10,1,5,11),(20,10,1,5,12);
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
INSERT INTO `FileVersions` VALUES (1,1,'home_image_01.png','291347053008',1,773900,'home_image_01.png','','',1,'2012-09-07 14:23:28',1,1,'2012-09-07 14:23:28',1,1,0,'png',1),(2,1,'logo.png','571347300221',1,5377,'logo.png','','',1,'2012-09-10 18:03:41',1,1,'2012-09-10 18:03:41',1,1,0,'png',1),(3,1,'generic_rightrail.png','931347387519',1,13395,'generic_rightrail.png','','',1,'2012-09-11 18:18:39',1,1,'2012-09-11 18:18:39',1,1,0,'png',1),(4,1,'banner_sample.png','321347393397',1,198895,'banner_sample.png','','',1,'2012-09-11 19:56:37',1,1,'2012-09-11 19:56:37',1,1,0,'png',1),(5,1,'banner_home_01.png','871347393406',1,768674,'banner_home_01.png','','',1,'2012-09-11 19:56:47',1,1,'2012-09-11 19:56:47',1,1,0,'png',1),(6,1,'mifi4620l_images.png','441347471807',1,42092,'mifi4620l_images.png','','',1,'2012-09-12 17:43:27',1,1,'2012-09-12 17:43:27',1,1,0,'png',1),(7,1,'where-to-buy-button.png','581347472254',1,2806,'where-to-buy-button.png','','',1,'2012-09-12 17:50:54',1,1,'2012-09-12 17:50:54',1,1,0,'png',1),(8,1,'social-buttons.png','941347472361',1,7331,'social-buttons.png','','',1,'2012-09-12 17:52:41',1,1,'2012-09-12 17:52:41',1,1,0,'png',1),(9,1,'product-featured-placeholder.png','591347473662',1,62453,'product-featured-placeholder.png','','',1,'2012-09-12 18:14:22',1,1,'2012-09-12 18:14:22',1,1,0,'png',1),(10,1,'logo.png','571347482677',1,5377,'logo.png','','',1,'2012-09-12 13:44:38',1,1,'2012-09-12 13:44:38',1,1,0,'png',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2012-09-07 14:23:28',1,0,0,0,NULL),(2,'2012-09-10 18:03:41',1,0,0,0,NULL),(3,'2012-09-11 18:18:39',1,0,0,0,NULL),(4,'2012-09-11 19:56:37',1,0,0,0,NULL),(5,'2012-09-11 19:56:46',1,0,0,0,NULL),(6,'2012-09-12 17:43:27',1,0,0,0,NULL),(7,'2012-09-12 17:50:54',1,0,0,0,NULL),(8,'2012-09-12 17:52:41',1,0,0,0,NULL),(9,'2012-09-12 18:14:22',1,0,0,0,NULL),(10,'2012-09-12 13:44:37',1,0,0,0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/reports','1'),(21,22,'/dashboard/reports/statistics','1'),(22,23,'/dashboard/reports/forms','1'),(23,24,'/dashboard/reports/surveys','1'),(24,25,'/dashboard/reports/logs','1'),(25,26,'/dashboard/pages','1'),(26,27,'/dashboard/pages/themes','1'),(27,28,'/dashboard/pages/themes/add','1'),(28,29,'/dashboard/pages/themes/inspect','1'),(29,30,'/dashboard/pages/themes/customize','1'),(30,31,'/dashboard/pages/types','1'),(31,32,'/dashboard/pages/types/add','1'),(32,33,'/dashboard/pages/attributes','1'),(33,34,'/dashboard/pages/single','1'),(34,35,'/dashboard/blocks','1'),(35,36,'/dashboard/blocks/stacks','1'),(36,37,'/dashboard/blocks/stacks/list','1'),(37,38,'/dashboard/blocks/types','1'),(38,39,'/dashboard/extend','1'),(39,40,'/dashboard/news','1'),(40,41,'/dashboard/extend/install','1'),(41,42,'/dashboard/extend/update','1'),(42,43,'/dashboard/extend/connect','1'),(43,44,'/dashboard/extend/themes','1'),(44,45,'/dashboard/extend/add-ons','1'),(45,46,'/dashboard/system','1'),(46,47,'/dashboard/system/basics','1'),(47,48,'/dashboard/system/basics/site_name','1'),(48,49,'/dashboard/system/basics/icons','1'),(49,50,'/dashboard/system/basics/editor','1'),(50,51,'/dashboard/system/basics/multilingual','1'),(51,52,'/dashboard/system/basics/timezone','1'),(52,53,'/dashboard/system/basics/interface','1'),(53,54,'/dashboard/system/seo','1'),(54,55,'/dashboard/system/seo/urls','1'),(55,56,'/dashboard/system/seo/tracking_codes','1'),(56,57,'/dashboard/system/seo/statistics','1'),(57,58,'/dashboard/system/seo/search_index','1'),(58,59,'/dashboard/system/optimization','1'),(59,60,'/dashboard/system/optimization/cache','1'),(60,61,'/dashboard/system/optimization/clear_cache','1'),(61,62,'/dashboard/system/optimization/jobs','1'),(62,63,'/dashboard/system/permissions','1'),(63,64,'/dashboard/system/permissions/site','1'),(64,65,'/dashboard/system/permissions/files','1'),(65,66,'/dashboard/system/permissions/file_types','1'),(66,67,'/dashboard/system/permissions/tasks','1'),(67,68,'/dashboard/system/permissions/ip_blacklist','1'),(68,69,'/dashboard/system/permissions/captcha','1'),(69,70,'/dashboard/system/permissions/antispam','1'),(70,71,'/dashboard/system/permissions/maintenance_mode','1'),(71,72,'/dashboard/system/registration','1'),(72,73,'/dashboard/system/registration/postlogin','1'),(73,74,'/dashboard/system/registration/profiles','1'),(74,75,'/dashboard/system/registration/public_registration','1'),(75,76,'/dashboard/system/mail','1'),(76,77,'/dashboard/system/mail/method','1'),(77,78,'/dashboard/system/mail/importers','1'),(78,79,'/dashboard/system/attributes','1'),(79,80,'/dashboard/system/attributes/sets','1'),(80,81,'/dashboard/system/attributes/types','1'),(81,82,'/dashboard/system/environment','1'),(82,83,'/dashboard/system/environment/info','1'),(83,84,'/dashboard/system/environment/debug','1'),(84,85,'/dashboard/system/environment/logging','1'),(85,86,'/dashboard/system/environment/file_storage_locations','1'),(86,87,'/dashboard/system/backup_restore','1'),(87,88,'/dashboard/system/backup_restore/backup','1'),(88,89,'/dashboard/system/backup_restore/update','1'),(89,90,'/dashboard/system/backup_restore/database','1'),(90,91,'/dashboard/pages/types/composer','1'),(91,95,'/dashboard/home','1'),(92,96,'/dashboard/welcome','1'),(93,97,'/!drafts','1'),(94,98,'/!trash','1'),(95,99,'/!stacks','1'),(96,100,'/login','1'),(97,101,'/register','1'),(98,102,'/profile','1'),(99,103,'/profile/edit','1'),(100,104,'/profile/avatar','1'),(101,105,'/profile/messages','1'),(102,106,'/profile/friends','1'),(103,107,'/page_not_found','1'),(104,108,'/page_forbidden','1'),(105,109,'/download_file','1'),(106,110,'/members','1'),(130,137,'/management-team','0'),(138,143,'/!stacks/side-nav','1'),(142,120,'/!trash/support','1'),(143,140,'/!trash/support/main','1'),(144,141,'/!trash/support/certification','1'),(145,119,'/!trash/about','1'),(146,135,'/!trash/about/about-us','1'),(147,136,'/!trash/about/management-team','1'),(148,137,'/!trash/about/investors','1'),(149,138,'/!trash/about/careers','1'),(150,139,'/!trash/about/contact-us','1'),(151,118,'/!trash/our-partners','1'),(152,131,'/!trash/our-partners/mobile-operators','1'),(153,132,'/!trash/our-partners/system-integrators','1'),(154,133,'/!trash/our-partners/application-service-providers','1'),(155,134,'/!trash/our-partners/manufacturing-and-engineering','1'),(156,117,'/!trash/news-and-events','1'),(157,127,'/!trash/news-and-events/press-releases','1'),(158,128,'/!trash/news-and-events/in-the-news','1'),(159,129,'/!trash/news-and-events/events','1'),(160,130,'/!trash/news-and-events/media-center','1'),(161,116,'/!trash/our-expertise','1'),(162,123,'/!trash/our-expertise/target-markets','1'),(163,124,'/!trash/our-expertise/innovation','1'),(164,125,'/!trash/our-expertise/professional-services','1'),(165,126,'/!trash/our-expertise/research-and-development','1'),(166,115,'/!trash/products','1'),(167,121,'/!trash/products/mobile-broadband-solutions','1'),(168,122,'/!trash/products/integrated-m2m-solutions','1'),(193,146,'/!trash/products1','1'),(194,147,'/!trash/products1/mobile-broadband-solutions','1'),(195,149,'/!trash/products1/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','1'),(196,150,'/!trash/products1/mobile-broadband-solutions/usb-devices','1'),(197,151,'/!trash/products1/mobile-broadband-solutions/data-cards-modems','1'),(198,152,'/!trash/products1/mobile-broadband-solutions/embedded-modules','1'),(199,153,'/!trash/products1/mobile-broadband-solutions/software','1'),(200,154,'/!trash/products1/mobile-broadband-solutions/software/connection-manager','1'),(201,155,'/!trash/products1/mobile-broadband-solutions/software/sdk','1'),(202,156,'/!trash/products1/mobile-broadband-solutions/software/android-ril','1'),(203,148,'/!trash/products1/integrated-m2m-solutions','1'),(204,157,'/!trash/products1/integrated-m2m-solutions/mobile-tracking','1'),(205,158,'/!trash/products1/integrated-m2m-solutions/assets-tracking','1'),(206,159,'/!trash/products1/integrated-m2m-solutions/workforce-monitoring','1'),(207,160,'/!trash/products1/integrated-m2m-solutions/telemetry','1'),(208,161,'/!trash/products1/integrated-m2m-solutions/service-delivery-platform','1'),(210,163,'/our-expertise','1'),(211,164,'/news-and-events','1'),(214,167,'/support','1'),(226,179,'/news-and-events/press-releases','1'),(227,180,'/news-and-events/in-the-news','1'),(228,181,'/news-and-events/events','1'),(229,182,'/news-and-events/media-center','1'),(230,183,'/our-expertise/target-markets','1'),(231,184,'/our-expertise/innovation','1'),(232,185,'/our-expertise/professional-services','1'),(233,186,'/our-expertise/research-and-development','1'),(273,142,'/!stacks/header-nav','1'),(325,165,'/our-partners','1'),(326,175,'/our-partners/mobile-operators','1'),(327,176,'/our-partners/system-integrations','1'),(328,177,'/our-partners/application-service-providers','1'),(405,208,'/!stacks/company-logo','1'),(427,207,'/!stacks/header-alt-nav','1'),(432,169,'/support/certification','1'),(433,211,'/support/search-results','1'),(435,162,'/products','1'),(436,187,'/products/mobile-broadband-solutions','1'),(437,189,'/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','1'),(438,209,'/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots/mifi-4620l','1'),(439,190,'/products/mobile-broadband-solutions/usb-devices','1'),(440,191,'/products/mobile-broadband-solutions/data-card-modems','1'),(441,192,'/products/mobile-broadband-solutions/embedded-modules','1'),(442,193,'/products/mobile-broadband-solutions/software','1'),(443,194,'/products/mobile-broadband-solutions/software/connection-manager','1'),(444,195,'/products/mobile-broadband-solutions/software/sdk','1'),(445,196,'/products/mobile-broadband-solutions/software/android-ril','1'),(456,206,'/!stacks/footer','1'),(459,212,'/follow-us','1'),(460,213,'/follow-us/httpfacebook.com','1'),(461,214,'/follow-us/httptwitter.com','1'),(462,215,'/follow-us/215','1'),(463,216,'/our-partners/transportation','1'),(464,217,'/our-partners/security','1'),(465,218,'/our-partners/telehealth-medical','1'),(480,166,'/about','1'),(481,170,'/about/about-us','1'),(482,171,'/about/management-team','1'),(483,172,'/about/investors','1'),(484,173,'/about/careers','1'),(485,174,'/about/contact-us','1'),(486,178,'/about/manufacturing-and-engineering','1'),(489,168,'/support/main','1'),(495,188,'/products/integrated-m2m-solutions','1'),(496,197,'/products/integrated-m2m-solutions/mobile-tracking','1'),(497,198,'/products/integrated-m2m-solutions/asset-tracking','1'),(499,200,'/products/integrated-m2m-solutions/telemetry','1'),(506,202,'/products/integrated-m2m-solutions/professional-services','1'),(507,144,'/!stacks/sub-nav','1'),(517,201,'/products/integrated-m2m-solutions/service-delivery-platform','1'),(518,203,'/products/integrated-m2m-solutions/service-delivery-platform/cms','1'),(519,204,'/products/integrated-m2m-solutions/service-delivery-platform/plug-ins','1'),(521,205,'/products/integrated-m2m-solutions/service-delivery-platform/device-manager','1'),(522,199,'/products/integrated-m2m-solutions/workforce-monitoring','1'),(523,219,'/products/integrated-m2m-solutions/m2m-modules','1');
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
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(4,'','Write','','/dashboard/composer/write','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2012-08-22 16:38:15','2012-08-22 16:38:22',NULL,0),(11,'','File Manager','','/dashboard/files/search','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(16,'','Search Users','','/dashboard/users/search','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(19,'','Add User','','/dashboard/users/add','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(21,'','Reports','Get data from forms and logs.','/dashboard/reports','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(22,'','Statistics','View your site activity.','/dashboard/reports/statistics','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(23,'','Form Results','Get submission data.','/dashboard/reports/forms','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(24,'','Surveys','','/dashboard/reports/surveys','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(25,'','Logs','','/dashboard/reports/logs','2012-08-22 16:38:16','2012-08-22 16:38:22',NULL,0),(26,'','Pages & Themes','Reskin your site.','/dashboard/pages','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(27,'','Themes','Reskin your site.','/dashboard/pages/themes','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(28,'','Add','','/dashboard/pages/themes/add','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(30,'','Customize','','/dashboard/pages/themes/customize','2012-08-22 16:38:17','2012-08-22 16:38:22',NULL,0),(31,'','Page Types','What goes in your site.','/dashboard/pages/types','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(33,'','Attributes','','/dashboard/pages/attributes','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(37,'','Stack List','','/dashboard/blocks/stacks/list','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(39,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2012-08-22 16:38:17','2012-08-22 16:38:23',NULL,0),(40,'','Dashboard','','/dashboard/news','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(41,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(42,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(43,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(44,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(45,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(46,'','System & Settings','Secure and setup your site.','/dashboard/system','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(48,'','Site Name','','/dashboard/system/basics/site_name','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(49,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(50,'','Rich Text Editor','','/dashboard/system/basics/editor','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(51,'','Languages','','/dashboard/system/basics/multilingual','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(52,'','Time Zone','','/dashboard/system/basics/timezone','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(53,'','Interface Preferences','','/dashboard/system/basics/interface','2012-08-22 16:38:18','2012-08-22 16:38:23',NULL,0),(55,'','Pretty URLs','','/dashboard/system/seo/urls','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(56,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(57,'','Statistics','','/dashboard/system/seo/statistics','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(58,'','Search Index','','/dashboard/system/seo/search_index','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(60,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(61,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(62,'','Automated Jobs','','/dashboard/system/optimization/jobs','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(64,'','Site Access','','/dashboard/system/permissions/site','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(65,'','File Manager Permissions','','/dashboard/system/permissions/files','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(66,'','Allowed File Types','','/dashboard/system/permissions/file_types','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(67,'','Task Permissions','','/dashboard/system/permissions/tasks','2012-08-22 16:38:19','2012-08-22 16:38:23',NULL,0),(68,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2012-08-22 16:38:20','2012-08-22 16:38:23',NULL,0),(69,'','Captcha Setup','','/dashboard/system/permissions/captcha','2012-08-22 16:38:20','2012-08-22 16:38:23',NULL,0),(70,'','Spam Control','','/dashboard/system/permissions/antispam','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(71,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(73,'','Login Destination','','/dashboard/system/registration/postlogin','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(74,'','Public Profiles','','/dashboard/system/registration/profiles','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(75,'','Public Registration','','/dashboard/system/registration/public_registration','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(76,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(77,'','SMTP Method','','/dashboard/system/mail/method','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(78,'','Email Importers','','/dashboard/system/mail/importers','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(79,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2012-08-22 16:38:20','2012-08-22 16:38:24',NULL,0),(82,'','Environment','Advanced settings for web developers.','/dashboard/system/environment','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(83,'','Environment Information','','/dashboard/system/environment/info','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(84,'','Debug Settings','','/dashboard/system/environment/debug','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(85,'','Logging Settings','','/dashboard/system/environment/logging','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(86,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(89,'','Update concrete5','','/dashboard/system/backup_restore/update','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(96,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2012-08-22 16:38:21','2012-08-22 16:38:24',NULL,0),(95,'','Customize Dashboard Home','','/dashboard/home','2012-08-22 16:38:21','2012-08-22 16:38:25',NULL,0),(1,' Latest News: Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra auguMorbi leo risus, porta ac con.  \r\n\r\n\r\n ','Home','',NULL,'2012-08-22 16:38:00','2012-09-19 22:10:35',NULL,0),(115,'','Products','','/products','2012-08-30 10:19:00','2012-08-30 12:45:29',NULL,0),(116,'','Our Expertise','','/our-expertise','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(117,'','News & Events','','/news-and-events','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(118,'','Our Partners','','/our-partners','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(119,'','About','','/about','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(120,'','Support','','/support','2012-08-30 10:20:00','2012-08-30 12:45:29',NULL,0),(121,'','Mobile Broadband Solutions','','/products/mobile-broadband-solutions','2012-08-30 10:21:00','2012-08-30 12:45:29',NULL,0),(122,'','Integrated M2M Solutions','','/products/integrated-m2m-solutions','2012-08-30 10:21:00','2012-08-30 12:45:29',NULL,0),(123,'','Target Markets','','/our-expertise/target-markets','2012-08-30 10:21:00','2012-08-30 12:45:29',NULL,0),(124,'','Innovation','','/our-expertise/innovation','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(125,'','Professional Services','','/our-expertise/professional-services','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(126,'','Research & Development','','/our-expertise/research-and-development','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(127,'','Press Releases','','/news-and-events/press-releases','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(128,'','In the News','','/news-and-events/in-the-news','2012-08-30 10:22:00','2012-08-30 12:45:29',NULL,0),(129,'','Events','','/news-and-events/events','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(130,'','Media Center','','/news-and-events/media-center','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(131,'','Mobile Operators','','/our-partners/mobile-operators','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(132,'','System Integrators','','/our-partners/system-integrators','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(133,'','Application Service Providers','','/our-partners/application-service-providers','2012-08-30 10:23:00','2012-08-30 12:45:29',NULL,0),(134,'','Manufacturing & Engineering','','/our-partners/manufacturing-and-engineering','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(135,'','About Us','','/about/about-us','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(136,'','Management Team','','/about/management-team','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(137,'','Investors','','/about/investors','2012-08-30 10:24:00','2012-08-30 12:45:29',NULL,0),(138,'','Careers','','/about/careers','2012-08-30 10:25:00','2012-08-30 12:45:29',NULL,0),(139,'','Contact Us','','/about/contact-us','2012-08-30 10:25:00','2012-08-30 12:45:29',NULL,0),(140,'','Main','','/support/main','2012-08-30 10:25:00','2012-08-30 12:45:29',NULL,0),(141,'','Certification','','/support/certification','2012-08-30 10:26:00','2012-08-30 12:45:29',NULL,0),(142,'','Header Nav',NULL,'/!stacks/header-nav','2012-08-30 12:46:06','2012-09-06 17:20:53',NULL,0),(144,'','Sub Nav',NULL,'/!stacks/sub-nav','2012-08-30 12:49:41','2012-09-28 17:05:52',NULL,0),(113,' Content goes here  ','',NULL,NULL,'2012-08-30 09:51:52','2012-08-30 14:40:28',NULL,0),(111,' Content goes here      Sidebar Content     ','',NULL,NULL,'2012-08-22 16:38:27','2012-08-30 14:39:39',NULL,0),(114,' Content goes here     ','',NULL,NULL,'2012-08-30 09:52:29','2012-08-30 14:43:56',NULL,0),(145,' Content goes here     ','',NULL,NULL,'2012-08-30 14:02:54','2012-08-30 14:26:42',NULL,0),(146,' Content Goes Here  ','Products','','/products','2012-08-30 14:03:00','2012-08-30 14:18:44',NULL,0),(147,' Content goes here  ','Mobile Broadband Solutions','','/products/mobile-broadband-solutions','2012-08-30 14:03:00','2012-08-30 14:19:06',NULL,0),(148,' Content goes here  ','Integrated M2M Solutions','','/products/integrated-m2m-solutions','2012-08-30 14:04:00','2012-08-30 14:19:27',NULL,0),(149,' Content goes here  ','MIFI Intelligent Mobile Hotspots','','/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','2012-08-30 14:21:00','2012-08-30 14:25:25',NULL,0),(150,' Content goes here  ','USB Devices','','/products/mobile-broadband-solutions/usb-devices','2012-08-30 14:22:00','2012-08-30 14:25:25',NULL,0),(151,' Content goes here  ','Data Cards Modems','','/products/mobile-broadband-solutions/data-cards-modems','2012-08-30 14:22:00','2012-08-30 14:25:25',NULL,0),(152,' Content goes here  ','Embedded Modules','','/products/mobile-broadband-solutions/embedded-modules','2012-08-30 14:22:00','2012-08-30 14:25:25',NULL,0),(153,' Content goes here  ','Software','','/products/mobile-broadband-solutions/software','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(154,' Content goes here  ','Connection Manager','','/products/mobile-broadband-solutions/software/connection-manager','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(155,' Content goes here  ','SDK','','/products/mobile-broadband-solutions/software/sdk','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(156,' Content goes here  ','Android RIL','','/products/mobile-broadband-solutions/software/android-ril','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(157,' Content goes here  ','Mobile Tracking','','/products/integrated-m2m-solutions/mobile-tracking','2012-08-30 14:23:00','2012-08-30 14:25:25',NULL,0),(158,' Content goes here  ','Assets Tracking','','/products/integrated-m2m-solutions/assets-tracking','2012-08-30 14:24:00','2012-08-30 14:25:25',NULL,0),(159,' Content goes here  ','Workforce Monitoring','','/products/integrated-m2m-solutions/workforce-monitoring','2012-08-30 14:24:00','2012-08-30 14:25:25',NULL,0),(160,' Content goes here  ','Telemetry','','/products/integrated-m2m-solutions/telemetry','2012-08-30 14:24:00','2012-08-30 14:25:25',NULL,0),(161,' Content goes here  ','Service Delivery Platform','','/products/integrated-m2m-solutions/service-delivery-platform','2012-08-30 14:24:00','2012-08-30 14:25:26',NULL,0),(112,' Featured content goes here   Homepage content goes here     ','',NULL,NULL,'2012-08-30 09:51:35','2012-08-30 14:45:31',NULL,0),(162,' Content goes here     ','Products','','/products','2012-08-30 14:47:00','2012-09-19 21:14:20',NULL,0),(163,' Content goes here     ','Our Expertise','','/our-expertise','2012-08-30 14:47:00','2012-08-30 14:59:14',NULL,0),(164,' Content goes here      Sidebar Content     ','News & Events','','/news-and-events','2012-08-30 14:47:00','2012-08-30 14:59:14',NULL,0),(165,' Content goes here      Sidebar Content     ','Solutions','','/our-partners','2012-08-30 14:48:00','2012-09-11 21:12:25',NULL,0),(166,' Content goes here     Sidebar Header Example\r\n Sidebar Content  Another Block\r\n\r\nList Item\r\nList Item\r\nList Item\r\n ','About','','/about','2012-08-30 14:48:00','2012-09-20 00:26:06',NULL,0),(167,' Content goes here     ','Support','','/support','2012-08-30 14:48:00','2012-08-30 14:59:14',NULL,0),(168,' Content goes here     ','Main','','/support/main','2012-08-30 14:48:00','2012-09-26 18:40:30',NULL,0),(169,' Content goes here     ','Certification','','/support/certification','2012-08-30 14:48:00','2012-09-19 21:07:49',NULL,0),(170,'    Sidebar Content     \r\nNovatel Wireless, Inc. is a leader in the design and development of intelligent wireless solutions based on 2G, 3G and 4G technologies providing wireless connectivity. The Company delivers specialized wireless solutions to carriers, distributors, retailers, OEMs and vertical markets worldwide. Novatel Wireless\' intelligent mobile hotspot products, software, USB modems, embedded modules and smart M2M modules provide innovative anywhere, anytime communications solutions for consumers and enterprises. \r\nHeadquartered in San Diego, California, Novatel Wireless, Inc. has been issued over 30 technology patents and has established partnerships with leading telecom operators, infrastructure providers and device manufacturers around the world. Novatel Wireless, Inc. is listed on NASDAQ: NVTL.   \r\n \r\nTarget Novatel Wireless, Inc. partners with wireless network operators, distributors, original equipment manufacturers (OEMs), and vertical markets worldwide to offer wireless connectivity solutions that meet the unique needs of the following markets:  \r\n\r\n\r\n\r\nMobile Workforce\r\nBusiness Professionals, Consumers, Sales Force, Field Service\r\n\r\n\r\nPublic Safety\r\nHomeland Security, Police, Fire, Traffic, Highway, Bridge\r\n\r\n\r\nTelematics\r\nAutomated Vehicle Location, Theft Recovery, Vehicle Monitoring\r\n\r\n\r\nTelemetry\r\nPoint Of Sale, ATM, Machine to Machine, Plant, Video, Theft Recovery, Vending, Meter Reading, Location Based Services\r\n\r\n\r\nTransportation\r\nTrucking, Courier, Fleet Management\r\n\r\n\r\nUtilities\r\nGas, Electric, Cable, Telephone\r\n\r\n\r\n\r\n  Direction for the Future Novatel Wireless, Inc. is uniquely poised to take advantage of the burgeoning wireless market. The company has built a reputation for quality, reliable, innovative products that serve a broad audience. On the road ahead, Novatel Wireless, Inc. intends to stay ahead of the curve by continuing to form alliances with industry-leading partners, diversifying its product offerings and supporting the latest wireless technologies.    ','About Us','','/about/about-us','2012-08-30 14:49:00','2012-09-19 23:19:05',NULL,0),(171,'    Sidebar Content     \r\n\r\n\r\n\r\n\r\n\r\n\r\nPeter V. Leparulo, Chairman and Chief Executive Officer\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n Peter V. Leparulo has served as a director since May 2003, as our Chairman since November 2006 and as our Chief Executive Officer since April 2008. He also served as our Chief Executive Officer from January 2003 to November 2007. From May 2001 to January 2003, he served as our Senior Vice President, General Manager, CDMA Operations. From September 2000 to May 2001, he served as our Senior Vice President, Corporate and Strategic Development and General Counsel. From June 1998 until September 2000, Mr. Leparulo was a Senior Partner at the law firm of Orrick, Herrington &amp; Sutcliffe LLP, where he specialized in corporate finance, mergers and acquisitions, securities, intellectual property and general corporate matters. Prior to joining Orrick, Mr. Leparulo was a Partner at the law firm of Pillsbury Madison &amp; Sutro LLP, from January 1992 until June 1998, and an Associate at that firm from October 1989 until January 1992. He holds a Bachelor of Science from Colgate University and a Juris Doctor from Case Western Reserve University. \r\n \r\n\r\n\r\n\r\n\r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nKenneth Leddon, Senior Vice President and Chief Financial Officer\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nKenneth G. Leddon has served as our Senior Vice President and Chief Financial Officer since January 2008. From November 2007 to January 2008, he served as our interim Chief Financial Officer. Before joining us, Mr. Leddon was a principal in the management consulting firm of Leddon &amp; Associates from September 2006 until November 2007. Prior to that, he was a principal in the management consulting firm of Pathway Strategic Partners from November 2002 to September 2006. Mr. Leddon also served as an interim executive or financial advisor for several companies while employed with two nationally recognized management consulting firms, XRoads Solutions Group, LLC and Buccino &amp; Associates, Inc. He also served as Chief Financial Officer and Vice President for several portfolio companies of Milhous Group, a private equity firm that was based in California. Mr. Leddon started his career at U.S. Steel Corporation, where he held several financial management positions during his 10 year tenure. Mr. Leddon holds a Bachelor of Science in Business Administration from California State University-Northridge and a Master of Science in Business Administration from Robert Morris University. \r\n\r\n\r\n\r\n\r\n \r\n\r\n\r\n\r\nSlim S. Souissi, Senior Vice President and Chief Technology Officer\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\nSlim S. Souissi has served as our Senior Vice President and Chief Technology Officer since 2004 and served as our Vice President and Chief Technology Officer from October 2002 to 2004. He previously served as our Vice President of Emerging Technologies from December 2001 to October 2002 and as our Principal Research Scientist from May 2000 to December 2001. Prior to joining us in 2002, Dr. Souissi was Principal Staff Engineer in Motorola’s research and development operation from November 1994 to May 2000. Dr. Souissi earned a Ph.D. and a Master of Science in Electrical Engineering from the Georgia Institute of Technology, a Master of Science in Digital Signal Processing from the Ecole Superieure d’Electricite (France) and a Master of Science in Engineering from the Ecole Centrale Marseille (France). Dr. Souissi holds 37 U.S. patents, all related to wireless technology. \r\n \r\n\r\n\r\n\r\n\r\n \r\n\r\n\r\n\r\nRobert M. Hadley, Chief Marketing Officer\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nRobert M. Hadley became our Chief Marketing Officer in March 2009 and served as a Senior Technical Advisor for the Company in the office of the Chief Executive Officer since March 2008. From 2004 to early 2008, Mr. Hadley was the Company’s Senior Vice President of Worldwide Sales and Marketing and was our Vice President of Sales and Marketing in 2003. He served as our Vice President of Strategic Accounts from April 2001 to December 2002. Before initially joining us, Mr. Hadley was Vice President of Sales for e-SIM Ltd., a provider of advanced simulation technology for product development. Mr. Hadley also previously held various senior sales and marketing positions at Aonix, a Thomson Software company providing IT solutions for corporate enterprise reporting and lifestyle software development markets, where he rose to the position of Vice President of Marketing. Mr. Hadley holds a Bachelor of Science in Computer Science from San Diego State University. \r\n\r\n\r\n\r\n\r\n \r\n\r\n\r\n\r\nChris Ross, Senior Vice President of Operations\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nChristopher J. Ross has served as our Vice President of Operations since July 2005 and our Senior Vice President of Operations since August 2007. From 1999 to July 2005, Mr. Ross was Vice President of Operations at Ericsson Wireless Communications where he was responsible for world-wide supply of wireless telecommunications infrastructure based on CDMA radio access technology. From 1994 to 1999, he was Vice President, Manufacturing at QUALCOMM where he was an operations executive. Prior to joining QUALCOMM, he was Vice President of Manufacturing at Spectragraphics where he founded the company’s contract manufacturing subsidiary (SMS Technologies) and also served as its General Manager. Mr. Ross holds both Bachelor and Master of Electrical Engineering degrees from Manhattan College. \r\n\r\n\r\n\r\n\r\n \r\n\r\n\r\n\r\nCatherine F. Ratcliffe, Senior Vice President of Business Affairs and General Counsel\r\n\r\n\r\n\r\n\r\n\r\n\r\nCatherine F. Ratcliffe has served as our Senior Vice President, Business Affairs, General Counsel and Secretary since August 2007 and served as our Vice President, Business Affairs and Secretary from May 2004 until August 2007. From 2002 to 2004, she practiced law, including as a Partner in the law firm of Lamb &amp; Kawakami. From 1997 to 2002 she was Vice President, General Counsel &amp; Human Resources at Day Runner, Inc. She was a Partner in the law firm of Bryan Cave LLP practicing in the areas of corporate finance, securities and mergers and acquisitions, from 1992 to 1997. Ms. Ratcliffe holds a Bachelor of Arts from the University of California at Los Angeles and a Juris Doctor from the University of California at Berkeley.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n ','Management Team','','/about/management-team','2012-08-30 14:49:00','2012-09-10 18:58:59',NULL,0),(172,' Content goes here      Sidebar Content     ','Investors','','/about/investors','2012-08-30 14:49:00','2012-08-30 14:59:15',NULL,0),(173,' Content goes here      Sidebar Content     ','Careers','','/about/careers','2012-08-30 14:49:00','2012-08-30 14:59:15',NULL,0),(174,' Content goes here      Sidebar Content     ','Contact Us','','/about/contact-us','2012-08-30 14:50:00','2012-08-30 14:59:15',NULL,0),(175,' Content goes here      Sidebar Content     ','Mobile Operators','','/our-partners/mobile-operators','2012-08-30 14:50:00','2012-08-30 14:59:15',NULL,0),(176,' Content goes here      Sidebar Content     ','System Integrations','','/our-partners/system-integrations','2012-08-30 14:50:00','2012-08-30 14:59:15',NULL,0),(177,' Content goes here      Sidebar Content     ','Application Service Providers','','/our-partners/application-service-providers','2012-08-30 14:51:00','2012-08-30 14:59:15',NULL,0),(178,' Content goes here      Sidebar Content     ','Manufacturing & Engineering','','/about/manufacturing-and-engineering','2012-08-30 14:51:00','2012-08-30 14:59:15',NULL,0),(179,' Content goes here      Sidebar Content     ','Press Releases','','/news-and-events/press-releases','2012-08-30 14:51:00','2012-08-30 14:59:15',NULL,0),(180,' Content goes here      Sidebar Content     ','In the News','','/news-and-events/in-the-news','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(181,' Content goes here      Sidebar Content     ','Events','','/news-and-events/events','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(182,' Content goes here     ','Media Center','','/news-and-events/media-center','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(183,' Content goes here     ','Target Markets','','/our-expertise/target-markets','2012-08-30 14:52:00','2012-08-30 14:59:15',NULL,0),(184,' Content goes here     ','Innovation','','/our-expertise/innovation','2012-08-30 14:53:00','2012-08-30 14:59:16',NULL,0),(185,' Content goes here     ','Professional Services','','/our-expertise/professional-services','2012-08-30 14:53:00','2012-08-30 14:59:16',NULL,0),(186,' Content goes here     ','Research & Development','','/our-expertise/research-and-development','2012-08-30 14:53:00','2012-08-30 14:59:16',NULL,0),(187,'','Mobile Broadband Solutions','','/products/mobile-broadband-solutions','2012-08-30 14:53:00','2012-09-12 17:11:12',NULL,0),(188,' Content goes here     ','Integrated M2M Solutions','','/products/integrated-m2m-solutions','2012-08-30 14:54:00','2012-09-28 17:02:46',NULL,0),(189,' Sidebar Content  ','MIFI Intelligent Mobile Hotspots','','/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots','2012-08-30 14:54:00','2012-09-12 17:11:42',NULL,0),(190,' Content goes here      Sidebar Content     ','USB Devices','','/products/mobile-broadband-solutions/usb-devices','2012-08-30 14:55:00','2012-08-30 14:59:16',NULL,0),(191,' Content goes here      Sidebar Content     ','Data Card Modems','','/products/mobile-broadband-solutions/data-card-modems','2012-08-30 14:55:00','2012-08-30 14:59:16',NULL,0),(192,' Content goes here      Sidebar Content     ','Embedded Modules','','/products/mobile-broadband-solutions/embedded-modules','2012-08-30 14:55:00','2012-08-30 14:59:16',NULL,0),(193,' Content goes here      Sidebar Content     ','Software','','/products/mobile-broadband-solutions/software','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(194,' Content goes here      Sidebar Content     ','Connection Manager','','/products/mobile-broadband-solutions/software/connection-manager','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(195,' Content goes here      Sidebar Content     ','SDK','','/products/mobile-broadband-solutions/software/sdk','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(196,' Content goes here      Sidebar Content     ','Android RIL','','/products/mobile-broadband-solutions/software/android-ril','2012-08-30 14:56:00','2012-08-30 14:59:16',NULL,0),(197,' Sidebar Content      The flagship of Enfora’s industry-leading portfolio of integrated Spider Mobile Tracking products, the MT series of platforms connect the world’s leading companies to their valuable mobile assets. The certified dual &amp; quad-band integrated devices are optimized for today’s increasing demand for vehicle recovery, fuel-efficient fleet operations, driver and vehicle profiling, and interactive communications. Providing complete GSM/GPRS communications, Enfora helps you track and monitor vehicles from the family car to the largest fleet of commercial vehicles. With superior GPS sensitivity, a programmable rules engine, polygon Geo-Fencing, integrated SMS commands, messaging and much more, the units are designed to be easily deployed and provisioned, supplying critical information for the most demanding fleet operator, buy-here pay-here dealers, or pay-as-you-go insurance company. Enfora’s intelligent mobile tracking devices feature superior performance in a small package for ultimate flexibility. Coupled with the robust N4A Communications and Management platform, devices can be provisioned, monitored and reconfigured remotely, most anywhere in the world. Driven by our services architecture, Enfora delivers a flexible, modular architecture for fast wireless asset tracking, solutions development and deployment. Keeping you Connected to your Assets, Anywhere, Anytime.Popular Use Cases for the Spider MT family:MT 4000/4100 – Designed for application providers, system integrators, and enterprise customers to optimize mobile resources and improve their bottom line, the MT 4000 is a flexible quad-band GSM/GPRS mobile tracking device, delivering the key product features powering the most demanding applications: fleet management, insurance telematics, teen tracking, vehicle location and recovery, and more.MT 3000/3050 – A certified dual-band integrated device, purpose-built for the Usage Based Insurance (UBI), telematics, and fleet management markets. Providing easy plug-and-play installation, the MT 3000 is designed for passenger cars, light trucks, and service vans.MT 2500 – Economical and feature rich, this quad-band 3-axis accelerometer equipped platform is enhanced with a 16 pin multi-I/O connector that includes two analog inputs, polygon geo-fencing capabilities, and more. An economical solution for vehicle recovery &amp; fleets with driver behavior reporting and multiple I/O requirements.MT-Gu w/Accelerometer – Full-featured for the demanding fleet operator, this quad-band platform with voice capabilities provides an interface to select Garmin PNDs via the optional FMI plug-in, I/O support for sensor connectivity and an optional battery for communication when power is lost. The Spider MT-Gu is specially designed to grow as your business does.      ','Mobile Tracking','','/products/integrated-m2m-solutions/mobile-tracking','2012-08-30 14:56:00','2012-09-11 18:18:58',NULL,0),(198,'    Sidebar Content      Enfora’s industry-leading reputation is rooted in a legacy of success, innovation and experience that spans the globe. Working closely with customers, Enfora’s engineering team has the experience, specialized knowledge and intimate understanding of the challenges that face the dynamic world of asset monitoring today. Fixed or mobile, a myriad of assets need to be monitored for regulatory compliance, security, national defense, operational efficiencies &amp; state conditions or just peace of mind. Whether you are monitoring a Hazmat shipment on a truck or railroad car, the location of a construction trailer, a shipping container, ATM machine, spool of copper cable, refrigeration unit, air conditioning compressor, pallet or any other high-value asset, Enfora has the right solution for you. Enfora’s intelligent asset monitoring devices feature external and internal power options for ultimate flexibility. Coupled with the robust N4A Communications and Management platform, devices can be provisioned, monitored and reconfigured remotely, most anywhere in the world. Coupled with our Services Architecture, Enfora delivers a flexible, modular architecture for fast wireless asset management, solutions development and deployment. Keeping you Connected to your Assets, Anywhere, Anytime.Popular Use Cases for the Spider AT family:Spider AT 3000 – with up to a three-year battery life, the Spider AT 3000 is optimized for assets that are fixed or move infrequently. Spider AT 4000 – possessing the battery life of the Spider AT 3000, the Spider AT 4000 features a non-charging power option for those applications that may move and need more frequent reporting while powered and/or mobile.Spider AT 3010 – Similar features to the Spider AT 3000, but with fewer reports over the life of the product; the Spider AT 3010, however, can produce more frequent reporting for “recovery” conditions.   ','Asset Tracking','','/products/integrated-m2m-solutions/asset-tracking','2012-08-30 14:57:00','2012-09-10 18:56:05',NULL,0),(199,'    Sidebar Content     Workforce Monitoring Solutions\r\nLone-workers in hazardous environments who may find themselves in a man-down situation, operators of small fleets needing to maintain simple yet effective communication with their workers, wandering or lost children and Alzheimer’s patients who may need access to a panic button or simple voice communication: these are just a few of the Mobile Resource Management (MRM) challenges that must be addressed by any M2M provider in today’s market. Connectivity combined with location-based features and reporting in a user-friendly format are imperatives to success for any MRM device in the personal and workforce safety market; such devices must be easily deployed and provisioned, and monitored by a reliable end-to-end solution. \r\nDriving Business Applications\r\n The Enfora® Personnel Monitoring Series provides flexibility in global MRM monitoring for the following target markets: \r\n   \r\n - Personal &amp; Remote Worker Tracking \r\n - Child &amp; Teen Tracking \r\n - Mobile/Home Healthcare \r\n - Emergency Response \r\n - Elderly Locator \r\nQuality &amp; Reliability that Keeps Selling\r\nAt Novatel Wireless we infuse quality in all we do, starting with well-defined ISO 9001:2008* engineering processes that cross both the consumer mobile computing and M2M cellular modem teams. Our longstanding relationships with industry leaders like Qualcomm® help us to accurately and efficiently integrate chipset capabilities into our in-house modem designs that ultimately drive our integrated devices while accelerating time to market. Our Enfora® Enabler® Series modules also experience statistically low returns—enhancing overall device stability—while our clients rate our RMA and support processes well above industry averages in yearly Customer Satisfaction Surveys. Those are statistics that engender customer loyalty and keep us working hard to make transitions simple and technology fresh. \r\n   ','Workforce Monitoring','','/products/integrated-m2m-solutions/workforce-monitoring','2012-08-30 14:57:00','2012-09-28 17:21:05',NULL,0),(200,'    Sidebar Content      From the oil pipeline to the soft drink dispenser, today’s visionary companies rely on remote data communications to collect data from their remote assets, enhancing their bottom line by allowing their business to operate more efficiently through the management and utilization of critical, decision-based data. This certified, quad-band integrated IP-based platform is compact and economical, ensuring cost-effective connectivity in a small robust platform. Designed with GSM/GPRS connectivity for global deployments, the SA family has been designed to enhance your visibility into remotely-located fixed assets. Similar to Enfora’s industry-leading portfolio of integrated Mobile Tracking products, the SA family connects the world’s leading companies to their fixed assets, Anywhere, Anytime. Fixed assets of various types can benefit greatly from this fully programmable platform, with voice communications, a wide operational environment and much more. the units are designed to be easily deployed and provisioned, supplying critical information from industrial automation applications, supply and cold chain environments, fixed asset deployments, and a host of applications where companies require connectivity to serially-connected and sensor-generated data. The SA family is part of Enfora’s intelligent telemetry devices, featuring superior performance in a small package for ultimate flexibility. Coupled with the robust N4A Management and Communications Software platform, devices can be provisioned, monitored and reconfigured remotely, most anywhere in the world. Driven by the services architecture, Enfora delivers a flexible, modular architecture for fast wireless asset tracking, solutions development and deployment. Keeping you connected to your company’s fixed and mobile assets, Anywhere, Anytime.Popular Use Cases for the Spider SA family:Spider SA-G+ - the SA-G+ is a full-featured telemetry platform with serial and user-defined I/O ports designed to communicate with sensors and most any serial-based communications device.  ','Telemetry','','/products/integrated-m2m-solutions/telemetry','2012-08-30 14:57:00','2012-09-10 18:56:48',NULL,0),(201,'    Sidebar Content      Novatel Wireless has a robust M2M software offering that can quickly build connectivity from your Internet Protocol (IP)-enabled remote assets to your existing enterprise applications. We provide the ability to choose a right-sized option for your enterprise needs. Our platform includes the following products:  the N4ATM Communications and Management Software (CMS) and the N4A™ Device Manager. With our decades of cumulative experience in wireless data and M2M environments, we can help you choose the best products, formats, and options to enhance your remote intelligence gathering capabilities, putting that data at the fingertips of corporate decision makers to identify device issues, decrease out-of-service time, track shipments, improve worker productivity, and more.  ','Service Enablements Platform','','/products/integrated-m2m-solutions/service-delivery-platform','2012-08-30 14:57:00','2012-09-28 17:14:58',NULL,0),(202,'    Sidebar Content     The Novatel Wireless professional services experience is driving a profound technology transformation and broadband wireless users are demanding ubiquitous connectivity for a host of new applications. Whether you are perfecting a reference design, developing a new product or modifying and existing application our design engineers can help. With a strong knowledge base, real-world experiences in a wide variety of market and vertical segments and a demonstrable, results driving mentality, Novatel Wireless delivers.    Revolutionized antenna designs, creative communications solutions, small form factors, low-power consumption and more, Novatel Wireless brings real-world design experience to help you get there faster, with less effort and on-budget.    Our Product Line Managers and Project Management office is comprised of a team of talented engineers with years of design and product development knowledge, built to work closely with your company to define a project, its time lines and deliverables. Once your project is approved, a dedicated Project Manager is assigned to ensure your ultimate success.    Working in close partnership with our customers, Novatel Wireless has helped to bring many designs to life, shortening product development and deployment cycles. Whether you need to tweak a small parameter in your product, develop something new or start a project and have it managed from the ground up, we can provide the expertise to get your project moving in the right direction.    The architecture helps make it simple, do you have a special design challenge or just want help getting past a small issue? No project is too small or too big; we have assisted many of today’s global 1000 companies with innovative designs, engineering assistance and creative ways to connect to their customers.  ','Professional Services','','/products/integrated-m2m-solutions/professional-services','2012-08-30 14:58:00','2012-09-28 17:04:34',NULL,0),(203,'    Sidebar Content     Highlights\r\nNovatel Wireless accelerates solution delivery by quickly building connectivity from a customer’s Internet Protocol (IP)-enabled remote assets to their existing enterprise applications. Removing the inherent complexities of wireless networks and their communications protocols, our N4A™ Communications and Management Software (CMS) enables database or web service-driven control and management of Enfora® remote devices. Using a standard web-based user interface, customers have a detailed mobile asset view, enabling proactive management as well as necessary system upgrades. Additionally, using the built-in device configuration and service management capabilities, N4A™ CMS effectively manages and applies device configurations across multiple device groups. \r\nAvailable as an on-premise solution, N4A™ CMS is particularly well suited to customers who: \r\n·       Need a functional application up and running quickly \r\n·       Lack the man hours or expertise necessary to master device and session management \r\n·       Want to capitalize on our experience with wireless devices and network operators \r\n·       Require flexible integration options \r\n·       Prefer to focus resources on their in-house application software development \r\n·       Need a simple web service interface for programmatic interaction \r\nA Scalable Solution\r\nThe flexibility of our N4A™ software architecture makes it possible to integrate a broad range of existing solutions. The N4A™ CMS application has been architected to scale, functioning in environments varying from a single-server demo to those with carrier-grade requirements. The application may be scaled vertically and horizontally, depending on customer requirements. N4A™ CMS is designed for the multitenant requirements of resellers and company organizations. \r\nExceptional Support\r\nNovatel Wireless has an exceptional customer support infrastructure, with Technical Account Managers (TAMs) and Field Applications Engineers (FAEs) around the globe available to deliver customer-driven support options both pre- and post-installation. \r\n\r\n    ','CMS','','/products/integrated-m2m-solutions/service-delivery-platform/cms','2012-08-30 14:58:00','2012-09-28 17:12:24',NULL,0),(204,' Content goes here      Sidebar Content     ','Plug-Ins','','/products/integrated-m2m-solutions/service-delivery-platform/plug-ins','2012-08-30 14:58:00','2012-08-30 14:59:17',NULL,0),(205,'    Sidebar Content     Highlights \r\nThe N4A™ Device Manager is a user interface that provides logical management and device provisioning of IP-based M2M devices.  It speeds time to market while managing a large number of devices within a system. It is compatible with all Enfora® M2M devices and may be purchased as a hosted or on-premise solution. N4A™ Device Manager increases your control of your remote assets by providing the following features:                       \r\n §  View, change and manage device configuration and scripts \r\n §  Manage single devices or groups of devices \r\n §  Complete device history to assist in self-care and issue resolution (plus alerting and logging capability with on-premise solution \r\n §  Monitor device health and operational status \r\n §  Provide Over-The-Air updates \r\n §  Manage user accounts and device privileges with multiple administration levels \r\n §  Access shipment tracking \r\nExceptional Support\r\n Novatel Wireless has an exceptional customer support infrastructure, with Technical Account Managers (TAMs) and Field Applications Engineers (FAEs) around the globe available to deliver customer-driven support options both pre- and post-installation. \r\n    ','Device Manager','','/products/integrated-m2m-solutions/service-delivery-platform/device-manager','2012-08-30 14:58:00','2012-09-28 17:16:44',NULL,0),(206,'Developer Lounge        Privacy Policy        Terms of Use        Copyright © 2012 Novatel Wireless, Inc. All rights reserved.  ','Footer',NULL,'/!stacks/footer','2012-08-30 14:59:12','2012-09-19 22:04:21',NULL,0),(207,' Where to Buy   |   Contact Us      ','Header Alt Nav',NULL,'/!stacks/header-alt-nav','2012-09-04 16:00:28','2012-09-12 13:46:14',NULL,0),(208,'','Company Logo',NULL,'/!stacks/company-logo','2012-09-05 10:39:59','2012-09-12 13:45:00',NULL,0),(209,' See More Mobile Devices &gt;  MiFi® 4620L  MiFi® 4620L Intelligent Mobile Hotspot \r\n Fast, always-on Internet wherever you roam—worldwide* With the Verizon Jetpack™ 4G LTE Mobile Hotspot MiFi® 4620L by Novatel Wireless, access blazing fast 4G LTE and 3G mobile broadband worldwide and share your connection with up to ten Wi-Fi enabled devices simultaneously. MiFi 4620L is the next generation in the Novatel Wireless MiFi intelligent mobile hotspot portfolio for Verizon Wireless, built on award-winning innovation and design, proven performance and industry leading user experience. \r\n Put the world in the palm of your hand With this 4G LTE MiFi intelligent mobile hotspot, enjoy fast Internet access whenever, wherever you go. MiFi 4620L is backward compatible with high speed DC HSPA+, HSPA+, WCDMA, EDGE and GPRS technologies to keep you connected. The compact MiFi 4620L is perfect for on-the-go connectivity and won’t weigh you down. \r\n   ','Mifi 4620L','','/products/mobile-broadband-solutions/mifi-intelligent-mobile-hotspots/mifi-4620l','2012-09-11 19:44:00','2012-09-19 20:25:27',NULL,0),(211,'','Search Results','','/support/search-results','2012-09-12 20:50:00','2012-09-19 21:07:49',NULL,0),(212,' Content goes here      Sidebar Content     ','Follow Us','','/follow-us','2012-09-19 23:20:00','2012-09-19 23:25:59',NULL,0),(216,' Content goes here      Sidebar Content     ','Transportation','','/our-partners/transportation','2012-09-19 23:27:00','2012-09-19 23:28:38',NULL,0),(217,' Content goes here      Sidebar Content     ','Security','','/our-partners/security','2012-09-19 23:28:00','2012-09-19 23:28:38',NULL,0),(218,' Content goes here      Sidebar Content     ','Telehealth/Medical','','/our-partners/telehealth-medical','2012-09-19 23:28:00','2012-09-19 23:28:38',NULL,0),(219,'    Sidebar Content        \r\nM2M Modules\r\nA Trusted Brand since 2005\r\nContinuing the successful Enabler® OEM module line that’s been a staple of the Enfora® M2M brand since its introduction in 2005, the Enabler® IIIG Series maintains the core features of using industry-leading chipset manufacturers as the basis of our trusted in-house designs and then overlaying our Smart Agent with its action-based intelligence onto the final modem design. With the recent expansion of the series beyond the Enabler® IIIG into our new HS Series, we provide you with even more module options for integration into your mission critical designs—while preserving the industry-leading intelligence and in-house expertise that’s led to our iconic brand success. \r\nA Made-for-Migration Technology Line\r\nWhether you’re eager to migrate from 2G to 3G or between other technologies in our GSM/GPRS, 1xRTT (CDMA2000), and HSDPA/UMTS module line up, it will be easy to do with the common-by-design build of our extended HS Series of OEM modules. We’ve preserved the same 100-pin I/O and B2B RF connectors; a compatible x-y size and mounting; and the same firmware API, including our Smart Agent from our popular Enabler® IIIG Series. Another benefit of an Enabler® Series transition is that you can even reuse most of your valuable script features. So if you require a longer product life for your next-generation design—or your business plans include worldwide deployments, international roaming, regional expansion, carrier change, and/or better cellular coverage—we’ve already eased your transition and lessened your risk. \r\nEnhancing Integrator Success\r\nNovatel Wireless supports module integrators by bringing an in-depth understanding of complex carrier networks and actively working with clients to achieve numerous regulatory approvals. In fact, we’ve taken Enfora® M2M modules through about 60 PTCRB and 10 new GCF certification approvals, have been a participant in the development of the GCF and PTCRB M2M approval requirements, and have expertise in nearly 20 other regulatory approval types. Novatel Wireless additionally can lower risk, speed time to market, and achieve cost discounts for our clients through long-standing relationships with third-party certifying labs. \r\nArchitected for Target Applications &amp; Markets\r\nA strong differentiator of our Enabler® HS Series of cellular modems that’s not immediately obvious is that—beyond working with world-class chipset manufacturers and integrating our actionable intelligence into our designs—we calibrate and align our hardware and low-level firmware to accommodate the needs of the target applications. So whether your battery-free telematics application needs extra low power or your fixed exterior monitoring site needs extended low temperature, we have you covered.  Some key target applications include: \r\n\r\n   \r\n\r\n   \r\n\r\n   \r\n\r\n\r\n\r\n\r\n\r\n·       Security/Safety/Alarm \r\n\r\n\r\n·       Utilities \r\n\r\n\r\n·       Transportation \r\n\r\n\r\n·       Telemetry \r\n\r\n\r\n\r\n\r\n·       AMR/AMI End Points \r\n\r\n\r\n·       Remote Monitor/Control (RMAC) \r\n\r\n\r\n·       Telematics \r\n·       Automotive \r\n\r\n\r\n·       mHealth \r\n\r\n\r\n\r\n\r\n\r\nView Enterprise Assets As Never Before\r\nAll Enfora® modems are designed for full compatibility with our N4A® Software Platformthat includes the N4A® Communications and Management Software (CMS) and N4A® Device Manager, which provide accelerated device provisioning, deployment, shipping, monitoring, and tracking worldwide. Once you’ve experienced this level of visibility and control over your decision-clarifying assets, you won’t know how you managed without it.  \r\nQuality &amp; Reliability that Keeps Selling\r\nAt Novatel Wireless we infuse quality in all we do, starting with well-defined ISO 9001:2008*engineering processes that cross both the consumer mobile computing and M2M cellular modem teams. Our longstanding relationships with industry leaders like Qualcomm® help us to accurately and efficiently integrate chipset capabilities into our modem designs while accelerating time to market. Our modules also experience statistically low returns, while our clients rate our RMA and support processes well above industry averages in yearly Customer Satisfaction Surveys. Those are statistics that engender customer loyalty and keep us working hard to make transitions simple and technology fresh. \r\n\r\n    ','M2M Modules','','/products/integrated-m2m-solutions/m2m-modules','2012-09-28 16:52:00','2012-09-28 17:27:23',NULL,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=2021 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
INSERT INTO `PageStatistics` VALUES (1,1,'2012-08-22','2012-08-22 23:38:48',1),(2,96,'2012-08-22','2012-08-22 23:38:50',1),(3,1,'2012-08-22','2012-08-22 23:38:55',1),(4,2,'2012-08-22','2012-08-22 23:39:11',1),(5,1,'2012-08-23','2012-08-23 23:26:34',0),(6,1,'2012-08-23','2012-08-23 23:27:47',1),(7,2,'2012-08-23','2012-08-23 23:27:54',1),(8,27,'2012-08-23','2012-08-23 23:27:58',1),(9,27,'2012-08-23','2012-08-23 23:28:02',1),(10,29,'2012-08-23','2012-08-23 23:28:02',1),(11,27,'2012-08-23','2012-08-23 23:28:15',1),(12,27,'2012-08-23','2012-08-23 23:28:20',1),(13,27,'2012-08-23','2012-08-23 23:28:23',1),(14,1,'2012-08-23','2012-08-23 23:28:26',1),(15,27,'2012-08-23','2012-08-23 23:28:40',1),(16,1,'2012-08-23','2012-08-23 23:28:42',1),(17,1,'2012-08-23','2012-08-23 23:28:44',1),(18,27,'2012-08-23','2012-08-23 23:28:47',1),(19,1,'2012-08-23','2012-08-23 23:28:49',1),(20,27,'2012-08-23','2012-08-23 23:33:29',1),(21,27,'2012-08-23','2012-08-23 23:33:31',1),(22,27,'2012-08-23','2012-08-23 23:35:00',1),(23,27,'2012-08-23','2012-08-23 23:36:51',1),(24,1,'2012-08-28','2012-08-28 17:56:26',1),(25,95,'2012-08-28','2012-08-28 17:56:28',1),(26,2,'2012-08-28','2012-08-28 17:56:37',1),(27,100,'2012-08-28','2012-08-28 17:57:59',1),(28,1,'2012-08-28','2012-08-28 17:57:59',0),(29,1,'2012-08-28','2012-08-28 17:58:08',0),(30,1,'2012-08-28','2012-08-28 17:58:10',0),(31,100,'2012-08-28','2012-08-28 17:58:24',0),(32,100,'2012-08-28','2012-08-28 17:58:27',0),(33,100,'2012-08-28','2012-08-28 17:58:33',0),(34,100,'2012-08-28','2012-08-28 17:58:39',0),(35,100,'2012-08-28','2012-08-28 17:59:21',0),(36,100,'2012-08-28','2012-08-28 17:59:33',0),(37,1,'2012-08-28','2012-08-28 17:59:34',1),(38,2,'2012-08-28','2012-08-28 17:59:41',1),(39,100,'2012-08-28','2012-08-28 18:01:46',1),(40,100,'2012-08-28','2012-08-28 18:01:51',1),(41,1,'2012-08-28','2012-08-28 18:01:51',1),(42,2,'2012-08-28','2012-08-28 18:01:54',1),(43,2,'2012-08-28','2012-08-28 18:02:02',1),(44,46,'2012-08-28','2012-08-28 18:02:06',1),(45,55,'2012-08-28','2012-08-28 18:02:09',1),(46,55,'2012-08-28','2012-08-28 18:02:11',1),(47,55,'2012-08-28','2012-08-28 18:02:11',1),(48,55,'2012-08-28','2012-08-28 18:02:21',1),(49,55,'2012-08-28','2012-08-28 18:02:21',1),(50,2,'2012-08-28','2012-08-28 18:02:25',1),(51,2,'2012-08-28','2012-08-28 18:02:26',1),(52,2,'2012-08-28','2012-08-28 18:02:26',1),(53,2,'2012-08-28','2012-08-28 18:02:30',1),(54,1,'2012-08-28','2012-08-28 18:02:38',1),(55,46,'2012-08-28','2012-08-28 18:02:51',1),(56,55,'2012-08-28','2012-08-28 18:02:52',1),(57,46,'2012-08-28','2012-08-28 18:02:54',1),(58,48,'2012-08-28','2012-08-28 18:02:56',1),(59,46,'2012-08-28','2012-08-28 18:02:58',1),(60,49,'2012-08-28','2012-08-28 18:03:00',1),(61,46,'2012-08-28','2012-08-28 18:12:11',1),(62,52,'2012-08-28','2012-08-28 18:12:43',1),(63,46,'2012-08-28','2012-08-28 18:12:47',1),(64,73,'2012-08-28','2012-08-28 18:12:55',1),(65,46,'2012-08-28','2012-08-28 18:12:58',1),(66,74,'2012-08-28','2012-08-28 18:13:01',1),(67,46,'2012-08-28','2012-08-28 18:13:05',1),(68,75,'2012-08-28','2012-08-28 18:13:06',1),(69,46,'2012-08-28','2012-08-28 18:13:13',1),(70,46,'2012-08-28','2012-08-28 18:54:03',1),(71,1,'2012-08-28','2012-08-28 20:28:50',1),(72,2,'2012-08-28','2012-08-28 20:29:10',1),(73,27,'2012-08-28','2012-08-28 20:29:15',1),(74,1,'2012-08-29','2012-08-29 16:37:45',1),(75,1,'2012-08-29','2012-08-29 21:06:15',1),(76,95,'2012-08-29','2012-08-29 21:06:18',1),(77,1,'2012-08-29','2012-08-29 22:24:40',1),(78,1,'2012-08-30','2012-08-30 16:40:26',1),(79,2,'2012-08-30','2012-08-30 16:40:31',1),(80,27,'2012-08-30','2012-08-30 16:42:12',1),(81,27,'2012-08-30','2012-08-30 16:42:15',1),(82,27,'2012-08-30','2012-08-30 16:42:17',1),(83,2,'2012-08-30','2012-08-30 16:42:20',1),(84,1,'2012-08-30','2012-08-30 16:42:22',1),(85,1,'2012-08-30','2012-08-30 16:42:30',1),(86,1,'2012-08-30','2012-08-30 16:44:01',1),(87,1,'2012-08-30','2012-08-30 16:45:49',1),(88,1,'2012-08-30','2012-08-30 16:47:17',1),(89,1,'2012-08-30','2012-08-30 16:48:26',1),(90,1,'2012-08-30','2012-08-30 16:48:39',1),(91,1,'2012-08-30','2012-08-30 16:48:42',1),(92,1,'2012-08-30','2012-08-30 16:50:17',1),(93,1,'2012-08-30','2012-08-30 16:50:20',1),(94,7,'2012-08-30','2012-08-30 16:50:41',1),(95,2,'2012-08-30','2012-08-30 16:50:57',1),(96,31,'2012-08-30','2012-08-30 16:51:00',1),(97,32,'2012-08-30','2012-08-30 16:51:12',1),(98,32,'2012-08-30','2012-08-30 16:51:35',1),(99,31,'2012-08-30','2012-08-30 16:51:35',1),(100,32,'2012-08-30','2012-08-30 16:51:37',1),(101,32,'2012-08-30','2012-08-30 16:51:52',1),(102,31,'2012-08-30','2012-08-30 16:51:52',1),(103,32,'2012-08-30','2012-08-30 16:51:54',1),(104,32,'2012-08-30','2012-08-30 16:52:29',1),(105,31,'2012-08-30','2012-08-30 16:52:29',1),(106,7,'2012-08-30','2012-08-30 16:52:36',1),(107,1,'2012-08-30','2012-08-30 16:52:46',1),(108,1,'2012-08-30','2012-08-30 17:12:44',1),(109,1,'2012-08-30','2012-08-30 17:14:39',1),(110,1,'2012-08-30','2012-08-30 17:14:45',1),(111,1,'2012-08-30','2012-08-30 17:14:54',1),(112,1,'2012-08-30','2012-08-30 17:14:59',1),(113,1,'2012-08-30','2012-08-30 17:15:12',1),(114,1,'2012-08-30','2012-08-30 17:15:20',1),(115,1,'2012-08-30','2012-08-30 17:16:04',1),(116,2,'2012-08-30','2012-08-30 17:16:20',1),(117,27,'2012-08-30','2012-08-30 17:16:23',1),(118,2,'2012-08-30','2012-08-30 17:16:24',1),(119,31,'2012-08-30','2012-08-30 17:16:26',1),(120,7,'2012-08-30','2012-08-30 17:19:45',1),(121,6,'2012-08-30','2012-08-30 17:20:06',1),(122,7,'2012-08-30','2012-08-30 17:20:06',1),(123,6,'2012-08-30','2012-08-30 17:20:22',1),(124,7,'2012-08-30','2012-08-30 17:20:22',1),(125,6,'2012-08-30','2012-08-30 17:20:35',1),(126,7,'2012-08-30','2012-08-30 17:20:35',1),(127,6,'2012-08-30','2012-08-30 17:20:45',1),(128,7,'2012-08-30','2012-08-30 17:20:45',1),(129,6,'2012-08-30','2012-08-30 17:20:54',1),(130,7,'2012-08-30','2012-08-30 17:20:54',1),(131,6,'2012-08-30','2012-08-30 17:21:03',1),(132,7,'2012-08-30','2012-08-30 17:21:04',1),(133,6,'2012-08-30','2012-08-30 17:21:33',1),(134,7,'2012-08-30','2012-08-30 17:21:33',1),(135,6,'2012-08-30','2012-08-30 17:21:50',1),(136,7,'2012-08-30','2012-08-30 17:21:50',1),(137,6,'2012-08-30','2012-08-30 17:22:02',1),(138,7,'2012-08-30','2012-08-30 17:22:02',1),(139,6,'2012-08-30','2012-08-30 17:22:11',1),(140,7,'2012-08-30','2012-08-30 17:22:11',1),(141,6,'2012-08-30','2012-08-30 17:22:24',1),(142,7,'2012-08-30','2012-08-30 17:22:24',1),(143,6,'2012-08-30','2012-08-30 17:22:36',1),(144,7,'2012-08-30','2012-08-30 17:22:36',1),(145,6,'2012-08-30','2012-08-30 17:22:48',1),(146,7,'2012-08-30','2012-08-30 17:22:48',1),(147,6,'2012-08-30','2012-08-30 17:22:57',1),(148,7,'2012-08-30','2012-08-30 17:22:58',1),(149,6,'2012-08-30','2012-08-30 17:23:19',1),(150,7,'2012-08-30','2012-08-30 17:23:19',1),(151,6,'2012-08-30','2012-08-30 17:23:29',1),(152,7,'2012-08-30','2012-08-30 17:23:30',1),(153,6,'2012-08-30','2012-08-30 17:23:41',1),(154,7,'2012-08-30','2012-08-30 17:23:41',1),(155,6,'2012-08-30','2012-08-30 17:23:55',1),(156,7,'2012-08-30','2012-08-30 17:23:55',1),(157,6,'2012-08-30','2012-08-30 17:24:15',1),(158,7,'2012-08-30','2012-08-30 17:24:15',1),(159,6,'2012-08-30','2012-08-30 17:24:35',1),(160,7,'2012-08-30','2012-08-30 17:24:36',1),(161,6,'2012-08-30','2012-08-30 17:24:52',1),(162,7,'2012-08-30','2012-08-30 17:24:52',1),(163,6,'2012-08-30','2012-08-30 17:25:09',1),(164,7,'2012-08-30','2012-08-30 17:25:09',1),(165,6,'2012-08-30','2012-08-30 17:25:40',1),(166,7,'2012-08-30','2012-08-30 17:25:40',1),(167,6,'2012-08-30','2012-08-30 17:25:49',1),(168,7,'2012-08-30','2012-08-30 17:25:50',1),(169,6,'2012-08-30','2012-08-30 17:26:03',1),(170,7,'2012-08-30','2012-08-30 17:26:03',1),(171,6,'2012-08-30','2012-08-30 17:26:11',1),(172,7,'2012-08-30','2012-08-30 17:26:11',1),(173,1,'2012-08-30','2012-08-30 19:45:27',1),(174,1,'2012-08-30','2012-08-30 19:46:06',1),(175,1,'2012-08-30','2012-08-30 19:46:23',1),(176,115,'2012-08-30','2012-08-30 19:46:26',1),(177,115,'2012-08-30','2012-08-30 19:46:27',1),(178,116,'2012-08-30','2012-08-30 19:46:29',1),(179,116,'2012-08-30','2012-08-30 19:46:30',1),(180,117,'2012-08-30','2012-08-30 19:46:31',1),(181,117,'2012-08-30','2012-08-30 19:46:32',1),(182,118,'2012-08-30','2012-08-30 19:46:33',1),(183,118,'2012-08-30','2012-08-30 19:46:35',1),(184,119,'2012-08-30','2012-08-30 19:46:35',1),(185,119,'2012-08-30','2012-08-30 19:46:37',1),(186,120,'2012-08-30','2012-08-30 19:46:38',1),(187,120,'2012-08-30','2012-08-30 19:46:39',1),(188,2,'2012-08-30','2012-08-30 19:46:46',1),(189,31,'2012-08-30','2012-08-30 19:46:50',1),(190,31,'2012-08-30','2012-08-30 19:46:59',1),(191,113,'2012-08-30','2012-08-30 19:46:59',1),(192,113,'2012-08-30','2012-08-30 19:47:04',1),(193,2,'2012-08-30','2012-08-30 19:47:12',1),(194,36,'2012-08-30','2012-08-30 19:47:14',1),(195,2,'2012-08-30','2012-08-30 19:47:24',1),(196,36,'2012-08-30','2012-08-30 19:47:26',1),(197,36,'2012-08-30','2012-08-30 19:47:33',1),(198,36,'2012-08-30','2012-08-30 19:47:34',1),(199,36,'2012-08-30','2012-08-30 19:49:41',1),(200,36,'2012-08-30','2012-08-30 19:49:41',1),(201,36,'2012-08-30','2012-08-30 19:49:43',1),(202,144,'2012-08-30','2012-08-30 19:50:23',1),(203,36,'2012-08-30','2012-08-30 19:50:23',1),(204,2,'2012-08-30','2012-08-30 19:50:25',1),(205,27,'2012-08-30','2012-08-30 19:50:27',1),(206,2,'2012-08-30','2012-08-30 19:50:29',1),(207,31,'2012-08-30','2012-08-30 19:50:31',1),(208,31,'2012-08-30','2012-08-30 19:50:37',1),(209,113,'2012-08-30','2012-08-30 19:50:37',1),(210,113,'2012-08-30','2012-08-30 19:53:54',1),(211,113,'2012-08-30','2012-08-30 19:54:01',1),(212,113,'2012-08-30','2012-08-30 19:54:14',1),(213,31,'2012-08-30','2012-08-30 19:54:18',1),(214,31,'2012-08-30','2012-08-30 19:54:21',1),(215,111,'2012-08-30','2012-08-30 19:54:21',1),(216,111,'2012-08-30','2012-08-30 19:54:26',1),(217,111,'2012-08-30','2012-08-30 19:54:37',1),(218,31,'2012-08-30','2012-08-30 19:54:43',1),(219,31,'2012-08-30','2012-08-30 19:54:46',1),(220,114,'2012-08-30','2012-08-30 19:54:46',1),(221,114,'2012-08-30','2012-08-30 19:54:49',1),(222,114,'2012-08-30','2012-08-30 19:55:00',1),(223,2,'2012-08-30','2012-08-30 19:55:04',1),(224,1,'2012-08-30','2012-08-30 19:55:06',1),(225,115,'2012-08-30','2012-08-30 19:55:09',1),(226,115,'2012-08-30','2012-08-30 19:55:10',1),(227,116,'2012-08-30','2012-08-30 19:55:12',1),(228,116,'2012-08-30','2012-08-30 19:55:13',1),(229,117,'2012-08-30','2012-08-30 19:55:14',1),(230,117,'2012-08-30','2012-08-30 19:55:15',1),(231,2,'2012-08-30','2012-08-30 19:55:19',1),(232,7,'2012-08-30','2012-08-30 19:55:21',1),(233,1,'2012-08-30','2012-08-30 19:55:48',1),(234,1,'2012-08-30','2012-08-30 19:57:41',1),(235,1,'2012-08-30','2012-08-30 19:57:45',1),(236,1,'2012-08-30','2012-08-30 20:00:07',1),(237,1,'2012-08-30','2012-08-30 20:00:27',1),(238,1,'2012-08-30','2012-08-30 20:01:10',1),(239,1,'2012-08-30','2012-08-30 20:01:29',1),(240,1,'2012-08-30','2012-08-30 20:02:47',1),(241,1,'2012-08-30','2012-08-30 20:04:12',1),(242,1,'2012-08-30','2012-08-30 20:05:30',1),(243,1,'2012-08-30','2012-08-30 20:06:02',1),(244,1,'2012-08-30','2012-08-30 20:06:40',1),(245,1,'2012-08-30','2012-08-30 20:11:04',1),(246,1,'2012-08-30','2012-08-30 20:12:17',1),(247,1,'2012-08-30','2012-08-30 20:12:52',1),(248,1,'2012-08-30','2012-08-30 20:13:42',1),(249,1,'2012-08-30','2012-08-30 20:14:49',1),(250,1,'2012-08-30','2012-08-30 20:16:01',1),(251,1,'2012-08-30','2012-08-30 20:17:24',1),(252,1,'2012-08-30','2012-08-30 20:17:40',1),(253,1,'2012-08-30','2012-08-30 20:18:13',1),(254,1,'2012-08-30','2012-08-30 20:18:34',1),(255,1,'2012-08-30','2012-08-30 20:19:06',1),(256,1,'2012-08-30','2012-08-30 20:33:22',1),(257,1,'2012-08-30','2012-08-30 20:37:06',1),(258,1,'2012-08-30','2012-08-30 20:37:11',1),(259,1,'2012-08-30','2012-08-30 20:37:38',1),(260,1,'2012-08-30','2012-08-30 20:41:07',1),(261,1,'2012-08-30','2012-08-30 20:41:10',1),(262,1,'2012-08-30','2012-08-30 20:51:46',1),(263,1,'2012-08-30','2012-08-30 20:52:38',1),(264,1,'2012-08-30','2012-08-30 20:53:17',1),(265,1,'2012-08-30','2012-08-30 20:56:52',1),(266,1,'2012-08-30','2012-08-30 20:57:30',1),(267,1,'2012-08-30','2012-08-30 20:57:50',1),(268,1,'2012-08-30','2012-08-30 20:58:04',1),(269,1,'2012-08-30','2012-08-30 20:58:31',1),(270,1,'2012-08-30','2012-08-30 21:00:51',1),(271,1,'2012-08-30','2012-08-30 21:01:10',1),(272,2,'2012-08-30','2012-08-30 21:02:03',1),(273,7,'2012-08-30','2012-08-30 21:02:05',1),(274,2,'2012-08-30','2012-08-30 21:02:38',1),(275,31,'2012-08-30','2012-08-30 21:02:40',1),(276,32,'2012-08-30','2012-08-30 21:02:43',1),(277,32,'2012-08-30','2012-08-30 21:02:54',1),(278,31,'2012-08-30','2012-08-30 21:02:54',1),(279,31,'2012-08-30','2012-08-30 21:03:00',1),(280,145,'2012-08-30','2012-08-30 21:03:00',1),(281,145,'2012-08-30','2012-08-30 21:03:03',1),(282,145,'2012-08-30','2012-08-30 21:03:16',1),(283,2,'2012-08-30','2012-08-30 21:03:21',1),(284,7,'2012-08-30','2012-08-30 21:03:25',1),(285,6,'2012-08-30','2012-08-30 21:03:42',1),(286,7,'2012-08-30','2012-08-30 21:03:42',1),(287,6,'2012-08-30','2012-08-30 21:04:01',1),(288,7,'2012-08-30','2012-08-30 21:04:02',1),(289,6,'2012-08-30','2012-08-30 21:04:17',1),(290,7,'2012-08-30','2012-08-30 21:04:18',1),(291,1,'2012-08-30','2012-08-30 21:04:21',1),(292,146,'2012-08-30','2012-08-30 21:04:26',1),(293,146,'2012-08-30','2012-08-30 21:04:27',1),(294,2,'2012-08-30','2012-08-30 21:05:03',1),(295,36,'2012-08-30','2012-08-30 21:05:05',1),(296,36,'2012-08-30','2012-08-30 21:05:10',1),(297,144,'2012-08-30','2012-08-30 21:05:23',1),(298,36,'2012-08-30','2012-08-30 21:05:23',1),(299,144,'2012-08-30','2012-08-30 21:05:28',1),(300,36,'2012-08-30','2012-08-30 21:05:29',1),(301,146,'2012-08-30','2012-08-30 21:05:31',1),(302,146,'2012-08-30','2012-08-30 21:05:33',1),(303,146,'2012-08-30','2012-08-30 21:11:43',1),(304,146,'2012-08-30','2012-08-30 21:11:45',1),(305,95,'2012-08-30','2012-08-30 21:11:46',1),(306,46,'2012-08-30','2012-08-30 21:11:58',1),(307,90,'2012-08-30','2012-08-30 21:12:10',1),(308,46,'2012-08-30','2012-08-30 21:12:13',1),(309,53,'2012-08-30','2012-08-30 21:12:21',1),(310,53,'2012-08-30','2012-08-30 21:12:37',1),(311,53,'2012-08-30','2012-08-30 21:12:37',1),(312,2,'2012-08-30','2012-08-30 21:12:42',1),(313,46,'2012-08-30','2012-08-30 21:12:58',1),(314,83,'2012-08-30','2012-08-30 21:13:15',1),(315,83,'2012-08-30','2012-08-30 21:13:17',1),(316,2,'2012-08-30','2012-08-30 21:13:22',1),(317,146,'2012-08-30','2012-08-30 21:13:32',1),(318,146,'2012-08-30','2012-08-30 21:13:33',1),(319,148,'2012-08-30','2012-08-30 21:13:37',1),(320,148,'2012-08-30','2012-08-30 21:13:38',1),(321,146,'2012-08-30','2012-08-30 21:13:45',1),(322,146,'2012-08-30','2012-08-30 21:13:45',1),(323,36,'2012-08-30','2012-08-30 21:13:54',1),(324,36,'2012-08-30','2012-08-30 21:13:56',1),(325,144,'2012-08-30','2012-08-30 21:14:39',1),(326,36,'2012-08-30','2012-08-30 21:14:40',1),(327,144,'2012-08-30','2012-08-30 21:14:52',1),(328,36,'2012-08-30','2012-08-30 21:14:52',1),(329,146,'2012-08-30','2012-08-30 21:14:54',1),(330,146,'2012-08-30','2012-08-30 21:14:55',1),(331,146,'2012-08-30','2012-08-30 21:15:00',1),(332,146,'2012-08-30','2012-08-30 21:15:11',1),(333,144,'2012-08-30','2012-08-30 21:17:05',1),(334,36,'2012-08-30','2012-08-30 21:17:05',1),(335,144,'2012-08-30','2012-08-30 21:17:15',1),(336,36,'2012-08-30','2012-08-30 21:17:16',1),(337,146,'2012-08-30','2012-08-30 21:17:19',1),(338,2,'2012-08-30','2012-08-30 21:18:19',1),(339,146,'2012-08-30','2012-08-30 21:18:23',1),(340,146,'2012-08-30','2012-08-30 21:18:40',1),(341,147,'2012-08-30','2012-08-30 21:18:42',1),(342,147,'2012-08-30','2012-08-30 21:18:43',1),(343,147,'2012-08-30','2012-08-30 21:18:45',1),(344,147,'2012-08-30','2012-08-30 21:19:04',1),(345,146,'2012-08-30','2012-08-30 21:19:06',1),(346,146,'2012-08-30','2012-08-30 21:19:08',1),(347,148,'2012-08-30','2012-08-30 21:19:08',1),(348,148,'2012-08-30','2012-08-30 21:19:09',1),(349,148,'2012-08-30','2012-08-30 21:19:11',1),(350,148,'2012-08-30','2012-08-30 21:19:25',1),(351,146,'2012-08-30','2012-08-30 21:19:28',1),(352,146,'2012-08-30','2012-08-30 21:19:29',1),(353,1,'2012-08-30','2012-08-30 21:19:30',1),(354,146,'2012-08-30','2012-08-30 21:19:32',1),(355,146,'2012-08-30','2012-08-30 21:19:33',1),(356,31,'2012-08-30','2012-08-30 21:19:41',1),(357,31,'2012-08-30','2012-08-30 21:19:46',1),(358,113,'2012-08-30','2012-08-30 21:19:46',1),(359,113,'2012-08-30','2012-08-30 21:19:50',1),(360,113,'2012-08-30','2012-08-30 21:20:09',1),(361,31,'2012-08-30','2012-08-30 21:20:12',1),(362,31,'2012-08-30','2012-08-30 21:20:14',1),(363,111,'2012-08-30','2012-08-30 21:20:14',1),(364,111,'2012-08-30','2012-08-30 21:20:17',1),(365,111,'2012-08-30','2012-08-30 21:20:29',1),(366,31,'2012-08-30','2012-08-30 21:20:32',1),(367,31,'2012-08-30','2012-08-30 21:20:34',1),(368,145,'2012-08-30','2012-08-30 21:20:34',1),(369,145,'2012-08-30','2012-08-30 21:20:37',1),(370,145,'2012-08-30','2012-08-30 21:20:49',1),(371,31,'2012-08-30','2012-08-30 21:20:52',1),(372,31,'2012-08-30','2012-08-30 21:20:55',1),(373,114,'2012-08-30','2012-08-30 21:20:55',1),(374,114,'2012-08-30','2012-08-30 21:20:58',1),(375,114,'2012-08-30','2012-08-30 21:21:10',1),(376,31,'2012-08-30','2012-08-30 21:21:13',1),(377,2,'2012-08-30','2012-08-30 21:21:15',1),(378,7,'2012-08-30','2012-08-30 21:21:37',1),(379,6,'2012-08-30','2012-08-30 21:22:23',1),(380,7,'2012-08-30','2012-08-30 21:22:23',1),(381,6,'2012-08-30','2012-08-30 21:22:37',1),(382,7,'2012-08-30','2012-08-30 21:22:37',1),(383,6,'2012-08-30','2012-08-30 21:22:52',1),(384,7,'2012-08-30','2012-08-30 21:22:52',1),(385,6,'2012-08-30','2012-08-30 21:23:04',1),(386,7,'2012-08-30','2012-08-30 21:23:04',1),(387,6,'2012-08-30','2012-08-30 21:23:16',1),(388,7,'2012-08-30','2012-08-30 21:23:16',1),(389,6,'2012-08-30','2012-08-30 21:23:29',1),(390,7,'2012-08-30','2012-08-30 21:23:29',1),(391,6,'2012-08-30','2012-08-30 21:23:39',1),(392,7,'2012-08-30','2012-08-30 21:23:40',1),(393,6,'2012-08-30','2012-08-30 21:23:50',1),(394,7,'2012-08-30','2012-08-30 21:23:50',1),(395,6,'2012-08-30','2012-08-30 21:24:08',1),(396,7,'2012-08-30','2012-08-30 21:24:09',1),(397,6,'2012-08-30','2012-08-30 21:24:21',1),(398,7,'2012-08-30','2012-08-30 21:24:21',1),(399,6,'2012-08-30','2012-08-30 21:24:35',1),(400,7,'2012-08-30','2012-08-30 21:24:35',1),(401,6,'2012-08-30','2012-08-30 21:24:49',1),(402,7,'2012-08-30','2012-08-30 21:24:49',1),(403,6,'2012-08-30','2012-08-30 21:25:03',1),(404,7,'2012-08-30','2012-08-30 21:25:03',1),(405,2,'2012-08-30','2012-08-30 21:25:16',1),(406,31,'2012-08-30','2012-08-30 21:25:19',1),(407,31,'2012-08-30','2012-08-30 21:25:22',1),(408,145,'2012-08-30','2012-08-30 21:25:23',1),(409,145,'2012-08-30','2012-08-30 21:25:26',1),(410,145,'2012-08-30','2012-08-30 21:26:40',1),(411,2,'2012-08-30','2012-08-30 21:26:51',1),(412,31,'2012-08-30','2012-08-30 21:26:54',1),(413,31,'2012-08-30','2012-08-30 21:26:58',1),(414,113,'2012-08-30','2012-08-30 21:26:59',1),(415,113,'2012-08-30','2012-08-30 21:27:02',1),(416,113,'2012-08-30','2012-08-30 21:27:21',1),(417,2,'2012-08-30','2012-08-30 21:27:24',1),(418,31,'2012-08-30','2012-08-30 21:27:26',1),(419,31,'2012-08-30','2012-08-30 21:27:28',1),(420,111,'2012-08-30','2012-08-30 21:27:28',1),(421,111,'2012-08-30','2012-08-30 21:27:32',1),(422,111,'2012-08-30','2012-08-30 21:28:56',1),(423,111,'2012-08-30','2012-08-30 21:29:04',1),(424,31,'2012-08-30','2012-08-30 21:29:07',1),(425,31,'2012-08-30','2012-08-30 21:29:59',1),(426,111,'2012-08-30','2012-08-30 21:29:59',1),(427,111,'2012-08-30','2012-08-30 21:30:03',1),(428,111,'2012-08-30','2012-08-30 21:30:18',1),(429,111,'2012-08-30','2012-08-30 21:31:11',1),(430,31,'2012-08-30','2012-08-30 21:31:26',1),(431,31,'2012-08-30','2012-08-30 21:31:29',1),(432,145,'2012-08-30','2012-08-30 21:31:29',1),(433,31,'2012-08-30','2012-08-30 21:31:32',1),(434,31,'2012-08-30','2012-08-30 21:31:35',1),(435,114,'2012-08-30','2012-08-30 21:31:35',1),(436,114,'2012-08-30','2012-08-30 21:31:39',1),(437,114,'2012-08-30','2012-08-30 21:31:50',1),(438,146,'2012-08-30','2012-08-30 21:31:59',1),(439,146,'2012-08-30','2012-08-30 21:32:01',1),(440,146,'2012-08-30','2012-08-30 21:32:04',1),(441,146,'2012-08-30','2012-08-30 21:32:09',1),(442,31,'2012-08-30','2012-08-30 21:32:25',1),(443,31,'2012-08-30','2012-08-30 21:32:28',1),(444,111,'2012-08-30','2012-08-30 21:32:28',1),(445,111,'2012-08-30','2012-08-30 21:32:31',1),(446,111,'2012-08-30','2012-08-30 21:34:42',1),(447,111,'2012-08-30','2012-08-30 21:35:15',1),(448,111,'2012-08-30','2012-08-30 21:36:47',1),(449,111,'2012-08-30','2012-08-30 21:37:10',1),(450,111,'2012-08-30','2012-08-30 21:37:28',1),(451,111,'2012-08-30','2012-08-30 21:39:24',1),(452,111,'2012-08-30','2012-08-30 21:39:37',1),(453,31,'2012-08-30','2012-08-30 21:39:41',1),(454,31,'2012-08-30','2012-08-30 21:39:45',1),(455,113,'2012-08-30','2012-08-30 21:39:45',1),(456,113,'2012-08-30','2012-08-30 21:39:48',1),(457,113,'2012-08-30','2012-08-30 21:40:26',1),(458,113,'2012-08-30','2012-08-30 21:41:48',1),(459,31,'2012-08-30','2012-08-30 21:41:57',1),(460,31,'2012-08-30','2012-08-30 21:42:01',1),(461,114,'2012-08-30','2012-08-30 21:42:02',1),(462,114,'2012-08-30','2012-08-30 21:42:07',1),(463,114,'2012-08-30','2012-08-30 21:42:57',1),(464,114,'2012-08-30','2012-08-30 21:43:14',1),(465,114,'2012-08-30','2012-08-30 21:43:23',1),(466,114,'2012-08-30','2012-08-30 21:43:54',1),(467,31,'2012-08-30','2012-08-30 21:44:06',1),(468,31,'2012-08-30','2012-08-30 21:44:13',1),(469,145,'2012-08-30','2012-08-30 21:44:14',1),(470,31,'2012-08-30','2012-08-30 21:44:18',1),(471,31,'2012-08-30','2012-08-30 21:44:19',1),(472,112,'2012-08-30','2012-08-30 21:44:20',1),(473,112,'2012-08-30','2012-08-30 21:44:24',1),(474,112,'2012-08-30','2012-08-30 21:45:29',1),(475,146,'2012-08-30','2012-08-30 21:45:37',1),(476,1,'2012-08-30','2012-08-30 21:45:41',1),(477,1,'2012-08-30','2012-08-30 21:45:44',1),(478,146,'2012-08-30','2012-08-30 21:45:45',1),(479,146,'2012-08-30','2012-08-30 21:45:46',1),(480,147,'2012-08-30','2012-08-30 21:45:47',1),(481,147,'2012-08-30','2012-08-30 21:45:49',1),(482,2,'2012-08-30','2012-08-30 21:45:53',1),(483,7,'2012-08-30','2012-08-30 21:45:55',1),(484,6,'2012-08-30','2012-08-30 21:47:37',1),(485,7,'2012-08-30','2012-08-30 21:47:37',1),(486,6,'2012-08-30','2012-08-30 21:47:47',1),(487,7,'2012-08-30','2012-08-30 21:47:48',1),(488,6,'2012-08-30','2012-08-30 21:48:00',1),(489,7,'2012-08-30','2012-08-30 21:48:00',1),(490,6,'2012-08-30','2012-08-30 21:48:10',1),(491,7,'2012-08-30','2012-08-30 21:48:11',1),(492,6,'2012-08-30','2012-08-30 21:48:20',1),(493,7,'2012-08-30','2012-08-30 21:48:20',1),(494,6,'2012-08-30','2012-08-30 21:48:37',1),(495,7,'2012-08-30','2012-08-30 21:48:37',1),(496,6,'2012-08-30','2012-08-30 21:48:48',1),(497,7,'2012-08-30','2012-08-30 21:48:49',1),(498,6,'2012-08-30','2012-08-30 21:49:04',1),(499,7,'2012-08-30','2012-08-30 21:49:05',1),(500,6,'2012-08-30','2012-08-30 21:49:26',1),(501,7,'2012-08-30','2012-08-30 21:49:26',1),(502,6,'2012-08-30','2012-08-30 21:49:38',1),(503,7,'2012-08-30','2012-08-30 21:49:39',1),(504,6,'2012-08-30','2012-08-30 21:49:51',1),(505,7,'2012-08-30','2012-08-30 21:49:52',1),(506,6,'2012-08-30','2012-08-30 21:50:03',1),(507,7,'2012-08-30','2012-08-30 21:50:04',1),(508,6,'2012-08-30','2012-08-30 21:50:18',1),(509,7,'2012-08-30','2012-08-30 21:50:18',1),(510,6,'2012-08-30','2012-08-30 21:50:42',1),(511,7,'2012-08-30','2012-08-30 21:50:42',1),(512,6,'2012-08-30','2012-08-30 21:51:03',1),(513,7,'2012-08-30','2012-08-30 21:51:03',1),(514,6,'2012-08-30','2012-08-30 21:51:18',1),(515,7,'2012-08-30','2012-08-30 21:51:19',1),(516,6,'2012-08-30','2012-08-30 21:51:44',1),(517,7,'2012-08-30','2012-08-30 21:51:45',1),(518,6,'2012-08-30','2012-08-30 21:52:05',1),(519,7,'2012-08-30','2012-08-30 21:52:05',1),(520,6,'2012-08-30','2012-08-30 21:52:15',1),(521,7,'2012-08-30','2012-08-30 21:52:15',1),(522,6,'2012-08-30','2012-08-30 21:52:26',1),(523,7,'2012-08-30','2012-08-30 21:52:26',1),(524,6,'2012-08-30','2012-08-30 21:52:36',1),(525,7,'2012-08-30','2012-08-30 21:52:37',1),(526,6,'2012-08-30','2012-08-30 21:53:01',1),(527,7,'2012-08-30','2012-08-30 21:53:02',1),(528,6,'2012-08-30','2012-08-30 21:53:13',1),(529,7,'2012-08-30','2012-08-30 21:53:13',1),(530,6,'2012-08-30','2012-08-30 21:53:26',1),(531,7,'2012-08-30','2012-08-30 21:53:26',1),(532,6,'2012-08-30','2012-08-30 21:53:43',1),(533,7,'2012-08-30','2012-08-30 21:53:43',1),(534,6,'2012-08-30','2012-08-30 21:54:03',1),(535,7,'2012-08-30','2012-08-30 21:54:03',1),(536,6,'2012-08-30','2012-08-30 21:54:22',1),(537,7,'2012-08-30','2012-08-30 21:54:22',1),(538,6,'2012-08-30','2012-08-30 21:55:15',1),(539,7,'2012-08-30','2012-08-30 21:55:16',1),(540,6,'2012-08-30','2012-08-30 21:55:31',1),(541,7,'2012-08-30','2012-08-30 21:55:31',1),(542,6,'2012-08-30','2012-08-30 21:55:44',1),(543,7,'2012-08-30','2012-08-30 21:55:44',1),(544,6,'2012-08-30','2012-08-30 21:55:56',1),(545,7,'2012-08-30','2012-08-30 21:55:56',1),(546,6,'2012-08-30','2012-08-30 21:56:07',1),(547,7,'2012-08-30','2012-08-30 21:56:07',1),(548,6,'2012-08-30','2012-08-30 21:56:26',1),(549,7,'2012-08-30','2012-08-30 21:56:26',1),(550,6,'2012-08-30','2012-08-30 21:56:40',1),(551,7,'2012-08-30','2012-08-30 21:56:41',1),(552,6,'2012-08-30','2012-08-30 21:56:51',1),(553,7,'2012-08-30','2012-08-30 21:56:51',1),(554,6,'2012-08-30','2012-08-30 21:57:08',1),(555,7,'2012-08-30','2012-08-30 21:57:08',1),(556,6,'2012-08-30','2012-08-30 21:57:22',1),(557,7,'2012-08-30','2012-08-30 21:57:22',1),(558,6,'2012-08-30','2012-08-30 21:57:36',1),(559,7,'2012-08-30','2012-08-30 21:57:36',1),(560,6,'2012-08-30','2012-08-30 21:57:48',1),(561,7,'2012-08-30','2012-08-30 21:57:48',1),(562,6,'2012-08-30','2012-08-30 21:58:05',1),(563,7,'2012-08-30','2012-08-30 21:58:05',1),(564,6,'2012-08-30','2012-08-30 21:58:18',1),(565,7,'2012-08-30','2012-08-30 21:58:18',1),(566,6,'2012-08-30','2012-08-30 21:58:29',1),(567,7,'2012-08-30','2012-08-30 21:58:30',1),(568,6,'2012-08-30','2012-08-30 21:58:54',1),(569,7,'2012-08-30','2012-08-30 21:58:54',1),(570,6,'2012-08-30','2012-08-30 21:59:07',1),(571,7,'2012-08-30','2012-08-30 21:59:07',1),(572,1,'2012-08-30','2012-08-30 21:59:12',1),(573,1,'2012-08-30','2012-08-30 21:59:30',1),(574,1,'2012-08-30','2012-08-30 21:59:49',1),(575,1,'2012-08-30','2012-08-30 22:00:28',1),(576,162,'2012-08-30','2012-08-30 22:00:34',1),(577,162,'2012-08-30','2012-08-30 22:00:35',1),(578,187,'2012-08-30','2012-08-30 22:00:39',1),(579,187,'2012-08-30','2012-08-30 22:00:41',1),(580,163,'2012-08-30','2012-08-30 22:00:43',1),(581,163,'2012-08-30','2012-08-30 22:00:44',1),(582,164,'2012-08-30','2012-08-30 22:00:46',1),(583,164,'2012-08-30','2012-08-30 22:00:47',1),(584,179,'2012-08-30','2012-08-30 22:00:56',1),(585,179,'2012-08-30','2012-08-30 22:00:57',1),(586,1,'2012-08-30','2012-08-30 22:03:11',1),(587,100,'2012-08-30','2012-08-30 22:03:56',1),(588,1,'2012-08-30','2012-08-30 22:03:56',0),(589,100,'2012-08-30','2012-08-30 22:04:00',0),(590,100,'2012-08-30','2012-08-30 22:04:06',0),(591,1,'2012-08-30','2012-08-30 22:04:07',1),(592,1,'2012-08-30','2012-08-30 22:05:27',1),(593,100,'2012-08-30','2012-08-30 22:05:31',1),(594,1,'2012-08-30','2012-08-30 22:05:31',0),(595,100,'2012-08-30','2012-08-30 22:05:34',0),(596,100,'2012-08-30','2012-08-30 22:05:38',0),(597,1,'2012-08-30','2012-08-30 22:11:36',0),(598,162,'2012-08-30','2012-08-30 22:11:38',0),(599,162,'2012-08-30','2012-08-30 22:11:38',0),(600,163,'2012-08-30','2012-08-30 22:11:39',0),(601,163,'2012-08-30','2012-08-30 22:11:39',0),(602,164,'2012-08-30','2012-08-30 22:11:40',0),(603,164,'2012-08-30','2012-08-30 22:11:40',0),(604,165,'2012-08-30','2012-08-30 22:11:41',0),(605,165,'2012-08-30','2012-08-30 22:11:42',0),(606,166,'2012-08-30','2012-08-30 22:11:42',0),(607,166,'2012-08-30','2012-08-30 22:11:43',0),(608,167,'2012-08-30','2012-08-30 22:11:43',0),(609,167,'2012-08-30','2012-08-30 22:11:44',0),(610,1,'2012-08-31','2012-08-31 04:59:53',0),(611,167,'2012-08-31','2012-08-31 08:02:33',0),(612,167,'2012-08-31','2012-08-31 08:02:34',0),(613,1,'2012-08-31','2012-08-31 08:02:44',0),(614,1,'2012-09-01','2012-09-01 01:47:18',0),(615,1,'2012-09-02','2012-09-02 08:19:12',0),(616,1,'2012-09-02','2012-09-02 09:18:46',0),(617,1,'2012-09-04','2012-09-04 02:59:25',0),(618,1,'2012-09-04','2012-09-04 21:08:10',0),(619,1,'2012-09-04','2012-09-04 21:08:20',0),(620,1,'2012-09-04','2012-09-04 21:08:25',0),(621,162,'2012-09-04','2012-09-04 21:08:27',0),(622,162,'2012-09-04','2012-09-04 21:08:27',0),(623,163,'2012-09-04','2012-09-04 21:08:31',0),(624,163,'2012-09-04','2012-09-04 21:08:32',0),(625,164,'2012-09-04','2012-09-04 21:08:33',0),(626,164,'2012-09-04','2012-09-04 21:08:34',0),(627,165,'2012-09-04','2012-09-04 21:08:35',0),(628,165,'2012-09-04','2012-09-04 21:08:36',0),(629,166,'2012-09-04','2012-09-04 21:08:37',0),(630,166,'2012-09-04','2012-09-04 21:08:37',0),(631,167,'2012-09-04','2012-09-04 21:08:39',0),(632,167,'2012-09-04','2012-09-04 21:08:39',0),(633,1,'2012-09-04','2012-09-04 21:08:43',0),(634,1,'2012-09-04','2012-09-04 21:11:25',0),(635,1,'2012-09-04','2012-09-04 21:12:45',0),(636,162,'2012-09-04','2012-09-04 21:12:47',0),(637,162,'2012-09-04','2012-09-04 21:12:48',0),(638,163,'2012-09-04','2012-09-04 21:12:48',0),(639,163,'2012-09-04','2012-09-04 21:12:49',0),(640,183,'2012-09-04','2012-09-04 21:12:50',0),(641,183,'2012-09-04','2012-09-04 21:12:50',0),(642,164,'2012-09-04','2012-09-04 21:12:51',0),(643,164,'2012-09-04','2012-09-04 21:12:52',0),(644,165,'2012-09-04','2012-09-04 21:12:52',0),(645,165,'2012-09-04','2012-09-04 21:12:53',0),(646,166,'2012-09-04','2012-09-04 21:12:53',0),(647,166,'2012-09-04','2012-09-04 21:12:53',0),(648,167,'2012-09-04','2012-09-04 21:12:54',0),(649,167,'2012-09-04','2012-09-04 21:12:54',0),(650,1,'2012-09-04','2012-09-04 21:12:55',0),(651,1,'2012-09-04','2012-09-04 21:13:43',0),(652,1,'2012-09-04','2012-09-04 21:14:39',0),(653,100,'2012-09-04','2012-09-04 21:28:26',0),(654,100,'2012-09-04','2012-09-04 21:28:37',0),(655,100,'2012-09-04','2012-09-04 21:29:31',0),(656,100,'2012-09-04','2012-09-04 21:29:45',0),(657,100,'2012-09-04','2012-09-04 21:29:51',0),(658,100,'2012-09-04','2012-09-04 21:30:23',0),(659,100,'2012-09-04','2012-09-04 21:30:31',0),(660,100,'2012-09-04','2012-09-04 21:30:43',0),(661,100,'2012-09-04','2012-09-04 21:31:15',0),(662,100,'2012-09-04','2012-09-04 21:31:25',0),(663,1,'2012-09-04','2012-09-04 21:31:25',1),(664,95,'2012-09-04','2012-09-04 21:31:26',1),(665,100,'2012-09-04','2012-09-04 21:33:02',0),(666,1,'2012-09-04','2012-09-04 21:33:11',0),(667,100,'2012-09-04','2012-09-04 21:33:21',0),(668,100,'2012-09-04','2012-09-04 21:33:36',0),(669,100,'2012-09-04','2012-09-04 21:34:01',0),(670,100,'2012-09-04','2012-09-04 21:36:15',0),(671,1,'2012-09-04','2012-09-04 21:36:15',1),(672,100,'2012-09-04','2012-09-04 21:36:27',0),(673,1,'2012-09-04','2012-09-04 21:57:53',0),(674,1,'2012-09-04','2012-09-04 21:57:59',0),(675,162,'2012-09-04','2012-09-04 21:58:00',0),(676,162,'2012-09-04','2012-09-04 21:58:01',0),(677,163,'2012-09-04','2012-09-04 21:58:02',0),(678,163,'2012-09-04','2012-09-04 21:58:03',0),(679,162,'2012-09-04','2012-09-04 21:58:03',0),(680,162,'2012-09-04','2012-09-04 21:58:04',0),(681,164,'2012-09-04','2012-09-04 21:58:05',0),(682,164,'2012-09-04','2012-09-04 21:58:06',0),(683,165,'2012-09-04','2012-09-04 21:58:06',0),(684,165,'2012-09-04','2012-09-04 21:58:07',0),(685,166,'2012-09-04','2012-09-04 21:58:08',0),(686,166,'2012-09-04','2012-09-04 21:58:09',0),(687,167,'2012-09-04','2012-09-04 21:58:10',0),(688,167,'2012-09-04','2012-09-04 21:58:11',0),(689,1,'2012-09-04','2012-09-04 21:58:13',0),(690,1,'2012-09-04','2012-09-04 22:10:20',0),(691,100,'2012-09-04','2012-09-04 22:10:28',0),(692,100,'2012-09-04','2012-09-04 22:10:31',0),(693,1,'2012-09-04','2012-09-04 22:10:33',1),(694,1,'2012-09-04','2012-09-04 22:10:38',1),(695,1,'2012-09-04','2012-09-04 22:11:45',1),(696,1,'2012-09-04','2012-09-04 22:13:17',0),(697,1,'2012-09-04','2012-09-04 22:13:23',1),(698,1,'2012-09-04','2012-09-04 22:13:29',0),(699,1,'2012-09-04','2012-09-04 22:17:07',0),(700,1,'2012-09-04','2012-09-04 22:17:11',0),(701,1,'2012-09-04','2012-09-04 22:17:34',0),(702,1,'2012-09-04','2012-09-04 22:18:18',0),(703,1,'2012-09-04','2012-09-04 22:19:30',0),(704,1,'2012-09-04','2012-09-04 22:19:53',0),(705,1,'2012-09-04','2012-09-04 22:19:54',0),(706,1,'2012-09-04','2012-09-04 22:20:31',1),(707,1,'2012-09-04','2012-09-04 22:20:34',1),(708,1,'2012-09-04','2012-09-04 22:21:09',1),(709,1,'2012-09-04','2012-09-04 22:22:39',1),(710,1,'2012-09-04','2012-09-04 22:23:01',1),(711,1,'2012-09-04','2012-09-04 22:23:45',1),(712,1,'2012-09-04','2012-09-04 22:23:51',1),(713,2,'2012-09-04','2012-09-04 22:23:55',1),(714,164,'2012-09-04','2012-09-04 22:23:57',1),(715,164,'2012-09-04','2012-09-04 22:23:59',1),(716,165,'2012-09-04','2012-09-04 22:24:03',1),(717,165,'2012-09-04','2012-09-04 22:24:05',1),(718,36,'2012-09-04','2012-09-04 22:24:08',1),(719,36,'2012-09-04','2012-09-04 22:24:10',1),(720,206,'2012-09-04','2012-09-04 22:24:29',1),(721,36,'2012-09-04','2012-09-04 22:24:30',1),(722,165,'2012-09-04','2012-09-04 22:26:32',1),(723,165,'2012-09-04','2012-09-04 22:26:35',1),(724,1,'2012-09-04','2012-09-04 22:26:44',1),(725,1,'2012-09-04','2012-09-04 22:27:34',1),(726,1,'2012-09-04','2012-09-04 23:00:28',1),(727,1,'2012-09-04','2012-09-04 23:00:34',1),(728,1,'2012-09-04','2012-09-04 23:00:50',1),(729,1,'2012-09-05','2012-09-05 16:58:43',0),(730,1,'2012-09-05','2012-09-05 17:11:22',0),(731,1,'2012-09-05','2012-09-05 17:11:56',0),(732,100,'2012-09-05','2012-09-05 17:12:41',0),(733,100,'2012-09-05','2012-09-05 17:12:44',0),(734,1,'2012-09-05','2012-09-05 17:12:46',1),(735,1,'2012-09-05','2012-09-05 17:12:51',1),(736,1,'2012-09-05','2012-09-05 17:13:02',1),(737,1,'2012-09-05','2012-09-05 17:13:03',1),(738,1,'2012-09-05','2012-09-05 17:13:08',1),(739,1,'2012-09-05','2012-09-05 17:14:32',1),(740,1,'2012-09-05','2012-09-05 17:14:42',1),(741,1,'2012-09-05','2012-09-05 17:14:43',1),(742,1,'2012-09-05','2012-09-05 17:15:03',1),(743,1,'2012-09-05','2012-09-05 17:15:03',1),(744,1,'2012-09-05','2012-09-05 17:15:12',1),(745,1,'2012-09-05','2012-09-05 17:15:13',1),(746,1,'2012-09-05','2012-09-05 17:15:17',1),(747,1,'2012-09-05','2012-09-05 17:15:26',1),(748,1,'2012-09-05','2012-09-05 17:16:52',1),(749,1,'2012-09-05','2012-09-05 17:17:04',0),(750,1,'2012-09-05','2012-09-05 17:20:43',0),(751,1,'2012-09-05','2012-09-05 17:20:45',0),(752,1,'2012-09-05','2012-09-05 17:21:31',1),(753,1,'2012-09-05','2012-09-05 17:23:44',1),(754,1,'2012-09-05','2012-09-05 17:23:56',0),(755,1,'2012-09-05','2012-09-05 17:28:47',0),(756,1,'2012-09-05','2012-09-05 17:29:03',1),(757,1,'2012-09-05','2012-09-05 17:29:11',1),(758,1,'2012-09-05','2012-09-05 17:32:19',1),(759,1,'2012-09-05','2012-09-05 17:32:23',1),(760,1,'2012-09-05','2012-09-05 17:34:12',1),(761,1,'2012-09-05','2012-09-05 17:34:13',1),(762,1,'2012-09-05','2012-09-05 17:34:18',1),(763,1,'2012-09-05','2012-09-05 17:35:25',1),(764,1,'2012-09-05','2012-09-05 17:37:41',1),(765,1,'2012-09-05','2012-09-05 17:39:59',1),(766,1,'2012-09-05','2012-09-05 17:57:32',1),(767,1,'2012-09-05','2012-09-05 18:00:15',1),(768,1,'2012-09-05','2012-09-05 18:00:45',1),(769,1,'2012-09-05','2012-09-05 18:03:48',1),(770,1,'2012-09-05','2012-09-05 18:06:30',1),(771,1,'2012-09-05','2012-09-05 18:07:11',1),(772,1,'2012-09-05','2012-09-05 18:07:19',0),(773,1,'2012-09-05','2012-09-05 18:07:31',0),(774,1,'2012-09-05','2012-09-05 18:07:43',0),(775,1,'2012-09-05','2012-09-05 18:07:53',0),(776,1,'2012-09-05','2012-09-05 18:15:16',1),(777,1,'2012-09-05','2012-09-05 18:15:29',1),(778,1,'2012-09-05','2012-09-05 18:15:57',1),(779,1,'2012-09-05','2012-09-05 18:16:30',1),(780,1,'2012-09-05','2012-09-05 18:16:39',1),(781,1,'2012-09-05','2012-09-05 18:16:58',1),(782,1,'2012-09-05','2012-09-05 18:19:45',1),(783,1,'2012-09-05','2012-09-05 18:21:08',1),(784,1,'2012-09-05','2012-09-05 18:22:50',1),(785,1,'2012-09-05','2012-09-05 18:24:47',1),(786,1,'2012-09-05','2012-09-05 18:27:13',1),(787,1,'2012-09-05','2012-09-05 18:27:57',1),(788,1,'2012-09-05','2012-09-05 18:28:30',1),(789,1,'2012-09-05','2012-09-05 18:28:39',1),(790,1,'2012-09-05','2012-09-05 18:29:06',1),(791,1,'2012-09-05','2012-09-05 18:29:10',1),(792,1,'2012-09-05','2012-09-05 18:32:17',1),(793,1,'2012-09-05','2012-09-05 18:32:31',1),(794,1,'2012-09-05','2012-09-05 18:36:57',1),(795,1,'2012-09-05','2012-09-05 18:37:04',1),(796,1,'2012-09-05','2012-09-05 18:37:11',1),(797,1,'2012-09-05','2012-09-05 18:37:30',1),(798,1,'2012-09-05','2012-09-05 18:37:41',0),(799,1,'2012-09-05','2012-09-05 18:38:19',0),(800,1,'2012-09-05','2012-09-05 18:39:03',0),(801,163,'2012-09-05','2012-09-05 18:39:16',0),(802,165,'2012-09-05','2012-09-05 18:39:26',0),(803,1,'2012-09-05','2012-09-05 18:39:28',0),(804,164,'2012-09-05','2012-09-05 18:40:04',0),(805,1,'2012-09-05','2012-09-05 18:42:13',0),(806,162,'2012-09-05','2012-09-05 18:42:16',0),(807,163,'2012-09-05','2012-09-05 18:42:18',0),(808,1,'2012-09-05','2012-09-05 18:42:20',0),(809,1,'2012-09-05','2012-09-05 18:42:21',0),(810,1,'2012-09-05','2012-09-05 18:44:26',0),(811,162,'2012-09-05','2012-09-05 18:44:29',0),(812,163,'2012-09-05','2012-09-05 18:44:30',0),(813,1,'2012-09-05','2012-09-05 18:44:32',0),(814,1,'2012-09-05','2012-09-05 18:44:38',0),(815,1,'2012-09-05','2012-09-05 18:44:40',0),(816,1,'2012-09-05','2012-09-05 18:44:41',0),(817,1,'2012-09-05','2012-09-05 18:48:35',1),(818,1,'2012-09-05','2012-09-05 18:49:04',1),(819,1,'2012-09-05','2012-09-05 18:49:59',1),(820,1,'2012-09-05','2012-09-05 18:51:26',1),(821,1,'2012-09-05','2012-09-05 18:52:19',1),(822,1,'2012-09-05','2012-09-05 18:54:23',1),(823,1,'2012-09-05','2012-09-05 18:54:43',1),(824,1,'2012-09-05','2012-09-05 18:55:18',1),(825,1,'2012-09-05','2012-09-05 18:56:03',1),(826,1,'2012-09-05','2012-09-05 18:56:27',1),(827,1,'2012-09-05','2012-09-05 18:56:46',1),(828,1,'2012-09-05','2012-09-05 18:56:56',1),(829,1,'2012-09-05','2012-09-05 18:57:32',1),(830,1,'2012-09-05','2012-09-05 18:58:02',1),(831,1,'2012-09-05','2012-09-05 18:58:14',1),(832,1,'2012-09-05','2012-09-05 19:00:46',1),(833,1,'2012-09-05','2012-09-05 19:01:11',1),(834,1,'2012-09-05','2012-09-05 19:02:31',1),(835,1,'2012-09-05','2012-09-05 19:02:46',1),(836,1,'2012-09-05','2012-09-05 19:03:27',1),(837,1,'2012-09-05','2012-09-05 19:03:40',1),(838,1,'2012-09-05','2012-09-05 19:03:45',1),(839,1,'2012-09-05','2012-09-05 19:04:28',1),(840,1,'2012-09-05','2012-09-05 19:04:53',1),(841,1,'2012-09-05','2012-09-05 19:06:44',1),(842,1,'2012-09-05','2012-09-05 19:07:07',1),(843,1,'2012-09-05','2012-09-05 19:07:29',1),(844,1,'2012-09-05','2012-09-05 19:08:12',1),(845,1,'2012-09-05','2012-09-05 19:17:03',1),(846,1,'2012-09-05','2012-09-05 19:17:53',1),(847,1,'2012-09-05','2012-09-05 19:18:08',1),(848,1,'2012-09-05','2012-09-05 19:18:32',1),(849,1,'2012-09-05','2012-09-05 19:18:52',1),(850,1,'2012-09-05','2012-09-05 19:19:08',1),(851,1,'2012-09-05','2012-09-05 19:20:15',1),(852,1,'2012-09-05','2012-09-05 19:21:43',1),(853,1,'2012-09-05','2012-09-05 19:21:54',1),(854,1,'2012-09-05','2012-09-05 19:22:27',1),(855,1,'2012-09-05','2012-09-05 19:22:48',1),(856,1,'2012-09-05','2012-09-05 19:23:17',1),(857,1,'2012-09-05','2012-09-05 19:24:36',1),(858,1,'2012-09-05','2012-09-05 19:24:38',1),(859,1,'2012-09-05','2012-09-05 19:24:56',1),(860,1,'2012-09-05','2012-09-05 19:24:57',1),(861,1,'2012-09-05','2012-09-05 19:25:20',1),(862,1,'2012-09-05','2012-09-05 19:25:52',1),(863,1,'2012-09-05','2012-09-05 19:26:02',1),(864,1,'2012-09-05','2012-09-05 19:26:03',1),(865,1,'2012-09-05','2012-09-05 19:26:12',1),(866,1,'2012-09-05','2012-09-05 19:26:13',1),(867,1,'2012-09-05','2012-09-05 19:26:23',1),(868,1,'2012-09-05','2012-09-05 19:26:24',1),(869,1,'2012-09-05','2012-09-05 19:26:29',1),(870,1,'2012-09-05','2012-09-05 19:27:02',1),(871,1,'2012-09-05','2012-09-05 19:27:06',1),(872,1,'2012-09-05','2012-09-05 19:27:34',1),(873,1,'2012-09-05','2012-09-05 19:28:32',1),(874,1,'2012-09-05','2012-09-05 19:28:52',1),(875,1,'2012-09-05','2012-09-05 19:30:55',1),(876,1,'2012-09-05','2012-09-05 19:35:28',1),(877,1,'2012-09-05','2012-09-05 19:35:41',1),(878,1,'2012-09-05','2012-09-05 19:35:59',1),(879,1,'2012-09-05','2012-09-05 19:37:50',1),(880,1,'2012-09-05','2012-09-05 19:38:06',1),(881,1,'2012-09-05','2012-09-05 19:38:27',1),(882,1,'2012-09-05','2012-09-05 19:39:04',1),(883,1,'2012-09-05','2012-09-05 19:39:09',1),(884,1,'2012-09-05','2012-09-05 19:40:12',1),(885,1,'2012-09-05','2012-09-05 19:40:18',1),(886,1,'2012-09-05','2012-09-05 19:40:52',1),(887,1,'2012-09-05','2012-09-05 19:41:19',1),(888,1,'2012-09-05','2012-09-05 19:41:42',1),(889,1,'2012-09-05','2012-09-05 19:41:43',1),(890,1,'2012-09-05','2012-09-05 19:41:45',1),(891,1,'2012-09-05','2012-09-05 19:42:22',1),(892,1,'2012-09-05','2012-09-05 19:42:35',1),(893,1,'2012-09-05','2012-09-05 19:43:06',1),(894,1,'2012-09-05','2012-09-05 19:44:09',1),(895,1,'2012-09-05','2012-09-05 19:47:58',1),(896,1,'2012-09-05','2012-09-05 19:48:53',1),(897,1,'2012-09-05','2012-09-05 19:50:09',1),(898,1,'2012-09-05','2012-09-05 19:50:40',1),(899,1,'2012-09-05','2012-09-05 19:50:55',1),(900,1,'2012-09-05','2012-09-05 19:51:12',1),(901,1,'2012-09-05','2012-09-05 19:51:26',1),(902,1,'2012-09-05','2012-09-05 19:51:40',1),(903,1,'2012-09-05','2012-09-05 19:51:59',1),(904,1,'2012-09-05','2012-09-05 19:52:31',1),(905,1,'2012-09-05','2012-09-05 19:53:42',1),(906,1,'2012-09-05','2012-09-05 19:55:40',1),(907,1,'2012-09-05','2012-09-05 19:55:41',1),(908,1,'2012-09-05','2012-09-05 19:56:57',1),(909,1,'2012-09-05','2012-09-05 19:56:59',1),(910,1,'2012-09-05','2012-09-05 19:57:31',1),(911,1,'2012-09-05','2012-09-05 19:57:32',1),(912,2,'2012-09-05','2012-09-05 19:57:36',1),(913,46,'2012-09-05','2012-09-05 19:57:41',1),(914,46,'2012-09-05','2012-09-05 19:57:42',1),(915,50,'2012-09-05','2012-09-05 19:57:45',1),(916,50,'2012-09-05','2012-09-05 19:58:25',1),(917,50,'2012-09-05','2012-09-05 19:58:25',1),(918,50,'2012-09-05','2012-09-05 19:59:19',1),(919,50,'2012-09-05','2012-09-05 19:59:20',1),(920,1,'2012-09-05','2012-09-05 19:59:38',1),(921,1,'2012-09-05','2012-09-05 20:00:31',1),(922,1,'2012-09-05','2012-09-05 20:02:41',1),(923,1,'2012-09-05','2012-09-05 20:05:51',1),(924,2,'2012-09-05','2012-09-05 20:06:25',1),(925,7,'2012-09-05','2012-09-05 20:06:28',1),(926,1,'2012-09-05','2012-09-05 20:08:05',1),(927,162,'2012-09-05','2012-09-05 20:08:29',1),(928,183,'2012-09-05','2012-09-05 20:08:38',1),(929,190,'2012-09-05','2012-09-05 20:08:43',1),(930,167,'2012-09-05','2012-09-05 20:09:03',1),(931,1,'2012-09-05','2012-09-05 20:09:20',1),(932,1,'2012-09-05','2012-09-05 20:26:21',1),(933,1,'2012-09-05','2012-09-05 20:26:26',1),(934,1,'2012-09-06','2012-09-06 17:27:46',0),(935,100,'2012-09-06','2012-09-06 17:34:29',0),(936,100,'2012-09-06','2012-09-06 17:34:31',0),(937,1,'2012-09-06','2012-09-06 17:34:33',1),(938,95,'2012-09-06','2012-09-06 17:34:35',1),(939,2,'2012-09-06','2012-09-06 17:34:42',1),(940,1,'2012-09-06','2012-09-06 21:52:57',0),(941,1,'2012-09-06','2012-09-06 22:01:58',0),(942,1,'2012-09-06','2012-09-06 22:04:30',0),(943,1,'2012-09-06','2012-09-06 22:04:32',0),(944,1,'2012-09-06','2012-09-06 22:07:55',0),(945,1,'2012-09-06','2012-09-06 22:08:06',0),(946,1,'2012-09-06','2012-09-06 22:08:15',0),(947,1,'2012-09-06','2012-09-06 22:08:29',0),(948,1,'2012-09-06','2012-09-06 22:08:34',0),(949,1,'2012-09-06','2012-09-06 22:09:04',0),(950,163,'2012-09-06','2012-09-06 22:09:08',0),(951,1,'2012-09-06','2012-09-06 22:09:10',0),(952,1,'2012-09-06','2012-09-06 22:09:12',0),(953,1,'2012-09-06','2012-09-06 22:09:22',0),(954,162,'2012-09-06','2012-09-06 22:09:25',0),(955,163,'2012-09-06','2012-09-06 22:09:27',0),(956,164,'2012-09-06','2012-09-06 22:09:29',0),(957,1,'2012-09-06','2012-09-06 22:09:33',0),(958,1,'2012-09-06','2012-09-06 22:10:37',0),(959,162,'2012-09-06','2012-09-06 22:10:41',0),(960,1,'2012-09-06','2012-09-06 22:10:43',0),(961,162,'2012-09-06','2012-09-06 22:10:45',0),(962,163,'2012-09-06','2012-09-06 22:10:48',0),(963,163,'2012-09-06','2012-09-06 22:11:19',0),(964,163,'2012-09-06','2012-09-06 22:11:22',0),(965,163,'2012-09-06','2012-09-06 22:11:33',0),(966,163,'2012-09-06','2012-09-06 22:11:34',0),(967,163,'2012-09-06','2012-09-06 22:11:36',0),(968,163,'2012-09-06','2012-09-06 22:11:37',0),(969,163,'2012-09-06','2012-09-06 22:11:38',0),(970,163,'2012-09-06','2012-09-06 22:11:39',0),(971,163,'2012-09-06','2012-09-06 22:11:40',0),(972,163,'2012-09-06','2012-09-06 22:11:41',0),(973,1,'2012-09-06','2012-09-06 22:11:48',0),(974,1,'2012-09-06','2012-09-06 22:14:42',0),(975,1,'2012-09-06','2012-09-06 23:06:39',0),(976,1,'2012-09-06','2012-09-06 23:07:17',0),(977,1,'2012-09-06','2012-09-06 23:09:24',0),(978,1,'2012-09-06','2012-09-06 23:09:50',0),(979,1,'2012-09-06','2012-09-06 23:11:05',0),(980,1,'2012-09-06','2012-09-06 23:11:08',0),(981,1,'2012-09-06','2012-09-06 23:24:05',0),(982,1,'2012-09-06','2012-09-06 23:24:45',0),(983,1,'2012-09-06','2012-09-06 23:24:57',0),(984,1,'2012-09-06','2012-09-06 23:26:22',0),(985,1,'2012-09-06','2012-09-06 23:26:45',0),(986,1,'2012-09-06','2012-09-06 23:28:50',0),(987,1,'2012-09-06','2012-09-06 23:28:56',0),(988,1,'2012-09-06','2012-09-06 23:29:09',0),(989,1,'2012-09-06','2012-09-06 23:29:19',0),(990,1,'2012-09-06','2012-09-06 23:29:20',0),(991,1,'2012-09-06','2012-09-06 23:29:21',0),(992,1,'2012-09-06','2012-09-06 23:29:58',0),(993,1,'2012-09-06','2012-09-06 23:31:18',0),(994,1,'2012-09-06','2012-09-06 23:35:39',0),(995,1,'2012-09-06','2012-09-06 23:35:54',0),(996,1,'2012-09-06','2012-09-06 23:36:12',0),(997,1,'2012-09-06','2012-09-06 23:36:16',0),(998,1,'2012-09-06','2012-09-06 23:36:17',0),(999,1,'2012-09-06','2012-09-06 23:37:19',0),(1000,1,'2012-09-06','2012-09-06 23:38:31',0),(1001,1,'2012-09-06','2012-09-06 23:38:46',0),(1002,1,'2012-09-06','2012-09-06 23:39:51',0),(1003,1,'2012-09-06','2012-09-06 23:40:13',0),(1004,1,'2012-09-06','2012-09-06 23:40:55',0),(1005,1,'2012-09-06','2012-09-06 23:41:17',0),(1006,1,'2012-09-06','2012-09-06 23:41:54',0),(1007,1,'2012-09-06','2012-09-06 23:41:57',0),(1008,1,'2012-09-06','2012-09-06 23:42:40',0),(1009,1,'2012-09-06','2012-09-06 23:43:01',0),(1010,1,'2012-09-06','2012-09-06 23:43:24',0),(1011,1,'2012-09-06','2012-09-06 23:43:52',0),(1012,1,'2012-09-06','2012-09-06 23:44:04',0),(1013,1,'2012-09-06','2012-09-06 23:44:37',0),(1014,1,'2012-09-06','2012-09-06 23:45:27',0),(1015,1,'2012-09-06','2012-09-06 23:57:42',0),(1016,1,'2012-09-06','2012-09-06 23:57:47',0),(1017,1,'2012-09-06','2012-09-06 23:58:04',0),(1018,1,'2012-09-06','2012-09-07 00:03:25',0),(1019,1,'2012-09-06','2012-09-07 00:13:29',0),(1020,1,'2012-09-06','2012-09-07 00:13:33',0),(1021,1,'2012-09-06','2012-09-07 00:14:10',0),(1022,1,'2012-09-06','2012-09-07 00:14:26',0),(1023,1,'2012-09-06','2012-09-07 00:15:14',0),(1024,100,'2012-09-06','2012-09-07 00:17:06',0),(1025,100,'2012-09-06','2012-09-07 00:17:06',0),(1026,100,'2012-09-06','2012-09-07 00:17:09',0),(1027,1,'2012-09-06','2012-09-07 00:17:10',1),(1028,1,'2012-09-06','2012-09-07 00:17:16',1),(1029,1,'2012-09-06','2012-09-07 00:17:49',1),(1030,2,'2012-09-06','2012-09-07 00:17:58',1),(1031,36,'2012-09-06','2012-09-07 00:18:03',1),(1032,36,'2012-09-06','2012-09-07 00:18:06',1),(1033,142,'2012-09-06','2012-09-07 00:18:25',1),(1034,36,'2012-09-06','2012-09-07 00:18:25',1),(1035,1,'2012-09-06','2012-09-07 00:18:27',1),(1036,188,'2012-09-06','2012-09-07 00:18:36',1),(1037,197,'2012-09-06','2012-09-07 00:18:38',1),(1038,1,'2012-09-06','2012-09-07 00:18:40',1),(1039,142,'2012-09-06','2012-09-07 00:19:25',1),(1040,36,'2012-09-06','2012-09-07 00:19:25',1),(1041,1,'2012-09-06','2012-09-07 00:20:51',1),(1042,1,'2012-09-06','2012-09-07 00:21:05',1),(1043,100,'2012-09-06','2012-09-07 00:21:09',1),(1044,1,'2012-09-06','2012-09-07 00:21:10',0),(1045,100,'2012-09-06','2012-09-07 00:21:21',0),(1046,36,'2012-09-06','2012-09-07 00:21:22',1),(1047,2,'2012-09-06','2012-09-07 00:21:26',1),(1048,7,'2012-09-06','2012-09-07 00:21:28',1),(1049,100,'2012-09-06','2012-09-07 00:21:35',1),(1050,1,'2012-09-06','2012-09-07 00:21:35',0),(1051,1,'2012-09-06','2012-09-07 00:21:40',0),(1052,1,'2012-09-07','2012-09-07 21:11:06',0),(1053,1,'2012-09-07','2012-09-07 21:11:08',0),(1054,1,'2012-09-07','2012-09-07 21:11:10',0),(1055,1,'2012-09-07','2012-09-07 21:12:03',0),(1056,1,'2012-09-07','2012-09-07 21:12:10',0),(1057,1,'2012-09-07','2012-09-07 21:17:41',0),(1058,100,'2012-09-07','2012-09-07 21:17:43',0),(1059,100,'2012-09-07','2012-09-07 21:17:45',0),(1060,1,'2012-09-07','2012-09-07 21:17:46',1),(1061,95,'2012-09-07','2012-09-07 21:17:48',1),(1062,100,'2012-09-07','2012-09-07 21:19:16',0),(1063,2,'2012-09-07','2012-09-07 21:19:17',1),(1064,11,'2012-09-07','2012-09-07 21:19:20',1),(1065,1,'2012-09-07','2012-09-07 21:23:38',1),(1066,1,'2012-09-07','2012-09-07 21:24:10',1),(1067,1,'2012-09-07','2012-09-07 21:25:26',1),(1068,1,'2012-09-07','2012-09-07 21:27:03',1),(1069,1,'2012-09-07','2012-09-07 21:27:50',1),(1070,1,'2012-09-07','2012-09-07 21:28:18',1),(1071,1,'2012-09-07','2012-09-07 21:29:16',1),(1072,1,'2012-09-07','2012-09-07 21:29:31',1),(1073,1,'2012-09-07','2012-09-07 21:31:31',1),(1074,1,'2012-09-07','2012-09-07 21:33:58',1),(1075,1,'2012-09-07','2012-09-07 21:34:13',1),(1076,1,'2012-09-07','2012-09-07 21:41:16',1),(1077,1,'2012-09-07','2012-09-07 21:41:32',1),(1078,1,'2012-09-07','2012-09-07 21:42:20',1),(1079,1,'2012-09-07','2012-09-07 21:42:55',1),(1080,1,'2012-09-07','2012-09-07 21:45:00',1),(1081,1,'2012-09-07','2012-09-07 21:45:06',1),(1082,1,'2012-09-07','2012-09-07 21:45:46',1),(1083,1,'2012-09-07','2012-09-07 21:46:19',1),(1084,1,'2012-09-07','2012-09-07 21:46:31',1),(1085,1,'2012-09-07','2012-09-07 21:46:53',1),(1086,1,'2012-09-07','2012-09-07 21:47:34',1),(1087,1,'2012-09-07','2012-09-07 21:47:51',1),(1088,1,'2012-09-07','2012-09-07 21:47:58',1),(1089,1,'2012-09-07','2012-09-07 21:50:01',1),(1090,1,'2012-09-07','2012-09-07 21:50:16',1),(1091,1,'2012-09-07','2012-09-07 21:53:09',1),(1092,1,'2012-09-07','2012-09-07 21:54:38',1),(1093,1,'2012-09-07','2012-09-07 21:55:14',1),(1094,1,'2012-09-07','2012-09-07 21:56:02',1),(1095,1,'2012-09-07','2012-09-07 21:56:19',1),(1096,1,'2012-09-07','2012-09-07 21:56:46',1),(1097,1,'2012-09-07','2012-09-07 21:58:07',1),(1098,1,'2012-09-07','2012-09-07 21:58:34',1),(1099,2,'2012-09-07','2012-09-07 21:59:18',1),(1100,36,'2012-09-07','2012-09-07 21:59:21',1),(1101,36,'2012-09-07','2012-09-07 21:59:24',1),(1102,1,'2012-09-07','2012-09-07 22:01:45',1),(1103,1,'2012-09-10','2012-09-10 17:06:37',1),(1104,95,'2012-09-10','2012-09-10 17:06:40',1),(1105,1,'2012-09-10','2012-09-10 17:34:57',0),(1106,1,'2012-09-10','2012-09-10 17:44:25',0),(1107,1,'2012-09-10','2012-09-10 17:46:23',0),(1108,1,'2012-09-10','2012-09-10 17:46:24',0),(1109,1,'2012-09-10','2012-09-10 17:46:25',0),(1110,1,'2012-09-10','2012-09-10 17:46:27',0),(1111,1,'2012-09-10','2012-09-10 17:47:14',0),(1112,1,'2012-09-10','2012-09-10 17:47:16',0),(1113,100,'2012-09-10','2012-09-10 17:47:21',0),(1114,100,'2012-09-10','2012-09-10 17:47:23',0),(1115,1,'2012-09-10','2012-09-10 17:47:24',1),(1116,2,'2012-09-10','2012-09-10 17:47:26',1),(1117,11,'2012-09-10','2012-09-10 17:47:28',1),(1118,1,'2012-09-10','2012-09-10 17:47:40',1),(1119,1,'2012-09-10','2012-09-10 17:47:52',1),(1120,1,'2012-09-10','2012-09-10 18:03:52',1),(1121,1,'2012-09-10','2012-09-10 18:03:55',1),(1122,1,'2012-09-10','2012-09-10 18:04:33',1),(1123,1,'2012-09-10','2012-09-10 18:04:36',1),(1124,163,'2012-09-10','2012-09-10 18:04:38',1),(1125,1,'2012-09-10','2012-09-10 18:04:40',1),(1126,162,'2012-09-10','2012-09-10 18:04:41',1),(1127,1,'2012-09-10','2012-09-10 18:04:42',1),(1128,1,'2012-09-10','2012-09-10 18:24:38',0),(1129,1,'2012-09-10','2012-09-10 18:24:51',0),(1130,1,'2012-09-10','2012-09-10 18:25:04',0),(1131,187,'2012-09-10','2012-09-10 18:29:14',0),(1132,162,'2012-09-10','2012-09-10 18:29:36',0),(1133,188,'2012-09-10','2012-09-10 18:29:39',0),(1134,197,'2012-09-10','2012-09-10 18:29:46',0),(1135,100,'2012-09-10','2012-09-10 18:30:14',0),(1136,100,'2012-09-10','2012-09-10 18:30:15',0),(1137,1,'2012-09-10','2012-09-10 18:30:16',1),(1138,188,'2012-09-10','2012-09-10 18:30:19',1),(1139,198,'2012-09-10','2012-09-10 18:30:20',1),(1140,188,'2012-09-10','2012-09-10 18:30:26',1),(1141,197,'2012-09-10','2012-09-10 18:30:34',1),(1142,197,'2012-09-10','2012-09-10 18:30:43',1),(1143,197,'2012-09-10','2012-09-10 18:31:09',1),(1144,197,'2012-09-10','2012-09-10 18:31:16',1),(1145,197,'2012-09-10','2012-09-10 18:33:35',1),(1146,197,'2012-09-10','2012-09-10 18:33:38',1),(1147,197,'2012-09-10','2012-09-10 18:33:42',1),(1148,1,'2012-09-10','2012-09-10 18:45:51',1),(1149,187,'2012-09-10','2012-09-10 18:46:09',1),(1150,1,'2012-09-10','2012-09-10 18:46:18',1),(1151,188,'2012-09-10','2012-09-10 18:46:20',1),(1152,2,'2012-09-10','2012-09-10 18:46:51',1),(1153,36,'2012-09-10','2012-09-10 18:46:53',1),(1154,36,'2012-09-10','2012-09-10 18:46:55',1),(1155,201,'2012-09-10','2012-09-10 18:47:26',1),(1156,188,'2012-09-10','2012-09-10 18:47:28',1),(1157,197,'2012-09-10','2012-09-10 18:47:31',1),(1158,197,'2012-09-10','2012-09-10 18:47:51',1),(1159,166,'2012-09-10','2012-09-10 18:49:22',1),(1160,167,'2012-09-10','2012-09-10 18:49:30',1),(1161,162,'2012-09-10','2012-09-10 18:53:36',1),(1162,187,'2012-09-10','2012-09-10 18:53:39',1),(1163,162,'2012-09-10','2012-09-10 18:53:41',1),(1164,188,'2012-09-10','2012-09-10 18:53:42',1),(1165,197,'2012-09-10','2012-09-10 18:53:43',1),(1166,197,'2012-09-10','2012-09-10 18:53:45',1),(1167,197,'2012-09-10','2012-09-10 18:53:46',1),(1168,197,'2012-09-10','2012-09-10 18:53:59',1),(1169,197,'2012-09-10','2012-09-10 18:54:08',0),(1170,188,'2012-09-10','2012-09-10 18:55:25',0),(1171,198,'2012-09-10','2012-09-10 18:55:27',0),(1172,100,'2012-09-10','2012-09-10 18:55:34',0),(1173,100,'2012-09-10','2012-09-10 18:55:35',0),(1174,1,'2012-09-10','2012-09-10 18:55:35',1),(1175,188,'2012-09-10','2012-09-10 18:55:38',1),(1176,198,'2012-09-10','2012-09-10 18:55:40',1),(1177,198,'2012-09-10','2012-09-10 18:55:42',1),(1178,198,'2012-09-10','2012-09-10 18:56:04',1),(1179,188,'2012-09-10','2012-09-10 18:56:33',1),(1180,200,'2012-09-10','2012-09-10 18:56:34',1),(1181,200,'2012-09-10','2012-09-10 18:56:37',1),(1182,200,'2012-09-10','2012-09-10 18:56:47',1),(1183,170,'2012-09-10','2012-09-10 18:57:31',1),(1184,170,'2012-09-10','2012-09-10 18:57:33',1),(1185,170,'2012-09-10','2012-09-10 18:57:48',1),(1186,166,'2012-09-10','2012-09-10 18:58:31',1),(1187,171,'2012-09-10','2012-09-10 18:58:33',1),(1188,171,'2012-09-10','2012-09-10 18:58:36',1),(1189,171,'2012-09-10','2012-09-10 18:58:58',1),(1190,1,'2012-09-10','2012-09-10 22:04:42',1),(1191,1,'2012-09-10','2012-09-10 22:04:47',1),(1192,1,'2012-09-10','2012-09-10 22:04:49',1),(1193,1,'2012-09-10','2012-09-10 22:04:50',1),(1194,1,'2012-09-10','2012-09-10 22:04:53',1),(1195,1,'2012-09-10','2012-09-10 22:05:15',1),(1196,1,'2012-09-10','2012-09-10 22:05:48',1),(1197,1,'2012-09-10','2012-09-10 22:05:52',1),(1198,1,'2012-09-10','2012-09-10 22:05:55',1),(1199,1,'2012-09-10','2012-09-10 22:07:06',1),(1200,1,'2012-09-10','2012-09-10 22:07:31',1),(1201,1,'2012-09-10','2012-09-10 22:12:49',1),(1202,1,'2012-09-10','2012-09-10 22:12:51',1),(1203,1,'2012-09-10','2012-09-10 22:12:54',1),(1204,1,'2012-09-10','2012-09-10 22:13:36',1),(1205,1,'2012-09-10','2012-09-10 22:13:39',1),(1206,1,'2012-09-10','2012-09-10 22:15:29',1),(1207,1,'2012-09-10','2012-09-10 22:15:40',1),(1208,1,'2012-09-10','2012-09-10 22:16:12',1),(1209,1,'2012-09-10','2012-09-10 22:16:24',1),(1210,1,'2012-09-10','2012-09-10 22:17:00',1),(1211,1,'2012-09-10','2012-09-10 22:18:19',1),(1212,1,'2012-09-10','2012-09-10 22:18:44',1),(1213,1,'2012-09-10','2012-09-10 22:20:55',1),(1214,1,'2012-09-10','2012-09-10 22:20:57',1),(1215,1,'2012-09-10','2012-09-10 22:21:00',1),(1216,1,'2012-09-10','2012-09-10 22:32:46',1),(1217,36,'2012-09-10','2012-09-10 22:33:07',1),(1218,36,'2012-09-10','2012-09-10 22:33:12',1),(1219,2,'2012-09-10','2012-09-10 22:33:21',1),(1220,1,'2012-09-10','2012-09-10 22:40:04',1),(1221,1,'2012-09-10','2012-09-10 22:40:06',1),(1222,1,'2012-09-10','2012-09-10 22:41:13',1),(1223,1,'2012-09-11','2012-09-11 15:28:01',1),(1224,162,'2012-09-11','2012-09-11 15:28:14',1),(1225,163,'2012-09-11','2012-09-11 15:28:16',1),(1226,164,'2012-09-11','2012-09-11 15:28:17',1),(1227,165,'2012-09-11','2012-09-11 15:28:20',1),(1228,167,'2012-09-11','2012-09-11 15:28:21',1),(1229,166,'2012-09-11','2012-09-11 15:28:23',1),(1230,162,'2012-09-11','2012-09-11 15:28:25',1),(1231,1,'2012-09-11','2012-09-11 15:28:28',1),(1232,1,'2012-09-11','2012-09-11 16:58:37',0),(1233,1,'2012-09-11','2012-09-11 16:59:12',0),(1234,1,'2012-09-11','2012-09-11 18:17:06',0),(1235,100,'2012-09-11','2012-09-11 18:17:13',0),(1236,100,'2012-09-11','2012-09-11 18:17:15',0),(1237,1,'2012-09-11','2012-09-11 18:17:16',1),(1238,95,'2012-09-11','2012-09-11 18:17:16',1),(1239,188,'2012-09-11','2012-09-11 18:17:52',1),(1240,162,'2012-09-11','2012-09-11 18:18:08',1),(1241,1,'2012-09-11','2012-09-11 18:18:10',1),(1242,188,'2012-09-11','2012-09-11 18:18:13',1),(1243,197,'2012-09-11','2012-09-11 18:18:16',1),(1244,197,'2012-09-11','2012-09-11 18:18:20',1),(1245,109,'2012-09-11','2012-09-11 18:18:43',1),(1246,109,'2012-09-11','2012-09-11 18:18:47',1),(1247,197,'2012-09-11','2012-09-11 18:18:57',1),(1248,183,'2012-09-11','2012-09-11 18:19:05',1),(1249,163,'2012-09-11','2012-09-11 18:19:07',1),(1250,164,'2012-09-11','2012-09-11 18:19:10',1),(1251,188,'2012-09-11','2012-09-11 18:19:14',1),(1252,198,'2012-09-11','2012-09-11 18:19:15',1),(1253,1,'2012-09-11','2012-09-11 18:21:18',1),(1254,1,'2012-09-11','2012-09-11 18:29:35',1),(1255,198,'2012-09-11','2012-09-11 19:24:25',1),(1256,1,'2012-09-11','2012-09-11 19:41:01',1),(1257,187,'2012-09-11','2012-09-11 19:41:05',1),(1258,2,'2012-09-11','2012-09-11 19:44:22',1),(1259,7,'2012-09-11','2012-09-11 19:44:26',1),(1260,6,'2012-09-11','2012-09-11 19:45:06',1),(1261,7,'2012-09-11','2012-09-11 19:45:06',1),(1262,2,'2012-09-11','2012-09-11 19:45:23',1),(1263,36,'2012-09-11','2012-09-11 19:45:25',1),(1264,36,'2012-09-11','2012-09-11 19:45:27',1),(1265,189,'2012-09-11','2012-09-11 19:45:38',1),(1266,2,'2012-09-11','2012-09-11 19:45:47',1),(1267,7,'2012-09-11','2012-09-11 19:45:49',1),(1268,209,'2012-09-11','2012-09-11 19:45:54',1),(1269,2,'2012-09-11','2012-09-11 19:56:20',1),(1270,11,'2012-09-11','2012-09-11 19:56:22',1),(1271,1,'2012-09-11','2012-09-11 19:56:54',1),(1272,1,'2012-09-11','2012-09-11 19:56:56',1),(1273,1,'2012-09-11','2012-09-11 19:57:28',1),(1274,1,'2012-09-11','2012-09-11 19:57:28',1),(1275,1,'2012-09-11','2012-09-11 19:57:41',1),(1276,1,'2012-09-11','2012-09-11 19:57:41',1),(1277,1,'2012-09-11','2012-09-11 19:57:53',1),(1278,1,'2012-09-11','2012-09-11 19:57:53',1),(1279,1,'2012-09-11','2012-09-11 19:57:56',1),(1280,1,'2012-09-11','2012-09-11 19:58:03',1),(1281,1,'2012-09-11','2012-09-11 19:58:08',1),(1282,1,'2012-09-11','2012-09-11 19:58:09',1),(1283,1,'2012-09-11','2012-09-11 19:58:12',1),(1284,162,'2012-09-11','2012-09-11 19:58:15',1),(1285,162,'2012-09-11','2012-09-11 19:58:17',1),(1286,162,'2012-09-11','2012-09-11 19:58:41',1),(1287,162,'2012-09-11','2012-09-11 19:58:42',1),(1288,162,'2012-09-11','2012-09-11 19:58:45',1),(1289,162,'2012-09-11','2012-09-11 19:59:44',1),(1290,162,'2012-09-11','2012-09-11 20:00:00',1),(1291,162,'2012-09-11','2012-09-11 20:06:32',1),(1292,1,'2012-09-11','2012-09-11 20:06:41',1),(1293,162,'2012-09-11','2012-09-11 20:06:43',1),(1294,163,'2012-09-11','2012-09-11 20:06:44',1),(1295,1,'2012-09-11','2012-09-11 20:06:52',1),(1296,162,'2012-09-11','2012-09-11 20:06:56',1),(1297,162,'2012-09-11','2012-09-11 20:09:35',1),(1298,162,'2012-09-11','2012-09-11 20:09:38',1),(1299,162,'2012-09-11','2012-09-11 20:09:40',1),(1300,162,'2012-09-11','2012-09-11 20:09:50',1),(1301,162,'2012-09-11','2012-09-11 20:10:25',1),(1302,187,'2012-09-11','2012-09-11 20:10:28',1),(1303,188,'2012-09-11','2012-09-11 20:10:32',1),(1304,187,'2012-09-11','2012-09-11 20:10:34',1),(1305,187,'2012-09-11','2012-09-11 20:10:39',1),(1306,209,'2012-09-11','2012-09-11 20:11:28',1),(1307,209,'2012-09-11','2012-09-11 20:11:35',1),(1308,209,'2012-09-11','2012-09-11 20:11:56',1),(1309,209,'2012-09-11','2012-09-11 20:11:56',1),(1310,209,'2012-09-11','2012-09-11 20:12:02',1),(1311,209,'2012-09-11','2012-09-11 20:12:05',1),(1312,1,'2012-09-11','2012-09-11 20:23:16',0),(1313,162,'2012-09-11','2012-09-11 20:36:21',1),(1314,187,'2012-09-11','2012-09-11 20:36:21',1),(1315,187,'2012-09-11','2012-09-11 20:36:34',1),(1316,187,'2012-09-11','2012-09-11 20:36:49',1),(1317,187,'2012-09-11','2012-09-11 20:37:17',1),(1318,187,'2012-09-11','2012-09-11 20:37:20',1),(1319,187,'2012-09-11','2012-09-11 20:37:29',1),(1320,187,'2012-09-11','2012-09-11 20:37:30',1),(1321,187,'2012-09-11','2012-09-11 20:37:35',1),(1322,163,'2012-09-11','2012-09-11 21:04:51',0),(1323,1,'2012-09-11','2012-09-11 21:04:54',0),(1324,187,'2012-09-11','2012-09-11 21:08:37',0),(1325,162,'2012-09-11','2012-09-11 21:08:40',0),(1326,164,'2012-09-11','2012-09-11 21:09:04',0),(1327,163,'2012-09-11','2012-09-11 21:09:05',0),(1328,162,'2012-09-11','2012-09-11 21:09:12',0),(1329,162,'2012-09-11','2012-09-11 21:10:09',1),(1330,2,'2012-09-11','2012-09-11 21:10:11',1),(1331,7,'2012-09-11','2012-09-11 21:10:14',1),(1332,209,'2012-09-11','2012-09-11 21:10:18',1),(1333,2,'2012-09-11','2012-09-11 21:11:35',1),(1334,7,'2012-09-11','2012-09-11 21:11:37',1),(1335,209,'2012-09-11','2012-09-11 21:11:47',1),(1336,209,'2012-09-11','2012-09-11 21:12:23',1),(1337,162,'2012-09-11','2012-09-11 21:14:35',1),(1338,165,'2012-09-11','2012-09-11 21:15:48',1),(1339,165,'2012-09-11','2012-09-11 21:16:18',1),(1340,209,'2012-09-11','2012-09-11 21:26:01',1),(1341,2,'2012-09-11','2012-09-11 21:26:20',1),(1342,36,'2012-09-11','2012-09-11 21:26:23',1),(1343,36,'2012-09-11','2012-09-11 21:26:25',1),(1344,206,'2012-09-11','2012-09-11 21:26:38',1),(1345,36,'2012-09-11','2012-09-11 21:26:38',1),(1346,209,'2012-09-11','2012-09-11 21:26:41',1),(1347,209,'2012-09-11','2012-09-11 21:39:14',1),(1348,1,'2012-09-11','2012-09-11 22:46:54',0),(1349,1,'2012-09-11','2012-09-11 23:13:56',1),(1350,2,'2012-09-11','2012-09-11 23:14:02',1),(1351,36,'2012-09-11','2012-09-11 23:14:08',1),(1352,36,'2012-09-11','2012-09-11 23:14:11',1),(1353,1,'2012-09-11','2012-09-11 23:14:25',1),(1354,1,'2012-09-11','2012-09-11 23:14:27',1),(1355,162,'2012-09-11','2012-09-11 23:14:43',1),(1356,165,'2012-09-11','2012-09-11 23:14:54',1),(1357,165,'2012-09-11','2012-09-11 23:16:34',1),(1358,165,'2012-09-11','2012-09-11 23:16:36',1),(1359,163,'2012-09-11','2012-09-11 23:17:00',1),(1360,187,'2012-09-11','2012-09-11 23:17:08',1),(1361,188,'2012-09-11','2012-09-11 23:17:20',1),(1362,188,'2012-09-11','2012-09-11 23:17:24',1),(1363,2,'2012-09-11','2012-09-11 23:17:27',1),(1364,7,'2012-09-11','2012-09-11 23:17:29',1),(1365,197,'2012-09-11','2012-09-11 23:17:36',1),(1366,165,'2012-09-11','2012-09-11 23:20:17',1),(1367,165,'2012-09-11','2012-09-11 23:20:20',1),(1368,163,'2012-09-11','2012-09-11 23:27:20',1),(1369,163,'2012-09-11','2012-09-11 23:27:22',1),(1370,164,'2012-09-11','2012-09-11 23:27:24',1),(1371,166,'2012-09-11','2012-09-11 23:27:29',1),(1372,167,'2012-09-11','2012-09-11 23:27:30',1),(1373,163,'2012-09-11','2012-09-11 23:27:32',1),(1374,165,'2012-09-11','2012-09-11 23:27:34',1),(1375,162,'2012-09-11','2012-09-11 23:27:36',1),(1376,165,'2012-09-11','2012-09-11 23:27:36',1),(1377,163,'2012-09-11','2012-09-11 23:27:37',1),(1378,165,'2012-09-11','2012-09-11 23:27:38',1),(1379,163,'2012-09-11','2012-09-11 23:27:49',1),(1380,164,'2012-09-11','2012-09-11 23:27:52',1),(1381,166,'2012-09-11','2012-09-11 23:27:55',1),(1382,164,'2012-09-11','2012-09-11 23:28:24',1),(1383,164,'2012-09-11','2012-09-11 23:28:27',1),(1384,165,'2012-09-11','2012-09-11 23:29:03',1),(1385,165,'2012-09-11','2012-09-11 23:32:05',1),(1386,1,'2012-09-11','2012-09-11 23:33:48',1),(1387,1,'2012-09-11','2012-09-11 23:33:58',1),(1388,1,'2012-09-11','2012-09-11 23:42:07',1),(1389,1,'2012-09-11','2012-09-11 23:50:31',1),(1390,168,'2012-09-11','2012-09-11 23:50:42',1),(1391,169,'2012-09-11','2012-09-11 23:50:42',1),(1392,169,'2012-09-11','2012-09-11 23:51:18',1),(1393,162,'2012-09-11','2012-09-11 23:51:26',1),(1394,1,'2012-09-12','2012-09-12 16:30:03',1),(1395,1,'2012-09-12','2012-09-12 16:48:48',1),(1396,1,'2012-09-12','2012-09-12 16:48:50',1),(1397,1,'2012-09-12','2012-09-12 16:48:52',1),(1398,1,'2012-09-12','2012-09-12 16:49:30',1),(1399,1,'2012-09-12','2012-09-12 16:49:48',1),(1400,1,'2012-09-12','2012-09-12 16:49:51',1),(1401,1,'2012-09-12','2012-09-12 16:49:52',0),(1402,1,'2012-09-12','2012-09-12 16:50:02',0),(1403,1,'2012-09-12','2012-09-12 16:50:02',1),(1404,1,'2012-09-12','2012-09-12 16:50:03',1),(1405,1,'2012-09-12','2012-09-12 16:50:06',1),(1406,1,'2012-09-12','2012-09-12 16:50:08',1),(1407,1,'2012-09-12','2012-09-12 16:50:10',0),(1408,162,'2012-09-12','2012-09-12 16:50:18',0),(1409,1,'2012-09-12','2012-09-12 16:50:22',1),(1410,2,'2012-09-12','2012-09-12 16:50:25',1),(1411,165,'2012-09-12','2012-09-12 16:50:25',0),(1412,163,'2012-09-12','2012-09-12 16:50:27',0),(1413,164,'2012-09-12','2012-09-12 16:50:28',0),(1414,166,'2012-09-12','2012-09-12 16:50:29',0),(1415,167,'2012-09-12','2012-09-12 16:50:30',0),(1416,162,'2012-09-12','2012-09-12 16:50:31',0),(1417,187,'2012-09-12','2012-09-12 16:50:33',0),(1418,189,'2012-09-12','2012-09-12 16:50:35',0),(1419,187,'2012-09-12','2012-09-12 16:50:54',0),(1420,190,'2012-09-12','2012-09-12 16:50:56',0),(1421,187,'2012-09-12','2012-09-12 16:51:03',0),(1422,189,'2012-09-12','2012-09-12 16:51:05',0),(1423,36,'2012-09-12','2012-09-12 16:51:09',1),(1424,36,'2012-09-12','2012-09-12 16:51:12',1),(1425,207,'2012-09-12','2012-09-12 16:51:20',1),(1426,36,'2012-09-12','2012-09-12 16:51:20',1),(1427,1,'2012-09-12','2012-09-12 16:51:25',1),(1428,1,'2012-09-12','2012-09-12 16:52:10',1),(1429,100,'2012-09-12','2012-09-12 16:52:18',0),(1430,100,'2012-09-12','2012-09-12 16:52:20',0),(1431,1,'2012-09-12','2012-09-12 16:52:21',1),(1432,162,'2012-09-12','2012-09-12 16:52:24',1),(1433,187,'2012-09-12','2012-09-12 16:52:26',1),(1434,187,'2012-09-12','2012-09-12 16:52:30',1),(1435,162,'2012-09-12','2012-09-12 16:52:39',1),(1436,187,'2012-09-12','2012-09-12 16:53:11',1),(1437,188,'2012-09-12','2012-09-12 16:53:15',1),(1438,187,'2012-09-12','2012-09-12 16:53:18',1),(1439,162,'2012-09-12','2012-09-12 16:53:35',1),(1440,162,'2012-09-12','2012-09-12 16:53:37',1),(1441,187,'2012-09-12','2012-09-12 16:53:41',1),(1442,165,'2012-09-12','2012-09-12 16:53:52',1),(1443,175,'2012-09-12','2012-09-12 16:53:58',1),(1444,179,'2012-09-12','2012-09-12 16:54:06',1),(1445,184,'2012-09-12','2012-09-12 16:56:06',1),(1446,184,'2012-09-12','2012-09-12 16:56:16',1),(1447,1,'2012-09-12','2012-09-12 17:09:48',1),(1448,2,'2012-09-12','2012-09-12 17:10:00',1),(1449,7,'2012-09-12','2012-09-12 17:10:04',1),(1450,187,'2012-09-12','2012-09-12 17:10:28',1),(1451,187,'2012-09-12','2012-09-12 17:10:38',1),(1452,187,'2012-09-12','2012-09-12 17:11:11',1),(1453,189,'2012-09-12','2012-09-12 17:11:13',1),(1454,189,'2012-09-12','2012-09-12 17:11:18',1),(1455,189,'2012-09-12','2012-09-12 17:11:41',1),(1456,209,'2012-09-12','2012-09-12 17:11:44',1),(1457,209,'2012-09-12','2012-09-12 17:11:48',1),(1458,209,'2012-09-12','2012-09-12 17:12:30',1),(1459,2,'2012-09-12','2012-09-12 17:12:32',1),(1460,31,'2012-09-12','2012-09-12 17:12:35',1),(1461,32,'2012-09-12','2012-09-12 17:12:37',1),(1462,32,'2012-09-12','2012-09-12 17:12:47',1),(1463,31,'2012-09-12','2012-09-12 17:12:48',1),(1464,1,'2012-09-12','2012-09-12 17:13:07',1),(1465,162,'2012-09-12','2012-09-12 17:13:08',1),(1466,162,'2012-09-12','2012-09-12 17:13:55',1),(1467,162,'2012-09-12','2012-09-12 17:14:48',1),(1468,162,'2012-09-12','2012-09-12 17:15:33',1),(1469,162,'2012-09-12','2012-09-12 17:20:02',1),(1470,1,'2012-09-12','2012-09-12 17:20:06',0),(1471,162,'2012-09-12','2012-09-12 17:20:19',0),(1472,187,'2012-09-12','2012-09-12 17:20:22',0),(1473,189,'2012-09-12','2012-09-12 17:20:27',0),(1474,162,'2012-09-12','2012-09-12 17:20:33',0),(1475,165,'2012-09-12','2012-09-12 17:20:35',0),(1476,162,'2012-09-12','2012-09-12 17:20:37',0),(1477,187,'2012-09-12','2012-09-12 17:20:39',0),(1478,190,'2012-09-12','2012-09-12 17:20:41',0),(1479,187,'2012-09-12','2012-09-12 17:20:44',0),(1480,170,'2012-09-12','2012-09-12 17:20:47',0),(1481,171,'2012-09-12','2012-09-12 17:20:53',0),(1482,162,'2012-09-12','2012-09-12 17:21:10',0),(1483,187,'2012-09-12','2012-09-12 17:21:13',0),(1484,1,'2012-09-12','2012-09-12 17:21:19',0),(1485,162,'2012-09-12','2012-09-12 17:22:06',1),(1486,162,'2012-09-12','2012-09-12 17:22:10',1),(1487,162,'2012-09-12','2012-09-12 17:22:58',1),(1488,162,'2012-09-12','2012-09-12 17:23:01',1),(1489,1,'2012-09-12','2012-09-12 17:26:12',1),(1490,162,'2012-09-12','2012-09-12 17:40:38',1),(1491,187,'2012-09-12','2012-09-12 17:40:42',1),(1492,189,'2012-09-12','2012-09-12 17:40:44',1),(1493,189,'2012-09-12','2012-09-12 17:40:50',1),(1494,209,'2012-09-12','2012-09-12 17:40:51',1),(1495,209,'2012-09-12','2012-09-12 17:41:22',1),(1496,209,'2012-09-12','2012-09-12 17:41:29',1),(1497,109,'2012-09-12','2012-09-12 17:50:59',1),(1498,109,'2012-09-12','2012-09-12 17:51:07',1),(1499,209,'2012-09-12','2012-09-12 17:53:03',1),(1500,209,'2012-09-12','2012-09-12 18:00:00',1),(1501,109,'2012-09-12','2012-09-12 18:00:30',1),(1502,109,'2012-09-12','2012-09-12 18:00:38',1),(1503,209,'2012-09-12','2012-09-12 18:00:58',1),(1504,209,'2012-09-12','2012-09-12 18:03:05',1),(1505,209,'2012-09-12','2012-09-12 18:05:02',1),(1506,209,'2012-09-12','2012-09-12 18:09:28',1),(1507,209,'2012-09-12','2012-09-12 18:10:06',1),(1508,109,'2012-09-12','2012-09-12 18:10:10',1),(1509,109,'2012-09-12','2012-09-12 18:10:33',1),(1510,109,'2012-09-12','2012-09-12 18:10:53',1),(1511,109,'2012-09-12','2012-09-12 18:11:00',1),(1512,209,'2012-09-12','2012-09-12 18:11:07',1),(1513,209,'2012-09-12','2012-09-12 18:13:57',1),(1514,209,'2012-09-12','2012-09-12 18:14:35',1),(1515,209,'2012-09-12','2012-09-12 18:17:45',1),(1516,95,'2012-09-12','2012-09-12 18:17:46',1),(1517,209,'2012-09-12','2012-09-12 18:17:53',1),(1518,209,'2012-09-12','2012-09-12 18:18:00',1),(1519,209,'2012-09-12','2012-09-12 18:19:33',1),(1520,209,'2012-09-12','2012-09-12 18:19:34',1),(1521,209,'2012-09-12','2012-09-12 18:19:36',1),(1522,209,'2012-09-12','2012-09-12 18:19:40',1),(1523,209,'2012-09-12','2012-09-12 18:19:58',1),(1524,209,'2012-09-12','2012-09-12 18:19:58',1),(1525,209,'2012-09-12','2012-09-12 18:20:03',1),(1526,209,'2012-09-12','2012-09-12 18:20:24',1),(1527,209,'2012-09-12','2012-09-12 18:20:37',1),(1528,209,'2012-09-12','2012-09-12 18:20:38',1),(1529,209,'2012-09-12','2012-09-12 18:20:42',1),(1530,209,'2012-09-12','2012-09-12 18:21:33',1),(1531,209,'2012-09-12','2012-09-12 18:26:39',1),(1532,209,'2012-09-12','2012-09-12 18:26:43',1),(1533,209,'2012-09-12','2012-09-12 18:26:55',1),(1534,209,'2012-09-12','2012-09-12 18:26:56',1),(1535,209,'2012-09-12','2012-09-12 18:27:01',1),(1536,209,'2012-09-12','2012-09-12 18:27:11',1),(1537,209,'2012-09-12','2012-09-12 18:27:20',1),(1538,209,'2012-09-12','2012-09-12 18:27:21',1),(1539,209,'2012-09-12','2012-09-12 18:27:26',1),(1540,209,'2012-09-12','2012-09-12 18:28:00',1),(1541,187,'2012-09-12','2012-09-12 18:31:44',1),(1542,189,'2012-09-12','2012-09-12 18:31:47',1),(1543,209,'2012-09-12','2012-09-12 18:31:49',1),(1544,209,'2012-09-12','2012-09-12 18:41:12',1),(1545,209,'2012-09-12','2012-09-12 18:47:44',1),(1546,209,'2012-09-12','2012-09-12 18:47:48',1),(1547,209,'2012-09-12','2012-09-12 18:47:51',1),(1548,1,'2012-09-12','2012-09-12 18:48:12',1),(1549,187,'2012-09-12','2012-09-12 18:48:19',1),(1550,189,'2012-09-12','2012-09-12 18:48:21',1),(1551,209,'2012-09-12','2012-09-12 18:48:23',1),(1552,209,'2012-09-12','2012-09-12 18:48:50',1),(1553,209,'2012-09-12','2012-09-12 18:49:22',1),(1554,209,'2012-09-12','2012-09-12 19:24:25',1),(1555,209,'2012-09-12','2012-09-12 19:35:26',1),(1556,209,'2012-09-12','2012-09-12 19:35:29',1),(1557,209,'2012-09-12','2012-09-12 19:40:25',1),(1558,1,'2012-09-12','2012-09-12 19:40:32',1),(1559,2,'2012-09-12','2012-09-12 19:43:17',1),(1560,1,'2012-09-12','2012-09-12 19:48:48',0),(1561,162,'2012-09-12','2012-09-12 19:48:58',0),(1562,165,'2012-09-12','2012-09-12 19:48:59',0),(1563,1,'2012-09-12','2012-09-12 19:49:00',0),(1564,1,'2012-09-12','2012-09-12 19:49:00',0),(1565,162,'2012-09-12','2012-09-12 19:49:13',0),(1566,1,'2012-09-12','2012-09-12 19:49:15',0),(1567,162,'2012-09-12','2012-09-12 19:49:17',0),(1568,1,'2012-09-12','2012-09-12 19:49:20',0),(1569,165,'2012-09-12','2012-09-12 19:49:22',0),(1570,162,'2012-09-12','2012-09-12 19:49:26',0),(1571,1,'2012-09-12','2012-09-12 19:49:28',0),(1572,1,'2012-09-12','2012-09-12 19:49:29',0),(1573,162,'2012-09-12','2012-09-12 20:04:35',1),(1574,187,'2012-09-12','2012-09-12 20:04:39',1),(1575,189,'2012-09-12','2012-09-12 20:04:41',1),(1576,209,'2012-09-12','2012-09-12 20:04:43',1),(1577,1,'2012-09-12','2012-09-12 20:06:56',1),(1578,1,'2012-09-12','2012-09-12 20:06:59',1),(1579,4,'2012-09-12','2012-09-12 20:10:53',1),(1580,1,'2012-09-12','2012-09-12 20:10:55',1),(1581,2,'2012-09-12','2012-09-12 20:10:58',1),(1582,1,'2012-09-12','2012-09-12 20:49:48',1),(1583,1,'2012-09-12','2012-09-12 20:49:52',1),(1584,1,'2012-09-12','2012-09-12 20:50:17',1),(1585,1,'2012-09-12','2012-09-12 20:50:24',1),(1586,1,'2012-09-12','2012-09-12 20:50:35',1),(1587,2,'2012-09-12','2012-09-12 20:50:43',1),(1588,7,'2012-09-12','2012-09-12 20:50:46',1),(1589,6,'2012-09-12','2012-09-12 20:51:01',1),(1590,7,'2012-09-12','2012-09-12 20:51:01',1),(1591,211,'2012-09-12','2012-09-12 20:51:20',1),(1592,167,'2012-09-12','2012-09-12 20:51:23',1),(1593,211,'2012-09-12','2012-09-12 20:51:29',1),(1594,211,'2012-09-12','2012-09-12 20:51:37',1),(1595,211,'2012-09-12','2012-09-12 20:51:48',1),(1596,2,'2012-09-12','2012-09-12 20:52:35',1),(1597,36,'2012-09-12','2012-09-12 20:52:38',1),(1598,36,'2012-09-12','2012-09-12 20:52:41',1),(1599,36,'2012-09-12','2012-09-12 20:52:44',1),(1600,36,'2012-09-12','2012-09-12 20:52:46',1),(1601,207,'2012-09-12','2012-09-12 20:53:02',1),(1602,36,'2012-09-12','2012-09-12 20:53:02',1),(1603,1,'2012-09-12','2012-09-12 20:53:07',1),(1604,211,'2012-09-12','2012-09-12 20:53:11',1),(1605,211,'2012-09-12','2012-09-12 20:55:17',1),(1606,211,'2012-09-12','2012-09-12 20:55:35',1),(1607,1,'2012-09-12','2012-09-12 20:55:38',1),(1608,211,'2012-09-12','2012-09-12 20:55:41',1),(1609,211,'2012-09-12','2012-09-12 20:57:46',1),(1610,211,'2012-09-12','2012-09-12 20:57:49',1),(1611,211,'2012-09-12','2012-09-12 20:57:55',1),(1612,162,'2012-09-12','2012-09-12 20:42:03',1),(1613,162,'2012-09-12','2012-09-12 20:42:16',1),(1614,162,'2012-09-12','2012-09-12 20:43:10',1),(1615,162,'2012-09-12','2012-09-12 20:43:30',1),(1616,1,'2012-09-12','2012-09-12 20:43:36',1),(1617,162,'2012-09-12','2012-09-12 20:43:43',1),(1618,162,'2012-09-12','2012-09-12 20:45:02',1),(1619,162,'2012-09-12','2012-09-12 20:45:09',1),(1620,162,'2012-09-12','2012-09-12 20:45:37',1),(1621,162,'2012-09-12','2012-09-12 20:45:58',1),(1622,162,'2012-09-12','2012-09-12 20:46:04',1),(1623,162,'2012-09-12','2012-09-12 20:46:15',1),(1624,187,'2012-09-12','2012-09-12 20:47:43',1),(1625,189,'2012-09-12','2012-09-12 20:54:33',1),(1626,189,'2012-09-12','2012-09-12 20:54:39',1),(1627,209,'2012-09-12','2012-09-12 20:54:48',1),(1628,209,'2012-09-12','2012-09-12 20:55:00',1),(1629,209,'2012-09-12','2012-09-12 20:56:22',1),(1630,209,'2012-09-12','2012-09-12 20:56:41',1),(1631,209,'2012-09-12','2012-09-12 20:57:05',1),(1632,209,'2012-09-12','2012-09-12 20:58:00',1),(1633,209,'2012-09-12','2012-09-12 20:58:40',1),(1634,209,'2012-09-12','2012-09-12 21:06:52',1),(1635,209,'2012-09-12','2012-09-12 21:07:33',1),(1636,209,'2012-09-12','2012-09-12 21:07:48',1),(1637,209,'2012-09-12','2012-09-12 21:07:50',1),(1638,209,'2012-09-12','2012-09-12 21:08:42',1),(1639,209,'2012-09-12','2012-09-12 21:11:50',1),(1640,209,'2012-09-12','2012-09-12 21:12:10',1),(1641,209,'2012-09-12','2012-09-12 21:12:39',1),(1642,209,'2012-09-12','2012-09-12 21:14:04',1),(1643,209,'2012-09-12','2012-09-12 21:14:40',1),(1644,209,'2012-09-12','2012-09-12 21:16:49',1),(1645,209,'2012-09-12','2012-09-12 21:17:23',1),(1646,209,'2012-09-12','2012-09-12 21:17:51',1),(1647,1,'2012-09-19','2012-09-19 17:20:08',0),(1648,1,'2012-09-19','2012-09-19 22:22:08',0),(1649,187,'2012-09-19','2012-09-19 22:22:16',0),(1650,189,'2012-09-19','2012-09-19 22:22:19',0),(1651,209,'2012-09-19','2012-09-19 22:22:24',0),(1652,209,'2012-09-19','2012-09-20 02:47:59',0),(1653,209,'2012-09-19','2012-09-20 02:48:08',0),(1654,1,'2012-09-19','2012-09-20 02:48:15',0),(1655,100,'2012-09-19','2012-09-20 02:48:17',0),(1656,100,'2012-09-19','2012-09-20 02:48:20',0),(1657,100,'2012-09-19','2012-09-20 02:58:43',0),(1658,100,'2012-09-19','2012-09-20 02:58:49',0),(1659,100,'2012-09-19','2012-09-20 02:59:23',0),(1660,100,'2012-09-19','2012-09-20 03:22:16',0),(1661,1,'2012-09-19','2012-09-20 03:22:17',1),(1662,95,'2012-09-19','2012-09-20 03:22:19',1),(1663,1,'2012-09-19','2012-09-20 03:23:23',1),(1664,209,'2012-09-19','2012-09-20 03:23:26',1),(1665,209,'2012-09-19','2012-09-20 03:23:29',1),(1666,2,'2012-09-19','2012-09-20 03:23:37',1),(1667,209,'2012-09-19','2012-09-20 03:24:23',1),(1668,1,'2012-09-19','2012-09-20 03:24:45',1),(1669,167,'2012-09-19','2012-09-20 03:24:51',1),(1670,7,'2012-09-19','2012-09-20 03:24:57',1),(1671,211,'2012-09-19','2012-09-20 03:25:03',1),(1672,211,'2012-09-19','2012-09-20 03:25:12',1),(1673,209,'2012-09-19','2012-09-20 03:25:25',1),(1674,211,'2012-09-19','2012-09-20 03:25:30',1),(1675,209,'2012-09-19','2012-09-20 03:25:46',1),(1676,211,'2012-09-19','2012-09-20 03:25:50',1),(1677,209,'2012-09-19','2012-09-20 03:25:56',1),(1678,211,'2012-09-19','2012-09-20 03:26:00',1),(1679,209,'2012-09-19','2012-09-20 03:26:05',1),(1680,162,'2012-09-19','2012-09-20 03:52:22',1),(1681,162,'2012-09-19','2012-09-20 03:54:48',1),(1682,2,'2012-09-19','2012-09-20 03:55:24',1),(1683,36,'2012-09-19','2012-09-20 03:55:29',1),(1684,36,'2012-09-19','2012-09-20 03:55:34',1),(1685,209,'2012-09-19','2012-09-20 04:03:59',1),(1686,1,'2012-09-19','2012-09-20 04:04:11',1),(1687,2,'2012-09-19','2012-09-20 04:04:14',1),(1688,7,'2012-09-19','2012-09-20 04:04:15',1),(1689,2,'2012-09-19','2012-09-20 04:04:23',1),(1690,33,'2012-09-19','2012-09-20 04:04:26',1),(1691,33,'2012-09-19','2012-09-20 04:04:31',1),(1692,33,'2012-09-19','2012-09-20 04:04:45',1),(1693,33,'2012-09-19','2012-09-20 04:04:45',1),(1694,33,'2012-09-19','2012-09-20 04:04:49',1),(1695,33,'2012-09-19','2012-09-20 04:04:54',1),(1696,33,'2012-09-19','2012-09-20 04:04:55',1),(1697,33,'2012-09-19','2012-09-20 04:04:58',1),(1698,33,'2012-09-19','2012-09-20 04:05:03',1),(1699,33,'2012-09-19','2012-09-20 04:05:03',1),(1700,33,'2012-09-19','2012-09-20 04:05:14',1),(1701,33,'2012-09-19','2012-09-20 04:05:20',1),(1702,33,'2012-09-19','2012-09-20 04:05:20',1),(1703,2,'2012-09-19','2012-09-20 04:05:23',1),(1704,7,'2012-09-19','2012-09-20 04:06:12',1),(1705,7,'2012-09-19','2012-09-20 04:07:40',1),(1706,209,'2012-09-19','2012-09-20 04:07:46',1),(1707,167,'2012-09-19','2012-09-20 04:08:14',1),(1708,166,'2012-09-19','2012-09-20 04:08:16',1),(1709,164,'2012-09-19','2012-09-20 04:08:20',1),(1710,163,'2012-09-19','2012-09-20 04:08:22',1),(1711,1,'2012-09-19','2012-09-20 04:08:55',1),(1712,188,'2012-09-19','2012-09-20 04:09:38',1),(1713,187,'2012-09-19','2012-09-20 04:09:48',1),(1714,189,'2012-09-19','2012-09-20 04:09:52',1),(1715,209,'2012-09-19','2012-09-20 04:09:57',1),(1716,209,'2012-09-19','2012-09-20 04:10:03',1),(1717,209,'2012-09-19','2012-09-20 04:10:14',1),(1718,187,'2012-09-19','2012-09-20 04:10:18',1),(1719,187,'2012-09-19','2012-09-20 04:10:22',1),(1720,36,'2012-09-19','2012-09-20 04:10:27',1),(1721,144,'2012-09-19','2012-09-20 04:10:40',1),(1722,36,'2012-09-19','2012-09-20 04:10:41',1),(1723,1,'2012-09-19','2012-09-20 04:10:43',1),(1724,187,'2012-09-19','2012-09-20 04:10:47',1),(1725,187,'2012-09-19','2012-09-20 04:10:54',1),(1726,190,'2012-09-19','2012-09-20 04:10:56',1),(1727,165,'2012-09-19','2012-09-20 04:10:59',1),(1728,177,'2012-09-19','2012-09-20 04:11:04',1),(1729,163,'2012-09-19','2012-09-20 04:11:08',1),(1730,164,'2012-09-19','2012-09-20 04:11:15',1),(1731,166,'2012-09-19','2012-09-20 04:11:17',1),(1732,167,'2012-09-19','2012-09-20 04:11:18',1),(1733,163,'2012-09-19','2012-09-20 04:11:20',1),(1734,165,'2012-09-19','2012-09-20 04:11:21',1),(1735,162,'2012-09-19','2012-09-20 04:11:23',1),(1736,188,'2012-09-19','2012-09-20 04:13:31',1),(1737,162,'2012-09-19','2012-09-20 04:13:37',1),(1738,2,'2012-09-19','2012-09-20 04:13:45',1),(1739,7,'2012-09-19','2012-09-20 04:13:48',1),(1740,162,'2012-09-19','2012-09-20 04:14:09',1),(1741,162,'2012-09-19','2012-09-20 04:14:17',1),(1742,187,'2012-09-19','2012-09-20 04:14:43',1),(1743,189,'2012-09-19','2012-09-20 04:14:47',1),(1744,209,'2012-09-19','2012-09-20 04:14:50',1),(1745,186,'2012-09-19','2012-09-20 04:18:55',1),(1746,186,'2012-09-19','2012-09-20 05:02:26',1),(1747,186,'2012-09-19','2012-09-20 05:02:53',1),(1748,1,'2012-09-19','2012-09-20 05:03:05',0),(1749,2,'2012-09-19','2012-09-20 05:03:49',1),(1750,36,'2012-09-19','2012-09-20 05:03:51',1),(1751,36,'2012-09-19','2012-09-20 05:03:54',1),(1752,206,'2012-09-19','2012-09-20 05:04:14',1),(1753,36,'2012-09-19','2012-09-20 05:04:14',1),(1754,209,'2012-09-19','2012-09-20 05:04:18',1),(1755,1,'2012-09-19','2012-09-20 05:04:29',0),(1756,2,'2012-09-19','2012-09-20 05:08:32',1),(1757,7,'2012-09-19','2012-09-20 05:08:34',1),(1758,1,'2012-09-19','2012-09-20 05:08:54',0),(1759,1,'2012-09-19','2012-09-20 05:09:34',0),(1760,1,'2012-09-19','2012-09-20 05:09:53',0),(1761,162,'2012-09-19','2012-09-20 05:09:59',0),(1762,187,'2012-09-19','2012-09-20 05:10:02',0),(1763,188,'2012-09-19','2012-09-20 05:10:04',0),(1764,1,'2012-09-19','2012-09-20 05:10:10',0),(1765,162,'2012-09-19','2012-09-20 05:10:12',0),(1766,165,'2012-09-19','2012-09-20 05:10:14',0),(1767,175,'2012-09-19','2012-09-20 05:10:16',0),(1768,176,'2012-09-19','2012-09-20 05:10:19',0),(1769,203,'2012-09-19','2012-09-20 05:10:33',1),(1770,2,'2012-09-19','2012-09-20 05:10:40',1),(1771,1,'2012-09-19','2012-09-20 05:10:50',1),(1772,1,'2012-09-19','2012-09-20 05:12:22',1),(1773,1,'2012-09-19','2012-09-20 05:13:59',1),(1774,176,'2012-09-19','2012-09-20 05:22:24',0),(1775,176,'2012-09-19','2012-09-20 05:30:59',0),(1776,176,'2012-09-19','2012-09-20 05:31:54',0),(1777,176,'2012-09-19','2012-09-20 05:33:27',0),(1778,176,'2012-09-19','2012-09-20 05:33:40',0),(1779,176,'2012-09-19','2012-09-20 05:34:53',0),(1780,176,'2012-09-19','2012-09-20 05:35:13',0),(1781,176,'2012-09-19','2012-09-20 05:38:16',0),(1782,176,'2012-09-19','2012-09-20 05:38:18',0),(1783,176,'2012-09-19','2012-09-20 05:39:41',0),(1784,176,'2012-09-19','2012-09-20 05:40:38',0),(1785,176,'2012-09-19','2012-09-20 05:40:57',0),(1786,176,'2012-09-19','2012-09-20 05:42:57',0),(1787,165,'2012-09-19','2012-09-20 05:43:09',0),(1788,209,'2012-09-19','2012-09-20 05:56:48',1),(1789,209,'2012-09-19','2012-09-20 05:57:55',1),(1790,209,'2012-09-19','2012-09-20 05:58:11',1),(1791,209,'2012-09-19','2012-09-20 05:59:19',1),(1792,209,'2012-09-19','2012-09-20 06:00:12',1),(1793,209,'2012-09-19','2012-09-20 06:01:04',1),(1794,209,'2012-09-19','2012-09-20 06:02:06',1),(1795,209,'2012-09-19','2012-09-20 06:02:43',1),(1796,209,'2012-09-19','2012-09-20 06:04:36',1),(1797,209,'2012-09-19','2012-09-20 06:07:00',1),(1798,209,'2012-09-19','2012-09-20 06:09:28',1),(1799,209,'2012-09-19','2012-09-20 06:10:09',1),(1800,209,'2012-09-19','2012-09-20 06:12:26',1),(1801,209,'2012-09-19','2012-09-20 06:13:02',1),(1802,209,'2012-09-19','2012-09-20 06:14:48',1),(1803,209,'2012-09-19','2012-09-20 06:15:35',1),(1804,209,'2012-09-19','2012-09-20 06:15:51',1),(1805,209,'2012-09-19','2012-09-20 06:16:22',1),(1806,2,'2012-09-19','2012-09-20 06:18:19',1),(1807,7,'2012-09-19','2012-09-20 06:18:21',1),(1808,209,'2012-09-19','2012-09-20 06:19:02',1),(1809,6,'2012-09-19','2012-09-20 06:20:22',1),(1810,7,'2012-09-19','2012-09-20 06:20:22',1),(1811,6,'2012-09-19','2012-09-20 06:20:38',1),(1812,7,'2012-09-19','2012-09-20 06:20:39',1),(1813,6,'2012-09-19','2012-09-20 06:20:56',1),(1814,7,'2012-09-19','2012-09-20 06:20:56',1),(1815,6,'2012-09-19','2012-09-20 06:21:13',1),(1816,7,'2012-09-19','2012-09-20 06:21:14',1),(1817,209,'2012-09-19','2012-09-20 06:21:19',1),(1818,209,'2012-09-19','2012-09-20 06:23:53',1),(1819,209,'2012-09-19','2012-09-20 06:24:44',1),(1820,209,'2012-09-19','2012-09-20 06:25:22',1),(1821,209,'2012-09-19','2012-09-20 06:25:55',1),(1822,167,'2012-09-19','2012-09-20 06:26:18',1),(1823,167,'2012-09-19','2012-09-20 06:26:20',1),(1824,162,'2012-09-19','2012-09-20 06:26:30',1),(1825,162,'2012-09-19','2012-09-20 06:26:36',1),(1826,6,'2012-09-19','2012-09-20 06:27:55',1),(1827,7,'2012-09-19','2012-09-20 06:27:55',1),(1828,6,'2012-09-19','2012-09-20 06:28:10',1),(1829,7,'2012-09-19','2012-09-20 06:28:11',1),(1830,6,'2012-09-19','2012-09-20 06:28:30',1),(1831,7,'2012-09-19','2012-09-20 06:28:31',1),(1832,162,'2012-09-19','2012-09-20 06:28:35',1),(1833,187,'2012-09-19','2012-09-20 06:31:10',1),(1834,164,'2012-09-19','2012-09-20 06:31:20',1),(1835,163,'2012-09-19','2012-09-20 06:31:22',1),(1836,162,'2012-09-19','2012-09-20 06:31:24',1),(1837,177,'2012-09-19','2012-09-20 06:31:27',1),(1838,166,'2012-09-20','2012-09-20 07:19:11',1),(1839,166,'2012-09-20','2012-09-20 07:19:14',1),(1840,166,'2012-09-20','2012-09-20 07:21:25',1),(1841,166,'2012-09-20','2012-09-20 07:23:30',1),(1842,166,'2012-09-20','2012-09-20 07:23:47',1),(1843,166,'2012-09-20','2012-09-20 07:24:02',1),(1844,166,'2012-09-20','2012-09-20 07:24:37',1),(1845,166,'2012-09-20','2012-09-20 07:24:39',1),(1846,166,'2012-09-20','2012-09-20 07:24:45',1),(1847,166,'2012-09-20','2012-09-20 07:25:37',1),(1848,166,'2012-09-20','2012-09-20 07:25:57',1),(1849,166,'2012-09-20','2012-09-20 07:25:58',1),(1850,166,'2012-09-20','2012-09-20 07:26:03',1),(1851,166,'2012-09-20','2012-09-20 07:33:03',1),(1852,166,'2012-09-20','2012-09-20 07:33:21',1),(1853,166,'2012-09-20','2012-09-20 07:35:39',1),(1854,162,'2012-09-20','2012-09-20 07:35:48',1),(1855,187,'2012-09-20','2012-09-20 07:35:51',1),(1856,189,'2012-09-20','2012-09-20 07:35:53',1),(1857,209,'2012-09-20','2012-09-20 07:35:57',1),(1858,209,'2012-09-20','2012-09-20 07:39:39',1),(1859,209,'2012-09-20','2012-09-20 07:39:42',1),(1860,209,'2012-09-20','2012-09-20 07:39:54',1),(1861,209,'2012-09-20','2012-09-20 07:40:49',1),(1862,209,'2012-09-20','2012-09-20 07:40:53',1),(1863,209,'2012-09-20','2012-09-20 07:41:20',1),(1864,167,'2012-09-20','2012-09-20 07:41:31',1),(1865,166,'2012-09-20','2012-09-20 07:41:34',1),(1866,166,'2012-09-20','2012-09-20 07:41:39',1),(1867,166,'2012-09-20','2012-09-20 07:45:22',1),(1868,166,'2012-09-20','2012-09-20 07:45:55',1),(1869,1,'2012-09-26','2012-09-26 18:05:38',1),(1870,95,'2012-09-26','2012-09-26 18:05:49',1),(1871,2,'2012-09-26','2012-09-26 18:06:01',1),(1872,33,'2012-09-26','2012-09-26 18:06:11',1),(1873,1,'2012-09-26','2012-09-26 18:36:32',1),(1874,1,'2012-09-26','2012-09-26 18:36:36',1),(1875,1,'2012-09-26','2012-09-26 18:36:38',1),(1876,1,'2012-09-26','2012-09-26 18:36:44',1),(1877,1,'2012-09-26','2012-09-26 18:37:50',1),(1878,2,'2012-09-26','2012-09-26 18:38:15',1),(1879,7,'2012-09-26','2012-09-26 18:38:18',1),(1880,1,'2012-09-26','2012-09-26 18:38:36',1),(1881,1,'2012-09-26','2012-09-26 18:38:41',1),(1882,1,'2012-09-26','2012-09-26 18:38:42',1),(1883,1,'2012-09-26','2012-09-26 18:38:44',1),(1884,7,'2012-09-26','2012-09-26 18:38:55',1),(1885,1,'2012-09-26','2012-09-26 18:39:11',1),(1886,1,'2012-09-26','2012-09-26 18:39:31',1),(1887,166,'2012-09-26','2012-09-26 18:39:38',1),(1888,164,'2012-09-26','2012-09-26 18:40:29',1),(1889,166,'2012-09-26','2012-09-26 18:40:33',1),(1890,167,'2012-09-26','2012-09-26 18:40:35',1),(1891,163,'2012-09-26','2012-09-26 18:40:37',1),(1892,165,'2012-09-26','2012-09-26 18:40:38',1),(1893,162,'2012-09-26','2012-09-26 18:40:39',1),(1894,162,'2012-09-26','2012-09-26 18:40:40',1),(1895,1,'2012-09-26','2012-09-26 18:41:18',1),(1896,175,'2012-09-26','2012-09-26 18:41:24',1),(1897,162,'2012-09-26','2012-09-26 18:41:29',1),(1898,187,'2012-09-26','2012-09-26 18:41:30',1),(1899,189,'2012-09-26','2012-09-26 18:41:32',1),(1900,209,'2012-09-26','2012-09-26 18:41:35',1),(1901,1,'2012-09-27','2012-09-27 08:04:50',0),(1902,1,'2012-09-28','2012-09-28 16:42:46',1),(1903,95,'2012-09-28','2012-09-28 16:42:48',1),(1904,2,'2012-09-28','2012-09-28 16:42:51',1),(1905,31,'2012-09-28','2012-09-28 16:42:57',1),(1906,175,'2012-09-28','2012-09-28 16:43:45',1),(1907,187,'2012-09-28','2012-09-28 16:43:48',1),(1908,189,'2012-09-28','2012-09-28 16:43:52',1),(1909,209,'2012-09-28','2012-09-28 16:43:57',1),(1910,2,'2012-09-28','2012-09-28 16:44:07',1),(1911,36,'2012-09-28','2012-09-28 16:44:09',1),(1912,36,'2012-09-28','2012-09-28 16:44:11',1),(1913,2,'2012-09-28','2012-09-28 16:47:06',1),(1914,100,'2012-09-28','2012-09-28 16:50:32',0),(1915,100,'2012-09-28','2012-09-28 16:50:34',0),(1916,1,'2012-09-28','2012-09-28 16:50:35',1),(1917,2,'2012-09-28','2012-09-28 16:51:07',1),(1918,7,'2012-09-28','2012-09-28 16:51:09',1),(1919,6,'2012-09-28','2012-09-28 16:52:59',1),(1920,7,'2012-09-28','2012-09-28 16:53:00',1),(1921,1,'2012-09-28','2012-09-28 16:54:56',1),(1922,188,'2012-09-28','2012-09-28 16:55:05',1),(1923,188,'2012-09-28','2012-09-28 16:55:15',1),(1924,187,'2012-09-28','2012-09-28 16:55:24',1),(1925,188,'2012-09-28','2012-09-28 16:55:28',1),(1926,188,'2012-09-28','2012-09-28 16:55:50',1),(1927,7,'2012-09-28','2012-09-28 16:56:55',1),(1928,1,'2012-09-28','2012-09-28 16:58:29',1),(1929,187,'2012-09-28','2012-09-28 16:58:31',1),(1930,1,'2012-09-28','2012-09-28 17:02:03',1),(1931,188,'2012-09-28','2012-09-28 17:02:12',1),(1932,188,'2012-09-28','2012-09-28 17:02:22',1),(1933,188,'2012-09-28','2012-09-28 17:02:45',1),(1934,187,'2012-09-28','2012-09-28 17:03:32',1),(1935,188,'2012-09-28','2012-09-28 17:03:34',1),(1936,202,'2012-09-28','2012-09-28 17:03:41',1),(1937,202,'2012-09-28','2012-09-28 17:04:00',1),(1938,202,'2012-09-28','2012-09-28 17:04:33',1),(1939,2,'2012-09-28','2012-09-28 17:04:56',1),(1940,36,'2012-09-28','2012-09-28 17:05:01',1),(1941,36,'2012-09-28','2012-09-28 17:05:06',1),(1942,144,'2012-09-28','2012-09-28 17:05:50',1),(1943,36,'2012-09-28','2012-09-28 17:05:50',1),(1944,188,'2012-09-28','2012-09-28 17:05:51',1),(1945,188,'2012-09-28','2012-09-28 17:06:07',1),(1946,188,'2012-09-28','2012-09-28 17:08:08',1),(1947,198,'2012-09-28','2012-09-28 17:08:13',1),(1948,162,'2012-09-28','2012-09-28 17:08:40',1),(1949,188,'2012-09-28','2012-09-28 17:08:42',1),(1950,197,'2012-09-28','2012-09-28 17:08:46',1),(1951,188,'2012-09-28','2012-09-28 17:08:48',1),(1952,201,'2012-09-28','2012-09-28 17:08:51',1),(1953,201,'2012-09-28','2012-09-28 17:09:28',1),(1954,201,'2012-09-28','2012-09-28 17:09:52',1),(1955,203,'2012-09-28','2012-09-28 17:10:00',1),(1956,203,'2012-09-28','2012-09-28 17:10:22',1),(1957,203,'2012-09-28','2012-09-28 17:12:22',1),(1958,162,'2012-09-28','2012-09-28 17:12:29',1),(1959,188,'2012-09-28','2012-09-28 17:12:31',1),(1960,201,'2012-09-28','2012-09-28 17:12:33',1),(1961,201,'2012-09-28','2012-09-28 17:12:37',1),(1962,201,'2012-09-28','2012-09-28 17:13:21',1),(1963,188,'2012-09-28','2012-09-28 17:13:26',1),(1964,201,'2012-09-28','2012-09-28 17:13:29',1),(1965,203,'2012-09-28','2012-09-28 17:13:32',1),(1966,203,'2012-09-28','2012-09-28 17:13:35',1),(1967,201,'2012-09-28','2012-09-28 17:13:52',1),(1968,201,'2012-09-28','2012-09-28 17:14:57',1),(1969,204,'2012-09-28','2012-09-28 17:14:59',1),(1970,201,'2012-09-28','2012-09-28 17:15:16',1),(1971,205,'2012-09-28','2012-09-28 17:15:18',1),(1972,205,'2012-09-28','2012-09-28 17:15:20',1),(1973,205,'2012-09-28','2012-09-28 17:15:23',1),(1974,205,'2012-09-28','2012-09-28 17:15:26',1),(1975,205,'2012-09-28','2012-09-28 17:16:42',1),(1976,188,'2012-09-28','2012-09-28 17:17:15',1),(1977,198,'2012-09-28','2012-09-28 17:17:17',1),(1978,188,'2012-09-28','2012-09-28 17:17:27',1),(1979,197,'2012-09-28','2012-09-28 17:17:28',1),(1980,188,'2012-09-28','2012-09-28 17:17:39',1),(1981,198,'2012-09-28','2012-09-28 17:17:41',1),(1982,188,'2012-09-28','2012-09-28 17:17:47',1),(1983,200,'2012-09-28','2012-09-28 17:17:48',1),(1984,188,'2012-09-28','2012-09-28 17:17:55',1),(1985,199,'2012-09-28','2012-09-28 17:17:57',1),(1986,199,'2012-09-28','2012-09-28 17:18:12',1),(1987,199,'2012-09-28','2012-09-28 17:21:04',1),(1988,188,'2012-09-28','2012-09-28 17:21:06',1),(1989,219,'2012-09-28','2012-09-28 17:21:15',1),(1990,219,'2012-09-28','2012-09-28 17:21:19',1),(1991,188,'2012-09-28','2012-09-28 17:23:23',1),(1992,219,'2012-09-28','2012-09-28 17:23:26',1),(1993,188,'2012-09-28','2012-09-28 17:23:30',1),(1994,197,'2012-09-28','2012-09-28 17:23:32',1),(1995,219,'2012-09-28','2012-09-28 17:27:22',1),(1996,188,'2012-09-28','2012-09-28 17:27:29',1),(1997,188,'2012-09-28','2012-09-28 17:28:43',1),(1998,219,'2012-09-28','2012-09-28 17:28:46',1),(1999,1,'2012-09-28','2012-09-28 21:16:26',1),(2000,2,'2012-09-28','2012-09-28 21:16:29',1),(2001,175,'2012-09-28','2012-09-28 21:16:29',1),(2002,209,'2012-09-28','2012-09-28 21:16:31',1),(2003,188,'2012-09-28','2012-09-28 21:32:51',1),(2004,197,'2012-09-28','2012-09-28 21:32:54',1),(2005,188,'2012-09-28','2012-09-28 21:32:58',1),(2006,200,'2012-09-28','2012-09-28 21:33:00',1),(2007,188,'2012-09-28','2012-09-28 21:33:04',1),(2008,201,'2012-09-28','2012-09-28 21:33:05',1),(2009,204,'2012-09-28','2012-09-28 21:33:08',1),(2010,201,'2012-09-28','2012-09-28 21:33:10',1),(2011,203,'2012-09-28','2012-09-28 21:33:12',1),(2012,201,'2012-09-28','2012-09-28 21:33:13',1),(2013,188,'2012-09-28','2012-09-28 21:33:14',1),(2014,201,'2012-09-28','2012-09-28 21:33:16',1),(2015,205,'2012-09-28','2012-09-28 21:33:18',1),(2016,1,'2012-09-29','2012-09-29 07:12:24',0),(2017,1,'2012-09-29','2012-09-29 22:58:15',0),(2018,1,'2012-09-30','2012-09-30 21:00:06',0),(2019,1,'2012-10-01','2012-10-01 06:35:24',0),(2020,1,'2012-10-01','2012-10-01 11:48:32',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(5,'home','main.png','Home',0,0),(6,'left_sidebar','template1.png','Left Sidebar',0,0),(7,'three_column','template2.png','Three Column',0,0),(8,'one_column','main.png','Single Column',0,0),(9,'product','right_sidebar.png','Product',0,0);
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
INSERT INTO `Pages` VALUES (1,5,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,18,0,0,0,4,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,12,0,0,0,4,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,4,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,4,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,4,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,4,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,4,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,4,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,4,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,4,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,4,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,4,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,4,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,4,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,5,3,2,0,4,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,4,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,4,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,4,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,4,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,4,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,4,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,21,0,4,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,21,0,4,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,21,0,4,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,21,0,4,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,4,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,26,0,4,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,27,0,4,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,27,0,4,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,27,0,4,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,26,0,4,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,31,0,4,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,26,0,4,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,26,0,4,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,2,6,2,0,4,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,35,0,4,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,37,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,36,0,4,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,1,35,0,4,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,7,2,0,4,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,8,2,0,4,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,39,0,4,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,39,0,4,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,39,0,4,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,39,0,4,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,39,0,4,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,9,2,0,4,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,46,0,4,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,47,0,4,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,47,0,4,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,47,0,4,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,47,0,4,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,47,0,4,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,47,0,4,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,4,1,46,0,4,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,54,0,4,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,1,54,0,4,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,2,54,0,4,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,3,54,0,4,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,46,0,4,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,59,0,4,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,59,0,4,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,59,0,4,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,3,46,0,4,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,63,0,4,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,63,0,4,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,63,0,4,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,63,0,4,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,4,63,0,4,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,63,0,4,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,63,0,4,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,7,63,0,4,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,46,0,4,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,72,0,4,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,72,0,4,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,72,0,4,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,46,0,4,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,76,0,4,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,76,0,4,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,46,0,4,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,79,0,4,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,79,0,4,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,4,7,46,0,4,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,82,0,4,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,82,0,4,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,82,0,4,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,82,0,4,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,46,0,4,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,87,0,4,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,87,0,4,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,87,0,4,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,31,0,4,-1,'0',0,1),(92,1,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(93,2,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(94,3,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(95,2,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,10,2,0,4,-1,'0',0,1),(96,3,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,4,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,4,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,7,0,0,0,4,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,6,0,0,0,4,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,100,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,4,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,101,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,4,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,4,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,102,0,4,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,102,0,4,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,102,0,4,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,102,0,4,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,4,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,4,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,4,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,4,-1,'0',0,1),(111,4,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(112,5,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(113,6,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(114,7,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(115,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,2,3,98,0,4,-1,'0',0,1),(116,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,4,4,98,0,4,-1,'0',0,1),(117,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,4,5,98,0,4,-1,'0',0,1),(118,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,4,6,98,0,4,-1,'0',0,1),(119,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,5,7,98,0,4,-1,'0',0,1),(120,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,2,8,98,0,4,-1,'0',0,1),(121,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,115,0,4,-1,'0',0,1),(122,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,115,0,4,-1,'0',0,1),(123,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,116,0,4,-1,'0',0,1),(124,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,116,0,4,-1,'0',0,1),(125,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,116,0,4,-1,'0',0,1),(126,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,116,0,4,-1,'0',0,1),(127,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,117,0,4,-1,'0',0,1),(128,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,117,0,4,-1,'0',0,1),(129,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,117,0,4,-1,'0',0,1),(130,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,117,0,4,-1,'0',0,1),(131,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,118,0,4,-1,'0',0,1),(132,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,118,0,4,-1,'0',0,1),(133,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,118,0,4,-1,'0',0,1),(134,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,118,0,4,-1,'0',0,1),(135,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,119,0,4,-1,'0',0,1),(136,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,119,0,4,-1,'0',0,1),(137,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,119,0,4,-1,'0',0,1),(138,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,119,0,4,-1,'0',0,1),(139,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,119,0,4,-1,'0',0,1),(140,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,120,0,4,-1,'0',0,1),(141,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,120,0,4,-1,'0',0,1),(142,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,99,0,4,-1,'0',0,1),(143,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,99,0,4,-1,'0',0,1),(144,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,99,0,4,-1,'0',0,1),(145,8,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(146,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,1,1,1,'PARENT',NULL,0,NULL,0,0,2,3,98,0,4,-1,'0',0,1),(147,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,0,146,0,4,-1,'0',0,1),(148,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,1,146,0,4,-1,'0',0,1),(149,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,147,0,4,-1,'0',0,1),(150,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,147,0,4,-1,'0',0,1),(151,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,147,0,4,-1,'0',0,1),(152,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,147,0,4,-1,'0',0,1),(153,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,147,0,4,-1,'0',0,1),(154,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,153,0,4,-1,'0',0,1),(155,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,153,0,4,-1,'0',0,1),(156,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,153,0,4,-1,'0',0,1),(157,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,148,0,4,-1,'0',0,1),(158,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,148,0,4,-1,'0',0,1),(159,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,148,0,4,-1,'0',0,1),(160,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,148,0,4,-1,'0',0,1),(161,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,148,0,4,-1,'0',0,1),(162,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,0,1,0,4,-1,'0',0,0),(163,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,2,1,0,4,-1,'0',0,0),(164,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,3,1,0,4,-1,'0',0,0),(165,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,1,1,0,4,-1,'0',0,0),(166,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,4,1,0,4,-1,'0',0,0),(167,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,5,1,0,4,-1,'0',0,0),(168,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,167,0,4,-1,'0',0,0),(169,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,167,0,4,-1,'0',0,0),(170,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,166,0,4,-1,'0',0,0),(171,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,166,0,4,-1,'0',0,0),(172,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,166,0,4,-1,'0',0,0),(173,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,166,0,4,-1,'0',0,0),(174,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,166,0,4,-1,'0',0,0),(175,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,165,0,4,-1,'0',0,0),(176,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,165,0,4,-1,'0',0,0),(177,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,165,0,4,-1,'0',0,0),(178,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,166,0,4,-1,'0',0,0),(179,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,164,0,4,-1,'0',0,0),(180,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,164,0,4,-1,'0',0,0),(181,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,164,0,4,-1,'0',0,0),(182,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,164,0,4,-1,'0',0,0),(183,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,163,0,4,-1,'0',0,0),(184,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,163,0,4,-1,'0',0,0),(185,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,163,0,4,-1,'0',0,0),(186,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,163,0,4,-1,'0',0,0),(187,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,0,162,0,4,-1,'0',0,0),(188,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,7,1,162,0,4,-1,'0',0,0),(189,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,1,0,187,0,4,-1,'0',0,0),(190,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,187,0,4,-1,'0',0,0),(191,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,187,0,4,-1,'0',0,0),(192,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,187,0,4,-1,'0',0,0),(193,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,187,0,4,-1,'0',0,0),(194,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,193,0,4,-1,'0',0,0),(195,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,193,0,4,-1,'0',0,0),(196,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,193,0,4,-1,'0',0,0),(197,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,188,0,4,-1,'0',0,0),(198,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,188,0,4,-1,'0',0,0),(199,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,188,0,4,-1,'0',0,0),(200,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,188,0,4,-1,'0',0,0),(201,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,5,188,0,4,-1,'0',0,0),(202,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,188,0,4,-1,'0',0,0),(203,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,201,0,4,-1,'0',0,0),(204,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,201,0,4,-1,'0',0,0),(205,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,201,0,4,-1,'0',0,0),(206,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,99,0,4,-1,'0',0,1),(207,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,99,0,4,-1,'0',0,1),(208,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,99,0,4,-1,'0',0,1),(209,9,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,189,0,4,-1,'0',0,0),(210,9,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(211,8,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,167,0,4,-1,'0',0,0),(212,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,6,1,0,4,-1,'0',0,0),(213,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,'http://facebook.com/',0,1,0,0,212,0,0,-1,'0',0,0),(214,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,'http://twitter.com/',0,1,0,0,212,0,0,-1,'0',0,0),(215,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,'/',0,1,0,0,212,0,0,-1,'0',0,0),(216,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,165,0,4,-1,'0',0,0),(217,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,165,0,4,-1,'0',0,0),(218,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,165,0,4,-1,'0',0,0),(219,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,188,0,4,-1,'0',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
INSERT INTO `PileContents` VALUES (1,1,34,'BLOCK',1,'2012-08-30 21:26:38',1),(2,1,40,'BLOCK',1,'2012-08-30 21:39:29',2),(3,1,31,'BLOCK',1,'2012-08-30 21:39:30',3),(4,1,38,'BLOCK',1,'2012-08-30 21:39:32',4),(5,1,39,'BLOCK',1,'2012-08-30 21:39:34',5),(6,1,68,'BLOCK',1,'2012-09-05 19:24:45',6),(7,1,68,'BLOCK',1,'2012-09-05 19:25:03',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Nav',20,142),(2,'Side Nav',0,143),(3,'Sub Nav',0,144),(4,'Footer',20,206),(5,'Header Alt Nav',20,207),(6,'Company Logo',20,208);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
INSERT INTO `SystemNotifications` VALUES (1,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2012-09-07 14:17:49',0,1,'A new version of concrete5 is now available.','','\n	\n			<h2>Huge Update!</h2>\n			\n			<p>\n			Version 5.6 introduces a completely revampled permissions and workflow system, along with a large number of bug fixes and behavioral improvements. \n			It\'s great, but if you\'re running a mission critical website you should absolutely make a backup of your site and apply the upgrade to your backup stage\n			first to make sure you\'re happy with the results.\n			</p>\n			<p>\n			As always, backup your data and site before running the upgrade live.\n			</p>			\n\n			<h3>What\'s new in 5.6.0</h3>\n			\n			<ul>\n			<li>Completely revampled, overhauled and improved advanced permissions system.</li>\n			<li>Complete new extendable workflow system, including basic workflow and waiting for me.</li>\n			<li>Improved interface work, including bootstrap 2 integration.</li>\n			<li>Improved Mobile Support</li>\n			<li><strong>And much, much more.</strong></li>\n			</ul>\n			\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-release-notes/\" target=\"_blank\">Full 5.6.0 Release Notes</a></h3>\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-1/\" target=\"_blank\">Full 5.6.0.1 Release Notes</a></h3>\n	\n	'),(2,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2012-09-10 10:06:41',0,1,'A new version of concrete5 is now available.','','\n	\n			<h2>Huge Update!</h2>\n			\n			<p>\n			Version 5.6 introduces a completely revampled permissions and workflow system, along with a large number of bug fixes and behavioral improvements. \n			It\'s great, but if you\'re running a mission critical website you should absolutely make a backup of your site and apply the upgrade to your backup stage\n			first to make sure you\'re happy with the results.\n			</p>\n			<p>\n			As always, backup your data and site before running the upgrade live.\n			</p>			\n\n			<h3>What\'s new in 5.6.0</h3>\n			\n			<ul>\n			<li>Completely revampled, overhauled and improved advanced permissions system.</li>\n			<li>Complete new extendable workflow system, including basic workflow and waiting for me.</li>\n			<li>Improved interface work, including bootstrap 2 integration.</li>\n			<li>Improved Mobile Support</li>\n			<li><strong>And much, much more.</strong></li>\n			</ul>\n			\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-release-notes/\" target=\"_blank\">Full 5.6.0 Release Notes</a></h3>\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-1/\" target=\"_blank\">Full 5.6.0.1 Release Notes</a></h3>\n	\n	'),(3,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2012-09-12 18:17:47',0,1,'A new version of concrete5 is now available.','','\n	\n			<h2>Huge Update!</h2>\n			\n			<p>\n			Version 5.6 introduces a completely revampled permissions and workflow system, along with a large number of bug fixes and behavioral improvements. \n			It\'s great, but if you\'re running a mission critical website you should absolutely make a backup of your site and apply the upgrade to your backup stage\n			first to make sure you\'re happy with the results.\n			</p>\n			<p>\n			As always, backup your data and site before running the upgrade live.\n			</p>			\n\n			<h3>What\'s new in 5.6.0</h3>\n			\n			<ul>\n			<li>Completely revampled, overhauled and improved advanced permissions system.</li>\n			<li>Complete new extendable workflow system, including basic workflow and waiting for me.</li>\n			<li>Improved interface work, including bootstrap 2 integration.</li>\n			<li>Improved Mobile Support</li>\n			<li><strong>And much, much more.</strong></li>\n			</ul>\n			\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-release-notes/\" target=\"_blank\">Full 5.6.0 Release Notes</a></h3>\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-1/\" target=\"_blank\">Full 5.6.0.1 Release Notes</a></h3>\n	\n	'),(4,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2012-09-19 20:22:21',0,1,'A new version of concrete5 is now available.','','\n	\n			<h2>Huge Update!</h2>\n			\n			<p>\n			Version 5.6 introduces a completely revampled permissions and workflow system, along with a large number of bug fixes and behavioral improvements. \n			It\'s great, but if you\'re running a mission critical website you should absolutely make a backup of your site and apply the upgrade to your backup stage\n			first to make sure you\'re happy with the results.\n			</p>\n			<p>\n			As always, backup your data and site before running the upgrade live.\n			</p>			\n\n			<h3>What\'s new in 5.6.0</h3>\n			\n			<ul>\n			<li>Completely revampled, overhauled and improved advanced permissions system.</li>\n			<li>Complete new extendable workflow system, including basic workflow and waiting for me.</li>\n			<li>Improved interface work, including bootstrap 2 integration.</li>\n			<li>Improved Mobile Support</li>\n			<li><strong>And much, much more.</strong></li>\n			</ul>\n			\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-release-notes/\" target=\"_blank\">Full 5.6.0 Release Notes</a></h3>\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-1/\" target=\"_blank\">Full 5.6.0.1 Release Notes</a></h3>\n	\n	'),(5,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2012-09-26 11:05:51',0,1,'A new version of concrete5 is now available.','','\n	\n			<h2>Huge Update!</h2>\n			\n			<p>\n			Version 5.6 introduces a completely revampled permissions and workflow system, along with a large number of bug fixes and behavioral improvements. \n			It\'s great, but if you\'re running a mission critical website you should absolutely make a backup of your site and apply the upgrade to your backup stage\n			first to make sure you\'re happy with the results.\n			</p>\n			<p>\n			As always, backup your data and site before running the upgrade live.\n			</p>			\n\n			<h3>What\'s new in 5.6.0</h3>\n			\n			<ul>\n			<li>Completely revampled, overhauled and improved advanced permissions system.</li>\n			<li>Complete new extendable workflow system, including basic workflow and waiting for me.</li>\n			<li>Improved interface work, including bootstrap 2 integration.</li>\n			<li>Improved Mobile Support</li>\n			<li><strong>And much, much more.</strong></li>\n			</ul>\n			\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-release-notes/\" target=\"_blank\">Full 5.6.0 Release Notes</a></h3>\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-1/\" target=\"_blank\">Full 5.6.0.1 Release Notes</a></h3>\n			<h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-0-2-release-notes/\" target=\"_blank\">Full 5.6.0.2 Release Notes</a></h3>\n	\n	');
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
INSERT INTO `Users` VALUES (1,'admin','admin@rtio.nl','dd719a38f31546376b401fd6a14bf0e5','1',-1,1,'2012-08-22 16:38:12',0,1348867971,1348851035,1348111336,20,NULL,NULL);
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
INSERT INTO `atBoolean` VALUES (11,1),(29,1),(30,1),(31,1),(32,1),(38,1),(67,1),(73,1),(74,1),(75,1),(86,1),(87,1),(96,1),(99,0),(100,1),(101,0),(102,1),(103,0),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,0),(111,1),(112,1),(113,1),(114,0),(115,1);
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
INSERT INTO `atBooleanSettings` VALUES (4,0),(5,0),(7,0),(8,0),(9,1),(10,1),(13,0);
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
INSERT INTO `atNumber` VALUES (76,1024.0000),(77,416.0000),(78,230.0000),(79,30.0000),(80,242.0000),(81,231.0000),(82,962.0000),(83,256.0000),(84,1023.0000),(85,411.0000),(88,250.0000),(89,239.0000),(90,101.0000),(91,27.0000),(92,236.0000),(93,72.0000),(94,801.0000),(95,510.0000),(97,230.0000),(98,30.0000);
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
INSERT INTO `btContentImage` VALUES (78,1,0,0,0,'',0,0,''),(79,1,0,0,0,'',0,0,''),(80,2,0,0,0,'/',0,0,''),(95,5,0,0,0,'',0,0,''),(96,4,0,0,0,'',0,0,''),(98,4,0,0,0,'',0,0,''),(99,4,0,0,0,'',0,0,''),(108,6,0,0,0,'',0,0,''),(110,8,0,0,0,'',0,0,''),(114,9,0,0,0,'',0,0,''),(115,9,0,0,0,'',0,0,''),(116,9,0,0,0,'',0,0,''),(120,10,0,0,0,'/',0,0,'');
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
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'),(20,''),(21,'<p><img src=\"http://rtio.nl/i/?w=1024&amp;h=400\" alt=\"Home News\" /></p>'),(22,'<p>Homepage Text Goes Here</p>'),(27,'<p>Content Goes Here</p>'),(28,'<p>Content goes here</p>'),(29,'<p>Content goes here</p>'),(30,'<p>Content goes here</p>'),(31,'<p>Content goes here</p>'),(32,'<p>Content goes here</p>'),(33,'<p>Content goes here</p>'),(34,'<p><img src=\"http://rtio.nl/i/?w=1024&amp;h=100&amp;\" alt=\"Content Header / Banner\" width=\"1024\" height=\"100\" /></p>'),(38,'<p><img src=\"http://rtio.nl/i/?w=200&amp;h=400\" alt=\"Sidebar Image\" /></p>'),(39,'<p>Sidebar Content</p>'),(40,'<p><img src=\"http://rtio.nl/i/?w=800&amp;h=100&amp;\" alt=\"Content Header / Banner\" /></p>'),(48,'<p><img src=\"http://rtio.nl/i/?w=624&amp;h=100&amp;\" alt=\"Content Header / Banner\" /></p>'),(50,'<p>Featured content goes here</p>'),(52,'<p>Homepage content goes here</p>'),(53,'<p><img src=\"http://rtio.nl/i/?w=1024&amp;h=400&amp;\" alt=\"Content Header / Banner\" /></p>'),(57,'<p>Homepage Text Goes Here</p>'),(58,'<p><img src=\"http://rtio.nl/i/?w=1024&amp;h=400\" alt=\"Home News\" /></p>'),(60,'<p><a href=\"#\">Where to Buy</a> | <a href=\"#\">Contact Us</a> </p>'),(61,'<p><a href=\"#\">Where to Buy</a> | <a href=\"#\">Contact Us</a> <img title=\"search\" src=\"http://rtio.nl/i/?w=150&amp;h=25&amp;message=search\" alt=\"search\" width=\"150\" height=\"25\" /></p>'),(62,'<a href=\"/\"><img src=\"/themes/novatel/img/logo.png\" alt=\"Novatel Wireless\"></a>'),(63,'<p><a href=\"#\">Where to Buy</a> | <a href=\"#\">Contact Us</a>    <img title=\"search\" src=\"http://rtio.nl/i/?w=150&amp;h=25&amp;message=search\" alt=\"search\" width=\"150\" height=\"25\" /></p>'),(64,'<p><a href=\"#\">Where to Buy</a>   |   <a href=\"#\">Contact Us</a>    <img title=\"search\" src=\"http://rtio.nl/i/?w=150&amp;h=25&amp;message=search\" alt=\"search\" width=\"150\" height=\"25\" /></p>'),(68,'<img src=\"http://rtio.nl/i/?w=250&h=250\">'),(74,'<p class=\"small\"><a href=\"#\">Privacy Policy</a>        <a href=\"#\">Terms of Use</a>        Copyright <strong><span>©</span></strong> 2012 Novatel Wireless, Inc. All rights reserved.</p>'),(81,'<p><span style=\"font-size: 11px; background-color: #ffffff;\">The flagship of Enfora’s industry-leading portfolio of integrated Spider Mobile Tracking products, the MT series of platforms connect the world’s leading companies to their valuable mobile assets. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">The certified dual &amp; quad-band integrated devices are optimized for today’s increasing demand for vehicle recovery, fuel-efficient fleet operations, driver and vehicle profiling, and interactive communications. Providing complete GSM/GPRS communications, Enfora helps you track and monitor vehicles from the family car to the largest fleet of commercial vehicles. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">With superior GPS sensitivity, a programmable rules engine, polygon Geo-Fencing, integrated SMS commands, messaging and much more, the units are designed to be easily deployed and provisioned, supplying critical information for the most demanding fleet operator, buy-here pay-here dealers, or pay-as-you-go insurance company. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">Enfora’s intelligent mobile tracking devices feature superior performance in a small package for ultimate flexibility. Coupled with the robust N4A Communications and Management platform, devices can be provisioned, monitored and reconfigured remotely, most anywhere in the world. Driven by our services architecture, Enfora delivers a flexible, modular architecture for fast wireless asset tracking, solutions development and deployment. Keeping you Connected to your Assets, Anywhere, Anytime.</span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><strong style=\"font-size: 11px; background-color: #ffffff;\">Popular Use Cases for the Spider MT family:</strong><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=577&amp;User:LANGUAGE=en\">MT 4000/4100</a><span style=\"font-size: 11px; background-color: #ffffff;\"> – Designed for application providers, system integrators, and enterprise customers to optimize mobile resources and improve their bottom line, the MT 4000 is a flexible quad-band GSM/GPRS mobile tracking device, delivering the key product features powering the most demanding applications: fleet management, insurance telematics, teen tracking, vehicle location and recovery, and more.</span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=481&amp;User:LANGUAGE=en\">MT 3000/3050</a><span style=\"font-size: 11px; background-color: #ffffff;\"> – A certified dual-band integrated device, purpose-built for the Usage Based Insurance (UBI), telematics, and fleet management markets. Providing easy plug-and-play installation, the MT 3000 is designed for passenger cars, light trucks, and service vans.</span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=471&amp;User:LANGUAGE=en\">MT 2500</a><span style=\"font-size: 11px; background-color: #ffffff;\"> – Economical and feature rich, this quad-band 3-axis accelerometer equipped platform is enhanced with a 16 pin multi-I/O connector that includes two analog inputs, polygon geo-fencing capabilities, and more. An economical solution for vehicle recovery &amp; fleets with driver behavior reporting and multiple I/O requirements.</span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=68&amp;User:LANGUAGE=en\">MT-Gu w/Accelerometer</a><span style=\"font-size: 11px; background-color: #ffffff;\"> – Full-featured for the demanding fleet operator, this quad-band platform with voice capabilities provides an interface to select Garmin PNDs via the optional FMI plug-in, I/O support for sensor connectivity and an optional battery for communication when power is lost. The Spider MT-Gu is specially designed to grow as your business does. </span></p>'),(83,'<p><span style=\"font-size: 11px; background-color: #ffffff;\">Enfora’s industry-leading reputation is rooted in a legacy of success, innovation and experience that spans the globe. Working closely with customers, Enfora’s engineering team has the experience, specialized knowledge and intimate understanding of the challenges that face the dynamic world of asset monitoring today. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">Fixed or mobile, a myriad of assets need to be monitored for regulatory compliance, security, national defense, operational efficiencies &amp; state conditions or just peace of mind. Whether you are monitoring a Hazmat shipment on a truck or railroad car, the location of a construction trailer, a shipping container, ATM machine, spool of copper cable, refrigeration unit, air conditioning compressor, pallet or any other high-value asset, Enfora has the right solution for you. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">Enfora’s intelligent asset monitoring devices feature external and internal power options for ultimate flexibility. Coupled with the robust N4A Communications and Management platform, devices can be provisioned, monitored and reconfigured remotely, most anywhere in the world. Coupled with our Services Architecture, Enfora delivers a flexible, modular architecture for fast wireless asset management, solutions development and deployment. Keeping you Connected to your Assets, Anywhere, Anytime.</span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><strong style=\"font-size: 11px; background-color: #ffffff;\">Popular Use Cases for the Spider AT family:</strong><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=64&amp;User:LANGUAGE=en\">Spider AT 3000</a><span style=\"font-size: 11px; background-color: #ffffff;\"> – with up to a three-year battery life, the Spider AT 3000 is optimized for assets that are fixed or move infrequently. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=65&amp;User:LANGUAGE=en\">Spider AT 4000</a><span style=\"font-size: 11px; background-color: #ffffff;\"> – possessing the battery life of the Spider AT 3000, the Spider AT 4000 features a non-charging power option for those applications that may move and need more frequent reporting while powered and/or mobile.</span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=66&amp;User:LANGUAGE=en\">Spider AT 3010</a><span style=\"font-size: 11px; background-color: #ffffff;\"> – Similar features to the Spider AT 3000, but with fewer reports over the life of the product; the Spider AT 3010, however, can produce more frequent reporting for “recovery” conditions. </span></p>'),(84,'<p><span style=\"font-size: 11px; background-color: #ffffff;\">From the oil pipeline to the soft drink dispenser, today’s visionary companies rely on remote data communications to collect data from their remote assets, enhancing their bottom line by allowing their business to operate more efficiently through the management and utilization of critical, decision-based data. This certified, quad-band integrated IP-based platform is compact and economical, ensuring cost-effective connectivity in a small robust platform. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">Designed with GSM/GPRS connectivity for global deployments, the SA family has been designed to enhance your visibility into remotely-located fixed assets. Similar to Enfora’s industry-leading portfolio of integrated Mobile Tracking products, the SA family connects the world’s leading companies to their fixed assets, Anywhere, Anytime. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">Fixed assets of various types can benefit greatly from this fully programmable platform, with voice communications, a wide operational environment and much more. the units are designed to be easily deployed and provisioned, supplying critical information from industrial automation applications, supply and cold chain environments, fixed asset deployments, and a host of applications where companies require connectivity to serially-connected and sensor-generated data. </span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><span style=\"font-size: 11px; background-color: #ffffff;\">The SA family is part of Enfora’s intelligent telemetry devices, featuring superior performance in a small package for ultimate flexibility. Coupled with the robust </span><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfo:CONTENT_ID=104&amp;User:LANGUAGE=en\">N4A Management and Communications Software</a><span style=\"font-size: 11px; background-color: #ffffff;\"> platform, devices can be provisioned, monitored and reconfigured remotely, most anywhere in the world. Driven by the </span><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfo:CONTENT_ID=78&amp;User:LANGUAGE=en\">services architecture</a><span style=\"font-size: 11px; background-color: #ffffff;\">, Enfora delivers a flexible, modular architecture for fast wireless asset tracking, solutions development and deployment. Keeping you connected to your company’s fixed and mobile assets, Anywhere, Anytime.</span><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><strong style=\"font-size: 11px; background-color: #ffffff;\">Popular Use Cases for the Spider SA family:</strong><br style=\"font-size: 11px; background-color: #ffffff;\" /><br style=\"font-size: 11px; background-color: #ffffff;\" /><a style=\"color: #ba1b22; font-weight: bold; text-decoration: none; font-size: 11px; background-color: #ffffff;\" href=\"http://www.enfora.com/index.cgi?PageInfoFlash:CONTENT_ID=70&amp;User:LANGUAGE=en\">Spider SA-G+</a><span style=\"font-size: 11px; background-color: #ffffff;\"> - the SA-G+ is a full-featured telemetry platform with serial and user-defined I/O ports designed to communicate with sensors and most any serial-based communications device.</span></p>'),(85,'<div class=\"space\" style=\"padding: 10px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;\">\r\n<p style=\"margin-bottom: 15px; margin-top: 10px;\"><span style=\"font-family: arial; font-size: 11px;\">Novatel Wireless, Inc. is a leader in the design and development of intelligent wireless solutions based on 2G, 3G and 4G technologies providing wireless connectivity. The Company delivers specialized wireless solutions to carriers, distributors, retailers, OEMs and vertical markets worldwide. Novatel Wireless\' intelligent mobile hotspot products, software, USB modems, embedded modules and smart M2M modules provide innovative anywhere, anytime communications solutions for consumers and enterprises.</span></p>\r\n<p style=\"margin-bottom: 15px; margin-top: 10px;\"><span style=\"font-family: arial; font-size: 11px;\">Headquartered in San Diego, California, Novatel Wireless, Inc. has been issued over 30 technology patents and has established partnerships with leading telecom operators, infrastructure providers and device manufacturers around the world. Novatel Wireless, Inc. is listed on NASDAQ: NVTL. <br /></span></p>\r\n</div>\r\n<div class=\"space\" style=\"padding: 10px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;\"><span style=\"font-family: arial; font-size: 11px;\"><span style=\"font-family: arial; font-size: 11px;\"><strong>Target</strong><br />Novatel Wireless, Inc. partners with wireless network operators, distributors, original equipment manufacturers (OEMs), and vertical markets worldwide to offer wireless connectivity solutions that meet the unique needs of the following markets:<br /><br /></span></span>\r\n<table class=\"spectable\" style=\"border-right-width: 1px; border-right-style: solid; border-right-color: #cccccc; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #cccccc;\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr>\r\n<td class=\"specheader\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333; background-color: #eeeeee;\" valign=\"top\"><strong>Mobile Workforce</strong></td>\r\n<td class=\"speccell\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333;\" valign=\"top\">Business Professionals, Consumers, Sales Force, Field Service</td>\r\n</tr>\r\n<tr>\r\n<td class=\"specheader\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333; background-color: #eeeeee;\" valign=\"top\"><strong>Public Safety</strong></td>\r\n<td class=\"speccell\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333;\" valign=\"top\">Homeland Security, Police, Fire, Traffic, Highway, Bridge</td>\r\n</tr>\r\n<tr>\r\n<td class=\"specheader\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333; background-color: #eeeeee;\" valign=\"top\"><strong>Telematics</strong></td>\r\n<td class=\"speccell\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333;\" valign=\"top\">Automated Vehicle Location, Theft Recovery, Vehicle Monitoring</td>\r\n</tr>\r\n<tr>\r\n<td class=\"specheader\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333; background-color: #eeeeee;\" valign=\"top\"><strong>Telemetry</strong></td>\r\n<td class=\"speccell\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333;\" valign=\"top\">Point Of Sale, ATM, Machine to Machine, Plant, Video, Theft Recovery, Vending, Meter Reading, Location Based Services</td>\r\n</tr>\r\n<tr>\r\n<td class=\"specheader\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333; background-color: #eeeeee;\" valign=\"top\"><strong>Transportation</strong></td>\r\n<td class=\"speccell\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333;\" valign=\"top\">Trucking, Courier, Fleet Management</td>\r\n</tr>\r\n<tr>\r\n<td class=\"specheader\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333; background-color: #eeeeee;\" valign=\"top\"><strong>Utilities</strong></td>\r\n<td class=\"speccell\" style=\"border-top-width: 1px; border-top-style: solid; border-top-color: #cccccc; border-left-width: 1px; border-left-style: solid; border-left-color: #cccccc; font-family: arial, verdana, helvetica, sans-serif; font-size: 11px; color: #333333;\" valign=\"top\">Gas, Electric, Cable, Telephone</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span style=\"font-family: arial; font-size: 11px;\"><br /><br /><strong>Direction for the Future</strong><br />Novatel Wireless, Inc. is uniquely poised to take advantage of the burgeoning wireless market. The company has built a reputation for quality, reliable, innovative products that serve a broad audience. On the road ahead, Novatel Wireless, Inc. intends to stay ahead of the curve by continuing to form alliances with industry-leading partners, diversifying its product offerings and supporting the latest wireless technologies. <br /></span></div>'),(86,'<table class=\"blog\" style=\"padding: 10px; margin: 0px; width: 670px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: start;\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\">\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" style=\"padding: 10px; margin: 0px; font-size: 18px; line-height: 18px; color: #00245d; font-weight: bold;\" width=\"100%\">Peter V. Leparulo, Chairman and Chief Executive Officer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" valign=\"top\">\r\n<div class=\"space\" style=\"padding: 10px; margin: 0px;\"><img title=\"Peter V. Leparulo, Chairman and Chief Executive Officer\" src=\"http://www.novatelwireless.com/images/stories/aboutus/PeterLeparulo.jpg\" alt=\"Peter V. Leparulo, Chairman and Chief Executive Officer\" align=\"left\" border=\"0\" hspace=\"5\" />\r\n<div><em>Peter V. Leparulo</em> has served as a director since May 2003, as our Chairman since November 2006 and as our Chief Executive Officer since April 2008. He also served as our Chief Executive Officer from January 2003 to November 2007. From May 2001 to January 2003, he served as our Senior Vice President, General Manager, CDMA Operations. From September 2000 to May 2001, he served as our Senior Vice President, Corporate and Strategic Development and General Counsel. From June 1998 until September 2000, Mr. Leparulo was a Senior Partner at the law firm of Orrick, Herrington &amp; Sutcliffe LLP, where he specialized in corporate finance, mergers and acquisitions, securities, intellectual property and general corporate matters. Prior to joining Orrick, Mr. Leparulo was a Partner at the law firm of Pillsbury Madison &amp; Sutro LLP, from January 1992 until June 1998, and an Associate at that firm from October 1989 until January 1992. He holds a Bachelor of Science from Colgate University and a Juris Doctor from Case Western Reserve University.</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span class=\"article_separator\"> </span></td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"article_column\" valign=\"top\" width=\"100%\">\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" style=\"padding: 10px; margin: 0px; font-size: 18px; line-height: 18px; color: #00245d; font-weight: bold;\" width=\"100%\">Kenneth Leddon, Senior Vice President and Chief Financial Officer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" valign=\"top\">\r\n<div class=\"space\" style=\"padding: 10px; margin: 0px;\"><img title=\"Kenneth Leddon, Senior Vice President and Chief Financial Officer\" src=\"http://www.novatelwireless.com/images/stories/aboutus/Leddon-hires.jpg\" alt=\"Kenneth Leddon, Senior Vice President and Chief Financial Officer\" width=\"153\" height=\"214\" align=\"left\" border=\"0\" hspace=\"5\" /><em>Kenneth G. Leddon</em> has served as our Senior Vice President and Chief Financial Officer since January 2008. From November 2007 to January 2008, he served as our interim Chief Financial Officer. Before joining us, Mr. Leddon was a principal in the management consulting firm of Leddon &amp; Associates from September 2006 until November 2007. Prior to that, he was a principal in the management consulting firm of Pathway Strategic Partners from November 2002 to September 2006. Mr. Leddon also served as an interim executive or financial advisor for several companies while employed with two nationally recognized management consulting firms, XRoads Solutions Group, LLC and Buccino &amp; Associates, Inc. He also served as Chief Financial Officer and Vice President for several portfolio companies of Milhous Group, a private equity firm that was based in California. Mr. Leddon started his career at U.S. Steel Corporation, where he held several financial management positions during his 10 year tenure. Mr. Leddon holds a Bachelor of Science in Business Administration from California State University-Northridge and a Master of Science in Business Administration from Robert Morris University.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span class=\"article_separator\"> </span>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" style=\"padding: 10px; margin: 0px; font-size: 18px; line-height: 18px; color: #00245d; font-weight: bold;\" width=\"100%\">Slim S. Souissi, Senior Vice President and Chief Technology Officer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" valign=\"top\">\r\n<div class=\"space\" style=\"padding: 10px; margin: 0px;\">\r\n<p style=\"margin-bottom: 15px; margin-top: 10px;\"><img title=\"Slim S. Souissi, Senior Vice President and Chief Technology Officer\" src=\"http://www.novatelwireless.com/images/stories/aboutus/SlimSouissi.jpg\" alt=\"Slim S. Souissi, Senior Vice President and Chief Technology Officer\" align=\"left\" border=\"0\" hspace=\"5\" /></p>\r\n<p style=\"margin-bottom: 15px; margin-top: 10px;\"><em>Slim S. Souissi</em> has served as our Senior Vice President and Chief Technology Officer since 2004 and served as our Vice President and Chief Technology Officer from October 2002 to 2004. He previously served as our Vice President of Emerging Technologies from December 2001 to October 2002 and as our Principal Research Scientist from May 2000 to December 2001. Prior to joining us in 2002, Dr. Souissi was Principal Staff Engineer in Motorola’s research and development operation from November 1994 to May 2000. Dr. Souissi earned a Ph.D. and a Master of Science in Electrical Engineering from the Georgia Institute of Technology, a Master of Science in Digital Signal Processing from the Ecole Superieure d’Electricite (France) and a Master of Science in Engineering from the Ecole Centrale Marseille (France). Dr. Souissi holds 37 U.S. patents, all related to wireless technology.</p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span class=\"article_separator\"> </span>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" style=\"padding: 10px; margin: 0px; font-size: 18px; line-height: 18px; color: #00245d; font-weight: bold;\" width=\"100%\">Robert M. Hadley, Chief Marketing Officer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" valign=\"top\">\r\n<div class=\"space\" style=\"padding: 10px; margin: 0px;\"><img src=\"http://www.novatelwireless.com/images/stories/rob_headshot.png\" alt=\"\" align=\"left\" border=\"0\" hspace=\"5\" /><em>Robert M. Hadley</em> became our Chief Marketing Officer in March 2009 and served as a Senior Technical Advisor for the Company in the office of the Chief Executive Officer since March 2008. From 2004 to early 2008, Mr. Hadley was the Company’s Senior Vice President of Worldwide Sales and Marketing and was our Vice President of Sales and Marketing in 2003. He served as our Vice President of Strategic Accounts from April 2001 to December 2002. Before initially joining us, Mr. Hadley was Vice President of Sales for e-SIM Ltd., a provider of advanced simulation technology for product development. Mr. Hadley also previously held various senior sales and marketing positions at Aonix, a Thomson Software company providing IT solutions for corporate enterprise reporting and lifestyle software development markets, where he rose to the position of Vice President of Marketing. Mr. Hadley holds a Bachelor of Science in Computer Science from San Diego State University.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span class=\"article_separator\"> </span>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" style=\"padding: 10px; margin: 0px; font-size: 18px; line-height: 18px; color: #00245d; font-weight: bold;\" width=\"100%\">Chris Ross, Senior Vice President of Operations</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" valign=\"top\">\r\n<div class=\"space\" style=\"padding: 10px; margin: 0px;\"><img title=\"Chris Ross, Senior Vice President of Operations\" src=\"http://www.novatelwireless.com/images/stories/aboutus/ChrisRoss.jpg\" alt=\"Chris Ross, Senior Vice President of Operations\" align=\"left\" border=\"0\" hspace=\"5\" /><em>Christopher J. Ross</em> has served as our Vice President of Operations since July 2005 and our Senior Vice President of Operations since August 2007. From 1999 to July 2005, Mr. Ross was Vice President of Operations at Ericsson Wireless Communications where he was responsible for world-wide supply of wireless telecommunications infrastructure based on CDMA radio access technology. From 1994 to 1999, he was Vice President, Manufacturing at QUALCOMM where he was an operations executive. Prior to joining QUALCOMM, he was Vice President of Manufacturing at Spectragraphics where he founded the company’s contract manufacturing subsidiary (SMS Technologies) and also served as its General Manager. Mr. Ross holds both Bachelor and Master of Electrical Engineering degrees from Manhattan College.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span class=\"article_separator\"> </span>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" style=\"padding: 10px; margin: 0px; font-size: 18px; line-height: 18px; color: #00245d; font-weight: bold;\" width=\"100%\">Catherine F. Ratcliffe, Senior Vice President of Business Affairs and General Counsel</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"contentpaneopen\" style=\"padding: 0px; margin: 0px; clear: both; width: 650px; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" valign=\"top\"><img title=\"Catherine F. Ratcliffe, Senior Vice President of Business Affairs and General Counsel\" src=\"http://www.novatelwireless.com/images/stories/aboutus/Ratcliff1.jpg\" alt=\"Catherine F. Ratcliffe, Senior Vice President of Business Affairs and General Counsel\" align=\"left\" border=\"0\" hspace=\"5\" /><em>Catherine F. Ratcliffe</em> has served as our Senior Vice President, Business Affairs, General Counsel and Secretary since August 2007 and served as our Vice President, Business Affairs and Secretary from May 2004 until August 2007. From 2002 to 2004, she practiced law, including as a Partner in the law firm of Lamb &amp; Kawakami. From 1997 to 2002 she was Vice President, General Counsel &amp; Human Resources at Day Runner, Inc. She was a Partner in the law firm of Bryan Cave LLP practicing in the areas of corporate finance, securities and mergers and acquisitions, from 1992 to 1997. Ms. Ratcliffe holds a Bachelor of Arts from the University of California at Los Angeles and a Juris Doctor from the University of California at Berkeley.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(87,'<p>Latest News: Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra auguMorbi leo risus, porta ac con.</p>'),(88,'<img style=\"margin-left:10px\" src=\"/themes/novatel/img/home/spotlight-4.png\">\r\n<img style=\"margin-left:10px\" src=\"/themes/novatel/img/home/spotlight-3.png\">\r\n<img style=\"margin-left:10px\" src=\"/themes/novatel/img/home/spotlight-2.png\">\r\n<img style=\"margin-left:10px\" src=\"/themes/novatel/img/home/spotlight-1.png\">'),(89,'<img style=\"margin-left:40px\" src=\"/themes/novatel/img/home/spotlight-4.png\">\r\n<img style=\"margin-left:20px\" src=\"/themes/novatel/img/home/spotlight-3.png\">\r\n<img style=\"margin-left:20px\" src=\"/themes/novatel/img/home/spotlight-2.png\">\r\n<img style=\"margin-left:20px\" src=\"/themes/novatel/img/home/spotlight-1.png\">'),(90,'<img style=\"margin-left:38px\" src=\"/themes/novatel/img/home/spotlight-4.png\">\r\n<img style=\"margin-left:27px\" src=\"/themes/novatel/img/home/spotlight-3.png\">\r\n<img style=\"margin-left:27px\" src=\"/themes/novatel/img/home/spotlight-2.png\">\r\n<img style=\"margin-left:27px\" src=\"/themes/novatel/img/home/spotlight-1.png\">'),(91,'<img style=\"margin-left:35px\" src=\"/themes/novatel/img/home/spotlight-4.png\">\r\n<img style=\"margin-left:35px\" src=\"/themes/novatel/img/home/spotlight-3.png\">\r\n<img style=\"margin-left:35px\" src=\"/themes/novatel/img/home/spotlight-2.png\">\r\n<img style=\"margin-left:35px\" src=\"/themes/novatel/img/home/spotlight-1.png\">'),(93,'<p><a href=\"#\">Where to Buy</a>   |   <a href=\"#\">Contact Us</a>    </p>'),(94,'<p><img src=\"{CCM:FID_3}\" alt=\"generic_rightrail.png\" width=\"242\" height=\"231\" /></p>'),(106,'<p><a href=\"#\">See More Mobile Devices &gt;</a></p>'),(107,'<h1>MiFi® 4620L</h1>'),(109,'<p>MiFi® 4620LIntelligent Mobile Hotspot</p>\r\n<p><strong>Fast, always-on Internet wherever you roam—worldwide*</strong></p>\r\n<p>With the Verizon Jetpack™ 4G LTE Mobile Hotspot MiFi® 4620L by Novatel Wireless, access blazing fast 4G LTE and 3G mobile broadband worldwide and share your connection with up to ten Wi-Fi enabled devices simultaneously. MiFi 4620L is the next generation in the Novatel Wireless MiFi intelligent mobile hotspot portfolio for Verizon Wireless, built on award-winning innovation and design, proven performance and industry leading user experience.</p>\r\n<p><strong>Put the world in the palm of your hand</strong></p>\r\n<p>With this 4G LTE MiFi intelligent mobile hotspot, enjoy fast Internet access whenever, wherever you go. MiFi 4620L is backward compatible with high speed DC HSPA+, HSPA+, WCDMA, EDGE and GPRS technologies to keep you connected. The compact MiFi 4620L is perfect for on-the-go connectivity and won’t weigh you down.</p>\r\n<p><a href=\"#\"><img src=\"{CCM:FID_7}\" alt=\"where-to-buy-button.png\" width=\"101\" height=\"27\" /></a></p>'),(111,'<p>MiFi® 4620L Intelligent Mobile Hotspot</p>\r\n<p><strong>Fast, always-on Internet wherever you roam—worldwide*</strong></p>\r\n<p>With the Verizon Jetpack™ 4G LTE Mobile Hotspot MiFi® 4620L by Novatel Wireless, access blazing fast 4G LTE and 3G mobile broadband worldwide and share your connection with up to ten Wi-Fi enabled devices simultaneously. MiFi 4620L is the next generation in the Novatel Wireless MiFi intelligent mobile hotspot portfolio for Verizon Wireless, built on award-winning innovation and design, proven performance and industry leading user experience.</p>\r\n<p><strong>Put the world in the palm of your hand</strong></p>\r\n<p>With this 4G LTE MiFi intelligent mobile hotspot, enjoy fast Internet access whenever, wherever you go. MiFi 4620L is backward compatible with high speed DC HSPA+, HSPA+, WCDMA, EDGE and GPRS technologies to keep you connected. The compact MiFi 4620L is perfect for on-the-go connectivity and won’t weigh you down.</p>\r\n<p><a href=\"#\"><img src=\"{CCM:FID_7}\" alt=\"where-to-buy-button.png\" width=\"101\" height=\"27\" /></a></p>'),(112,'<h1>MiFi® 4620L</h1>'),(113,'<p>MiFi® 4620L Intelligent Mobile Hotspot</p>\r\n<p><strong>Fast, always-on Internet wherever you roam—worldwide*<br /></strong>With the Verizon Jetpack™ 4G LTE Mobile Hotspot MiFi® 4620L by Novatel Wireless, access blazing fast 4G LTE and 3G mobile broadband worldwide and share your connection with up to ten Wi-Fi enabled devices simultaneously. MiFi 4620L is the next generation in the Novatel Wireless MiFi intelligent mobile hotspot portfolio for Verizon Wireless, built on award-winning innovation and design, proven performance and industry leading user experience.</p>\r\n<p><strong>Put the world in the palm of your hand<br /></strong>With this 4G LTE MiFi intelligent mobile hotspot, enjoy fast Internet access whenever, wherever you go. MiFi 4620L is backward compatible with high speed DC HSPA+, HSPA+, WCDMA, EDGE and GPRS technologies to keep you connected. The compact MiFi 4620L is perfect for on-the-go connectivity and won’t weigh you down.</p>\r\n<p><a href=\"#\"><img src=\"{CCM:FID_7}\" alt=\"where-to-buy-button.png\" width=\"101\" height=\"27\" /></a></p>'),(117,'<p class=\"small\"><a href=\"#\">Developer Lounge</a>        <a href=\"#\">Privacy Policy</a>        <a href=\"#\">Terms of Use</a>        Copyright <strong><span>©</span></strong> 2012 Novatel Wireless, Inc. All rights reserved.</p>'),(127,'<h1>Another Block</h1>\r\n<ul>\r\n<li>List Item</li>\r\n<li>List Item</li>\r\n<li>List Item</li>\r\n</ul>'),(128,'<h1>Sidebar Header Example</h1>\r\n<p>Sidebar Content</p>'),(129,'<h1>Another Block</h1>\r\n<ul>\r\n<li>List Item</li>\r\n<li>List Item</li>\r\n<li>List Item</li>\r\n</ul>'),(131,'<p class=\"MsoNormal\"><span style=\"font-size: 8.5pt; line-height: 115%; font-family: Verdana; background-color: white; background-position: initial initial; background-repeat: initial initial;\">The Novatel Wireless professional services experience is driving a profound technology transformation and broadband wireless users are demanding ubiquitous connectivity for a host of new applications. Whether you are perfecting a reference design, developing a new product or modifying and existing application our design engineers can help. With a strong knowledge base, real-world experiences in a wide variety of market and vertical segments and a demonstrable, results driving mentality, Novatel Wireless delivers.</span><span style=\"font-size: 8.5pt; line-height: 115%; font-family: Verdana;\"><br /> <br /> <span style=\"background: white;\">Revolutionized antenna designs, creative communications solutions, small form factors, low-power consumption and more, Novatel Wireless brings real-world design experience to help you get there faster, with less effort and on-budget.</span><br /> <br /> <span style=\"background: white;\">Our Product Line Managers and Project Management office is comprised of a team of talented engineers with years of design and product development knowledge, built to work closely with your company to define a project, its time lines and deliverables. Once your project is approved, a dedicated Project Manager is assigned to ensure your ultimate success.</span><br /> <br /> <span style=\"background: white;\">Working in close partnership with our customers, Novatel Wireless has helped to bring many designs to life, shortening product development and deployment cycles. Whether you need to tweak a small parameter in your product, develop something new or start a project and have it managed from the ground up, we can provide the expertise to get your project moving in the right direction.</span><br /> <br /> <span style=\"background: white;\">The<span class=\"apple-converted-space\"> </span></span></span><a href=\"http://www.enfora.com/index.cgi?PageInfo:CONTENT_ID=78&amp;User:LANGUAGE=en\"><span style=\"font-size: 8.5pt; line-height: 115%; font-family: Verdana; color: windowtext; background: white; mso-bidi-font-weight: bold; text-decoration: none; text-underline: none;\">architecture</span></a><span class=\"apple-converted-space\"><span style=\"font-size: 8.5pt; line-height: 115%; font-family: Verdana; background-color: white; background-position: initial initial; background-repeat: initial initial;\"> </span></span><span style=\"font-size: 8.5pt; line-height: 115%; font-family: Verdana; background-color: white; background-position: initial initial; background-repeat: initial initial;\">helps make it simple, do you have a special design challenge or just want help getting past a small issue? No project is too small or too big; we have assisted many of today’s global 1000 companies with innovative designs, engineering assistance and creative ways to connect to their customers.</span></p>'),(133,'<p class=\"HeadingProductname\"><span style=\"font-size: 11pt; line-height: 115%; font-family: Calibri;\">Novatel Wireless has a robust M2M software offering that can quickly build connectivity from your Internet Protocol (IP)-enabled remote assets to your existing enterprise applications. We provide the ability to choose a right-sized option for your enterprise needs. Our platform includes the following products: <a href=\"http://www.enfora.com/index.cgi?CONTENT_ID=1723&amp;User:LANGUAGE=en\"> the <span style=\"color: windowtext; text-decoration: none; text-underline: none;\">N4A</span><sup><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; color: windowtext; position: relative; top: -2.0pt; mso-text-raise: 2.0pt; text-decoration: none; text-underline: none;\">TM</span></sup><span style=\"color: windowtext; text-decoration: none; text-underline: none;\"> Communications and Management Software (CMS)</span> </a><span class=\"MsoHyperlink\">and the N4A</span></span><span class=\"MsoHyperlink\"><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">™</span><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"> Device Manager. </span></span><span style=\"font-size: 11pt; line-height: 115%; font-family: Calibri;\">With our decades of cumulative experience in wireless data and M2M environments, we can help you choose the best products, formats, and options to enhance your remote intelligence gathering capabilities, putting that data at the fingertips of corporate decision makers to identify device issues, decrease out-of-service time, track shipments, improve worker productivity, and more.</span></p>'),(134,'<h3>Highlights</h3>\r\n<p class=\"t1\"><span class=\"ccm-note\">Novatel Wireless accelerates solution delivery by quickly building connectivity from a customer’s Internet Protocol (IP)-enabled remote assets to their existing enterprise applications. Removing the inherent complexities of wireless networks and their communications protocols, our N4A™ Communications and Management Software (CMS) enables database or web service-driven control and management of Enfora® remote devices. Using a standard web-based user interface, customers have a detailed mobile asset view, enabling proactive management as well as necessary system upgrades. Additionally, using the built-in device configuration and service management capabilities, N4A™ CMS effectively manages and applies device configurations across multiple device groups.</span></p>\r\n<p class=\"t1\">Available as an on-premise solution, N4A™ CMS is particularly well suited to customers who:</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Need a functional application up and running quickly</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Lack the man hours or expertise necessary to master device and session management</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Want to capitalize on our experience with wireless devices and network operators</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Require flexible integration options</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Prefer to focus resources on their in-house application software development</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Need a simple web service interface for programmatic interaction</p>\r\n<h3>A Scalable Solution</h3>\r\n<p class=\"t1\">The flexibility of our N4A™ software architecture makes it possible to integrate a broad range of existing solutions. The N4A™ CMS application has been architected to scale, functioning in environments varying from a single-server demo to those with carrier-grade requirements. The application may be scaled vertically and horizontally, depending on customer requirements. N4A™ CMS is designed for the multitenant requirements of resellers and company organizations.</p>\r\n<h3>Exceptional Support</h3>\r\n<p class=\"t1\">Novatel Wireless has an exceptional customer support infrastructure, with Technical Account Managers (TAMs) and Field Applications Engineers (FAEs) around the globe available to deliver customer-driven support options both pre- and post-installation.</p>\r\n<!--EndFragment-->\r\n<p> </p>'),(135,'<p><span style=\"font-size: medium;\"><span style=\"line-height: 115%; font-family: Calibri;\">Novatel Wireless has a robust M2M software offering that can quickly build connectivity from your Internet Protocol (IP)-enabled remote assets to your existing enterprise applications. We provide the ability to choose a right-sized option for your enterprise needs. Our platform includes the following products: <a href=\"http://www.enfora.com/index.cgi?CONTENT_ID=1723&amp;User:LANGUAGE=en\"> the <span style=\"color: windowtext; text-decoration: none;\">N4A</span><sup><span style=\"line-height: 115%; color: windowtext; position: relative; top: -2pt; text-decoration: none;\">TM</span></sup><span style=\"color: windowtext; text-decoration: none;\"> Communications and Management Software (CMS)</span> </a><span class=\"MsoHyperlink\">and the N4A</span></span><span class=\"MsoHyperlink\"><span style=\"line-height: 115%; font-family: Calibri;\">™</span><span style=\"line-height: 115%; font-family: Calibri;\"> Device Manager. </span></span><span style=\"line-height: 115%; font-family: Calibri;\">With our decades of cumulative experience in wireless data and M2M environments, we can help you choose the best products, formats, and options to enhance your remote intelligence gathering capabilities, putting that data at the fingertips of corporate decision makers to identify device issues, decrease out-of-service time, track shipments, improve worker productivity, and more.</span></span></p>'),(136,'<h3>Highlights</h3>\r\n<p class=\"t1\"><span class=\"ccm-note\">Novatel Wireless accelerates solution delivery by quickly building connectivity from a customer’s Internet Protocol (IP)-enabled remote assets to their existing enterprise applications. Removing the inherent complexities of wireless networks and their communications protocols, our N4A™ Communications and Management Software (CMS) enables database or web service-driven control and management of Enfora® remote devices. Using a standard web-based user interface, customers have a detailed mobile asset view, enabling proactive management as well as necessary system upgrades. Additionally, using the built-in device configuration and service management capabilities, N4A™ CMS effectively manages and applies device configurations across multiple device groups.</span></p>\r\n<p class=\"t1\">Available as an on-premise solution, N4A™ CMS is particularly well suited to customers who:</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Need a functional application up and running quickly</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Lack the man hours or expertise necessary to master device and session management</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Want to capitalize on our experience with wireless devices and network operators</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Require flexible integration options</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Prefer to focus resources on their in-house application software development</p>\r\n<p class=\"t1\" style=\"margin-left: .5in; text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Need a simple web service interface for programmatic interaction</p>\r\n<h3>A Scalable Solution</h3>\r\n<p class=\"t1\">The flexibility of our N4A™ software architecture makes it possible to integrate a broad range of existing solutions. The N4A™ CMS application has been architected to scale, functioning in environments varying from a single-server demo to those with carrier-grade requirements. The application may be scaled vertically and horizontally, depending on customer requirements. N4A™ CMS is designed for the multitenant requirements of resellers and company organizations.</p>\r\n<h3>Exceptional Support</h3>\r\n<p class=\"t1\">Novatel Wireless has an exceptional customer support infrastructure, with Technical Account Managers (TAMs) and Field Applications Engineers (FAEs) around the globe available to deliver customer-driven support options both pre- and post-installation.</p>\r\n<!--EndFragment-->\r\n<p> </p>'),(137,'<p><span style=\"font-size: small;\"><span style=\"line-height: 115%; font-family: Calibri;\">Novatel Wireless has a robust M2M software offering that can quickly build connectivity from your Internet Protocol (IP)-enabled remote assets to your existing enterprise applications. We provide the ability to choose a right-sized option for your enterprise needs. Our platform includes the following products: <a href=\"http://www.enfora.com/index.cgi?CONTENT_ID=1723&amp;User:LANGUAGE=en\"> the <span style=\"color: windowtext; text-decoration: none;\">N4A</span><sup><span style=\"line-height: 115%; color: windowtext; position: relative; top: -2pt; text-decoration: none;\">TM</span></sup><span style=\"color: windowtext; text-decoration: none;\"> Communications and Management Software (CMS)</span> </a><span class=\"MsoHyperlink\">and the N4A</span></span><span class=\"MsoHyperlink\"><span style=\"line-height: 115%; font-family: Calibri;\">™</span><span style=\"line-height: 115%; font-family: Calibri;\"> Device Manager. </span></span><span style=\"line-height: 115%; font-family: Calibri;\">With our decades of cumulative experience in wireless data and M2M environments, we can help you choose the best products, formats, and options to enhance your remote intelligence gathering capabilities, putting that data at the fingertips of corporate decision makers to identify device issues, decrease out-of-service time, track shipments, improve worker productivity, and more.</span></span></p>'),(138,'<h3>Highlights </h3>\r\n<p class=\"t1\">The N4A™ Device Manager is a user interface that provides logical management and device provisioning of IP-based M2M devices.  It speeds time to market while managing a large number of devices within a system. It is compatible with all Enfora® M2M devices and may be purchased as a hosted or on-premise solution. N4A™ Device Manager increases your control of your remote assets by providing the following features:                      </p>\r\n<p><!--[if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">§<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">  </span></span><!--[endif]-->View, change and manage device configuration and scripts</p>\r\n<p><!--[if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">§<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">  </span></span><!--[endif]-->Manage single devices or groups of devices</p>\r\n<p><!--[if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">§<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">  </span></span><!--[endif]-->Complete device history to assist in self-care and issue resolution (plus alerting and logging capability with on-premise solution</p>\r\n<p><!--[if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">§<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">  </span></span><!--[endif]-->Monitor device health and operational status</p>\r\n<p><!--[if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">§<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">  </span></span><!--[endif]-->Provide Over-The-Air updates</p>\r\n<p><!--[if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">§<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">  </span></span><!--[endif]-->Manage user accounts and device privileges with multiple administration levels</p>\r\n<p><!--[if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">§<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">  </span></span><!--[endif]-->Access shipment tracking</p>\r\n<h3>Exceptional Support</h3>\r\n<p>Novatel Wireless has an exceptional customer support infrastructure, with Technical Account Managers (TAMs) and Field Applications Engineers (FAEs) around the globe available to deliver customer-driven support options both pre- and post-installation.</p>\r\n<p> </p>'),(139,'<h3 class=\"HeadingProductname\">Workforce Monitoring Solutions</h3>\r\n<p class=\"t1\">Lone-workers in hazardous environments who may find themselves in a man-down situation, operators of small fleets needing to maintain simple yet effective communication with their workers, wandering or lost children and Alzheimer’s patients who may need access to a panic button or simple voice communication: these are just a few of the Mobile Resource Management (MRM) challenges that must be addressed by any M2M provider in today’s market. Connectivity combined with location-based features and reporting in a user-friendly format are imperatives to success for any MRM device in the personal and workforce safety market; such devices must be easily deployed and provisioned, and monitored by a reliable end-to-end solution.</p>\r\n<h3>Driving Business Applications</h3>\r\n<p>The Enfora<sup>®</sup> Personnel Monitoring Series provides flexibility in global MRM monitoring for the following target markets:</p>\r\n<p> </p>\r\n<p>- Personal &amp; Remote Worker Tracking</p>\r\n<p>- Child &amp; Teen Tracking</p>\r\n<p>- Mobile/Home Healthcare</p>\r\n<p>- Emergency Response</p>\r\n<p>- Elderly Locator</p>\r\n<h3>Quality &amp; Reliability that Keeps Selling</h3>\r\n<p class=\"t1\">At Novatel Wireless we infuse quality in all we do, starting with well-defined <em><span style=\"text-decoration: underline;\"><span style=\"color: #7030a0;\">ISO 9001:2008</span></span></em><span style=\"color: #7030a0;\">*</span> engineering processes that cross both the consumer mobile computing and M2M cellular modem teams. Our longstanding relationships with industry leaders like Qualcomm® help us to accurately and efficiently integrate chipset capabilities into our in-house modem designs that ultimately drive our integrated devices while accelerating time to market. Our <em><span style=\"text-decoration: underline;\"><span style=\"color: #7030a0;\">Enfora® Enabler® Series </span></span></em>modules also experience statistically low returns—enhancing overall device stability—while our clients rate our RMA and support processes well above industry averages in yearly Customer Satisfaction Surveys. Those are statistics that engender customer loyalty and keep us working hard to make transitions simple and technology fresh.</p>\r\n<p class=\"MsoNormal\"> </p>'),(140,'<p> </p>\r\n<h2 class=\"HeadingProductname\">M2M Modules</h2>\r\n<h3>A Trusted Brand since 2005</h3>\r\n<p class=\"t1\">Continuing the successful Enabler® OEM module line that’s been a staple of the Enfora® M2M brand since its introduction in 2005, the Enabler® IIIG Series maintains the core features of using industry-leading chipset manufacturers as the basis of our trusted in-house designs and then overlaying our Smart Agent with its action-based intelligence onto the final modem design. With the recent expansion of the series beyond the Enabler® IIIG into our new HS Series, we provide you with even more module options for integration into your mission critical designs—while preserving the industry-leading intelligence and in-house expertise that’s led to our iconic brand success.</p>\r\n<h3>A Made-for-Migration Technology Line</h3>\r\n<p class=\"t1\">Whether you’re eager to migrate from 2G to 3G or between other technologies in our GSM/GPRS, 1xRTT (CDMA2000), and HSDPA/UMTS module line up, it will be easy to do with the common-by-design build of our extended HS Series of OEM modules. We’ve preserved the same 100-pin I/O and B2B RF connectors; a compatible x-y size and mounting; and the same firmware API, including our Smart Agent from our popular Enabler® IIIG Series. Another benefit of an Enabler® Series transition is that you can even reuse most of your valuable script features. So if you require a longer product life for your next-generation design—or your business plans include worldwide deployments, international roaming, regional expansion, carrier change, and/or better cellular coverage—we’ve already eased your transition and lessened your risk.</p>\r\n<h3>Enhancing Integrator Success</h3>\r\n<p class=\"t1\">Novatel Wireless supports module integrators by bringing an in-depth understanding of complex carrier networks and actively working with clients to achieve numerous regulatory approvals. In fact, we’ve taken Enfora® M2M modules through about 60 PTCRB and 10 new GCF certification approvals, have been a participant in the development of the GCF and PTCRB M2M approval requirements, and have expertise in nearly 20 other regulatory approval types. Novatel Wireless additionally can lower risk, speed time to market, and achieve cost discounts for our clients through long-standing relationships with third-party certifying labs.</p>\r\n<h3>Architected for Target Applications &amp; Markets</h3>\r\n<p class=\"t1\">A strong differentiator of our Enabler® HS Series of cellular modems that’s not immediately obvious is that—beyond working with world-class chipset manufacturers and integrating our actionable intelligence into our designs—we calibrate and align our hardware and low-level firmware to accommodate the needs of the target applications. So whether your battery-free telematics application needs extra low power or your fixed exterior monitoring site needs extended low temperature, we have you covered.  Some key target applications include:</p>\r\n<!--[if gte mso 9]><xml>\r\n <o:DocumentProperties>\r\n  <o:Revision>0</o:Revision>\r\n  <o:TotalTime>0</o:TotalTime>\r\n  <o:Pages>1</o:Pages>\r\n  <o:Words>20</o:Words>\r\n  <o:Characters>119</o:Characters>\r\n  <o:Company>Rational Interaction</o:Company>\r\n  <o:Lines>1</o:Lines>\r\n  <o:Paragraphs>1</o:Paragraphs>\r\n  <o:CharactersWithSpaces>138</o:CharactersWithSpaces>\r\n  <o:Version>14.0</o:Version>\r\n </o:DocumentProperties>\r\n <o:OfficeDocumentSettings>\r\n  <o:RelyOnVML/>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n<p> </p>\r\n<!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>JA</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\n  DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"276\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]-->\r\n<p> </p>\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:Calibri;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\ntable.MsoTableGrid\r\n	{mso-style-name:\"Table Grid\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-priority:59;\r\n	mso-style-unhide:no;\r\n	border:solid windowtext 1.0pt;\r\n	mso-border-alt:solid windowtext .5pt;\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-border-insideh:.5pt solid windowtext;\r\n	mso-border-insidev:.5pt solid windowtext;\r\n	mso-para-margin:0in;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:Calibri;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->\r\n<p> </p>\r\n<!--StartFragment-->\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; mso-table-layout-alt: fixed; border: none; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt; mso-border-insideh: none; mso-border-insidev: none;\" width=\"559\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 1.95in; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"140\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Security/Safety/Alarm</p>\r\n</td>\r\n<td style=\"width: 184.5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"185\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Utilities</p>\r\n</td>\r\n<td style=\"width: 1.5in; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"108\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Transportation</p>\r\n</td>\r\n<td style=\"width: 1.75in; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"126\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Telemetry</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 1.95in; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"140\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->AMR/AMI End Points</p>\r\n</td>\r\n<td style=\"width: 184.5pt; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"185\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Remote Monitor/Control (RMAC)</p>\r\n</td>\r\n<td style=\"width: 1.5in; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"108\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Telematics</p>\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->Automotive</p>\r\n</td>\r\n<td style=\"width: 1.75in; padding: 0in 5.4pt 0in 5.4pt;\" valign=\"top\" width=\"126\">\r\n<p class=\"Tabledata\"><!--[if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">·<span style=\"font-size: 7pt; font-family: \'Times New Roman\';\">       </span></span><!--[endif]-->mHealth</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--EndFragment-->\r\n<h3>View Enterprise Assets As Never Before</h3>\r\n<p class=\"t1\">All Enfora® modems are designed for full compatibility with our <em><span style=\"text-decoration: underline;\"><span style=\"color: #7030a0;\">N4A® Software Platform</span></span></em>that includes the N4A® Communications and Management Software (CMS) and N4A® Device Manager, which provide accelerated device provisioning, deployment, shipping, monitoring, and tracking worldwide. Once you’ve experienced this level of visibility and control over your decision-clarifying assets, you won’t know how you managed without it. </p>\r\n<h3>Quality &amp; Reliability that Keeps Selling</h3>\r\n<p class=\"t1\">At Novatel Wireless we infuse quality in all we do, starting with well-defined <em><span style=\"text-decoration: underline;\"><span style=\"color: #7030a0;\">ISO 9001:2008*</span></span></em>engineering processes that cross both the consumer mobile computing and M2M cellular modem teams. Our longstanding relationships with industry leaders like Qualcomm® help us to accurately and efficiently integrate chipset capabilities into our modem designs while accelerating time to market. Our modules also experience statistically low returns, while our clients rate our RMA and support processes well above industry averages in yearly Customer Satisfaction Surveys. Those are statistics that engender customer loyalty and keep us working hard to make transitions simple and technology fresh.</p>\r\n<!--EndFragment-->\r\n<p> </p>');
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
INSERT INTO `btCoreScrapbookDisplay` VALUES (41,38),(42,39),(43,40),(44,38),(45,39),(46,38),(47,39),(51,34),(69,68),(70,68),(71,68),(72,68),(73,68);
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
INSERT INTO `btNavigation` VALUES (13,'display_asc','top',0,0,'none','enough',0,0),(14,'display_asc','below',0,0,'relevant','enough_plus1',0,0),(15,'display_asc','top',0,0,'relevant_breadcrumb','enough',0,0),(16,'display_asc','top',0,0,'none','enough',0,0),(24,'display_asc','top',0,0,'relevant_breadcrumb','enough',0,0),(25,'display_asc','below',0,0,'relevant','enough_plus1',0,0),(26,'display_asc','below',0,0,'relevant','enough_plus1',0,0),(54,'display_asc','top',0,0,'all','all',0,0),(55,'display_asc','top',0,0,'all','enough_plus1',0,0),(56,'display_asc','top',0,0,'all','custom',2,0),(65,'display_asc','top',0,0,'all','custom',2,0),(66,'display_asc','top',0,0,'all','custom',2,0),(67,'display_asc','top',0,0,'all','custom',2,0),(75,'display_asc','custom',1,0,'all','custom',2,0),(76,'display_asc','custom',1,0,'all','all',2,0),(77,'display_asc','top',1,0,'all','custom',2,0),(100,'display_asc','top',0,0,'all','custom',1,0),(121,'display_asc','custom',187,0,'none','custom',0,0),(122,'display_asc','custom',187,0,'none','custom',0,0),(124,'display_asc','below',0,0,'relevant','enough_plus1',0,0),(125,'display_asc','top',0,0,'all','custom',1,0),(132,'display_asc','below',0,0,'none','enough',0,0);
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
INSERT INTO `btPageList` VALUES (102,0,'display_asc',187,1,0,0,1,0,0,'','',0,0,0),(103,0,'display_asc',189,1,0,0,1,0,0,'','',0,0,0),(130,0,'display_asc',188,1,0,0,1,0,0,'','',0,0,0);
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
INSERT INTO `btSearch` VALUES (59,'Search','','',''),(101,'Search','go','',''),(104,'Product Search','go','/products',''),(105,'Product Search','go','/products',''),(118,'Search','go','','/support/search-results'),(119,'Search','go','',''),(123,'Product Search','go','/products','/support/search-results'),(126,'Search','','','/support/search-results/');
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

-- Dump completed on 2012-10-01 16:19:55
