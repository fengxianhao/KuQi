/*
SQLyog v10.2 
MySQL - 5.7.10-log : Database - kuqi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kuqi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kuqi`;

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `cName` varchar(20) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `gComment` varchar(400) DEFAULT NULL,
  `commData` date DEFAULT NULL,
  PRIMARY KEY (`cName`,`goodsID`),
  KEY `FK_comments2` (`goodsID`),
  CONSTRAINT `FK_comments` FOREIGN KEY (`cName`) REFERENCES `customer` (`cName`),
  CONSTRAINT `FK_comments2` FOREIGN KEY (`goodsID`) REFERENCES `goods` (`goodsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`cName`,`goodsID`,`gComment`,`commData`) values ('lisi',1,'怎么不带海拔高度和气温呢！ ','2016-11-08');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cName` varchar(20) NOT NULL,
  `psd` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT 't00df551a583a87f4e9.jpg',
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`cName`,`psd`,`pic`,`phone`,`address`,`role`) values ('admin','admin','t00df551a583a87f4e9.jpg',NULL,'湖北孝感','admin'),('chao','123456789','t00df551a583a87f4e9.jpg',NULL,NULL,NULL),('fengxianhao','fengxianhao','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('geekChen','963213','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('geekwang','0123','t00df551a583a87f4e9.jpg','12345678911','湖北孝感',NULL),('jindesheng','jindesheng','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('libo','321','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('lisi','465411','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('moyuan','woshifxh','t00df551a583a87f4e9.jpg',NULL,NULL,NULL),('wangcheng','wangzheng','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('xiachao','123456','t00df551a583a87f4e9.jpg',NULL,NULL,NULL),('xiangda','xiongda','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('xiasong','xiasong','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('xiaxia','123456','t00df551a583a87f4e9.jpg',NULL,NULL,NULL),('zhangsan','123456','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL),('zhanyupeng','zhanyupeng','t00df551a583a87f4e9.jpg',NULL,'湖北孝感',NULL);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goodsID` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(20) DEFAULT NULL,
  `gShow` varchar(50) DEFAULT NULL,
  `gType` varchar(10) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `gStatus` varchar(10) DEFAULT NULL,
  `baseNub` varchar(20) DEFAULT NULL,
  `pollCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`goodsID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goodsID`,`gName`,`gShow`,`gType`,`price`,`gStatus`,`baseNub`,`pollCount`) values (1,'WeLoop小黑智能手表','t0183789d683e56e94a.jpg','运动休闲',NULL,'创意中','0',2),(2,'VIDIT微型伴随式摄像机','t01e7b9e93b23c2751c.jpg','娱乐生活',NULL,'创意中','0',2),(3,'坚果智能家庭影院','t0195e9c68f1b8ec258.jpg','娱乐生活',NULL,'创意中','0',2),(4,'索尼全高清3D投影仪','t011a2a3eef03bc028f.jpg','娱乐生活',NULL,'创意中','0',2),(5,'糖护士手机血糖仪','t018a60ac3440c11e29.jpg','健康医疗',NULL,'创意中','0',2),(6,'自由轮电动独轮车','t01b3c1cdfae4eae31b.jpg','娱乐生活',NULL,'创意中','0',2),(7,'大酋长游戏主机','t01d4c4520bade6250b.jpg','娱乐生活',NULL,'创意中','0',2),(8,'晶天雷智拍防丢小音盒','t01c7b3421560b37084.jpg','娱乐生活',NULL,'创意中','0',2),(9,'Withings智能无线血压仪','t01b85651c7e1b71ba7.jpg','健康医疗',NULL,'创意中','0',2),(10,'GeckoEye摄像头','t010fc11fa373fba1a4.jpg','智能家居',NULL,'创意中','0',2),(11,'品胜无线音乐路由器','t01549b144ce3c8dce0.jpg','娱乐生活',NULL,'创意中','0',2),(12,'惠普智能手表','t018f3553dcc3cfb56e.jpg','运动休闲',NULL,'创意中','0',2),(13,'Ghost 智能空中机器人','t017d857321a6541dcc.jpg','娱乐生活',NULL,'创意中','0',2),(14,'Myo智能臂带','t016d38bfee3bd4e89a.jpg','运动休闲',NULL,'创意中','0',2),(15,'Kepler 智能燃气报警器','t01c3c3d1091949277f.jpg','智能家居',NULL,'创意中','0',2),(16,'LifeSmart智能家居关爱组合','t01387c73ba189f606e.jpg','智能家居',NULL,'创意中','0',2),(17,'Star.21 智能健康手环','t01b48cca38997c7a39.jpg','健康医疗',NULL,'创意中','0',2);

/*Table structure for table `goods2` */

DROP TABLE IF EXISTS `goods2`;

