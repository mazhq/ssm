/*
Navicat MySQL Data Transfer

Source Server         : XXX
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : sac

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-03-31 13:36:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleId` int(11) NOT NULL AUTO_INCREMENT,
  `articleTitle` varchar(255) NOT NULL,
  `articleAuthor` int(11) NOT NULL,
  PRIMARY KEY (`articleId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '元旦节', '7');
INSERT INTO `article` VALUES ('2', '元宵节', '7');
INSERT INTO `article` VALUES ('3', '红楼梦', '8');
INSERT INTO `article` VALUES ('4', '西游记', '8');
INSERT INTO `article` VALUES ('5', '三国演义', '8');
INSERT INTO `article` VALUES ('6', '习近平18大发表', '9');
