/*
Navicat MySQL Data Transfer

Source Server         : cookii
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : coolki

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-11-09 14:51:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cName` varchar(20) NOT NULL,
  `psd` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('admin', 'admin', 't00df551a583a87f4e9.jpg', null, null);
INSERT INTO `customer` VALUES ('lisi', '465411', 't00df551a583a87f4e9.jpg', null, null);
INSERT INTO `customer` VALUES ('zhangsan', '123456', 't00df551a583a87f4e9.jpg', null, null);

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsID` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(20) DEFAULT NULL,
  `gShow` varchar(50) DEFAULT NULL,
  `gType` varchar(10) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `gStatus` varchar(10) DEFAULT NULL,
  `baseNub` varchar(20) DEFAULT NULL,
  `pollCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`goodsID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'WeLoop小黑智能手表', 't0183789d683e56e94a.jpg', '运动休闲', '300.00', '可购买', '100000', null);
INSERT INTO `goods` VALUES ('2', 'VIDIT微型伴随式摄像机', 't01e7b9e93b23c2751c.jpg', '娱乐生活', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('3', '坚果智能家庭影院', 't0195e9c68f1b8ec258.jpg', '娱乐生活', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('4', '索尼全高清3D投影仪索尼全高清3D投影仪', 't011a2a3eef03bc028f.jpg', '娱乐生活', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('5', '糖护士手机血糖仪', 't018a60ac3440c11e29.jpg', '健康医疗', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('6', '自由轮电动独轮车', 't01b3c1cdfae4eae31b.jpg', '娱乐生活', '3200.00', '可购买', '100000', null);
INSERT INTO `goods` VALUES ('7', '大酋长游戏主机', 't01d4c4520bade6250b.jpg', '娱乐生活', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('8', '晶天雷智拍防丢小音盒', 't01c7b3421560b37084.jpg', '娱乐生活', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('9', 'Withings智能无线血压仪', 't01b85651c7e1b71ba7.jpg', '健康医疗', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('10', 'GeckoEye摄像头', 't010fc11fa373fba1a4.jpg', '智能家居', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('11', '品胜无线音乐路由器', 't01549b144ce3c8dce0.jpg', '娱乐生活', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('12', '惠普智能手表', 't018f3553dcc3cfb56e.jpg', '运动休闲', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('13', 'Ghost 智能空中机器人', 't017d857321a6541dcc.jpg', '娱乐生活', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('14', 'Myo智能臂带', 't016d38bfee3bd4e89a.jpg', '运动休闲', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('15', 'Kepler 智能燃气报警器', 't01c3c3d1091949277f.jpg', '智能家居', '600.00', '可购买', '100000', null);
INSERT INTO `goods` VALUES ('16', 'LifeSmart智能家居关爱组合', 't01387c73ba189f606e.jpg', '智能家居', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('17', 'Star.21 智能健康手环', 't01b48cca38997c7a39.jpg', '健康医疗', null, '创意中', '0', null);
INSERT INTO `goods` VALUES ('18', '物品详情', 't0143c805c9d49cb48a.jpg', null, null, null, null, null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
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

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `polls`
-- ----------------------------
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

-- ----------------------------
-- Records of polls
-- ----------------------------
INSERT INTO `polls` VALUES ('lisi', '1', '1');
INSERT INTO `polls` VALUES ('lisi', '2', '1');
INSERT INTO `polls` VALUES ('lisi', '3', '1');
INSERT INTO `polls` VALUES ('lisi', '4', '1');
INSERT INTO `polls` VALUES ('lisi', '6', '1');
INSERT INTO `polls` VALUES ('lisi', '7', '1');
INSERT INTO `polls` VALUES ('lisi', '8', '1');
INSERT INTO `polls` VALUES ('lisi', '9', '1');
INSERT INTO `polls` VALUES ('lisi', '10', '1');
INSERT INTO `polls` VALUES ('lisi', '11', '1');
INSERT INTO `polls` VALUES ('lisi', '12', '1');
INSERT INTO `polls` VALUES ('lisi', '13', '1');
INSERT INTO `polls` VALUES ('lisi', '14', '1');
INSERT INTO `polls` VALUES ('zhangsan', '1', '1');
INSERT INTO `polls` VALUES ('zhangsan', '2', null);
INSERT INTO `polls` VALUES ('zhangsan', '3', null);
INSERT INTO `polls` VALUES ('zhangsan', '4', null);
INSERT INTO `polls` VALUES ('zhangsan', '5', null);
INSERT INTO `polls` VALUES ('zhangsan', '6', null);
INSERT INTO `polls` VALUES ('zhangsan', '7', null);
INSERT INTO `polls` VALUES ('zhangsan', '8', null);
INSERT INTO `polls` VALUES ('zhangsan', '9', null);
INSERT INTO `polls` VALUES ('zhangsan', '10', null);
INSERT INTO `polls` VALUES ('zhangsan', '11', null);
INSERT INTO `polls` VALUES ('zhangsan', '12', null);
INSERT INTO `polls` VALUES ('zhangsan', '13', null);
INSERT INTO `polls` VALUES ('zhangsan', '14', null);
