/*Al arbiya hotel Management*/

CREATE DATABASE `alarbiyahotelmanagement` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `countryImageUrl` varchar(255) DEFAULT NULL,
  `countryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



CREATE TABLE `language` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `LANGUAGE_STATUS` bit(1) DEFAULT NULL,
  `LANGUAGE_NAME` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9la8w90qak6uker9ce7446chr` (`country_id`),
  CONSTRAINT `FK_9la8w90qak6uker9ce7446chr` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `country` VALUES('1', "url", "India");

INSERT INTO `language` VALUES('1', true, "Hindi",'1');