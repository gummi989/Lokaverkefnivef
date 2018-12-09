-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2017 at 12:48 PM
create database 2704982729_bilar;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE TABLE user (
    `uid`      INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(64) NOT NULL UNIQUE,
    `name`     VARCHAR(50),
    `password` CHAR(88) NOT NULL
);

CREATE TABLE IF NOT EXISTS 2704982729_bilar (
  `skraningarnumer` varchar(6) NOT NULL,
  `Tegund` varchar(32) NOT NULL,
  `verksmidjunumer` varchar(32) NOT NULL,
  `skraningardagur` date NOT NULL,
  `co2` int(11) NOT NULL,
  `þyngd` int(11) NOT NULL,
  `skodun` date NOT NULL,
  `stada` varchar(10) NOT NULL,
  PRIMARY KEY (`skraningarnumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bilar`
--

INSERT INTO 2704982729_bilar (`skraningarnumer`, `Tegund`, `verksmidjunumer`, `skraningardagur`, `co2`, `þyngd`, `skodun`, `stada`) VALUES
('AB-123', 'Mercedes Benz C200 (Silfur)', 'MBWZZZ9NZ3Y2600', '2017-10-30', 25, 2000, '2021-10-30', 'Í umferð'),
('TX-811', 'Renault-Kangoo (Ljósgrár)', 'VF1FC0BAF24641409', '2001-11-14', 250, 1020, '2016-08-31', 'Úr umferð'),
('UH-697', 'Volgswagen - Polo (Ljósblár)', 'WVWZZZ9NZ3Y260057', '2003-06-13', 142, 1073, '2016-08-31', 'Í umferð');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
