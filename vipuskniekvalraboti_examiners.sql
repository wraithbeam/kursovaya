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
-- Table structure for table `examiners`
--

DROP TABLE IF EXISTS `examiners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examiners` (
  `id_entry` int NOT NULL AUTO_INCREMENT,
  `idVKRforExam` int NOT NULL,
  `idExamExpert` int NOT NULL,
  `examRole` int NOT NULL,
  `examGrade` int DEFAULT NULL,
  PRIMARY KEY (`id_entry`),
  KEY `VKR_idx` (`idVKRforExam`),
  KEY `ExpertForExamGroup_idx` (`idExamExpert`),
  KEY `Role_idx` (`examRole`),
  CONSTRAINT `Expert_fro_exam_group` FOREIGN KEY (`idExamExpert`) REFERENCES `experts` (`idExpert`),
  CONSTRAINT `Role` FOREIGN KEY (`examRole`) REFERENCES `roles` (`id_role`),
  CONSTRAINT `VKR_for_exam_group` FOREIGN KEY (`idVKRforExam`) REFERENCES `vkr` (`idVKR`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examiners`
--

LOCK TABLES `examiners` WRITE;
/*!40000 ALTER TABLE `examiners` DISABLE KEYS */;
INSERT INTO `examiners` VALUES (1,0,0,0,4),(2,0,5,1,5),(3,0,3,2,5),(4,0,6,2,5),(5,1,8,2,5),(6,1,6,0,4),(7,1,2,1,4),(8,1,1,2,3),(9,1,9,2,4),(10,1,3,2,5),(11,2,2,0,4),(12,2,1,1,3),(13,2,2,2,4),(14,2,3,2,3),(15,2,4,2,3),(16,3,8,0,4),(17,3,6,1,4),(18,3,3,2,4),(19,3,4,2,4),(20,3,1,2,4),(21,4,3,0,5),(22,4,1,1,4),(23,4,4,2,5),(24,4,5,2,4),(25,4,6,2,5),(26,5,0,0,3),(27,5,7,1,4),(28,5,2,2,4),(29,5,8,2,4),(30,5,9,2,4),(31,6,4,0,3),(32,6,5,1,3),(33,6,1,2,3),(34,6,6,2,4),(35,6,3,2,3),(36,8,9,0,3),(37,8,6,1,3),(38,8,5,2,4),(39,8,2,2,3),(40,8,8,2,3),(41,8,1,2,3),(42,9,5,0,4),(43,9,2,1,5),(44,9,1,2,3),(45,9,6,2,4),(46,9,8,2,5);
/*!40000 ALTER TABLE `examiners` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-26 21:00:28
