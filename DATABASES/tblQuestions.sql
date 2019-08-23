-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2019 at 06:12 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `js_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblQuestion`
--

CREATE TABLE `tblQuestion` (
  `ID` int(2) NOT NULL,
  `question` text NOT NULL,
  `ansA` varchar(30) NOT NULL,
  `ansB` varchar(30) NOT NULL,
  `ansC` varchar(30) NOT NULL,
  `ansD` varchar(30) NOT NULL,
  `correctAns` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblQuestion`
--

INSERT INTO `tblQuestion` (`ID`, `question`, `ansA`, `ansB`, `ansC`, `ansD`, `correctAns`) VALUES
(1, 'Inside which HTML element is Javascript content enclosed in?', '<script>', '<js>', '<javascript>', '<scripting>', '<script>'),
(2, 'Which of the following function of Array object returns true if every element in this array satisfies the provided testing function?', 'concat()', 'every()', 'push()', 'some()', 'every()'),
(3, 'Which of the following function of String object extracts a section of a string and returns a new string?', 'slice()', 'split()', 'replace()', 'search()', 'slice()'),
(4, 'Which one is not a merit of using JavaScript?', 'Less server interaction', 'Decreased interactivity', 'Richer interfaes', 'Immediate feedback to visitors', 'Decreased interactivity'),
(5, 'What was JavaScript first known as?', 'EcmaScript', 'DOMScript', 'JScript', 'LiveScript', 'LiveScript'),
(6, 'The JavaScript tag takes two important attributes. One is type. What is the other attribute?', 'Value', 'Attribute', 'Language', 'Comment', 'Language'),
(7, 'JavaScript allows you to work with three primitive data types. Which is the odd one out?', 'Floating Values', 'Numbers', 'Strings', 'Booleans', 'Floating Values'),
(8, 'Semicolons are _________ in JavaScript.', 'Not used', 'Required', 'Unnecessary', 'Optional', 'Optional'),
(9, 'JavaScript is a _________ language.', 'Case-sensitive', 'Pre-processed', 'Markup', 'HTML', 'Case-sensitive'),
(10, 'JavaScript supports type of operators. Which one of these is not an operator that JavaScript supports?', 'Arithmetic Operators', 'Comparison Operators', 'Conditional Operators', 'Abstract Operators', 'Abstract Operators'),
(11, 'What is meant by the keyword \"this\" in JavaScript?', 'Current Object', 'Previous Object', 'Variable', 'None of the above', 'Current Object'),
(12, 'Which is not a reserved word?', 'Interface', 'Short', 'Program', 'Throws', 'Program'),
(13, 'What property should be used to redirect a visitor to another page?', 'document.URL', 'window.location.href', 'document.location.href', 'link.href', 'window.location.href'),
(14, 'Which of these is the server-side JavaScript object?', 'FileUpLoad', 'Function', 'File', 'Date', 'File'),
(15, 'The ________ is used to declare keywords in JavaScript.', 'Var', 'Dim', 'String', 'Boolean', 'Var'),
(16, 'JavaScript is a _______ typed language.', 'Tightly', 'Roughly', 'Loosely', 'Strictly', 'Loosely'),
(17, 'The _______ method is used to remove focus from the specified object.', 'blur()', 'focus()', 'divert()', 'dom()', 'blur()'),
(18, 'Who invented the JavaScript programming language?', 'Tennis Ritchie', 'James Gosling', 'Brendan Eich', 'Marivic Danes', 'Brendan Eich'),
(19, 'Which is not an attribute of the cookie property?', 'path', 'host', 'secure', 'domain', 'host'),
(20, 'How do you delete an element from an options array?', 'Set it to false.', 'Set it to null.', 'Set it to undefined.', 'Set it to -1.', 'Set it to null.'),
(21, 'How do you create a new object in JavaScript?', 'var obj = {};', 'var obj = Object();', 'var obj=new {};', 'None of the above', 'var obj = {};'),
(22, 'Which of the following converts a string to floating point numbers?', 'eval', 'ParseInt', 'ParseFloat', 'None of the above', 'ParseFloat'),
(23, 'Which best describes void?', 'method', 'function', 'statement', 'operator', 'operator'),
(24, 'Which method returns the number of milliseconds in a date string?', 'setHours()', 'setMinutes()', 'parse()', 'setSeconds()', 'parse()'),
(25, 'Which is the client-side JavaScript object?', 'Database', 'Cursor', 'Client', 'FileUpLoad', 'FileUpLoad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblQuestion`
--
ALTER TABLE `tblQuestion`
  ADD PRIMARY KEY (`ID`);
