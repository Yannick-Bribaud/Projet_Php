-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 25 mai 2022 à 19:01
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `iot_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `capacitecalcultable`
--

CREATE TABLE `capacitecalcultable` (
  `id` int(11) NOT NULL,
  `nbreMesure` int(11) NOT NULL,
  `capaciteCalcMax` float NOT NULL,
  `delai` int(11) NOT NULL,
  `capacité_calcul` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `capacitecalcultable`
--

INSERT INTO `capacitecalcultable` (`id`, `nbreMesure`, `capaciteCalcMax`, `delai`, `capacité_calcul`) VALUES
(1, 2, 9, 12, 0.0185185),
(2, 7, 14, 12, 0.0416667);

-- --------------------------------------------------------

--
-- Structure de la table `cooperativite`
--

CREATE TABLE `cooperativite` (
  `id` int(11) NOT NULL,
  `nbreTacheAccomplir` int(11) NOT NULL,
  `nbreTacheRequise` int(11) NOT NULL,
  `cooperativite` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cooperativite`
--

INSERT INTO `cooperativite` (`id`, `nbreTacheAccomplir`, `nbreTacheRequise`, `cooperativite`) VALUES
(1, 3, 11, 0.272727);

-- --------------------------------------------------------

--
-- Structure de la table `credibilitetable`
--

CREATE TABLE `credibilitetable` (
  `id` int(11) NOT NULL,
  `croyabilite` int(11) NOT NULL,
  `exactitude` int(11) NOT NULL,
  `nbreMsgRecu` int(11) NOT NULL,
  `nbreMsgAttendu` int(11) NOT NULL,
  `digneDeConfiance` float NOT NULL,
  `credibilite_source` float NOT NULL,
  `completude` float NOT NULL,
  `credibilite_msg` float NOT NULL,
  `credibilite` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `credibilitetable`
--

INSERT INTO `credibilitetable` (`id`, `croyabilite`, `exactitude`, `nbreMsgRecu`, `nbreMsgAttendu`, `digneDeConfiance`, `credibilite_source`, `completude`, `credibilite_msg`, `credibilite`) VALUES
(1, 1, 1, 360, 433, 0.831409, 2.83141, 0.831409, 3.66282, 10.3709);

-- --------------------------------------------------------

--
-- Structure de la table `fiabilitetable`
--

CREATE TABLE `fiabilitetable` (
  `id` int(11) NOT NULL,
  `FQL` float NOT NULL,
  `FQN` float NOT NULL,
  `fiabilite` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fiabilitetable`
--

INSERT INTO `fiabilitetable` (`id`, `FQL`, `FQN`, `fiabilite`) VALUES
(2, 4, 0.02, 0.08),
(3, 4, 0.02, 0.08);

-- --------------------------------------------------------

--
-- Structure de la table `honnetete`
--

CREATE TABLE `honnetete` (
  `id` int(11) NOT NULL,
  `NbreExposit` int(11) NOT NULL,
  `TotalExpCollecte` int(11) NOT NULL,
  `Honnetete` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `honnetete`
--

INSERT INTO `honnetete` (`id`, `NbreExposit`, `TotalExpCollecte`, `Honnetete`) VALUES
(1, 5, 8, 0.625);

-- --------------------------------------------------------

--
-- Structure de la table `nbretransactiontable`
--

CREATE TABLE `nbretransactiontable` (
  `id` int(11) NOT NULL,
  `tempsInitial` int(11) NOT NULL,
  `tempsFinal` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `nbreTransactions` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `nbretransactiontable`
--

INSERT INTO `nbretransactiontable` (`id`, `tempsInitial`, `tempsFinal`, `delay`, `nbreTransactions`) VALUES
(1, 19, 6, 5, 2.6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `capacitecalcultable`
--
ALTER TABLE `capacitecalcultable`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cooperativite`
--
ALTER TABLE `cooperativite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `credibilitetable`
--
ALTER TABLE `credibilitetable`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fiabilitetable`
--
ALTER TABLE `fiabilitetable`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `honnetete`
--
ALTER TABLE `honnetete`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nbretransactiontable`
--
ALTER TABLE `nbretransactiontable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `capacitecalcultable`
--
ALTER TABLE `capacitecalcultable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cooperativite`
--
ALTER TABLE `cooperativite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `credibilitetable`
--
ALTER TABLE `credibilitetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `fiabilitetable`
--
ALTER TABLE `fiabilitetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `honnetete`
--
ALTER TABLE `honnetete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `nbretransactiontable`
--
ALTER TABLE `nbretransactiontable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
