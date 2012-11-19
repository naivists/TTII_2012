-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2012 at 04:21 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fuel_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_latvian_ci NOT NULL,
  `event_id` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `title`, `event_id`) VALUES
(1, 'Talking about the festival', 1),
(2, 'Everything else', 1),
(3, 'Waiting for THE moment', 2),
(4, 'Drinking', 2),
(7, 'Svecings pie Daugavas', 11),
(8, 'First exercise', 19),
(9, 'Second exercise', 19);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso_code`, `created_at`, `updated_at`) VALUES
(1, 'Latvija', 'LV', 1352194280, 1352194280),
(6, 'Lithuania', 'LT', 1352635572, 1352635572),
(5, 'Estonia', 'EE', 1352635559, 1352635559);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_latvian_ci NOT NULL,
  `description` text COLLATE utf8_latvian_ci NOT NULL,
  `location_id` int(4) DEFAULT NULL,
  `start` datetime NOT NULL COMMENT 'The start date/time of the event',
  `poster` varchar(255) COLLATE utf8_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `location_id`, `start`, `poster`) VALUES
(1, 'Festival organizers'' meeting', '', 1, '2012-11-28 10:30:00', NULL),
(2, 'New Year celebration', '', 2, '2012-12-31 21:00:00', NULL),
(9, 'Time for bed', '', 2, '2012-11-11 23:07:14', NULL),
(10, 'Lecture', 'Yet another lecture', 2, '2012-11-11 18:45:27', NULL),
(11, 'Lāčplēša diena', '<b>adfsdf sdfs dfsd</b>', 2, '2013-11-11 21:00:00', NULL),
(12, 'Ziemassvētki', 'Tusiņš mājās', 1, '2012-12-24 19:00:00', NULL),
(19, 'Second test, web technologies II', 'Very very serious test.', 1, '2012-12-11 10:30:00', 'KD1_uzdevumi.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_latvian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `title`) VALUES
(1, 'Riga'),
(2, 'Valmiera'),
(3, 'Valka');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `type` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `migration` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`type`, `name`, `migration`) VALUES
('app', 'default', '002_create_countries');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(4) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) COLLATE utf8_latvian_ci NOT NULL,
  `user_password` varchar(40) COLLATE utf8_latvian_ci NOT NULL,
  `user_role` varchar(40) COLLATE utf8_latvian_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci AUTO_INCREMENT=1 ;
