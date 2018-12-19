-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pin` int(10) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (3,NULL,NULL,'texus c'),(4,NULL,NULL,'alabama '),(5,22,'ss',''),(6,99,'',''),(7,11,'qq','arab'),(8,22,'qq','qq'),(9,44,'qq','qq'),(10,77,'qq','aa'),(11,11,'aa','aa'),(12,22,'ww','ww'),(13,99,'ff','ww'),(14,11,'wb','dg'),(15,NULL,NULL,'h'),(16,44,'Texus','texus city '),(17,44,'TEXUS','arab'),(18,55,'Texus1','texus 1 city'),(19,NULL,NULL,'NY'),(20,NULL,NULL,'Miami'),(21,NULL,NULL,'NY'),(22,NULL,NULL,'Ny'),(23,NULL,NULL,'miami'),(24,NULL,NULL,'London1'),(25,NULL,NULL,''),(26,NULL,NULL,''),(27,NULL,NULL,''),(28,NULL,NULL,''),(29,NULL,NULL,''),(30,223223,'texus','texus'),(31,123456,'texus','alabama'),(32,222222,'alabama','alabama'),(33,123456,'alabama','alabama');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `addressId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_idx` (`addressId`),
  CONSTRAINT `fk_address` FOREIGN KEY (`addressId`) REFERENCES `Address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (14,'admin1','admin','admin10@gmail.com',3),(15,'admin','admin','ww',4),(16,'admin','admin','ss@gmail.com',5),(17,'admin','admin','',6),(18,'admin','admin','db@gmail.com',7),(19,'admin','admin','bb@gmail.com',8),(20,'admin','admin','nn',9),(21,'admin','admin','qq',10),(22,'admin','admin','aa',11),(23,'admin','admin','ww',12),(24,'admin','admin','dd',13),(25,'som007','som007','som001@gmail.com',14),(26,'hibernate','hiber007','hibe',15),(27,'Hiber007','Hiber007','hiber@gmail.com',16),(28,'raju','raju007','raju@gmail.com',17),(29,'Jack','jack009','jack@gmail.com',NULL),(30,'hibernate100',NULL,NULL,NULL),(32,'somnath_hiber',NULL,'somnath_hibernate009',19),(33,'Stac',NULL,'st@gmail.com',20),(34,'sam007','samy','samy@gmail.com',21),(35,'Stacyoo9',NULL,'st@gmail.com',22),(36,'sam',NULL,'samy@gmail.com',23),(37,'class Java ','java007','java@gmail.com',24),(38,'admin','admin','',25),(39,'','admin','',26),(40,'','admin','',27),(41,'admin','admin','',28),(42,'somnath','somnath','',29),(43,'somnath077','somnath007','som@gmail.com',30),(44,'Faysal Sagar','Faysal008','Faysal@gmail.com',31),(45,'sam','samoo7','sam@gmail.com',32),(46,'Archi','Archi007','Arch@gmail.com',33);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-06 20:57:40
