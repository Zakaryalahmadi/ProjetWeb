-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--

-- Généré le : sam. 24 oct. 2021 à 19:07
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `VITEMONENVOL`
--

-- --------------------------------------------------------


--
-- Structure de la table `voyageurs`
--

DROP TABLE IF EXISTS `voyageurs`;
CREATE TABLE IF NOT EXISTS `voyageurs` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Prenom` varchar(100) NOT NULL,
  `Age` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voyageurs`
--

INSERT INTO `voyageurs` (`id`, `Nom`, `Prenom`, `Age`) VALUES
(1, 'RORONOA', 'Zoro', 20);

-- --------------------------------------------------------

--
-- Structure de la table `circuits`
--



DROP TABLE IF EXISTS `circuits`;
CREATE TABLE IF NOT EXISTS `circuits` (
  `id_circuits` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prix` float NOT NULL,
  `date_debut` varchar(100) NOT NULL,
  `date_fin` varchar(100) NOT NULL,
  `nb_villes` int(255) NOT NULL,
  `nb_places` int(255) NOT NULL,
  PRIMARY KEY (`id_circuits`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `num_res` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Déchargement des données de la table `circuits`
--

INSERT INTO `circuits` (`id_circuits`, `Nom`, `Prix`, `Date_debut`, `Date_fin`, `nb_villes`, `nb_places`) VALUES
(1, 'Voayage sur l\'archipel nippon', 2500, '15/04/2022', '30/04/2022', 4, 30),
(2, 'Visite historique en Grèce', 1000, '01/09/2002', '15/09/2022', 3, 20),
(3, 'Voyage au pays des caribus', 3000, '01/07/2022', '10/07/2022', 3, 25);

-- --------------------------------------------------------


--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Prix` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


--
-- Structure de la table `circuits-ville`
--

DROP TABLE IF EXISTS `circuits-ville`;
CREATE TABLE IF NOT EXISTS `circuits-ville` (
  `id_circuits` int(255) NOT NULL,
  `id_ville` int(255) NOT NULL,
  KEY `id_circuits` (`id_circuits`),
  KEY `id_ville` (`id_ville`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `circuits-ville`
--

--
-- Structure de la table `deplacement`
--

DROP TABLE IF EXISTS `deplacement`;
CREATE TABLE IF NOT EXISTS `deplacement` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Transport` varchar(100) NOT NULL,
  `Billets` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `deplacement`
--

INSERT INTO `deplacement` (`id`, `Transport`, `Billets`) VALUES
(1, 'Train', 1);

-- --------------------------------------------------------

INSERT INTO `circuits-ville` (`id_circuits`, `id_ville`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `circuits_reservation`
--

DROP TABLE IF EXISTS `circuits_reservation`;
CREATE TABLE IF NOT EXISTS `circuits_reservation` (
  `id_circuits` int(255) NOT NULL,
  `id_reservation` int(255) NOT NULL,
  KEY `id_circuits` (`id_circuits`),
  KEY `id_reservation` (`id_reservation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `Nom`, `Prix`) VALUES
(1, 'Moda Hotel', 70);
(2, 'Candia hotel', 90),
(3, 'Hakone \r\nYutowa', 90),
(4, 'Shinmachi \r\nBettei', 110),
(5, ' Nest Hotel \r\nOsaka Umeda', 100),
(6, 'Red Planet Tokyo \r\nAsakusa', 100),
(7, 'Electra Palace \r\nThessaloniki', 150),
(8, 'Moda Hotel', 70),
(7, 'The Plaza Hotel', 80),
(10, 'Nikki Beach Resort\r\n& Spa', 188),


-- --------------------------------------------------------


--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `Nom`) VALUES
(1, 'Tokyo'),
(2, 'Hakone'),
(3, 'Kyoto'),
(4, 'Osaka'),
(5, 'Athènes'),
(6, 'Le péloponnèse'),
(7, 'Thessalonique'),
(8, 'Vancouver'),
(9, 'Kamloops'),
(10, 'Vancouver');

-- --------------------------------------------------------

--
-- Structure de la table `ville-hotel`
--

DROP TABLE IF EXISTS `ville-hotel`;
CREATE TABLE IF NOT EXISTS `ville-hotel` (
  `id_ville` int(255) NOT NULL,
  `id_hotel` int(255) NOT NULL,
  KEY `id_ville` (`id_ville`),
  KEY `id_hotel` (`id_hotel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville-hotel`
--

INSERT INTO `ville-hotel` (`id_ville`, `id_hotel`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------



DROP TABLE IF EXISTS `voyageurs-deplacement`;
CREATE TABLE IF NOT EXISTS `voyageurs-deplacement` (
  `id_deplacement` int(255) NOT NULL,
  `id_voyageur` int(255) NOT NULL,
  KEY `id_voyageur` (`id_voyageur`),
  KEY `id_deplacement` (`id_deplacement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;



--
-- Structure de la table `voyageur-reservation`
--

DROP TABLE IF EXISTS `voyageur-reservation`;
CREATE TABLE IF NOT EXISTS `voyageur-reservation` (
  `id_voyageur` int(255) NOT NULL,
  `id_reservation` int(255) NOT NULL,
  KEY `id_voyageur` (`id_voyageur`),
  KEY `id_reservation` (`id_reservation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `voyageurs-deplacement`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
