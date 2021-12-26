-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vipuskniekvalraboti
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `vkr`
--

DROP TABLE IF EXISTS `vkr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vkr` (
  `idVKR` int NOT NULL,
  `idStudentForVKR` int NOT NULL,
  `theme` varchar(512) NOT NULL,
  `dateOfReceipt` date DEFAULT NULL,
  `gradeVKR` int DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `additions` int DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`idVKR`),
  KEY `Student_idx` (`idStudentForVKR`) /*!80000 INVISIBLE */,
  CONSTRAINT `StudentForVKR` FOREIGN KEY (`idStudentForVKR`) REFERENCES `students` (`idStudents`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vkr`
--

LOCK TABLES `vkr` WRITE;
/*!40000 ALTER TABLE `vkr` DISABLE KEYS */;
INSERT INTO `vkr` VALUES (0,1,'Управление персоналом отеля','2015-06-20',5,87,5,'VKR\\0'),(1,2,'Организация поставок природных ресурсов','2007-08-20',4,72,12,'VKR\\1'),(2,3,'Разработка онлайн сервиса','2009-07-20',3,77,14,'VKR\\2'),(3,4,'Написание бизнесс плана парикмахерской','2007-07-20',4,81,5,'VKR\\3'),(4,5,'Разработка условий кредитования','2008-07-20',5,90,15,'VKR\\4'),(5,6,'Культ прав граждан в современном обществе','2002-06-20',5,123,15,'VKR\\5'),(6,7,'Исторически значимые ошибки перевода с мертвых языков','2001-07-20',4,77,21,'VKR\\6'),(7,8,'Организация зон отдыха на промышленных предприятиях','2015-07-20',3,85,7,'VKR\\7'),(8,9,'Разработка сети поставок агропродукции','2007-07-20',3,73,6,'VKR\\8'),(9,10,'Разработка локальной сети на горнодобывающем предприятии','2009-07-20',4,140,23,'VKR\\9');
/*!40000 ALTER TABLE `vkr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-26 21:00:29
