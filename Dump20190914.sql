-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: sharebag
-- ------------------------------------------------------
-- Server version	5.7.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS sharebag;

CREATE DATABASE sharebag;

USE sharebag;

--
-- Table structure for table `create_offer`
--

DROP TABLE IF EXISTS `Create_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Create_offer` (
  `id_create_offer` int(11) NOT NULL AUTO_INCREMENT,
  `id_offer` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_create_offer`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `create_offer`
--

LOCK TABLES `Create_offer` WRITE;
/*!40000 ALTER TABLE `Create_offer` DISABLE KEYS */;
INSERT INTO `Create_offer` VALUES (1,3,34,'2016-11-29 17:25:06.728','ACTIVE'),(2,4,39,'2017-01-09 17:07:57.732','ACTIVE'),(3,5,34,'2017-01-30 15:06:13.867','ACTIVE'),(4,6,34,'2017-01-30 15:11:55.349','ACTIVE'),(5,9,34,'2017-01-30 15:19:03.971','ACTIVE'),(6,20,34,'2017-01-30 15:22:10.213','ACTIVE'),(7,21,34,'2017-01-30 15:24:53.557','ACTIVE'),(8,22,34,'2017-01-30 15:31:08.958','ACTIVE'),(9,23,39,'2017-01-30 15:42:05.75','ACTIVE'),(10,24,34,'2017-03-14 13:26:12.937','ACTIVE'),(11,25,34,'2017-03-21 15:25:35.883','ACTIVE'),(12,26,34,'2017-03-22 16:38:30.096','ACTIVE'),(13,27,34,'2017-03-22 16:46:26.719','ACTIVE'),(14,28,34,'2017-04-12 14:49:12.001','ACTIVE'),(18,32,34,'2017-04-13 00:46:07.39','ACTIVE'),(20,34,34,'2017-04-23 00:05:46.383','ACTIVE'),(22,36,34,'2017-05-07 22:19:25.696','ACTIVE'),(25,39,34,'2017-12-15 14:38:50.217','ACTIVE'),(26,40,34,'2018-01-18 01:30:17.442','ACTIVE'),(27,41,34,'2018-01-22 14:34:14.607','FINISHED'),(28,42,34,'2018-01-22 16:49:10.862','ACTIVE'),(29,43,40,'2018-01-25 12:51:42.308','ACTIVE'),(31,45,34,'2018-03-22 17:42:47.537','ACTIVE'),(32,46,34,'2018-03-28 18:58:19.775','ACTIVE'),(33,47,34,'2018-03-28 18:59:59.778','ACTIVE'),(34,48,34,'2018-03-29 19:02:56.745','ACTIVE'),(35,49,34,'2018-03-29 19:09:49.647','ACTIVE'),(36,50,34,'2018-04-18 09:29:58.022','FINISHED'),(39,53,41,'2018-05-15 23:53:00.48','ACTIVE'),(40,54,34,'2018-05-17 15:04:09.85','ACTIVE'),(41,55,41,'2018-05-18 14:29:55.126','ACTIVE'),(42,56,34,'2018-05-19 00:31:23.546','ACTIVE'),(43,57,34,'2018-09-24 21:43:57.197','ACTIVE'),(44,58,55,'2018-11-26 20:46:07.411','ACTIVE');
/*!40000 ALTER TABLE `Create_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Messages` (
  `id_message` int(11) NOT NULL AUTO_INCREMENT,
  `source_id_user` int(11) DEFAULT NULL,
  `dest_id_user` int(11) DEFAULT NULL,
  `id_offer` int(11) DEFAULT NULL,
  `id_conversation` int(11) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (1,34,39,3,1,'2017-02-08 18:31:45.368','dsfdsf sdfdsf','r'),(2,39,34,3,1,'2017-02-09 17:16:34.465','to Pawel Szarłowski','r'),(3,34,39,3,1,'2017-02-09 17:21:09.36','hej tu Paweł Szarłowski pisze do Mieszka','r'),(4,39,34,3,1,'2017-02-09 17:29:57.325','hej Tu Mieszko pisze do Pawła','r'),(5,34,39,3,1,'2017-02-09 17:35:49.701','tu Paweł odpowiadam Mieszkowi','r'),(6,39,34,3,1,'2017-02-09 17:36:26.879','tu Mieszko Over','r'),(7,39,34,3,1,'2017-02-09 17:36:52.989','Jeszcze raz zapowniałem ze Dowidzenia','r'),(8,39,34,3,1,'2017-02-10 12:42:00.584','I jeszcze jedna raz Mieszko','r'),(9,34,39,3,1,'2017-02-10 12:43:06.176','tu Paweł Odpowiadam hej','r'),(10,34,39,3,1,'2017-02-10 12:50:54.131','Tu Paweł Hej MIeszko','r'),(11,34,39,3,1,'2017-02-10 12:54:47.084','Ti jeszcze raz Paweł Pozdrawiwam Cie mieszko','r'),(12,39,40,23,2,'2017-02-12 00:54:41.721','Hi Tu MIechu co tam testsharebag userze','r'),(13,40,39,23,2,'2017-02-12 00:56:34.063','Hej, Wsio okej. Pozdro','r'),(14,34,39,3,1,'2017-02-22 20:40:47.613','Hej Tu Paweł kolejny message','r'),(15,34,39,3,1,'2017-02-22 20:41:57.181','Hej Tu Pawel i jeszcze raz','r'),(16,34,39,3,1,'2017-02-22 20:43:03.905','Kolejny raz Paweł','r'),(17,34,39,3,1,'2017-02-22 20:43:28.695','I jeszcze raz Pawio Ojciec Mieszka','r'),(18,39,34,3,1,'2017-02-22 23:08:26.057','hej tu Mieszko pozdrawiam Tate','r'),(19,34,39,3,1,'2017-02-23 00:41:37.072','Hej Tu tata Witam Ciebie','r'),(20,34,39,3,1,'2017-02-23 00:41:52.215','kjzdc','r'),(21,34,39,3,1,'2017-02-23 00:42:07.187','zxcxz','r'),(22,34,39,3,1,'2017-02-23 00:43:43.324','xzdsad','r'),(23,34,39,3,1,'2017-02-23 00:44:00.704','cxcvcv','r'),(24,34,39,3,1,'2017-02-23 00:44:29.088','sfdsdfsd','r'),(25,34,39,3,1,'2017-02-23 00:45:15.394','cc','r'),(26,34,39,3,1,'2017-02-23 00:47:46.62','hej','r'),(27,39,34,3,1,'2017-02-23 00:48:27.493','Hej Tatko','r'),(28,39,34,3,1,'2017-02-23 00:48:51.342','Hej one more time','r'),(29,34,39,3,1,'2017-02-23 13:23:16.367','Hej Tu tata','r'),(30,39,34,3,1,'2017-02-23 13:26:19.973','Hej Tato juz lato','r'),(31,39,34,3,1,'2017-02-23 13:26:27.102','Hej ho hoho hoho','r'),(32,34,39,3,1,'2017-02-23 13:31:26.657','Hej Myszko Tu tata','r'),(33,39,34,3,1,'2017-02-23 14:01:03.654','Hej Tatko','r'),(34,34,39,3,1,'2017-02-23 21:59:44.607','No co tam Mieszko','r'),(35,39,34,3,1,'2017-02-23 22:10:07.608','Nic tato','r'),(36,39,34,3,1,'2017-02-23 22:11:24.158','hej tatko','r'),(37,39,34,3,1,'2017-02-23 22:11:31.482','jak tam tatko','r'),(38,34,39,3,1,'2017-02-23 22:13:02.256','Wsio orajt','r'),(39,34,39,3,1,'2017-02-23 22:13:09.388','Jest Git','r'),(40,39,34,3,1,'2017-02-23 22:41:49.427','Tato juz lato','r'),(41,39,34,3,1,'2017-02-23 22:45:12.565','no tato','r'),(42,34,39,3,1,'2017-02-24 13:12:18.134','Hej Kolego','r'),(43,34,39,3,1,'2017-02-24 13:14:31.28','Jak tam synu?','r'),(44,39,34,3,1,'2017-02-24 13:21:57.369','Wszystko git','r'),(45,34,39,3,1,'2017-02-24 15:55:02.037','no i super','r'),(46,39,34,3,1,'2017-02-24 15:57:32.099','Tato?','r'),(47,39,34,3,1,'2017-02-24 15:57:49.315','Małe Pytanie do Ciebie?','r'),(48,34,39,3,1,'2017-02-24 16:07:30.42','Tak Synku?','r'),(49,34,39,3,1,'2017-02-24 17:49:01.052','co tam jest okej?','r'),(50,34,39,3,1,'2017-02-24 17:50:37.587','Hej powiesz coś','r'),(51,39,34,3,1,'2017-02-24 17:51:54.909','Hej Jest Okej','r'),(52,34,39,3,1,'2017-02-24 20:17:09.749','hejehje','r'),(53,34,39,3,1,'2017-02-24 20:35:52.782','hej hoho Mieszko','r'),(54,34,39,3,1,'2017-02-24 20:38:10.748','Heji','r'),(55,39,34,3,1,'2017-02-24 20:46:19.245','hejo','r'),(56,39,34,3,1,'2017-02-24 20:59:08.023','hejop','r'),(57,39,34,3,1,'2017-02-24 20:59:41.088','Hejka','r'),(58,34,39,3,1,'2017-02-24 21:00:16.823','Hej','r'),(59,34,39,3,1,'2017-02-24 21:17:08.803','No i jak tam?','r'),(60,39,34,3,1,'2017-02-24 21:18:07.977','Całkiem nieźle','r'),(61,39,34,3,1,'2017-02-24 21:18:16.582','A  u Ciebie git','r'),(62,34,39,3,1,'2017-02-24 21:22:31.149','U mnie niele','r'),(63,39,34,3,1,'2017-02-24 21:23:10.324','co to znaczy \"niele\"?','r'),(64,39,34,3,1,'2017-02-24 21:23:52.732','dobra niewaźne','r'),(65,39,34,3,1,'2017-02-25 17:55:34.077','No i jak tam','r'),(66,34,39,3,1,'2017-02-25 17:56:12.678','Jest nieźle','r'),(67,39,40,23,2,'2017-03-03 21:20:26.644','Super super','r'),(68,34,39,3,1,'2017-03-24 00:02:14.645','I jak tam?','r'),(69,39,34,3,1,'2017-03-24 13:17:48.324','Jest ok','r'),(83,34,41,3,3,'2017-04-27 17:02:44.239','Hej','r'),(84,34,41,3,3,'2017-04-27 17:03:38.595','Jeszcze raz hej','r'),(85,41,34,3,3,'2017-04-27 17:04:50.123','No witam','r'),(86,41,34,3,3,'2017-04-27 17:04:58.531','Jeszcze raz hej','r'),(89,34,39,4,4,'2017-12-01 22:39:00.451','message for offer 4, hi','r'),(90,34,39,4,4,'2017-12-01 22:43:18.632','once again, how are you','r'),(91,39,34,4,4,'2017-12-01 22:52:49.471','hi','r'),(92,39,34,4,4,'2017-12-01 22:59:49.055','hi','r'),(93,34,39,4,4,'2017-12-04 17:42:02.99','Hello','r'),(94,34,39,4,4,'2017-12-04 18:20:12.822','hejka','r'),(95,34,41,3,3,'2017-12-04 18:21:57.747','hejka','r'),(96,34,39,3,1,'2017-12-04 18:25:47.806','Witam. Sprawa sie rypła bo...no nie ma lotu jednak i nie bede w stanie zabrać Twojego bagażu, więc będziemy musieli anulować tę transakcję. Mogę dodać że za 3 dni mój znajomy będzie jechał w te samą okolicę. Zaproponuje mojemu ziomkowi żeby sie Tutaj #SBS zapisał i wtedy sie do niego wciągniesz. On jedzie z większą grupą i będzie miał napewno miejsce.\nW razie gdybyś miał jakies pytania to podam jemu Twój numer, jeżeli dobrze pamiętam to 505 156 768, tak? OK to pozdrawiam','r'),(97,34,41,3,3,'2017-12-04 18:33:57.54','test mess','r'),(98,34,39,4,4,'2017-12-04 18:34:19.456','Witam. Sprawa sie rypła bo...no nie ma lotu jednak i nie bede w stanie zabrać Twojego bagażu, więc będziemy musieli anulować tę transakcję. Mogę dodać że za 3 dni mój znajomy będzie jechał w te samą okolicę. Zaproponuje mojemu ziomkowi żeby sie Tutaj #SBS zapisał i wtedy sie do niego wciągniesz. On jedzie z większą grupą i będzie miał napewno miejsce. W razie gdybyś miał jakies pytania to podam jemu Twój numer, jeżeli dobrze pamiętam to 505 156 768, tak? OK to pozdrawiam','r'),(99,34,39,3,1,'2017-12-04 18:34:37.187','Hej','r'),(100,39,40,23,2,'2017-12-21 14:35:59.783','Hi Unfortunately I have to reject you, cause I have max of users. Sorry :(','r'),(101,40,39,23,2,'2018-01-25 12:46:40.038','ooooohh','r'),(102,34,41,3,3,'2018-03-09 00:15:43.73','Hej hejka hej, jak sie macie','r'),(103,41,34,3,3,'2018-03-09 00:22:34.97','jest Git','r'),(104,39,34,3,1,'2018-03-09 00:57:54.763','Witam','r'),(105,34,39,23,5,'2018-03-10 15:55:29.128','Hi. I a have Question about where we can meet and give You my stuff','r'),(106,34,39,4,4,'2018-03-10 16:43:02.548','siemka','r'),(107,34,39,23,5,'2018-03-10 16:45:13.056','Siemka','r'),(108,40,34,43,6,'2018-03-15 00:30:42.741','Hej Stary jak życie','r'),(109,40,34,43,6,'2018-03-15 00:33:14.952','Jeszcze jedno','r'),(110,40,34,43,6,'2018-03-15 00:38:04.398','bla bla bla','r'),(111,40,34,43,6,'2018-03-15 00:41:21.308','Wlazł kotek na płotek','r'),(112,34,40,43,6,'2018-03-15 00:43:23.981','No hej','u'),(113,39,34,23,5,'2018-04-04 23:23:56.827','hej','r'),(114,39,34,23,5,'2018-04-04 23:24:00.361','hej','r'),(115,39,34,23,5,'2018-04-04 23:24:11.854','hej','r'),(116,39,34,23,5,'2018-04-04 23:24:21.793','Witam','r'),(117,34,39,23,5,'2018-04-04 23:25:21.407','no hej','r'),(118,34,39,23,5,'2018-04-04 23:26:03.52','hej','r'),(119,34,39,23,5,'2018-04-04 23:26:20.855','hej','r'),(120,40,39,23,2,'2018-04-05 12:11:43.717','hej','r'),(121,40,39,23,2,'2018-04-05 12:18:04.403','Witam','r'),(122,40,39,23,2,'2018-04-05 12:18:09.387','Mam cos tam','r'),(123,34,39,3,1,'2018-04-17 23:05:13.429','hej','u'),(124,34,39,3,1,'2018-04-17 23:05:29.046','hej','u'),(125,34,39,3,1,'2018-04-17 23:05:35.668','Witam','u'),(126,34,39,4,4,'2018-04-17 23:13:35.384','hej','r'),(127,34,39,23,5,'2018-04-17 23:13:48.326','Witam','r'),(128,34,39,23,5,'2018-04-17 23:13:53.205','hej','r'),(129,34,39,23,5,'2018-04-17 23:29:51.781','siemka','r'),(130,34,39,4,4,'2018-04-17 23:33:29.86','siemka','r'),(131,34,40,43,6,'2018-04-18 00:41:48.833','Witam','u'),(132,34,40,43,6,'2018-04-18 00:41:52.564','Hej','u'),(133,34,40,43,6,'2018-04-18 00:41:59.028','Już','u'),(134,34,40,43,6,'2018-04-18 00:42:16.176','I jak tam','u'),(135,34,40,43,6,'2018-04-18 00:42:37.354','już','u'),(136,34,40,43,6,'2018-04-18 00:42:48.263','już','u'),(137,34,39,21,7,'2018-05-16 23:47:04.96','siemka','r'),(138,41,34,3,3,'2018-08-03 14:59:45.157','hej','r'),(139,39,34,4,4,'2018-10-15 18:22:46.53','Hej trm koszt, How R U today?','r'),(140,34,39,4,4,'2018-10-16 10:30:32.426','trmkoszt:\n\nWitam. Sprawa sie rypła bo...no nie ma lotu jednak i nie bede w stanie zabrać Twojego bagażu, więc będziemy musieli anulować tę transakcję. Mogę dodać że za 3 dni mój znajomy będzie jechał w te samą okolicę. Zaproponuje mojemu ziomkowi żeby sie Tutaj #SBS zapisał i wtedy sie do niego wciągniesz. On jedzie z większą grupą i będzie miał napewno miejsce. W razie gdybyś miał jakies pytania to podam jemu Twój numer, jeżeli dobrze pamiętam to 505 156 768, tak? OK to pozdrawiamtrmkoszt:\n\nWitam. Sprawa sie rypła bo...no nie ma lotu jednak i nie bede w stanie zabrać Twojego bagażu, więc będziemy musieli anulować tę transakcję. Mogę dodać że za 3 dni mój znajomy będzie jechał w te samą okolicę. Zaproponuje mojemu ziomkowi żeby sie Tutaj #SBS zapisał i wtedy sie do niego wciągniesz. On jedzie z większą grupą i będzie miał napewno miejsce. W razie gdybyś miał jakies pytania to podam jemu Twój numer, jeżeli dobrze pamiętam to 505 156 768, tak? OK to pozdrawiamtrmkoszt:\n\nWitam. Sprawa sie','u'),(141,41,55,58,8,'2018-11-26 22:17:28.521','Hi, Can I call You tomorrow','r'),(142,55,41,58,8,'2018-11-26 22:18:30.794','Yes, sure. around 8 pm.','r'),(143,55,41,58,8,'2018-11-26 22:19:20.087','Bye bye','r'),(144,41,55,58,8,'2019-06-11 11:48:40.341','Hi again','u');
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `Offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Offers` (
  `id_offer` int(11) NOT NULL AUTO_INCREMENT,
  `collect_departure` varchar(255) DEFAULT NULL,
  `collect_departure_date` varchar(45) DEFAULT NULL,
  `collect_return` varchar(255) DEFAULT NULL,
  `collect_return_date` varchar(45) DEFAULT NULL,
  `from_place` varchar(45) DEFAULT NULL,
  `to_place` varchar(45) DEFAULT NULL,
  `to_place_return` varchar(45) DEFAULT NULL,
  `from_place_return` varchar(45) DEFAULT NULL,
  `hotel_name` varchar(45) DEFAULT NULL,
  `date_go` varchar(45) DEFAULT NULL,
  `date_back` varchar(45) DEFAULT NULL,
  `equ_dimensions_w_h_d` varchar(45) DEFAULT NULL,
  `max_weight` varchar(45) DEFAULT NULL,
  `arrival_go` varchar(255) DEFAULT NULL,
  `arrival_back` varchar(255) DEFAULT NULL,
  `arrival_go_map` varchar(255) DEFAULT NULL,
  `arrival_back_map` varchar(255) DEFAULT NULL,
  `arrival_go_date` varchar(45) DEFAULT NULL,
  `arrival_back_date` varchar(45) DEFAULT NULL,
  `offer_price_for_user` varchar(45) DEFAULT NULL,
  `equipment` varchar(45) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `transport_type` varchar(45) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `flight_no_go` varchar(45) DEFAULT NULL,
  `flight_no_back` varchar(45) DEFAULT NULL,
  `tags` varchar(400) DEFAULT NULL,
  `equ_photo_file` varchar(245) DEFAULT NULL,
  `collect_departure_map` varchar(255) DEFAULT NULL,
  `collect_return_map` varchar(255) DEFAULT NULL,
  `max_equ_amount` varchar(45) DEFAULT NULL,
  `air_lines_name_go` varchar(255) DEFAULT NULL,
  `air_lines_name_back` varchar(255) DEFAULT NULL,
  `air_lines_go_price` varchar(255) DEFAULT NULL,
  `air_lines_back_price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_offer`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `Offers` WRITE;
/*!40000 ALTER TABLE `Offers` DISABLE KEYS */;
INSERT INTO `Offers` VALUES (1,'rodos',NULL,NULL,NULL,NULL,'rodos',NULL,NULL,'palace hotel','2015/09/25 00:00','2015/12/17 07:00','129 x12x12',NULL,'dzfcs','dsasd','sds','dsf',NULL,NULL,'sdf','er','er',NULL,NULL,NULL,NULL,'return_offer true|',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),(2,'app1',NULL,NULL,NULL,NULL,'dest1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'return_offer true|',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL),(3,'Gdansk Airport, Gdańsk, Polska','2016/12/08 20:00','Diagoras International Airport, Rodos, Paradisi, Grecja','2017/02/28 11:00','Gdańsk','Rodos','Gdańsk','Rodos','Continental','2016/12/08 20:00','2016/12/29 22:00','129x12x12','1','RyanAir','RyanAir','NaN|NaN','NaN|NaN','','','123','kiteboards',NULL,NULL,'','GD1990','WE1791','return_offer true|price_mode 2|price_currency PLN|dim_unit 0|advanced_basic_mode 1|','2e8adb89b900496591673290e953460d.png','54.3788433|18.468075','36.402288|28.090220000000045','1',NULL,NULL,NULL,NULL),(4,'Kraków Balice Johannes Paul II Lufthavn, Balice, Polska','2017/01/30 21:00','Port lotniczy Kos, Kos, Iraklidis, Jednostka regionalna Kos, Grecja','2017/01/30 21:00','Kraków','Kos','Kraków','Kos','Nice nad warm Appartments','2017/01/10 18:00','2017/01/31 18:00','129x12x12','12','WizzAir','WizzAir','27','27',NULL,NULL,'56','Windserfing boards kite surfing, wakeboard',NULL,NULL,NULL,'KR9090','KOS7865','return_offer true|price_mode 3|price_currency PLN|','','50.0769776|19.788118800000007','36.8005927|27.088054899999975','4',NULL,NULL,NULL,NULL),(20,'José Martí International Airport, Hawana, Kuba','2017/02/15 11:38','Havana AirPort','2017/02/02 15:00','Wrocław','Havana','','','Havana','2017/01/30 15:21','2017/02/04 15:21','129 x12x12','12','RyanAir','RyanAir','270','270',NULL,NULL,'123','kiteboards',NULL,NULL,NULL,'WRC1980','HVN1879','return_offer false|price_mode 2|','','22.9915431|-82.410078',NULL,'5',NULL,NULL,NULL,NULL),(21,'Gdansk airport','2017/01/31 14:00','Honolulu','2017/03/24 16:00','Gdańsk','Hawaii',NULL,NULL,'Honolulu','2017/02/15 15:24','2017/02/28 15:24','129 x12x12',NULL,'LuftHansa','LuftHansa','45','45',NULL,NULL,'45','kiteboards',NULL,NULL,NULL,'NE2221','NE2221','return_offer true|',NULL,NULL,NULL,'6',NULL,NULL,NULL,NULL),(22,'Gdansk airport','2017/02/24 12:00','Ibiza airport','2017/03/04 12:00','Gdansk','Ibiza','','','Ibiza Hotel','2017/01/30 15:30','2017/02/04 15:30','129 x12x12','66',NULL,NULL,'270','27',NULL,NULL,'31','asdasd',NULL,NULL,NULL,'GDA1897','IBI7863','return_offer false|price_mode 2|price_currency PLN|','','-25.363|131.04399999999998',NULL,'7',NULL,NULL,NULL,NULL),(23,'Lotnisko Chopina, Żwirki i Wigury, Warszawa, Polska','2017/02/18 23:17','Split Airport, Cesta Doktor Franje Tuđmana, Kaštel Štafilić, Chorwacja','2017/02/28 23:17','Warszawa','Split','Warszawa','Split','NiceHotel','2018/10/13 15:41','2018/10/20 15:41','129 x12x12',NULL,NULL,NULL,'271','271',NULL,NULL,'78','kiteboards',NULL,NULL,NULL,'GD1990','NE2221','return_offer true|price_mode 1|price_currency PLN|','','52.16723689999999|20.967891099999974','43.53862600000001|16.29839620000007','8',NULL,NULL,NULL,NULL),(24,'Poznań Air Port','2017/03/19 15:17','Malediwy Air Port','2017/03/26 15:17','Poznań','Malediwy',NULL,NULL,'Malediwy Hotel','2017/03/19 13:22','2017/03/26 13:00','129 x12x12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'400','kiteboards',NULL,NULL,NULL,'GD1990','WE1791','return_offer true|','cff1755309b848bf8350aec0b61582bc.png',NULL,NULL,'9',NULL,NULL,NULL,NULL),(25,'Port Lotniczy Poznań Ławica im. Henryka Wieniawskiego, Bukowska, Poznań, Polska','2017/03/21 15:22','Port Lotniczy Poznań Ławica im. Henryka Wieniawskiego, Bukowska, Poznań, Polska','2017/03/21 15:23','Poznań','Rodos',NULL,NULL,'Continental','2017/03/15 15:23','2016/12/29 22:00','129 x12x12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'400','kiteboards',NULL,NULL,NULL,'GD1990','WE1791','return_offer true|','2792bb8b0af14d74b8979dbf32f51c92.png','52.4199508|16.828615799999966','52.4199508|16.828615799999966','10',NULL,NULL,NULL,NULL),(26,'Port Lotniczy Gdańsk im. L. Wałęsy, Gdańsk, Polska','2016/12/08 20:00','Gdyńskich Kosynierów, Gdańsk, Polska','2017/02/28 11:00','Gdańsk','Rodos','Gdańsk','Rodos','Continental','2016/12/08 20:00','2016/12/29 22:00','129 x12x12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'400','kiteboards',NULL,NULL,NULL,'GD1990','WE1791','return_offer true|','605e20be64694f68b891b62a82749210.png','54.3788433|18.468075','54.3606663|18.645803','11',NULL,NULL,NULL,NULL),(27,'Lotnisko Chopina, Żwirki i Wigury, Warszawa, Polska','2017/03/22 16:43','Port Lotniczy Gdańsk im. L. Wałęsy, Gdańsk, Polska','2017/03/22 16:45','Warszawa','Rodos',NULL,NULL,'Continental','2017/03/22 16:45','2017/03/26 13:00','129 x12x12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30','kiteboards',NULL,NULL,NULL,'RD1990','WE1791','return_offer true|','5217fac88a584f2f95a31ac8a8eec46f.png','52.16723689999999|20.967891099999974','54.3788433|18.468075','12',NULL,NULL,NULL,NULL),(28,'Port lotniczy Berlin Schonefeld, Berlin, Niemcy','2017/04/30 14:46','Rodos International Airport, Paradisi, Grecja','2017/05/06 14:47','Berlin','Rodos','Warszawa','Rodos','Continental','2017/04/30 14:45','2017/05/06 14:46','129x12x12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'400','kiteboards',NULL,NULL,NULL,'RD1990','NE2221','return_offer true|','b2bf1aafc4434bbdaf26132a3d0ae8f0.png','52.38544109999999|13.521614799999952','36.402288|28.090220000000045','13',NULL,NULL,NULL,NULL),(32,'Port Lotniczy Gdańsk im. L. Wałęsy, Gdańsk, Polska','2016/12/08 20:00','','','Gdańsk','Rodos',NULL,NULL,'Continental','2016/12/08 20:00','','129x12x12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30','kiteboards',NULL,NULL,NULL,'RD1990','','return_offer false|','2b5e414d4e4143e0969fb341f0989d77.png','54.3788433|18.468075','-25.363|131.04399999999998','14',NULL,NULL,NULL,NULL),(34,'Kraków Balice Johannes Paul II Lufthavn, Balice, Polska','2016/12/08 20:00','Fuerteventura Airport, Puerto del Rosario, Hiszpania','2017/06/03 00:01','Kraków','Fuerta','Kraków','Fuerta','palace hotel','2017/05/03 23:58','2017/05/17 23:59','129x12x12','12',NULL,NULL,NULL,NULL,NULL,NULL,'123','kiteboards',NULL,NULL,NULL,'KR9090','NE2221','return_offer true|price_mode 1|price_currency AFN|','25031858cce94beca94cf139d6f33f2d.png','50.0769776|19.788118800000007','28.4526212|-13.869424500000036','15',NULL,NULL,NULL,NULL),(36,'Port Lotniczy Wrocław S.A., Wrocław, Polska','2017/05/26 22:17','','','Wrocław','Manila','','','Continental','2017/05/16 22:16','','129x12x12','12',NULL,NULL,NULL,NULL,NULL,NULL,'30','Windserfing boards kite surfing, wakeboard',NULL,NULL,NULL,'RD1990','','return_offer true|price_mode 3|price_currency PLN|','f9c03f58587842fcb1823dc99382715b.png','-25.363|131.04399999999998','-25.363|131.04399999999998','16',NULL,NULL,NULL,NULL),(39,'Gdansk Lech Walesa Airport, ul. Juliusza Słowackiego, Gdańsk, Polska','2016/12/08 20:00','Port lotniczy Panama, Avenida Domingo Díaz, Panamá, Panama','2017/03/04 12:00','Gdańsk','Panama','Gdańsk','Panama','Continental','2016/12/08 20:00','2017/03/26 13:00','129x12x12','1','Panama City Beach, Floryda, Stany Zjednoczone','Gdańsk Oliwa SKM, Gdańsk, Polska','30.1765914|-85.8054879','54.41006859999999|18.571352400000023','2018/03/29 19:00','2018/03/29 19:00','123','kiteboards',NULL,NULL,NULL,'GD1990','HVN1879','return_offer true|price_mode 1|price_currency PLN|dim_unit in|','b114d49cdf484f7b806d58229697061e.png','54.3788433|18.468075','9.0667013|-79.38737429999998','1',NULL,NULL,NULL,NULL),(40,'Lotnisko Bydgoszcz-Biedaszkowo, Biedaszkowo, Bydgoszcz, Polska','2016/12/08 20:00','','','Bydgoszcz','Shenzou','','','Malediwy Hotel','2018/01/18 01:00','','129x12x12','12',NULL,NULL,NULL,NULL,NULL,NULL,'30','kiteboards',NULL,NULL,NULL,'RD1990','','return_offer false|price_mode 1|price_currency PLN|','62e6146a1dce489b8bf0f62c67f25a78.png','53.09395500000001|17.998449599999958',NULL,'5',NULL,NULL,NULL,NULL),(41,'Port lotniczy Wilno, Rodūnios kelias, Wilno, Litwa','2016/12/08 20:00','','','Wilno','Sao Paulo','','','Continental','2018/01/22 15:00','','129x12x12','12',NULL,NULL,NULL,NULL,NULL,NULL,'30','kiteboards',NULL,NULL,NULL,'GD1990','','return_offer false|price_mode 2|price_currency EUR|','cd8f6a414fa64577945dea061da8c928.png','-25.363|131.04399999999998',NULL,'1',NULL,NULL,NULL,NULL),(42,'Pomorska 94B, Gdańsk, Polska','2016/12/08 20:00','','','Gdańsk','Rodos','','',NULL,'2016/12/08 20:00','','129x12x12','12',NULL,NULL,NULL,NULL,NULL,NULL,'30','kiteboards',NULL,NULL,NULL,'GD1990','','return_offer false|price_mode 1|price_currency BIF|dim_unit in|','7ebef16b34504fcbb05c54faaa0b2147.png','54.41731600000001|18.577853300000015',NULL,'5',NULL,NULL,NULL,NULL),(43,'Air Canada Centre, Toronto, Ontario, Kanada','2018/01/25 13:00','',NULL,'Torronto','Hawaii',NULL,NULL,NULL,'2018/01/25 13:00',NULL,'129x12x12','12',NULL,NULL,NULL,NULL,NULL,NULL,'30','kiteboards',NULL,NULL,NULL,'KR9090',NULL,'return_offer false|price_mode 1|price_currency CAD|','85596c135f3d4a19a5d206590b4b0879.png','43.643887|-79.37818900000002',NULL,'5',NULL,NULL,NULL,NULL),(45,'Lotnisko Bydgoszcz-Biedaszkowo, Biedaszkowo, Bydgoszcz, Polska','2018/03/31 18:00','','','Gdańsk','Bydgoszcz','','',NULL,'2018/03/22 18:00','','30x30x30','12','Bydgoszcz Główna, Zygmunta Augusta, Bydgoszcz, Polska','','53.1347984|17.9919936',NULL,'2018/03/29 19:00','','30','kiteboards',NULL,NULL,NULL,'','','return_offer false|price_mode 1|price_currency USD|dim_unit cm|','','53.09395500000001|17.998449599999958',NULL,'1',NULL,NULL,NULL,NULL),(46,'Goleniow Airport, Glewice, Goleniów, Polska','2018/03/28 16:00','Malta International Airport MLA, Luqa, Malta','2018/04/12 18:55','Goleniów','Malta','Goleniów','Malta',NULL,'2018/03/28 19:00','2018/04/12 18:54','129x30x30','12','Malta, Air','Szczecin PKP','35.85411349999999|14.48327949999998','53.419332|14.549649999999929','2018/03/28 22:00','2018/04/12 22:00','125','kiteboards',NULL,NULL,NULL,'','','return_offer true|price_mode 2|price_currency PLN|dim_unit cm|','','53.58587740000001|14.902781000000004','35.85411349999999|14.48327949999998','5',NULL,NULL,NULL,NULL),(47,'Gdańsk, Polska','2018/03/28 19:00','','','Gdańsk','Malediwy','','',NULL,'2016/12/08 20:00','','129x30x30','12','Male International Airport MLE, Airport Main Road, Malé, Malediwy','Szczecin PKP','4.188782700000001|73.52858049999998',NULL,'2018/03/28 23:00','2018/04/12 22:00','12','kiteboards',NULL,NULL,NULL,'','','return_offer false|price_mode 3|price_currency PLN|dim_unit cm|','','54.35202520000001|18.64663840000003',NULL,'1',NULL,NULL,NULL,NULL),(48,'Port Lotniczy Poznań-Ławica im. Henryka Wieniawskiego, Bukowska, Poznań, Polska','2018/03/28 19:00','Kos International Airport Ιppokratιs Operated by Fraport Greece, Antimachia, Kos, Grecja','2018/03/29 19:00','Poznań','Kos','Poznań','Kos',NULL,'2018/03/29 19:00','2018/03/29 19:00','129x30x30','12','Kos Port','Pozna','36.8005927|27.088054899999975','52.3664623|16.934581999999978','2018/03/29 22:00','2018/03/31 19:00','30','kiteboards',NULL,NULL,'','','','return_offer true|price_mode 3|price_currency PLN|dim_unit cm|','','52.4199508|16.828615799999966','36.8005927|27.088054899999975','1',NULL,NULL,NULL,NULL),(49,'aleja Legionów, Gdańsk, Polska','2018/03/29 19:00','Kraków Główny, Kraków, Polska','2018/03/29 19:00','Gdańsk','Rodos','Kraków','Rodos',NULL,'2016/12/08 20:00','2018/03/29 19:00','129x30x30','12','Gdańsk, Polska','Kraków Główny, Kraków, Polska','54.35202520000001|18.64663840000003','50.0685|19.94749999999999','2018/03/29 19:00','2018/03/29 19:00','30','kiteboards',NULL,NULL,'Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz Mój dłuuuuuuugi komentarz','','','return_offer true|price_mode 2|price_currency PLN|dim_unit cm|advanced_basic_mode 1|','1ad6983b1fa445e4a7e3fd6ef0b2e2d1.png','54.3862266|18.611706599999934','50.0685|19.94749999999999','1',NULL,NULL,NULL,NULL),(50,'Gdańsk, Polska','2018/04/18 09:00','',NULL,'Gdańsk','Rodos',NULL,NULL,NULL,'2016/12/08 20:00',NULL,'129x30x30','12','Rodos wyspa, Rodos, Grecja','','36.4340533|28.2176379',NULL,'2018/04/18 09:00',NULL,'30','kiteboards',NULL,NULL,NULL,NULL,NULL,'return_offer false|price_mode 1|price_currency PLN|dim_unit in|',NULL,'54.35202520000001|18.64663840000003',NULL,'1',NULL,NULL,NULL,NULL),(53,'','','','','Toronto','Hawaii','','',NULL,'2016/12/08 20:00','',NULL,'','','',NULL,NULL,'','','69','kiteboards',NULL,NULL,'','','','return_offer false|price_mode 1|price_currency AZN|dim_unit 0|advanced_basic_mode 0|','2af82a5ffa344d55b7023c592f2f9379.png',NULL,NULL,'',NULL,NULL,NULL,NULL),(54,'','','','','Gdańsk','Zakynthos','Gdańsk','Zakynthos',NULL,'2018/05/28 15:03','2018/06/19 01:00',NULL,'','','',NULL,'-25.363|131.04399999999998','','','30','suitcase',NULL,NULL,'','','','return_offer true|price_mode 1|price_currency BHD|dim_unit 0|advanced_basic_mode 0|','d31cb52f5d0645ebba6491078dcfd807.png',NULL,'-25.363|131.04399999999998','',NULL,NULL,NULL,NULL),(55,'',NULL,'',NULL,'Olsztyn','Torronto',NULL,NULL,NULL,'2018/05/18 14:00',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'30','kiteboards',NULL,NULL,NULL,NULL,NULL,'return_offer false|price_mode 1|price_currency BIF|dim_unit 0|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Targowa 1, Biała Piska, Polska','2018/05/19 00:00','','','Biała Piska','Olsztyn','','',NULL,'2018/05/19 00:00','','129x30x30','32','Ludwika Zamenhofa 1, Olsztyn, Polska','','53.7894012|20.49626139999998',NULL,'2018/05/19 00:00','','30','jajka, ogórki',NULL,NULL,'Witam, jade furmanką do Olsztyna. Chcesz coś tam zawieść, zapraszam','','','return_offer false|price_mode 1|price_currency PLN|dim_unit cm|advanced_basic_mode 1|','b6a4255689844cc3871f4dd8a47fb733.png','53.609894|22.058834899999965',NULL,'50',NULL,NULL,NULL,NULL),(57,'','','','2018/09/24 23:00','Pisz','Ełk','','',NULL,'2018/10/13 00:10','2018/10/24 23:00',NULL,'','','',NULL,NULL,'','2018/09/24 23:00','123','kiteboards',NULL,NULL,'','','','return_offer false|price_mode 3|price_currency BMD|dim_unit 0|advanced_basic_mode 0|','504381514be5433f8bcb34c9ddd40e8b.png',NULL,NULL,'',NULL,NULL,NULL,NULL),(58,'',NULL,'',NULL,'Olsztyn','Trąbki',NULL,NULL,NULL,'2018/11/30 20:45',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'30','ski',NULL,NULL,NULL,NULL,NULL,'return_offer false|price_mode 1|price_currency PLN|dim_unit 0|advanced_basic_mode 0|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `Statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Statistics` (
  `id_stat` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_user_rate` int(11) NOT NULL,
  `id_offer_create` int(11) DEFAULT NULL,
  `id_offer_take` int(11) DEFAULT NULL,
  `rating` tinyint(1) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `create_date` varchar(45) NOT NULL,
  PRIMARY KEY (`id_stat`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `Statistics` WRITE;
/*!40000 ALTER TABLE `Statistics` DISABLE KEYS */;
INSERT INTO `Statistics` VALUES (1,39,34,3,NULL,5,'very good and nice offer','2017-01-04 17:24:22.551'),(2,37,34,3,NULL,3,'id_user 37 id_user_rate=34','2017-01-04 17:24:22.551'),(67,34,39,0,24,2,'Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well Nice but now very well','2018-10-09 01:16:42.093'),(108,39,34,0,4,5,'id_offer = 4  from user id 39','2018-10-11 13:26:14.225'),(111,34,41,0,3,4,'yyyyyy yyyyyyyy yyyyyyyyyyyyyyyyyyy yyy yyyyyyyyyyy yyyyyy yyyyyyyy yyyyyyyyyyyyyyyyyyy yyy yyyyyyyyyyy yyyyyy yyyyyyyy yyyyyyyyyyyyyyyyyyy yyy yyyyyyyyyyy yyyyyy yyyyyyyy yyyyyyyyyyyyyyyyyyy yyy yyyyyyyyyyy yyyyyy yyyyyyyy yyyyyyyyyyyyyyyyyyy yyy yyyyyyyyyyy yyyyyy yyyyyyyy yyyyyyyyyyyyyyyyyyy yyy','2018-10-15 18:17:36.776'),(112,34,39,0,4,4,'zzzzzzzzzzzzzz zzzzzzzzzzzzz zzz zzzzzzz zzzzzzzzz zzzzzzzzzzzzzz zzzzzzzzzzzzz zzz zzzzzzz zzzzzzzzz zzzzzzzzzzzzzz zzzzzzzzzzzzz zzz zzzzzzz zzzzzzzzz zzzzzzzzzzzzzz zzzzzzzzzzzzz zzz zzzzzzz zzzzzzzzz zzzzzzzzzzzzzz zzzzzzzzzzzzz zzz zzzzzzz zzzzzzzzz zzzzzzzzzzzzzz zzzzzzzzzzzzz zzz zzzzzzz zzzz','2018-10-15 18:27:01.561'),(113,41,34,0,3,3,'id_offer=3','2018-11-26 22:13:32.78'),(114,41,34,0,3,3,'id_offer=3','2018-11-26 22:13:41.151');
/*!40000 ALTER TABLE `Statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_simple`
--

DROP TABLE IF EXISTS `Statistics_simple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Statistics_simple` (
  `id_stat_simple` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `total_point_quantity` int(11) DEFAULT NULL,
  `total_users_quantity` int(11) DEFAULT NULL,
  `how_many_offer_create` int(11) DEFAULT NULL,
  `how_many_offer_take` int(11) DEFAULT NULL,
  `create_date` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_stat_simple`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_simple`
--

LOCK TABLES `Statistics_simple` WRITE;
/*!40000 ALTER TABLE `Statistics_simple` DISABLE KEYS */;
INSERT INTO `Statistics_simple` VALUES (1,34,0,0,0,0,NULL),(2,39,0,0,0,0,NULL),(3,40,NULL,NULL,NULL,NULL,NULL),(4,41,NULL,NULL,NULL,NULL,NULL),(8,45,NULL,NULL,NULL,NULL,NULL),(9,46,NULL,NULL,NULL,NULL,NULL),(10,47,NULL,NULL,NULL,NULL,NULL),(11,48,NULL,NULL,NULL,NULL,NULL),(16,53,NULL,NULL,NULL,NULL,NULL),(17,54,NULL,NULL,NULL,NULL,NULL),(18,55,NULL,NULL,NULL,NULL,NULL),(19,56,NULL,NULL,NULL,NULL,NULL),(20,55,NULL,NULL,NULL,NULL,NULL),(21,56,NULL,NULL,NULL,NULL,NULL),(22,57,NULL,NULL,NULL,NULL,NULL),(23,58,NULL,NULL,NULL,NULL,NULL),(24,59,NULL,NULL,NULL,NULL,NULL),(25,49,NULL,NULL,NULL,NULL,NULL),(30,53,NULL,NULL,NULL,NULL,NULL),(32,55,NULL,NULL,NULL,NULL,NULL),(37,60,NULL,NULL,NULL,NULL,NULL),(38,61,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Statistics_simple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `take_offer`
--

DROP TABLE IF EXISTS `Take_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Take_offer` (
  `id_take_offer` int(11) NOT NULL AUTO_INCREMENT,
  `id_create_offer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `comment` varchar(900) DEFAULT NULL,
  `your_app_place` varchar(45) DEFAULT NULL,
  `your_equ_weight` varchar(45) DEFAULT NULL,
  `your_equ_photo` varchar(200) DEFAULT NULL,
  `equipmnet` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `status_creator` varchar(45) DEFAULT NULL,
  `equ_amount` varchar(45) DEFAULT NULL,
  `your_equ_dimensions` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_take_offer`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `take_offer`
--

LOCK TABLES `Take_offer` WRITE;
/*!40000 ALTER TABLE `Take_offer` DISABLE KEYS */;
INSERT INTO `Take_offer` VALUES (8,1,39,'2017-01-18 18:01:43.811','Mieszko','air port WAW','5','my photo','kite board','ACTIVE','ACCEPTED',NULL,NULL),(9,9,40,'2017-02-11 23:22:33.504','hej hello','air port WAW','5','my photo','kite board','ACTIVE','WAITING...',NULL,NULL),(10,1,41,'2017-04-27 14:54:02.438','hi',NULL,'5',NULL,NULL,'ACTIVE','ACCEPTED','1',NULL),(11,7,39,'2017-05-15 22:19:09.936','hi',NULL,'5',NULL,'kite','ACTIVE','WAITING...',NULL,NULL),(12,10,39,'2017-12-05 18:34:11.56','fef',NULL,'25',NULL,'kite board','ACTIVE','ACCEPTED','1',NULL),(16,2,34,'2017-12-21 13:00:20.857','Hej hej1',NULL,'25',NULL,NULL,'ACTIVE','ACCEPTED','1',NULL),(17,29,34,'2018-02-19 19:51:38.239',NULL,NULL,'25',NULL,NULL,'REJECTED','REJECTED','1',NULL),(18,29,34,'2018-02-22 00:37:17.507','hej',NULL,'25',NULL,NULL,'ACTIVE','WAITING...','1',NULL),(19,27,40,'2018-02-22 11:39:02.094',NULL,NULL,'5',NULL,NULL,'ACTIVE','WAITING...','1',NULL),(20,9,34,'2018-03-10 15:54:08.556','dsdsad',NULL,'25',NULL,NULL,'ACTIVE','WAITING...','1',NULL),(21,44,41,'2018-11-26 22:12:16.436','nic',NULL,'5',NULL,NULL,'ACTIVE','ACCEPTED','2',NULL);
/*!40000 ALTER TABLE `Take_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todrop`
--

DROP TABLE IF EXISTS `Todrop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Todrop` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todrop`
--

LOCK TABLES `Todrop` WRITE;
/*!40000 ALTER TABLE `Todrop` DISABLE KEYS */;
/*!40000 ALTER TABLE `Todrop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_acc`
--

DROP TABLE IF EXISTS `User_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `User_acc` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `photo_avatar` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `priviliges` varchar(100) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `regulations` tinyint(1) DEFAULT NULL,
  `birthdate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_acc`
--

LOCK TABLES `User_acc` WRITE;
/*!40000 ALTER TABLE `User_acc` DISABLE KEYS */;
INSERT INTO `User_acc` VALUES (34,'trmkoszt','Szarłowski','82-100 Malbork, Zamkowa 11/1','trmkoszt@gmail.com','48|509392617','7a92d2016a1748ac97d3694eabf2816e.png','male','ROLE_USER',NULL,'sd9','$2a$12$SEu0y9O9E7qsDJJSFDPrJOQfDpQCBBS1nO30xB2ybfmUasV12pKbC',0,'1-11-1981'),(35,'Paweł Szarłowski','Paweł',NULL,'szory_new@o2.pl','505136479','df','df',NULL,NULL,'df','$2a$12$SEu0y9O9E7qsDJJSFDPrJOQfDpQCBBS1nO30xB2ybfmUasV12pKbC',0,NULL),(36,'Paweł Szarłowski','Paweł',NULL,'1szory@o2.pl','505136479','drf','df',NULL,NULL,'df','df',0,NULL),(37,'Jan Długosz','Paweł',NULL,'1szory@o2.pl','505136479','df','df',NULL,NULL,'df','df',0,NULL),(38,'Paweł Szarłowski','Paweł',NULL,'1szory@o2.pl','505136479','df','df',NULL,NULL,'df','df',0,NULL),(39,'Mieszko','Fejs',NULL,'fejs99@o2.pl','509563678','sd','male','ROLE_USER',NULL,'miechu99','$2a$12$SEu0y9O9E7qsDJJSFDPrJOQfDpQCBBS1nO30xB2ybfmUasV12pKbC',0,NULL),(40,'testusershare','testusershare',NULL,'testusershare@gmail.com','505136479','brak','make','ROLE_USER',NULL,NULL,'$2a$12$SEu0y9O9E7qsDJJSFDPrJOQfDpQCBBS1nO30xB2ybfmUasV12pKbC',0,NULL),(41,'Pawel','SurName1','','szory@o2.pl','48|505136479','cee94909927c43629a964475a92864ab.png','male','ROLE_USER',NULL,NULL,'$2a$12$SEu0y9O9E7qsDJJSFDPrJOQfDpQCBBS1nO30xB2ybfmUasV12pKbC',0,'1-1-2010'),(55,'shareyourbag2017','Szarłowski','Pomorska 94B/53','shareyourbag2017@gmail.com','48|509392617','f67a815833ef4e819caa7075e5981bbf.png',NULL,'ROLE_USER','2018-11-26 20:41:55.384',NULL,'$2a$12$I0FEmHGkjJJgcSBrFhRdgerrnPuXQ99bIx/Kg6GA/xSbviI/ffZtK',1,'1-1-2010');
/*!40000 ALTER TABLE `User_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `User_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `User_tokens` (
  `id_usr_token` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_usr_token`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='type: 0 - email 1 - sms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `User_tokens` WRITE;
/*!40000 ALTER TABLE `User_tokens` DISABLE KEYS */;
INSERT INTO `User_tokens` VALUES (22,34,'e8577dac-2b5c-434a-a903-be136d16013b','reg','2016-11-17 12:29:00.325','2016-12-01 12:29:00.325','0'),(23,35,'4b8e6246-8644-4e24-a3db-ff27645e8fbd','unreg','2016-11-18 15:48:33.469','2016-12-02 15:48:33.469','0'),(24,36,'26b786e2-eaab-49d1-a2a6-4aac9ecd64a0','unreg','2016-11-18 15:52:34.867','2016-12-02 15:52:34.867','0'),(25,37,'3ee10dea-0a24-45b3-ba23-b58dbc172aa2','unreg','2016-11-18 15:55:04.652','2016-12-02 15:55:04.652','0'),(26,38,'d2f45f67-33ac-40b3-954c-730fd4708dfc','unreg','2016-11-18 16:34:19.73','2016-12-02 16:34:19.73','0'),(27,39,'ec0af4c3-d058-4e69-8b09-e1eeca7591d3','reg','2016-12-30 18:51:30.398','2017-01-13 18:51:30.398','0'),(28,40,'17c71a3d-ba14-404e-801d-7cb490924b0e','reg','2017-02-11 19:48:53.159','2017-02-25 19:48:53.159','0'),(29,41,'1480b460-979c-4a02-a725-b741a9c29909','reg','2017-03-16 00:29:13.776','2017-03-30 01:29:13.776','0'),(40,41,'508499','reg','2018-07-29 23:44:13.481','2018-07-29 23:48:13.481','1'),(44,34,'621770','reg','2018-09-25 11:50:24.049','2018-09-25 11:52:24.049','1'),(45,49,'6eaef5eb-0115-4c85-a59e-5dbd478b60d3','reg','2018-09-26 10:37:04.352','2018-10-10 10:37:04.352','0'),(52,55,'3146229b-816d-4e25-a75d-f5af26136d52','reg','2018-11-26 20:42:01.845','2018-12-10 20:42:01.845','0'),(53,55,'575237','reg','2018-11-26 22:21:11.083','2018-11-26 23:53:11.083','1');
/*!40000 ALTER TABLE `User_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-14 23:19:31
