CREATE DATABASE IF NOT EXISTS `alarbiyahotelmanagement` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE alarbiyahotelmanagement;

drop table if exists `country`
drop table if exists INGREDIENT
drop table if exists INGREDIENT_CATEGORY
drop table if exists INGREDIENT_LANGUAGE_GROUP
drop table if exists LANGUAGE
drop table if exists UNIT
drop table if exists UNIT_CATEGORY
drop table if exists UNIT_LANGUAGE
drop table if exists UNIT_LANGUAGE_GROUP

CREATE TABLE `country` (
  `COUNTRY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `COUNTRY_IMAGE_URL` varchar(255) DEFAULT NULL,
  `COUNTRY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

CREATE TABLE `ingredient` (
  `INGREDIENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `INGREDIENT_DESCRIPTION` varchar(255) DEFAULT NULL,
  `INGREDIENT_NAME` varchar(255) DEFAULT NULL,
  `INGREDIENT_STATUS` varchar(255) DEFAULT NULL,
  `MEASUREMENT_UNIT` varchar(255) DEFAULT NULL,
  `ingredientCategory_INGREDIENT_CATEGORY_ID` bigint(20) DEFAULT NULL,
  `ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`INGREDIENT_ID`),
  KEY `FK_jwfi8v1mjmuhgmu3nf3hsb0em` (`ingredientCategory_INGREDIENT_CATEGORY_ID`),
  KEY `FK_tfdeduxxqu46ktg7kbv02ky41` (`ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID`),
  CONSTRAINT `FK_jwfi8v1mjmuhgmu3nf3hsb0em` FOREIGN KEY (`ingredientCategory_INGREDIENT_CATEGORY_ID`) REFERENCES `ingredient_category` (`INGREDIENT_CATEGORY_ID`),
  CONSTRAINT `FK_tfdeduxxqu46ktg7kbv02ky41` FOREIGN KEY (`ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID`) REFERENCES `ingredient_language_group` (`INGREDIENT_LANGUAGE_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ingredient_category` (
  `INGREDIENT_LANGUAGE_NAME` varchar(255) DEFAULT NULL,
  `INGREDIENT_CATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `INGREDIENT_NAME` varchar(255) DEFAULT NULL,
  `INGREDIENT_STATUS` varchar(255) DEFAULT NULL,
  `LANGUAGE_ID` bigint(20) NOT NULL,
  `ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`INGREDIENT_CATEGORY_ID`),
  KEY `FK_o5lofrqsubbkq6aajvko70q63` (`ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID`),
  KEY `FK_anhat49ugbbr3jrgtcrr34tyc` (`LANGUAGE_ID`),
  CONSTRAINT `FK_anhat49ugbbr3jrgtcrr34tyc` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_o5lofrqsubbkq6aajvko70q63` FOREIGN KEY (`ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID`) REFERENCES `ingredient_language_group` (`INGREDIENT_LANGUAGE_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ingredient_language_group` (
  `INGREDIENT_LANGUAGE_GROUP_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`INGREDIENT_LANGUAGE_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



create table COUNTRY (COUNTRY_ID bigint not null auto_increment, COUNTRY_CODE varchar(255), COUNTRY_IMAGE_URL varchar(255), COUNTRY_NAME varchar(255), primary key (COUNTRY_ID))
create table INGREDIENT (INGREDIENT_ID bigint not null auto_increment, INGREDIENT_DESCRIPTION varchar(255), INGREDIENT_NAME varchar(255), INGREDIENT_STATUS varchar(255), MEASUREMENT_UNIT varchar(255), ingredientCategory_INGREDIENT_CATEGORY_ID bigint, ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID bigint, primary key (INGREDIENT_ID))
create table INGREDIENT_CATEGORY (INGREDIENT_LANGUAGE_NAME varchar(255), INGREDIENT_CATEGORY_ID bigint not null auto_increment, INGREDIENT_NAME varchar(255), INGREDIENT_STATUS varchar(255), LANGUAGE_ID bigint not null, ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID bigint, primary key (INGREDIENT_CATEGORY_ID))
create table INGREDIENT_LANGUAGE_GROUP (INGREDIENT_LANGUAGE_GROUP_ID bigint not null auto_increment, primary key (INGREDIENT_LANGUAGE_GROUP_ID))
create table LANGUAGE (LANGUAGE_ID bigint not null auto_increment, LANGUAGE_NAME varchar(255), LANGUAGE_STATUS varchar(255), country_COUNTRY_ID bigint, primary key (LANGUAGE_ID))
create table UNIT (UNIT_ID bigint not null auto_increment, MEASUREMENT_UNIT varchar(255), UNIT_DESCRIPTION varchar(255), UNIT_NAME varchar(255), UNIT_STATUS varchar(255), unitCategory_UNIT_CATEGORY_ID bigint, unitLanguageGroup_UNIT_LANGUAGE_GROUP_ID bigint, primary key (UNIT_ID))
create table UNIT_CATEGORY (UNIT_CATEGORY_ID bigint not null auto_increment, CATEGORY_NAME varchar(255), CATEGORY_STATUS varchar(255), primary key (UNIT_CATEGORY_ID))
create table UNIT_LANGUAGE (UNIT_LANGUAGE_NAME varchar(255), LANGUAGE_ID bigint not null, unitLanguageGroup_UNIT_LANGUAGE_GROUP_ID bigint, primary key (LANGUAGE_ID))
create table UNIT_LANGUAGE_GROUP (UNIT_LANGUAGE_GROUP_ID bigint not null auto_increment, primary key (UNIT_LANGUAGE_GROUP_ID))
alter table INGREDIENT add constraint FK_jwfi8v1mjmuhgmu3nf3hsb0em foreign key (ingredientCategory_INGREDIENT_CATEGORY_ID) references INGREDIENT_CATEGORY (INGREDIENT_CATEGORY_ID)
alter table INGREDIENT add constraint FK_tfdeduxxqu46ktg7kbv02ky41 foreign key (ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID) references INGREDIENT_LANGUAGE_GROUP (INGREDIENT_LANGUAGE_GROUP_ID)
alter table INGREDIENT_CATEGORY add constraint FK_o5lofrqsubbkq6aajvko70q63 foreign key (ingredientLanguageGroup_INGREDIENT_LANGUAGE_GROUP_ID) references INGREDIENT_LANGUAGE_GROUP (INGREDIENT_LANGUAGE_GROUP_ID)
alter table INGREDIENT_CATEGORY add constraint FK_anhat49ugbbr3jrgtcrr34tyc foreign key (LANGUAGE_ID) references LANGUAGE (LANGUAGE_ID)
alter table LANGUAGE add constraint FK_fcoh91d683d13yrqochbboo0f foreign key (country_COUNTRY_ID) references COUNTRY (COUNTRY_ID)
alter table UNIT add constraint FK_csn0ul9ap3emkpg011gni4451 foreign key (unitCategory_UNIT_CATEGORY_ID) references UNIT_CATEGORY (UNIT_CATEGORY_ID)
alter table UNIT add constraint FK_5won926dlvj55xmw3ewqpqf97 foreign key (unitLanguageGroup_UNIT_LANGUAGE_GROUP_ID) references UNIT_LANGUAGE_GROUP (UNIT_LANGUAGE_GROUP_ID)
alter table UNIT_LANGUAGE add constraint FK_rcf3f1x3h53pe2i1860jfu1di foreign key (unitLanguageGroup_UNIT_LANGUAGE_GROUP_ID) references UNIT_LANGUAGE_GROUP (UNIT_LANGUAGE_GROUP_ID)
alter table UNIT_LANGUAGE add constraint FK_2wikfqip05c3bxgd9agb4nkl8 foreign key (LANGUAGE_ID) references LANGUAGE (LANGUAGE_ID)