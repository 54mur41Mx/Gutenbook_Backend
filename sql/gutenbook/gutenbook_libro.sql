-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gutenbook
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `libroID` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `url` varchar(300) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `anoPublicacion` year NOT NULL,
  `precio` float NOT NULL,
  `pais` varchar(50) NOT NULL,
  `editorial` varchar(50) NOT NULL,
  PRIMARY KEY (`libroID`),
  UNIQUE KEY `url_UNIQUE` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'El misterioso caso de Styles','Agatha Christie','https://m.media-amazon.com/images/I/71oG6bPBhlL._AC_UL480_FMwebp_QL65_.jpg','Misterio',2020,298,'USA','Planeta'),(2,'Un cadáver en la biblioteca','Agatha Christie','https://m.media-amazon.com/images/I/71eMXWTDV8L._AC_UL480_FMwebp_QL65_.jpg','Misterio',2021,189,'USA','Planeta'),(3,'Asesinato en el Orient Express','Agatha Christie','https://m.media-amazon.com/images/I/71wvFBmZ2SL._AC_UL480_FMwebp_QL65_.jpg','Misterio',2019,298,'USA','Planeta'),(4,'El asesinato de Roger Ackroyd','Agatha Christie','https://m.media-amazon.com/images/I/71ifVRTsgVL._AC_UL480_FMwebp_QL65_.jpg','Misterio',2020,298,'USA','Planeta'),(5,'Muerte en el Nilo','Agatha Christie','https://m.media-amazon.com/images/I/41UgFzGaMPL._AC_UL480_FMwebp_QL65_.jpg','Misterio',2021,148,'USA','Planeta'),(6,'Coraline','Neil Gaiman','https://m.media-amazon.com/images/I/81xQRYsOu6S._AC_UL480_FMwebp_QL65_.jpg','Fantasía',2022,446,'USA','Penguin Random House'),(7,'El Libro del Cementerio','Neil Gaiman','https://m.media-amazon.com/images/I/71E7ktEDlFL._AC_UL480_FMwebp_QL65_.jpg','Fantasía',2018,123,'USA','Penguin Random House'),(8,'Neverwhere','Neil Gaiman','https://m.media-amazon.com/images/I/91rdO4Y2PFL._AC_UL480_FMwebp_QL65_.jpg','Fantasía',2019,271,'USA','Penguin Random House'),(9,'La joven durmiente y el huso','Neil Gaiman','https://m.media-amazon.com/images/I/91FwVoY2QiL._AC_UL480_FMwebp_QL65_.jpg','Fantasía',2020,192,'USA','Penguin Random House'),(10,'Mitos nórdicos','Neil Gaiman','https://m.media-amazon.com/images/I/81vBbuYZh8L._AC_UL480_FMwebp_QL65_.jpg','Fantasía',2022,139,'USA','Penguin Random House'),(11,'Stardust','Neil Gaiman','https://m.media-amazon.com/images/I/81ccy-9Z+yL._AC_UL480_FMwebp_QL65_.jpg','Fantasía',2017,239,'USA','Penguin Random House');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 20:52:31
