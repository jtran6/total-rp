-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 22, 2021 at 05:18 AM
-- Server version: 10.4.10-MariaDB-1:10.4.10+maria~buster
-- PHP Version: 7.3.29-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zap785415-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
(1, 'apartment32419', 'apartment3', 'Integrity Way 2419', 'EUJ43251'),
(2, 'apartment46353', 'apartment4', 'Tinsel Towers 6353', 'SSV60208'),
(3, 'apartment51560', 'apartment5', 'Fantastic Plaza 1560', 'TUB96698'),
(4, 'apartment34427', 'apartment1', 'Integrity Way 4427', 'BSS50310'),
(5, 'apartment35999', 'apartment3', 'Integrity Way 5999', 'GUQ07251'),
(6, 'apartment44427', 'apartment4', 'Tinsel Towers 4427', 'XZD74429'),
(7, 'apartment36353', 'apartment3', 'Integrity Way 6353', 'JXT91581'),
(8, 'apartment3893', 'apartment3', 'Integrity Way 893', 'KHW90777'),
(9, 'apartment3975', 'apartment3', 'Integrity Way 975', 'PBW74332'),
(10, 'apartment3345', 'apartment3', 'Integrity Way 345', 'SKF82008'),
(11, 'apartment34603', 'apartment3', 'Integrity Way 4603', 'XSV37891'),
(12, 'apartment39260', 'apartment3', 'Integrity Way 9260', 'SAJ02462'),
(13, 'apartment3137', 'apartment3', 'Integrity Way 137', 'BRV83844');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(250) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `amount` bigint(255) NOT NULL DEFAULT 0,
  `account_type` enum('Current','Savings','Buisness','Gang') NOT NULL DEFAULT 'Current'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_statements`
--

CREATE TABLE `bank_statements` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `buisness` varchar(50) DEFAULT NULL,
  `buisnessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `deposited` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crypto`
--

CREATE TABLE `crypto` (
  `id` int(11) NOT NULL,
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_transactions`
--

CREATE TABLE `crypto_transactions` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crypto_transactions`
--

INSERT INTO `crypto_transactions` (`id`, `citizenid`, `title`, `message`, `date`) VALUES
(1, 'EUJ43251', 'Credit', 'You have 10000.0 Qbit(\\\'s) purchased!', '2021-08-19 16:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `name`, `coords`, `time`, `createdby`) VALUES
(4, 'Deshawn', '{\"x\":106.31916046142578,\"y\":-1280.9525146484376,\"z\":29.26215171813965}', '{\"min\":1,\"max\":100000}', 'BRV83844');

-- --------------------------------------------------------

--
-- Table structure for table `gloveboxitems`
--

CREATE TABLE `gloveboxitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gloveboxitems`
--

INSERT INTO `gloveboxitems` (`id`, `plate`, `items`) VALUES
(1, '1FB055UO', '[]'),
(4, '4UB680IM', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `houselocations`
--

CREATE TABLE `houselocations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(2) DEFAULT NULL,
  `garage` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `house_plants`
--

