-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quizwebtech
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answers` (
  `answers_id` int(1) NOT NULL AUTO_INCREMENT,
  `answers` varchar(10) NOT NULL,
  `questions` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`answers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'True','Is the following declaration correct? &ltDOCTYPE! html&gt'),(2,'False','An html file cannot be accessed/open without an internet.'),(3,'False','XHTML and HTML are the same thing.'),(4,'False','HTML is case sensitive.'),(5,'True','The &ltul&gt tag is called an unordered list.'),(6,'True','Tim Berners-Lee invented the www (World Wide Web).'),(7,'True','The &ltol&gt tag is called an ordered list.'),(8,'False','The tag &lth6&gt is the largest heading.'),(9,'False','XML and XHTML are the same.'),(10,'False','The tag &ltbr&gt creates a line.'),(11,'False','The tag &lthr&gt performs a line break.'),(12,'False','HTML means Hyper Text Makeup Language.'),(13,'True','The &lthtml&gt tag tells the computer that the document is going to be an html document.'),(14,'True','A head section is visible to a user viewing the web page.'),(15,'False','There are five methods for CSS to be used in html.'),(16,'True','XML stands for Extensible Markup Language.'),(17,'False','The &ltb&gt tag creates a new line in a paragraph.'),(18,'False','Anything outside the html tag will not be displayed in a browser.'),(19,'False','The &ltp&gt tag is called paste. '),(20,'False','Microsoft creates web standards.'),(21,'False','Web Standards are a list of html attributes.'),(22,'True','To emphasize an html element use the &ltem&gt tag.'),(23,'True','The tag &lta&gt is a hyperlink.'),(24,'True','The character / is used to indicate an end tag.'),(25,'True','The tag used for a text area is &lttextarea&gt .'),(26,'True','The tag &ltiframe&gt dispalys a webpage within a webpage.'),(27,'True','HTML comments are done this way &lt!-- This is a comment --&gt.'),(28,'True','The &lttitle&gt tag defines the title of the document.'),(29,'True','The &ltfooter&gt tag defines a footer section in a html document.'),(30,'True','The correct element for playing video files is &ltvideo&gt.');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iden`
--

DROP TABLE IF EXISTS `iden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `iden` (
  `qst_id` int(20) NOT NULL AUTO_INCREMENT,
  `qsts` varchar(200) NOT NULL,
  `ans` varchar(200) NOT NULL,
  PRIMARY KEY (`qst_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iden`
--

LOCK TABLES `iden` WRITE;
/*!40000 ALTER TABLE `iden` DISABLE KEYS */;
INSERT INTO `iden` VALUES (1,'HTTP','HyperText Transfer Protocol'),(2,'MIME','Multipurpose Internet Mail Extensions'),(3,'HTTPS','HyperText Transfer Protocol Secure'),(4,'URI','Uniform Resource Identifier'),(5,'HTML','HyperText Markup Language'),(6,'CSS','Cascading Style Sheet'),(7,'W3C','World Wide Web consortium'),(8,'IETF','Internet Engineering Task Force'),(9,'XHTML','EXtensible HyperText Markup Language'),(10,'XML','eXtensible Markup Language'),(11,'MathML','Mathematical Markup Language'),(12,'SVG','Scalable Vector Graphics'),(13,'ECMAScript','European Computer Manufacturers Association Script'),(14,'BOM','Browser Object Model'),(15,'DOM','Document Object Model'),(16,'SQL','Structured Query Language'),(17,'NPM','Node Package Manager');
/*!40000 ALTER TABLE `iden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquestion`
--

DROP TABLE IF EXISTS `tblquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblquestion` (
  `ID` int(2) NOT NULL,
  `question` text NOT NULL,
  `ansA` varchar(30) NOT NULL,
  `ansB` varchar(30) NOT NULL,
  `ansC` varchar(30) NOT NULL,
  `ansD` varchar(30) NOT NULL,
  `correctAns` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquestion`
--

LOCK TABLES `tblquestion` WRITE;
/*!40000 ALTER TABLE `tblquestion` DISABLE KEYS */;
INSERT INTO `tblquestion` VALUES (1,'Inside which HTML element is Javascript content enclosed in?','<script>','<js>','<javascript>','<scripting>','<script>'),(2,'Which of the following function of Array object returns true if every element in this array satisfies the provided testing function?','concat()','every()','push()','some()','every()'),(3,'Which of the following function of String object extracts a section of a string and returns a new string?','slice()','split()','replace()','search()','slice()'),(4,'Which one is not a merit of using JavaScript?','Less server interaction','Decreased interactivity','Richer interfaes','Immediate feedback to visitors','Decreased interactivity'),(5,'What was JavaScript first known as?','EcmaScript','DOMScript','JScript','LiveScript','LiveScript'),(6,'The JavaScript tag takes two important attributes. One is type. What is the other attribute?','Value','Attribute','Language','Comment','Language'),(7,'JavaScript allows you to work with three primitive data types. Which is the odd one out?','Floating Values','Numbers','Strings','Booleans','Floating Values'),(8,'Semicolons are _________ in JavaScript.','Not used','Required','Unnecessary','Optional','Optional'),(9,'JavaScript is a _________ language.','Case-sensitive','Pre-processed','Markup','HTML','Case-sensitive'),(10,'JavaScript supports type of operators. Which one of these is not an operator that JavaScript supports?','Arithmetic Operators','Comparison Operators','Conditional Operators','Abstract Operators','Abstract Operators'),(11,'What is meant by the keyword \"this\" in JavaScript?','Current Object','Previous Object','Variable','None of the above','Current Object'),(12,'Which is not a reserved word?','Interface','Short','Program','Throws','Program'),(13,'What property should be used to redirect a visitor to another page?','document.URL','window.location.href','document.location.href','link.href','window.location.href'),(14,'Which of these is the server-side JavaScript object?','FileUpLoad','Function','File','Date','File'),(15,'The ________ is used to declare keywords in JavaScript.','Var','Dim','String','Boolean','Var'),(16,'JavaScript is a _______ typed language.','Tightly','Roughly','Loosely','Strictly','Loosely'),(17,'The _______ method is used to remove focus from the specified object.','blur()','focus()','divert()','dom()','blur()'),(18,'Who invented the JavaScript programming language?','Tennis Ritchie','James Gosling','Brendan Eich','Marivic Danes','Brendan Eich'),(19,'Which is not an attribute of the cookie property?','path','host','secure','domain','host'),(20,'How do you delete an element from an options array?','Set it to false.','Set it to null.','Set it to undefined.','Set it to -1.','Set it to null.'),(21,'How do you create a new object in JavaScript?','var obj = {};','var obj = Object();','var obj=new {};','None of the above','var obj = {};'),(22,'Which of the following converts a string to floating point numbers?','eval','ParseInt','ParseFloat','None of the above','ParseFloat'),(23,'Which best describes void?','method','function','statement','operator','operator'),(24,'Which method returns the number of milliseconds in a date string?','setHours()','setMinutes()','parse()','setSeconds()','parse()'),(25,'Which is the client-side JavaScript object?','Database','Cursor','Client','FileUpLoad','FileUpLoad');
/*!40000 ALTER TABLE `tblquestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 10:23:26
