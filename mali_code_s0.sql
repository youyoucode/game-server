-- phpMyAdmin SQL Dump
-- version 4.0.10.17
-- https://www.phpmyadmin.net
--
-- 主机: 192.168.1.220
-- 生成日期: 2017-03-31 05:23:25
-- 服务器版本: 5.6.34
-- PHP 版本: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `mali_code_s0`
--

-- --------------------------------------------------------

--
-- 表的结构 `system_user_info`
--

CREATE TABLE IF NOT EXISTS `system_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `pid` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT ' ',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=323 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_0`
--

CREATE TABLE IF NOT EXISTS `user_code_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_1`
--

CREATE TABLE IF NOT EXISTS `user_code_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_2`
--

CREATE TABLE IF NOT EXISTS `user_code_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=234 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_3`
--

CREATE TABLE IF NOT EXISTS `user_code_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_4`
--

CREATE TABLE IF NOT EXISTS `user_code_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=300 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_5`
--

CREATE TABLE IF NOT EXISTS `user_code_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_6`
--

CREATE TABLE IF NOT EXISTS `user_code_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_7`
--

CREATE TABLE IF NOT EXISTS `user_code_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_8`
--

CREATE TABLE IF NOT EXISTS `user_code_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_code_9`
--

CREATE TABLE IF NOT EXISTS `user_code_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`storyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_0`
--

CREATE TABLE IF NOT EXISTS `user_info_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=321 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_1`
--

CREATE TABLE IF NOT EXISTS `user_info_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=322 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_2`
--

CREATE TABLE IF NOT EXISTS `user_info_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=323 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_3`
--

CREATE TABLE IF NOT EXISTS `user_info_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=314 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_4`
--

CREATE TABLE IF NOT EXISTS `user_info_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=315 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_5`
--

CREATE TABLE IF NOT EXISTS `user_info_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=316 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_6`
--

CREATE TABLE IF NOT EXISTS `user_info_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=317 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_7`
--

CREATE TABLE IF NOT EXISTS `user_info_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=318 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_8`
--

CREATE TABLE IF NOT EXISTS `user_info_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=319 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_9`
--

CREATE TABLE IF NOT EXISTS `user_info_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `activate` tinyint(2) NOT NULL DEFAULT '0',
  `vip` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=320 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_0`
--

CREATE TABLE IF NOT EXISTS `user_item_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_1`
--

CREATE TABLE IF NOT EXISTS `user_item_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_2`
--

CREATE TABLE IF NOT EXISTS `user_item_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_3`
--

CREATE TABLE IF NOT EXISTS `user_item_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_4`
--

CREATE TABLE IF NOT EXISTS `user_item_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_5`
--

CREATE TABLE IF NOT EXISTS `user_item_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=136 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_6`
--

CREATE TABLE IF NOT EXISTS `user_item_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=158 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_7`
--

CREATE TABLE IF NOT EXISTS `user_item_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_8`
--

CREATE TABLE IF NOT EXISTS `user_item_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_9`
--

CREATE TABLE IF NOT EXISTS `user_item_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createTime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_0`
--

CREATE TABLE IF NOT EXISTS `user_question_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_1`
--

CREATE TABLE IF NOT EXISTS `user_question_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_2`
--

CREATE TABLE IF NOT EXISTS `user_question_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_3`
--

CREATE TABLE IF NOT EXISTS `user_question_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_4`
--

CREATE TABLE IF NOT EXISTS `user_question_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_5`
--

CREATE TABLE IF NOT EXISTS `user_question_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_6`
--

CREATE TABLE IF NOT EXISTS `user_question_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_7`
--

CREATE TABLE IF NOT EXISTS `user_question_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_8`
--

CREATE TABLE IF NOT EXISTS `user_question_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_question_9`
--

CREATE TABLE IF NOT EXISTS `user_question_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL DEFAULT ' ',
  `classname` varchar(100) NOT NULL DEFAULT ' ',
  `storyid` int(8) NOT NULL,
  `code` varchar(500) NOT NULL DEFAULT ' ',
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_0`
--

CREATE TABLE IF NOT EXISTS `user_reply_0` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_1`
--

CREATE TABLE IF NOT EXISTS `user_reply_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_2`
--

CREATE TABLE IF NOT EXISTS `user_reply_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_3`
--

CREATE TABLE IF NOT EXISTS `user_reply_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_4`
--

CREATE TABLE IF NOT EXISTS `user_reply_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_5`
--

CREATE TABLE IF NOT EXISTS `user_reply_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_6`
--

CREATE TABLE IF NOT EXISTS `user_reply_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_7`
--

CREATE TABLE IF NOT EXISTS `user_reply_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_8`
--

CREATE TABLE IF NOT EXISTS `user_reply_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_reply_9`
--

CREATE TABLE IF NOT EXISTS `user_reply_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `storyid` int(10) NOT NULL,
  `code` varchar(500) NOT NULL,
  `readed` tinyint(2) NOT NULL DEFAULT '0',
  `createTime` int(10) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