CREATE TABLE `goods2` (
  `id` int(11) NOT NULL,
  `imgAddress` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods2` */

insert  into `goods2`(`id`,`imgAddress`,`price`,`name`) values (0,'8888.jpg','3000','华为'),(1,'t0113645192065f59a4.jpg','1299','360N4S6'),(2,'999.jpg','1299','小米N4S'),(3,'101.jpg','1299','华为NAaS'),(4,'8888.jpg','1299','三星SA2h'),(5,'8888.jpg','1299','360N4S'),(6,'101.jpg','5680','诺比亚'),(7,'101.jpg','4600','步步高'),(8,'t0113645192065f59a4.jpg','4984','360N4S2'),(9,'101.jpg','700','步步高'),(10,'8888.jpg','1299','华为NAaS'),(11,'t0113645192065f59a4.jpg','4600','小米N4S'),(12,'999.jpg','5680','三星SA2h'),(13,'8888.jpg','4894','360N4S5'),(14,'t0113645192065f59a4.jpg','2342','步步高'),(15,'8888.jpg','1241','小米N4S'),(16,'101.jpg','4600','三星SA2h'),(17,'t0113645192065f59a4.jpg','2342','360N4S'),(18,'999.jpg','4894','步步高'),(19,'101.jpg','1299','360N4S'),(20,'8888.jpg','4600','三星SA2h');

/*Table structure for table `gouwuche` */

DROP TABLE IF EXISTS `gouwuche`;

CREATE TABLE `gouwuche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `gshow` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `gouwuche` */

insert  into `gouwuche`(`id`,`gName`,`price`,`num`,`gshow`) values (42,'360N4S5','4894.00',1,'8888.jpg');

/*Table structure for table `manage` */

DROP TABLE IF EXISTS `manage`;

CREATE TABLE `manage` (
  `goodsID` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(20) DEFAULT NULL,
  `gShow` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`goodsID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `manage` */

insert  into `manage`(`goodsID`,`gName`,`gShow`,`price`) values (10,'GeckoEye摄像头','t010fc11fa373fba1a4.jpg','2300'),(11,'品胜无线音乐路由器','t01549b144ce3c8dce0.jpg','364'),(12,'惠普智能手表','t018f3553dcc3cfb56e.jpg','999'),(13,'Ghost 智能空中机器人','t017d857321a6541dcc.jpg','3000'),(14,'Myo智能臂带','t016d38bfee3bd4e89a.jpg','685'),(15,'Kepler 智能燃气报警器','t01c3c3d1091949277f.jpg','642'),(16,'LifeSmart智能家居关爱组合','t01387c73ba189f606e.jpg','3000'),(19,'5ry','1.jpg','456'),(22,'小米note4','t0113645192065f59a4.jpg','7000');

/*Table structure for table `orderdetails` */

DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `orderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `goodsID` int(11) DEFAULT NULL,
  `nub` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderDetailID`),
  KEY `FK_Relationship_1` (`goodsID`),
  KEY `FK_Relationship_2` (`orderID`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`goodsID`) REFERENCES `goods` (`goodsID`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderdetails` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(20) DEFAULT NULL,
  `ordersDate` date DEFAULT NULL,
  `amount` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `FK_Relationship_3` (`cName`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`cName`) REFERENCES `customer` (`cName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

/*Table structure for table `polls` */

DROP TABLE IF EXISTS `polls`;

CREATE TABLE `polls` (
  `cName` varchar(20) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `poll` int(11) DEFAULT NULL,
  PRIMARY KEY (`cName`,`goodsID`),
  KEY `FK_polls2` (`goodsID`),
  CONSTRAINT `FK_polls` FOREIGN KEY (`cName`) REFERENCES `customer` (`cName`),
  CONSTRAINT `FK_polls2` FOREIGN KEY (`goodsID`) REFERENCES `goods` (`goodsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `polls` */

insert  into `polls`(`cName`,`goodsID`,`poll`) values ('lisi',1,1),('lisi',2,1),('lisi',3,1),('lisi',4,1),('lisi',6,1),('lisi',7,1),('lisi',8,1),('lisi',9,1),('lisi',10,1),('lisi',11,1),('lisi',12,1),('lisi',13,1),('lisi',14,1),('lisi',15,1),('lisi',16,1),('lisi',17,1),('zhangsan',1,1),('zhangsan',2,1),('zhangsan',3,1),('zhangsan',4,1),('zhangsan',5,1),('zhangsan',6,1),('zhangsan',7,1),('zhangsan',8,1),('zhangsan',9,1),('zhangsan',10,1),('zhangsan',11,1),('zhangsan',12,1),('zhangsan',13,1),('zhangsan',14,1),('zhangsan',15,1),('zhangsan',16,1),('zhangsan',17,1);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `passWord` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`userName`,`passWord`) values (1,'manager','666666');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
