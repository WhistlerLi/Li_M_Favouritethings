# ************************************************************
# Sequel Pro SQL dump
# Version 5438
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.31-log)
# Database: favourite
# Generation Time: 2020-11-06 14:38:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `list`;

CREATE TABLE `list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `nationality` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;

INSERT INTO `list` (`id`, `name`, `type`, `nationality`, `image`, `description`)
VALUES
	(1,'Coffee','Starbucks','Americano','1.jpg','The first Starbucks opens. The name comes from Herman Melville’s Moby Dick, a classic American novel about the 19th century whaling industry. The seafaring name seems appropriate for a store that imports the world’s finest coffees to the cold, thirsty people of Seattle.\n'),
	(2,'Music','Classical','China','2.jpg','Jazz and blues are American inventions. But most Americans were happy to get their classical music from Europe. After all, classical music is the name for European music from the late eighteenth and early nineteenth centuries.'),
	(3,'Travel','Asian','Japan','3.jpg','Asia is the abbreviation of Asia Fine Asia. The word \"sub - Asian\" is derived from the ancient and ancient times of the ancient and the ancient of the flash of the word. The mean Oriental sunrise. Asia is the host country of the world\'s ancient civilization, India and Babylon. It is the place of Buddhism, Islam and Christianity, and has a great influence on the development of world culture.');

/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
