/*
Navicat MySQL Data Transfer

Source Server         : Data
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : dormitory

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-05-29 15:45:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for checkdormitory
-- ----------------------------
DROP TABLE IF EXISTS `checkdormitory`;
CREATE TABLE `checkdormitory` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `DorID` char(20) DEFAULT NULL,
  `isquilt` char(5) DEFAULT NULL,
  `isgarbage` char(5) DEFAULT NULL,
  `isdesk` char(5) DEFAULT NULL,
  `isbalcony` char(5) DEFAULT NULL,
  `checkDate` char(20) DEFAULT NULL,
  `score` char(10) DEFAULT NULL,
  `remark` char(20) DEFAULT NULL,
  PRIMARY KEY (`cId`),
  KEY `DorID` (`DorID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkdormitory
-- ----------------------------
INSERT INTO `checkdormitory` VALUES ('1', '238', 'Y', 'Y', 'Y', 'Y', '2015-05-27 16:55:46', '10', '');
INSERT INTO `checkdormitory` VALUES ('2', '239', 'N', 'Y', 'Y', 'Y', '2015-05-27 16:56:21', '10', '');
INSERT INTO `checkdormitory` VALUES ('3', '240', 'N', 'Y', 'N', 'Y', '2015-05-27 16:56:35', '10', '');
INSERT INTO `checkdormitory` VALUES ('4', '241', 'N', 'N', 'N', 'Y', '2015-05-27 16:56:43', '10', '');
INSERT INTO `checkdormitory` VALUES ('5', '238', 'N', 'Y', 'Y', 'Y', '2015-05-27 16:57:12', '9', '');
INSERT INTO `checkdormitory` VALUES ('6', '239', 'N', 'N', 'Y', 'Y', '2015-05-27 16:57:21', '6', '');
INSERT INTO `checkdormitory` VALUES ('7', '241', 'N', 'N', 'N', 'Y', '2015-05-27 16:57:37', '4', '');

-- ----------------------------
-- Table structure for dormitory
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory` (
  `dId` int(11) NOT NULL AUTO_INCREMENT,
  `dorID` char(11) DEFAULT NULL,
  `gread` char(10) DEFAULT NULL,
  PRIMARY KEY (`dId`),
  KEY `dorID` (`dorID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO `dormitory` VALUES ('1', '238', '10');
INSERT INTO `dormitory` VALUES ('2', '239', '10');
INSERT INTO `dormitory` VALUES ('3', '240', '9');
INSERT INTO `dormitory` VALUES ('4', '241', '8');
