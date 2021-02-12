-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 12, 2021 at 12:01 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-ecrivain`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(51, 'Denver le dernier dinosaure !', '<p>\"Denver, le dernier dinosaure\", co-production franco-am&eacute;ricaine diffus&eacute;e &agrave; partir de 1989 sur FR3, voyait des adolescents de Los Angles - Wally, J&eacute;r&eacute;my, Charlie et Mario - d&eacute;couvrir sur un terrain vague un &eacute;norme oeuf bleu contenant cette esp&egrave;ce disparue, qui devait son nom &agrave; une affiche publicitaire vantant les stations de ski du Colorado vue par la bande d\'ados. Denver, tr&egrave;s vite &agrave; l\'aise dans son nouvel environnement, &eacute;tait passionn&eacute; par la guitare et le skateboard, tout en ayant la possibilit&eacute; de voyager dans le temps pour revenir &agrave; la pr&eacute;histoire gr&acirc;ce &agrave; un morceau de sa coquille. L\'intrigue comptait &eacute;galement un \"m&eacute;chant\", Morton Fizzback et ses c&eacute;l&egrave;bres lunettes de soleil, bien d&eacute;cid&eacute; &agrave; faire main basse sur l\'animal.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"inread1\" data-google-query-id=\"CM-Yyaz93u4CFUxs0wodHwsA9Q\">&nbsp;</div>', 'FdenverR.jpg', '2021-02-09 11:21:11'),
(52, 'Bioman ', '<p>Tout le monde connait Bioman&nbsp;</p>', 'FbiomanN.jpg', '2021-02-09 11:24:36'),
(54, 'Les années 70 80', '<p>Si toi aussi tu es des ann&eacute;es 70 80 mets un commentaire !</p>', 'Fannee7080.jpg', '2021-02-09 11:27:34'),
(55, 'Génération Club Dorothée', '<p>Une g&eacute;n&eacute;ration pleine de souvenirs en tout genre !</p>', 'FgenerationClubDorothe.jpg', '2021-02-09 11:28:32'),
(24, 'Nos dessins animés préférés', '<p>Emission culte, le Club Dorothée aura notamment permis l\'émergence de la culture manga en France.\r\n\r\nPour la première fois, les enfants français ont pu découvrir les dessin-animés du Japon, comme Goldorak et Dragon Ball. Voici les dix mangas inoubliables qui on bercé l\'enfance des trentenaires - une sélection évidemment très subjective. .</p>', 'Dorothe33.jpg', '2021-02-08 12:33:05'),
(40, 'Les animateurs de l\'émission culte', '<p>Au delà de Dorothée, Ariane, Jacky, Patrick Corbier, les Musclés et des dizaines de dessins animés japonais, Club Dorothée rime aussi avec AB Productions et quelques personnages inoubliables (même si souvent caricaturaux).</p>', 'Dorothe1.jpg', '2021-02-08 11:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(15, 'golddj972@hotmail.fr', '7c28a6f867d599cb1c65bb7025bcdc3d334af408', 0, 'Gold');

-- --------------------------------------------------------

--
-- Table structure for table `Votes`
--

CREATE TABLE `Votes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `Votes`
--
ALTER TABLE `Votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Votes`
--
ALTER TABLE `Votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