CREATE TABLE `house_plants` (
  `id` int(11) NOT NULL,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lapraces`
--

CREATE TABLE `lapraces` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `occasion_vehicles`
--

CREATE TABLE `occasion_vehicles` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `license`, `permission`) VALUES
(1, 'bTheos007', 'license:fb33c9806469e568ad91f93a30298af0e3d6c121', 'god'),
(2, 'Blixby', 'license:d07b1ab8b582ee5e52d3611726e42968703aa9a1', 'admin'),
(3, 'Adopted', 'license:e4a4221ce83c984ce38ecee22fefd66b9ecc513c', 'admin'),
(6, 'Sn3akyOni', 'license:559f6bf59f8c6b4735262b1aa94c4e591a54e5c6', 'admin'),
(7, 'Daddy Dur', 'license:5998cc988ee79c862c045268a5b2800244c8d62a', 'admin'),
(8, 'iYoked', 'license:66161eab4be8e8b31f41b54997414a4990af8913', 'god');

-- --------------------------------------------------------

--
-- Table structure for table `phone_invoices`
--

CREATE TABLE `phone_invoices` (
  `id` int(10) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_tweets`
--

CREATE TABLE `phone_tweets` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
(1, 'EUJ43251', 1, 'license:fb33c9806469e568ad91f93a30298af0e3d6c121', 'bTheos007', '{\"crypto\":10000.0,\"bank\":10000112371,\"cash\":936768264.0}', '{\"firstname\":\"Hanzo\",\"birthdate\":\"1990-01-01\",\"cid\":\"1\",\"gender\":0,\"lastname\":\"Fujiwara\",\"phone\":\"1912833201\",\"nationality\":\"Japanese\",\"backstory\":\"placeholder backstory\",\"account\":\"US02QBCore4435132144\"}', '{\"label\":\"Law Enforcement\",\"name\":\"police\",\"onduty\":true,\"grade\":{\"level\":3,\"name\":\"Lieutenant\"},\"isboss\":false,\"payment\":125}', '{\"label\":\"No Gang Affiliaton\",\"grade\":{\"level\":0,\"name\":\"none\"},\"isboss\":false,\"name\":\"none\"}', '{\"y\":-832.86328125,\"x\":-313.9731140136719,\"w\":239.18435668945313,\"z\":31.61432456970215}', '{\"armor\":0,\"thirst\":96.19999999999982,\"criminalrecord\":{\"hasRecord\":false},\"attachmentcraftingrep\":0,\"fitbit\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"dealerrep\":0,\"phonedata\":{\"SerialNumber\":87758366,\"InstalledApps\":[]},\"isdead\":false,\"callsign\":\"NO CALLSIGN\",\"jailitems\":[],\"walletid\":\"QB-69894983\",\"fingerprint\":\"aE476V15Jch4712\",\"tracker\":false,\"craftingrep\":7,\"bloodtype\":\"A-\",\"stress\":0,\"hunger\":95.79999999999927,\"ishandcuffed\":false,\"jobrep\":{\"trucker\":0,\"taxi\":0,\"hotdog\":38,\"tow\":0},\"phone\":[],\"inlaststand\":false,\"currentapartment\":\"apartment32419\",\"commandbinds\":{\"F6\":{\"argument\":\"\",\"command\":\"\"},\"F7\":{\"argument\":\"\",\"command\":\"\"},\"F3\":{\"argument\":\"\",\"command\":\"\"},\"F2\":{\"argument\":\"\",\"command\":\"\"},\"F5\":{\"argument\":\"\",\"command\":\"\"},\"F9\":{\"argument\":\"\",\"command\":\"\"},\"F10\":{\"argument\":\"\",\"command\":\"\"}},\"inside\":{\"apartment\":[]},\"status\":[],\"injail\":0}', '[{\"amount\":1,\"name\":\"weapon_marksmanpistol\",\"type\":\"weapon\",\"info\":{\"quality\":46.60000000000809,\"serie\":\"42NwW4gD813zSva\",\"ammo\":0},\"slot\":1},{\"amount\":1,\"name\":\"weapon_battleaxe\",\"type\":\"weapon\",\"info\":{\"serie\":\"02nnm7fU746zjOH\",\"ammo\":0},\"slot\":2},{\"amount\":23,\"name\":\"pistol_ammo\",\"type\":\"item\",\"info\":[],\"slot\":3},{\"amount\":1,\"name\":\"weapon_advancedrifle\",\"type\":\"weapon\",\"info\":{\"quality\":46.60000000000809,\"serie\":\"44aah0qG357OXNg\",\"ammo\":79},\"slot\":4},{\"amount\":10,\"name\":\"rifle_ammo\",\"type\":\"item\",\"info\":[],\"slot\":5},{\"amount\":1,\"name\":\"phone\",\"type\":\"item\",\"info\":[],\"slot\":6},{\"amount\":26,\"name\":\"snp_ammo\",\"type\":\"item\",\"info\":[],\"slot\":7},{\"amount\":1,\"name\":\"weapon_remotesniper\",\"type\":\"weapon\",\"info\":{\"serie\":\"74eod2mj982iNoS\",\"ammo\":0},\"slot\":8},{\"amount\":9,\"name\":\"marksmanrifle_scope\",\"type\":\"item\",\"info\":[],\"slot\":9},{\"amount\":1,\"name\":\"weed_nutrition\",\"type\":\"item\",\"info\":[],\"slot\":10},{\"amount\":1,\"name\":\"weapon_heavysniper\",\"type\":\"weapon\",\"info\":{\"serie\":\"18UTQ2nn354pcxj\",\"attachments\":[{\"label\":\"Scope\",\"item\":\"sniper_scope\",\"component\":\"COMPONENT_AT_SCOPE_LARGE\",\"type\":\"scope\"}],\"quality\":79.15000000000316,\"ammo\":1},\"slot\":11},{\"amount\":1,\"name\":\"combatpistol_extendedclip\",\"type\":\"item\",\"info\":[],\"slot\":12}]', '2021-08-21 19:00:37'),
(2, 'SSV60208', 1, 'license:d07b1ab8b582ee5e52d3611726e42968703aa9a1', 'Blixby', '{\"bank\":5060,\"crypto\":0,\"cash\":500}', '{\"phone\":\"1306931900\",\"nationality\":\"Japaniese\",\"firstname\":\"Yoshimishu\",\"birthdate\":\"1990-04-22\",\"backstory\":\"placeholder backstory\",\"lastname\":\"Fujiwara\",\"gender\":0,\"account\":\"US02QBCore7091299760\",\"cid\":\"1\"}', '{\"isboss\":false,\"grade\":{\"name\":\"Journalist\",\"level\":0},\"payment\":50,\"name\":\"reporter\",\"label\":\"Reporter\",\"onduty\":true}', '{\"grade\":{\"name\":\"none\",\"level\":0},\"name\":\"none\",\"label\":\"No Gang Affiliaton\",\"isboss\":false}', '{\"x\":1069.9066162109376,\"w\":273.4985656738281,\"z\":-38.99996185302734,\"y\":-3101.029296875}', '{\"criminalrecord\":{\"hasRecord\":false},\"tracker\":false,\"injail\":0,\"currentapartment\":\"apartment46353\",\"ishandcuffed\":false,\"inside\":{\"apartment\":[]},\"isdead\":false,\"fitbit\":[],\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":57564039},\"attachmentcraftingrep\":0,\"inlaststand\":false,\"phone\":[],\"stress\":0,\"thirst\":88.59999999999946,\"hunger\":87.39999999999782,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"commandbinds\":[],\"dealerrep\":0,\"walletid\":\"QB-98998603\",\"armor\":0,\"status\":[],\"callsign\":\"NO CALLSIGN\",\"jailitems\":[],\"fingerprint\":\"Ca530X91Rbh9519\",\"craftingrep\":0,\"bloodtype\":\"AB+\",\"jobrep\":{\"taxi\":0,\"tow\":0,\"trucker\":0,\"hotdog\":0}}', '[{\"info\":[],\"slot\":1,\"name\":\"phone\",\"amount\":1,\"type\":\"item\"},{\"info\":{\"lastname\":\"Fujiwara\",\"nationality\":\"Japaniese\",\"citizenid\":\"SSV60208\",\"firstname\":\"Yoshimishu\",\"birthdate\":\"1990-04-22\",\"gender\":0},\"slot\":2,\"name\":\"id_card\",\"amount\":1,\"type\":\"item\"},{\"info\":{\"firstname\":\"Yoshimishu\",\"lastname\":\"Fujiwara\",\"type\":\"A1-A2-A | AM-B | C1-C-CE\",\"birthdate\":\"1990-04-22\"},\"slot\":3,\"name\":\"driver_license\",\"amount\":1,\"type\":\"item\"},{\"info\":\"\",\"slot\":4,\"name\":\"aluminum\",\"amount\":19,\"type\":\"item\"},{\"info\":\"\",\"slot\":5,\"name\":\"metalscrap\",\"amount\":4,\"type\":\"item\"},{\"info\":\"\",\"slot\":6,\"name\":\"steel\",\"amount\":12,\"type\":\"item\"},{\"info\":\"\",\"slot\":7,\"name\":\"iron\",\"amount\":7,\"type\":\"item\"},{\"info\":\"\",\"slot\":8,\"name\":\"glass\",\"amount\":8,\"type\":\"item\"}]', '2021-08-18 23:59:21'),
(3, 'TUB96698', 2, 'license:d07b1ab8b582ee5e52d3611726e42968703aa9a1', 'Blixby', '{\"bank\":5060,\"crypto\":0,\"cash\":500}', '{\"firstname\":\"yoshi\",\"cid\":\"2\",\"backstory\":\"placeholder backstory\",\"nationality\":\"japan\",\"gender\":0,\"account\":\"US07QBCore9586489135\",\"phone\":\"1550551443\",\"lastname\":\"fuji\",\"birthdate\":\"2000-04-22\"}', '{\"label\":\"Civilian\",\"isboss\":false,\"payment\":10,\"onduty\":true,\"name\":\"unemployed\",\"grade\":{\"name\":\"Freelancer\",\"level\":0}}', '{\"name\":\"none\",\"label\":\"No Gang Affiliaton\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0}}', '{\"w\":341.8651428222656,\"x\":146.43568420410157,\"y\":-928.6368408203125,\"z\":29.82523345947265}', '{\"injail\":0,\"armor\":0,\"status\":[],\"phonedata\":{\"SerialNumber\":54255762,\"InstalledApps\":[]},\"isdead\":false,\"dealerrep\":0,\"fingerprint\":\"DD001S25QNG0552\",\"tracker\":false,\"jailitems\":[],\"commandbinds\":[],\"criminalrecord\":{\"hasRecord\":false},\"bloodtype\":\"AB+\",\"hunger\":66.3999999999942,\"phone\":[],\"thirst\":69.59999999999855,\"attachmentcraftingrep\":0,\"walletid\":\"QB-12440327\",\"ishandcuffed\":false,\"currentapartment\":\"apartment51560\",\"fitbit\":[],\"inside\":{\"apartment\":[]},\"jobrep\":{\"taxi\":0,\"trucker\":0,\"hotdog\":0,\"tow\":0},\"callsign\":\"NO CALLSIGN\",\"inlaststand\":false,\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false},\"stress\":0,\"craftingrep\":0}', '[{\"name\":\"driver_license\",\"type\":\"item\",\"info\":{\"lastname\":\"fuji\",\"firstname\":\"yoshi\",\"type\":\"A1-A2-A | AM-B | C1-C-CE\",\"birthdate\":\"2000-04-22\"},\"slot\":1,\"amount\":1},{\"name\":\"id_card\",\"type\":\"item\",\"info\":{\"lastname\":\"fuji\",\"citizenid\":\"TUB96698\",\"birthdate\":\"2000-04-22\",\"nationality\":\"japan\",\"firstname\":\"yoshi\",\"gender\":0},\"slot\":2,\"amount\":1},{\"name\":\"phone\",\"type\":\"item\",\"info\":[],\"slot\":3,\"amount\":1}]', '2021-08-19 00:56:44'),
(4, 'BSS50310', 3, 'license:d07b1ab8b582ee5e52d3611726e42968703aa9a1', 'Blixby', '{\"cash\":5.000000000050653e21,\"crypto\":0,\"bank\":8934790590.0}', '{\"gender\":0,\"card\":6587196539621800,\"account\":\"US08QBCore9241570338\",\"cid\":\"3\",\"backstory\":\"placeholder backstory\",\"phone\":\"1750882183\",\"nationality\":\"d\",\"firstname\":\"h\",\"birthdate\":\"1990-04-02\",\"lastname\":\"as\"}', '{\"onduty\":true,\"label\":\"Law Enforcement\",\"name\":\"police\",\"payment\":30,\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"No Grades\"}}', '{\"name\":\"none\",\"label\":\"No Gang Affiliaton\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"none\"}}', '{\"x\":1341.2100830078126,\"w\":213.20323181152345,\"z\":133.90948486328126,\"y\":5026.33447265625}', '{\"hunger\":83.19999999999709,\"fitbit\":{\"food\":50,\"thirst\":50},\"bloodtype\":\"O+\",\"commandbinds\":{\"F3\":{\"argument\":\"\",\"command\":\"\"},\"F9\":{\"argument\":\"\",\"command\":\"\"},\"F5\":{\"argument\":\"\",\"command\":\"\"},\"F6\":{\"argument\":\"\",\"command\":\"\"},\"F10\":{\"argument\":\"\",\"command\":\"\"},\"F2\":{\"argument\":\"ADMIN\",\"command\":\"admin\"},\"F7\":{\"argument\":\"\",\"command\":\"\"}},\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"fingerprint\":\"GL874X72vfQ7482\",\"dealerrep\":0,\"ishandcuffed\":false,\"injail\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":90615376},\"attachmentcraftingrep\":0,\"craftingrep\":1,\"inlaststand\":false,\"inside\":{\"apartment\":[]},\"criminalrecord\":{\"hasRecord\":false},\"jailitems\":[],\"armor\":75,\"thirst\":84.79999999999927,\"isdead\":false,\"tracker\":false,\"phone\":[],\"currentapartment\":\"apartment34427\",\"jobrep\":{\"hotdog\":4,\"trucker\":0,\"taxi\":0,\"tow\":0},\"stress\":0,\"callsign\":\"NO CALLSIGN\",\"walletid\":\"QB-74146289\",\"status\":[]}', '[{\"name\":\"glass\",\"slot\":1,\"type\":\"item\",\"info\":\"\",\"amount\":5},{\"name\":\"phone\",\"slot\":2,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"weapon_appistol\",\"slot\":3,\"type\":\"weapon\",\"info\":{\"quality\":40.30000000000905,\"ammo\":36,\"serie\":\"77fvc2rQ546xBWt\",\"attachments\":[{\"component\":\"COMPONENT_APPISTOL_CLIP_02\",\"label\":\"Extended Clip\",\"item\":\"appistol_extendedclip\",\"type\":\"clip\"}]},\"amount\":1},{\"name\":\"weapon_carbinerifle\",\"slot\":4,\"type\":\"weapon\",\"info\":{\"quality\":23.35000000001161,\"ammo\":0,\"serie\":\"36hZJ7XU090trkH\"},\"amount\":1},{\"name\":\"walkstick\",\"slot\":5,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"driver_license\",\"slot\":6,\"type\":\"item\",\"info\":{\"type\":\"A1-A2-A | AM-B | C1-C-CE\",\"firstname\":\"h\",\"birthdate\":\"1990-04-02\",\"lastname\":\"as\"},\"amount\":1},{\"name\":\"parachute\",\"slot\":7,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"visa\",\"slot\":8,\"type\":\"item\",\"info\":{\"cardType\":\"visa\",\"cardActive\":true,\"cardPin\":1111,\"name\":\"h as\",\"cardNumber\":6587196539621800,\"citizenid\":\"BSS50310\"},\"amount\":1},{\"name\":\"steel\",\"slot\":9,\"type\":\"item\",\"info\":\"\",\"amount\":73},{\"name\":\"laptop\",\"slot\":10,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"cryptostick\",\"slot\":11,\"type\":\"item\",\"info\":\"\",\"amount\":1},{\"name\":\"plastic\",\"slot\":13,\"type\":\"item\",\"info\":\"\",\"amount\":63},{\"name\":\"id_card\",\"slot\":14,\"type\":\"item\",\"info\":{\"gender\":0,\"birthdate\":\"1990-04-02\",\"lastname\":\"as\",\"firstname\":\"h\",\"nationality\":\"d\",\"citizenid\":\"BSS50310\"},\"amount\":1},{\"name\":\"metalscrap\",\"slot\":15,\"type\":\"item\",\"info\":\"\",\"amount\":42},{\"name\":\"pistol_ammo\",\"slot\":16,\"type\":\"item\",\"info\":[],\"amount\":3},{\"name\":\"lockpick\",\"slot\":18,\"type\":\"item\",\"info\":\"\",\"amount\":1},{\"name\":\"casinochips\",\"slot\":20,\"type\":\"item\",\"info\":[],\"amount\":702079},{\"name\":\"tunerlaptop\",\"slot\":21,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"fitbit\",\"slot\":22,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"weapon_hatchet\",\"slot\":23,\"type\":\"weapon\",\"info\":{\"serie\":\"34JYm5sr811WCvX\",\"ammo\":0},\"amount\":1},{\"name\":\"cryptostick\",\"slot\":24,\"type\":\"item\",\"info\":\"\",\"amount\":1},{\"name\":\"nitrous\",\"slot\":25,\"type\":\"item\",\"info\":[],\"amount\":4},{\"name\":\"thermite\",\"slot\":26,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"lighter\",\"slot\":27,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"weapon_hammer\",\"slot\":29,\"type\":\"weapon\",\"info\":{\"serie\":\"26EFA3VJ475srqF\"},\"amount\":1},{\"name\":\"casinochips\",\"slot\":34,\"type\":\"item\",\"info\":[],\"amount\":6}]', '2021-08-22 03:14:05'),
(5, 'GUQ07251', 1, 'license:ca5eefee2101614ebaa1103b9f896ad0c8bced6c', 'Dfreshh', '{\"crypto\":0,\"bank\":5020,\"cash\":500}', '{\"nationality\":\"Ignorant\",\"firstname\":\"Steven\",\"account\":\"US05QBCore4133690059\",\"gender\":0,\"lastname\":\"Bojangles\",\"birthdate\":\"1991-02-23\",\"cid\":\"1\",\"phone\":\"1956180794\",\"backstory\":\"placeholder backstory\"}', '{\"payment\":10,\"label\":\"Civilian\",\"name\":\"unemployed\",\"isboss\":false,\"onduty\":true,\"grade\":{\"name\":\"Freelancer\",\"level\":0}}', '{\"label\":\"No Gang Affiliaton\",\"isboss\":false,\"name\":\"none\",\"grade\":{\"name\":\"none\",\"level\":0}}', '{\"x\":298.27374267578127,\"w\":158.4849853515625,\"z\":43.26085662841797,\"y\":-584.05029296875}', '{\"commandbinds\":[],\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"walletid\":\"QB-24061456\",\"hunger\":95.79999999999927,\"jobrep\":{\"hotdog\":0,\"trucker\":0,\"taxi\":0,\"tow\":0},\"attachmentcraftingrep\":0,\"phonedata\":{\"SerialNumber\":44132462,\"InstalledApps\":[]},\"stress\":0,\"injail\":0,\"callsign\":\"NO CALLSIGN\",\"phone\":[],\"isdead\":false,\"fingerprint\":\"pO317v94VdR7188\",\"fitbit\":[],\"criminalrecord\":{\"hasRecord\":false},\"currentapartment\":\"apartment35999\",\"ishandcuffed\":false,\"thirst\":96.19999999999982,\"bloodtype\":\"O+\",\"dealerrep\":0,\"inlaststand\":false,\"jailitems\":[],\"inside\":{\"apartment\":[]},\"craftingrep\":0,\"status\":[],\"armor\":0,\"tracker\":false}', '[{\"info\":{\"lastname\":\"Bojangles\",\"birthdate\":\"1991-02-23\",\"type\":\"A1-A2-A | AM-B | C1-C-CE\",\"firstname\":\"Steven\"},\"type\":\"item\",\"amount\":1,\"name\":\"driver_license\",\"slot\":1},{\"info\":[],\"type\":\"item\",\"amount\":1,\"name\":\"phone\",\"slot\":2},{\"info\":{\"citizenid\":\"GUQ07251\",\"birthdate\":\"1991-02-23\",\"firstname\":\"Steven\",\"nationality\":\"Ignorant\",\"lastname\":\"Bojangles\",\"gender\":0},\"type\":\"item\",\"amount\":1,\"name\":\"id_card\",\"slot\":3}]', '2021-08-19 05:01:58'),
(6, 'XZD74429', 1, 'license:e4a4221ce83c984ce38ecee22fefd66b9ecc513c', 'Adopted', '{\"cash\":500,\"crypto\":0,\"bank\":5020}', '{\"account\":\"US05QBCore9806771259\",\"phone\":\"1690505247\",\"firstname\":\"dafad\",\"nationality\":\"fa\",\"birthdate\":\"3213-01-31\",\"backstory\":\"placeholder backstory\",\"cid\":\"1\",\"gender\":0,\"lastname\":\"afa\"}', '{\"label\":\"Civilian\",\"name\":\"unemployed\",\"isboss\":false,\"grade\":{\"name\":\"Freelancer\",\"level\":0},\"onduty\":true,\"payment\":10}', '{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0}}', '{\"z\":36.23958587646484,\"y\":-385.5467224121094,\"x\":-1384.4368896484376,\"w\":120.1763916015625}', '{\"injail\":0,\"bloodtype\":\"A-\",\"jobrep\":{\"hotdog\":0,\"tow\":0,\"taxi\":0,\"trucker\":0},\"status\":[],\"hunger\":100,\"phone\":[],\"isdead\":false,\"fitbit\":[],\"jailitems\":[],\"tracker\":false,\"commandbinds\":[],\"craftingrep\":0,\"walletid\":\"QB-66624994\",\"criminalrecord\":{\"hasRecord\":false},\"armor\":0,\"licences\":{\"weapon\":false,\"business\":false,\"driver\":true},\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":29990848},\"dealerrep\":0,\"fingerprint\":\"aK988Z21tgC4436\",\"attachmentcraftingrep\":0,\"inlaststand\":false,\"thirst\":100,\"stress\":2,\"ishandcuffed\":false,\"inside\":{\"apartment\":[]},\"currentapartment\":\"apartment44427\",\"callsign\":\"NO CALLSIGN\"}', '[{\"type\":\"item\",\"name\":\"driver_license\",\"info\":{\"type\":\"A1-A2-A | AM-B | C1-C-CE\",\"lastname\":\"afa\",\"birthdate\":\"3213-01-31\",\"firstname\":\"dafad\"},\"amount\":1,\"slot\":1},{\"type\":\"item\",\"name\":\"phone\",\"info\":[],\"amount\":1,\"slot\":2},{\"type\":\"item\",\"name\":\"id_card\",\"info\":{\"nationality\":\"fa\",\"firstname\":\"dafad\",\"birthdate\":\"3213-01-31\",\"lastname\":\"afa\",\"gender\":0,\"citizenid\":\"XZD74429\"},\"amount\":1,\"slot\":3},{\"type\":\"item\",\"name\":\"tunerlaptop\",\"info\":[],\"amount\":1,\"slot\":4}]', '2021-08-19 18:36:31'),
(7, 'XSV37891', 1, 'license:559f6bf59f8c6b4735262b1aa94c4e591a54e5c6', 'Sn3akyOni', '{\"crypto\":0,\"cash\":8.000015106051974e27,\"bank\":6205}', '{\"gender\":0,\"account\":\"US08QBCore4324955561\",\"cid\":\"1\",\"backstory\":\"placeholder backstory\",\"birthdate\":\"1989-04-13\",\"lastname\":\"McSkill\",\"firstname\":\"Simon\",\"phone\":\"1693855688\",\"nationality\":\"Swedich\"}', '{\"onduty\":false,\"label\":\"Mechanic\",\"name\":\"mechanic\",\"payment\":125,\"isboss\":false,\"grade\":{\"level\":3,\"name\":\"Advanced\"}}', '{\"name\":\"none\",\"label\":\"No Gang Affiliaton\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"none\"}}', '{\"x\":998.7359619140625,\"w\":173.00006103515626,\"z\":69.43275451660156,\"y\":61.74131774902344}', '{\"hunger\":28.59999999998763,\"fitbit\":[],\"bloodtype\":\"A-\",\"commandbinds\":[],\"licences\":{\"weapon\":false,\"business\":false,\"driver\":true},\"fingerprint\":\"sF762V05lFC9122\",\"dealerrep\":1,\"ishandcuffed\":false,\"injail\":0,\"phonedata\":{\"SerialNumber\":84439151,\"InstalledApps\":[]},\"attachmentcraftingrep\":0,\"craftingrep\":0,\"status\":[],\"inside\":{\"apartment\":[]},\"callsign\":\"heyo\",\"jailitems\":[],\"phone\":[],\"jobrep\":{\"hotdog\":0,\"trucker\":0,\"taxi\":0,\"tow\":0},\"isdead\":false,\"tracker\":false,\"inlaststand\":false,\"currentapartment\":\"apartment34603\",\"walletid\":\"QB-39505056\",\"armor\":0,\"stress\":88.03999999999999,\"criminalrecord\":{\"date\":{\"sec\":17,\"hour\":23,\"isdst\":true,\"min\":32,\"month\":8,\"day\":20,\"yday\":232,\"year\":2021,\"wday\":6},\"hasRecord\":true},\"thirst\":35.3999999999969}', '[{\"name\":\"weapon_combatpistol\",\"slot\":1,\"type\":\"weapon\",\"info\":{\"quality\":32.35000000001024,\"ammo\":96,\"serie\":\"39DPc5Zd525VVRR\",\"attachments\":[{\"component\":\"COMPONENT_COMBATPISTOL_CLIP_02\",\"label\":\"Extended Clip\",\"item\":\"combatpistol_extendedclip\",\"type\":\"clip\"},{\"component\":\"COMPONENT_AT_PI_SUPP\",\"label\":\"Suppressor\",\"item\":\"pistol_suppressor\"}]},\"amount\":1},{\"name\":\"tosti\",\"slot\":2,\"type\":\"item\",\"info\":[],\"amount\":9},{\"name\":\"kurkakola\",\"slot\":3,\"type\":\"item\",\"info\":[],\"amount\":9},{\"name\":\"joint\",\"slot\":4,\"type\":\"item\",\"info\":[],\"amount\":48},{\"name\":\"nitrous\",\"slot\":6,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"cryptostick\",\"slot\":7,\"type\":\"item\",\"info\":\"\",\"amount\":1},{\"name\":\"cryptostick\",\"slot\":8,\"type\":\"item\",\"info\":\"\",\"amount\":1},{\"name\":\"rifle_suppressor\",\"slot\":9,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"lighter\",\"slot\":10,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"phone\",\"slot\":12,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"tunerlaptop\",\"slot\":13,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"rolling_paper\",\"slot\":14,\"type\":\"item\",\"info\":[],\"amount\":25},{\"name\":\"weed_og-kush\",\"slot\":15,\"type\":\"item\",\"info\":[],\"amount\":2},{\"name\":\"lockpick\",\"slot\":16,\"type\":\"item\",\"info\":[],\"amount\":2},{\"name\":\"id_card\",\"slot\":36,\"type\":\"item\",\"info\":{\"gender\":0,\"birthdate\":\"1989-04-13\",\"lastname\":\"McSkill\",\"firstname\":\"Simon\",\"nationality\":\"Swedich\",\"citizenid\":\"XSV37891\"},\"amount\":1},{\"name\":\"driver_license\",\"slot\":37,\"type\":\"item\",\"info\":{\"type\":\"A1-A2-A | AM-B | C1-C-CE\",\"firstname\":\"Simon\",\"birthdate\":\"1989-04-13\",\"lastname\":\"McSkill\"},\"amount\":1},{\"name\":\"id_card\",\"slot\":38,\"type\":\"item\",\"info\":{\"gender\":0,\"birthdate\":\"1989-04-13\",\"lastname\":\"McSkill\",\"firstname\":\"Simon\",\"nationality\":\"Swedich\",\"citizenid\":\"XSV37891\"},\"amount\":1},{\"name\":\"driver_license\",\"slot\":39,\"type\":\"item\",\"info\":{\"type\":\"A1-A2-A | AM-B | C1-C-CE\",\"firstname\":\"Simon\",\"birthdate\":\"1989-04-13\",\"lastname\":\"McSkill\"},\"amount\":1},{\"name\":\"weapon_battleaxe\",\"slot\":41,\"type\":\"weapon\",\"info\":{\"quality\":99.85000000000002,\"ammo\":0,\"serie\":\"19CWC1Lz116pcjb\"},\"amount\":1},{\"name\":\"casinochips\",\"slot\":20,\"type\":\"item\",\"info\":[],\"amount\":949999}]', '2021-08-22 03:15:56'),
(8, 'SAJ02462', 1, 'license:5998cc988ee79c862c045268a5b2800244c8d62a', 'Daddy Dur', '{\"bank\":5090,\"cash\":8700500,\"crypto\":0}', '{\"lastname\":\"Gnash\",\"backstory\":\"placeholder backstory\",\"firstname\":\"Victor\",\"nationality\":\"White\",\"phone\":\"1746742105\",\"account\":\"US04QBCore1437937383\",\"birthdate\":\"1990-06-08\",\"cid\":\"1\",\"gender\":0}', '{\"label\":\"Civilian\",\"onduty\":true,\"name\":\"unemployed\",\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"isboss\":false,\"payment\":10}', '{\"label\":\"No Gang Affiliaton\",\"grade\":{\"level\":0,\"name\":\"none\"},\"isboss\":false,\"name\":\"none\"}', '{\"y\":-781.8316040039063,\"z\":30.82301139831543,\"w\":331.347412109375,\"x\":216.63345336914063}', '{\"thirst\":92.39999999999964,\"dealerrep\":0,\"ishandcuffed\":false,\"tracker\":false,\"commandbinds\":[],\"fitbit\":[],\"phone\":[],\"currentapartment\":\"apartment39260\",\"inlaststand\":false,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":32189214},\"inside\":{\"apartment\":[]},\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"hunger\":91.59999999999855,\"callsign\":\"NO CALLSIGN\",\"armor\":0,\"criminalrecord\":{\"hasRecord\":false},\"walletid\":\"QB-53648378\",\"fingerprint\":\"Xc714a19Qjo3468\",\"jobrep\":{\"hotdog\":0,\"trucker\":0,\"taxi\":0,\"tow\":0},\"attachmentcraftingrep\":0,\"craftingrep\":0,\"status\":[],\"jailitems\":[],\"stress\":0,\"isdead\":false,\"bloodtype\":\"O-\",\"injail\":0}', '[{\"slot\":1,\"info\":{\"lastname\":\"Gnash\",\"birthdate\":\"1990-06-08\",\"firstname\":\"Victor\",\"type\":\"A1-A2-A | AM-B | C1-C-CE\"},\"name\":\"driver_license\",\"amount\":1,\"type\":\"item\"},{\"slot\":2,\"info\":{\"ammo\":0,\"serie\":\"80DyA8Uu607XKJq\",\"quality\":19.75000000001215},\"name\":\"weapon_combatpdw\",\"amount\":1,\"type\":\"weapon\"},{\"slot\":3,\"info\":{\"ammo\":4,\"serie\":\"93QlF0ak421DNsS\",\"quality\":67.000000000005},\"name\":\"weapon_heavypistol\",\"amount\":1,\"type\":\"weapon\"},{\"slot\":4,\"info\":{\"ammo\":0},\"name\":\"pistol_ammo\",\"amount\":1,\"type\":\"item\"},{\"slot\":5,\"info\":[],\"name\":\"smg_ammo\",\"amount\":2,\"type\":\"item\"},{\"slot\":6,\"info\":{\"nationality\":\"White\",\"birthdate\":\"1990-06-08\",\"citizenid\":\"SAJ02462\",\"firstname\":\"Victor\",\"lastname\":\"Gnash\",\"gender\":0},\"name\":\"id_card\",\"amount\":1,\"type\":\"item\"},{\"slot\":7,\"info\":{\"ammo\":0,\"serie\":\"68dWF5qa903OWVW\",\"quality\":87.40000000000191},\"name\":\"weapon_sniperrifle\",\"amount\":1,\"type\":\"weapon\"},{\"slot\":8,\"info\":[],\"name\":\"phone\",\"amount\":1,\"type\":\"item\"}]', '2021-08-21 01:42:27'),
(9, 'BRV83844', 1, 'license:66161eab4be8e8b31f41b54997414a4990af8913', 'twitc', '{\"crypto\":0,\"bank\":4047,\"cash\":999821743.0}', '{\"firstname\":\"Juan\",\"birthdate\":\"1995-01-01\",\"account\":\"US09QBCore6807743876\",\"gender\":0,\"lastname\":\"Santana\",\"phone\":\"1111931473\",\"nationality\":\"hispanic\",\"backstory\":\"placeholder backstory\",\"cid\":\"1\"}', '{\"label\":\"Law Enforcement\",\"name\":\"police\",\"onduty\":false,\"grade\":{\"level\":4,\"name\":\"Chief\"},\"payment\":150,\"isboss\":true}', '{\"label\":\"No Gang Affiliaton\",\"grade\":{\"level\":0,\"name\":\"none\"},\"isboss\":false,\"name\":\"none\"}', '{\"y\":-1264.7369384765626,\"x\":-689.3362426757813,\"w\":66.94725036621094,\"z\":23.41517257690429}', '{\"armor\":0,\"thirst\":92.39999999999964,\"criminalrecord\":{\"hasRecord\":false},\"attachmentcraftingrep\":0,\"fitbit\":[],\"injail\":0,\"dealerrep\":1,\"walletid\":\"QB-38475062\",\"isdead\":false,\"callsign\":\"NO CALLSIGN\",\"jailitems\":[],\"jobrep\":{\"taxi\":0,\"trucker\":1,\"hotdog\":0,\"tow\":0},\"currentapartment\":\"apartment3137\",\"tracker\":false,\"ishandcuffed\":false,\"bloodtype\":\"B+\",\"stress\":0,\"hunger\":91.59999999999855,\"craftingrep\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":86753971},\"phone\":[],\"inlaststand\":false,\"fingerprint\":\"ri407C51boD0925\",\"commandbinds\":[],\"inside\":{\"apartment\":[]},\"status\":[],\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false}}', '[{\"amount\":1,\"name\":\"phone\",\"type\":\"item\",\"info\":[],\"slot\":1}]', '2021-08-22 02:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerskins`
--

INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
(1, 'EUJ43251', '1704428387', '{\"arms\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"torso2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"shoes\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":1},\"lipstick\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"nose_5\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"face\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"vest\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"glass\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eye_opening\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"makeup\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"chimp_hole\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"bag\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":1},\"eyebrows\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"ear\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"neck_thikness\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"bracelet\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"chimp_bone_width\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"blush\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"cheek_1\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eye_color\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"hat\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"cheek_3\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"beard\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"lips_thickness\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"cheek_2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_1\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_4\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"pants\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_3\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"hair\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"moles\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"ageing\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"decals\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_0\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"accessory\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0}}', 1),
(2, 'SSV60208', '-597926235', '{\"chimp_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_0\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"hat\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"nose_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"neck_thikness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrows\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"nose_5\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"item\":1,\"defaultItem\":1},\"cheek_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"face\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"chimp_hole\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"mask\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"cheek_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eye_color\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"moles\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"eye_opening\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"lips_thickness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"item\":1,\"defaultItem\":1},\"glass\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"cheek_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"hair\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_4\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"eyebrown_high\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1}}', 1),
(3, 'TUB96698', '225514697', '{\"eye_color\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"face\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"vest\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eye_opening\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"t-shirt\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":1},\"beard\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"cheek_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"glass\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"lips_thickness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"shoes\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":1},\"nose_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"pants\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_5\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"mask\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"accessory\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"chimp_bone_lowering\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"arms\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"torso2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"cheek_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"bag\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hat\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"decals\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"neck_thikness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"eyebrown_high\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"moles\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"cheek_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"hair\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_hole\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0}}', 1),
(6, 'BSS50310', '1885233650', '{\"pants\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_hole\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"vest\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"t-shirt\":{\"item\":15,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"glass\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"decals\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eye_opening\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"watch\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"cheek_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"cheek_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrows\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"jaw_bone_back_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hat\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"eyebrown_forward\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"arms\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bracelet\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"nose_4\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"moles\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"nose_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"shoes\":{\"item\":1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"ageing\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"face\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"makeup\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"lips_thickness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"lipstick\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"beard\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"torso2\":{\"item\":42,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"blush\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"nose_5\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bag\":{\"item\":45,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"mask\":{\"item\":3,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"neck_thikness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"accessory\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"cheek_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"ear\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"nose_0\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hair\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eye_color\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1}}', 1),
(7, 'GUQ07251', '1885233650', '{\"nose_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eye_opening\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"bag\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"moles\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"ear\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"makeup\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"decals\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":15},\"pants\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":16},\"mask\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"torso2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":55},\"cheek_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eye_color\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"lips_thickness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"accessory\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eyebrows\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"bracelet\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"neck_thikness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"hair\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":13,\"item\":22},\"chimp_hole\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"chimp_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"cheek_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"blush\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"beard\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"vest\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"cheek_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eyebrown_high\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"glass\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"ageing\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"nose_5\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"shoes\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":4},\"hat\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"arms\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"watch\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1}}', 1),
(8, 'XZD74429', '1885233650', '{\"blush\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"lips_thickness\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"item\":1,\"defaultItem\":1},\"chimp_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"face\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"nose_1\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"cheek_2\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"eye_opening\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"nose_2\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"torso2\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"neck_thikness\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"glass\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"chimp_hole\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"item\":1,\"defaultItem\":1},\"nose_5\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"cheek_3\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"cheek_1\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"nose_4\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"nose_3\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"nose_0\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"moles\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"eyebrown_forward\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"eye_color\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1}}', 1),
(9, 'JXT91581', '1885233650', '{\"nose_5\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"mask\":{\"texture\":2,\"defaultTexture\":0,\"defaultItem\":0,\"item\":51},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eye_color\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":0},\"chimp_hole\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"hair\":{\"texture\":28,\"defaultTexture\":0,\"defaultItem\":0,\"item\":11},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"moles\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"face\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"neck_thikness\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"glass\":{\"texture\":4,\"defaultTexture\":0,\"defaultItem\":0,\"item\":7},\"torso2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":83},\"nose_1\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_4\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"hat\":{\"texture\":6,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":55},\"eye_opening\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eyebrows\":{\"texture\":14,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":23},\"chimp_bone_lenght\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"cheek_1\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"pants\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":8},\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"cheek_2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eyebrown_high\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":1},\"lips_thickness\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":15},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":1},\"cheek_3\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":0},\"nose_3\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_0\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1}}', 1),
(10, 'KHW90777', '1885233650', '{\"beard\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":2,\"defaultTexture\":1,\"texture\":1},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"glass\":{\"defaultItem\":0,\"item\":7,\"defaultTexture\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eye_color\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"face\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"hair\":{\"defaultItem\":0,\"item\":11,\"defaultTexture\":0,\"texture\":28},\"torso2\":{\"defaultItem\":0,\"item\":50,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"moles\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":15,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"shoes\":{\"defaultItem\":1,\"item\":1,\"defaultTexture\":0,\"texture\":0},\"pants\":{\"defaultItem\":0,\"item\":4,\"defaultTexture\":0,\"texture\":0},\"accessory\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"ear\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"hat\":{\"defaultItem\":-1,\"item\":55,\"defaultTexture\":0,\"texture\":1},\"mask\":{\"defaultItem\":0,\"item\":51,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"arms\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bag\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0}}', 1),
(11, 'PBW74332', '1885233650', '{\"pants\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"eye_opening\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"lips_thickness\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_4\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"torso2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_0\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"hat\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_hole\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"eyebrows\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"nose_1\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":1},\"hair\":{\"texture\":29,\"defaultTexture\":0,\"defaultItem\":0,\"item\":11},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"face\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"cheek_2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"cheek_3\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"neck_thikness\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"eye_color\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"eyebrown_high\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"cheek_1\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"mask\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"moles\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"glass\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"nose_5\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":1},\"nose_3\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0}}', 1),
(12, 'SKF82008', '1885233650', '{\"eyebrown_forward\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"bracelet\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"cheek_2\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"watch\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"nose_0\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"bag\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"arms\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"eye_opening\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"item\":51,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"eyebrows\":{\"item\":12,\"defaultItem\":-1,\"texture\":4,\"defaultTexture\":1},\"lipstick\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"cheek_1\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"ear\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"beard\":{\"item\":0,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"blush\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"vest\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"neck_thikness\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"shoes\":{\"item\":1,\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0},\"lips_thickness\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"item\":7,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"nose_1\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"hair\":{\"item\":11,\"defaultItem\":0,\"texture\":28,\"defaultTexture\":0},\"face\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"item\":8,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"hat\":{\"item\":55,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":0},\"chimp_hole\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"moles\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"nose_4\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"eye_color\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"nose_5\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"cheek_3\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"nose_2\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"t-shirt\":{\"item\":15,\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"nose_3\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"item\":50,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"makeup\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1}}', 1),
(14, 'XSV37891', '1885233650', '{\"eyebrows\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":20},\"face\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"lipstick\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"cheek_1\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_0\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"bag\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eye_opening\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":51},\"bracelet\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"beard\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"glass\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"hair\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":28,\"item\":11},\"pants\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":4},\"nose_3\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"vest\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"torso2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":50},\"eyebrown_high\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"makeup\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"decals\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"chimp_hole\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_5\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eye_color\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"lips_thickness\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"cheek_3\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_4\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_1\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"blush\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"t-shirt\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":15},\"neck_thikness\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"cheek_2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"hat\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"arms\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"moles\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"ear\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"watch\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"accessory\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"shoes\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":6,\"item\":12},\"ageing\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1}}', 1),
(15, 'SAJ02462', '1885233650', '{\"chimp_bone_lowering\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"hair\":{\"item\":42,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_3\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"blush\":{\"item\":-1,\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1},\"bag\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"makeup\":{\"item\":-1,\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1},\"beard\":{\"item\":11,\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1},\"vest\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"lipstick\":{\"item\":-1,\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1},\"watch\":{\"item\":-1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1},\"moles\":{\"item\":-1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1},\"cheek_2\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"lips_thickness\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"ageing\":{\"item\":-1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1},\"jaw_bone_width\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"arms\":{\"item\":15,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"shoes\":{\"item\":8,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1},\"neck_thikness\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_2\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_hole\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_5\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"ear\":{\"item\":-1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1},\"face\":{\"item\":9,\"texture\":1,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_1\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"accessory\":{\"item\":1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"hat\":{\"item\":-1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1},\"eye_opening\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_3\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"t-shirt\":{\"item\":2,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1},\"nose_1\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_4\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"mask\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrows\":{\"item\":-1,\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1},\"pants\":{\"item\":1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_0\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eye_color\":{\"item\":-1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1},\"bracelet\":{\"item\":-1,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1},\"decals\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"glass\":{\"item\":0,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"torso2\":{\"item\":5,\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0}}', 1),
(16, 'BRV83844', '678319271', '{\"arms\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"beard\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"chimp_hole\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_1\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"pants\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"blush\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"nose_3\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"eyebrown_high\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_4\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrows\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"chimp_bone_lowering\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ageing\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_0\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"makeup\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"bracelet\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"accessory\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lipstick\":{\"item\":-1,\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1},\"chimp_bone_width\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"mask\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"neck_thikness\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"decals\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"item\":1,\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0},\"face\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_3\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_2\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_1\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"item\":1,\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0},\"moles\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"watch\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"glass\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hat\":{\"item\":-1,\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0},\"vest\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bag\":{\"item\":0,\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `player_boats`
--

CREATE TABLE `player_boats` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `boathouse` varchar(50) DEFAULT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `player_contacts`
--

CREATE TABLE `player_contacts` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `player_houses`
--

CREATE TABLE `player_houses` (
  `id` int(255) NOT NULL,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `player_mails`
--

CREATE TABLE `player_mails` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_mails`
--

INSERT INTO `player_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
(1, 'BRV83844', 'Johhny', 'Delivery Location', 'Here is all info about the delivery, <br>Items: <br> 1x Weed Brick<br><br> be in time!!', 0, 720321, '2021-08-21 05:28:36', '{\"enabled\":true,\"buttonData\":{\"itemData\":{\"minrep\":0,\"item\":\"weed_brick\"},\"amount\":1,\"coords\":{\"z\":75.34,\"x\":-1245.63,\"y\":376.21},\"locationLabel\":\"Resort\",\"dealer\":\"Johhny\"},\"buttonEvent\":\"qb-drugs:client:setLocation\"}'),
(2, 'XSV37891', 'Deshawn', 'Delivery Location', 'Here is all info about the delivery, <br>Items: <br> 2x Weed Brick<br><br> be in time!!', 0, 709421, '2021-08-22 01:28:24', ''),
(3, 'BRV83844', 'Deshawn', 'Delivery Location', 'Here is all info about the delivery, <br>Items: <br> 3x Weed Brick<br><br> be in time!!', 0, 815038, '2021-08-22 01:29:20', ''),
(4, 'XSV37891', 'Deshawn', 'Delivery', 'You did good work, hope to see you again ;)<br><br>Groeten, Deshawn', 0, 233867, '2021-08-22 01:30:36', NULL),
(5, 'XSV37891', 'Danny', 'Delivery', 'Thanks dog lets do some more buisness soon ;)<br><br> Danny', 0, 751852, '2021-08-22 01:30:36', NULL),
(6, 'BRV83844', 'Deshawn', 'Delivery', 'You did good work, hope to see you again ;)<br><br>Groeten, Deshawn', 0, 609596, '2021-08-22 01:30:39', NULL),
(7, 'BRV83844', 'Danny', 'Delivery', 'Thanks dog lets do some more buisness soon ;)<br><br> Danny', 0, 909580, '2021-08-22 01:30:39', NULL),
(8, 'BRV83844', 'Pillbox', 'Hospital Costs', 'Dear Mr. Santana,<br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$2000</strong><br /><br />We wish you a quick recovery!', 0, 716189, '2021-08-22 01:41:46', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_outfits`
--

INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `skin`, `outfitId`) VALUES
(1, 'XZD74429', 'dsaf', '1885233650', '{\"shoes\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":1},\"jaw_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"lips_thickness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"glass\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"eyebrown_forward\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"cheek_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"cheek_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eye_opening\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"moles\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"bag\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eye_color\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"nose_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"torso2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"mask\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_hole\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"nose_5\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"beard\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"accessory\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"pants\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"decals\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"arms\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"t-shirt\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":1},\"chimp_bone_lowering\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"hair\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eyebrown_high\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"cheek_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hat\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"chimp_bone_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"neck_thikness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"vest\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0}}', 'outfit-6-3260'),
(2, 'KHW90777', 'basic', '1885233650', '{\"vest\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_hole\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"shoes\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":1},\"eyebrown_forward\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"decals\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"pants\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":4},\"nose_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"arms\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hair\":{\"defaultItem\":0,\"texture\":28,\"defaultTexture\":0,\"item\":11},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"cheek_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"t-shirt\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":15},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"eyebrown_high\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"mask\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eye_color\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"moles\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"lips_thickness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"bag\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"cheek_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hat\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"accessory\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_5\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"cheek_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"beard\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"eye_opening\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"torso2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":50},\"neck_thikness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":2},\"glass\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0}}', 'outfit-1-1260'),
(3, 'KHW90777', 'basic', '1885233650', '{\"vest\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_hole\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"shoes\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":1},\"eyebrown_forward\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"decals\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"pants\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":4},\"nose_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"arms\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hair\":{\"defaultItem\":0,\"texture\":28,\"defaultTexture\":0,\"item\":11},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"cheek_3\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"t-shirt\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":15},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"eyebrown_high\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"mask\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":51},\"eye_color\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"moles\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"lips_thickness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"bag\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"cheek_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hat\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":0,\"item\":55},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"accessory\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_5\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"cheek_1\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"beard\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"eye_opening\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"torso2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":50},\"neck_thikness\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"nose_2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":2},\"glass\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":7},\"chimp_bone_lenght\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0}}', 'outfit-4-4838'),
(4, 'XSV37891', 'regular', '1885233650', '{\"ear\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"chimp_bone_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"defaultItem\":0,\"item\":4,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"chimp_hole\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"defaultItem\":0,\"item\":50,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"defaultItem\":0,\"item\":51,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"bracelet\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"chimp_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":6,\"defaultItem\":1,\"item\":12,\"defaultTexture\":0},\"face\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"defaultItem\":-1,\"item\":20,\"defaultTexture\":1},\"ageing\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"accessory\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"cheek_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"defaultItem\":1,\"item\":15,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"hair\":{\"texture\":28,\"defaultItem\":0,\"item\":11,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"glass\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0}}', 'outfit-3-4828');

-- --------------------------------------------------------

--
-- Table structure for table `player_vehicles`
--

CREATE TABLE `player_vehicles` (
  `id` int(11) NOT NULL,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_vehicles`
--

INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`) VALUES
(1, 'license:fb33c9806469e568ad91f93a30298af0e3d6c121', 'EUJ43251', 'tezeract', '1031562256', '{\"xenonColor\":255,\"engineHealth\":1000.0,\"modAerials\":-1,\"modCustomTiresR\":false,\"modFrontBumper\":-1,\"tankHealth\":1000.0,\"bodyHealth\":1000.0,\"modBackWheels\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modTurbo\":false,\"modAPlate\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"plate\":\"4UB680IM\",\"modHydrolic\":-1,\"dashboardColor\":0,\"pearlescentColor\":3,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modArmor\":-1,\"wheelColor\":0,\"modTank\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSmokeEnabled\":false,\"interiorColor\":0,\"modDial\":-1,\"modGrille\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modOrnaments\":-1,\"wheels\":7,\"fuelLevel\":100.0,\"modTrimA\":-1,\"modLivery\":-1,\"modXenon\":false,\"modEngine\":-1,\"modSpoilers\":-1,\"modCustomTiresF\":false,\"modHood\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modFrame\":-1,\"model\":1031562256,\"modBrakes\":-1,\"modArchCover\":-1,\"modSideSkirt\":-1,\"modSeats\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"dirtLevel\":13.0,\"color2\":38,\"modHorns\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"plateIndex\":0,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"color1\":1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1}', '4UB680IM', NULL, 'pillboxgarage', 98, 998, 986, 0, 0, 8216, NULL),
(2, 'license:d07b1ab8b582ee5e52d3611726e42968703aa9a1', 'BSS50310', 'futo', '2016857647', '{\"modTrunk\":-1,\"modSpoilers\":3,\"modTransmission\":2,\"plate\":\"1FB055UO\",\"modShifterLeavers\":-1,\"color1\":0,\"dirtLevel\":12.1,\"modAerials\":-1,\"modEngine\":3,\"modSmokeEnabled\":false,\"extras\":{\"1\":false},\"modSteeringWheel\":-1,\"modDial\":-1,\"xenonColor\":255,\"color2\":3,\"modBackWheels\":-1,\"modCustomTiresF\":false,\"dashboardColor\":0,\"tankHealth\":1000.0,\"modRearBumper\":2,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"model\":2016857647,\"tyreSmokeColor\":[255,255,255],\"modRoof\":0,\"modDashboard\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modExhaust\":2,\"modEngineBlock\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"pearlescentColor\":6,\"modFender\":-1,\"wheels\":5,\"modPlateHolder\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modFrontBumper\":2,\"modSeats\":-1,\"modTurbo\":1,\"modHood\":1,\"modSideSkirt\":0,\"modSuspension\":3,\"engineHealth\":1000.0,\"bodyHealth\":1000.0,\"modAirFilter\":-1,\"modArmor\":4,\"wheelColor\":156,\"modLivery\":7,\"modDoorSpeaker\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modFrame\":0,\"modWindows\":-1,\"plateIndex\":3,\"modBrakes\":2,\"modTrimA\":-1,\"fuelLevel\":64.3,\"modGrille\":1}', '1FB055UO', NULL, 'pillboxgarage', 99, 978, 977, 0, 0, 15512, NULL),
(3, 'license:559f6bf59f8c6b4735262b1aa94c4e591a54e5c6', 'XSV37891', 'elegy', '196747873', '{\"modSmokeEnabled\":false,\"modTransmission\":-1,\"modRightFender\":-1,\"plate\":\"4OE472DR\",\"modArchCover\":-1,\"modExhaust\":-1,\"plateIndex\":0,\"modTurbo\":false,\"modFrontWheels\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"extras\":[],\"bodyHealth\":1000.0,\"modTrunk\":-1,\"modFrontBumper\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"modCustomTiresR\":false,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"modLivery\":-1,\"xenonColor\":255,\"dashboardColor\":134,\"neonColor\":[255,0,255],\"modTank\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"dirtLevel\":9.0,\"modGrille\":-1,\"modCustomTiresF\":false,\"model\":196747873,\"modSuspension\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modShifterLeavers\":-1,\"wheelColor\":158,\"modDial\":-1,\"modTrimB\":-1,\"interiorColor\":63,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"modEngine\":-1,\"pearlescentColor\":61,\"color2\":84,\"modFender\":-1,\"fuelLevel\":100.0,\"wheels\":0,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"color1\":117,\"engineHealth\":1000.0,\"modHood\":-1,\"modHorns\":-1,\"tankHealth\":1000.0,\"modEngineBlock\":-1,\"modAerials\":-1,\"modDashboard\":-1}', '4OE472DR', NULL, NULL, 100, 1000, 1000, 0, 0, 42, NULL),
(4, 'license:d07b1ab8b582ee5e52d3611726e42968703aa9a1', 'BSS50310', 'sanctus', '1491277511', '{\"plateIndex\":0,\"neonColor\":[255,0,255],\"pearlescentColor\":27,\"color2\":26,\"modVanityPlate\":-1,\"wheelColor\":33,\"modGrille\":-1,\"modArmor\":4,\"color1\":0,\"modDoorSpeaker\":-1,\"modTransmission\":2,\"modXenon\":1,\"modHood\":-1,\"modHorns\":39,\"modSmokeEnabled\":false,\"modTurbo\":1,\"modRearBumper\":-1,\"modWindows\":-1,\"dirtLevel\":0.0,\"modTank\":-1,\"tankHealth\":4000.0,\"plate\":\"3JW643XH\",\"bodyHealth\":1000.0,\"engineHealth\":1000.0,\"xenonColor\":12,\"modBrakes\":2,\"interiorColor\":111,\"dashboardColor\":111,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"modPlateHolder\":-1,\"wheels\":6,\"modSteeringWheel\":-1,\"fuelLevel\":61.1,\"modRightFender\":-1,\"modFrame\":-1,\"modSuspension\":-1,\"modCustomTiresR\":false,\"modDashboard\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modLivery\":12,\"modHydrolic\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"modSeats\":-1,\"modOrnaments\":-1,\"model\":1491277511,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modRoof\":-1,\"modSpoilers\":8,\"modEngine\":3,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modAerials\":-1,\"modSideSkirt\":-1,\"modCustomTiresF\":false,\"modTrimB\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"extras\":[],\"modExhaust\":-1,\"modStruts\":-1,\"modFender\":-1,\"modSpeakers\":-1}', '3JW643XH', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 74, NULL),
(5, 'license:5998cc988ee79c862c045268a5b2800244c8d62a', 'SAJ02462', 'adder', '-1216765807', '{\"modTrunk\":-1,\"modFrame\":-1,\"modDial\":-1,\"plate\":\"2IA100FV\",\"modTransmission\":-1,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modHood\":-1,\"modArmor\":-1,\"modCustomTiresR\":false,\"modHydrolic\":-1,\"modFender\":-1,\"pearlescentColor\":111,\"modAerials\":-1,\"dashboardColor\":0,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"model\":-1216765807,\"modSmokeEnabled\":false,\"modRoof\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"extras\":{\"1\":true,\"12\":true,\"10\":false},\"modVanityPlate\":-1,\"modBrakes\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"dirtLevel\":7.0,\"modDashboard\":-1,\"modSeats\":-1,\"bodyHealth\":1000.0,\"wheelColor\":156,\"modHorns\":-1,\"interiorColor\":0,\"modBackWheels\":-1,\"modAPlate\":-1,\"color2\":12,\"modWindows\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"wheels\":7,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"xenonColor\":255,\"fuelLevel\":100.0,\"modLivery\":-1,\"tankHealth\":1000.0,\"modCustomTiresF\":false,\"modRightFender\":-1,\"modTrimA\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modEngine\":-1,\"modGrille\":-1,\"modArchCover\":-1,\"modTank\":-1,\"color1\":4}', '2IA100FV', NULL, 'pillboxgarage', 100, 1000, 1000, 1, 0, 1820, NULL),
(6, 'license:559f6bf59f8c6b4735262b1aa94c4e591a54e5c6', 'XSV37891', 'emerus', '1323778901', '{\"modFrontBumper\":-1,\"dirtLevel\":0.0,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modWindows\":-1,\"model\":1323778901,\"modDashboard\":-1,\"engineHealth\":1000.0,\"modHydrolic\":-1,\"neonEnabled\":[1,1,1,1],\"modFender\":1,\"modRightFender\":-1,\"plateIndex\":5,\"modSeats\":-1,\"modHood\":-1,\"modTransmission\":2,\"modTrimB\":-1,\"modFrame\":-1,\"modBrakes\":2,\"modExhaust\":3,\"modStruts\":-1,\"modLivery\":9,\"modAirFilter\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"interiorColor\":14,\"neonColor\":[15,3,255],\"windowTint\":1,\"extras\":{\"1\":true},\"modHorns\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modArchCover\":-1,\"modTrunk\":-1,\"modCustomTiresR\":false,\"modVanityPlate\":-1,\"wheels\":5,\"modSmokeEnabled\":1,\"plate\":\"7LU643BJ\",\"modSteeringWheel\":-1,\"modAerials\":-1,\"modTank\":-1,\"color2\":0,\"modRoof\":6,\"modEngineBlock\":-1,\"modSpoilers\":11,\"pearlescentColor\":3,\"modCustomTiresF\":1,\"modGrille\":4,\"xenonColor\":12,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modFrontWheels\":25,\"modSideSkirt\":11,\"modEngine\":3,\"tyreSmokeColor\":[1,1,1],\"modDial\":-1,\"color1\":14,\"modTurbo\":1,\"modAPlate\":-1,\"wheelColor\":149,\"modArmor\":4,\"tankHealth\":4000.0,\"bodyHealth\":1000.0,\"dashboardColor\":131,\"fuelLevel\":65.0}', '7LU643BJ', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 6461, NULL),
(7, 'license:5998cc988ee79c862c045268a5b2800244c8d62a', 'SAJ02462', 'emerus', '1323778901', '{\"modTrunk\":-1,\"modFrame\":-1,\"modDial\":-1,\"plate\":\"7WJ756UF\",\"modTransmission\":-1,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modHood\":-1,\"modArmor\":-1,\"modCustomTiresR\":false,\"modHydrolic\":-1,\"modFender\":-1,\"pearlescentColor\":3,\"modAerials\":-1,\"dashboardColor\":131,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"model\":1323778901,\"modSmokeEnabled\":false,\"modRoof\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"extras\":{\"1\":true},\"modVanityPlate\":-1,\"modBrakes\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"dirtLevel\":8.0,\"modDashboard\":-1,\"modSeats\":-1,\"bodyHealth\":1000.0,\"wheelColor\":0,\"modHorns\":-1,\"interiorColor\":14,\"modBackWheels\":-1,\"modAPlate\":-1,\"color2\":0,\"modWindows\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"wheels\":7,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"xenonColor\":255,\"fuelLevel\":100.0,\"modLivery\":-1,\"tankHealth\":1000.0,\"modCustomTiresF\":false,\"modRightFender\":-1,\"modTrimA\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modEngine\":-1,\"modGrille\":-1,\"modArchCover\":-1,\"modTank\":-1,\"color1\":111}', '7WJ756UF', NULL, 'pillboxgarage', 100, 1000, 1000, 1, 0, 1792, NULL),
(8, 'license:fb33c9806469e568ad91f93a30298af0e3d6c121', 'EUJ43251', 'comet2', '-1045541610', '{\"modExhaust\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modCustomTiresR\":false,\"modHorns\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"dirtLevel\":8.0,\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"interiorColor\":0,\"fuelLevel\":100.0,\"modEngine\":-1,\"dashboardColor\":0,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"modWindows\":-1,\"pearlescentColor\":111,\"wheelColor\":156,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modBrakes\":-1,\"modArchCover\":-1,\"plateIndex\":0,\"modShifterLeavers\":-1,\"extras\":[],\"modTurbo\":false,\"plate\":\"7SO944XQ\",\"color2\":30,\"modRoof\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modSmokeEnabled\":false,\"modSpeakers\":-1,\"modFender\":-1,\"bodyHealth\":1000.0,\"modTank\":-1,\"modCustomTiresF\":false,\"wheels\":0,\"modHood\":-1,\"xenonColor\":255,\"modDial\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"model\":-1045541610,\"modLivery\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modTrimA\":-1,\"tankHealth\":1000.0,\"windowTint\":-1,\"color1\":4,\"modTrimB\":-1}', '7SO944XQ', NULL, 'casinogarage', 70, 999, 999, 0, 0, 192, NULL),
(9, 'license:559f6bf59f8c6b4735262b1aa94c4e591a54e5c6', 'XSV37891', 'nero2', '1093792632', '{\"plate\":\"4NR010TU\",\"modSmokeEnabled\":false,\"modExhaust\":4,\"modShifterLeavers\":-1,\"tankHealth\":4000.0,\"modCustomTiresF\":false,\"modAPlate\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"modTrimB\":0,\"modTrunk\":-1,\"modWindows\":1,\"modPlateHolder\":-1,\"modRearBumper\":1,\"modDashboard\":1,\"pearlescentColor\":111,\"xenonColor\":6,\"modSpoilers\":4,\"tyreSmokeColor\":[255,255,255],\"modSeats\":2,\"engineHealth\":1000.0,\"modSideSkirt\":-1,\"modFender\":-1,\"modHood\":-1,\"modArmor\":4,\"modCustomTiresR\":false,\"modArchCover\":-1,\"modSuspension\":-1,\"modFrontWheels\":17,\"modRoof\":-1,\"modTrimA\":-1,\"modTank\":-1,\"neonEnabled\":[1,1,1,1],\"fuelLevel\":64.9,\"extras\":{\"1\":true},\"model\":1093792632,\"windowTint\":1,\"modEngineBlock\":0,\"modEngine\":3,\"modAerials\":2,\"modBackWheels\":-1,\"plateIndex\":5,\"modRightFender\":-1,\"modLivery\":-1,\"neonColor\":[255,150,0],\"modSteeringWheel\":13,\"color2\":111,\"dirtLevel\":9.1,\"modDial\":-1,\"wheelColor\":159,\"modHorns\":-1,\"wheels\":3,\"modBrakes\":2,\"modTurbo\":1,\"modFrame\":2,\"modFrontBumper\":1,\"dashboardColor\":65,\"modStruts\":-1,\"modXenon\":1,\"bodyHealth\":1000.0,\"modDoorSpeaker\":1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":1,\"color1\":14,\"modTransmission\":2,\"interiorColor\":93,\"modVanityPlate\":-1}', '4NR010TU', NULL, 'dumbogarage', 51, 994, 994, 1, 0, 12956, NULL),
(10, 'license:66161eab4be8e8b31f41b54997414a4990af8913', 'BRV83844', 'hustler', '600450546', '{\"plate\":\"4FQ037LU\",\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modCustomTiresF\":false,\"modAPlate\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"modTrunk\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"pearlescentColor\":0,\"xenonColor\":255,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"engineHealth\":963.1,\"modSideSkirt\":-1,\"modFender\":-1,\"modHood\":2,\"modArmor\":4,\"modCustomTiresR\":false,\"modArchCover\":-1,\"modSuspension\":3,\"modFrontWheels\":11,\"modRoof\":0,\"modTrimA\":-1,\"modTank\":-1,\"neonEnabled\":[false,false,false,false],\"fuelLevel\":96.7,\"extras\":{\"1\":true},\"model\":600450546,\"windowTint\":1,\"modEngineBlock\":-1,\"modEngine\":3,\"modAerials\":-1,\"modBackWheels\":-1,\"plateIndex\":1,\"modHorns\":-1,\"modLivery\":1,\"neonColor\":[255,0,255],\"color1\":0,\"color2\":111,\"dirtLevel\":13.1,\"tankHealth\":1000.0,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"wheels\":2,\"modFrontBumper\":1,\"modBrakes\":2,\"modFrame\":-1,\"modTurbo\":1,\"dashboardColor\":111,\"modXenon\":false,\"wheelColor\":0,\"bodyHealth\":959.1,\"modDial\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"interiorColor\":13,\"modTransmission\":2,\"modRightFender\":-1,\"modVanityPlate\":-1}', '4FQ037LU', NULL, NULL, 100, 1000, 1000, 0, 0, 1214, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player_warns`
--

CREATE TABLE `player_warns` (
  `id` int(11) NOT NULL,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stashitems`
--

CREATE TABLE `stashitems` (
  `id` int(11) NOT NULL,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stashitems`
--

INSERT INTO `stashitems` (`id`, `stash`, `items`) VALUES
(1, ' 2 | Drawer 1', '[]'),
(2, ' 2 | Drawer 99', '[]'),
(3, 'apartment32419', '[{\"image\":\"copper.png\",\"type\":\"item\",\"name\":\"copper\",\"slot\":1,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Copper\",\"amount\":109},{\"image\":\"ironplate.png\",\"type\":\"item\",\"name\":\"iron\",\"slot\":2,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Iron\",\"amount\":248},{\"image\":\"steel.png\",\"type\":\"item\",\"name\":\"steel\",\"slot\":3,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Steel\",\"amount\":223},{\"image\":\"aluminum.png\",\"type\":\"item\",\"name\":\"aluminum\",\"slot\":4,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Aluminium\",\"amount\":179},{\"image\":\"metalscrap.png\",\"type\":\"item\",\"name\":\"metalscrap\",\"slot\":5,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Metal Scrap\",\"amount\":196},{\"image\":\"rubber.png\",\"type\":\"item\",\"name\":\"rubber\",\"slot\":6,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Rubber\",\"amount\":19},{\"image\":\"glassplate.png\",\"type\":\"item\",\"name\":\"glass\",\"slot\":7,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Glass\",\"amount\":153},{\"image\":\"plastic.png\",\"type\":\"item\",\"name\":\"plastic\",\"slot\":8,\"weight\":100,\"info\":\"\",\"useable\":false,\"unique\":false,\"label\":\"Plastic\",\"amount\":54},{\"image\":\"cryptostick.png\",\"type\":\"item\",\"name\":\"cryptostick\",\"slot\":9,\"weight\":200,\"info\":\"\",\"useable\":true,\"unique\":true,\"label\":\"Crypto Stick\",\"amount\":1}]'),
(5, 'apartment34603', '[{\"weight\":1000,\"label\":\"Compact Rifle\",\"name\":\"weapon_compactrifle\",\"amount\":1,\"info\":{\"quality\":90.7000000000014,\"attachments\":[{\"component\":\"COMPONENT_COMPACTRIFLE_CLIP_02\",\"label\":\"Extended Clip\",\"type\":\"clip\",\"item\":\"compactrifle_extendedclip\"}],\"serie\":\"51NoH5Oe226RXvI\",\"ammo\":250},\"slot\":1,\"unique\":true,\"image\":\"weapon_compactrifle.png\",\"type\":\"weapon\",\"useable\":false},{\"weight\":1000,\"label\":\"Marksman Pistol\",\"name\":\"weapon_marksmanpistol\",\"amount\":1,\"info\":{\"quality\":76.75000000000353,\"serie\":\"87JVT4Yi640XHUr\",\"ammo\":0},\"slot\":2,\"unique\":true,\"image\":\"weapon_marksmanpistol.png\",\"type\":\"weapon\",\"useable\":false},{\"weight\":1000,\"label\":\"Special Carbine\",\"name\":\"weapon_specialcarbine\",\"amount\":1,\"info\":{\"ammo\":0,\"serie\":\"04uZT9nh305jGhk\",\"attachments\":[{\"component\":\"COMPONENT_AT_AR_SUPP_02\",\"label\":\"Suppressor\",\"item\":\"smg_suppressor\"}],\"quality\":37.00000000000955},\"slot\":3,\"unique\":true,\"image\":\"weapon_specialcarbine.png\",\"type\":\"weapon\",\"useable\":false},{\"weight\":1000,\"label\":\"AP Pistol\",\"name\":\"weapon_appistol\",\"amount\":1,\"info\":{\"ammo\":0,\"serie\":\"67gSi3dk841LUxt\",\"attachments\":[{\"component\":\"COMPONENT_AT_PI_SUPP\",\"label\":\"Suppressor\",\"item\":\"pistol_suppressor\"},{\"item\":\"appistol_extendedclip\",\"label\":\"Extended Clip\",\"type\":\"clip\",\"component\":\"COMPONENT_APPISTOL_CLIP_02\"}],\"quality\":65.35000000000525},\"slot\":4,\"unique\":true,\"image\":\"weapon_appistol.png\",\"type\":\"weapon\",\"useable\":false},{\"weight\":1000,\"label\":\"Sniper ammo\",\"name\":\"snp_ammo\",\"amount\":43,\"info\":[],\"slot\":5,\"unique\":false,\"image\":\"snp_ammo.png\",\"type\":\"item\",\"useable\":true},{\"weight\":1000,\"label\":\"Firework Launcher\",\"name\":\"weapon_firework\",\"amount\":1,\"info\":{\"serie\":\"29jFX1dh518mvmK\",\"ammo\":0},\"slot\":6,\"unique\":true,\"image\":\"weapon_firework.png\",\"type\":\"weapon\",\"useable\":false},{\"weight\":1000,\"label\":\"Rifle ammo\",\"name\":\"rifle_ammo\",\"amount\":5,\"info\":[],\"slot\":7,\"unique\":false,\"image\":\"rifle_ammo.png\",\"type\":\"item\",\"useable\":true},{\"weight\":1000,\"label\":\"Sniper Rifle\",\"name\":\"weapon_sniperrifle\",\"amount\":1,\"info\":{\"ammo\":21,\"serie\":\"97Ida7qN470kVRZ\",\"quality\":97.3000000000004},\"slot\":8,\"unique\":true,\"image\":\"weapon_sniperrifle.png\",\"type\":\"weapon\",\"useable\":false},{\"weight\":1000,\"label\":\"Minigun\",\"name\":\"weapon_minigun\",\"amount\":1,\"info\":{\"serie\":\"26SaG3uY478imNE\",\"ammo\":0},\"slot\":9,\"unique\":true,\"image\":\"weapon_minigun.png\",\"type\":\"weapon\",\"useable\":false}]');

-- --------------------------------------------------------

--
-- Table structure for table `trunkitems`
--

CREATE TABLE `trunkitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`),
  ADD KEY `discord` (`discord`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `crypto`
--
ALTER TABLE `crypto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gloveboxitems`
--
ALTER TABLE `gloveboxitems`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `houselocations`
--
ALTER TABLE `houselocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `house_plants`
--
ALTER TABLE `house_plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building` (`building`),
  ADD KEY `plantid` (`plantid`);

--
-- Indexes for table `lapraces`
--
ALTER TABLE `lapraces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raceid` (`raceid`);

--
-- Indexes for table `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occasionId` (`occasionid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `phone_invoices`
--
ALTER TABLE `phone_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `number` (`number`);

--
-- Indexes for table `phone_tweets`
--
ALTER TABLE `phone_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `last_updated` (`last_updated`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `player_boats`
--
ALTER TABLE `player_boats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_contacts`
--
ALTER TABLE `player_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_houses`
--
ALTER TABLE `player_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house` (`house`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `player_mails`
--
ALTER TABLE `player_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `outfitId` (`outfitId`);

--
-- Indexes for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plate` (`plate`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `player_warns`
--
ALTER TABLE `player_warns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stashitems`
--
ALTER TABLE `stashitems`
  ADD PRIMARY KEY (`stash`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `trunkitems`
--
ALTER TABLE `trunkitems`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto`
--
ALTER TABLE `crypto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gloveboxitems`
--
ALTER TABLE `gloveboxitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `houselocations`
--
ALTER TABLE `houselocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `house_plants`
--
ALTER TABLE `house_plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lapraces`
--
ALTER TABLE `lapraces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phone_invoices`
--
ALTER TABLE `phone_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_tweets`
--
ALTER TABLE `phone_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `player_boats`
--
ALTER TABLE `player_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_contacts`
--
ALTER TABLE `player_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_houses`
--
ALTER TABLE `player_houses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_mails`
--
ALTER TABLE `player_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `player_warns`
--
ALTER TABLE `player_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stashitems`
--
ALTER TABLE `stashitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trunkitems`
--
ALTER TABLE `trunkitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
