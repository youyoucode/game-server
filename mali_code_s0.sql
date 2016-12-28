-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-12-28 13:43:41
-- 服务器版本： 5.6.31-log
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mali_code_s0`
--

-- --------------------------------------------------------

--
-- 表的结构 `system_user_info`
--

CREATE TABLE IF NOT EXISTS `system_user_info` (
  `id` int(11) NOT NULL,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ' ',
  `createTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_0`
--

CREATE TABLE IF NOT EXISTS `user_hero_0` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_1`
--

CREATE TABLE IF NOT EXISTS `user_hero_1` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_2`
--

CREATE TABLE IF NOT EXISTS `user_hero_2` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_3`
--

CREATE TABLE IF NOT EXISTS `user_hero_3` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_4`
--

CREATE TABLE IF NOT EXISTS `user_hero_4` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_5`
--

CREATE TABLE IF NOT EXISTS `user_hero_5` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_6`
--

CREATE TABLE IF NOT EXISTS `user_hero_6` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_7`
--

CREATE TABLE IF NOT EXISTS `user_hero_7` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_8`
--

CREATE TABLE IF NOT EXISTS `user_hero_8` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_hero_9`
--

CREATE TABLE IF NOT EXISTS `user_hero_9` (
  `id` int(10) NOT NULL,
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
  `item8` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_0`
--

CREATE TABLE IF NOT EXISTS `user_info_0` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_1`
--

CREATE TABLE IF NOT EXISTS `user_info_1` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_2`
--

CREATE TABLE IF NOT EXISTS `user_info_2` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_3`
--

CREATE TABLE IF NOT EXISTS `user_info_3` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_4`
--

CREATE TABLE IF NOT EXISTS `user_info_4` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_5`
--

CREATE TABLE IF NOT EXISTS `user_info_5` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_6`
--

CREATE TABLE IF NOT EXISTS `user_info_6` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_7`
--

CREATE TABLE IF NOT EXISTS `user_info_7` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_8`
--

CREATE TABLE IF NOT EXISTS `user_info_8` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_info_9`
--

CREATE TABLE IF NOT EXISTS `user_info_9` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '1001',
  `hid` int(10) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0',
  `coin` int(10) NOT NULL DEFAULT '0',
  `diamond` int(10) NOT NULL DEFAULT '0',
  `physical` smallint(5) NOT NULL DEFAULT '150',
  `storyID` int(10) NOT NULL DEFAULT '1001',
  `updateTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_0`
--

CREATE TABLE IF NOT EXISTS `user_item_0` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_1`
--

CREATE TABLE IF NOT EXISTS `user_item_1` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_2`
--

CREATE TABLE IF NOT EXISTS `user_item_2` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_3`
--

CREATE TABLE IF NOT EXISTS `user_item_3` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_4`
--

CREATE TABLE IF NOT EXISTS `user_item_4` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_5`
--

CREATE TABLE IF NOT EXISTS `user_item_5` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_6`
--

CREATE TABLE IF NOT EXISTS `user_item_6` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_7`
--

CREATE TABLE IF NOT EXISTS `user_item_7` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_8`
--

CREATE TABLE IF NOT EXISTS `user_item_8` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_item_9`
--

CREATE TABLE IF NOT EXISTS `user_item_9` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_0`
--

CREATE TABLE IF NOT EXISTS `user_story_0` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_1`
--

CREATE TABLE IF NOT EXISTS `user_story_1` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_2`
--

CREATE TABLE IF NOT EXISTS `user_story_2` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_3`
--

CREATE TABLE IF NOT EXISTS `user_story_3` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_4`
--

CREATE TABLE IF NOT EXISTS `user_story_4` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_5`
--

CREATE TABLE IF NOT EXISTS `user_story_5` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_6`
--

CREATE TABLE IF NOT EXISTS `user_story_6` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_7`
--

CREATE TABLE IF NOT EXISTS `user_story_7` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_8`
--

CREATE TABLE IF NOT EXISTS `user_story_8` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_story_9`
--

CREATE TABLE IF NOT EXISTS `user_story_9` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `storyID` int(10) NOT NULL,
  `star` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `system_user_info`
--
ALTER TABLE `system_user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_hero_0`
--
ALTER TABLE `user_hero_0`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_1`
--
ALTER TABLE `user_hero_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_2`
--
ALTER TABLE `user_hero_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_3`
--
ALTER TABLE `user_hero_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_4`
--
ALTER TABLE `user_hero_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_5`
--
ALTER TABLE `user_hero_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_6`
--
ALTER TABLE `user_hero_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_7`
--
ALTER TABLE `user_hero_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_8`
--
ALTER TABLE `user_hero_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_hero_9`
--
ALTER TABLE `user_hero_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hero_uid` (`uid`);

--
-- Indexes for table `user_info_0`
--
ALTER TABLE `user_info_0`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_1`
--
ALTER TABLE `user_info_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_2`
--
ALTER TABLE `user_info_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_3`
--
ALTER TABLE `user_info_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_4`
--
ALTER TABLE `user_info_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_5`
--
ALTER TABLE `user_info_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_6`
--
ALTER TABLE `user_info_6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_7`
--
ALTER TABLE `user_info_7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_8`
--
ALTER TABLE `user_info_8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info_9`
--
ALTER TABLE `user_info_9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_item_0`
--
ALTER TABLE `user_item_0`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_1`
--
ALTER TABLE `user_item_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_2`
--
ALTER TABLE `user_item_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_3`
--
ALTER TABLE `user_item_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_4`
--
ALTER TABLE `user_item_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_5`
--
ALTER TABLE `user_item_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_6`
--
ALTER TABLE `user_item_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_7`
--
ALTER TABLE `user_item_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_8`
--
ALTER TABLE `user_item_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_item_9`
--
ALTER TABLE `user_item_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_0`
--
ALTER TABLE `user_story_0`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_1`
--
ALTER TABLE `user_story_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_2`
--
ALTER TABLE `user_story_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_3`
--
ALTER TABLE `user_story_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_4`
--
ALTER TABLE `user_story_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_5`
--
ALTER TABLE `user_story_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_6`
--
ALTER TABLE `user_story_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_7`
--
ALTER TABLE `user_story_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_8`
--
ALTER TABLE `user_story_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_story_9`
--
ALTER TABLE `user_story_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `system_user_info`
--
ALTER TABLE `system_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_0`
--
ALTER TABLE `user_hero_0`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_1`
--
ALTER TABLE `user_hero_1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_2`
--
ALTER TABLE `user_hero_2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_3`
--
ALTER TABLE `user_hero_3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_4`
--
ALTER TABLE `user_hero_4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_5`
--
ALTER TABLE `user_hero_5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_6`
--
ALTER TABLE `user_hero_6`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_7`
--
ALTER TABLE `user_hero_7`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_8`
--
ALTER TABLE `user_hero_8`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_hero_9`
--
ALTER TABLE `user_hero_9`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_0`
--
ALTER TABLE `user_info_0`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_1`
--
ALTER TABLE `user_info_1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_2`
--
ALTER TABLE `user_info_2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_3`
--
ALTER TABLE `user_info_3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_4`
--
ALTER TABLE `user_info_4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_5`
--
ALTER TABLE `user_info_5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_6`
--
ALTER TABLE `user_info_6`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_7`
--
ALTER TABLE `user_info_7`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_8`
--
ALTER TABLE `user_info_8`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info_9`
--
ALTER TABLE `user_info_9`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_0`
--
ALTER TABLE `user_item_0`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_1`
--
ALTER TABLE `user_item_1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_2`
--
ALTER TABLE `user_item_2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_3`
--
ALTER TABLE `user_item_3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_4`
--
ALTER TABLE `user_item_4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_5`
--
ALTER TABLE `user_item_5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_6`
--
ALTER TABLE `user_item_6`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_7`
--
ALTER TABLE `user_item_7`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_8`
--
ALTER TABLE `user_item_8`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_item_9`
--
ALTER TABLE `user_item_9`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_0`
--
ALTER TABLE `user_story_0`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_1`
--
ALTER TABLE `user_story_1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_2`
--
ALTER TABLE `user_story_2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_3`
--
ALTER TABLE `user_story_3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_4`
--
ALTER TABLE `user_story_4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_5`
--
ALTER TABLE `user_story_5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_6`
--
ALTER TABLE `user_story_6`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_7`
--
ALTER TABLE `user_story_7`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_8`
--
ALTER TABLE `user_story_8`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_story_9`
--
ALTER TABLE `user_story_9`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
