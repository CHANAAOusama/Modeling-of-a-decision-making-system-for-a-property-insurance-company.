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
-- Base de données : `assurance1`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id_bien` int(11) NOT NULL,
  `couverture` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `nom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `prenom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tel` varchar(14) CHARACTER SET latin1 NOT NULL,
  `adresse` varchar(70) CHARACTER SET latin1 NOT NULL,
  `type` varchar(2) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `mois` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `libelle` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Structure de la table `expertise`
--

CREATE TABLE `expertise` (
  `id_expertise` int(11) NOT NULL,
  `nom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `prenom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tel` varchar(14) CHARACTER SET latin1 NOT NULL,
  `adresse` varchar(70) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `expertise`
--

INSERT INTO `expertise` (`id_expertise`, `nom`, `prenom`, `tel`, `adresse`) VALUES
(1, 'Richard', 'Angelette', '0177023990', '71 Rue Ahmed Errai 1145 CITE ENNASR');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id_note` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id_note`, `libelle`) VALUES
(1, 'probabilite de cout eleve'),
(2, 'probabilite de cout moyen'),
(3, 'probabilite de cout faible');

-- --------------------------------------------------------

--
-- Structure de la table `operateur`
--

CREATE TABLE `operateur` (
  `id_operateur` int(11) NOT NULL,
  `nom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `prenom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tel` varchar(14) CHARACTER SET latin1 NOT NULL,
  `adresse` varchar(70) CHARACTER SET latin1 NOT NULL,
  `id_typeOperateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `operateur`
--

INSERT INTO `operateur` (`id_operateur`, `nom`, `prenom`, `tel`, `adresse`, `id_typeOperateur`) VALUES
(1, 'Fusberta', 'Nunah', '0125626494', '39 Rue Ali Ben Bechir Ibn Salem 7110 CITE HADJ AHMED', 1),
(2, 'Satordi', 'Rachelle', '0221290326', '18, rue Léon Dierx 14100 LISIEUX', 2);

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id_paiement` int(11) NOT NULL,
  `deja_paye` double NOT NULL,
  `id_date` datetime NOT NULL,
  `id_police` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`id_paiement`, `deja_paye`, `id_date`, `id_police`) VALUES
(23, 1000, '2020-04-05 00:00:00', 13),
(24, 200, '2020-04-15 00:00:00', 11),
(25, 50, '2020-04-22 00:00:00', 14),
(26, 300, '2020-05-09 00:00:00', 12),
(27, 2080, '2020-06-26 00:00:00', 16),
(28, 1900, '2020-07-19 00:00:00', 20),
(29, 850, '2020-08-13 00:00:00', 19),
(30, 500, '2020-09-20 00:00:00', 15),
(31, 1200, '2020-10-03 00:00:00', 18),
(32, 1700, '2020-10-03 00:00:00', 17),
(33, 200, '2020-11-26 00:00:00', 13),
(34, 850, '2020-12-23 00:00:00', 13),
(35, 500, '2020-12-23 00:00:00', 14),
(36, 280, '2020-01-06 00:00:00', 14),
(37, 900, '2020-02-21 00:00:00', 17),
(38, 850, '2020-03-30 00:00:00', 11);

-- --------------------------------------------------------

--
-- Structure de la table `police`
--

