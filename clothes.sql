# ************************************************************
# Sequel Pro SQL dump
# バージョン 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: ivgz2rnl5rh7sphb.chr7pe7iynqr.eu-west-1.rds.amazonaws.com (MySQL 5.6.27-log)
# データベース: t8vudl5fa1fhbj05
# 作成時刻: 2016-04-08 03:03:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ clothes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clothes`;

CREATE TABLE `clothes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;

INSERT INTO `clothes` (`id`, `name`)
VALUES
	(1,'プレミアムリネンシャツ'),
	(2,'ボーダークルーネックT'),
	(3,'イージーショートパンツ'),
	(4,'プリーツスカート');

/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ sizes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sizes`;

CREATE TABLE `sizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;

INSERT INTO `sizes` (`id`, `size`)
VALUES
	(1,'XS'),
	(2,'S'),
	(3,'M'),
	(4,'L'),
	(5,'XL');

/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
