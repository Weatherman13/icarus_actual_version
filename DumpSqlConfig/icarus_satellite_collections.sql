-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: icarus
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
-- Table structure for table `satellite_collections`
--

DROP TABLE IF EXISTS `satellite_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satellite_collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satellite_collections`
--

LOCK TABLES `satellite_collections` WRITE;
/*!40000 ALTER TABLE `satellite_collections` DISABLE KEYS */;
INSERT INTO `satellite_collections` VALUES (5,'ISRO Resourcesat'),(6,'Vegetation Monitoring'),(7,'UAS'),(8,'Sentinel'),(10,'ASTER Collections'),(12,'MODIS BRDF and Albedo - V6'),(13,'MODIS Gross Primary Productivity - V6'),(14,'MODIS LAI/FPAR - V6'),(15,'MODIS Land Cover - V6'),(16,'MODIS Land Surface Reflectance - V6'),(18,'MODIS Land Surface Reflectance - V6.1'),(19,'MODIS Land Surface Temp and Emiss - V6'),(20,'MODIS Land Surface Temp and Emiss - V6.1'),(21,'MODIS MAIAC - V6'),(22,'MODIS New Evatpotranspiration - V6'),(23,'MODIS Thermal Anomalies and Fire - V6'),(24,'MODIS Thermal Anomalies and Fire - V6.1'),(25,'MODIS Vegetation Indices - V6'),(26,'MODIS Water Mask - V6'),(27,'ECOSTRESS'),(29,'Global Forest Cover Change(GFCC)'),(30,'VIIRS LAI/FPAR'),(31,'VIIRS Land Surface Temp and Emiss'),(32,'VIIRS Surface Reflectance'),(33,'VIIRS Thermal Anomalies and Fire'),(34,'CONUS Collection 1'),(35,'Landsat C2 U.S Analysis Ready Data (ARD)'),(36,'Landsat Collection 2 Level-2'),(37,'Landsat Collection 2 Level-1'),(39,'Landsat Collection 1 Level-3'),(40,'Landsat C1 U.S. Analysis Ready Data(ARD)'),(41,'Landsat Collection 1 Level-2 (On-demand)'),(42,'Landsat Collection 1 Level-1'),(43,'Landsat Legacy'),(44,'ISERV'),(45,'Global Fiducials'),(46,'EO-1'),(47,'Digital Maps'),(48,'AVHRR'),(49,'Aerial Imagery');
/*!40000 ALTER TABLE `satellite_collections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 21:57:41
