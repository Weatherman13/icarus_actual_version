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
-- Table structure for table `satellite`
--

DROP TABLE IF EXISTS `satellite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satellite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `collection_id` int DEFAULT NULL,
  `dataset_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo9kdv4ecivueietbg397a2sdu` (`collection_id`),
  CONSTRAINT `FKo9kdv4ecivueietbg397a2sdu` FOREIGN KEY (`collection_id`) REFERENCES `satellite_collections` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satellite`
--

LOCK TABLES `satellite` WRITE;
/*!40000 ALTER TABLE `satellite` DISABLE KEYS */;
INSERT INTO `satellite` VALUES (7,'sat7',NULL,NULL),(8,'sat8',NULL,NULL),(9,'s1',NULL,NULL),(10,'sat6',NULL,NULL),(14,'irs_liss3',5,'5e83d04c2cabef27'),(15,'irs_awifs',5,'5e83a26a5a6fbb45'),(16,'avhrr_phen_metrics',6,'5e839fcd8075fc3f'),(17,'quickdri',6,'5e83a319a36d95a3'),(18,'vegdri',6,'5e83a30bda6c2f0c'),(22,'emodis_ndvi_v6',6,'5e83a2e6abfb7665'),(23,'emodis_phen_metrics',6,'5e83a2dd4b161884'),(24,'eviirs_ndvi',6,'6000501df981af01'),(25,'uas_raw',7,'5e83d3ab97e5691d'),(26,'uas_ortho',7,'5e83a46c99342869'),(27,'sentinel_2a',8,'5e83a42c6eba8084'),(28,'aster_l1t',10,'5e839f82a4ef4c2'),(29,'modis_mcd43a1_v6',12,'5e83d971b474c41d'),(30,'modis_mcd43a2_v6',12,'5e83d98b6490d48d'),(31,'modis_mcd43a3_v6',12,'5e83d98fbd19416'),(32,'modis_mcd43a4_v6',12,'5e83dcfbefa735d4'),(33,'modis_mcd43c3_v6',12,'5e83d998966c1c56'),(34,'modis_mcd43c4_v6',12,'5e83d9c6b74b9e0a'),(35,'modis_mod17a2h_v6',13,'5e83dd93422295ec'),(36,'modis_myd17a2h_v6',13,'5e83a5f964c27861'),(37,'modis_mcd15a2h_v6',14,'5e83dcf73793363b'),(38,'modis_mcd15a3h_v6',14,'5e83da02c6b616ad'),(39,'modis_mod15a2h_v6',14,'5e83dd907c1b03b'),(40,'modis_myd15a2h_v6',14,'5e83a5ee9b5e0dbd'),(41,'modis_mcd12c1_v6',15,'5e83a5953698994a'),(42,'modis_mcd12q1_v6',15,'5e83db673c34935'),(43,'modis_mcd12q2_v6',15,'5e83a6b3b3e80405'),(44,'modis_mod09a1_v6',16,'5e83dd7fafc6b032'),(45,'modis_mod09cmg_v6',16,'5e83dd556c7545b0'),(46,'modis_mod09ga_v6',16,'5e83a6242092e268'),(47,'modis_mod09gq_v6',16,'5e83dd517de4d28a'),(48,'modis_mod09q1_v6',16,'5e83dd484464bd11'),(49,'modis_modocga_v6',16,'5e83a66515d274bc'),(50,'modis_modtbga_v6',16,'5e83dd9677e0a640'),(51,'modis_myd09a1_v6',16,'5e83dda67e5a640a'),(52,'modis_myd09cmg_v6',16,'5e83dd9cc6d9a05b'),(53,'modis_myd09ga_v6',16,'5e83ddda434636b4'),(54,'modis_myd09gq_v6',16,'5e83dda9a443768d'),(55,'modis_myd09q1_v6',16,'5e83ddb8cf9b0b84'),(56,'modis_mydocga_v6',16,'notFound'),(57,'modis_mydtbga_v6',16,'notFound'),(58,'modis_mod09a1_v61',18,'61016e8d79c3aece'),(59,'modis_mod09cmg_v61',18,'610c07ab5623d21a'),(60,'modis_mod09ga_v61',18,'610be3dd36984b13'),(61,'modis_mod09gq_v61',18,'610bf2137388eed6'),(62,'modis_mod09q1_v61',18,'610bf4c7c7b3a4e1'),(63,'modis_myd09a1_v61',18,'610bf7de66183e87'),(64,'modis_myd09cmg_v61',18,'610c094ae4ae3347'),(65,'modis_myd09ga_v61',18,'610bfc26f1d8b2a7'),(66,'modis_myd09gq_v61',18,'610bfe286ff9503c'),(67,'modis_myd09q1_v61',18,'610bfff13f0f03cb'),(68,'modis_mod11a1_v6',19,'5e83a5c5ce2d0281'),(69,'modis_mod11a2_v6',19,'5e83dd69b72cab15'),(70,'modis_mod11b1_v6',19,'5e83dd4b50499954'),(71,'modis_mod11b2_v6',19,'5e83dd64ddb53e74'),(72,'modis_mod11b3_v6',19,'5e83dd5b6a2911c2'),(73,'modis_mod11_l2_v6',19,'5e83a5d21b6beb3'),(74,'modis_myd11a1_v6',19,'5e83ddace4d7914'),(75,'modis_myd11a2_v6',19,'5e83dda3e7acbbd0'),(76,'modis_myd11b1_v6',19,'5e83ddd693f642a'),(77,'modis_myd11b2_v6',19,'5e83ddae8ac8f9ac'),(78,'modis_myd11b3_v6',19,'5e83ddb5984a3dd3'),(79,'modis_myd11_l2_v6',19,'5e83ddcc3d1c0304'),(80,'modis_myd21a1d_v6',19,'5e83a5df6f74ad9c'),(81,'modis_myd21a1n_v6',19,'5e83a67192d4e047'),(82,'modis_myd21a2_v6',19,'5e83ddef6bc9b7a7'),(83,'modis_myd21_v6',19,'5e83ddeb7fd25b78'),(84,'modis_mod11a1_v61',20,'610c1fddda305aad'),(85,'modis_mod11a2_v61',20,'61116136ebacfb9b'),(86,'modis_mod11b1_v61',20,'6111645639b43a8e'),(87,'modis_mod11b2_v61',20,'611165e834debd8'),(88,'modis_mod11b3_v61',20,'6111715a9b9da227'),(89,'modis_mod11_l2_v61',20,'6113b9c776ca8819'),(90,'modis_myd11a1_v61',20,'6113c3d213037552'),(91,'modis_myd11a2_v61',20,'6113c5be3bb04ef0'),(92,'modis_myd11b1_v61',20,'6113c6f2d6b02d2d'),(93,'modis_myd11b2_v61',20,'6113c8b0b3946531'),(94,'modis_myd11b3_v61',20,'6113d064dc4bbd78'),(95,'modis_myd11_l2_v61',20,'6113df72f2e4b56e'),(96,'modis_mcd19a1_v6',21,'5e83d99db6295a70'),(97,'modis_mcd19a2_v6',21,'5e83a5a6e81596df'),(98,'modis_mcd19a3_v6',21,'5e83d975b4d50caa'),(99,'modis_mod16a2_v6',22,'5e83a659de9bd8f'),(100,'modis_myd16a2_v6',22,'5e83dde724f73266'),(101,'modis_mcd64a1_v6',23,'5e83dd58bf9c44ff'),(102,'modis_mod14_v6',23,'5e83dd8a957a4ea0'),(103,'modis_mod14a2_v6',23,'5e83dd997ab0b501'),(105,'modis_myd14_v6',23,'5e83ddd32be77705'),(106,'modis_myd14a1_v6',23,'5e83a605dd5e7650'),(107,'modis_myd14a2_v6',23,'5e83dde0ce74b08b'),(108,'modis_myd14a1_v6',23,'5e83a605dd5e7650'),(109,'modis_mod14a1_v61',24,'6125239518fdf838'),(110,'modis_mod14a2_v61',24,'612648aa19d89225'),(111,'modis_mod14_v61',24,'61250e27b15ca350'),(113,'modis_myd14a1_v61',24,'61265116fab4ffd9'),(114,'modis_myd14a2_v61',24,'6126518cc2e517b'),(115,'modis_myd14_v61',24,'6126501991b7879f'),(116,'modis_mod13a2_v6',25,'5e83dd6fc32160a9'),(117,'modis_mod13a1_v6',25,'5e83dd5ec107d107'),(118,'modis_mod13a3_v6',25,'5e83dd6c42707468'),(119,'modis_mod13q1_v6',25,'5e83dd7a8e7ebcf7'),(120,'modis_mod44b_v6',25,'5e83a6131828a3be'),(121,'modis_myd13a1_v6',25,'5e83ddc4482f054d'),(122,'modis_myd13a2_v6',25,'5e83ddc07c9a041e'),(123,'modis_myd13a3_v6',25,'5e83ddc72f587179'),(124,'modis_myd13q1_v6',25,'5e83a631141137f7'),(125,'modis_mod44w_v6',26,'5e83dd8d1c08f77a'),(126,'ecostress_eco1bgeo',27,'5e83a07973506a3e'),(127,'ecostress_eco1bmaprad',27,'5e83a083a8e3c733'),(128,'ecostress_eco1brad',27,'5e83a09043a380b5'),(129,'ecostress_eco2cld',27,'5e83a09edfa44ca0'),(130,'ecostress_eco2lste',27,'5e83a0a9f7015e92'),(131,'ecostress_eco3ancqa',27,'5e83a0b5b19a3af7'),(132,'ecostress_eco3etptjpl',27,'5e83a0d73a0487f6'),(133,'ecostress_eco4esiptjpl',27,'5e83a0e147c354b8'),(134,'ecostress_eco4wue',27,'5e83a0ed2c453f81'),(135,'gfcc_gfcc30tc',29,'5e83cf953610afa9'),(136,'viirs_vnp15a2h',30,'5e83d5787a4e20fd'),(137,'viirs_vnp21',31,'5e83d56b563399b4'),(138,'viirs_vnp21a1d',31,'5e83d55a17a93d7d'),(139,'viirs_vnp21a1n',31,'5e83d54e2dc2946'),(140,'viirs_vnp21a2',31,'5e83d54356a76d6e'),(141,'viirs_vnp09a1',32,'5e83d61566f85346'),(142,'lpcs_viirs_vnp09ga',32,'5e83d5e066c83884'),(143,'viirs_vnp09h1',32,'5e83d5fb6e444503'),(144,'viirs_vnp14a1',33,'5e83d585fbcac7aa'),(145,'ccdc_v1_0',34,'5ec7eb0d9fc6cde1'),(146,'ccdc_v1',34,'5f514144f1be3dfe'),(147,'ccdc_v1_2',34,'6171b15ca40ef304'),(148,'Landsat 4-8 C2 U.S. ARD',35,'60fabcf85bbd0f00'),(149,'landsat_ot_c2_l2',36,'5e83d14fec7cae84'),(150,'landsat_etm_c2_l2',36,'5e83d12aed0efa58'),(151,'landsat_tm_c2_l2',36,'5e83d11933473426'),(152,'landsat_ot_c2_l1',37,'5e81f14f92acf9ef'),(153,'landsat_etm_c2_l1',37,'5e83d0d08fec8a66'),(154,'landsat_tm_c2_l1',37,'5e83d0a0f94d7d8d'),(155,'landsat_mss_c2_l1',37,'5f64fd5131ca1b4c'),(156,'sp_tile_dswe',39,'5e83a05898efcbd9'),(157,'sp_tile_ba',39,'5e83a003cf13a1fd'),(158,'ard_tile',40,'5e83a38b67a44fa9'),(159,'lsr_landsat_8_c1',41,'notFound'),(160,'lsr_landsat_etm_c1',41,'notFound'),(161,'lsr_landsat_tm_c1',41,'notFound'),(162,'landsat_8_c1',42,'5e83d0b8e7f6734c'),(163,'landsat_etm_c1',42,'5e83a5074a8afeab'),(164,'landsat_tm_c1',42,'5e83d08f6ea2e6ad'),(165,'landsat_mss_c1',42,'5e83a3736b5e935a'),(166,'gls_all',43,'5e7c4182c28455fb'),(167,'iserv',44,'5e83a2ae292a03b5'),(168,'global_fiducial',45,'5e83a3d594043866'),(169,'eo1_ali_pub',46,'5e839cbda0becdd1'),(170,'eo1_ali_priv',46,'notFound'),(171,'eo1_hyp_pub',46,'5e83a12ec0086948'),(172,'nationalatlas',47,'5e83a3a6f8ed540e'),(173,'avhrr_composite',48,'5e839fa3b6d5e2aa'),(174,'aerial_combin',49,'5e83d8e5948bd803'),(175,'hdds_baseline',49,'5e83a23aac664753'),(176,'naip',49,'5e83a340275f0f2c');
/*!40000 ALTER TABLE `satellite` ENABLE KEYS */;
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
