/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : mycount

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2018-04-03 10:44:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `conunt_user`
-- ----------------------------
DROP TABLE IF EXISTS `conunt_user`;
CREATE TABLE `conunt_user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of conunt_user
-- ----------------------------
INSERT INTO `conunt_user` VALUES ('1', 'admin2', 'admin');
INSERT INTO `conunt_user` VALUES ('2', 'mi', 'admin');
INSERT INTO `conunt_user` VALUES ('3', 'wan', 'admin');

-- ----------------------------
-- Table structure for `count_book`
-- ----------------------------
DROP TABLE IF EXISTS `count_book`;
CREATE TABLE `count_book` (
  `bid` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `conunt_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count_book
-- ----------------------------
INSERT INTO `count_book` VALUES ('120', '1月账本', '1');
INSERT INTO `count_book` VALUES ('129', '2月账本', '1');
INSERT INTO `count_book` VALUES ('134', '4月', '1');
INSERT INTO `count_book` VALUES ('135', '1', '3');
INSERT INTO `count_book` VALUES ('140', 'qq', '1');
INSERT INTO `count_book` VALUES ('141', 'a', '1');
INSERT INTO `count_book` VALUES ('142', 'asdasd', '1');
INSERT INTO `count_book` VALUES ('143', '第一个账本', '2');

-- ----------------------------
-- Table structure for `count_fund`
-- ----------------------------
DROP TABLE IF EXISTS `count_fund`;
CREATE TABLE `count_fund` (
  `fid` bigint(255) NOT NULL AUTO_INCREMENT,
  `fund` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count_fund
-- ----------------------------
INSERT INTO `count_fund` VALUES ('1', '现金', '100');
INSERT INTO `count_fund` VALUES ('2', '储蓄卡', '25');
INSERT INTO `count_fund` VALUES ('3', '信用卡', '255');
INSERT INTO `count_fund` VALUES ('4', '支付宝', '244');
INSERT INTO `count_fund` VALUES ('5', '微信钱包', '366');
INSERT INTO `count_fund` VALUES ('6', '借出款', '77');
INSERT INTO `count_fund` VALUES ('7', '欠款', '88');
INSERT INTO `count_fund` VALUES ('8', '贷款a', '6');
INSERT INTO `count_fund` VALUES ('9', 'lala', '5');
INSERT INTO `count_fund` VALUES ('10', 'llllll', '23');

-- ----------------------------
-- Table structure for `count_info`
-- ----------------------------
DROP TABLE IF EXISTS `count_info`;
CREATE TABLE `count_info` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay` varchar(255) DEFAULT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `bid` bigint(20) DEFAULT NULL,
  `tid` bigint(255) DEFAULT NULL,
  `fid` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `bid` (`bid`),
  KEY `tid` (`tid`),
  CONSTRAINT `bid` FOREIGN KEY (`bid`) REFERENCES `count_book` (`bid`),
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `count_type` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count_info
-- ----------------------------
INSERT INTO `count_info` VALUES ('93', '33元', 'Sat Nov 11 2017', null, null, null, '7');
INSERT INTO `count_info` VALUES ('121', '46元', 'Sat Nov 25 2017', null, '120', null, '7');
INSERT INTO `count_info` VALUES ('122', '22元', 'Fri Nov 17 2017', '嗯嗯', '120', '2', '7');
INSERT INTO `count_info` VALUES ('123', '55元', 'Fri Nov 10 2017', '嗯a', '120', '2', '7');
INSERT INTO `count_info` VALUES ('124', '34元', 'Sat Nov 11 2017', null, '135', '2', '7');
INSERT INTO `count_info` VALUES ('172', '12元', 'Thu Nov 16 2017', 'ad', '120', '2', '1');
INSERT INTO `count_info` VALUES ('173', '11元', 'Fri Nov 03 2017', 'asd', '120', '3', '1');
INSERT INTO `count_info` VALUES ('174', '22元', 'Sat Nov 11 2017', '吃饭', '120', '3', '3');
INSERT INTO `count_info` VALUES ('175', '12元', 'Fri Nov 10 2017', null, '120', '3', '5');
INSERT INTO `count_info` VALUES ('178', '34元', 'Sat Nov 18 2017', null, '120', '2', '5');
INSERT INTO `count_info` VALUES ('179', '23元', 'Fri Nov 17 2017', null, '120', null, '5');
INSERT INTO `count_info` VALUES ('180', '11元', 'Thu Nov 16 2017', 'aa', '120', '3', '5');
INSERT INTO `count_info` VALUES ('181', '33元', 'Sat Nov 11 2017', 'ad', '120', '12', '7');
INSERT INTO `count_info` VALUES ('182', '112元', 'Sat Nov 11 2017', 'sdasdasd', '120', '3', '9');
INSERT INTO `count_info` VALUES ('183', '11元', 'Sat Nov 04 2017', 'asdasdasdasdasdas', '120', '3', '7');
INSERT INTO `count_info` VALUES ('184', '13元', 'Sat Nov 11 2017', 'a', '120', '3', '7');
INSERT INTO `count_info` VALUES ('185', '699元', 'Thu Nov 30 2017', 'ijjnmm', '120', '13', '8');

-- ----------------------------
-- Table structure for `count_type`
-- ----------------------------
DROP TABLE IF EXISTS `count_type`;
CREATE TABLE `count_type` (
  `tid` bigint(255) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count_type
-- ----------------------------
INSERT INTO `count_type` VALUES ('2', '居住');
INSERT INTO `count_type` VALUES ('3', '娱乐');
INSERT INTO `count_type` VALUES ('12', '教育');
INSERT INTO `count_type` VALUES ('13', '健身');
