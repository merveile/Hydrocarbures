-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 02, 2023 at 08:36 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hydrocarbures_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profil` text COLLATE utf8mb4_general_ci,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `etat` int NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `profil`, `email`, `password`, `type`, `etat`, `date_`) VALUES
(1, 'Merveile lutumba', '33706747_1549168848544036_1463886005944713216_n.jpg', 'merveile.lutumba@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'admin', 1, '2023-03-12 17:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `id_entreprise` int NOT NULL,
  `etat` int NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `ip`, `id_entreprise`, `etat`, `date_`) VALUES
(1, '::1', 6, 1, '2023-03-14 12:01:42'),
(2, '192.168.137.27', 6, 1, '2023-03-14 12:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `depot_fuel`
--

DROP TABLE IF EXISTS `depot_fuel`;
CREATE TABLE IF NOT EXISTS `depot_fuel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_entreprise` int NOT NULL,
  `adresse` text NOT NULL,
  `coords` json NOT NULL,
  `image` text NOT NULL,
  `etat` int NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `logo` text COLLATE utf8mb4_general_ci,
  `adresse` text COLLATE utf8mb4_general_ci,
  `json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `etat` int NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ;

--
-- Dumping data for table `entreprise`
--

INSERT INTO `entreprise` (`id`, `nom`, `description`, `logo`, `adresse`, `json_data`, `etat`, `date_`) VALUES
(1, 'Total', 'Je suis l\'apropos de l\'entreprise inconnu\r\n', 'total.png', 'kinshasa', '{\"telephone\":\"0844564994\",\"email\":\"info@total.com\"}', 1, '2023-03-11 21:10:27'),
(5, 'Hydrocarbures', 'Aucune', NULL, 'Kinshasa', '{\"telephone\":\"0844564994\",\"email\":\"merveile.lutumba@gmail.com\"}', 1, '2023-03-13 00:50:53'),
(6, 'Cobil rdc', NULL, 'lobiko v.png', 'Kinshasa', '{\"telephone\":\"0844564994\",\"email\":\"contact@cobil.cd\"}', 1, '2023-03-13 01:08:19'),
(10, 'test', 'hghgfhgfhgfhfytfy fytfty', NULL, 'kinshasa/ gombe', '{\"telephone\":\"844564994\",\"email\":\"test@gmail.com\"}', 1, '2023-03-14 08:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `remote_link`
--

DROP TABLE IF EXISTS `remote_link`;
CREATE TABLE IF NOT EXISTS `remote_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_entreprise` int NOT NULL,
  `etat` int NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `remote_link`
--

INSERT INTO `remote_link` (`id`, `id_entreprise`, `etat`, `date_`) VALUES
(1, 1, 1, '2023-03-30 14:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_entreprise` int NOT NULL,
  `adresse` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `coords` json NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `vente` json NOT NULL,
  `etat` int NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `id_entreprise`, `adresse`, `coords`, `image`, `vente`, `etat`, `date_`) VALUES
(1, 6, 'lemba foire FIKIN bâtiment B', '{\"lat\": \"10.3227446\", \"lng\": \"-4.4013038\"}', 'fs.jpg', '{\"autres\": true, \"gazoil\": true, \"essence\": true}', 1, '2023-03-14 14:17:27'),
(2, 6, 'Boma', '{\"lat\": \"18.3288446\", \"lng\": \"-4.4953038\"}', '104943783_590467801880707_680982675022901990_n.jpg', '{\"autres\": false, \"gazoil\": true, \"essence\": false}', 1, '2023-03-14 14:19:15'),
(7, 1, 'lemba foire FIKIN bâtiment B', '{\"lat\": \"9.322025\", \"lng\": \"-4.4055038\"}', '21457826_1300206990106891_5114074057180930133_o.jpg', '{\"autres\": true, \"gazoil\": true, \"essence\": false}', 1, '2023-03-14 12:01:20'),
(9, 6, 'Kinshasa ', '{\"lat\": \"15.3288446\", \"lng\": \"-4.4953038\"}', '33706747_1549168848544036_1463886005944713216_n.jpg', '{\"autres\": true, \"gazoil\": true, \"essence\": true}', 1, '2023-03-13 15:47:57'),
(11, 1, 'nsanda', '{\"lat\": \"43.555\", \"lng\": \"35.54655\"}', 'IMG_4402.JPEG', '{\"autres\": true, \"gazoil\": true, \"essence\": true}', 1, '2023-03-30 14:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `stations_visites`
--

DROP TABLE IF EXISTS `stations_visites`;
CREATE TABLE IF NOT EXISTS `stations_visites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_station` int NOT NULL,
  `ip` varchar(50) NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stations_visites`
--

INSERT INTO `stations_visites` (`id`, `id_station`, `ip`, `date_`) VALUES
(1, 9, '::1', '2023-03-14 08:40:21'),
(2, 2, '192.168.137.27', '2023-03-14 08:40:27'),
(3, 2, '::1', '2023-03-14 08:40:33'),
(4, 7, '::1', '2023-03-14 08:40:49'),
(5, 9, '192.168.137.27', '2023-03-14 08:41:23'),
(6, 7, '192.168.137.27', '2023-03-14 08:41:30'),
(7, 1, '192.168.137.27', '2023-03-24 10:14:46'),
(8, 1, '::1', '2023-03-25 13:36:44'),
(10, 11, '::1', '2023-03-30 14:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_coords`
--

DROP TABLE IF EXISTS `user_coords`;
CREATE TABLE IF NOT EXISTS `user_coords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_coords`
--

INSERT INTO `user_coords` (`id`, `ip`, `lat`, `lng`) VALUES
(1, '::1', '-4.33', '15.3104');

-- --------------------------------------------------------

--
-- Table structure for table `visiteurs`
--

DROP TABLE IF EXISTS `visiteurs`;
CREATE TABLE IF NOT EXISTS `visiteurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `temps` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visiteurs`
--

INSERT INTO `visiteurs` (`id`, `ip`, `temps`, `date_`) VALUES
(10, '::1', '30-03-2023 14:20:04', '2023-03-14 18:39:48'),
(4, '192.168.137.91', '1678669514', '2023-03-12 23:37:35'),
(8, '192.168.137.27', '24-03-2023 17:23:11', '2023-03-14 13:37:57'),
(11, '192.168.137.100', '25-03-2023 13:16:04', '2023-03-25 13:16:04'),
(12, '192.168.236.233', '25-03-2023 16:41:01', '2023-03-25 13:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_entreprise` int NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
