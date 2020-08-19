-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: 10118128_akademik
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `id_level` int NOT NULL DEFAULT '1',
  `username` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `telepon` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'no_foto.jpg',
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (4,1,'admin','c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec','','admin','','','admin.jpg','Y');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agama`
--

DROP TABLE IF EXISTS `agama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agama` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agama`
--

LOCK TABLES `agama` WRITE;
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
INSERT INTO `agama` VALUES (1,'ISLAM','Y'),(2,'KRISTEN KATOLIK','Y'),(3,'KRISTEN PROTESTAN','Y'),(4,'BUDHA','Y'),(5,'HINDU','Y'),(6,'LAIN-LAIN','Y');
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akademik`
--

DROP TABLE IF EXISTS `akademik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akademik` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `id_level` int NOT NULL DEFAULT '3',
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `telepon` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'no_foto.jpg',
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akademik`
--

LOCK TABLES `akademik` WRITE;
/*!40000 ALTER TABLE `akademik` DISABLE KEYS */;
/*!40000 ALTER TABLE `akademik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beritaawal`
--

DROP TABLE IF EXISTS `beritaawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beritaawal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beritaawal`
--

LOCK TABLES `beritaawal` WRITE;
/*!40000 ALTER TABLE `beritaawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `beritaawal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dosen` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `id_level` int NOT NULL DEFAULT '2',
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NIDN` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `InstitusiInduk` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Homebase` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TempatLahir` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `KTP` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Agama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `Email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Gelar` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Jenjang_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Keilmuan` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kelamin_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Jabatan_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `JabatanDikti_ID` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `TglBekerja` date NOT NULL,
  `StatusDosen_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `StatusKerja_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'no foto.jpg',
  PRIMARY KEY (`ID`),
  KEY `username` (`username`),
  KEY `NIDN` (`NIDN`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES (1,2,'STAI044','f72ab66c9ac8be5d6415d3d13faf76692883f533a98714924d5fa8e4283a70bde889b4d817a7938ce02c8703c3c8bd35e5523c33548c69f3e32ae33133683af8','','Alif Finandhita',0,'54321','','','Bandung','1989-07-16','','ISLAM','Jl. Dipatiukur No.01 Rt 05 Rw 02 Kel.Sekeloa Kec.Coblong Kota Bandung Kode Pos 41183','aliffinandhita@gmail.com','08123456789','08123456789','','Bandung','Jawa Barat','Indonesia','S.Kom, M.T','B','Sistem Basis Data','','B','0','0000-00-00','0','D','Y','akademik.jpg');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdownsystem`
--

DROP TABLE IF EXISTS `dropdownsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dropdownsystem` (
  `ID_ds` int NOT NULL AUTO_INCREMENT,
  `id_group` int NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menu_order` int NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_ds`),
  KEY `id_group` (`id_group`,`menu_order`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdownsystem`
--

LOCK TABLES `dropdownsystem` WRITE;
/*!40000 ALTER TABLE `dropdownsystem` DISABLE KEYS */;
INSERT INTO `dropdownsystem` VALUES (1,2,'01 Kalender Akademik',1,'?page=kalenderakademik'),(2,2,'02 Penjadwalan Kuliah',2,'?page=jadwalkuliah'),(3,2,'03 Registrasi Ulang Mahasiswa',3,'?page=registrasiulangmhsw'),(4,4,'01 Absen Kuliah',1,'?page=dosenabsenkuliah'),(5,4,'02 Nilai Mahasiswa',2,'?page=dosennilaimahasiswa'),(6,2,'04 KRS Mahasiswa',4,'?page=akademikkrs'),(7,2,'05 Input Nilai Mahasiswa',5,'?page=akademikinputnilaimhs'),(8,2,'06 KHS Mahasiswa',6,'?page=akademikkhsmhs'),(9,2,'07 Transkrip Nilai Mahasiswa',7,'?page=akademiktranskripnilai'),(10,8,'01 Identitas Institusi',1,'?page=masterinstitusi'),(11,8,'02 Program Studi',2,'?page=masterprodi'),(12,8,'03 Program',3,'?page=masterprogram'),(13,8,'04 Kampus',4,'?page=masterkampus'),(14,8,'05 Ruangan',5,'?page=masterruangan'),(15,8,'06 Matakuliah',6,'?page=mastermatakuliah'),(16,8,'07 Dosen',7,'?page=masterdosen'),(17,8,'08 Mahasiswa',8,'?page=mastermahasiswa'),(18,10,'01 Admin Administrator',1,'?page=adminadministrator'),(19,10,'02 Admin Akademik',2,'?page=adminakademik'),(21,57,'01 MSMHS',1,'?page=epsbedmsmhs'),(22,57,'02 TBKMK',2,'?page=epsbedttbkmk'),(23,57,'03 TBBNL',3,'?page=epsbedtbbnl'),(24,57,'04 TRAKD',4,'?page=epsbedtrakd'),(25,57,'05 TRNLM',5,'?page=epsbedtrnlm'),(26,1,'01 Kalender Akademik',1,'?page=baakademikkalender'),(27,1,'02 Penjadwalan Kuliah',2,'?page=baakademikjadwal'),(28,1,'03 Registrasi Ulang Mahasiswa',3,'?page=baakademikregulang'),(29,1,'04 KRS Mahasiswa',4,'?page=baakademikjadwalkrs'),(30,1,'05 Input Nilai Mahasiswa',5,'?page=bakademikinputnilaimhs'),(31,1,'06 KHS Mahasiswa',6,'?page=bakademikkhsmhs'),(32,1,'07 Transkrip Nilai Mahasiswa',7,'?page=bakademiktranskripnilai'),(33,8,'01 Matakuliah',1,'?page=baakademikmastermatakuliah'),(34,8,'02 Mahasiswa',2,'?page=baakademikmastermahasiswa'),(35,4,'01 Data Dosen',1,'?page=dosendata'),(36,4,'02 Input Nilai Mahasiswa',2,'?page=doseninputnilaimhsw'),(37,7,'01 Data Mahasiswa',1,'?page=mahasiswadata'),(38,7,'02 KRS Mahasiswa',2,'?page=mahasiswakrs'),(40,7,'03 KHS Mahasiswa',3,'?page=mahasiswakhs'),(41,7,'04 Transkrip Nilai',4,'?page=mahasiswatranskrip'),(45,4,'03 Upload Materi',3,'?page=1f56234e-4361-4706-bb5a-91d3101bbdb6'),(44,59,'01 Download',1,'?page=50f9e899-0d4d-4b7b-a518-fb18bc430926'),(46,7,'05 Download Materi',5,'?page=24fd7148-9843-46d6-bb33-5b1d86b5a172');
/*!40000 ALTER TABLE `dropdownsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epsbed`
--

DROP TABLE IF EXISTS `epsbed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epsbed` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ket` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epsbed`
--

LOCK TABLES `epsbed` WRITE;
/*!40000 ALTER TABLE `epsbed` DISABLE KEYS */;
INSERT INTO `epsbed` VALUES (15,'TBKMK_20152.DBF','tbkmk'),(16,'TBBNL_20152.DBF','tbbnl');
/*!40000 ALTER TABLE `epsbed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error`
--

DROP TABLE IF EXISTS `error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tabel` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `text` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error`
--

LOCK TABLES `error` WRITE;
/*!40000 ALTER TABLE `error` DISABLE KEYS */;
INSERT INTO `error` VALUES (1,'Group Modul','1. Pengisian form berurutan sesuai dengan parent ID modul.2. Jika Terjadi Kesalahan yang tidak anda ketahui silakan hubungi administrator anda.');
/*!40000 ALTER TABLE `error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileupload`
--

DROP TABLE IF EXISTS `fileupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fileupload` (
  `File_ID` bigint NOT NULL AUTO_INCREMENT,
  `Nama_File` varchar(255) NOT NULL,
  `File` varchar(100) NOT NULL,
  `Level_ID` int NOT NULL,
  `Uplouder` varchar(100) NOT NULL,
  `TglInput` datetime NOT NULL,
  PRIMARY KEY (`File_ID`),
  KEY `File_ID` (`File_ID`),
  KEY `Level_ID` (`Level_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileupload`
--

LOCK TABLES `fileupload` WRITE;
/*!40000 ALTER TABLE `fileupload` DISABLE KEYS */;
INSERT INTO `fileupload` VALUES (18,'Kalender Akademik Semt. Genap 2015_2016','Kalender Akademi k Semester Genap 20152016.pdf',1,'','2016-02-05 23:32:11'),(17,'Materi Pengantar Komputer','',2,'066','2016-02-04 10:58:13');
/*!40000 ALTER TABLE `fileupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupmodul`
--

DROP TABLE IF EXISTS `groupmodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupmodul` (
  `id_group` int NOT NULL AUTO_INCREMENT,
  `relasi_modul` int NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_group`),
  KEY `relasi_modul` (`relasi_modul`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupmodul`
--

LOCK TABLES `groupmodul` WRITE;
/*!40000 ALTER TABLE `groupmodul` DISABLE KEYS */;
INSERT INTO `groupmodul` VALUES (1,1,'Ba Akademik'),(2,2,'Akademik'),(4,4,'Dosen'),(7,7,'Mahasiswa'),(8,8,'Master'),(10,10,'Admin'),(57,12,'EPSBED'),(59,11,'Download');
/*!40000 ALTER TABLE `groupmodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakmodul`
--

DROP TABLE IF EXISTS `hakmodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hakmodul` (
  `ID_hm` int NOT NULL AUTO_INCREMENT,
  `id_level` int NOT NULL,
  `ID_ds` int NOT NULL,
  PRIMARY KEY (`ID_hm`),
  KEY `ID_ds` (`ID_ds`,`id_level`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakmodul`
--

LOCK TABLES `hakmodul` WRITE;
/*!40000 ALTER TABLE `hakmodul` DISABLE KEYS */;
INSERT INTO `hakmodul` VALUES (1,1,1),(2,1,2),(15,1,16),(4,1,3),(5,1,6),(6,1,7),(7,1,8),(8,1,9),(9,1,10),(10,1,11),(11,1,12),(12,1,13),(13,1,14),(14,1,15),(16,1,17),(17,1,18),(18,1,19),(19,1,20),(20,1,21),(21,1,22),(22,1,23),(23,1,24),(24,1,25),(25,3,26),(26,3,27),(27,3,28),(28,3,29),(29,3,30),(30,3,31),(31,3,32),(32,3,33),(33,3,34),(34,2,35),(35,2,36),(36,4,37),(37,4,38),(38,4,39),(39,4,40),(40,4,41),(42,1,44),(43,2,45),(44,4,46);
/*!40000 ALTER TABLE `hakmodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hari`
--

DROP TABLE IF EXISTS `hari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hari` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hari`
--

LOCK TABLES `hari` WRITE;
/*!40000 ALTER TABLE `hari` DISABLE KEYS */;
INSERT INTO `hari` VALUES (1,'Senin'),(2,'Selasa'),(3,'Rabu'),(4,'Kamis'),(5,'Jumat'),(6,'Sabtu'),(7,'Minggu');
/*!40000 ALTER TABLE `hari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hidup`
--

DROP TABLE IF EXISTS `hidup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hidup` (
  `Hidup` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Hidup`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hidup`
--

LOCK TABLES `hidup` WRITE;
/*!40000 ALTER TABLE `hidup` DISABLE KEYS */;
INSERT INTO `hidup` VALUES ('1','Masih Hidup','N'),('2','Sudah Meninggal','N');
/*!40000 ALTER TABLE `hidup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitas`
--

DROP TABLE IF EXISTS `identitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identitas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Identitas_ID` int NOT NULL,
  `KodeHukum` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama_Identitas` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `TglMulai` date NOT NULL DEFAULT '0000-00-00',
  `Alamat1` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Website` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NoAkta` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglAkta` date DEFAULT NULL,
  `NoSah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglSah` date DEFAULT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas`
--

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` VALUES (1,12345,'123456789','Universitas Komputer Indonesia','2000-08-28','Jl. Dipatiukur no 114-116, Bandung, Jawa Barat, Indonesia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y');
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jabatan` (
  `Jabatan_ID` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Jabatan_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` VALUES ('A','Tenaga Pengajar','N','N'),('B','Asisten Ahli','N','N'),('C','Lektor','N','N'),('D','Lektor Kepala','N','N'),('E','Guru Besar','N','N');
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatandikti`
--

DROP TABLE IF EXISTS `jabatandikti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jabatandikti` (
  `JabatanDikti_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JabatanDikti_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatandikti`
--

LOCK TABLES `jabatandikti` WRITE;
/*!40000 ALTER TABLE `jabatandikti` DISABLE KEYS */;
INSERT INTO `jabatandikti` VALUES ('01','AAM','N','N'),('02','AA','N','N'),('03','LMu','N','N'),('04','LMa','N','N'),('05','L','N','N'),('06','LKM','N','N'),('07','LK','N','N'),('08','GBM','N','N'),('09','GB','N','N');
/*!40000 ALTER TABLE `jabatandikti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jadwal` (
  `Jadwal_ID` bigint NOT NULL AUTO_INCREMENT,
  `Tahun_ID` int NOT NULL,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `Program_ID` int NOT NULL,
  `Kode_Mtk` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Ruang_ID` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Kelas` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Dosen_ID` int NOT NULL,
  `Hari` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Jam_Mulai` time NOT NULL DEFAULT '00:00:00',
  `Jam_Selesai` time NOT NULL DEFAULT '00:00:00',
  `UTSTgl` date NOT NULL,
  `UTSHari` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `UTSMulai` time NOT NULL,
  `UTSSelesai` time NOT NULL,
  `UTSRuang` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `UASTgl` date NOT NULL,
  `UASHari` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `UASMulai` time NOT NULL,
  `UASSelesai` time NOT NULL,
  `UASRuang` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `JumlahMhsw` int NOT NULL,
  `Kapasitas` int NOT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Jadwal_ID`),
  KEY `Tahun_ID` (`Tahun_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Program_ID` (`Program_ID`),
  KEY `Kode_Mtk` (`Kode_Mtk`),
  KEY `Kode_Jurusan` (`Jurusan_ID`),
  KEY `Ruang_ID` (`Ruang_ID`),
  KEY `Dosen_ID` (`Dosen_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

LOCK TABLES `jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
INSERT INTO `jadwal` VALUES (4,20151,213131,86208,3,'IA123','4','',5,'Senin','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(3,20151,213131,86208,3,'IA134','4','',7,'Selasa','15:30:00','18:00:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(6,20151,213131,86208,3,'IB125','4','',13,'Senin','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(7,20151,213131,86208,3,'IA125','4','',11,'Selasa','12:30:00','15:00:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(8,20152,213131,86208,3,'IA225','4','P',11,'Kamis','13:50:00','16:20:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(9,20152,213131,86208,3,'IC221','4','P',6,'Senin','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(10,20151,213131,86208,3,'IA122','4','',24,'Rabu','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(11,20151,213131,86208,3,'IB124','4','',23,'Rabu','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(12,20151,213131,86208,3,'IA121','4','',9,'Rabu','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(13,20151,213131,86208,3,'IE104','4','',19,'Senin','10:00:00','11:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(14,20151,213131,86208,3,'IB121','4','',4,'Kamis','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(15,20151,213131,86208,3,'IB123','4','',21,'Senin','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(16,20151,213131,86208,3,'IB3212','14','',22,'Senin','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(17,20151,213131,86208,3,'IB3210','14','',12,'Senin','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(18,20151,213131,86208,3,'IA325','14','',7,'Senin','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(19,20151,213131,86208,3,'IA324','14','',18,'Selasa','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(20,20151,213131,86208,3,'ID321','14','',10,'Selasa','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(21,20151,213131,86208,3,'IC321','14','',6,'Selasa','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(22,20151,213131,86208,3,'IC324','14','',27,'Rabu','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(23,20151,213131,86208,3,'IC322','14','',15,'Rabu','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(27,20151,213131,86208,3,'IB122','4','',14,'Kamis','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(26,20151,213131,86208,3,'IB126','4','',2,'Kamis','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(29,20151,213131,86208,3,'IB329','14','',14,'Rabu','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(30,20151,213131,86208,3,'IC333','14','',8,'Kamis','13:00:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(31,20151,213131,86208,3,'IB328','14','',26,'Kamis','16:00:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(32,20152,213131,86208,3,'IA226','4','P',24,'Senin','16:00:00','17:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(33,20152,213131,86208,3,'IA224','4','P',7,'Selasa','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(34,20152,213131,86208,3,'IB2210','4','P',26,'Selasa','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(35,20152,213131,86208,3,'IB228','4','P',4,'Selasa','16:00:00','17:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(36,20152,213131,86208,3,'IB227','4','P',2,'Rabu','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(37,20152,213131,86208,3,'IC222','4','P',15,'Rabu','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(38,20152,213131,86208,3,'IB22.9','4','P',14,'Rabu','16:00:00','17:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(39,20152,213131,86208,3,'IB22.11','4','P',23,'Kamis','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(40,20152,213131,86208,3,'IB2211','4','P',23,'Kamis','12:10:00','13:50:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(41,20152,213131,86208,3,'IE421','4','',1,'Senin','09:00:00','11:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(42,20152,213131,86208,3,'IC436','15','P',5,'Senin','11:00:00','13:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(43,20152,213131,86208,3,'IE105','15','P',21,'Senin','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(44,20152,213131,86208,3,'IA424','15','P',18,'Senin','15:30:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(45,20152,213131,86208,3,'IC435','15','P',44,'Selasa','11:00:00','13:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(46,20152,213131,86208,3,'IB4210','15','P',17,'Selasa','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(47,20152,213131,86208,3,'IE422','15','P',20,'Kamis','16:30:00','18:10:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(48,20152,213131,86208,3,'IB4213','15','P',19,'Rabu','13:00:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(49,20152,213131,86208,3,'IB4314','15','P',16,'Rabu','15:40:00','18:10:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(50,20152,213131,86208,3,'IB428','15','P',26,'Selasa','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(51,20152,213131,86208,3,'IB429','15','P',12,'Kamis','13:00:00','14:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(52,20152,213131,86208,3,'IA425','15','P',7,'Kamis','14:40:00','16:20:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(53,20152,213131,86208,3,'IC6313','17','P',22,'Senin','12:10:00','14:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(54,20152,213131,86208,3,'IC6311','17','P',10,'Senin','15:50:00','17:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(55,20152,213131,86208,3,'IB6319','17','P',27,'Selasa','11:00:00','17:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(56,20152,213131,86208,3,'IC6215','17','P',6,'Selasa','13:50:00','15:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(57,20152,213131,86208,3,'IC6214','17','',28,'Selasa','15:50:00','17:30:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(58,20152,213131,86208,3,'IC6312','17','P',8,'Rabu','13:00:00','14:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(59,20152,213131,86208,3,'IB6321','17','P',24,'Rabu','14:40:00','16:10:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(60,20152,213131,86208,3,'IB6220','17','P',3,'Kamis','13:00:00','14:40:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y'),(61,20152,213131,86208,3,'IE623','17','P',25,'Kamis','14:40:00','16:10:00','0000-00-00','','00:00:00','00:00:00','','0000-00-00','','00:00:00','00:00:00','',0,0,'Y');
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_ujian`
--

DROP TABLE IF EXISTS `jenis_ujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jenis_ujian` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `jenisjadwal` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `jenisjadwal` (`jenisjadwal`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_ujian`
--

LOCK TABLES `jenis_ujian` WRITE;
/*!40000 ALTER TABLE `jenis_ujian` DISABLE KEYS */;
INSERT INTO `jenis_ujian` VALUES (1,'UTS','Ujian Tengah Semester'),(2,'UAS','Ujian Akhir Semester');
/*!40000 ALTER TABLE `jenis_ujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeniskurikulum`
--

DROP TABLE IF EXISTS `jeniskurikulum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jeniskurikulum` (
  `JenisKurikulum_ID` int NOT NULL AUTO_INCREMENT,
  `Kode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Singkatan` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jurusan_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`JenisKurikulum_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Identitas_ID` (`Kode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeniskurikulum`
--

LOCK TABLES `jeniskurikulum` WRITE;
/*!40000 ALTER TABLE `jeniskurikulum` DISABLE KEYS */;
INSERT INTO `jeniskurikulum` VALUES (1,'A',NULL,'Inti','','N'),(2,'B',NULL,'Institusi','','N');
/*!40000 ALTER TABLE `jeniskurikulum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenismk`
--

DROP TABLE IF EXISTS `jenismk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jenismk` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `JenisMTK_ID` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `JenisMK_ID` (`JenisMTK_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenismk`
--

LOCK TABLES `jenismk` WRITE;
/*!40000 ALTER TABLE `jenismk` DISABLE KEYS */;
INSERT INTO `jenismk` VALUES (1,'A','WAJIB','Y'),(2,'B','PILIHAN','Y'),(3,'C','WAJIB PERMINTAAN','Y'),(4,'D','PILIHAN PERMINTAAN','Y'),(5,'S','TA/SKRIPSI/THESIS/DISERTASI','Y');
/*!40000 ALTER TABLE `jenismk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenissekolah`
--

DROP TABLE IF EXISTS `jenissekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jenissekolah` (
  `JenisSekolah_ID` int NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`JenisSekolah_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenissekolah`
--

LOCK TABLES `jenissekolah` WRITE;
/*!40000 ALTER TABLE `jenissekolah` DISABLE KEYS */;
INSERT INTO `jenissekolah` VALUES (4,'Yayasan Penabur'),(5,'Kristen/Katolik Non Penabur'),(3,'Umum'),(2,'Negeri'),(6,'Luar Negeri'),(1,'Madrasah');
/*!40000 ALTER TABLE `jenissekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenjang`
--

DROP TABLE IF EXISTS `jenjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jenjang` (
  `Jenjang_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Def` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Jenjang_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenjang`
--

LOCK TABLES `jenjang` WRITE;
/*!40000 ALTER TABLE `jenjang` DISABLE KEYS */;
INSERT INTO `jenjang` VALUES ('A','S3','Strata Tiga','N','N'),('B','S2','Strata Dua','N','N'),('C','S1','Strata Satu','N','N'),('D','D4','Diploma 4','N','N'),('E','D3','Diploma 3','N','N'),('F','D2','Diploma 2','N','N'),('G','D1','Diploma 1','N','N'),('H','SP-1','Spesialis Satu','N','N'),('I','SP-2','Spesialis Dua','N','N'),('J','Profesi','Profesi','N','N');
/*!40000 ALTER TABLE `jenjang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jurusan` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `nama_jurusan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jenjang` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Akreditasi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NamaKetua` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NoSKDikti` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKDikti` date DEFAULT NULL,
  `NoSKBAN` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKBAN` date DEFAULT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES (1,12345,54321,'Teknik Informatika','S1','B','Nelly Indriani Widiastuti, S.Si.,M.T.','','0000-00-00','','0000-00-00','Y');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusansekolah`
--

DROP TABLE IF EXISTS `jurusansekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jurusansekolah` (
  `JurusanSekolah_ID` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NamaJurusan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`JurusanSekolah_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusansekolah`
--

LOCK TABLES `jurusansekolah` WRITE;
/*!40000 ALTER TABLE `jurusansekolah` DISABLE KEYS */;
INSERT INTO `jurusansekolah` VALUES ('011','SMU','IPA','N'),('012','SMU','IPS','N'),('013','SMU','A4/BAHASA','N'),('021','STM PEMBANGUNAN','BANGUNAN GEDUNG','N'),('022','STM PEMBANGUNAN','BANGUNAN AIR','N'),('023','STM PEMBANGUNAN','MESIN PRODUKSI','N'),('025','STM PEMBANGUNAN','LISTRIK INDUSTRI','N'),('024','STM PEMBANGUNAN','OTOMOTIF','N'),('027','STM PEMBANGUNAN','ELEKTRO KOMUNIKASI','N'),('031','SMEA','TATA BUKU','N'),('032','SMEA','TATA NIAGA','N'),('033','SMEA','TATA USAHA','N'),('101','STM','ELEKTRONIKA','N'),('102','STM','LISTRIK','N'),('103','STM','MESIN PRODUKSI','N'),('104','STM','BANGUNAN','N'),('105','STM','OTOMOTIF','N'),('121','SMTP','BANGUNAN KAPAL','N'),('122','SMTP','MESIN KAPAL','N'),('131','SMTP','AVIONIKA','N'),('132','SMTP','LISTRIK & INSTRUMEN','N'),('133','SMTP','MOTOR & RANGKA','N'),('350','SMEA PEMBANGUNAN','EKONOMI','N'),('014','SMU','A1','N'),('015','SMU','A2','N'),('016','SMU','A3','N'),('161','SPG','SD','N'),('162','SPG','TK','N'),('999','SMA LUAR NEGERI','','N'),('041','SMF','FARMASI','N'),('042','SA KES','ANALISI KESEHATAN','N'),('034','SMEA','SEKRETARIS','N');
/*!40000 ALTER TABLE `jurusansekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kampus`
--

DROP TABLE IF EXISTS `kampus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kampus` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Identitas_ID` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kampus_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Kampus_ID` (`Kampus_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kampus`
--

LOCK TABLES `kampus` WRITE;
/*!40000 ALTER TABLE `kampus` DISABLE KEYS */;
INSERT INTO `kampus` VALUES (1,'213131','K1','KAMPUS 1','','','','','Y');
/*!40000 ALTER TABLE `kampus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelompokmtk`
--

DROP TABLE IF EXISTS `kelompokmtk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kelompokmtk` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `KelompokMtk_ID` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `KelompokMtk_ID` (`KelompokMtk_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelompokmtk`
--

LOCK TABLES `kelompokmtk` WRITE;
/*!40000 ALTER TABLE `kelompokmtk` DISABLE KEYS */;
INSERT INTO `kelompokmtk` VALUES (1,'A','MPK-Pengembangan Kepribadian','Y'),(2,'B','MKK-KEILMUAN DAN KETERAMPILAN','Y'),(3,'C','MKB-KEAHLIAN BERKARYA','Y'),(4,'D','MPB-PERILAKU BERKARYA','Y'),(5,'E','MBB-BERKEHIDUPAN BERMASYARAKAT','Y'),(6,'F','MKU/MKDU','Y'),(7,'G','MKDK','Y'),(8,'H','MKK','Y');
/*!40000 ALTER TABLE `kelompokmtk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `krs` (
  `KRS_ID` bigint NOT NULL AUTO_INCREMENT,
  `NIM` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Tahun_ID` int NOT NULL,
  `Jadwal_ID` bigint NOT NULL DEFAULT '0',
  `Kode_mtk` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `SKS` int NOT NULL DEFAULT '0',
  `Tugas1` int NOT NULL DEFAULT '0',
  `Tugas2` int NOT NULL DEFAULT '0',
  `Presensi` int NOT NULL DEFAULT '0',
  `UTS` int NOT NULL DEFAULT '0',
  `UAS` int NOT NULL DEFAULT '0',
  `GradeNilai` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`KRS_ID`),
  KEY `NIM` (`NIM`),
  KEY `Tahun_ID` (`Tahun_ID`),
  KEY `Jadwal_ID` (`Jadwal_ID`),
  KEY `Kode_mtk` (`Kode_mtk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kurikulum`
--

DROP TABLE IF EXISTS `kurikulum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kurikulum` (
  `Kurikulum_ID` int NOT NULL AUTO_INCREMENT,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `Kode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Sesi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `JmlSesi` int NOT NULL DEFAULT '2',
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`Kurikulum_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurikulum`
--

LOCK TABLES `kurikulum` WRITE;
/*!40000 ALTER TABLE `kurikulum` DISABLE KEYS */;
INSERT INTO `kurikulum` VALUES (38,12345,54321,'1','Kurikulum 2018',NULL,2,'Y');
/*!40000 ALTER TABLE `kurikulum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `id_level` int NOT NULL,
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1,'Administrator'),(2,'Dosen'),(3,'Akademik'),(4,'Mahasiswa');
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahasiswa` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `NIM` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_level` int NOT NULL DEFAULT '4',
  `Identitas_ID` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `Program_ID` int DEFAULT NULL,
  `Nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Angkatan` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Tahun_ID` int NOT NULL,
  `TglSKMasuk` date NOT NULL,
  `Kurikulum_ID` int NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'no_foto.jpg',
  `StatusAwal_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `StatusMhsw_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `PenasehatAkademik` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kelamin` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `WargaNegara` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kebangsaan` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TempatLahir` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Agama` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `StatusSipil` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RT` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RW` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatAsal` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `KotaAsal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RTAsal` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RWAsal` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosAsal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiAsal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraAsal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NamaAyah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaAyah` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanAyah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanAyah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `HidupAyah` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NamaIbu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaIbu` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanIbu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanIbu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `HidupIbu` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatOrtu` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `KotaOrtu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosOrtu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiOrtu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraOrtu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TeleponOrtu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `HandphoneOrtu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `EmailOrtu` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah1` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `JenisSekolah` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `KotaSekolah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `JurusanSekolah_ID` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NilaiSekolah` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TahunLulus` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'N',
  `LulusUjian` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NilaiUjian` float unsigned NOT NULL DEFAULT '0',
  `GradeNilai` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLulus` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Lulus dari perguruan tinggi',
  `IPK` decimal(4,2) NOT NULL DEFAULT '0.00',
  `TotalSKS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `NIM` (`NIM`),
  KEY `username` (`username`),
  KEY `Angkatan` (`Angkatan`),
  KEY `identitas_ID` (`Identitas_ID`),
  KEY `Kurikulum_ID` (`Kurikulum_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Program_ID` (`Program_ID`),
  KEY `Tahun_ID` (`Tahun_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (1,'10118128',4,'12345',54321,3,'M. Aghits Septian Alfarizi','muhammadaghits','15091998','2018',0,'0000-00-00',0,'no_foto.jpg','0','A','','L',NULL,NULL,'Purwakarta','1998-09-15','1',NULL,'','','','',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N',0,NULL,'0000-00-00',0.00,0);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_nilai`
--

DROP TABLE IF EXISTS `master_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_nilai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipmin` decimal(5,2) NOT NULL,
  `ipmax` decimal(5,2) NOT NULL,
  `MaxSKS` int NOT NULL,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_nilai`
--

LOCK TABLES `master_nilai` WRITE;
/*!40000 ALTER TABLE `master_nilai` DISABLE KEYS */;
INSERT INTO `master_nilai` VALUES (1,1.20,1.69,12,14032012,261);
/*!40000 ALTER TABLE `master_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matakuliah` (
  `Matakuliah_ID` int NOT NULL AUTO_INCREMENT,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `Kurikulum_ID` int NOT NULL,
  `Kode_mtk` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama_matakuliah` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama_english` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Semester` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `SKS` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `KelompokMtk_ID` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `JenisMTK_ID` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `JenisKurikulum_ID` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `StatusMtk_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Penanggungjawab` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Ket` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`Matakuliah_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Kode_mtk` (`Kode_mtk`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Kurikulum_ID` (`Kurikulum_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES (1,213131,54321,37,'B112','Sistem Basis Data','','4','2','0','0','0','A','','','Y'),(191,12345,54321,38,'1','Sistem Basis Data','Database System','4','3','B','A','1','','Nelly Indriani Widiastuti, S.Si.,M.T','','Y');
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nilai` (
  `Nilai_ID` int NOT NULL AUTO_INCREMENT,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `grade` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bobot` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NilaiMin` decimal(10,2) NOT NULL,
  `NilaiMax` decimal(10,2) NOT NULL,
  `keterangan` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`Nilai_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES (1,14032012,201,'E','0',0.00,2.99,'Buruk Sekali','Y'),(2,14032012,201,'D','1',3.00,4.99,'Buruk','Y'),(3,14032012,201,'C','2',5.00,6.99,'Baik','Y'),(4,14032012,201,'B','3',7.00,8.99,'Baik Sekali','Y'),(5,14032012,201,'A','4',9.00,100.00,'Istimewa','Y'),(6,14032012,202,'E','0',0.00,2.99,'Buruk Sekali','Y'),(7,14032012,202,'D','1',3.00,4.99,'Buruk','Y'),(8,14032012,202,'C','2',5.00,6.99,'Baik','Y'),(9,14032012,202,'B','3',7.00,8.99,'Baik Sekali','Y'),(10,14032012,202,'A','4',9.00,100.00,'Istimewa','Y');
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pekerjaanortu`
--

DROP TABLE IF EXISTS `pekerjaanortu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pekerjaanortu` (
  `Pekerjaan` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Pekerjaan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pekerjaanortu`
--

LOCK TABLES `pekerjaanortu` WRITE;
/*!40000 ALTER TABLE `pekerjaanortu` DISABLE KEYS */;
INSERT INTO `pekerjaanortu` VALUES ('1','Pegawai Negeri','N'),('2','ABRI','N'),('3','Pegawai Swasta','N'),('4','Usaha Sendiri','N'),('5','Tidak Bekerja','N'),('6','Pensiun','N'),('7','Lain-lain','N');
/*!40000 ALTER TABLE `pekerjaanortu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendidikanortu`
--

DROP TABLE IF EXISTS `pendidikanortu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pendidikanortu` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendidikanortu`
--

LOCK TABLES `pendidikanortu` WRITE;
/*!40000 ALTER TABLE `pendidikanortu` DISABLE KEYS */;
INSERT INTO `pendidikanortu` VALUES (1,'Tidak Tamat SD','N'),(2,'Tamat SD','N'),(3,'Tamat SMP','N'),(4,'Tamat SMTA','N'),(5,'Diploma','N'),(6,'Sarjana Muda','N'),(7,'Sarjana','N'),(8,'Pasca Sarjana','N'),(9,'Doktor','N');
/*!40000 ALTER TABLE `pendidikanortu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perhatian`
--

DROP TABLE IF EXISTS `perhatian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perhatian` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `header` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `t1` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `t2` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `t3` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `t4` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `t5` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `t6` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gb` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perhatian`
--

LOCK TABLES `perhatian` WRITE;
/*!40000 ALTER TABLE `perhatian` DISABLE KEYS */;
INSERT INTO `perhatian` VALUES (1,'::.Warning.:: KRS YANG TELAH DI SEND/SUBMIT/KIRIM TDK BISA DIEDIT PASTIKAN SEBELUM DISEND TELITI DULU:','1. Batas Akhir pengisian Kartu Rencana Studi (KRS) dimulai pada tanggal','2. Perubahan Kartu Rencana Studi (KRS) tidak akan dilayani jika batas penginputan KRS telah berakhir','','','','','warning.png');
/*!40000 ALTER TABLE `perhatian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Identitas_ID` int NOT NULL,
  `Program_ID` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_program` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `Program_ID` (`Program_ID`),
  KEY `Identitas_ID` (`Identitas_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (3,213131,'R','REGULER','Y'),(4,213131,'N','NON REGULER','Y');
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regmhs`
--

DROP TABLE IF EXISTS `regmhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regmhs` (
  `ID_Reg` int NOT NULL AUTO_INCREMENT,
  `Tahun` int NOT NULL,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `NIM` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_reg` date NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Reg`),
  KEY `Tahun` (`Tahun`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `NIM` (`NIM`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regmhs`
--

LOCK TABLES `regmhs` WRITE;
/*!40000 ALTER TABLE `regmhs` DISABLE KEYS */;
INSERT INTO `regmhs` VALUES (1,0,14032012,86208,'B.2015.1.1.001','2016-02-04','Y');
/*!40000 ALTER TABLE `regmhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruang`
--

DROP TABLE IF EXISTS `ruang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruang` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Ruang_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Kampus_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Lantai` smallint unsigned DEFAULT '1',
  `RuangKuliah` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'Y',
  `Kapasitas` int unsigned DEFAULT '0',
  `KapasitasUjian` int unsigned DEFAULT '0',
  `Keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `Ruang_ID` (`Ruang_ID`),
  KEY `Kampus_ID` (`Kampus_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruang`
--

LOCK TABLES `ruang` WRITE;
/*!40000 ALTER TABLE `ruang` DISABLE KEYS */;
INSERT INTO `ruang` VALUES (15,'RA03','RUANG 3','K1',1,'Y',40,20,'','Y'),(4,'RA01','RUANG 1','K1',1,'Y',40,20,'','Y'),(14,'RA02','RUANG 2','K1',1,'Y',40,30,'','Y'),(13,'RA05','RUANG 5','K1',1,'Y',40,30,'','Y'),(16,'RA06','RUANG 6','K1',1,'Y',40,20,'','Y'),(17,'RA04','RUANG 4','K1',1,'Y',40,20,'','Y'),(18,'RA07','RUANG 7','K1',1,'Y',40,20,'','Y');
/*!40000 ALTER TABLE `ruang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusawal`
--

DROP TABLE IF EXISTS `statusawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statusawal` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StatusAwal_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BeliFormulir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `JalurKhusus` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `TanpaTest` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusawal`
--

LOCK TABLES `statusawal` WRITE;
/*!40000 ALTER TABLE `statusawal` DISABLE KEYS */;
INSERT INTO `statusawal` VALUES (1,'P','Pindahan','Y','N','Y','','Y'),(2,'B','Baru','Y','N','N',NULL,'Y'),(3,'S','PSSB','Y','Y','Y','Untuk siswa SMA berprestasi','Y'),(4,'D','Drop-in','Y','N','Y','','Y'),(5,'A','Asing','Y','Y','Y','Untuk calon mahasiswa asing','Y');
/*!40000 ALTER TABLE `statusawal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuskerja`
--

DROP TABLE IF EXISTS `statuskerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuskerja` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StatusKerja_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `StatusKerja_ID` (`StatusKerja_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuskerja`
--

LOCK TABLES `statuskerja` WRITE;
/*!40000 ALTER TABLE `statuskerja` DISABLE KEYS */;
INSERT INTO `statuskerja` VALUES (1,'A','Dosen Tetap','N','N'),(2,'B','Dosen PNS Dipekerjakan','N','N'),(3,'C','Dosen Honorer PTN','N','N'),(4,'D','Dosen Honorer Non PTN','N','N'),(5,'E','Dosen Kontrak','N','N');
/*!40000 ALTER TABLE `statuskerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusmhsw`
--

DROP TABLE IF EXISTS `statusmhsw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statusmhsw` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StatusMhsw_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nilai` smallint NOT NULL DEFAULT '0',
  `Keluar` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Def` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `StatusMhsw_ID` (`StatusMhsw_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusmhsw`
--

LOCK TABLES `statusmhsw` WRITE;
/*!40000 ALTER TABLE `statusmhsw` DISABLE KEYS */;
INSERT INTO `statusmhsw` VALUES (1,'A','Aktif',1,'N','N','N'),(2,'C','Cuti',0,'N','N','N'),(3,'P','Pasif',1,'N','Y','N'),(4,'K','Keluar',0,'Y','N','N'),(5,'D','Drop-out',0,'Y','N','N'),(6,'L','Lulus',0,'Y','N','N'),(7,'T','Tunggu Ujian',1,'N','N','N');
/*!40000 ALTER TABLE `statusmhsw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusmtk`
--

DROP TABLE IF EXISTS `statusmtk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statusmtk` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StatusMtk_ID` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `StatusMtk_ID` (`StatusMtk_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusmtk`
--

LOCK TABLES `statusmtk` WRITE;
/*!40000 ALTER TABLE `statusmtk` DISABLE KEYS */;
INSERT INTO `statusmtk` VALUES (1,'A','AKTIF','Y'),(2,'H','HAPUS','Y'),(3,'N','NON AKTIF','Y');
/*!40000 ALTER TABLE `statusmtk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statussipil`
--

DROP TABLE IF EXISTS `statussipil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statussipil` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statussipil`
--

LOCK TABLES `statussipil` WRITE;
/*!40000 ALTER TABLE `statussipil` DISABLE KEYS */;
INSERT INTO `statussipil` VALUES (1,'Belum Menikah','N'),(2,'Menikah','N');
/*!40000 ALTER TABLE `statussipil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tahun`
--

DROP TABLE IF EXISTS `tahun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tahun` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tahun_ID` int NOT NULL,
  `Identitas_ID` int NOT NULL,
  `Jurusan_ID` int NOT NULL,
  `Program_ID` int NOT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglKRSMulai` date DEFAULT NULL,
  `TglKRSSelesai` date DEFAULT NULL,
  `TglCetakKHS` date NOT NULL DEFAULT '0000-00-00',
  `TglBayarMulai` date NOT NULL DEFAULT '0000-00-00',
  `TglBayarSelesai` date NOT NULL DEFAULT '0000-00-00',
  `TglKuliahMulai` date DEFAULT NULL,
  `TglKuliahSelesai` date DEFAULT NULL,
  `TglUTSMulai` date DEFAULT NULL,
  `TglUTSSelesai` date DEFAULT NULL,
  `TglUASMulai` date DEFAULT NULL,
  `TglUASSelesai` date DEFAULT NULL,
  `TglNilaiMulai` date NOT NULL,
  `TglNilaiSelesai` date NOT NULL,
  `HanyaAngkatan` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Catatan` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `Aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `Tahun_ID` (`Tahun_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Program_ID` (`Program_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tahun`
--

LOCK TABLES `tahun` WRITE;
/*!40000 ALTER TABLE `tahun` DISABLE KEYS */;
INSERT INTO `tahun` VALUES (3,20152,213131,86208,3,'Kalender Akademik Semester Genap 20152','2016-02-22','2016-02-27','2016-07-12','0000-00-00','0000-00-00','2016-02-29','2016-06-19','2016-04-18','2016-04-24','2016-06-27','2016-07-03','2016-07-04','2016-07-11',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),(4,20152,213131,60202,3,'Kalender Akademik Semester Genap 20152','2016-02-22','2016-02-27','2016-07-12','0000-00-00','0000-00-00',NULL,NULL,'2016-04-18','2016-04-24','2016-06-27','2016-07-03','2016-07-04','2016-07-11',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),(5,20151,213131,60202,3,'semester gasal 20151','2015-09-07','2015-09-12','2016-02-29','0000-00-00','0000-00-00','2015-09-14','2016-01-02','2015-11-02','2015-11-07','2016-01-11','2016-01-17','2016-01-24','2016-02-29',NULL,NULL,NULL,NULL,NULL,NULL,'Y');
/*!40000 ALTER TABLE `tahun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-20  0:52:07
