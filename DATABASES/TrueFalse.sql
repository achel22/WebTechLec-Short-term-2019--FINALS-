

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TrueFalse`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `answers_id` int(1) NOT NULL AUTO_INCREMENT,
  `answers` varchar(10) NOT NULL,
  `questions` varchar(10),
  PRIMARY KEY (`answers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answers`, `questions`) VALUES
('True', 'Is the following declaration correct? < DOCTYPE! html > '),
('False', 'An html file cannot be accessed/open without an internet'),
('False', 'xhtml and html are the same thing. '),
('False', 'html is case sensitive. '),
('True', 'The < ul > tag is called an unordered list. '),
('True', 'Tim Berners-Lee invented the www (World Wide Web). '),
('True', 'The < ol > tag is called an ordered list. '),
('False', 'The tag < h6 > is the largest heading. '),
('False', 'xml and xhtml are the same. '),
('False', 'The tag < br > creates a line. '),
('False', 'The tag < hr > performs a line break. '),
('False', 'HTML means Hyper Text Makeup Language. '),
('True', 'The < html > tag tells the computer that the document is going to be an html document. '),
('True', 'A head section is visible to a user viewing the web page. '),
('False', 'There are five methods for CSS to be used in html. '),
('True', 'xml stands for Extensible Markup Language. '),
('False', 'The < b > tag creates a new line in a paragraph. '),
('False', 'Anything outside the html tag will not be displayed in a browser. '),
('False', 'The < p > tag is called paste. '),
('False', 'Microsoft creates web standards. '),
('False', 'Web Standards are a list of html attributes. '),
('True', 'To emphasize an html element use the < em > tag. '),
('True', 'The tag < a > is a hyperlink. '),
('True', 'The character / is used to indicate an end tag. '),
('True', 'The tag used for a text area is < textarea > . '),
('True', 'The tag < iframe > dispalys a webpage within a webpage. '),
('True', 'html comments are done this way <!-- This is a comment -->. '),
('True', 'The < title > tag defines the title of the document. '),
('True', 'The < footer > tag defines a footer section in a html document. '),
('True', 'The correct element for playing video files is < video >. ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
