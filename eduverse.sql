-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 01, 2023 at 05:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `aditi m`
--

CREATE TABLE `aditi m` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aditi m`
--

INSERT INTO `aditi m` (`tt`, `class`, `subject`) VALUES
('Friday 10to11', 'TEA', 'CC T'),
('Friday 3to4', 'TEB', 'CC P'),
('Friday 4to5', 'TEB', 'CC P'),
('Friday 9to10', 'TEA', 'CC T'),
('Monday 10to11', 'TEB', 'CC T'),
('Monday 9to10', 'TEB', 'CC T'),
('Thursday 10to11', 'TEA', 'CC P'),
('Thursday 9to10', 'TEA', 'CC P');

-- --------------------------------------------------------

--
-- Table structure for table `ankita k`
--

CREATE TABLE `ankita k` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ankita k`
--

INSERT INTO `ankita k` (`tt`, `class`, `subject`) VALUES
('Friday 2to3', 'TEA', 'CSS'),
('Monday 11_15to12_15', 'TEA', 'CSS P'),
('Monday 12_15to1_15', 'TEA', 'CSS P'),
('Monday 9to10', 'TEA', 'CSS'),
('Tuesday 3to4', 'TEA', 'Honors'),
('Tuesday 4to5', 'TEA', 'Honors'),
('Wednesday 12_15to1_15', 'TEA', 'CSS'),
('Wednesday 3to4', 'TEA', 'Honors'),
('Wednesday 4to5', 'TEA', 'Honors');

-- --------------------------------------------------------

--
-- Table structure for table `annies m`
--

CREATE TABLE `annies m` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annies m`
--

INSERT INTO `annies m` (`tt`, `class`, `subject`) VALUES
('Friday 11_15to12_15', 'TEB', 'MC P'),
('Friday 12_15to1_15', 'TEB', 'MC P'),
('Friday 3to4', 'TEA', 'Mini Project'),
('Friday 4to5', 'TEA', 'Mini Project'),
('Friday 9to10', 'TEB', 'MC'),
('Monday 11_15to12_15', 'TEB', 'MC'),
('Thursday 11_15to12_15', 'TEB', 'MC'),
('Thursday 3to4', 'TEA', 'Mini Project'),
('Thursday 4to5', 'TEA', 'Mini Project'),
('Wednesday 10to11', 'TEA', 'MC P'),
('Wednesday 9to10', 'TEA', 'MC P');

-- --------------------------------------------------------

--
-- Table structure for table `bea`
--

CREATE TABLE `bea` (
  `tt` varchar(30) NOT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beb`
--

