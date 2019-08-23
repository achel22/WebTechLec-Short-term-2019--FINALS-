-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 17, 2019 at 03:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `iden`
--

DROP TABLE IF EXISTS `iden`;
CREATE TABLE IF NOT EXISTS `iden` (
  `qst_id` int(20) NOT NULL AUTO_INCREMENT,
  `qsts` varchar(200) NOT NULL,
  `ans` varchar(200) NOT NULL,
  PRIMARY KEY (`qst_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iden`
--

INSERT INTO `iden` (`qst_id`, `qsts`, `ans`) VALUES
(1, 'HTTP', 'HyperText Transfer Protocol'),
(2, 'MIME', 'Multipurpose Internet Mail Extensions'),
(3, 'HTTPS', 'HyperText Transfer Protocol Secure'),
(4, 'URI', 'Uniform Resource Identifier'),
(5, 'HTML', 'HyperText Markup Language'),
(6, 'CSS', 'Cascading Style Sheet'),
(7, 'W3C', 'World Wide Web consortium'),
(8, 'IETF', 'Internet Engineering Task Force'),
(9, 'XHTML', 'EXtensible HyperText Markup Language'),
(10, 'XML', 'eXtensible Markup Language'),
(11, 'MathML', 'Mathematical Markup Language'),
(12, 'SVG', 'Scalable Vector Graphics'),
(13, 'ECMAScript', 'European Computer Manufacturers Association Script'),
(14, 'BOM', 'Browser Object Model'),
(15, 'DOM', 'Document Object Model'),
(16, 'SQL', 'Structured Query Language'),
(17, 'NPM', 'Node Package Manager');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
