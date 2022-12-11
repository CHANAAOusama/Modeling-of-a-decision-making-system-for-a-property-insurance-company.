-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 27 juin 2021 à 18:37
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `assurance1dm`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id_bien` int(11) NOT NULL,
  `couverture` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id_bien`, `couverture`) VALUES
(1, 'Peugeot'),
(2, 'Renault'),
(3, 'Opel'),
(4, 'Citroen'),
(5, 'Volkswagen'),
(6, 'Fiat'),
(7, 'Meuble'),
(8, 'Audi'),
(9, 'BMW'),
(10, 'Motocycle');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(10) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `tel` varchar(14) DEFAULT NULL,
  `adresse` varchar(70) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `tel`, `adresse`, `type`) VALUES
(1, 'Theriault', 'Eglantine', '73354057', '44 Avenue Trimeche 8110 SIDI ROUINE', 'pp'),
(2, 'Busque', 'Gaetan', '0339129477', '150 Rue Amilcar 3160 HAJEB EL AYOUN GARE', 'pp'),
(3, 'Leblanc', 'Angelette', '0177023990', '71 Rue Ahmed Errai 1145 CITE ENNASR', 'pm'),
(4, 'Lambert', 'Anais', '0112706153', '46, rue Lenotre 78120 RAMBOUILLET', 'pp'),
(5, 'Sarrazin', 'Tilly', '75380321', '57, rue Jean-Monnet 95190 GOUSSAINVILLE', 'pm'),
(6, 'Laurent', 'Hortense', '0336129777', '37, rue de l Aigle 93210 LA PLAINE-SAINT-DENIS', 'pm'),
(7, 'Fontaine', 'Scoville', '73354057', '66, rue Isambard 83600 FRÉJUS', 'pm'),
(8, 'Forest', 'Javier', '0118907897', '13, route de Lyon 92130 ISSY-LES-MOULINEAUX', 'pp'),
(9, 'Joly', 'Zoe', '0112436153', '99, boulevard de Prague 30000 NÎMES', 'pp'),
(10, 'Robert', 'Mignon', '0285063911', '94, rue Gouin de Beauchesne 44600 SAINT-NAZAIRE', 'pp'),
(11, 'Jacques', 'Ray', '0474610798', '58, boulevard de la Liberation 13014 MARSEILLE', 'pp'),
(12, 'Pelletier', 'Gay', '0102631479', '34, Place Charles de Gaulle 93250 VILLEMOMBLE', 'pm'),
(13, 'Bonami', 'Rule', '0219166626', '7, place Maurice-Charretier 28000 CHARTRES', 'pp'),
(14, 'Caya', 'Courtland', '0321939459', '70, place Stanislas 54000 NANCY', 'pm'),
(15, 'Boule', 'Melville', '0333233690', '23, rue Jean Vilar 90000 BELFORT', 'pp'),
(16, 'Audibert', 'Aloin', '0283524324', '25, Cours Marechal-Joffre 76200 DIEPPE', 'pp');

-- --------------------------------------------------------

--
-- Structure de la table `date`
--

CREATE TABLE `date` (
  `date` datetime NOT NULL,
  `mois` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `date`
--

INSERT INTO `date` (`date`, `mois`) VALUES
('2020-01-06 00:00:00', 10),
('2020-02-21 00:00:00', 11),
('2020-03-30 00:00:00', 12),
('2020-04-05 00:00:00', 1),
('2020-04-15 00:00:00', 1),
('2020-04-22 00:00:00', 1),
('2020-05-09 00:00:00', 2),
('2020-06-10 00:00:00', 3),
('2020-06-26 00:00:00', 3),
('2020-07-19 00:00:00', 4),
('2020-08-13 00:00:00', 5),
('2020-08-22 00:00:00', 5),
('2020-09-20 00:00:00', 6),
('2020-10-03 00:00:00', 7),
('2020-11-26 00:00:00', 8),
('2020-12-23 00:00:00', 9);

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id_etat` int(11) NOT NULL,
  `libelle` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id_etat`, `libelle`) VALUES
(1, 'NC'),
(2, 'NM'),
(3, 'SEC'),
(4, 'SJC');

-- --------------------------------------------------------

--
-- Structure de la table `operateur`
--

