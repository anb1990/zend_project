-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2016 at 02:00 AM
-- Server version: 5.5.47
-- PHP Version: 5.4.45-3+deb.sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arabkoy`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `answer` text NOT NULL,
  `question` int(20) NOT NULL,
  `user` int(20) NOT NULL,
  `created` varchar(512) NOT NULL,
  `last_update` varchar(512) NOT NULL,
  `correct` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `question`, `user`, `created`, `last_update`, `correct`) VALUES
(1, 'a1', 1, 1, '53234243', '2342344', 0),
(2, 'a2', 1, 1, '234234', '6634324', 1),
(3, 'a3', 1, 2, '63424', '234234', 0),
(4, 'a4', 2, 3, '64535', 'tthtyh', 0),
(5, 'wefwef wefwef wefwhtrhtrh ewefwef wefwef wefwef wefwhtrhtrh ewefwef wefwef wefwef wefwhtrhtrh ewefwef wefwef wefwef wefwhtrhtrh ewefwef wefwef wefwef wefwhtrhtrh ewefwef&nbsp;', 2, 6, '1454189729', '1454189729', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `related_type` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user` int(20) NOT NULL,
  `created` int(11) NOT NULL,
  `last_update` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE IF NOT EXISTS `points` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `answer` int(20) NOT NULL,
  `user` int(20) NOT NULL,
  `date` varchar(512) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `question` text NOT NULL,
  `user` int(20) NOT NULL,
  `views` int(14) NOT NULL DEFAULT '0',
  `created` varchar(512) NOT NULL,
  `last_update` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `question`, `user`, `views`, `created`, `last_update`) VALUES
