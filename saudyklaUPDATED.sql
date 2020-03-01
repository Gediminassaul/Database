-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 01:05 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saudykla`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresas`
--

CREATE TABLE `adresas` (
  `id` int(11) NOT NULL,
  `pasto_kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `gatve` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `numeris` int(11) NOT NULL,
  `miesto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `adresas`
--

INSERT INTO `adresas` (`id`, `pasto_kodas`, `gatve`, `numeris`, `miesto_id`) VALUES
(1, 'LT857451', 'Mjoneze', 12, 3),
(3, 'LT854249', 'Marjono', 68, 2),
(4, 'LT557841', 'Uliskiu', 17, 1),
(5, 'LT557841', 'Makaronu', 12, 2),
(6, 'LT32841', 'Kalo', 1, 2),
(7, 'LT63212', 'Venspilio', 12, 3),
(8, 'LT21234', 'Uragnu', 76, 2),
(9, 'LT31234', 'Sablonu', 65, 1),
(10, 'LT78912', 'Olariku', 43, 1),
(11, 'LT87123', 'Uosto', 78, 3);

-- --------------------------------------------------------

--
-- Table structure for table `busena`
--

CREATE TABLE `busena` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `busena`
--

INSERT INTO `busena` (`id`, `pavadinimas`) VALUES
(1, 'Patvirtinas'),
(2, 'Nepatvirtinas');

-- --------------------------------------------------------

--
-- Table structure for table `darbuotojas`
--

CREATE TABLE `darbuotojas` (
  `asmens_kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `vardas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `pavarde` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `telefonas` int(11) NOT NULL,
  `el_pastas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `darbuotojas`
--

INSERT INTO `darbuotojas` (`asmens_kodas`, `vardas`, `pavarde`, `telefonas`, `el_pastas`, `roles_id`) VALUES
('32011242141', 'Rihanas', 'Umbrelas', 8574215, 'Umbrelas@saudykla.lt', 1),
('32011298098', 'Runas', 'Skeipas', 8685422, 'skeipas@saudykla.lt', 2),
('345123434434', 'Rima', 'Rimis', 867412331, 'PonasRimas@saudykla.lt', 1),
('34556781212', 'Richardas', 'Kauneckas', 8675212, 'Kauneckas@saudykla.lt', 2),
('345678901222', 'Marijus', 'Doslkis', 867451231, 'Doslkis@saudykla.lt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detuve`
--

CREATE TABLE `detuve` (
  `numeris` int(11) NOT NULL,
  `talpa` int(11) NOT NULL,
  `sovinio_tipas` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `detuve`
--

INSERT INTO `detuve` (`numeris`, `talpa`, `sovinio_tipas`) VALUES
(1, 10, '10'),
(2, 15, '12'),
(3, 20, '4'),
(4, 5, '28');

-- --------------------------------------------------------

--
-- Table structure for table `ginklas`
--

CREATE TABLE `ginklas` (
  `numeris` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `kalibras` int(11) NOT NULL,
  `detuviu_skaicius` int(11) NOT NULL,
  `kategorijos_id` int(11) NOT NULL,
  `detuve` int(11) NOT NULL,
  `pagaminimo_data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `ginklas`
--

INSERT INTO `ginklas` (`numeris`, `pavadinimas`, `kalibras`, `detuviu_skaicius`, `kategorijos_id`, `detuve`, `pagaminimo_data`) VALUES
(1, 'GLOCK-18', 12, 1, 1, 2, '2005-12-07'),
(3, 'AWP', 28, 1, 3, 4, '2014-12-29'),
(4, 'FIVE SEVEN', 10, 2, 1, 1, '2000-01-25'),
(5, 'BERETA', 4, 1, 1, 3, '2004-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `ginklo_leidimas`
--

CREATE TABLE `ginklo_leidimas` (
  `dokumento_numeris` int(11) NOT NULL,
  `kategorijos_id` int(11) NOT NULL,
  `galioja_iki` datetime NOT NULL,
  `klientas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `ginklo_leidimas`
--

INSERT INTO `ginklo_leidimas` (`dokumento_numeris`, `kategorijos_id`, `galioja_iki`, `klientas`) VALUES
(1, 1, '2029-03-02 00:00:00', '320112424148'),
(3, 2, '2025-12-07 00:00:00', '320112424148'),
(4, 3, '2029-07-12 00:00:00', '320112424148'),
(5, 1, '2024-12-25 00:00:00', '3201474298098'),
(6, 2, '2018-11-26 00:00:00', '3201474298098'),
(7, 3, '2018-11-27 00:00:00', '3201474298098'),
(8, 1, '2018-12-04 00:00:00', '452191298098'),
(9, 2, '2018-12-05 00:00:00', '452191298098'),
(10, 3, '2018-12-03 00:00:00', '452191298098');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id`, `pavadinimas`) VALUES
(1, 'Pistoletas'),
(2, 'Automatas'),
(3, 'Snaiperis');

-- --------------------------------------------------------

--
-- Table structure for table `klientas`
--

CREATE TABLE `klientas` (
  `asmens_kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `vardas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `pavarde` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `telefonas` int(11) NOT NULL,
  `el_pastas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `klientas`
--

INSERT INTO `klientas` (`asmens_kodas`, `vardas`, `pavarde`, `telefonas`, `el_pastas`) VALUES
('320112424148', 'Rusvakis', 'Keleris', 86864521, 'Keleris@kilina.com'),
('3201474298098', 'Urvakis', 'Urvelis', 857542214, 'Urvelis@mai.ru'),
('452191298098', 'Richard', 'Lionheart', 8654212, 'richardson@one.lt');

-- --------------------------------------------------------

--
-- Table structure for table `miestas`
--

CREATE TABLE `miestas` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `miestas`
--

INSERT INTO `miestas` (`id`, `pavadinimas`) VALUES
(1, 'Klaipeda'),
(2, 'Vilnius'),
(3, 'Kaunas');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `pavadinimas`) VALUES
(1, 'Administratorius'),
(2, 'Vadybininkas');

-- --------------------------------------------------------

--
-- Table structure for table `saskaita`
--

CREATE TABLE `saskaita` (
  `kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `uzsakymo_id` int(11) NOT NULL,
  `sukurimo_data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `saskaita`
--

INSERT INTO `saskaita` (`kodas`, `uzsakymo_id`, `sukurimo_data`) VALUES
('SAS5412', 4, '2018-12-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `saudykla`
--

CREATE TABLE `saudykla` (
  `imones_kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `telefono_numeris` int(11) NOT NULL,
  `mobilusis` int(11) NOT NULL,
  `el_pastas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `adreso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `saudykla`
--

INSERT INTO `saudykla` (`imones_kodas`, `pavadinimas`, `telefono_numeris`, `mobilusis`, `el_pastas`, `adreso_id`) VALUES
('LTUSD8755', 'Scalar', 874521, 57742, 'scalar@cshap.net', 1),
('XSA847214', 'Methampor', 887545622, 8874456, 'support@methampor.com', 3),
('XVS5852123', 'Marathon', 868654212, 86424510, 'marathod@dot.net', 4);

-- --------------------------------------------------------

--
-- Table structure for table `saudyklos_ginklai`
--

CREATE TABLE `saudyklos_ginklai` (
  `id` int(11) NOT NULL,
  `ginklo_numeris` int(11) NOT NULL,
  `imones_kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `saudyklos_ginklai`
--

INSERT INTO `saudyklos_ginklai` (`id`, `ginklo_numeris`, `imones_kodas`) VALUES
(1, 1, 'LTUSD8755'),
(2, 3, 'LTUSD8755'),
(3, 4, 'XSA847214'),
(4, 5, 'XVS5852123');

-- --------------------------------------------------------

--
-- Table structure for table `saudyklos_takeliai`
--

CREATE TABLE `saudyklos_takeliai` (
  `id` int(11) NOT NULL,
  `imones_kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `takelio_numeris` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `saudyklos_takeliai`
--

INSERT INTO `saudyklos_takeliai` (`id`, `imones_kodas`, `takelio_numeris`) VALUES
(1, 'LTUSD8755', 1),
(2, 'XSA847214', 2),
(3, 'XVS5852123', 3),
(4, 'XVS5852123', 1),
(5, 'XVS5852123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sovinys`
--

CREATE TABLE `sovinys` (
  `Kalibras` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `Kaina` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `sovinys`
--

INSERT INTO `sovinys` (`Kalibras`, `Kaina`) VALUES
('10', '15'),
('12', '16'),
('28', '19'),
('4', '10');

-- --------------------------------------------------------

--
-- Table structure for table `takeliai`
--

CREATE TABLE `takeliai` (
  `numeris` int(11) NOT NULL,
  `ilgis` decimal(10,2) NOT NULL,
  `adreso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `takeliai`
--

INSERT INTO `takeliai` (`numeris`, `ilgis`, `adreso_id`) VALUES
(1, '12.25', 5),
(2, '5.54', 1),
(3, '7.75', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uzsakymas`
--

CREATE TABLE `uzsakymas` (
  `id` int(11) NOT NULL,
  `darbuotojas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `imones_kodas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `klientas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `komentaras` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `busenos_id` int(11) NOT NULL,
  `saudyklos_takelio_id` int(11) NOT NULL,
  `uzsakymo_data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `uzsakymas`
--

INSERT INTO `uzsakymas` (`id`, `darbuotojas`, `imones_kodas`, `klientas`, `komentaras`, `busenos_id`, `saudyklos_takelio_id`, `uzsakymo_data`) VALUES
(1, '32011242141', 'LTUSD8755', '320112424148', NULL, 2, 1, '2018-12-07 00:00:00'),
(2, '32011298098', 'XVS5852123', '452191298098', NULL, 2, 3, '2018-12-14 00:00:00'),
(3, '32011298098', 'XSA847214', '3201474298098', NULL, 2, 2, '2018-12-06 00:00:00'),
(4, '32011242141', 'LTUSD8755', '3201474298098', NULL, 1, 3, '2018-12-07 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adresas`
--
ALTER TABLE `adresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_adresas_miesto_id2` (`miesto_id`);

--
-- Indexes for table `busena`
--
ALTER TABLE `busena`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD PRIMARY KEY (`asmens_kodas`),
  ADD KEY `FK_darbuotojas_roles_id` (`roles_id`);

--
-- Indexes for table `detuve`
--
ALTER TABLE `detuve`
  ADD PRIMARY KEY (`numeris`),
  ADD KEY `FK_detuve_sovinys` (`sovinio_tipas`);

--
-- Indexes for table `ginklas`
--
ALTER TABLE `ginklas`
  ADD PRIMARY KEY (`numeris`),
  ADD KEY `FK_ginklas_kategorija` (`kategorijos_id`),
  ADD KEY `FK_ginklas_detuve` (`detuve`);

--
-- Indexes for table `ginklo_leidimas`
--
ALTER TABLE `ginklo_leidimas`
  ADD PRIMARY KEY (`dokumento_numeris`),
  ADD KEY `FK_ginklo_leidimas_kategorijos_id` (`kategorijos_id`),
  ADD KEY `FK_ginklo_leidimas_klientas` (`klientas`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klientas`
--
ALTER TABLE `klientas`
  ADD PRIMARY KEY (`asmens_kodas`);

--
-- Indexes for table `miestas`
--
ALTER TABLE `miestas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saskaita`
--
ALTER TABLE `saskaita`
  ADD PRIMARY KEY (`kodas`),
  ADD KEY `FK_saskaita_uzsakymo_id` (`uzsakymo_id`);

--
-- Indexes for table `saudykla`
--
ALTER TABLE `saudykla`
  ADD PRIMARY KEY (`imones_kodas`),
  ADD KEY `FK_saudykla_` (`adreso_id`);

--
-- Indexes for table `saudyklos_ginklai`
--
ALTER TABLE `saudyklos_ginklai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_saudyklos_ginklai_ginklo_numeris` (`ginklo_numeris`),
  ADD KEY `FK_saudyklos_ginklai_imones_kodas` (`imones_kodas`);

--
-- Indexes for table `saudyklos_takeliai`
--
ALTER TABLE `saudyklos_takeliai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_saudyklos_takeliai_imones_kodas` (`imones_kodas`),
  ADD KEY `FK_saudyklos_takeliai_takelio_numeris` (`takelio_numeris`);

--
-- Indexes for table `sovinys`
--
ALTER TABLE `sovinys`
  ADD PRIMARY KEY (`Kalibras`);

--
-- Indexes for table `takeliai`
--
ALTER TABLE `takeliai`
  ADD PRIMARY KEY (`numeris`),
  ADD KEY `FK_takeliai_adreso_id` (`adreso_id`);

--
-- Indexes for table `uzsakymas`
--
ALTER TABLE `uzsakymas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uzsakymas_darbuotojas` (`darbuotojas`),
  ADD KEY `FK_uzsakymas_imones_kodas` (`imones_kodas`),
  ADD KEY `FK_uzsakymas_klientas` (`klientas`),
  ADD KEY `FK_uzsakymas_busenos_id` (`busenos_id`),
  ADD KEY `FK_uzsakymas_saudyklos_takelio_id` (`saudyklos_takelio_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adresas`
--
ALTER TABLE `adresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `busena`
--
ALTER TABLE `busena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detuve`
--
ALTER TABLE `detuve`
  MODIFY `numeris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ginklas`
--
ALTER TABLE `ginklas`
  MODIFY `numeris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ginklo_leidimas`
--
ALTER TABLE `ginklo_leidimas`
  MODIFY `dokumento_numeris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `miestas`
--
ALTER TABLE `miestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saudyklos_ginklai`
--
ALTER TABLE `saudyklos_ginklai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `saudyklos_takeliai`
--
ALTER TABLE `saudyklos_takeliai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uzsakymas`
--
ALTER TABLE `uzsakymas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adresas`
--
ALTER TABLE `adresas`
  ADD CONSTRAINT `FK_adresas_miesto_id2` FOREIGN KEY (`miesto_id`) REFERENCES `miestas` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD CONSTRAINT `FK_darbuotojas_roles_id` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `detuve`
--
ALTER TABLE `detuve`
  ADD CONSTRAINT `FK_detuve_sovinys` FOREIGN KEY (`sovinio_tipas`) REFERENCES `sovinys` (`Kalibras`) ON DELETE NO ACTION;

--
-- Constraints for table `ginklas`
--
ALTER TABLE `ginklas`
  ADD CONSTRAINT `FK_ginklas_detuve` FOREIGN KEY (`detuve`) REFERENCES `detuve` (`numeris`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_ginklas_kategorija` FOREIGN KEY (`kategorijos_id`) REFERENCES `kategorija` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `ginklo_leidimas`
--
ALTER TABLE `ginklo_leidimas`
  ADD CONSTRAINT `FK_ginklo_leidimas_kategorijos_id` FOREIGN KEY (`kategorijos_id`) REFERENCES `kategorija` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_ginklo_leidimas_klientas` FOREIGN KEY (`klientas`) REFERENCES `klientas` (`asmens_kodas`) ON DELETE NO ACTION;

--
-- Constraints for table `saskaita`
--
ALTER TABLE `saskaita`
  ADD CONSTRAINT `FK_saskaita_uzsakymo_id` FOREIGN KEY (`uzsakymo_id`) REFERENCES `uzsakymas` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `saudykla`
--
ALTER TABLE `saudykla`
  ADD CONSTRAINT `FK_saudykla_adreso_id` FOREIGN KEY (`adreso_id`) REFERENCES `adresas` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `saudyklos_ginklai`
--
ALTER TABLE `saudyklos_ginklai`
  ADD CONSTRAINT `FK_saudyklos_ginklai_ginklo_numeris` FOREIGN KEY (`ginklo_numeris`) REFERENCES `ginklas` (`numeris`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_saudyklos_ginklai_imones_kodas` FOREIGN KEY (`imones_kodas`) REFERENCES `saudykla` (`imones_kodas`) ON DELETE NO ACTION;

--
-- Constraints for table `saudyklos_takeliai`
--
ALTER TABLE `saudyklos_takeliai`
  ADD CONSTRAINT `FK_saudyklos_takeliai_imones_kodas` FOREIGN KEY (`imones_kodas`) REFERENCES `saudykla` (`imones_kodas`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_saudyklos_takeliai_takelio_numeris` FOREIGN KEY (`takelio_numeris`) REFERENCES `takeliai` (`numeris`) ON DELETE NO ACTION;

--
-- Constraints for table `takeliai`
--
ALTER TABLE `takeliai`
  ADD CONSTRAINT `FK_takeliai_adreso_id` FOREIGN KEY (`adreso_id`) REFERENCES `adresas` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `uzsakymas`
--
ALTER TABLE `uzsakymas`
  ADD CONSTRAINT `FK_uzsakymas_busenos_id` FOREIGN KEY (`busenos_id`) REFERENCES `busena` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_uzsakymas_darbuotojas` FOREIGN KEY (`darbuotojas`) REFERENCES `darbuotojas` (`asmens_kodas`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_uzsakymas_imones_kodas` FOREIGN KEY (`imones_kodas`) REFERENCES `saudykla` (`imones_kodas`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_uzsakymas_klientas` FOREIGN KEY (`klientas`) REFERENCES `klientas` (`asmens_kodas`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_uzsakymas_saudyklos_takelio_id` FOREIGN KEY (`saudyklos_takelio_id`) REFERENCES `saudyklos_takeliai` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
