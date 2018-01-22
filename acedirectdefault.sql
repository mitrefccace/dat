-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: ace-direct-mysql.ceq7afndeyku.us-east-1.rds.amazonaws.com    Database: acedirectdefault
-- ------------------------------------------------------
-- Server version	5.6.37-log

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
-- Table structure for table `agent_data`
--

DROP TABLE IF EXISTS `agent_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_data` (
  `agent_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `role` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `extension_id` int(10) DEFAULT NULL,
  `queue_id` int(10) DEFAULT NULL,
  `queue2_id` int(10) DEFAULT NULL,
  `layout` text,
  PRIMARY KEY (`agent_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_data`
--

LOCK TABLES `agent_data` WRITE;
/*!40000 ALTER TABLE `agent_data` DISABLE KEYS */;
INSERT INTO `agent_data` VALUES (4,'dagent1','Dagent1#','George','Washington','AD Agent','444-444-4444','dagent1@portal.com','Organization Zulu',1,1,4,1,2,'[{\"id\":\"gsvideobox\",\"x\":0,\"y\":0,\"width\":7,\"height\":9},{\"id\":\"gschatbox\",\"x\":7,\"y\":0,\"width\":5,\"height\":5}]'),(5,'dagent2','Dagent2#','John','Adams','AD Agent','444-444-4444','dagent2@portal.com','Organization Zulu',1,1,5,1,2,'[{\"id\":\"gsvideobox\",\"x\":0,\"y\":0,\"width\":7,\"height\":5},{\"id\":\"gschatbox\",\"x\":7,\"y\":0,\"width\":5,\"height\":5},{\"id\":\"gsscriptbox\",\"x\":0,\"y\":5,\"width\":6,\"height\":1},{\"id\":\"gsdetailsbox\",\"x\":6,\"y\":5,\"width\":6,\"height\":1}]'),(6,'dagent3','Dagent3#','Thomas','Jefferson','AD Agent','444-444-4444','dagent3@portal.com','Organization Zulu',1,1,6,1,2,'[{\"id\":\"gsvideobox\",\"x\":0,\"y\":0,\"width\":4,\"height\":4},{\"id\":\"gschatbox\",\"x\":8,\"y\":0,\"width\":4,\"height\":5},{\"id\":\"gsscriptbox\",\"x\":0,\"y\":4,\"width\":6,\"height\":3},{\"id\":\"gsdetailsbox\",\"x\":6,\"y\":5,\"width\":6,\"height\":4}]'),(7,'dagent4','Dagent4#','James','Madison','AD Agent','444-444-4444','dagent4@portal.com','Organization Zulu',1,1,7,1,2,'[{\"id\":\"gsvideobox\",\"x\":0,\"y\":0,\"width\":8,\"height\":5},{\"id\":\"gschatbox\",\"x\":8,\"y\":0,\"width\":4,\"height\":8},{\"id\":\"gsscriptbox\",\"x\":0,\"y\":5,\"width\":7,\"height\":3},{\"id\":\"gsdetailsbox\",\"x\":6,\"y\":8,\"width\":6,\"height\":1}]'),(8,'dagent5','Dagent5#','James','Monroe','AD Agent','444-444-4444','dagent5@portal.com','Organization Zulu',1,1,8,1,2,'[{\"id\":\"gsvideobox\",\"x\":0,\"y\":0,\"width\":8,\"height\":8},{\"id\":\"gschatbox\",\"x\":8,\"y\":0,\"width\":4,\"height\":5}]');
/*!40000 ALTER TABLE `agent_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asterisk_extensions`
--

DROP TABLE IF EXISTS `asterisk_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asterisk_extensions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `extension` int(4) DEFAULT NULL,
  `extension_secret` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asterisk_extensions`
--

LOCK TABLES `asterisk_extensions` WRITE;
/*!40000 ALTER TABLE `asterisk_extensions` DISABLE KEYS */;
INSERT INTO `asterisk_extensions` VALUES (1,6001,'EXTENSION_PASSWORD'),(2,6002,'EXTENSION_PASSWORD'),(3,6003,'EXTENSION_PASSWORD'),(4,30001,'EXTENSION_PASSWORD'),(5,30002,'EXTENSION_PASSWORD'),(6,30003,'EXTENSION_PASSWORD'),(7,30004,'EXTENSION_PASSWORD'),(8,30005,'EXTENSION_PASSWORD'),(9,30006,'EXTENSION_PASSWORD'),(10,30007,'EXTENSION_PASSWORD'),(11,30008,'EXTENSION_PASSWORD'),(12,30009,'EXTENSION_PASSWORD'),(13,30010,'EXTENSION_PASSWORD'),(14,30011,'EXTENSION_PASSWORD'),(15,30012,'EXTENSION_PASSWORD'),(16,30013,'EXTENSION_PASSWORD'),(17,30014,'EXTENSION_PASSWORD'),(18,30015,'EXTENSION_PASSWORD'),(19,30016,'EXTENSION_PASSWORD'),(20,30017,'EXTENSION_PASSWORD'),(21,30018,'EXTENSION_PASSWORD'),(22,30019,'EXTENSION_PASSWORD'),(23,30020,'EXTENSION_PASSWORD'),(24,0,NULL);
/*!40000 ALTER TABLE `asterisk_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asterisk_queues`
--

DROP TABLE IF EXISTS `asterisk_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asterisk_queues` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asterisk_queues`
--

LOCK TABLES `asterisk_queues` WRITE;
/*!40000 ALTER TABLE `asterisk_queues` DISABLE KEYS */;
INSERT INTO `asterisk_queues` VALUES (1,'ComplaintsQueue'),(2,'GeneralQuestionsQueue'),(3,'None');
/*!40000 ALTER TABLE `asterisk_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outgoing_channels`
--

DROP TABLE IF EXISTS `outgoing_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outgoing_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outgoing_channels`
--

LOCK TABLES `outgoing_channels` WRITE;
/*!40000 ALTER TABLE `outgoing_channels` DISABLE KEYS */;
INSERT INTO `outgoing_channels` VALUES (1,'SIP/7001'),(2,'SIP/7002'),(3,'SIP/7003'),(4,NULL),(5,NULL),(6,NULL),(7,NULL);
/*!40000 ALTER TABLE `outgoing_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scripts`
--

DROP TABLE IF EXISTS `scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scripts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) NOT NULL,
  `text` varchar(10000) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scripts`
--

LOCK TABLES `scripts` WRITE;
/*!40000 ALTER TABLE `scripts` DISABLE KEYS */;
INSERT INTO `scripts` VALUES (1,2,'Hello [CUSTOMER NAME], this is [AGENT NAME] calling from Agent Portal Services. Have I caught you in the middle of anything? The purpose for my call is to help improve our service to customers. I do not know the nature of your complaint, and this is why I have a couple of questions. How do you feel about our service? When was the last time you used our service? Well, based on your answers, it sounds like we can learn a lot from you if we were to talk in more detail. Are you available to put a brief 15 to 20 minute meeting on the calendar where we can discuss this in more detail and share any insight and value you may have to offer?','2016-04-01','Default'),(2,1,'Hello [CUSTOMER NAME], this is [AGENT NAME] calling from Agent Portal Services. I understand that you have a complaint to discuss with us?','2016-04-01','Default'),(3,1,'I see you need to change your profile information...','2017-04-04','Profile'),(4,2,'I see you need to change your profile information...','2017-04-04','Profile'),(5,1,'You are new to our system.','2017-04-04','New'),(6,2,'You are new to our system.','2017-04-04','New');
/*!40000 ALTER TABLE `scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_data` (
  `vrs` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  PRIMARY KEY (`vrs`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7325083148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES (1111111111,'ghopper','aaa111','Grace','Hopper','1 Programming Way','Beverly Hills','CA','90210','ghopper@mail.com',0);
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videomail`
--

DROP TABLE IF EXISTS `videomail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videomail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(16) NOT NULL,
  `recording_agent` varchar(20) DEFAULT NULL,
  `processing_agent` varchar(20) DEFAULT NULL,
  `received` timestamp NULL DEFAULT NULL,
  `processed` timestamp NULL DEFAULT NULL,
  `video_duration` smallint(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `src_channel` varchar(32) DEFAULT NULL,
  `dest_channel` varchar(45) DEFAULT NULL,
  `unique_id` varchar(32) DEFAULT NULL,
  `video_filename` varchar(255) DEFAULT NULL,
  `video_filepath` varchar(255) DEFAULT NULL,
  `callbacknumber` bigint(20) DEFAULT NULL,
  `deleted_time` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videomail`
--

LOCK TABLES `videomail` WRITE;
/*!40000 ALTER TABLE `videomail` DISABLE KEYS */;
/*!40000 ALTER TABLE `videomail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-19 20:22:42