CREATE TABLE `beb` (
  `tt` varchar(30) NOT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bidisha r`
--

CREATE TABLE `bidisha r` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidisha r`
--

INSERT INTO `bidisha r` (`tt`, `class`, `subject`) VALUES
('Friday 12_15to1_15', 'SEB', 'AOA'),
('Friday 2to3', 'SEA', 'AOA'),
('Thursday 10to11', 'SEA', 'AOA'),
('Thursday 3to4', 'SEB', 'AOA'),
('Tuesday 12_15to1_15', 'SEA', 'AOA'),
('Wednesday 3to4', 'SEA', 'AOA P'),
('Wednesday 4to5', 'SEA', 'AOA P'),
('Wednesday 9to10', 'SEB', 'AOA');

-- --------------------------------------------------------

--
-- Table structure for table `dakshata p`
--

CREATE TABLE `dakshata p` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dakshata p`
--

INSERT INTO `dakshata p` (`tt`, `class`, `subject`) VALUES
('Monday 11_15to12_15', 'SEB', 'MP P'),
('Monday 12_15to1_15', 'SEB', 'MP P'),
('Monday 2to3', 'SEB', 'MP'),
('Thursday 11_15to12_15', 'SEA', 'MP P'),
('Thursday 12_15to1_15', 'SEA', 'MP P'),
('Thursday 3to4', 'SEA', 'MP'),
('Tuesday 11_15to12_15', 'SEA', 'MP'),
('Tuesday 12_15to1_15', 'SEB', 'MP'),
('Wednesday 10to11', 'SEB', 'MP'),
('Wednesday 12_15to1_15', 'SEA', 'MP');

-- --------------------------------------------------------

--
-- Table structure for table `day_of_week`
--

CREATE TABLE `day_of_week` (
  `day` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `day_of_week`
--

INSERT INTO `day_of_week` (`day`) VALUES
('Monday');

-- --------------------------------------------------------

--
-- Table structure for table `kavita s`
--

CREATE TABLE `kavita s` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kavita s`
--

INSERT INTO `kavita s` (`tt`, `class`, `subject`) VALUES
('Tuesday 10to11', 'SEB', 'DBMS P'),
('Tuesday 9to10', 'SEB', 'DBMS P');

-- --------------------------------------------------------

--
-- Table structure for table `loginsignup`
--

CREATE TABLE `loginsignup` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginsignup`
--

INSERT INTO `loginsignup` (`id`, `name`, `email`, `password`) VALUES
(212000, 'Kavita S', 'buddhiwantyogiraj@gmail.com', '*A154C52565E9E7F94BF'),
(212001, 'Dakshata P', 'buddhiwantyogiraj@gmail.com', '*A154C52565E9E7F94BF'),
(212002, 'Sanjeev M', 'sonal.shinde0403@gmail.com', '*A154C52565E9E7F94BF'),
(212003, 'Nidhi G', 'sonal.shinde0403@gmail.com', '*A154C52565E9E7F94BF'),
(212004, 'Prachiti P', 'rodriguezlillian472@student.sfit.ac.in', '*A154C52565E9E7F94BF'),
(212005, 'Monalisa L', 'rodriguezlillian472@student.sfit.ac.in', '*A154C52565E9E7F94BF'),
(212006, 'Bidisha R', 'sonal.shinde0403@student.sfit.ac.in', '*A154C52565E9E7F94BF'),
(212007, 'Priya K', 'oggggy0505@gmail.com', '*A154C52565E9E7F94BF'),
(212008, 'Ankita K', 'sonal.shinde0403@student.sfit.ac.in', '*A154C52565E9E7F94BF'),
(212009, 'Varsha S', 'rodriguezlillian472@gmail.com', '*A154C52565E9E7F94BF'),
(212010, 'Rajkumar S', 'rodriguezlillian472@gmail.com', '*A154C52565E9E7F94BF'),
(212011, 'Shamsuddin K', 'rodriguezlillian472@gmail.com', '*A154C52565E9E7F94BF'),
(212012, 'Snehal K', 'ryangiggs6996@gmail.com', '*A154C52565E9E7F94BF'),
(212013, 'Annies M', 'ryangiggs6996@gmail.com', '*A154C52565E9E7F94BF'),
(212014, 'Monali K', 'ryangiggs6996@gmail.com', '*A154C52565E9E7F94BF'),
(212015, 'Aditi M', 'ryangiggs6996@gmail.com', '*A154C52565E9E7F94BF'),
(212016, 'Varsha N', 'lillianrodrigues987@gmail.com', '*A154C52565E9E7F94BF'),
(212017, 'Sachin M', 'lillianrodrigues987@gmail.com', '*A154C52565E9E7F94BF'),
(212106, 'Sonal', 'sonal.shinde0403@student.sfit.ac.in', '*0D3CED9BEC10A777AEC');

-- --------------------------------------------------------

--
-- Table structure for table `monali k`
--

CREATE TABLE `monali k` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monalisa l`
--

CREATE TABLE `monalisa l` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monalisa l`
--

INSERT INTO `monalisa l` (`tt`, `class`, `subject`) VALUES
('Friday 10to11', 'SEA', 'Python P'),
('Friday 2to3', 'SEB', 'Python'),
('Friday 3to4', 'SEB', 'Python P'),
('Friday 4to5', 'SEB', 'Python P'),
('Friday 9to10', 'SEA', 'Python P'),
('Monday 2to3', 'SEA', 'Python'),
('Thursday 12_15to1_15', 'SEB', 'Python'),
('Tuesday 10to11', 'SEA', 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `nidhi g`
--

CREATE TABLE `nidhi g` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nidhi g`
--

INSERT INTO `nidhi g` (`tt`, `class`, `subject`) VALUES
('Friday 11_15to12_15', 'SEB', 'OS'),
('Monday 10to11', 'SEB', 'OS'),
('Monday 11_15to12_15', 'SEA', 'OS'),
('Thursday 2to3', 'SEA', 'OS'),
('Tuesday 2to3', 'SEB', 'OS'),
('Tuesday 3to4', 'SEA', 'OS P'),
('Tuesday 4to5', 'SEA', 'OS P'),
('Wednesday 11_15to12_15', 'SEB', 'OS P'),
('Wednesday 12_15to1_15', 'SEB', 'OS P'),
('Wednesday 2to3', 'SEA', 'OS');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `teacher` varchar(20) NOT NULL,
  `tt` varchar(10) NOT NULL,
  `class` varchar(5) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `fromm` varchar(30) NOT NULL,
  `too` varchar(30) NOT NULL,
  `class` varchar(5) NOT NULL,
  `tt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prachiti p`
--

CREATE TABLE `prachiti p` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prachiti p`
--

INSERT INTO `prachiti p` (`tt`, `class`, `subject`) VALUES
('Friday 12_15to1_15', 'SEA', 'DBMS'),
('Monday 10to11', 'SEA', 'DBMS P'),
('Monday 3to4', 'SEB', 'DBMS'),
('Monday 9to10', 'SEA', 'DBMS P'),
('Thursday 2to3', 'SEB', 'DBMS'),
('Thursday 4to5', 'SEA', 'DBMS'),
('Tuesday 11_15to12_15', 'SEB', 'DBMS'),
('Wednesday 11_15to12_15', 'SEA', 'DBMS');

-- --------------------------------------------------------

--
-- Table structure for table `priya k`
--

CREATE TABLE `priya k` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `priya k`
--

INSERT INTO `priya k` (`tt`, `class`, `subject`) VALUES
('Friday 10to11', 'SEB', 'Mini Project'),
('Friday 2to3', 'TEB', 'AI'),
('Friday 9to10', 'SEB', 'Mini Project'),
('Monday 12_15to1_15', 'TEB', 'AI'),
('Monday 3to4', 'SEA', 'Mini Project'),
('Monday 4to5', 'SEA', 'Mini Project'),
('Thursday 10to11', 'SEB', 'AOA P'),
('Thursday 9to10', 'SEB', 'AOA P'),
('Tuesday 10to11', 'TEB', 'AI P'),
('Tuesday 9to10', 'TEB', 'AI P'),
('Wednesday 10to11', 'SEA', 'Mini Project'),
('Wednesday 11_15to12_15', 'TEB', 'AI'),
('Wednesday 3to4', 'SEB', 'Mini Project'),
('Wednesday 4to5', 'SEB', 'Mini Project'),
('Wednesday 9to10', 'SEA', 'Mini Project');

-- --------------------------------------------------------

--
-- Table structure for table `rajkumar s`
--

CREATE TABLE `rajkumar s` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rajkumar s`
--

INSERT INTO `rajkumar s` (`tt`, `class`, `subject`) VALUES
('Friday 12_15to1_15', 'TEA', 'MC'),
('Monday 10to11', 'TEA', 'MC'),
('Thursday 2to3', 'TEA', 'MC');

-- --------------------------------------------------------

--
-- Table structure for table `sachin m`
--

CREATE TABLE `sachin m` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanjeev m`
--

CREATE TABLE `sanjeev m` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanjeev m`
--

INSERT INTO `sanjeev m` (`tt`, `class`, `subject`) VALUES
('Friday 11_15to12_15', 'SEA', 'Maths'),
('Monday 12_15to1_15', 'SEA', 'Maths'),
('Monday 9to10', 'SEB', 'Maths'),
('Thursday 11_15to12_15', 'SEB', 'Maths'),
('Thursday 9to10', 'SEA', 'Maths T'),
('Tuesday 2to3', 'SEA', 'Maths'),
('Tuesday 3to4', 'SEB', 'Maths T'),
('Wednesday 2to3', 'SEB', 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `sea`
--

CREATE TABLE `sea` (
  `tt` varchar(30) NOT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sea`
--

INSERT INTO `sea` (`tt`, `teacher`, `subject`) VALUES
('Friday 10to11', 'Monalisa L', 'Python P'),
('Friday 11_15to12_15', 'Sanjeev M', 'Maths'),
('Friday 12_15to1_15', 'Prachiti P', 'DBMS'),
('Friday 2to3', 'Bidisha R', 'AOA'),
('Friday 9to10', 'Monalisa L', 'Python P'),
('Monday 10to11', 'Prachiti P', 'DBMS P'),
('Monday 11_15to12_15', 'Nidhi G', 'OS'),
('Monday 12_15to1_15', 'Sanjeev M', 'Maths'),
('Monday 2to3', 'Monalisa L', 'Python'),
('Monday 3to4', 'Priya K', 'Mini Project'),
('Monday 4to5', 'Priya K', 'Mini Project'),
('Monday 9to10', 'Prachiti P', 'DBMS P'),
('Thursday 10to11', 'Bidisha R', 'AOA'),
('Thursday 11_15to12_15', 'Dakshata P', 'MP P'),
('Thursday 12_15to1_15', 'Dakshata P', 'MP P'),
('Thursday 2to3', 'Nidhi G', 'OS'),
('Thursday 3to4', 'Dakshata P', 'MP'),
('Thursday 4to5', 'Prachiti P', 'DBMS'),
('Thursday 9to10', 'Sanjeev M', 'Maths T'),
('Tuesday 10to11', 'Monalisa L', 'Python'),
('Tuesday 11_15to12_15', 'Dakshata P', 'MP'),
('Tuesday 12_15to1_15', 'Bidisha R', 'AOA'),
('Tuesday 2to3', 'Sanjeev M', 'Maths'),
('Tuesday 3to4', 'Nidhi G', 'OS P'),
('Tuesday 4to5', 'Nidhi G', 'OS P'),
('Wednesday 10to11', 'Priya K', 'Mini Project'),
('Wednesday 11_15to12_15', 'Prachiti P', 'DBMS'),
('Wednesday 12_15to1_15', 'Dakshata P', 'MP'),
('Wednesday 2to3', 'Nidhi G', 'OS'),
('Wednesday 3to4', 'Bidisha R', 'AOA P'),
('Wednesday 4to5', 'Bidisha R', 'AOA P'),
('Wednesday 9to10', 'Priya K', 'Mini Project');

-- --------------------------------------------------------

--
-- Table structure for table `seb`
--

CREATE TABLE `seb` (
  `tt` varchar(30) NOT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seb`
--

INSERT INTO `seb` (`tt`, `teacher`, `subject`) VALUES
('Friday 10to11', 'Priya K', 'Mini Project'),
('Friday 11_15to12_15', 'Nidhi G', 'OS'),
('Friday 12_15to1_15', 'Bidisha R', 'AOA'),
('Friday 2to3', 'Monalisa L', 'Python'),
('Friday 3to4', 'Monalisa L', 'Python P'),
('Friday 4to5', 'Monalisa L', 'Python P'),
('Friday 9to10', 'Priya K', 'Mini Project'),
('Monday 10to11', 'Nidhi G', 'OS'),
('Monday 11_15to12_15', 'Dakshata P', 'MP P'),
('Monday 12_15to1_15', 'Dakshata P', 'MP P'),
('Monday 2to3', 'Dakshata P', 'MP'),
('Monday 3to4', 'Prachiti P', 'DBMS'),
('Monday 9to10', 'Sanjeev M', 'Maths'),
('Thursday 10to11', 'Priya K', 'AOA P'),
('Thursday 11_15to12_15', 'Sanjeev M', 'Maths'),
('Thursday 12_15to1_15', 'Monalisa L', 'Python'),
('Thursday 2to3', 'Prachiti P', 'DBMS'),
('Thursday 3to4', 'Bidisha R', 'AOA'),
('Thursday 9to10', 'Priya K', 'AOA P'),
('Tuesday 10to11', 'Kavita S', 'DBMS P'),
('Tuesday 11_15to12_15', 'Prachiti P', 'DBMS'),
('Tuesday 12_15to1_15', 'Dakshata P', 'MP'),
('Tuesday 2to3', 'Nidhi G', 'OS'),
('Tuesday 3to4', 'Sanjeev M', 'Maths T'),
('Tuesday 9to10', 'Kavita S', 'DBMS P'),
('Wednesday 10to11', 'Dakshata P', 'MP'),
('Wednesday 11_15to12_15', 'Nidhi G', 'OS P'),
('Wednesday 12_15to1_15', 'Nidhi G', 'OS P'),
('Wednesday 2to3', 'Sanjeev M', 'Maths'),
('Wednesday 3to4', 'Priya K', 'Mini Project'),
('Wednesday 4to5', 'Priya K', 'Mini Project'),
('Wednesday 9to10', 'Bidisha R', 'AOA');

-- --------------------------------------------------------

--
-- Table structure for table `shamsuddin k`
--

CREATE TABLE `shamsuddin k` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shamsuddin k`
--

INSERT INTO `shamsuddin k` (`tt`, `class`, `subject`) VALUES
('Monday 2to3', 'TEA', 'AI'),
('Thursday 12_15to1_15', 'TEA', 'AI'),
('Tuesday 10to11', 'TEA', 'AI'),
('Tuesday 11_15to12_15', 'TEA', 'AI P'),
('Tuesday 12_15to1_15', 'TEA', 'AI P'),
('Tuesday 3to4', 'TEB', 'Honors'),
('Tuesday 4to5', 'TEB', 'Honors'),
('Wednesday 3to4', 'TEB', 'Honors'),
('Wednesday 4to5', 'TEB', 'Honors');

-- --------------------------------------------------------

--
-- Table structure for table `snehal k`
--

CREATE TABLE `snehal k` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snehal k`
--

INSERT INTO `snehal k` (`tt`, `class`, `subject`) VALUES
('Friday 10to11', 'TEB', 'QA'),
('Monday 3to4', 'TEB', 'Mini Project'),
('Monday 4to5', 'TEB', 'Mini Project'),
('Thursday 10to11', 'TEB', 'Mini Project'),
('Thursday 11_15to12_15', 'TEA', 'QA'),
('Thursday 2to3', 'TEB', 'QA'),
('Thursday 9to10', 'TEB', 'Mini Project'),
('Tuesday 12_15to1_15', 'TEB', 'QA'),
('Tuesday 9to10', 'TEA', 'QA'),
('Wednesday 2to3', 'TEA', 'QA');

-- --------------------------------------------------------

--
-- Table structure for table `sonal`
--

CREATE TABLE `sonal` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `class` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`name`, `email`, `class`) VALUES
('ABC', '192186sonal@gmail.com', 'SEB'),
('LR', 'lillianrodrigues448@gmail.com', 'TEA'),
('Lillian', 'lillianrodrigues517@gmail.com', 'SEA'),
('LR', 'lillianrodrigues63@gmail.com', 'TEB'),
('YB', 'oggggy0505@gmail.com', 'SEA');

-- --------------------------------------------------------

--
-- Table structure for table `tea`
--

CREATE TABLE `tea` (
  `tt` varchar(30) NOT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tea`
--

INSERT INTO `tea` (`tt`, `teacher`, `subject`) VALUES
('Friday 10to11', 'Aditi M', 'CC T'),
('Friday 11_15to12_15', 'Varsha S', 'SPCC'),
('Friday 12_15to1_15', 'Rajkumar S', 'MC'),
('Friday 2to3', 'Ankita K', 'CSS'),
('Friday 3to4', 'Annies M', 'Mini Project'),
('Friday 4to5', 'Annies M', 'Mini Project'),
('Friday 9to10', 'Aditi M', 'CC T'),
('Monday 10to11', 'Rajkumar S', 'MC'),
('Monday 11_15to12_15', 'Ankita K', 'CSS P'),
('Monday 12_15to1_15', 'Ankita K', 'CSS P'),
('Monday 2to3', 'Shamsuddin K', 'AI'),
('Monday 3to4', 'Varsha S', 'SPCC P'),
('Monday 4to5', 'Varsha S', 'SPCC P'),
('Monday 9to10', 'Ankita K', 'CSS'),
('Thursday 10to11', 'Aditi M', 'CC P'),
('Thursday 11_15to12_15', 'Snehal K', 'QA'),
('Thursday 12_15to1_15', 'Shamsuddin K', 'AI'),
('Thursday 2to3', 'Rajkumar S', 'MC'),
('Thursday 3to4', 'Annies M', 'Mini Project'),
('Thursday 4to5', 'Annies M', 'Mini Project'),
('Thursday 9to10', 'Aditi M', 'CC P'),
('Tuesday 10to11', 'Shamsuddin K', 'AI'),
('Tuesday 11_15to12_15', 'Shamsuddin K', 'AI P'),
('Tuesday 12_15to1_15', 'Shamsuddin K', 'AI P'),
('Tuesday 2to3', 'Varsha S', 'SPCC'),
('Tuesday 3to4', 'Ankita K', 'Honors'),
('Tuesday 4to5', 'Ankita K', 'Honors'),
('Tuesday 9to10', 'Snehal K', 'QA'),
('Wednesday 10to11', 'Annies M', 'MC P'),
('Wednesday 11_15to12_15', 'Varsha S', 'SPCC'),
('Wednesday 12_15to1_15', 'Ankita K', 'CSS'),
('Wednesday 2to3', 'Snehal K', 'QA'),
('Wednesday 3to4', 'Ankita K', 'Honors'),
('Wednesday 4to5', 'Ankita K', 'Honors'),
('Wednesday 9to10', 'Annies M', 'MC P');

-- --------------------------------------------------------

--
-- Table structure for table `teb`
--

CREATE TABLE `teb` (
  `tt` varchar(30) NOT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teb`
--

INSERT INTO `teb` (`tt`, `teacher`, `subject`) VALUES
('Friday 10to11', 'Snehal K', 'QA'),
('Friday 11_15to12_15', 'Annies M', 'MC P'),
('Friday 12_15to1_15', 'Annies M', 'MC P'),
('Friday 2to3', 'Priya K', 'AI'),
('Friday 3to4', 'Aditi M', 'CC P'),
('Friday 4to5', 'Aditi M', 'CC P'),
('Friday 9to10', 'Annies M', 'MC'),
('Monday 10to11', 'Aditi M', 'CC T'),
('Monday 11_15to12_15', 'Annies M', 'MC'),
('Monday 12_15to1_15', 'Priya K', 'AI'),
('Monday 2to3', 'Varsha S', 'SPCC'),
('Monday 3to4', 'Snehal K', 'Mini Project'),
('Monday 4to5', 'Snehal K', 'Mini Project'),
('Monday 9to10', 'Aditi M', 'CC T'),
('Thursday 10to11', 'Snehal K', 'Mini Project'),
('Thursday 11_15to12_15', 'Annies M', 'MC'),
('Thursday 12_15to1_15', 'Varsha N', 'CSS'),
('Thursday 2to3', 'Snehal K', 'QA'),
('Thursday 3to4', 'Varsha N', 'CSS P'),
('Thursday 4to5', 'Varsha N', 'CSS P'),
('Thursday 9to10', 'Snehal K', 'Mini Project'),
('Tuesday 10to11', 'Priya K', 'AI P'),
('Tuesday 11_15to12_15', 'Varsha S', 'SPCC'),
('Tuesday 12_15to1_15', 'Snehal K', 'QA'),
('Tuesday 2to3', 'Varsha N', 'CSS'),
('Tuesday 3to4', 'Shamsuddin K', 'Honors'),
('Tuesday 4to5', 'Shamsuddin K', 'Honors'),
('Tuesday 9to10', 'Priya K', 'AI P'),
('Wednesday 10to11', 'Varsha S', 'SPCC P'),
('Wednesday 11_15to12_15', 'Priya K', 'AI'),
('Wednesday 12_15to1_15', 'Varsha N', 'CSS'),
('Wednesday 2to3', 'Varsha S', 'SPCC'),
('Wednesday 3to4', 'Shamsuddin K', 'Honors'),
('Wednesday 4to5', 'Shamsuddin K', 'Honors'),
('Wednesday 9to10', 'Varsha S', 'SPCC P');

-- --------------------------------------------------------

--
-- Table structure for table `varsha n`
--

CREATE TABLE `varsha n` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `varsha n`
--

INSERT INTO `varsha n` (`tt`, `class`, `subject`) VALUES
('Thursday 12_15to1_15', 'TEB', 'CSS'),
('Thursday 3to4', 'TEB', 'CSS P'),
('Thursday 4to5', 'TEB', 'CSS P'),
('Tuesday 2to3', 'TEB', 'CSS'),
('Wednesday 12_15to1_15', 'TEB', 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `varsha s`
--

CREATE TABLE `varsha s` (
  `tt` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `varsha s`
--

INSERT INTO `varsha s` (`tt`, `class`, `subject`) VALUES
('Friday 11_15to12_15', 'TEA', 'SPCC'),
('Monday 2to3', 'TEB', 'SPCC'),
('Monday 3to4', 'TEA', 'SPCC P'),
('Monday 4to5', 'TEA', 'SPCC P'),
('Tuesday 11_15to12_15', 'TEB', 'SPCC'),
('Tuesday 2to3', 'TEA', 'SPCC'),
('Wednesday 10to11', 'TEB', 'SPCC P'),
('Wednesday 11_15to12_15', 'TEA', 'SPCC'),
('Wednesday 2to3', 'TEB', 'SPCC'),
('Wednesday 9to10', 'TEB', 'SPCC P');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aditi m`
--
ALTER TABLE `aditi m`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `ankita k`
--
ALTER TABLE `ankita k`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `annies m`
--
ALTER TABLE `annies m`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `bea`
--
ALTER TABLE `bea`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `beb`
--
ALTER TABLE `beb`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `bidisha r`
--
ALTER TABLE `bidisha r`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `dakshata p`
--
ALTER TABLE `dakshata p`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `kavita s`
--
ALTER TABLE `kavita s`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `loginsignup`
--
ALTER TABLE `loginsignup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monali k`
--
ALTER TABLE `monali k`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `monalisa l`
--
ALTER TABLE `monalisa l`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `nidhi g`
--
ALTER TABLE `nidhi g`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `prachiti p`
--
ALTER TABLE `prachiti p`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `priya k`
--
ALTER TABLE `priya k`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `rajkumar s`
--
ALTER TABLE `rajkumar s`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `sachin m`
--
ALTER TABLE `sachin m`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `sanjeev m`
--
ALTER TABLE `sanjeev m`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `sea`
--
ALTER TABLE `sea`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `seb`
--
ALTER TABLE `seb`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `shamsuddin k`
--
ALTER TABLE `shamsuddin k`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `snehal k`
--
ALTER TABLE `snehal k`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `sonal`
--
ALTER TABLE `sonal`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tea`
--
ALTER TABLE `tea`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `teb`
--
ALTER TABLE `teb`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `varsha n`
--
ALTER TABLE `varsha n`
  ADD PRIMARY KEY (`tt`);

--
-- Indexes for table `varsha s`
--
ALTER TABLE `varsha s`
  ADD PRIMARY KEY (`tt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
