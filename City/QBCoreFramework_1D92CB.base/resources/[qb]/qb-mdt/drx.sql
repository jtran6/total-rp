CREATE TABLE IF NOT EXISTS `mdt_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext DEFAULT NULL,
  `victim` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `jailTime` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `sentenced` varchar(255) DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `caller` varchar(255) DEFAULT NULL,
  `details` tinytext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `respond` tinytext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_profiles` (
  `identifier` varchar(255) NOT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `charname` varchar(255) DEFAULT NULL,
  `policegroup` varchar(255) DEFAULT NULL,
  `badgenumber` varchar(255) DEFAULT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext DEFAULT NULL,
  `victim` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `warrants` longtext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- THIS IS NOT CURRENTLY USED YET SO DO NOT UPLOAD THESE BELOW HERE ----------------------------------

ALTER TABLE `users` ADD COLUMN `wanted` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No';
ALTER TABLE `users` ADD COLUMN `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL;
ALTER TABLE `users` ADD COLUMN `jailTime` INT(11) NOT NULL DEFAULT 0;
ALTER TABLE `users` ADD COLUMN `image` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://pngimage.net/wp-content/uploads/2018/06/gta-online-character-png-9.png';
ALTER TABLE `owned_vehicles` ADD COLUMN `stolen` VARCHAR(255) NULL DEFAULT 'No';
ALTER TABLE `owned_vehicles` ADD COLUMN `image` LONGTEXT NULL DEFAULT NULL;