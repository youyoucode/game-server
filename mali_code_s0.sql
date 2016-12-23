-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-23 04:47:07
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mali_code_s0`
--

-- --------------------------------------------------------

--
-- 表的结构 `system_user_info`
--

CREATE TABLE IF NOT EXISTS `system_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ' ',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `system_user_info`
--

INSERT INTO `system_user_info` (`id`, `account`, `password`, `name`, `createTime`) VALUES
(1, '0.138428088524311431', '', ' ', 1482395418),
(2, '0.81821089206228391', '', ' ', 1482395493),
(3, '0.257862343484701161', '', ' ', 1482395536),
(4, '0.22785717060774371', '', ' ', 1482396666),
(5, '0.101815235991531421', '', ' ', 1482398787),
(6, '0.36406450911486421', '', ' ', 1482401271),
(7, '0.57678799948015241', '', ' ', 1482401976),
(8, '0.7003787753562231', '', ' ', 1482402276);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_0`
--

CREATE TABLE IF NOT EXISTS `user_hero_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_1`
--

CREATE TABLE IF NOT EXISTS `user_hero_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_1`
--

INSERT INTO `user_hero_1` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 1, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_2`
--

CREATE TABLE IF NOT EXISTS `user_hero_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_2`
--

INSERT INTO `user_hero_2` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 2, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_3`
--

CREATE TABLE IF NOT EXISTS `user_hero_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_3`
--

INSERT INTO `user_hero_3` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 3, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_4`
--

CREATE TABLE IF NOT EXISTS `user_hero_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_4`
--

INSERT INTO `user_hero_4` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 4, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_5`
--

CREATE TABLE IF NOT EXISTS `user_hero_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_5`
--

INSERT INTO `user_hero_5` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 5, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_6`
--

CREATE TABLE IF NOT EXISTS `user_hero_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_6`
--

INSERT INTO `user_hero_6` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 6, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_7`
--

CREATE TABLE IF NOT EXISTS `user_hero_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_7`
--

INSERT INTO `user_hero_7` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 7, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_8`
--

CREATE TABLE IF NOT EXISTS `user_hero_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_hero_8`
--

