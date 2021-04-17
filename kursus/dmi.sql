-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.33-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table dmi.kursus
CREATE TABLE IF NOT EXISTS `kursus` (
  `id_kursus` int(4) NOT NULL AUTO_INCREMENT,
  `nama_kursus` varchar(100) NOT NULL,
  `biaya` int(11) NOT NULL,
  PRIMARY KEY (`id_kursus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table dmi.kursus: ~0 rows (approximately)
/*!40000 ALTER TABLE `kursus` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus` ENABLE KEYS */;

-- Dumping structure for table dmi.peserta
CREATE TABLE IF NOT EXISTS `peserta` (
  `id_peserta` int(4) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `ttl` date NOT NULL,
  `id_kursus` int(11) NOT NULL,
  PRIMARY KEY (`id_peserta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table dmi.peserta: ~0 rows (approximately)
/*!40000 ALTER TABLE `peserta` DISABLE KEYS */;
/*!40000 ALTER TABLE `peserta` ENABLE KEYS */;

-- Dumping structure for table dmi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table dmi.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id_user`, `username`, `nama_lengkap`, `password`) VALUES
	(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
