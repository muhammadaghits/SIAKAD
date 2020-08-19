-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: akademik
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(11) NOT NULL auto_increment,
  `id_level` int(1) NOT NULL default '1',
  `username` varchar(10) collate latin1_general_ci NOT NULL,
  `password` varchar(255) collate latin1_general_ci NOT NULL,
  `keterangan` varchar(100) collate latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) collate latin1_general_ci NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `telepon` varchar(100) collate latin1_general_ci NOT NULL,
  `foto` varchar(100) collate latin1_general_ci NOT NULL default 'no_foto.jpg',
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ID`, `id_level`, `username`, `password`, `keterangan`, `nama_lengkap`, `email`, `telepon`, `foto`, `aktif`) VALUES
(4, 1, 'admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '', 'admin', '', '', 'admin.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE IF NOT EXISTS `agama` (
  `ID` int(11) NOT NULL auto_increment,
  `nama` varchar(100) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`ID`, `nama`, `aktif`) VALUES
(1, 'ISLAM', 'Y'),
(2, 'KRISTEN KATOLIK', 'Y'),
(3, 'KRISTEN PROTESTAN', 'Y'),
(4, 'BUDHA', 'Y'),
(5, 'HINDU', 'Y'),
(6, 'LAIN-LAIN', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akademik`
--

CREATE TABLE IF NOT EXISTS `akademik` (
  `ID` int(11) NOT NULL auto_increment,
  `id_level` int(2) NOT NULL default '3',
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `username` varchar(100) collate latin1_general_ci NOT NULL,
  `password` varchar(255) collate latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) collate latin1_general_ci NOT NULL,
  `keterangan` varchar(100) collate latin1_general_ci NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `telepon` varchar(100) collate latin1_general_ci NOT NULL,
  `alamat` varchar(100) collate latin1_general_ci NOT NULL,
  `foto` varchar(100) collate latin1_general_ci NOT NULL default 'no_foto.jpg',
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `akademik`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `beritaawal`
--

