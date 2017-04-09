-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2017 at 04:44 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `botdb`
--
CREATE DATABASE IF NOT EXISTS `botdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `botdb`;

-- --------------------------------------------------------

--
-- Table structure for table `CHATS`
--

CREATE TABLE IF NOT EXISTS `CHATS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CHATID` int(11) NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `GOAL` double NOT NULL,
  `INTERVAL` int(11) NOT NULL DEFAULT '0',
  `STATUS` varchar(10) NOT NULL DEFAULT 'NEW',
  `BEN_USER` int(11) NOT NULL,
  `BENEFIT_ADDRESS` varchar(50) DEFAULT NULL,
  `CONTRACT_ADDRESS` varchar(50) DEFAULT NULL,
  `STARTBLOCK` int(11) NOT NULL DEFAULT '0',
  `GAS` double NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CHATID` (`CHATID`),
  KEY `BEN_USER` (`BEN_USER`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0;

-- --------------------------------------------------------

--
-- Table structure for table `CHATS_MEM`
--

CREATE TABLE IF NOT EXISTS `CHATS_MEM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CHATID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `USERFSTNAME` varchar(255) NOT NULL,
  `USERLSTNAME` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `USER_ADDRESS` varchar(50) DEFAULT NULL,
  `VOTE` int(11) NOT NULL DEFAULT '0',
  `VOTED` varchar(1) NOT NULL DEFAULT 'N',
  `STATUS` varchar(10) NOT NULL DEFAULT 'REG',
  `PLAN_GOAL` decimal(10,0) NOT NULL,
  `FACT_GOAL` double NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_CHAT` (`USERID`,`CHATID`),
  KEY `CHATID` (`CHATID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CHATS_MEM`
--
ALTER TABLE `CHATS_MEM`
  ADD CONSTRAINT `CHATS_MEM_ibfk_1` FOREIGN KEY (`CHATID`) REFERENCES `CHATS` (`CHATID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;