CREATE TABLE `police` (
  `id_police` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_bien` int(11) NOT NULL,
  `id_dateEffet` datetime NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `police`
--

INSERT INTO `police` (`id_police`, `id_etat`, `id_client`, `id_bien`, `id_dateEffet`, `prix`) VALUES
(11, 2, 3, 2, '2020-04-05 00:00:00', 2500),
(12, 1, 3, 10, '2020-04-05 00:00:00', 2000),
(13, 3, 4, 3, '2020-04-15 00:00:00', 5400),
(14, 1, 5, 7, '2020-04-05 00:00:00', 3000),
(15, 3, 7, 4, '2020-06-26 00:00:00', 1000),
(16, 4, 8, 1, '2020-07-19 00:00:00', 9000),
(17, 1, 10, 6, '2020-04-05 00:00:00', 4000),
(18, 2, 11, 8, '2020-07-19 00:00:00', 3000),
(19, 3, 13, 9, '2020-08-13 00:00:00', 50000),
(20, 4, 9, 5, '2020-03-30 00:00:00', 6000);

-- --------------------------------------------------------

--
-- Structure de la table `risque`
--

CREATE TABLE `risque` (
  `id_risque` int(11) NOT NULL,
  `id_note` int(11) NOT NULL,
  `type` varchar(1) CHARACTER SET latin1 NOT NULL,
  `valider` varchar(1) CHARACTER SET latin1 NOT NULL,
  `id_bien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `risque`
--

INSERT INTO `risque` (`id_risque`, `id_note`, `type`, `valider`, `id_bien`) VALUES
(1, 1, 'A', 'O', 1),
(2, 3, 'A', 'O', 2),
(3, 2, 'A', 'N', 3),
(4, 2, 'A', 'N', 4),
(5, 3, 'A', 'O', 5),
(6, 1, 'A', 'O', 6),
(7, 2, 'H', 'N', 7),
(8, 1, 'A', 'N', 8),
(9, 1, 'A', 'O', 9),
(10, 2, 'A', 'O', 10);

-- --------------------------------------------------------

--
-- Structure de la table `sinistre`
--

CREATE TABLE `sinistre` (
  `id_sinistre` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_police` int(11) NOT NULL,
  `id_expertise` int(11) NOT NULL,
  `id_tiere` int(11) NOT NULL,
  `id_dateEffet` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sinistre`
--

INSERT INTO `sinistre` (`id_sinistre`, `id_etat`, `id_police`, `id_expertise`, `id_tiere`, `id_dateEffet`) VALUES
(11, 3, 19, 1, 4, '2020-06-10 00:00:00'),
(12, 4, 15, 1, 2, '2020-06-26 00:00:00'),
(13, 3, 13, 1, 12, '2020-08-13 00:00:00'),
(14, 3, 18, 1, 6, '2020-09-20 00:00:00'),
(15, 3, 12, 1, 9, '2020-10-03 00:00:00'),
(16, 3, 20, 1, 6, '2020-07-19 00:00:00'),
(17, 4, 17, 1, 11, '2020-11-26 00:00:00'),
(18, 4, 11, 1, 1, '2020-01-06 00:00:00'),
(19, 4, 16, 1, 7, '2020-02-21 00:00:00'),
(20, 3, 14, 1, 10, '2020-03-30 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tiere_impliques`
--

CREATE TABLE `tiere_impliques` (
  `id_tiere` int(11) NOT NULL,
  `nom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `prenom` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tel` varchar(14) CHARACTER SET latin1 NOT NULL,
  `adresse` varchar(70) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tiere_impliques`
--

INSERT INTO `tiere_impliques` (`id_tiere`, `nom`, `prenom`, `tel`, `adresse`) VALUES
(1, 'Daoust', 'Telford', '0165641331', '77, rue de Geneve 94140 ALFORTVILLE'),
(2, 'Franchet', 'Rachelle', '0221290326', '18, rue Léon Dierx 14100 LISIEUX'),
(3, 'Bergeron', 'Paul', '0339129777', '23, rue de la République 54300 LUNÉVILLE'),
(4, 'Morcos', 'Nunah', '0125626494', '39 Rue Ali Ben Bechir Ibn Salem 7110 CITE HADJ AHMED'),
(5, 'Jodoin', 'Bertrand', '78430105', '39 Rue Ali Ben Bechir Ibn Salem 7110 CITE HADJ AHMED'),
(6, 'Caron', 'Melville', '73354057', '128 Rue de Marrakech 5031 CITE DE LA LIBERTE'),
(7, 'Fluet', 'Mercer', '73354057', '24 Rue Ibn Al Khatib 7170 CITE 2 MARS 2'),
(8, 'Lafond', 'Burnell', '75380891', '56 Rue Hegel6072 CITE EL GUEFERCHA'),
(9, 'Meilleur', 'Wyatt', '78559896', '44 Rue Moftah Jguirim 9000 EL YOUSRI'),
(10, 'Cousteau', 'Iva', '70124210', '37 Rue Danton 2098 RADES MELIANE'),
(11, 'Jolicoeur', 'Rene', '75434948', '128 Rue de Marrakech 5031 CITE DE LA LIBERTE'),
(12, 'Theriault', 'Eglantine', '73354057', '44 Avenue Trimeche 8110 SIDI ROUINE');

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `id_transaction` int(11) NOT NULL,
  `id_police` int(11) DEFAULT NULL,
  `id_sinistre` int(11) DEFAULT NULL,
  `id_dateTransaction` datetime NOT NULL,
  `id_operateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`id_transaction`, `id_police`, `id_sinistre`, `id_dateTransaction`, `id_operateur`) VALUES
(22, 14, NULL, '2020-06-10 00:00:00', 2),
(23, 13, NULL, '2020-07-19 00:00:00', 1),
(24, 14, NULL, '2020-06-10 00:00:00', 2),
(25, 13, NULL, '2020-07-19 00:00:00', 1),
(26, 14, NULL, '2020-06-10 00:00:00', 2),
(27, 11, NULL, '2020-07-19 00:00:00', 1),
(28, 17, NULL, '2020-04-15 00:00:00', 1),
(29, NULL, 13, '2020-06-26 00:00:00', 2),
(30, NULL, 11, '2020-08-13 00:00:00', 2),
(31, NULL, 19, '2020-03-30 00:00:00', 1),
(32, NULL, 20, '2020-04-22 00:00:00', 1),
(33, NULL, 14, '2020-07-19 00:00:00', 2),
(34, NULL, 16, '2020-07-19 00:00:00', 1),
(35, NULL, 18, '2020-06-10 00:00:00', 2),
(36, NULL, 13, '2020-04-22 00:00:00', 2),
(37, NULL, 16, '2020-04-22 00:00:00', 2),
(38, 12, NULL, '2020-06-10 00:00:00', 1),
(39, 15, NULL, '2020-04-22 00:00:00', 1),
(40, 16, NULL, '2020-05-09 00:00:00', 2),
(41, 18, NULL, '2020-06-10 00:00:00', 1),
(42, 19, NULL, '2020-04-22 00:00:00', 1),
(43, 20, NULL, '2020-04-22 00:00:00', 1),
(44, NULL, 12, '2020-06-10 00:00:00', 1),
(45, NULL, 15, '2020-04-22 00:00:00', 2),
(46, NULL, 17, '2020-07-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `type_operateur`
--

CREATE TABLE `type_operateur` (
  `id_typeOperateur` int(11) NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_operateur`
--

INSERT INTO `type_operateur` (`id_typeOperateur`, `type`) VALUES
(1, 'Agent'),
(2, 'Employe');

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
-- Index pour la table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`id_expertise`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id_note`);

--
-- Index pour la table `operateur`
--
ALTER TABLE `operateur`
  ADD PRIMARY KEY (`id_operateur`),
  ADD KEY `id_typeOperateur` (`id_typeOperateur`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id_paiement`),
  ADD KEY `id_Sinistree` (`id_police`),
  ADD KEY `idées` (`id_date`);

--
-- Index pour la table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id_police`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_bienn` (`id_bien`),
  ADD KEY `id_etat` (`id_etat`),
  ADD KEY `wertyuiop` (`id_dateEffet`);

--
-- Index pour la table `risque`
--
ALTER TABLE `risque`
  ADD PRIMARY KEY (`id_risque`),
  ADD KEY `id_biennn` (`id_bien`),
  ADD KEY `id_note` (`id_note`);

--
-- Index pour la table `sinistre`
--
ALTER TABLE `sinistre`
  ADD PRIMARY KEY (`id_sinistre`),
  ADD KEY `id_expertise` (`id_expertise`),
  ADD KEY `id_policee` (`id_police`),
  ADD KEY `id_tiere` (`id_tiere`),
  ADD KEY `id_etttat` (`id_etat`),
  ADD KEY `jcvtuyrwfyurquvyou` (`id_dateEffet`);

--
-- Index pour la table `tiere_impliques`
--
ALTER TABLE `tiere_impliques`
  ADD PRIMARY KEY (`id_tiere`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_transaction`),
  ADD KEY `id_sinistre` (`id_sinistre`),
  ADD KEY `id_operateur` (`id_operateur`),
  ADD KEY `id_policce` (`id_police`),
  ADD KEY `sdfghjklò` (`id_dateTransaction`);

--
-- Index pour la table `type_operateur`
--
ALTER TABLE `type_operateur`
  ADD PRIMARY KEY (`id_typeOperateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `id_bien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id_etat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `id_expertise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `operateur`
--
ALTER TABLE `operateur`
  MODIFY `id_operateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id_paiement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `police`
--
ALTER TABLE `police`
  MODIFY `id_police` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `risque`
--
ALTER TABLE `risque`
  MODIFY `id_risque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `sinistre`
--
ALTER TABLE `sinistre`
  MODIFY `id_sinistre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `tiere_impliques`
--
ALTER TABLE `tiere_impliques`
  MODIFY `id_tiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `type_operateur`
--
ALTER TABLE `type_operateur`
  MODIFY `id_typeOperateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `operateur`
--
ALTER TABLE `operateur`
  ADD CONSTRAINT `id_typeOperateur` FOREIGN KEY (`id_typeOperateur`) REFERENCES `type_operateur` (`id_typeOperateur`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `id_oliceeee` FOREIGN KEY (`id_police`) REFERENCES `police` (`id_police`),
  ADD CONSTRAINT `idées` FOREIGN KEY (`id_date`) REFERENCES `date` (`date`);

--
-- Contraintes pour la table `police`
--
ALTER TABLE `police`
  ADD CONSTRAINT `id_bienn` FOREIGN KEY (`id_bien`) REFERENCES `bien` (`id_bien`),
  ADD CONSTRAINT `id_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `id_etat` FOREIGN KEY (`id_etat`) REFERENCES `etat` (`id_etat`),
  ADD CONSTRAINT `wertyuiop` FOREIGN KEY (`id_dateEffet`) REFERENCES `date` (`date`);

--
-- Contraintes pour la table `risque`
--
ALTER TABLE `risque`
  ADD CONSTRAINT `id_biennn` FOREIGN KEY (`id_bien`) REFERENCES `bien` (`id_bien`),
  ADD CONSTRAINT `id_note` FOREIGN KEY (`id_note`) REFERENCES `note` (`id_note`);

--
-- Contraintes pour la table `sinistre`
--
ALTER TABLE `sinistre`
  ADD CONSTRAINT `id_etttat` FOREIGN KEY (`id_etat`) REFERENCES `etat` (`id_etat`),
  ADD CONSTRAINT `id_expertise` FOREIGN KEY (`id_expertise`) REFERENCES `expertise` (`id_expertise`),
  ADD CONSTRAINT `id_policee` FOREIGN KEY (`id_police`) REFERENCES `police` (`id_police`),
  ADD CONSTRAINT `id_tiere` FOREIGN KEY (`id_tiere`) REFERENCES `tiere_impliques` (`id_tiere`),
  ADD CONSTRAINT `jcvtuyrwfyurquvyou` FOREIGN KEY (`id_dateEffet`) REFERENCES `date` (`date`);

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `id_operateur` FOREIGN KEY (`id_operateur`) REFERENCES `operateur` (`id_operateur`),
  ADD CONSTRAINT `id_policce` FOREIGN KEY (`id_police`) REFERENCES `police` (`id_police`),
  ADD CONSTRAINT `id_sinistre` FOREIGN KEY (`id_sinistre`) REFERENCES `sinistre` (`id_sinistre`),
  ADD CONSTRAINT `sdfghjklò` FOREIGN KEY (`id_dateTransaction`) REFERENCES `date` (`date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
