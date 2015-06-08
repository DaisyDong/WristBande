-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: runner
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `appuser`
--

DROP TABLE IF EXISTS `appuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuser` (
  `appId` varchar(45) NOT NULL,
  `APP_type` varchar(20) NOT NULL,
  `nickName` varchar(45) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `App_priority` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `Bound_phonenumber` varchar(20) DEFAULT NULL,
  `sex` char(1) NOT NULL,
  `headPictureURL` varchar(100) DEFAULT NULL,
  `Paytype_num` int(11) DEFAULT NULL,
  `Paytype` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuser`
--

LOCK TABLES `appuser` WRITE;
/*!40000 ALTER TABLE `appuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `appuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuser_has_terminal`
--

DROP TABLE IF EXISTS `appuser_has_terminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuser_has_terminal` (
  `appId` varchar(45) NOT NULL,
  `terminalId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuser_has_terminal`
--

LOCK TABLES `appuser_has_terminal` WRITE;
/*!40000 ALTER TABLE `appuser_has_terminal` DISABLE KEYS */;
/*!40000 ALTER TABLE `appuser_has_terminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_location`
--

DROP TABLE IF EXISTS `history_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_location` (
  `terminalId` varchar(15) NOT NULL,
  `Number` int(11) DEFAULT NULL,
  `Location` varchar(100) NOT NULL,
  `Time` varchar(25) NOT NULL,
  `Location_order` int(11) NOT NULL,
  `Location_city` varchar(100) NOT NULL,
  `Location_street` varchar(100) NOT NULL,
  `Location_building` varchar(100) NOT NULL,
  PRIMARY KEY (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_location`
--

LOCK TABLES `history_location` WRITE;
/*!40000 ALTER TABLE `history_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `managerName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `managerpriority` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `departmentID` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `alternatePhone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`managerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_record`
--

DROP TABLE IF EXISTS `reward_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_record` (
  `reward_event` varchar(100) NOT NULL,
  `reward_time` varchar(20) NOT NULL,
  `reward_Location` varchar(100) DEFAULT NULL,
  `terminalId` varchar(15) NOT NULL,
  `rewardId` varchar(45) NOT NULL,
  PRIMARY KEY (`rewardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_record`
--

LOCK TABLES `reward_record` WRITE;
/*!40000 ALTER TABLE `reward_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supermanager`
--

DROP TABLE IF EXISTS `supermanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supermanager` (
  `SupermanagerName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Tele` int(11) NOT NULL,
  `Email` varchar(40) NOT NULL,
  PRIMARY KEY (`SupermanagerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supermanager`
--

LOCK TABLES `supermanager` WRITE;
/*!40000 ALTER TABLE `supermanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `supermanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminal`
--

DROP TABLE IF EXISTS `terminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminal` (
  `terminalId` varchar(15) NOT NULL,
  `isOnline` varchar(1) NOT NULL DEFAULT 'N',
  `InPrivate` varchar(1) NOT NULL DEFAULT 'N',
  `electricity` int(11) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `birthday` varchar(20) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'F',
  `headPictureURL` varchar(45) DEFAULT NULL,
  `isPathForever` varchar(1) NOT NULL DEFAULT 'N',
  `temporaryRight` varchar(1) NOT NULL DEFAULT 'N',
  `CurrentVersion` varchar(100) NOT NULL,
  `retireTime` varchar(20) DEFAULT NULL,
  `initialTime` varchar(20) DEFAULT NULL,
  `serviceName` varchar(45) NOT NULL,
  `startTime` varchar(20) NOT NULL,
  `endTime` varchar(20) NOT NULL,
  `serviceDetail` text NOT NULL,
  `payment` float NOT NULL,
  `Num` int(11) NOT NULL,
  `priorityTime` varchar(45) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `APP_num` int(11) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`terminalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminal`
--

LOCK TABLES `terminal` WRITE;
/*!40000 ALTER TABLE `terminal` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminal_has_usergroup`
--

DROP TABLE IF EXISTS `terminal_has_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminal_has_usergroup` (
  `terminalId` varchar(15) NOT NULL,
  `GroupID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminal_has_usergroup`
--

LOCK TABLES `terminal_has_usergroup` WRITE;
/*!40000 ALTER TABLE `terminal_has_usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminal_has_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminal_location`
--

DROP TABLE IF EXISTS `terminal_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminal_location` (
  `terminalId` varchar(15) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `isOnline` char(1) NOT NULL,
  `Current_location` varchar(100) NOT NULL,
  `Current_Time` varchar(25) NOT NULL,
  `Location_city` varchar(100) NOT NULL,
  `Location_street` varchar(100) NOT NULL,
  `Location_building` varchar(100) NOT NULL,
  `Last_Time` varchar(25) NOT NULL,
  `Last_Location_city` varchar(100) NOT NULL,
  `Last_Location_street` varchar(100) NOT NULL,
  `Last_Location_building` varchar(100) NOT NULL,
  `Last_Location` varchar(100) NOT NULL,
  PRIMARY KEY (`terminalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminal_location`
--

LOCK TABLES `terminal_location` WRITE;
/*!40000 ALTER TABLE `terminal_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminal_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminal_phone_record`
--

DROP TABLE IF EXISTS `terminal_phone_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminal_phone_record` (
  `terminalId` varchar(15) NOT NULL,
  `phoneUser` varchar(45) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `phonetype` varchar(1) NOT NULL,
  `phoneId` varchar(45) NOT NULL,
  PRIMARY KEY (`phoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminal_phone_record`
--

LOCK TABLES `terminal_phone_record` WRITE;
/*!40000 ALTER TABLE `terminal_phone_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminal_phone_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminal_sound`
--

DROP TABLE IF EXISTS `terminal_sound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminal_sound` (
  `terminalId` varchar(15) NOT NULL,
  `soundURL` varchar(45) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `soundTheme` varchar(100) DEFAULT NULL,
  `soundLocation` varchar(100) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `soundId` varchar(30) NOT NULL,
  PRIMARY KEY (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminal_sound`
--

LOCK TABLES `terminal_sound` WRITE;
/*!40000 ALTER TABLE `terminal_sound` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminal_sound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminal_sport`
--

DROP TABLE IF EXISTS `terminal_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminal_sport` (
  `terminalId` int(11) NOT NULL,
  `CalorieConsumption` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  `pace` int(11) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminal_sport`
--

LOCK TABLES `terminal_sport` WRITE;
/*!40000 ALTER TABLE `terminal_sport` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminal_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroup` (
  `GroupID` varchar(30) NOT NULL,
  `groupName` varchar(45) NOT NULL,
  `groupType` int(11) NOT NULL,
  `groupNumber` int(11) NOT NULL,
  `maxNumber` int(11) NOT NULL,
  `groupLeader` varchar(45) NOT NULL,
  `GroupOrganization` varchar(45) NOT NULL,
  `GroupAddress` varchar(45) DEFAULT NULL,
  `GroupData` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-08 15:10:52