INSERT INTO `user_hero_8` (`id`, `uid`, `mid`, `exp`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`) VALUES
(1, 8, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_9`
--

CREATE TABLE IF NOT EXISTS `user_hero_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `exp` int(12) NOT NULL DEFAULT '0',
  `item1` int(10) NOT NULL DEFAULT '0',
  `item2` int(10) NOT NULL DEFAULT '0',
  `item3` int(10) NOT NULL DEFAULT '0',
  `item4` int(10) NOT NULL DEFAULT '0',
  `item5` int(10) NOT NULL DEFAULT '0',
  `item6` int(10) NOT NULL DEFAULT '0',
  `item7` int(10) NOT NULL DEFAULT '0',
  `item8` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hero_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_0`
--

CREATE TABLE IF NOT EXISTS `user_info_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_1`
--

CREATE TABLE IF NOT EXISTS `user_info_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_info_1`
--

INSERT INTO `user_info_1` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(1, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482395418);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_2`
--

CREATE TABLE IF NOT EXISTS `user_info_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `user_info_2`
--

INSERT INTO `user_info_2` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(2, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482395493);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_3`
--

CREATE TABLE IF NOT EXISTS `user_info_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `user_info_3`
--

INSERT INTO `user_info_3` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(3, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482395536);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_4`
--

CREATE TABLE IF NOT EXISTS `user_info_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `user_info_4`
--

INSERT INTO `user_info_4` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(4, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482396666);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_5`
--

CREATE TABLE IF NOT EXISTS `user_info_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `user_info_5`
--

INSERT INTO `user_info_5` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(5, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482398787);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_6`
--

CREATE TABLE IF NOT EXISTS `user_info_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `user_info_6`
--

INSERT INTO `user_info_6` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(6, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482401272);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_7`
--

CREATE TABLE IF NOT EXISTS `user_info_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `user_info_7`
--

INSERT INTO `user_info_7` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(7, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482401979);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_8`
--

CREATE TABLE IF NOT EXISTS `user_info_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `user_info_8`
--

INSERT INTO `user_info_8` (`id`, `name`, `mid`, `hid`, `exp`, `coin`, `diamond`, `physical`, `storyID`, `updateTime`) VALUES
(8, 'newPlayer', 1001, 1, 0, 0, 0, 150, 110001, 1482402276);

-- --------------------------------------------------------

--
-- 表的结构 `user_info_9`
--

CREATE TABLE IF NOT EXISTS `user_info_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_0`
--

CREATE TABLE IF NOT EXISTS `user_item_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_1`
--

CREATE TABLE IF NOT EXISTS `user_item_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_2`
--

CREATE TABLE IF NOT EXISTS `user_item_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_item_2`
--

INSERT INTO `user_item_2` (`id`, `uid`, `mid`, `updateTime`) VALUES
(1, 2, 10009, 1482395493);

-- --------------------------------------------------------

--
-- 表的结构 `user_item_3`
--

CREATE TABLE IF NOT EXISTS `user_item_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_item_3`
--

INSERT INTO `user_item_3` (`id`, `uid`, `mid`, `updateTime`) VALUES
(1, 3, 10009, 1482395536);

-- --------------------------------------------------------

--
-- 表的结构 `user_item_4`
--

CREATE TABLE IF NOT EXISTS `user_item_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_item_4`
--

INSERT INTO `user_item_4` (`id`, `uid`, `mid`, `updateTime`) VALUES
(1, 4, 10009, 1482396666);

-- --------------------------------------------------------

--
-- 表的结构 `user_item_5`
--

CREATE TABLE IF NOT EXISTS `user_item_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_item_5`
--

INSERT INTO `user_item_5` (`id`, `uid`, `mid`, `updateTime`) VALUES
(1, 5, 10009, 1482398787);

-- --------------------------------------------------------

--
-- 表的结构 `user_item_6`
--

CREATE TABLE IF NOT EXISTS `user_item_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_item_6`
--

INSERT INTO `user_item_6` (`id`, `uid`, `mid`, `updateTime`) VALUES
(1, 6, 10009, 1482401272);

-- --------------------------------------------------------

--
-- 表的结构 `user_item_7`
--

CREATE TABLE IF NOT EXISTS `user_item_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_item_7`
--

INSERT INTO `user_item_7` (`id`, `uid`, `mid`, `updateTime`) VALUES
(1, 7, 10009, 1482401979);

-- --------------------------------------------------------

--
-- 表的结构 `user_item_8`
--

CREATE TABLE IF NOT EXISTS `user_item_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_item_8`
--

INSERT INTO `user_item_8` (`id`, `uid`, `mid`, `updateTime`) VALUES
(1, 8, 10009, 1482402276);

-- --------------------------------------------------------

--
-- 表的结构 `user_item_9`
--

CREATE TABLE IF NOT EXISTS `user_item_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_0`
--

CREATE TABLE IF NOT EXISTS `user_story_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_1`
--

CREATE TABLE IF NOT EXISTS `user_story_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_2`
--

CREATE TABLE IF NOT EXISTS `user_story_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_3`
--

CREATE TABLE IF NOT EXISTS `user_story_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_4`
--

CREATE TABLE IF NOT EXISTS `user_story_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_5`
--

CREATE TABLE IF NOT EXISTS `user_story_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_6`
--

CREATE TABLE IF NOT EXISTS `user_story_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_7`
--

CREATE TABLE IF NOT EXISTS `user_story_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_story_7`
--

INSERT INTO `user_story_7` (`id`, `uid`, `storyID`, `star`) VALUES
(1, 7, 110001, 3);

-- --------------------------------------------------------

--
-- 表的结构 `user_story_8`
--

CREATE TABLE IF NOT EXISTS `user_story_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_9`
--

CREATE TABLE IF NOT EXISTS `user_story_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