CREATE TABLE `operateur` (
  `id_operateur` int(11) NOT NULL,
  `nom` varchar(10) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `tel` varchar(14) DEFAULT NULL,
  `adresse` varchar(70) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `operateur`
--

INSERT INTO `operateur` (`id_operateur`, `nom`, `prenom`, `tel`, `adresse`, `type`) VALUES
(1, 'Fusberta', 'Nunah', '0125626494', '39 Rue Ali Ben Bechir Ibn Salem 7110 CITE HADJ AHMED', 'Agent'),
(2, 'Satordi', 'Rachelle', '0221290326', '18, rue Léon Dierx 14100 LISIEUX', 'Employe');

-- --------------------------------------------------------

--
-- Structure de la table `police`
--

CREATE TABLE `police` (
  `id_dateTransaction` datetime DEFAULT NULL,
  `id_dateEffet` datetime DEFAULT NULL,
  `id_operateur` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_etat` int(11) DEFAULT NULL,
  `id_risque` int(11) DEFAULT NULL,
  `id_bien` int(11) DEFAULT NULL,
  `CA` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `police`
--

INSERT INTO `police` (`id_dateTransaction`, `id_dateEffet`, `id_operateur`, `id_client`, `id_etat`, `id_risque`, `id_bien`, `CA`) VALUES
('2020-03-30 00:00:00', '2020-04-05 00:00:00', 1, 3, 2, 2, 2, 850),
('2020-04-15 00:00:00', '2020-04-05 00:00:00', 1, 3, 2, 2, 2, 200),
('2020-05-09 00:00:00', '2020-04-05 00:00:00', 1, 3, 1, 10, 10, 300),
('2020-04-05 00:00:00', '2020-04-15 00:00:00', 1, 4, 3, 3, 3, 1000),
('2020-11-26 00:00:00', '2020-04-15 00:00:00', 1, 4, 3, 3, 3, 200),
('2020-12-23 00:00:00', '2020-04-15 00:00:00', 1, 4, 3, 3, 3, 850),
('2020-01-06 00:00:00', '2020-04-05 00:00:00', 2, 5, 1, 7, 7, 280),
('2020-04-22 00:00:00', '2020-04-05 00:00:00', 2, 5, 1, 7, 7, 50),
('2020-12-23 00:00:00', '2020-04-05 00:00:00', 2, 5, 1, 7, 7, 500),
('2020-09-20 00:00:00', '2020-06-26 00:00:00', 1, 7, 3, 4, 4, 500),
('2020-06-26 00:00:00', '2020-07-19 00:00:00', 2, 8, 4, 1, 1, 2080),
('2020-02-21 00:00:00', '2020-04-05 00:00:00', 1, 10, 1, 6, 6, 900),
('2020-10-03 00:00:00', '2020-04-05 00:00:00', 1, 10, 1, 6, 6, 1700),
('2020-10-03 00:00:00', '2020-07-19 00:00:00', 1, 11, 2, 8, 8, 1200),
('2020-08-13 00:00:00', '2020-08-13 00:00:00', 1, 13, 3, 9, 9, 850),
('2020-07-19 00:00:00', '2020-03-30 00:00:00', 1, 9, 4, 5, 5, 1900);

-- --------------------------------------------------------

--
-- Structure de la table `risque`
--

CREATE TABLE `risque` (
  `id_risque` int(11) NOT NULL,
  `id_note` int(11) DEFAULT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `valider` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `risque`
--

INSERT INTO `risque` (`id_risque`, `id_note`, `libelle`, `type`, `valider`) VALUES
(1, 1, 'probabilite de cout eleve', 'A', 'O'),
(2, 3, 'probabilite de cout faible', 'A', 'O'),
(3, 2, 'probabilite de cout moyen', 'A', 'N'),
(4, 2, 'probabilite de cout moyen', 'A', 'N'),
(5, 3, 'probabilite de cout faible', 'A', 'O'),
(6, 1, 'probabilite de cout eleve', 'A', 'O'),
(7, 2, 'probabilite de cout moyen', 'H', 'N'),
(8, 1, 'probabilite de cout eleve', 'A', 'N'),
(9, 1, 'probabilite de cout eleve', 'A', 'O'),
(10, 2, 'probabilite de cout moyen', 'A', 'O');

-- --------------------------------------------------------

--
-- Structure de la table `sinistre`
--

CREATE TABLE `sinistre` (
  `id_dateTransaction` datetime DEFAULT NULL,
  `id_dateEffet` datetime DEFAULT NULL,
  `id_operateur` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_risque` int(11) DEFAULT NULL,
  `id_bien` int(11) DEFAULT NULL,
  `nb sinistre` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sinistre`
--

INSERT INTO `sinistre` (`id_dateTransaction`, `id_dateEffet`, `id_operateur`, `id_client`, `id_risque`, `id_bien`, `nb sinistre`) VALUES
('2020-06-10 00:00:00', '2020-06-10 00:00:00', 2, 13, 9, 9, 1),
('2020-06-26 00:00:00', '2020-06-26 00:00:00', 1, 7, 4, 4, 1),
('2020-08-13 00:00:00', '2020-08-13 00:00:00', 2, 4, 3, 3, 2),
('2020-09-20 00:00:00', '2020-09-20 00:00:00', 2, 11, 8, 8, 1),
('2020-10-03 00:00:00', '2020-10-03 00:00:00', 2, 3, 10, 10, 1),
('2020-07-19 00:00:00', '2020-07-19 00:00:00', 1, 9, 5, 5, 2),
('2020-11-26 00:00:00', '2020-11-26 00:00:00', 1, 10, 6, 6, 1),
('2020-01-06 00:00:00', '2020-01-06 00:00:00', 2, 3, 2, 2, 1),
('2020-02-21 00:00:00', '2020-02-21 00:00:00', 1, 8, 1, 1, 1),
('2020-03-30 00:00:00', '2020-03-30 00:00:00', 1, 5, 7, 7, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id_bien`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`date`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id_etat`);

--
-- Index pour la table `operateur`
--
ALTER TABLE `operateur`
  ADD PRIMARY KEY (`id_operateur`);

--
-- Index pour la table `police`
--
ALTER TABLE `police`
  ADD KEY `id_bien` (`id_bien`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_dateEffet` (`id_dateEffet`),
  ADD KEY `id_dateTransaction` (`id_dateTransaction`),
  ADD KEY `id_etat` (`id_etat`),
  ADD KEY `id_operateur` (`id_operateur`),
  ADD KEY `id_risque` (`id_risque`);

--
-- Index pour la table `risque`
--
ALTER TABLE `risque`
  ADD PRIMARY KEY (`id_risque`);

--
-- Index pour la table `sinistre`
--
ALTER TABLE `sinistre`
  ADD KEY `id_bienn` (`id_bien`),
  ADD KEY `id_clientt` (`id_client`),
  ADD KEY `id_dateEffett` (`id_dateEffet`),
  ADD KEY `id_dateTransactionn` (`id_dateTransaction`),
  ADD KEY `id_operateurr` (`id_operateur`),
  ADD KEY `id_risquee` (`id_risque`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `police`
--
ALTER TABLE `police`
  ADD CONSTRAINT `id_bien` FOREIGN KEY (`id_bien`) REFERENCES `bien` (`id_bien`),
  ADD CONSTRAINT `id_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `id_dateEffet` FOREIGN KEY (`id_dateEffet`) REFERENCES `date` (`date`),
  ADD CONSTRAINT `id_dateTransaction` FOREIGN KEY (`id_dateTransaction`) REFERENCES `date` (`date`),
  ADD CONSTRAINT `id_etat` FOREIGN KEY (`id_etat`) REFERENCES `etat` (`id_etat`),
  ADD CONSTRAINT `id_operateur` FOREIGN KEY (`id_operateur`) REFERENCES `operateur` (`id_operateur`),
  ADD CONSTRAINT `id_risque` FOREIGN KEY (`id_risque`) REFERENCES `risque` (`id_risque`);

--
-- Contraintes pour la table `sinistre`
--
ALTER TABLE `sinistre`
  ADD CONSTRAINT `id_bienn` FOREIGN KEY (`id_bien`) REFERENCES `bien` (`id_bien`),
  ADD CONSTRAINT `id_clientt` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `id_dateEffett` FOREIGN KEY (`id_dateEffet`) REFERENCES `date` (`date`),
  ADD CONSTRAINT `id_dateTransactionn` FOREIGN KEY (`id_dateTransaction`) REFERENCES `date` (`date`),
  ADD CONSTRAINT `id_operateurr` FOREIGN KEY (`id_operateur`) REFERENCES `operateur` (`id_operateur`),
  ADD CONSTRAINT `id_risquee` FOREIGN KEY (`id_risque`) REFERENCES `risque` (`id_risque`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
