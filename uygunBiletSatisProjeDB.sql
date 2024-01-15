-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: uygunbiletsatis
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `bagajlar`
--

DROP TABLE IF EXISTS `bagajlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bagajlar` (
  `BagajID` int NOT NULL AUTO_INCREMENT,
  `RezervasyonID` int DEFAULT NULL,
  `Agirlik` decimal(5,2) NOT NULL,
  PRIMARY KEY (`BagajID`),
  KEY `RezervasyonID` (`RezervasyonID`),
  CONSTRAINT `bagajlar_ibfk_1` FOREIGN KEY (`RezervasyonID`) REFERENCES `rezervasyonlar` (`RezervasyonID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bagajlar`
--

LOCK TABLES `bagajlar` WRITE;
/*!40000 ALTER TABLE `bagajlar` DISABLE KEYS */;
INSERT INTO `bagajlar` VALUES (1,1,20.50),(2,2,15.00),(3,3,25.00),(4,4,18.50),(5,5,22.00);
/*!40000 ALTER TABLE `bagajlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guzergahlar`
--

DROP TABLE IF EXISTS `guzergahlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guzergahlar` (
  `GuzergahlarID` int NOT NULL AUTO_INCREMENT,
  `KalkisSehri` varchar(50) NOT NULL,
  `VarisSehri` varchar(50) NOT NULL,
  `KalkisTarihi` datetime NOT NULL,
  `VarisTarihi` datetime NOT NULL,
  PRIMARY KEY (`GuzergahlarID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guzergahlar`
--

LOCK TABLES `guzergahlar` WRITE;
/*!40000 ALTER TABLE `guzergahlar` DISABLE KEYS */;
INSERT INTO `guzergahlar` VALUES (1,'Istanbul','Bursa','2024-01-12 10:00:00','2024-01-12 14:00:00'),(2,'İzmir','Zonguldak','2024-02-15 12:00:00','2024-02-15 19:00:00'),(3,'Ankara','İstanbul','2024-03-20 08:00:00','2024-03-20 13:00:00'),(4,'Ankara','Van','2024-04-25 14:00:00','2024-04-25 22:00:00'),(5,'Isparta','Hatay','2024-05-30 16:00:00','2024-05-30 22:00:00');
/*!40000 ALTER TABLE `guzergahlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koltuklar`
--

DROP TABLE IF EXISTS `koltuklar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `koltuklar` (
  `KoltukID` int NOT NULL AUTO_INCREMENT,
  `BirimID` int DEFAULT NULL,
  `KoltukNumarasi` varchar(10) NOT NULL,
  `RezerveEdildi` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KoltukID`),
  KEY `BirimID` (`BirimID`),
  CONSTRAINT `koltuklar_ibfk_1` FOREIGN KEY (`BirimID`) REFERENCES `tasimabirimleri` (`BirimID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koltuklar`
--

LOCK TABLES `koltuklar` WRITE;
/*!40000 ALTER TABLE `koltuklar` DISABLE KEYS */;
INSERT INTO `koltuklar` VALUES (1,6,'A1',1),(2,7,'B3',0),(3,8,'C2',1),(4,9,'D4',0),(5,10,'E5',1);
/*!40000 ALTER TABLE `koltuklar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musteriler`
--

DROP TABLE IF EXISTS `musteriler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musteriler` (
  `MusteriID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) NOT NULL,
  `Soyad` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefon` varchar(15) NOT NULL,
  `KayitTarihi` datetime DEFAULT NULL,
  `DogumTarihi` datetime NOT NULL,
  PRIMARY KEY (`MusteriID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musteriler`
--

LOCK TABLES `musteriler` WRITE;
/*!40000 ALTER TABLE `musteriler` DISABLE KEYS */;
INSERT INTO `musteriler` VALUES (1,'Murat Selahattin','Gunes','muratsegunes@gmail.com','5551115421','2023-12-01 09:30:00','1990-05-15 00:00:00'),(2,'Sudenur','Özdemir','sdnrozdemir02@gmail.com','5552478522','2024-01-05 14:45:00','1985-08-20 00:00:00'),(3,'Fatih','Karlı','fatih@gmail.com','5674855526','2024-02-10 11:00:00','1978-11-10 00:00:00'),(4,'Ahmet','Demir','a.demir06@windowslive.com','5255269842','2024-03-15 17:30:00','1995-04-02 00:00:00'),(5,'Ali','Yılmaz','ali.yilmaz@hotmail.com','5552545523','2024-04-20 13:15:00','1980-09-25 00:00:00');
/*!40000 ALTER TABLE `musteriler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odemeler`
--

DROP TABLE IF EXISTS `odemeler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `odemeler` (
  `OdemeID` int NOT NULL AUTO_INCREMENT,
  `RezervasyonID` int DEFAULT NULL,
  `ParaBirimiID` int DEFAULT NULL,
  `OdemeTarihi` datetime NOT NULL,
  `Tutar` decimal(10,2) NOT NULL,
  `OdemeYontemi` varchar(50) NOT NULL,
  PRIMARY KEY (`OdemeID`),
  KEY `RezervasyonID` (`RezervasyonID`),
  KEY `ParaBirimiID` (`ParaBirimiID`),
  CONSTRAINT `odemeler_ibfk_1` FOREIGN KEY (`RezervasyonID`) REFERENCES `rezervasyonlar` (`RezervasyonID`),
  CONSTRAINT `odemeler_ibfk_2` FOREIGN KEY (`ParaBirimiID`) REFERENCES `parabirimi` (`ParaBirimiID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odemeler`
--

LOCK TABLES `odemeler` WRITE;
/*!40000 ALTER TABLE `odemeler` DISABLE KEYS */;
INSERT INTO `odemeler` VALUES (1,1,4,'2024-01-12 14:00:00',800.00,'Kredi Kartı'),(2,2,4,'2024-02-15 18:00:00',700.00,'Nakit'),(3,3,4,'2024-03-20 12:30:00',400.00,'Havale'),(4,4,2,'2024-04-25 18:45:00',350.00,'Kredi Kartı'),(5,5,1,'2024-05-30 20:00:00',16.60,'Kredi Kartı');
/*!40000 ALTER TABLE `odemeler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parabirimi`
--

DROP TABLE IF EXISTS `parabirimi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parabirimi` (
  `ParaBirimiID` int NOT NULL AUTO_INCREMENT,
  `ParaKodu` varchar(5) NOT NULL,
  `ParaIsmi` varchar(20) NOT NULL,
  PRIMARY KEY (`ParaBirimiID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parabirimi`
--

LOCK TABLES `parabirimi` WRITE;
/*!40000 ALTER TABLE `parabirimi` DISABLE KEYS */;
INSERT INTO `parabirimi` VALUES (1,'USD','Dolar'),(2,'EUR','Euro'),(3,'GBP','İngiliz Sterlini'),(4,'TRY','Türk Lirası'),(5,'CAD','Kanada Doları');
/*!40000 ALTER TABLE `parabirimi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezervasyonlar`
--

DROP TABLE IF EXISTS `rezervasyonlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezervasyonlar` (
  `RezervasyonID` int NOT NULL AUTO_INCREMENT,
  `MusteriID` int DEFAULT NULL,
  `BirimID` int DEFAULT NULL,
  `TurID` int NOT NULL,
  `rezervasyonTarihi` datetime NOT NULL,
  PRIMARY KEY (`RezervasyonID`),
  KEY `MusteriID` (`MusteriID`),
  KEY `BirimID` (`BirimID`),
  KEY `TurID` (`TurID`),
  CONSTRAINT `rezervasyonlar_ibfk_1` FOREIGN KEY (`MusteriID`) REFERENCES `musteriler` (`MusteriID`),
  CONSTRAINT `rezervasyonlar_ibfk_2` FOREIGN KEY (`BirimID`) REFERENCES `tasimabirimleri` (`BirimID`),
  CONSTRAINT `rezervasyonlar_ibfk_3` FOREIGN KEY (`TurID`) REFERENCES `tur` (`TurID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezervasyonlar`
--

LOCK TABLES `rezervasyonlar` WRITE;
/*!40000 ALTER TABLE `rezervasyonlar` DISABLE KEYS */;
INSERT INTO `rezervasyonlar` VALUES (1,1,6,2,'2024-01-01 12:30:00'),(2,2,7,2,'2024-01-15 15:00:00'),(3,3,8,1,'2024-01-20 10:45:00'),(4,4,9,1,'2024-01-25 16:30:00'),(5,5,10,3,'2024-01-30 18:45:00');
/*!40000 ALTER TABLE `rezervasyonlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasimabirimleri`
--

DROP TABLE IF EXISTS `tasimabirimleri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasimabirimleri` (
  `BirimID` int NOT NULL AUTO_INCREMENT,
  `GuzergahlarID` int DEFAULT NULL,
  `TurID` int NOT NULL,
  `FirmaAdi` varchar(50) NOT NULL,
  `BiletFiyati` decimal(10,2) NOT NULL,
  PRIMARY KEY (`BirimID`),
  KEY `GuzergahlarID` (`GuzergahlarID`),
  KEY `TurID` (`TurID`),
  CONSTRAINT `tasimabirimleri_ibfk_1` FOREIGN KEY (`GuzergahlarID`) REFERENCES `guzergahlar` (`GuzergahlarID`),
  CONSTRAINT `tasimabirimleri_ibfk_2` FOREIGN KEY (`TurID`) REFERENCES `tur` (`TurID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasimabirimleri`
--

LOCK TABLES `tasimabirimleri` WRITE;
/*!40000 ALTER TABLE `tasimabirimleri` DISABLE KEYS */;
INSERT INTO `tasimabirimleri` VALUES (6,1,2,'Pegasus Havayolları',800.00),(7,2,2,'Türk Havayolları',700.00),(8,3,1,'Metro Turizm',400.00),(9,4,1,'KamilKoç',350.00),(10,5,3,'TCDD Taşımacılık',500.00);
/*!40000 ALTER TABLE `tasimabirimleri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tur`
--

DROP TABLE IF EXISTS `tur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tur` (
  `TurID` int NOT NULL AUTO_INCREMENT,
  `TurAdi` varchar(20) NOT NULL,
  PRIMARY KEY (`TurID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tur`
--

LOCK TABLES `tur` WRITE;
/*!40000 ALTER TABLE `tur` DISABLE KEYS */;
INSERT INTO `tur` VALUES (1,'Otobus'),(2,'Ucak'),(3,'Tren');
/*!40000 ALTER TABLE `tur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ucuskategoriilişkileri`
--

DROP TABLE IF EXISTS `ucuskategoriilişkileri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ucuskategoriilişkileri` (
  `IliskiID` int NOT NULL AUTO_INCREMENT,
  `BirimID` int DEFAULT NULL,
  `KategoriID` int DEFAULT NULL,
  PRIMARY KEY (`IliskiID`),
  KEY `BirimID` (`BirimID`),
  KEY `KategoriID` (`KategoriID`),
  CONSTRAINT `ucuskategoriilişkileri_ibfk_1` FOREIGN KEY (`BirimID`) REFERENCES `tasimabirimleri` (`BirimID`),
  CONSTRAINT `ucuskategoriilişkileri_ibfk_2` FOREIGN KEY (`KategoriID`) REFERENCES `ucuskategorileri` (`KategoriID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ucuskategoriilişkileri`
--

LOCK TABLES `ucuskategoriilişkileri` WRITE;
/*!40000 ALTER TABLE `ucuskategoriilişkileri` DISABLE KEYS */;
INSERT INTO `ucuskategoriilişkileri` VALUES (1,6,1),(2,7,3),(3,8,3),(4,9,3),(5,10,2);
/*!40000 ALTER TABLE `ucuskategoriilişkileri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ucuskategorileri`
--

DROP TABLE IF EXISTS `ucuskategorileri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ucuskategorileri` (
  `KategoriID` int NOT NULL AUTO_INCREMENT,
  `KategoriAdi` varchar(50) NOT NULL,
  PRIMARY KEY (`KategoriID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ucuskategorileri`
--

LOCK TABLES `ucuskategorileri` WRITE;
/*!40000 ALTER TABLE `ucuskategorileri` DISABLE KEYS */;
INSERT INTO `ucuskategorileri` VALUES (1,'First Class'),(2,'Business Class'),(3,'Ekonomi');
/*!40000 ALTER TABLE `ucuskategorileri` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 21:10:32