CREATE TABLE IF NOT EXISTS `beritaawal` (
  `id` int(11) NOT NULL auto_increment,
  `tanggal` date NOT NULL,
  `isi` text collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `beritaawal`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `ID` int(10) NOT NULL auto_increment,
  `id_level` int(1) NOT NULL default '2',
  `username` varchar(20) collate latin1_general_ci default NULL,
  `password` varchar(255) collate latin1_general_ci default NULL,
  `NIDN` varchar(50) collate latin1_general_ci default NULL,
  `nama_lengkap` varchar(100) collate latin1_general_ci default NULL,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` varchar(50) collate latin1_general_ci default NULL,
  `InstitusiInduk` varchar(50) collate latin1_general_ci default NULL,
  `Homebase` varchar(50) collate latin1_general_ci default NULL,
  `TempatLahir` varchar(50) collate latin1_general_ci default NULL,
  `TanggalLahir` date default NULL,
  `KTP` varchar(50) collate latin1_general_ci default NULL,
  `Agama` varchar(50) collate latin1_general_ci default NULL,
  `Alamat` text collate latin1_general_ci,
  `Email` varchar(100) collate latin1_general_ci default NULL,
  `Telepon` varchar(100) collate latin1_general_ci default NULL,
  `Handphone` varchar(50) collate latin1_general_ci default NULL,
  `Keterangan` varchar(100) collate latin1_general_ci default NULL,
  `Kota` varchar(50) collate latin1_general_ci default NULL,
  `Propinsi` varchar(50) collate latin1_general_ci default NULL,
  `Negara` varchar(50) collate latin1_general_ci default NULL,
  `Gelar` varchar(50) collate latin1_general_ci default NULL,
  `Jenjang_ID` varchar(50) collate latin1_general_ci default NULL,
  `Keilmuan` varchar(50) collate latin1_general_ci default NULL,
  `Kelamin_ID` varchar(50) collate latin1_general_ci default NULL,
  `Jabatan_ID` varchar(50) collate latin1_general_ci default NULL,
  `JabatanDikti_ID` varchar(2) collate latin1_general_ci NOT NULL,
  `TglBekerja` date NOT NULL,
  `StatusDosen_ID` varchar(50) collate latin1_general_ci default NULL,
  `StatusKerja_ID` varchar(50) collate latin1_general_ci default NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  `foto` varchar(100) collate latin1_general_ci default 'no foto.jpg',
  PRIMARY KEY  (`ID`),
  KEY `username` (`username`),
  KEY `NIDN` (`NIDN`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=45 ;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`ID`, `id_level`, `username`, `password`, `NIDN`, `nama_lengkap`, `Identitas_ID`, `Jurusan_ID`, `InstitusiInduk`, `Homebase`, `TempatLahir`, `TanggalLahir`, `KTP`, `Agama`, `Alamat`, `Email`, `Telepon`, `Handphone`, `Keterangan`, `Kota`, `Propinsi`, `Negara`, `Gelar`, `Jenjang_ID`, `Keilmuan`, `Kelamin_ID`, `Jabatan_ID`, `JabatanDikti_ID`, `TglBekerja`, `StatusDosen_ID`, `StatusKerja_ID`, `Aktif`, `foto`) VALUES
(1, 2, 'STAI044', 'f72ab66c9ac8be5d6415d3d13faf76692883f533a98714924d5fa8e4283a70bde889b4d817a7938ce02c8703c3c8bd35e5523c33548c69f3e32ae33133683af8', '', 'Alif Finandhita', 0, '54321', '', '', 'Bandung', '1989-07-16', '', 'ISLAM', 'Jl. Dipatiukur No.01 Rt 05 Rw 02 Kel.Sekeloa Kec.Coblong Kota Bandung Kode Pos 41183', 'aliffinandhita@gmail.com', '08123456789', '08123456789', '', 'Bandung', 'Jawa Barat', 'Indonesia', 'S.Kom, M.T', 'B', 'Sistem Basis Data', '', 'B', '0', '0000-00-00', '0', 'D', 'Y', 'akademik.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dropdownsystem`
--

CREATE TABLE IF NOT EXISTS `dropdownsystem` (
  `ID_ds` int(11) NOT NULL auto_increment,
  `id_group` int(11) NOT NULL,
  `nama` varchar(100) character set latin1 NOT NULL,
  `menu_order` int(11) NOT NULL,
  `url` varchar(100) character set latin1 NOT NULL,
  PRIMARY KEY  (`ID_ds`),
  KEY `id_group` (`id_group`,`menu_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=47 ;

--
-- Dumping data untuk tabel `dropdownsystem`
--

INSERT INTO `dropdownsystem` (`ID_ds`, `id_group`, `nama`, `menu_order`, `url`) VALUES
(1, 2, '01 Kalender Akademik', 1, '?page=kalenderakademik'),
(2, 2, '02 Penjadwalan Kuliah', 2, '?page=jadwalkuliah'),
(3, 2, '03 Registrasi Ulang Mahasiswa', 3, '?page=registrasiulangmhsw'),
(4, 4, '01 Absen Kuliah', 1, '?page=dosenabsenkuliah'),
(5, 4, '02 Nilai Mahasiswa', 2, '?page=dosennilaimahasiswa'),
(6, 2, '04 KRS Mahasiswa', 4, '?page=akademikkrs'),
(7, 2, '05 Input Nilai Mahasiswa', 5, '?page=akademikinputnilaimhs'),
(8, 2, '06 KHS Mahasiswa', 6, '?page=akademikkhsmhs'),
(9, 2, '07 Transkrip Nilai Mahasiswa', 7, '?page=akademiktranskripnilai'),
(10, 8, '01 Identitas Institusi', 1, '?page=masterinstitusi'),
(11, 8, '02 Program Studi', 2, '?page=masterprodi'),
(12, 8, '03 Program', 3, '?page=masterprogram'),
(13, 8, '04 Kampus', 4, '?page=masterkampus'),
(14, 8, '05 Ruangan', 5, '?page=masterruangan'),
(15, 8, '06 Matakuliah', 6, '?page=mastermatakuliah'),
(16, 8, '07 Dosen', 7, '?page=masterdosen'),
(17, 8, '08 Mahasiswa', 8, '?page=mastermahasiswa'),
(18, 10, '01 Admin Administrator', 1, '?page=adminadministrator'),
(19, 10, '02 Admin Akademik', 2, '?page=adminakademik'),
(21, 57, '01 MSMHS', 1, '?page=epsbedmsmhs'),
(22, 57, '02 TBKMK', 2, '?page=epsbedttbkmk'),
(23, 57, '03 TBBNL', 3, '?page=epsbedtbbnl'),
(24, 57, '04 TRAKD', 4, '?page=epsbedtrakd'),
(25, 57, '05 TRNLM', 5, '?page=epsbedtrnlm'),
(26, 1, '01 Kalender Akademik', 1, '?page=baakademikkalender'),
(27, 1, '02 Penjadwalan Kuliah', 2, '?page=baakademikjadwal'),
(28, 1, '03 Registrasi Ulang Mahasiswa', 3, '?page=baakademikregulang'),
(29, 1, '04 KRS Mahasiswa', 4, '?page=baakademikjadwalkrs'),
(30, 1, '05 Input Nilai Mahasiswa', 5, '?page=bakademikinputnilaimhs'),
(31, 1, '06 KHS Mahasiswa', 6, '?page=bakademikkhsmhs'),
(32, 1, '07 Transkrip Nilai Mahasiswa', 7, '?page=bakademiktranskripnilai'),
(33, 8, '01 Matakuliah', 1, '?page=baakademikmastermatakuliah'),
(34, 8, '02 Mahasiswa', 2, '?page=baakademikmastermahasiswa'),
(35, 4, '01 Data Dosen', 1, '?page=dosendata'),
(36, 4, '02 Input Nilai Mahasiswa', 2, '?page=doseninputnilaimhsw'),
(37, 7, '01 Data Mahasiswa', 1, '?page=mahasiswadata'),
(38, 7, '02 KRS Mahasiswa', 2, '?page=mahasiswakrs'),
(40, 7, '03 KHS Mahasiswa', 3, '?page=mahasiswakhs'),
(41, 7, '04 Transkrip Nilai', 4, '?page=mahasiswatranskrip'),
(45, 4, '03 Upload Materi', 3, '?page=1f56234e-4361-4706-bb5a-91d3101bbdb6'),
(44, 59, '01 Download', 1, '?page=50f9e899-0d4d-4b7b-a518-fb18bc430926'),
(46, 7, '05 Download Materi', 5, '?page=24fd7148-9843-46d6-bb33-5b1d86b5a172');

-- --------------------------------------------------------

--
-- Struktur dari tabel `epsbed`
--

CREATE TABLE IF NOT EXISTS `epsbed` (
  `ID` int(11) NOT NULL auto_increment,
  `Nama` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Ket` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `epsbed`
--

INSERT INTO `epsbed` (`ID`, `Nama`, `Ket`) VALUES
(15, 'TBKMK_20152.DBF', 'tbkmk'),
(16, 'TBBNL_20152.DBF', 'tbbnl');

-- --------------------------------------------------------

--
-- Struktur dari tabel `error`
--

CREATE TABLE IF NOT EXISTS `error` (
  `id` int(11) NOT NULL auto_increment,
  `tabel` varchar(100) collate latin1_general_ci NOT NULL,
  `text` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `error`
--

INSERT INTO `error` (`id`, `tabel`, `text`) VALUES
(1, 'Group Modul', '1. Pengisian form berurutan sesuai dengan parent ID modul.2. Jika Terjadi Kesalahan yang tidak anda ketahui silakan hubungi administrator anda.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fileupload`
--

CREATE TABLE IF NOT EXISTS `fileupload` (
  `File_ID` bigint(20) NOT NULL auto_increment,
  `Nama_File` varchar(255) NOT NULL,
  `File` varchar(100) NOT NULL,
  `Level_ID` int(11) NOT NULL,
  `Uplouder` varchar(100) NOT NULL,
  `TglInput` datetime NOT NULL,
  PRIMARY KEY  (`File_ID`),
  KEY `File_ID` (`File_ID`),
  KEY `Level_ID` (`Level_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `fileupload`
--

INSERT INTO `fileupload` (`File_ID`, `Nama_File`, `File`, `Level_ID`, `Uplouder`, `TglInput`) VALUES
(18, 'Kalender Akademik Semt. Genap 2015_2016', 'Kalender Akademi k Semester Genap 20152016.pdf', 1, '', '2016-02-05 23:32:11'),
(17, 'Materi Pengantar Komputer', '', 2, '066', '2016-02-04 10:58:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groupmodul`
--

CREATE TABLE IF NOT EXISTS `groupmodul` (
  `id_group` int(10) NOT NULL auto_increment,
  `relasi_modul` int(10) NOT NULL,
  `nama` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_group`),
  KEY `relasi_modul` (`relasi_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=60 ;

--
-- Dumping data untuk tabel `groupmodul`
--

INSERT INTO `groupmodul` (`id_group`, `relasi_modul`, `nama`) VALUES
(1, 1, 'Ba Akademik'),
(2, 2, 'Akademik'),
(4, 4, 'Dosen'),
(7, 7, 'Mahasiswa'),
(8, 8, 'Master'),
(10, 10, 'Admin'),
(57, 12, 'EPSBED'),
(59, 11, 'Download');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hakmodul`
--

CREATE TABLE IF NOT EXISTS `hakmodul` (
  `ID_hm` int(11) NOT NULL auto_increment,
  `id_level` int(11) NOT NULL,
  `ID_ds` int(11) NOT NULL,
  PRIMARY KEY  (`ID_hm`),
  KEY `ID_ds` (`ID_ds`,`id_level`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=45 ;

--
-- Dumping data untuk tabel `hakmodul`
--

INSERT INTO `hakmodul` (`ID_hm`, `id_level`, `ID_ds`) VALUES
(1, 1, 1),
(2, 1, 2),
(15, 1, 16),
(4, 1, 3),
(5, 1, 6),
(6, 1, 7),
(7, 1, 8),
(8, 1, 9),
(9, 1, 10),
(10, 1, 11),
(11, 1, 12),
(12, 1, 13),
(13, 1, 14),
(14, 1, 15),
(16, 1, 17),
(17, 1, 18),
(18, 1, 19),
(19, 1, 20),
(20, 1, 21),
(21, 1, 22),
(22, 1, 23),
(23, 1, 24),
(24, 1, 25),
(25, 3, 26),
(26, 3, 27),
(27, 3, 28),
(28, 3, 29),
(29, 3, 30),
(30, 3, 31),
(31, 3, 32),
(32, 3, 33),
(33, 3, 34),
(34, 2, 35),
(35, 2, 36),
(36, 4, 37),
(37, 4, 38),
(38, 4, 39),
(39, 4, 40),
(40, 4, 41),
(42, 1, 44),
(43, 2, 45),
(44, 4, 46);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE IF NOT EXISTS `hari` (
  `id` int(11) NOT NULL auto_increment,
  `hari` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id`, `hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'Sabtu'),
(7, 'Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hidup`
--

CREATE TABLE IF NOT EXISTS `hidup` (
  `Hidup` char(3) collate latin1_general_ci NOT NULL default '',
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `NA` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`Hidup`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hidup`
--

INSERT INTO `hidup` (`Hidup`, `Nama`, `NA`) VALUES
('1', 'Masih Hidup', 'N'),
('2', 'Sudah Meninggal', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE IF NOT EXISTS `identitas` (
  `ID` int(11) NOT NULL auto_increment,
  `Identitas_ID` int(5) NOT NULL,
  `KodeHukum` varchar(50) collate latin1_general_ci NOT NULL,
  `Nama_Identitas` varchar(100) collate latin1_general_ci NOT NULL,
  `TglMulai` date NOT NULL default '0000-00-00',
  `Alamat1` varchar(100) collate latin1_general_ci default NULL,
  `Kota` varchar(50) collate latin1_general_ci default NULL,
  `KodePos` varchar(20) collate latin1_general_ci default NULL,
  `Telepon` varchar(20) collate latin1_general_ci default NULL,
  `Fax` varchar(20) collate latin1_general_ci default NULL,
  `Email` varchar(50) collate latin1_general_ci default NULL,
  `Website` varchar(50) collate latin1_general_ci default NULL,
  `NoAkta` varchar(50) collate latin1_general_ci default NULL,
  `TglAkta` date default NULL,
  `NoSah` varchar(50) collate latin1_general_ci default NULL,
  `TglSah` date default NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci default 'Y',
  PRIMARY KEY  (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`ID`, `Identitas_ID`, `KodeHukum`, `Nama_Identitas`, `TglMulai`, `Alamat1`, `Kota`, `KodePos`, `Telepon`, `Fax`, `Email`, `Website`, `NoAkta`, `TglAkta`, `NoSah`, `TglSah`, `Aktif`) VALUES
(1, 12345, '123456789', 'Universitas Komputer Indonesia', '2000-08-28', 'Jl. Dipatiukur no 114-116, Bandung, Jawa Barat, Indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `Jabatan_ID` varchar(10) collate latin1_general_ci NOT NULL default '',
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `Def` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `NA` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`Jabatan_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`Jabatan_ID`, `Nama`, `Def`, `NA`) VALUES
('A', 'Tenaga Pengajar', 'N', 'N'),
('B', 'Asisten Ahli', 'N', 'N'),
('C', 'Lektor', 'N', 'N'),
('D', 'Lektor Kepala', 'N', 'N'),
('E', 'Guru Besar', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatandikti`
--

CREATE TABLE IF NOT EXISTS `jabatandikti` (
  `JabatanDikti_ID` varchar(5) collate latin1_general_ci NOT NULL default '',
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `Def` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `NA` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`JabatanDikti_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `jabatandikti`
--

INSERT INTO `jabatandikti` (`JabatanDikti_ID`, `Nama`, `Def`, `NA`) VALUES
('01', 'AAM', 'N', 'N'),
('02', 'AA', 'N', 'N'),
('03', 'LMu', 'N', 'N'),
('04', 'LMa', 'N', 'N'),
('05', 'L', 'N', 'N'),
('06', 'LKM', 'N', 'N'),
('07', 'LK', 'N', 'N'),
('08', 'GBM', 'N', 'N'),
('09', 'GB', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `Jadwal_ID` bigint(20) NOT NULL auto_increment,
  `Tahun_ID` int(5) NOT NULL,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `Program_ID` int(5) NOT NULL,
  `Kode_Mtk` varchar(15) collate latin1_general_ci NOT NULL,
  `Ruang_ID` varchar(10) collate latin1_general_ci NOT NULL,
  `Kelas` varchar(20) collate latin1_general_ci NOT NULL,
  `Dosen_ID` int(11) NOT NULL,
  `Hari` varchar(10) collate latin1_general_ci NOT NULL,
  `Jam_Mulai` time NOT NULL default '00:00:00',
  `Jam_Selesai` time NOT NULL default '00:00:00',
  `UTSTgl` date NOT NULL,
  `UTSHari` varchar(10) collate latin1_general_ci NOT NULL,
  `UTSMulai` time NOT NULL,
  `UTSSelesai` time NOT NULL,
  `UTSRuang` varchar(10) collate latin1_general_ci NOT NULL,
  `UASTgl` date NOT NULL,
  `UASHari` varchar(10) collate latin1_general_ci NOT NULL,
  `UASMulai` time NOT NULL,
  `UASSelesai` time NOT NULL,
  `UASRuang` varchar(10) collate latin1_general_ci NOT NULL,
  `JumlahMhsw` int(11) NOT NULL,
  `Kapasitas` int(11) NOT NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Jadwal_ID`),
  KEY `Tahun_ID` (`Tahun_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Program_ID` (`Program_ID`),
  KEY `Kode_Mtk` (`Kode_Mtk`),
  KEY `Kode_Jurusan` (`Jurusan_ID`),
  KEY `Ruang_ID` (`Ruang_ID`),
  KEY `Dosen_ID` (`Dosen_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=62 ;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`Jadwal_ID`, `Tahun_ID`, `Identitas_ID`, `Jurusan_ID`, `Program_ID`, `Kode_Mtk`, `Ruang_ID`, `Kelas`, `Dosen_ID`, `Hari`, `Jam_Mulai`, `Jam_Selesai`, `UTSTgl`, `UTSHari`, `UTSMulai`, `UTSSelesai`, `UTSRuang`, `UASTgl`, `UASHari`, `UASMulai`, `UASSelesai`, `UASRuang`, `JumlahMhsw`, `Kapasitas`, `Aktif`) VALUES
(4, 20151, 213131, 86208, 3, 'IA123', '4', '', 5, 'Senin', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(3, 20151, 213131, 86208, 3, 'IA134', '4', '', 7, 'Selasa', '15:30:00', '18:00:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(6, 20151, 213131, 86208, 3, 'IB125', '4', '', 13, 'Senin', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(7, 20151, 213131, 86208, 3, 'IA125', '4', '', 11, 'Selasa', '12:30:00', '15:00:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(8, 20152, 213131, 86208, 3, 'IA225', '4', 'P', 11, 'Kamis', '13:50:00', '16:20:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(9, 20152, 213131, 86208, 3, 'IC221', '4', 'P', 6, 'Senin', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(10, 20151, 213131, 86208, 3, 'IA122', '4', '', 24, 'Rabu', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(11, 20151, 213131, 86208, 3, 'IB124', '4', '', 23, 'Rabu', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(12, 20151, 213131, 86208, 3, 'IA121', '4', '', 9, 'Rabu', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(13, 20151, 213131, 86208, 3, 'IE104', '4', '', 19, 'Senin', '10:00:00', '11:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(14, 20151, 213131, 86208, 3, 'IB121', '4', '', 4, 'Kamis', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(15, 20151, 213131, 86208, 3, 'IB123', '4', '', 21, 'Senin', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(16, 20151, 213131, 86208, 3, 'IB3212', '14', '', 22, 'Senin', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(17, 20151, 213131, 86208, 3, 'IB3210', '14', '', 12, 'Senin', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(18, 20151, 213131, 86208, 3, 'IA325', '14', '', 7, 'Senin', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(19, 20151, 213131, 86208, 3, 'IA324', '14', '', 18, 'Selasa', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(20, 20151, 213131, 86208, 3, 'ID321', '14', '', 10, 'Selasa', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(21, 20151, 213131, 86208, 3, 'IC321', '14', '', 6, 'Selasa', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(22, 20151, 213131, 86208, 3, 'IC324', '14', '', 27, 'Rabu', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(23, 20151, 213131, 86208, 3, 'IC322', '14', '', 15, 'Rabu', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(27, 20151, 213131, 86208, 3, 'IB122', '4', '', 14, 'Kamis', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(26, 20151, 213131, 86208, 3, 'IB126', '4', '', 2, 'Kamis', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(29, 20151, 213131, 86208, 3, 'IB329', '14', '', 14, 'Rabu', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(30, 20151, 213131, 86208, 3, 'IC333', '14', '', 8, 'Kamis', '13:00:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(31, 20151, 213131, 86208, 3, 'IB328', '14', '', 26, 'Kamis', '16:00:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(32, 20152, 213131, 86208, 3, 'IA226', '4', 'P', 24, 'Senin', '16:00:00', '17:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(33, 20152, 213131, 86208, 3, 'IA224', '4', 'P', 7, 'Selasa', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(34, 20152, 213131, 86208, 3, 'IB2210', '4', 'P', 26, 'Selasa', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(35, 20152, 213131, 86208, 3, 'IB228', '4', 'P', 4, 'Selasa', '16:00:00', '17:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(36, 20152, 213131, 86208, 3, 'IB227', '4', 'P', 2, 'Rabu', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(37, 20152, 213131, 86208, 3, 'IC222', '4', 'P', 15, 'Rabu', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(38, 20152, 213131, 86208, 3, 'IB22.9', '4', 'P', 14, 'Rabu', '16:00:00', '17:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(39, 20152, 213131, 86208, 3, 'IB22.11', '4', 'P', 23, 'Kamis', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(40, 20152, 213131, 86208, 3, 'IB2211', '4', 'P', 23, 'Kamis', '12:10:00', '13:50:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(41, 20152, 213131, 86208, 3, 'IE421', '4', '', 1, 'Senin', '09:00:00', '11:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(42, 20152, 213131, 86208, 3, 'IC436', '15', 'P', 5, 'Senin', '11:00:00', '13:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(43, 20152, 213131, 86208, 3, 'IE105', '15', 'P', 21, 'Senin', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(44, 20152, 213131, 86208, 3, 'IA424', '15', 'P', 18, 'Senin', '15:30:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(45, 20152, 213131, 86208, 3, 'IC435', '15', 'P', 44, 'Selasa', '11:00:00', '13:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(46, 20152, 213131, 86208, 3, 'IB4210', '15', 'P', 17, 'Selasa', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(47, 20152, 213131, 86208, 3, 'IE422', '15', 'P', 20, 'Kamis', '16:30:00', '18:10:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(48, 20152, 213131, 86208, 3, 'IB4213', '15', 'P', 19, 'Rabu', '13:00:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(49, 20152, 213131, 86208, 3, 'IB4314', '15', 'P', 16, 'Rabu', '15:40:00', '18:10:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(50, 20152, 213131, 86208, 3, 'IB428', '15', 'P', 26, 'Selasa', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(51, 20152, 213131, 86208, 3, 'IB429', '15', 'P', 12, 'Kamis', '13:00:00', '14:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(52, 20152, 213131, 86208, 3, 'IA425', '15', 'P', 7, 'Kamis', '14:40:00', '16:20:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(53, 20152, 213131, 86208, 3, 'IC6313', '17', 'P', 22, 'Senin', '12:10:00', '14:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(54, 20152, 213131, 86208, 3, 'IC6311', '17', 'P', 10, 'Senin', '15:50:00', '17:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(55, 20152, 213131, 86208, 3, 'IB6319', '17', 'P', 27, 'Selasa', '11:00:00', '17:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(56, 20152, 213131, 86208, 3, 'IC6215', '17', 'P', 6, 'Selasa', '13:50:00', '15:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(57, 20152, 213131, 86208, 3, 'IC6214', '17', '', 28, 'Selasa', '15:50:00', '17:30:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(58, 20152, 213131, 86208, 3, 'IC6312', '17', 'P', 8, 'Rabu', '13:00:00', '14:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(59, 20152, 213131, 86208, 3, 'IB6321', '17', 'P', 24, 'Rabu', '14:40:00', '16:10:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(60, 20152, 213131, 86208, 3, 'IB6220', '17', 'P', 3, 'Kamis', '13:00:00', '14:40:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y'),
(61, 20152, 213131, 86208, 3, 'IE623', '17', 'P', 25, 'Kamis', '14:40:00', '16:10:00', '0000-00-00', '', '00:00:00', '00:00:00', '', '0000-00-00', '', '00:00:00', '00:00:00', '', 0, 0, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jeniskurikulum`
--

CREATE TABLE IF NOT EXISTS `jeniskurikulum` (
  `JenisKurikulum_ID` int(11) NOT NULL auto_increment,
  `Kode` varchar(10) collate latin1_general_ci NOT NULL,
  `Singkatan` varchar(10) collate latin1_general_ci default NULL,
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `Jurusan_ID` varchar(20) collate latin1_general_ci NOT NULL default '',
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`JenisKurikulum_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Identitas_ID` (`Kode`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `jeniskurikulum`
--

INSERT INTO `jeniskurikulum` (`JenisKurikulum_ID`, `Kode`, `Singkatan`, `Nama`, `Jurusan_ID`, `Aktif`) VALUES
(1, 'A', NULL, 'Inti', '', 'N'),
(2, 'B', NULL, 'Institusi', '', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenismk`
--

CREATE TABLE IF NOT EXISTS `jenismk` (
  `ID` int(11) NOT NULL auto_increment,
  `JenisMTK_ID` varchar(2) collate latin1_general_ci NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`),
  KEY `JenisMK_ID` (`JenisMTK_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `jenismk`
--

INSERT INTO `jenismk` (`ID`, `JenisMTK_ID`, `Nama`, `Aktif`) VALUES
(1, 'A', 'WAJIB', 'Y'),
(2, 'B', 'PILIHAN', 'Y'),
(3, 'C', 'WAJIB PERMINTAAN', 'Y'),
(4, 'D', 'PILIHAN PERMINTAAN', 'Y'),
(5, 'S', 'TA/SKRIPSI/THESIS/DISERTASI', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenissekolah`
--

CREATE TABLE IF NOT EXISTS `jenissekolah` (
  `JenisSekolah_ID` int(11) NOT NULL auto_increment,
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`JenisSekolah_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `jenissekolah`
--

INSERT INTO `jenissekolah` (`JenisSekolah_ID`, `Nama`) VALUES
(4, 'Yayasan Penabur'),
(5, 'Kristen/Katolik Non Penabur'),
(3, 'Umum'),
(2, 'Negeri'),
(6, 'Luar Negeri'),
(1, 'Madrasah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_ujian`
--

CREATE TABLE IF NOT EXISTS `jenis_ujian` (
  `ID` int(1) NOT NULL auto_increment,
  `jenisjadwal` varchar(10) collate latin1_general_ci NOT NULL,
  `nama` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `jenisjadwal` (`jenisjadwal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `jenis_ujian`
--

INSERT INTO `jenis_ujian` (`ID`, `jenisjadwal`, `nama`) VALUES
(1, 'UTS', 'Ujian Tengah Semester'),
(2, 'UAS', 'Ujian Akhir Semester');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang`
--

CREATE TABLE IF NOT EXISTS `jenjang` (
  `Jenjang_ID` varchar(5) collate latin1_general_ci NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `Keterangan` varchar(100) collate latin1_general_ci default NULL,
  `Def` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `NA` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`Jenjang_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `jenjang`
--

INSERT INTO `jenjang` (`Jenjang_ID`, `Nama`, `Keterangan`, `Def`, `NA`) VALUES
('A', 'S3', 'Strata Tiga', 'N', 'N'),
('B', 'S2', 'Strata Dua', 'N', 'N'),
('C', 'S1', 'Strata Satu', 'N', 'N'),
('D', 'D4', 'Diploma 4', 'N', 'N'),
('E', 'D3', 'Diploma 3', 'N', 'N'),
('F', 'D2', 'Diploma 2', 'N', 'N'),
('G', 'D1', 'Diploma 1', 'N', 'N'),
('H', 'SP-1', 'Spesialis Satu', 'N', 'N'),
('I', 'SP-2', 'Spesialis Dua', 'N', 'N'),
('J', 'Profesi', 'Profesi', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `ID` int(11) NOT NULL auto_increment,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `nama_jurusan` varchar(100) collate latin1_general_ci NOT NULL,
  `jenjang` varchar(5) collate latin1_general_ci NOT NULL,
  `Akreditasi` varchar(100) collate latin1_general_ci default NULL,
  `NamaKetua` varchar(100) collate latin1_general_ci default NULL,
  `NoSKDikti` varchar(100) collate latin1_general_ci default NULL,
  `TglSKDikti` date default NULL,
  `NoSKBAN` varchar(100) collate latin1_general_ci default NULL,
  `TglSKBAN` date default NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`ID`, `Identitas_ID`, `Jurusan_ID`, `nama_jurusan`, `jenjang`, `Akreditasi`, `NamaKetua`, `NoSKDikti`, `TglSKDikti`, `NoSKBAN`, `TglSKBAN`, `Aktif`) VALUES
(1, 12345, 54321, 'Teknik Informatika', 'S1', 'B', 'Nelly Indriani Widiastuti, S.Si.,M.T.', '', '0000-00-00', '', '0000-00-00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusansekolah`
--

CREATE TABLE IF NOT EXISTS `jurusansekolah` (
  `JurusanSekolah_ID` varchar(50) collate latin1_general_ci NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `NamaJurusan` varchar(100) collate latin1_general_ci default NULL,
  `NA` enum('Y','N') collate latin1_general_ci default 'N',
  PRIMARY KEY  (`JurusanSekolah_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `jurusansekolah`
--

INSERT INTO `jurusansekolah` (`JurusanSekolah_ID`, `Nama`, `NamaJurusan`, `NA`) VALUES
('011', 'SMU', 'IPA', 'N'),
('012', 'SMU', 'IPS', 'N'),
('013', 'SMU', 'A4/BAHASA', 'N'),
('021', 'STM PEMBANGUNAN', 'BANGUNAN GEDUNG', 'N'),
('022', 'STM PEMBANGUNAN', 'BANGUNAN AIR', 'N'),
('023', 'STM PEMBANGUNAN', 'MESIN PRODUKSI', 'N'),
('025', 'STM PEMBANGUNAN', 'LISTRIK INDUSTRI', 'N'),
('024', 'STM PEMBANGUNAN', 'OTOMOTIF', 'N'),
('027', 'STM PEMBANGUNAN', 'ELEKTRO KOMUNIKASI', 'N'),
('031', 'SMEA', 'TATA BUKU', 'N'),
('032', 'SMEA', 'TATA NIAGA', 'N'),
('033', 'SMEA', 'TATA USAHA', 'N'),
('101', 'STM', 'ELEKTRONIKA', 'N'),
('102', 'STM', 'LISTRIK', 'N'),
('103', 'STM', 'MESIN PRODUKSI', 'N'),
('104', 'STM', 'BANGUNAN', 'N'),
('105', 'STM', 'OTOMOTIF', 'N'),
('121', 'SMTP', 'BANGUNAN KAPAL', 'N'),
('122', 'SMTP', 'MESIN KAPAL', 'N'),
('131', 'SMTP', 'AVIONIKA', 'N'),
('132', 'SMTP', 'LISTRIK & INSTRUMEN', 'N'),
('133', 'SMTP', 'MOTOR & RANGKA', 'N'),
('350', 'SMEA PEMBANGUNAN', 'EKONOMI', 'N'),
('014', 'SMU', 'A1', 'N'),
('015', 'SMU', 'A2', 'N'),
('016', 'SMU', 'A3', 'N'),
('161', 'SPG', 'SD', 'N'),
('162', 'SPG', 'TK', 'N'),
('999', 'SMA LUAR NEGERI', '', 'N'),
('041', 'SMF', 'FARMASI', 'N'),
('042', 'SA KES', 'ANALISI KESEHATAN', 'N'),
('034', 'SMEA', 'SEKRETARIS', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampus`
--

CREATE TABLE IF NOT EXISTS `kampus` (
  `ID` int(11) NOT NULL auto_increment,
  `Identitas_ID` varchar(10) collate latin1_general_ci default NULL,
  `Kampus_ID` varchar(20) collate latin1_general_ci NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `Alamat` varchar(255) collate latin1_general_ci default NULL,
  `Kota` varchar(50) collate latin1_general_ci default NULL,
  `Telepon` varchar(50) collate latin1_general_ci default NULL,
  `Fax` varchar(50) collate latin1_general_ci default NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci default 'N',
  PRIMARY KEY  (`ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Kampus_ID` (`Kampus_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `kampus`
--

INSERT INTO `kampus` (`ID`, `Identitas_ID`, `Kampus_ID`, `Nama`, `Alamat`, `Kota`, `Telepon`, `Fax`, `Aktif`) VALUES
(1, '213131', 'K1', 'KAMPUS 1', '', '', '', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompokmtk`
--

CREATE TABLE IF NOT EXISTS `kelompokmtk` (
  `ID` int(1) NOT NULL auto_increment,
  `KelompokMtk_ID` varchar(4) collate latin1_general_ci NOT NULL,
  `Nama` varchar(30) collate latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`),
  KEY `KelompokMtk_ID` (`KelompokMtk_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `kelompokmtk`
--

INSERT INTO `kelompokmtk` (`ID`, `KelompokMtk_ID`, `Nama`, `Aktif`) VALUES
(1, 'A', 'MPK-Pengembangan Kepribadian', 'Y'),
(2, 'B', 'MKK-KEILMUAN DAN KETERAMPILAN', 'Y'),
(3, 'C', 'MKB-KEAHLIAN BERKARYA', 'Y'),
(4, 'D', 'MPB-PERILAKU BERKARYA', 'Y'),
(5, 'E', 'MBB-BERKEHIDUPAN BERMASYARAKAT', 'Y'),
(6, 'F', 'MKU/MKDU', 'Y'),
(7, 'G', 'MKDK', 'Y'),
(8, 'H', 'MKK', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE IF NOT EXISTS `krs` (
  `KRS_ID` bigint(20) NOT NULL auto_increment,
  `NIM` varchar(20) collate latin1_general_ci NOT NULL,
  `Tahun_ID` int(5) NOT NULL,
  `Jadwal_ID` bigint(20) NOT NULL default '0',
  `Kode_mtk` varchar(15) collate latin1_general_ci NOT NULL,
  `SKS` int(1) NOT NULL default '0',
  `Tugas1` int(11) NOT NULL default '0',
  `Tugas2` int(11) NOT NULL default '0',
  `Presensi` int(11) NOT NULL default '0',
  `UTS` int(11) NOT NULL default '0',
  `UAS` int(11) NOT NULL default '0',
  `GradeNilai` varchar(10) collate latin1_general_ci NOT NULL default '-',
  `BobotNilai` decimal(4,2) NOT NULL default '0.00',
  PRIMARY KEY  (`KRS_ID`),
  KEY `NIM` (`NIM`),
  KEY `Tahun_ID` (`Tahun_ID`),
  KEY `Jadwal_ID` (`Jadwal_ID`),
  KEY `Kode_mtk` (`Kode_mtk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `krs`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE IF NOT EXISTS `kurikulum` (
  `Kurikulum_ID` int(11) NOT NULL auto_increment,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `Kode` varchar(8) collate latin1_general_ci NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `Sesi` varchar(50) collate latin1_general_ci default NULL,
  `JmlSesi` int(11) NOT NULL default '2',
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`Kurikulum_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`Kurikulum_ID`, `Identitas_ID`, `Jurusan_ID`, `Kode`, `Nama`, `Sesi`, `JmlSesi`, `Aktif`) VALUES
(38, 12345, 54321, '1', 'Kurikulum 2018', NULL, 2, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `id_level` int(10) NOT NULL,
  `level` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `level`) VALUES
(1, 'Administrator'),
(2, 'Dosen'),
(3, 'Akademik'),
(4, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `ID` bigint(20) NOT NULL auto_increment,
  `NIM` varchar(50) collate latin1_general_ci NOT NULL,
  `id_level` int(1) NOT NULL default '4',
  `Identitas_ID` varchar(10) collate latin1_general_ci NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `Program_ID` int(1) default NULL,
  `Nama` varchar(100) collate latin1_general_ci default NULL,
  `username` varchar(20) collate latin1_general_ci NOT NULL,
  `password` varchar(255) collate latin1_general_ci default NULL,
  `Angkatan` varchar(8) collate latin1_general_ci default NULL,
  `Tahun_ID` int(5) NOT NULL,
  `TglSKMasuk` date NOT NULL,
  `Kurikulum_ID` int(11) NOT NULL,
  `foto` varchar(255) collate latin1_general_ci NOT NULL default 'no_foto.jpg',
  `StatusAwal_ID` varchar(5) collate latin1_general_ci default NULL,
  `StatusMhsw_ID` varchar(5) collate latin1_general_ci NOT NULL,
  `PenasehatAkademik` varchar(50) collate latin1_general_ci default NULL,
  `Kelamin` char(3) collate latin1_general_ci default NULL,
  `WargaNegara` char(3) collate latin1_general_ci default NULL,
  `Kebangsaan` varchar(50) collate latin1_general_ci default NULL,
  `TempatLahir` varchar(50) collate latin1_general_ci default NULL,
  `TanggalLahir` date default NULL,
  `Agama` varchar(20) collate latin1_general_ci default NULL,
  `StatusSipil` varchar(20) collate latin1_general_ci default NULL,
  `Alamat` varchar(255) collate latin1_general_ci default NULL,
  `Kota` varchar(50) collate latin1_general_ci default NULL,
  `RT` varchar(10) collate latin1_general_ci default NULL,
  `RW` varchar(10) collate latin1_general_ci default NULL,
  `KodePos` varchar(50) collate latin1_general_ci default NULL,
  `Propinsi` varchar(50) collate latin1_general_ci default NULL,
  `Negara` varchar(50) collate latin1_general_ci default NULL,
  `Telepon` varchar(50) collate latin1_general_ci default NULL,
  `Handphone` varchar(50) collate latin1_general_ci default NULL,
  `Email` varchar(100) collate latin1_general_ci default NULL,
  `AlamatAsal` varchar(255) collate latin1_general_ci default NULL,
  `KotaAsal` varchar(50) collate latin1_general_ci default NULL,
  `RTAsal` varchar(10) collate latin1_general_ci default NULL,
  `RWAsal` varchar(10) collate latin1_general_ci default NULL,
  `KodePosAsal` varchar(50) collate latin1_general_ci default NULL,
  `PropinsiAsal` varchar(50) collate latin1_general_ci default NULL,
  `NegaraAsal` varchar(50) collate latin1_general_ci default NULL,
  `NamaAyah` varchar(50) collate latin1_general_ci default NULL,
  `AgamaAyah` varchar(20) collate latin1_general_ci default NULL,
  `PendidikanAyah` varchar(50) collate latin1_general_ci default NULL,
  `PekerjaanAyah` varchar(50) collate latin1_general_ci default NULL,
  `HidupAyah` varchar(5) collate latin1_general_ci default NULL,
  `NamaIbu` varchar(50) collate latin1_general_ci default NULL,
  `AgamaIbu` varchar(20) collate latin1_general_ci default NULL,
  `PendidikanIbu` varchar(50) collate latin1_general_ci default NULL,
  `PekerjaanIbu` varchar(50) collate latin1_general_ci default NULL,
  `HidupIbu` varchar(5) collate latin1_general_ci default NULL,
  `AlamatOrtu` varchar(255) collate latin1_general_ci default NULL,
  `KotaOrtu` varchar(50) collate latin1_general_ci default NULL,
  `KodePosOrtu` varchar(50) collate latin1_general_ci default NULL,
  `PropinsiOrtu` varchar(50) collate latin1_general_ci default NULL,
  `NegaraOrtu` varchar(50) collate latin1_general_ci default NULL,
  `TeleponOrtu` varchar(50) collate latin1_general_ci default NULL,
  `HandphoneOrtu` varchar(50) collate latin1_general_ci default NULL,
  `EmailOrtu` varchar(100) collate latin1_general_ci default NULL,
  `AsalSekolah` varchar(50) collate latin1_general_ci default NULL,
  `AsalSekolah1` varchar(50) collate latin1_general_ci default NULL,
  `JenisSekolah` varchar(20) collate latin1_general_ci default NULL,
  `KotaSekolah` varchar(50) collate latin1_general_ci default NULL,
  `JurusanSekolah_ID` varchar(3) collate latin1_general_ci default NULL,
  `NilaiSekolah` varchar(10) collate latin1_general_ci default NULL,
  `TahunLulus` varchar(10) collate latin1_general_ci default NULL,
  `aktif` enum('Y','N') collate latin1_general_ci default 'N',
  `LulusUjian` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `NilaiUjian` float unsigned NOT NULL default '0',
  `GradeNilai` varchar(5) collate latin1_general_ci default NULL,
  `TanggalLulus` date NOT NULL default '0000-00-00' COMMENT 'Lulus dari perguruan tinggi',
  `IPK` decimal(4,2) NOT NULL default '0.00',
  `TotalSKS` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `NIM` (`NIM`),
  KEY `username` (`username`),
  KEY `Angkatan` (`Angkatan`),
  KEY `identitas_ID` (`Identitas_ID`),
  KEY `Kurikulum_ID` (`Kurikulum_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Program_ID` (`Program_ID`),
  KEY `Tahun_ID` (`Tahun_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=190 ;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`ID`, `NIM`, `id_level`, `Identitas_ID`, `Jurusan_ID`, `Program_ID`, `Nama`, `username`, `password`, `Angkatan`, `Tahun_ID`, `TglSKMasuk`, `Kurikulum_ID`, `foto`, `StatusAwal_ID`, `StatusMhsw_ID`, `PenasehatAkademik`, `Kelamin`, `WargaNegara`, `Kebangsaan`, `TempatLahir`, `TanggalLahir`, `Agama`, `StatusSipil`, `Alamat`, `Kota`, `RT`, `RW`, `KodePos`, `Propinsi`, `Negara`, `Telepon`, `Handphone`, `Email`, `AlamatAsal`, `KotaAsal`, `RTAsal`, `RWAsal`, `KodePosAsal`, `PropinsiAsal`, `NegaraAsal`, `NamaAyah`, `AgamaAyah`, `PendidikanAyah`, `PekerjaanAyah`, `HidupAyah`, `NamaIbu`, `AgamaIbu`, `PendidikanIbu`, `PekerjaanIbu`, `HidupIbu`, `AlamatOrtu`, `KotaOrtu`, `KodePosOrtu`, `PropinsiOrtu`, `NegaraOrtu`, `TeleponOrtu`, `HandphoneOrtu`, `EmailOrtu`, `AsalSekolah`, `AsalSekolah1`, `JenisSekolah`, `KotaSekolah`, `JurusanSekolah_ID`, `NilaiSekolah`, `TahunLulus`, `aktif`, `LulusUjian`, `NilaiUjian`, `GradeNilai`, `TanggalLulus`, `IPK`, `TotalSKS`) VALUES
(1, '10118128', 4, '12345', 54321, 3, 'M. Aghits Septian Alfarizi', 'muhammadaghits', '15091998', '2018', 0, '0000-00-00', 0, 'no_foto.jpg', '0', 'A', '', 'L', NULL, NULL, 'Purwakarta', '1998-09-15', '1', NULL, '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 0, NULL, '0000-00-00', 0.00, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_nilai`
--

CREATE TABLE IF NOT EXISTS `master_nilai` (
  `id` int(11) NOT NULL auto_increment,
  `ipmin` decimal(5,2) NOT NULL,
  `ipmax` decimal(5,2) NOT NULL,
  `MaxSKS` int(3) NOT NULL,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `master_nilai`
--

INSERT INTO `master_nilai` (`id`, `ipmin`, `ipmax`, `MaxSKS`, `Identitas_ID`, `Jurusan_ID`) VALUES
(1, 1.20, 1.69, 12, 14032012, 261);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `Matakuliah_ID` int(11) NOT NULL auto_increment,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `Kurikulum_ID` int(11) NOT NULL,
  `Kode_mtk` varchar(15) collate latin1_general_ci NOT NULL,
  `Nama_matakuliah` varchar(100) collate latin1_general_ci NOT NULL,
  `Nama_english` varchar(100) collate latin1_general_ci NOT NULL,
  `Semester` varchar(2) collate latin1_general_ci NOT NULL,
  `SKS` varchar(2) collate latin1_general_ci NOT NULL,
  `KelompokMtk_ID` varchar(2) collate latin1_general_ci NOT NULL,
  `JenisMTK_ID` varchar(2) collate latin1_general_ci NOT NULL,
  `JenisKurikulum_ID` varchar(2) collate latin1_general_ci NOT NULL,
  `StatusMtk_ID` varchar(20) collate latin1_general_ci NOT NULL,
  `Penanggungjawab` varchar(50) collate latin1_general_ci default NULL,
  `Ket` varchar(200) collate latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`Matakuliah_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Kode_mtk` (`Kode_mtk`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Kurikulum_ID` (`Kurikulum_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=192 ;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`Matakuliah_ID`, `Identitas_ID`, `Jurusan_ID`, `Kurikulum_ID`, `Kode_mtk`, `Nama_matakuliah`, `Nama_english`, `Semester`, `SKS`, `KelompokMtk_ID`, `JenisMTK_ID`, `JenisKurikulum_ID`, `StatusMtk_ID`, `Penanggungjawab`, `Ket`, `Aktif`) VALUES
(1, 213131, 54321, 37, 'B112', 'Sistem Basis Data', '', '4', '2', '0', '0', '0', 'A', '', '', 'Y'),
(191, 12345, 54321, 38, '1', 'Sistem Basis Data', 'Database System', '4', '3', 'B', 'A', '1', '', 'Nelly Indriani Widiastuti, S.Si.,M.T', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `Nilai_ID` int(11) NOT NULL auto_increment,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `grade` varchar(2) collate latin1_general_ci NOT NULL,
  `bobot` varchar(2) collate latin1_general_ci NOT NULL,
  `NilaiMin` decimal(10,2) NOT NULL,
  `NilaiMax` decimal(10,2) NOT NULL,
  `keterangan` varchar(50) collate latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`Nilai_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`Nilai_ID`, `Identitas_ID`, `Jurusan_ID`, `grade`, `bobot`, `NilaiMin`, `NilaiMax`, `keterangan`, `Aktif`) VALUES
(1, 14032012, 201, 'E', '0', 0.00, 2.99, 'Buruk Sekali', 'Y'),
(2, 14032012, 201, 'D', '1', 3.00, 4.99, 'Buruk', 'Y'),
(3, 14032012, 201, 'C', '2', 5.00, 6.99, 'Baik', 'Y'),
(4, 14032012, 201, 'B', '3', 7.00, 8.99, 'Baik Sekali', 'Y'),
(5, 14032012, 201, 'A', '4', 9.00, 100.00, 'Istimewa', 'Y'),
(6, 14032012, 202, 'E', '0', 0.00, 2.99, 'Buruk Sekali', 'Y'),
(7, 14032012, 202, 'D', '1', 3.00, 4.99, 'Buruk', 'Y'),
(8, 14032012, 202, 'C', '2', 5.00, 6.99, 'Baik', 'Y'),
(9, 14032012, 202, 'B', '3', 7.00, 8.99, 'Baik Sekali', 'Y'),
(10, 14032012, 202, 'A', '4', 9.00, 100.00, 'Istimewa', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaanortu`
--

CREATE TABLE IF NOT EXISTS `pekerjaanortu` (
  `Pekerjaan` char(3) collate latin1_general_ci NOT NULL default '',
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `NA` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`Pekerjaan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `pekerjaanortu`
--

INSERT INTO `pekerjaanortu` (`Pekerjaan`, `Nama`, `NA`) VALUES
('1', 'Pegawai Negeri', 'N'),
('2', 'ABRI', 'N'),
('3', 'Pegawai Swasta', 'N'),
('4', 'Usaha Sendiri', 'N'),
('5', 'Tidak Bekerja', 'N'),
('6', 'Pensiun', 'N'),
('7', 'Lain-lain', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikanortu`
--

CREATE TABLE IF NOT EXISTS `pendidikanortu` (
  `ID` int(1) NOT NULL auto_increment,
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `NA` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `pendidikanortu`
--

INSERT INTO `pendidikanortu` (`ID`, `Nama`, `NA`) VALUES
(1, 'Tidak Tamat SD', 'N'),
(2, 'Tamat SD', 'N'),
(3, 'Tamat SMP', 'N'),
(4, 'Tamat SMTA', 'N'),
(5, 'Diploma', 'N'),
(6, 'Sarjana Muda', 'N'),
(7, 'Sarjana', 'N'),
(8, 'Pasca Sarjana', 'N'),
(9, 'Doktor', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perhatian`
--

CREATE TABLE IF NOT EXISTS `perhatian` (
  `ID` int(11) NOT NULL auto_increment,
  `header` text collate latin1_general_ci NOT NULL,
  `t1` varchar(255) collate latin1_general_ci NOT NULL,
  `t2` varchar(255) collate latin1_general_ci NOT NULL,
  `t3` varchar(255) collate latin1_general_ci NOT NULL,
  `t4` varchar(255) collate latin1_general_ci NOT NULL,
  `t5` varchar(255) collate latin1_general_ci NOT NULL,
  `t6` varchar(255) collate latin1_general_ci NOT NULL,
  `gb` varchar(255) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `perhatian`
--

INSERT INTO `perhatian` (`ID`, `header`, `t1`, `t2`, `t3`, `t4`, `t5`, `t6`, `gb`) VALUES
(1, '::.Warning.:: KRS YANG TELAH DI SEND/SUBMIT/KIRIM TDK BISA DIEDIT PASTIKAN SEBELUM DISEND TELITI DULU:', '1. Batas Akhir pengisian Kartu Rencana Studi (KRS) dimulai pada tanggal', '2. Perubahan Kartu Rencana Studi (KRS) tidak akan dilayani jika batas penginputan KRS telah berakhir', '', '', '', '', 'warning.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `ID` int(2) NOT NULL auto_increment,
  `Identitas_ID` int(5) NOT NULL,
  `Program_ID` varchar(10) collate latin1_general_ci NOT NULL,
  `nama_program` varchar(100) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`ID`),
  KEY `Program_ID` (`Program_ID`),
  KEY `Identitas_ID` (`Identitas_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `program`
--

INSERT INTO `program` (`ID`, `Identitas_ID`, `Program_ID`, `nama_program`, `aktif`) VALUES
(3, 213131, 'R', 'REGULER', 'Y'),
(4, 213131, 'N', 'NON REGULER', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regmhs`
--

CREATE TABLE IF NOT EXISTS `regmhs` (
  `ID_Reg` int(11) NOT NULL auto_increment,
  `Tahun` int(5) NOT NULL,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `NIM` varchar(15) collate latin1_general_ci NOT NULL,
  `tgl_reg` date NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID_Reg`),
  KEY `Tahun` (`Tahun`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `NIM` (`NIM`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `regmhs`
--

INSERT INTO `regmhs` (`ID_Reg`, `Tahun`, `Identitas_ID`, `Jurusan_ID`, `NIM`, `tgl_reg`, `aktif`) VALUES
(1, 0, 14032012, 86208, 'B.2015.1.1.001', '2016-02-04', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE IF NOT EXISTS `ruang` (
  `ID` int(11) NOT NULL auto_increment,
  `Ruang_ID` varchar(20) collate latin1_general_ci NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `Kampus_ID` varchar(20) collate latin1_general_ci NOT NULL,
  `Lantai` smallint(5) unsigned default '1',
  `RuangKuliah` enum('Y','N') collate latin1_general_ci default 'Y',
  `Kapasitas` int(10) unsigned default '0',
  `KapasitasUjian` int(10) unsigned default '0',
  `Keterangan` text collate latin1_general_ci,
  `Aktif` enum('Y','N') collate latin1_general_ci default 'N',
  PRIMARY KEY  (`ID`),
  KEY `Ruang_ID` (`Ruang_ID`),
  KEY `Kampus_ID` (`Kampus_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`ID`, `Ruang_ID`, `Nama`, `Kampus_ID`, `Lantai`, `RuangKuliah`, `Kapasitas`, `KapasitasUjian`, `Keterangan`, `Aktif`) VALUES
(15, 'RA03', 'RUANG 3', 'K1', 1, 'Y', 40, 20, '', 'Y'),
(4, 'RA01', 'RUANG 1', 'K1', 1, 'Y', 40, 20, '', 'Y'),
(14, 'RA02', 'RUANG 2', 'K1', 1, 'Y', 40, 30, '', 'Y'),
(13, 'RA05', 'RUANG 5', 'K1', 1, 'Y', 40, 30, '', 'Y'),
(16, 'RA06', 'RUANG 6', 'K1', 1, 'Y', 40, 20, '', 'Y'),
(17, 'RA04', 'RUANG 4', 'K1', 1, 'Y', 40, 20, '', 'Y'),
(18, 'RA07', 'RUANG 7', 'K1', 1, 'Y', 40, 20, '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statusawal`
--

CREATE TABLE IF NOT EXISTS `statusawal` (
  `ID` int(11) NOT NULL auto_increment,
  `StatusAwal_ID` varchar(5) collate latin1_general_ci NOT NULL default '',
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `BeliFormulir` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  `JalurKhusus` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `TanpaTest` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `Catatan` varchar(255) collate latin1_general_ci default NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `statusawal`
--

INSERT INTO `statusawal` (`ID`, `StatusAwal_ID`, `Nama`, `BeliFormulir`, `JalurKhusus`, `TanpaTest`, `Catatan`, `Aktif`) VALUES
(1, 'P', 'Pindahan', 'Y', 'N', 'Y', '', 'Y'),
(2, 'B', 'Baru', 'Y', 'N', 'N', NULL, 'Y'),
(3, 'S', 'PSSB', 'Y', 'Y', 'Y', 'Untuk siswa SMA berprestasi', 'Y'),
(4, 'D', 'Drop-in', 'Y', 'N', 'Y', '', 'Y'),
(5, 'A', 'Asing', 'Y', 'Y', 'Y', 'Untuk calon mahasiswa asing', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuskerja`
--

CREATE TABLE IF NOT EXISTS `statuskerja` (
  `ID` int(11) NOT NULL auto_increment,
  `StatusKerja_ID` varchar(5) collate latin1_general_ci NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `Def` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `NA` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`ID`),
  KEY `StatusKerja_ID` (`StatusKerja_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `statuskerja`
--

INSERT INTO `statuskerja` (`ID`, `StatusKerja_ID`, `Nama`, `Def`, `NA`) VALUES
(1, 'A', 'Dosen Tetap', 'N', 'N'),
(2, 'B', 'Dosen PNS Dipekerjakan', 'N', 'N'),
(3, 'C', 'Dosen Honorer PTN', 'N', 'N'),
(4, 'D', 'Dosen Honorer Non PTN', 'N', 'N'),
(5, 'E', 'Dosen Kontrak', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statusmhsw`
--

CREATE TABLE IF NOT EXISTS `statusmhsw` (
  `ID` int(11) NOT NULL auto_increment,
  `StatusMhsw_ID` varchar(5) collate latin1_general_ci NOT NULL default '',
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `Nilai` smallint(6) NOT NULL default '0',
  `Keluar` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `Def` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`),
  KEY `StatusMhsw_ID` (`StatusMhsw_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `statusmhsw`
--

INSERT INTO `statusmhsw` (`ID`, `StatusMhsw_ID`, `Nama`, `Nilai`, `Keluar`, `Def`, `Aktif`) VALUES
(1, 'A', 'Aktif', 1, 'N', 'N', 'N'),
(2, 'C', 'Cuti', 0, 'N', 'N', 'N'),
(3, 'P', 'Pasif', 1, 'N', 'Y', 'N'),
(4, 'K', 'Keluar', 0, 'Y', 'N', 'N'),
(5, 'D', 'Drop-out', 0, 'Y', 'N', 'N'),
(6, 'L', 'Lulus', 0, 'Y', 'N', 'N'),
(7, 'T', 'Tunggu Ujian', 1, 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statusmtk`
--

CREATE TABLE IF NOT EXISTS `statusmtk` (
  `ID` int(11) NOT NULL auto_increment,
  `StatusMtk_ID` varchar(2) collate latin1_general_ci NOT NULL,
  `Nama` varchar(20) collate latin1_general_ci NOT NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`),
  KEY `StatusMtk_ID` (`StatusMtk_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `statusmtk`
--

INSERT INTO `statusmtk` (`ID`, `StatusMtk_ID`, `Nama`, `Aktif`) VALUES
(1, 'A', 'AKTIF', 'Y'),
(2, 'H', 'HAPUS', 'Y'),
(3, 'N', 'NON AKTIF', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statussipil`
--

CREATE TABLE IF NOT EXISTS `statussipil` (
  `ID` int(3) NOT NULL auto_increment,
  `Nama` varchar(50) collate latin1_general_ci default NULL,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `statussipil`
--

INSERT INTO `statussipil` (`ID`, `Nama`, `Aktif`) VALUES
(1, 'Belum Menikah', 'N'),
(2, 'Menikah', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun`
--

CREATE TABLE IF NOT EXISTS `tahun` (
  `ID` int(11) NOT NULL auto_increment,
  `Tahun_ID` int(5) NOT NULL,
  `Identitas_ID` int(5) NOT NULL,
  `Jurusan_ID` int(5) NOT NULL,
  `Program_ID` int(1) NOT NULL,
  `Nama` varchar(50) collate latin1_general_ci NOT NULL default '',
  `TglKRSMulai` date default NULL,
  `TglKRSSelesai` date default NULL,
  `TglCetakKHS` date NOT NULL default '0000-00-00',
  `TglBayarMulai` date NOT NULL default '0000-00-00',
  `TglBayarSelesai` date NOT NULL default '0000-00-00',
  `TglKuliahMulai` date default NULL,
  `TglKuliahSelesai` date default NULL,
  `TglUTSMulai` date default NULL,
  `TglUTSSelesai` date default NULL,
  `TglUASMulai` date default NULL,
  `TglUASSelesai` date default NULL,
  `TglNilaiMulai` date NOT NULL,
  `TglNilaiSelesai` date NOT NULL,
  `HanyaAngkatan` varchar(10) collate latin1_general_ci default NULL,
  `TglBuat` datetime default NULL,
  `LoginBuat` varchar(20) collate latin1_general_ci default NULL,
  `TglEdit` datetime default NULL,
  `LoginEdit` varchar(20) collate latin1_general_ci default NULL,
  `Catatan` text collate latin1_general_ci,
  `Aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`ID`),
  KEY `Tahun_ID` (`Tahun_ID`),
  KEY `Identitas_ID` (`Identitas_ID`),
  KEY `Jurusan_ID` (`Jurusan_ID`),
  KEY `Program_ID` (`Program_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tahun`
--

INSERT INTO `tahun` (`ID`, `Tahun_ID`, `Identitas_ID`, `Jurusan_ID`, `Program_ID`, `Nama`, `TglKRSMulai`, `TglKRSSelesai`, `TglCetakKHS`, `TglBayarMulai`, `TglBayarSelesai`, `TglKuliahMulai`, `TglKuliahSelesai`, `TglUTSMulai`, `TglUTSSelesai`, `TglUASMulai`, `TglUASSelesai`, `TglNilaiMulai`, `TglNilaiSelesai`, `HanyaAngkatan`, `TglBuat`, `LoginBuat`, `TglEdit`, `LoginEdit`, `Catatan`, `Aktif`) VALUES
(3, 20152, 213131, 86208, 3, 'Kalender Akademik Semester Genap 20152', '2016-02-22', '2016-02-27', '2016-07-12', '0000-00-00', '0000-00-00', '2016-02-29', '2016-06-19', '2016-04-18', '2016-04-24', '2016-06-27', '2016-07-03', '2016-07-04', '2016-07-11', NULL, NULL, NULL, NULL, NULL, NULL, 'Y'),
(4, 20152, 213131, 60202, 3, 'Kalender Akademik Semester Genap 20152', '2016-02-22', '2016-02-27', '2016-07-12', '0000-00-00', '0000-00-00', NULL, NULL, '2016-04-18', '2016-04-24', '2016-06-27', '2016-07-03', '2016-07-04', '2016-07-11', NULL, NULL, NULL, NULL, NULL, NULL, 'Y'),
(5, 20151, 213131, 60202, 3, 'semester gasal 20151', '2015-09-07', '2015-09-12', '2016-02-29', '0000-00-00', '0000-00-00', '2015-09-14', '2016-01-02', '2015-11-02', '2015-11-07', '2016-01-11', '2016-01-17', '2016-01-24', '2016-02-29', NULL, NULL, NULL, NULL, NULL, NULL, 'Y');

