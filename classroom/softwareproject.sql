/*
Navicat MySQL Data Transfer

Source Server         : Data
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : softwareproject

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-05-29 15:44:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for applyroom
-- ----------------------------
DROP TABLE IF EXISTS `applyroom`;
CREATE TABLE `applyroom` (
  `aID` int(11) NOT NULL AUTO_INCREMENT,
  `applyID` int(11) NOT NULL,
  `applyName` varchar(50) NOT NULL,
  `applyStartTime` datetime NOT NULL,
  `applyEndTime` datetime NOT NULL,
  `applyReason` text NOT NULL,
  `classroomID` varchar(50) NOT NULL,
  `isdispose` int(3) NOT NULL DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`aID`),
  KEY `classroomID` (`classroomID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applyroom
-- ----------------------------
INSERT INTO `applyroom` VALUES ('1', '10001', '???', '2015-05-29 17:20:28', '2015-05-27 17:21:10', 'coding', 'N202', '1', '');

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `cID` int(11) NOT NULL AUTO_INCREMENT,
  `classroomID` varchar(50) NOT NULL,
  `classroomStatusID` char(20) NOT NULL,
  PRIMARY KEY (`cID`),
  KEY `classroomStatusID` (`classroomStatusID`),
  KEY `classroomID` (`classroomID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('1', 'N201', '0');
INSERT INTO `classroom` VALUES ('2', 'N202', '0');
INSERT INTO `classroom` VALUES ('3', 'N203', '0');
INSERT INTO `classroom` VALUES ('4', 'N204', '0');
INSERT INTO `classroom` VALUES ('5', 'N205', '0');

-- ----------------------------
-- Table structure for classroomstatus
-- ----------------------------
DROP TABLE IF EXISTS `classroomstatus`;
CREATE TABLE `classroomstatus` (
  `sID` int(11) NOT NULL AUTO_INCREMENT,
  `classroomStatusID` char(20) NOT NULL,
  `classroomStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `classroomStatusID` (`classroomStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroomstatus
-- ----------------------------
INSERT INTO `classroomstatus` VALUES ('1', '0', '正常');
INSERT INTO `classroomstatus` VALUES ('2', '1', '占用');
