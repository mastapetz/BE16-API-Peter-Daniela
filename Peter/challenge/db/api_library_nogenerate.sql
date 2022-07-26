-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 04:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `artist` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `publish_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `artist`, `title`, `genre`, `country`, `publish_date`) VALUES
(1, ' X-Japan ', ' Rose of Pain', ' J-Rock ', ' Japan ', ' 21-04-1989 '),
(2, ' Scooter  ', 'Jumping all over the World', ' Hardstyle/Jumpstyle ', ' Germany ', ' 30-11-2009 '),
(3, ' S3RL', ' Party with us ', ' Hardstyle ', ' Australia ', ' 07-01-2020 '),
(4, 'LamazeP', ' PoPiPo', 'Denpa', ' Japan ', ' 11-08-2008'),
(5, 'Deadmau5', 'Strobe', 'EDM', ' Canada ', ' 03.09.2009 '),
(6, 'Iron Maiden', ' The Number of the Beast ', ' Heavy Metal', ' England ', ' 22.03.1982 '),
(7, ' Tenacious D', ' Tribute ', ' Comedy Rock ', ' America ', ' 11.02.2002 '),
(8, 'Dire Straits', 'Sultans of Swing', ' Rock ', ' England ', ' 19-04-1978 '),
(9, 'Dire Straits', 'Brothers in Arms', 'Rock', ' England ', '13-04-1985'),
(10, 'Ween', 'Ocean Men', ' Rock ', ' America ', ' 24.06.1997 '),
(11, ' Blink-182', ' All the Small Things', ' Rock ', ' America ', '18-01-2000'),
(12, 'MUSE', ' Knights of Cydonia', 'Alternative Rock', ' England ', '27-11-2006'),
(13, 'Linkin Park', ' Somewhere I belong', ' Rock', ' America ', '17-03-2003'),
(14, ' Metallica', 'The Unforgiven', ' Metal ', ' America ', '28-10-1991'),
(15, 'Metallica', 'The Unforgiven 2', 'Metal', ' America ', '23-02-1998'),
(16, 'S3RL, Tamika', 'Predictable Rave Song', 'Happy Hardcore', 'England ', ' 01-10-2020'),
(17, 'Pendulum', 'Propane Nightmares', 'Drum and Base', ' Australia ', '12-04-2008'),
(18, 'David Bowie', 'Absolute Beginners', 'Pop, Pop-Rock', ' England ', '03-03-1986'),
(19, 'BT', 'Love Divine', 'Trance', ' America ', '26-09-2014'),
(20, 'Paul Van Dyke', 'For an Angel', 'Trance', ' Germany ', ' 05-12-1994');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
