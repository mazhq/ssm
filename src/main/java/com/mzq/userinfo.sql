/*
Navicat MySQL Data Transfer

Source Server         : XXX
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : sac

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-03-30 15:01:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '罗文', '123456');
INSERT INTO `userinfo` VALUES ('2', '罗鹏', '123456');
INSERT INTO `userinfo` VALUES ('3', '蔡晓荣', '123');
INSERT INTO `userinfo` VALUES ('4', 'lzq', '123');
INSERT INTO `userinfo` VALUES ('5', 'zbq', '123');
