/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: DDL
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `DEPARTAMENTOS`
--

DROP TABLE IF EXISTS `DEPARTAMENTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTAMENTOS` (
  `codigo_k` int(11) NOT NULL,
  `descripcion` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`codigo_k`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTAMENTOS`
--

LOCK TABLES `DEPARTAMENTOS` WRITE;
/*!40000 ALTER TABLE `DEPARTAMENTOS` DISABLE KEYS */;
INSERT INTO `DEPARTAMENTOS` VALUES
(100,'RRHH'),
(101,'Finanzas'),
(102,'Sistemas'),
(103,'Tesoreria');
/*!40000 ALTER TABLE `DEPARTAMENTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLEADOS`
--

DROP TABLE IF EXISTS `EMPLEADOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLEADOS` (
  `LEGAJO_K` int(11) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `DOMICILIO` varchar(20) DEFAULT NULL,
  `LOCALIDAD` varchar(30) DEFAULT NULL,
  `CODIGO_FK` int(11) NOT NULL,
  PRIMARY KEY (`LEGAJO_K`),
  KEY `fk_empleados` (`CODIGO_FK`),
  CONSTRAINT `fk_empleados` FOREIGN KEY (`CODIGO_FK`) REFERENCES `DEPARTAMENTOS` (`codigo_k`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLEADOS`
--

LOCK TABLES `EMPLEADOS` WRITE;
/*!40000 ALTER TABLE `EMPLEADOS` DISABLE KEYS */;
INSERT INTO `EMPLEADOS` VALUES
(1,'Gomez','Nazca 920','Capital Federal',102),
(2,'Perez','Argerich 1030','Capital Federal',100),
(3,'Vazquez','Sarmiento 450','Ramos Mejía',102),
(4,'Lopez','Alsina 720','Avellaneda',101);
/*!40000 ALTER TABLE `EMPLEADOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTOS`
--

DROP TABLE IF EXISTS `PRODUCTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTOS` (
  `ID` int(11) NOT NULL,
  `IMPORTADOR` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTOS`
--

LOCK TABLES `PRODUCTOS` WRITE;
/*!40000 ALTER TABLE `PRODUCTOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'DDL'
--
