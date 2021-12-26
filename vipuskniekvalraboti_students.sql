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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `idStudents` int NOT NULL,
  `nameStudent` varchar(45) NOT NULL,
  `surnameStudent` varchar(45) NOT NULL,
  `patronymicStudent` varchar(45) NOT NULL,
  `gradeBookNumber` int NOT NULL,
  `receiptDate` date NOT NULL,
  `graduationDate` date DEFAULT NULL,
  `facultyStudent` int NOT NULL,
  `specialityStudent` int NOT NULL,
  `group` varchar(45) NOT NULL,
  `levelStudent` int DEFAULT NULL,
  `formStudent` int DEFAULT NULL,
  `studyPlaceStudent` int DEFAULT NULL,
  PRIMARY KEY (`idStudents`),
  KEY `Faculty_idx` (`facultyStudent`),
  KEY `Specityial_idx` (`specialityStudent`),
  KEY `StudyPlace_idx` (`studyPlaceStudent`),
  KEY `StudyForm_idx` (`formStudent`),
  KEY `StudyLevel_idx` (`levelStudent`),
  CONSTRAINT `FacultyForStudents` FOREIGN KEY (`facultyStudent`) REFERENCES `faculties` (`idFaculty`),
  CONSTRAINT `SpecityialForStudents` FOREIGN KEY (`specialityStudent`) REFERENCES `speciality` (`idSpeciality`),
  CONSTRAINT `StudyForm` FOREIGN KEY (`formStudent`) REFERENCES `study form` (`idStudyForm`),
  CONSTRAINT `StudyLevel` FOREIGN KEY (`levelStudent`) REFERENCES `study level` (`idStudylevel`),
  CONSTRAINT `StudyPlaceForStudents` FOREIGN KEY (`studyPlaceStudent`) REFERENCES `studyplace` (`idStudyPlace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Тимофей','Сергеев','Кириллович',22001,'2012-08-20','2016-05-21',1,3,'УП-141',0,0,2),(2,'Ольга','Титова','Тимуровна',22002,'2008-08-20','2012-06-17',2,10,'ЛИЦ-251',0,0,1),(3,'Мария','Соколова','Даниловна',22003,'2012-08-20','2017-07-20',3,1,'РИП-342',0,2,1),(4,'Эмма','Спиридонова','Михайловна',22004,'2005-08-20','2009-07-21',4,6,'УК-442',0,0,3),(5,'Варвара','Лукьянова','Данииловна',22005,'2010-08-20','2014-06-20',5,7,'ФК-551',1,0,3),(6,'Зоя','Иванова','Денисовна',22006,'2008-08-20','2012-07-21',6,4,'ГП-641',0,0,5),(7,'Максим','Комаров','Давидович',22007,'2013-08-20','2017-07-20',7,5,'ПИП-741',0,1,3),(8,'Ева','Рыбакова','Михайловна',22008,'2012-08-20','2016-08-20',1,3,'УП-141',0,0,2),(9,'Полина','Глушкова','Ивановна',22009,'2008-08-20','2012-07-20',2,10,'ЛИЦ-251',0,0,1),(10,'Егор','Сазонов','Артурович',22010,'2015-08-20','2021-07-20',3,2,'СИП-351',1,0,1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
