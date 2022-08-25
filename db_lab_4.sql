-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: June 8, 2021 at 09:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lab_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(50) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `course_description` text NOT NULL,
  `prof_id` int(50) NOT NULL,
  `dep_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `prof_id`, `dep_id`) VALUES
('CAE302', 'construction management', 'description of construction management', 4, 4),
('CAE411A', 'dynamics of structures', 'description of dymnamics of structures', 5, 3),
('CC312', 'signals and systems', 'description of signals and systems', 9, 2),
('CC322', 'computer Architecture', 'description of computer Architecture', 12, 1),
('CC371', 'algorithms', 'description of algorithms', 1, 1),
('CC373', 'operating Systems', 'description of operating Systems', 3, 1),
('CC421', 'Microprocessors Systems', 'description of Microprocessors Systems', 13, 1),
('CC441', 'Analog Communication', 'description of Analog Communication', 7, 2),
('CC471', 'Database Systems', 'description of database systems', 2, 1),
('EME301', 'Fluid Mechanics', 'description of Fluid Mechanics', 4, 5),
('EME403', 'Fluid Machinery', 'description of Fluid Machinery ', 4, 5),
('GPE401', 'Natural Gas Engineering', 'description of Natural Gas Engineering', 11, 8),
('HS201', 'Technical Writing', 'description of Technical Writing', 9, 7),
('HS302D', 'Accounting', 'description of Accounting', 6, 7),
('OCE301', 'marine foundations', 'description of marine foundations', 11, 9);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` int(50) NOT NULL,
  `dep_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `dep_name`) VALUES
(1, 'computer and systems'),
(2, 'communications'),
(3, 'Architecture'),
(4, 'construction'),
(5, 'electromechanics'),
(6, 'biomedical'),
(7, 'humanity'),
(8, 'Gas and petrochemicals Engineering'),
(9, 'offshore and coastal Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `prof_id` int(50) NOT NULL,
  `prof_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`prof_id`, `prof_name`) VALUES
(1, 'dr.Amr Elmasry'),
(2, 'Dr Hesham el mongui'),
(3, 'dr layla abo hadid'),
(4, 'dr saeed shalaby'),
(5, 'dr ahmed salama'),
(6, 'dr mohamed ghanem'),
(7, 'dr Noha el korashy'),
(8, 'dr mohamed ghanem'),
(9, 'dr ahmed el tarras'),
(10, 'dr amr abdelrazik'),
(11, 'dr bassant youssef'),
(12, 'dr hossam abdelrazik'),
(13, 'dr Hania');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`prof_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dep_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `prof_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `dep_id` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prof_id` FOREIGN KEY (`prof_id`) REFERENCES `professor` (`prof_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
