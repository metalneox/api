-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 30, 2019 alle 17:14
-- Versione del server: 10.4.6-MariaDB
-- Versione PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cities`
--

CREATE TABLE `cities` (
  `IDCities` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `cities`
--

INSERT INTO `cities` (`IDCities`, `Name`, `createdAt`, `updatedAt`) VALUES
('53849fd7-7274-4d11-903f-304161544498', 'Palermo', '2019-09-30', '2019-09-30'),
('a7a030b9-be71-4bf9-9186-26f03f5796b3', 'Genova', '2019-09-30', '2019-09-30'),
('af9f0a90-7ec7-4bbc-9e22-604f3b3416d3', 'Genova', '2019-09-30', '2019-09-30'),
('ed6debfa-2c7c-419e-bac0-63df621e3cea', 'Genova', '2019-09-30', '2019-09-30'),
('f02bb83a-ac26-4375-b5b2-f4273fa9962d', 'Venezia', '2019-09-30', '2019-09-30');

-- --------------------------------------------------------

--
-- Struttura della tabella `people`
--

CREATE TABLE `people` (
  `IDPeople` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `IDCities` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`IDCities`),
  ADD UNIQUE KEY `IDCity` (`IDCities`),
  ADD UNIQUE KEY `IDCity_2` (`IDCities`),
  ADD UNIQUE KEY `IDCity_3` (`IDCities`);

--
-- Indici per le tabelle `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`IDPeople`),
  ADD UNIQUE KEY `IDPeople` (`IDPeople`),
  ADD KEY `IDCities` (`IDCities`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_ibfk_1` FOREIGN KEY (`IDCities`) REFERENCES `cities` (`IDCities`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
