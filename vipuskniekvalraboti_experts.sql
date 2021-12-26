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
-- Table structure for table `experts`
--

DROP TABLE IF EXISTS `experts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experts` (
  `idExpert` int NOT NULL,
  `nameExpert` varchar(45) NOT NULL,
  `surnameExpert` varchar(45) NOT NULL,
  `patronymicExpert` varchar(45) NOT NULL,
  `academicTitleExpert` int DEFAULT NULL,
  `academicDegreeExpert` int DEFAULT NULL,
  `facultyExpert` int DEFAULT NULL,
  `kafedraExpert` int DEFAULT NULL,
  `workExpert` int DEFAULT NULL,
  `postExpert` int DEFAULT NULL,
  PRIMARY KEY (`idExpert`),
  KEY `Faculty_idx` (`facultyExpert`),
  KEY `Kafedra_idx` (`kafedraExpert`),
  KEY `WorkPlace_idx` (`workExpert`),
  KEY `WorkPost_idx` (`postExpert`),
  KEY `Title_idx` (`academicTitleExpert`),
  KEY `Degree_idx` (`academicDegreeExpert`),
  CONSTRAINT `Degree` FOREIGN KEY (`academicDegreeExpert`) REFERENCES `academiс degree` (`idAcademiсDegree`),
  CONSTRAINT `FacultyForExperts` FOREIGN KEY (`facultyExpert`) REFERENCES `faculties` (`idFaculty`),
  CONSTRAINT `KafedraForExperts` FOREIGN KEY (`kafedraExpert`) REFERENCES `kaferdres` (`id_kaferdes`),
  CONSTRAINT `WorkPostForExperts` FOREIGN KEY (`postExpert`) REFERENCES `posts` (`idPosts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experts`
--

LOCK TABLES `experts` WRITE;
/*!40000 ALTER TABLE `experts` DISABLE KEYS */;
INSERT INTO `experts` VALUES (0,'Милана','Серова','Романовна',0,0,1,3,0,1),(1,'Сафия','Антонова','Викторовна',1,1,1,0,0,2),(2,'Софья','Кольцова','Александровна',1,1,3,11,0,3),(3,'Макар','Кудряшов','Егорович',0,0,5,22,0,5),(4,'Элина','Павловская','Дмитриевна',1,1,7,35,0,4),(5,'Вадим','Хромов','Львович',0,0,3,13,0,3),(6,'Екатерина','Виноградова','Давидовна',1,1,2,8,0,4),(7,'Виктория','Москвина','Кирилловна',NULL,0,NULL,NULL,3,8),(8,'Александра','Комиссарова','Максимовна',0,0,4,17,0,1),(9,'Алина','Терентьева','Владимировна',1,1,2,6,0,2);
/*!40000 ALTER TABLE `experts` ENABLE KEYS */;
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