(1, 'q1 title', 'q1', 1, 5, '2', '2'),
(2, 'q2 title', 'q2', 1, 0, '123123', '123123'),
(3, 'wefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewf', 'wefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewfwefwefwefwefwef wefwefwef wewefwe wefwef wefwefwe wefwef wefwef wefwef wefwef wefwef wefwef fwefwefewf', 4, 0, '1453064737', ''),
(4, 'بصصل صثبصثب صثبصثب صبصثب', 'بصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثببصصل صثبصثب صثبصثب صبصثب', 4, 0, '1453066381', ''),
(5, 'rrrrrrrrrrrrrrrrrrrrr', 'frrrrr rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrfrrrrr rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrfrrrrr rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrfrrrrr rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrfrrrrr rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrfrrrrr rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrfrrrrr rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 6, 0, '1454190535', ''),
(6, 'ggbbbbbbbbbbbbggggggggggg', 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 6, 0, '1454190563', ''),
(7, 'rthtrhrtfffffffffffffffffffffffffffffff', 'rthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffffrthtrhrtfffffffffffffffffffffffffffffff', 6, 0, '1454191971', ''),
(8, 'drgggggggggggggggggggggggggggggggggggggggggg', 'drgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggdrgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggdrgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggdrgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggdrgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggdrgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggdrggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 6, 0, '1454192073', ''),
(9, 'gergreg egregreg ergergerg', 'gergreg egregreg ergergerggergreg egregreg ergergerggergreg egregreg ergergerggergreg egregreg ergergerggergreg egregreg ergergerg', 6, 0, '1454192219', ''),
(10, 'ewfwfwef wefwfwe ewfwfwef wefwfwe', 'ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;ewfwfwef wefwfwe&nbsp;', 6, 0, '1454195913', ''),
(11, 'fewfweffewfweffewfweffewfweffewfweffewfwef', 'wefweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfwef', 6, 0, '1454196052', ''),
(12, 'fewfweffewfweffewfweffewfweffewfweffewfwef', 'wefweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfwef', 6, 0, '1454196110', ''),
(13, 'fewfweffewfweffewfweffewfweffewfweffewfwef', 'wefweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfwef', 6, 0, '1454196113', ''),
(14, 'fewfweffewfweffewfweffewfweffewfweffewfwef', 'wefweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfwef', 6, 0, '1454196233', ''),
(15, 'fewfweffewfweffewfweffewfweffewfweffewfwef', 'wefweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfwef', 6, 0, '1454196236', ''),
(16, 'fewfweffewfweffewfweffewfweffewfweffewfwef', 'wefweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfwef', 6, 0, '1454196249', ''),
(17, 'fewfweffewfweffewfweffewfweffewfweffewfwef', 'wefweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfweffewfwef', 6, 0, '1454196309', ''),
(18, 'wefwef wefwefwef wefwefwefwef wefwefwef wefwef', 'wefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwef', 6, 0, '1454197286', ''),
(19, 'wefwef wefwefwef wefwefwefwef wefwefwef wefwef', 'wefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwefwefwef wefwefwef wefwef', 6, 0, '1454197326', ''),
(20, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197478', ''),
(21, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197731', ''),
(22, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197863', ''),
(23, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197895', ''),
(24, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197992', ''),
(25, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197993', ''),
(26, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197994', ''),
(27, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197994', ''),
(28, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197994', ''),
(29, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454197994', ''),
(30, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454198008', ''),
(31, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454198025', ''),
(32, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454198161', ''),
(33, 'ergegregergergerg ergergerg ergegreg', 'ergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegregergergerg ergergerg ergegreg', 6, 0, '1454198225', '');

-- --------------------------------------------------------

--
-- Table structure for table `question_tags`
--

CREATE TABLE IF NOT EXISTS `question_tags` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `question` int(20) NOT NULL,
  `tag` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `question_tags`
--

INSERT INTO `question_tags` (`id`, `question`, `tag`) VALUES
(1, 19, 0),
(2, 19, 0),
(3, 19, 0),
(4, 19, 0),
(5, 33, 1),
(6, 33, 2),
(7, 33, 148),
(8, 33, 149);

-- --------------------------------------------------------

--
-- Table structure for table `related_types`
--

CREATE TABLE IF NOT EXISTS `related_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `report_type` int(11) NOT NULL,
  `user` int(20) NOT NULL,
  `related_type` int(11) NOT NULL,
  `created` varchar(512) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_types`
--

CREATE TABLE IF NOT EXISTS `report_types` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stickynotes`
--

CREATE TABLE IF NOT EXISTS `stickynotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `stickynotes`
--

INSERT INTO `stickynotes` (`id`, `note`, `created`) VALUES
(1, 'This is a sticky note you can type and edit.', '0000-00-00 00:00:00'),
(2, 'This is another sticky note ', '2016-01-10 19:31:09'),
(3, 'asdasdadsdasd', '2016-01-10 19:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `tag` varchar(2048) NOT NULL,
  `user_created` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `user_created`) VALUES
(1, 'tag1', 1),
(2, 'tag2', 1),
(3, 'tag3', 1),
(4, 'oula', 1),
(5, 'm', 1),
(6, 'mm', 1),
(7, 'mmm', 1),
(8, 'mmmm', 1),
(9, 'mmmmm', 1),
(10, 'mmmmmm', 1),
(11, 'mmmmmmm', 1),
(12, 'mmmmmmmm', 1),
(13, 'mmmmmmmmm', 1),
(14, 'mmmmmmmmmm', 1),
(15, 'mmmmmmmmmmm', 1),
(16, 'mmmmmmmmmmmm', 1),
(17, 'mmmmmmmmmmmmm', 1),
(18, 'mmmmmmmmmmmmmm', 1),
(19, 'mmmmmmmmmmmmmmm', 1),
(20, 'mmmmmmmmmmmmmmmm', 1),
(21, 'mmmmmmmmmmmmmmmmm', 1),
(22, 'mmmmmmmmmmmmmmmmmm', 1),
(23, 'mmmmmmmmmmmmmmmmmmmmm', 1),
(24, 'mmmmmmmmmmmmmmmmmmmmmmmm', 1),
(25, 'mmmmmmmmmmmmmmmmmmmmmmmmmmm', 1),
(26, 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 1),
(27, 'aaaaaaaaaaaa', 1),
(28, 'aaaaaaaaaaaam', 1),
(29, 'aaaaaaaaaaaaaa', 1),
(30, 'aaaaaaaaaaaaaam', 1),
(31, 'aaaaaaaaaaaaaaaa', 1),
(32, 'aaaaaaaaaaaaaaaam', 1),
(33, 'aaaaaaaaaaaaaaaaaa', 1),
(34, 'aaaaaaaaaaaaaaaaaaaam', 1),
(35, 'aaaaaaaaaaaaaaaaaaaaaaaa', 1),
(36, 'aaaaaaaaaaaaaaaaaaaaaaaaaam', 1),
(37, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1),
(38, 'bbbbbbbbbbbb', 1),
(39, 'bbbbbbbbbbbbm', 1),
(40, 'bbbbbbbbbbbbbb', 1),
(41, 'bbbbbbbbbbbbbbm', 1),
(42, 'bbbbbbbbbbbbbbbb', 1),
(43, 'bbbbbbbbbbbbbbbbm', 1),
(44, 'bbbbbbbbbbbbbbbbbb', 1),
(45, 'bbbbbbbbbbbbbbbbbbbbm', 1),
(46, 'bbbbbbbbbbbbbbbbbbbbbbbb', 1),
(47, 'bbbbbbbbbbbbbbbbbbbbbbbbbbm', 1),
(48, 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 1),
(49, 'cccccccccccc', 1),
(50, 'ccccccccccccm', 1),
(51, 'cccccccccccccc', 1),
(52, 'ccccccccccccccm', 1),
(53, 'cccccccccccccccc', 1),
(54, 'ccccccccccccccccm', 1),
(55, 'cccccccccccccccccc', 1),
(56, 'ccccccccccccccccccccm', 1),
(57, 'cccccccccccccccccccccccc', 1),
(58, 'ccccccccccccccccccccccccccm', 1),
(59, 'ccccccccccccccccccccccccccccccb', 1),
(60, 'cccccccccccccccccccccccccccccccc', 1),
(61, 'ccccccccccccccccccccccccccccccccb', 1),
(62, 'cccccccccccccccccccccccccccccccccc', 1),
(63, 'ccccccccccccccccccccccccccccccccccb', 1),
(64, 'cccccccccccccccccccccccccccccccccccc', 1),
(65, 'ccccccccccccccccccccccccccccccccccccb', 1),
(66, 'cccccccccccccccccccccccccccccccccccccc', 1),
(67, 'ccccccccccccccccccccccccccccccccccccccb', 1),
(68, 'cccccccccccccccccccccccccccccccccccccccc', 1),
(69, 'ccccccccccccccccccccccccccccccccccccccccb', 1),
(70, 'cccccccccccccccccccccccccccccccccccccccccccc', 1),
(71, 'ccccccccccccccccccccccccccccccccccccccccccccb', 1),
(72, 'cccccccccccccccccccccccccccccccccccccccccccccc', 1),
(73, 'ccccccccccccccccccccccccccccccccccccccccccccccb', 1),
(74, 'cccccccccccccccccccccccccccccccccccccccccccccccc', 1),
(75, 'cccccccccccccccccccccccccccccccccccccccccccccccccccc', 1),
(76, 'ccccccccccccccccccccccccccccccccccccccccccccccccccccb', 1),
(77, 'cccccccccccccccccccccccccccccccccccccccccccccccccccccccc', 1),
(78, 'cccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', 1),
(79, 'ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccb', 1),
(80, 'ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccb', 1),
(81, 'dddddddddddd', 1),
(82, 'ddddddddddddm', 1),
(83, 'dddddddddddddd', 1),
(84, 'ddddddddddddddm', 1),
(85, 'dddddddddddddddd', 1),
(86, 'ddddddddddddddddm', 1),
(87, 'dddddddddddddddddd', 1),
(88, 'ddddddddddddddddddddm', 1),
(89, 'dddddddddddddddddddddddd', 1),
(90, 'ddddddddddddddddddddddddddm', 1),
(91, 'ddddddddddddddddddddddddddddddb', 1),
(92, 'dddddddddddddddddddddddddddddddd', 1),
(93, 'ddddddddddddddddddddddddddddddddb', 1),
(94, 'dddddddddddddddddddddddddddddddddd', 1),
(95, 'ddddddddddddddddddddddddddddddddddb', 1),
(96, 'dddddddddddddddddddddddddddddddddddd', 1),
(97, 'ddddddddddddddddddddddddddddddddddddb', 1),
(98, 'dddddddddddddddddddddddddddddddddddddd', 1),
(99, 'ddddddddddddddddddddddddddddddddddddddb', 1),
(100, 'dddddddddddddddddddddddddddddddddddddddd', 1),
(101, 'ddddddddddddddddddddddddddddddddddddddddb', 1),
(102, 'dddddddddddddddddddddddddddddddddddddddddddd', 1),
(103, 'ddddddddddddddddddddddddddddddddddddddddddddb', 1),
(104, 'dddddddddddddddddddddddddddddddddddddddddddddd', 1),
(105, 'ddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(106, 'dddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(107, 'dddddddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(108, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(109, 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(110, 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(111, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(112, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(113, 'dddddddddddd', 1),
(114, 'ddddddddddddm', 1),
(115, 'dddddddddddddd', 1),
(116, 'ddddddddddddddm', 1),
(117, 'dddddddddddddddd', 1),
(118, 'ddddddddddddddddm', 1),
(119, 'dddddddddddddddddd', 1),
(120, 'ddddddddddddddddddddm', 1),
(121, 'dddddddddddddddddddddddd', 1),
(122, 'ddddddddddddddddddddddddddm', 1),
(123, 'ddddddddddddddddddddddddddddddb', 1),
(124, 'dddddddddddddddddddddddddddddddd', 1),
(125, 'ddddddddddddddddddddddddddddddddb', 1),
(126, 'dddddddddddddddddddddddddddddddddd', 1),
(127, 'ddddddddddddddddddddddddddddddddddb', 1),
(128, 'dddddddddddddddddddddddddddddddddddd', 1),
(129, 'ddddddddddddddddddddddddddddddddddddb', 1),
(130, 'dddddddddddddddddddddddddddddddddddddd', 1),
(131, 'ddddddddddddddddddddddddddddddddddddddb', 1),
(132, 'dddddddddddddddddddddddddddddddddddddddd', 1),
(133, 'ddddddddddddddddddddddddddddddddddddddddb', 1),
(134, 'dddddddddddddddddddddddddddddddddddddddddddd', 1),
(135, 'ddddddddddddddddddddddddddddddddddddddddddddb', 1),
(136, 'dddddddddddddddddddddddddddddddddddddddddddddd', 1),
(137, 'ddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(138, 'dddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(139, 'dddddddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(140, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(141, 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(142, 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 1),
(143, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(144, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddb', 1),
(145, 'dasdasd', 6),
(146, 'gergerg', 6),
(147, 'rgrthrthrth', 6),
(148, 'gregerg', 6),
(149, 'ergergerg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `display_name`, `password`, `state`) VALUES
(1, 'name', 'anb@asd.com', NULL, '$2y$14$8LwlBMZwLmyMLTzHlDpx/u3FPGqQCXNo9xbE.wo8ytzJPFgYXBgO2', NULL),
(2, 'po', 'amer@a.com', NULL, '$2y$14$rjvOW1JjyeNmd5JiXyTdWe/Dl7y6c9v5IvDClKFQyO.STfq3GpqHC', NULL),
(3, 'mmmm', 'am@am.com', NULL, '$2y$14$LSJefm4gZ8D5YV7lNEG.lOtkXiwmLLhDs.QU5N.TGeQLMCXZ3MSnu', NULL),
(4, 'عامر', 'amm@am.com', NULL, '$2y$14$997HqfLtUfuNYBb52fDCe.T1nauaSF/6RI7a6h264p2A0EegL9VoW', NULL),
(5, NULL, 'ad@ad.com', NULL, '$2y$14$vDZxmJdyxgg.k0umsMNw0uTgoh5.2X.0Fs/38iOnbsjcuholABoEq', NULL),
(6, NULL, 'aad@ad.com', NULL, '$2y$14$gHqoZohru8w7E4sMLtxCAe3/L9W8f3pUywJE48UgfL52PTPlOcV0C', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
