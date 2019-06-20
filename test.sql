/*
Navicat MySQL Data Transfer

Source Server         : vv
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-06-20 13:32:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `username` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `mine` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `mine` varchar(255) DEFAULT NULL,
  `scan` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `praise` varchar(255) DEFAULT '1' COMMENT '1',
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '11', '111', '11', '11', '1', '1', null);
INSERT INTO `post` VALUES ('2', '是是', '111', '11', '11', '1', '1', null);
INSERT INTO `post` VALUES ('3', '哈哈哈', '120', '20190617 10:20:55', 'hello word', '1', '1', null);
INSERT INTO `post` VALUES ('4', '是是', '111', '11', '11', null, null, null);
INSERT INTO `post` VALUES ('5', '是是', '111', '11', '11', null, null, null);
INSERT INTO `post` VALUES ('6', '交易区', '??', '111', '11', null, null, null);
INSERT INTO `post` VALUES ('7', '测试1', '11', '11', '11', '1', '1', null);
INSERT INTO `post` VALUES ('8', '测试2', '22', '22', '22', '2', '2', null);
INSERT INTO `post` VALUES ('9', '测试3', '33', '33', '33', '33', '3', null);
INSERT INTO `post` VALUES ('10', '测试4', '44', '44', '44', '44', '44', null);
INSERT INTO `post` VALUES ('11', '测试5', '55', '55', '55', '55', '55', null);
INSERT INTO `post` VALUES ('12', '测试6', '66', '66', '66', '66', '66', null);
INSERT INTO `post` VALUES ('13', '测试7', '77', '77', '77', '77', '77', null);
INSERT INTO `post` VALUES ('14', '测试8', '88', '88', '88', '88', null, null);
INSERT INTO `post` VALUES ('15', '测试9', '99', '99', '99', '99', '99', null);
INSERT INTO `post` VALUES ('16', '测试10', '10', '10', '01', '10', '01', null);
INSERT INTO `post` VALUES ('17', '测试11', '11', '11', '11', '11', '11', null);
INSERT INTO `post` VALUES ('18', '测试12', '22', '22', '22', '22', '22', null);
INSERT INTO `post` VALUES ('19', '测试发帖', '1', '2019-06-18-15:27:54', '测试发帖', null, null, null);
INSERT INTO `post` VALUES ('20', '测试发帖', '', '2019-06-18-15:28:44', '测试发帖', null, null, null);
INSERT INTO `post` VALUES ('21', '测试发帖11', '', '2019-06-18-15:31:11', '111111', null, null, null);
INSERT INTO `post` VALUES ('22', '111', '', '2019-06-18-15:33:38', '', null, null, null);
INSERT INTO `post` VALUES ('23', '1111', '', '2019-06-18-15:33:44', '', null, null, null);
INSERT INTO `post` VALUES ('24', '测试发帖', '', '2019-06-18-15:44:07', 'aaa', null, null, null);
INSERT INTO `post` VALUES ('25', '测试发帖12-', 'mao', '2019-06-18-15:44:35', '111111', null, null, null);
INSERT INTO `post` VALUES ('26', '是打算', 'mao', '2019-06-18-16:05:31', '是是是', null, null, null);
INSERT INTO `post` VALUES ('27', '11111', 'mao', '2019-06-19-08:48:03', '', null, null, null);
INSERT INTO `post` VALUES ('28', '测试发帖测试', 'mao', '2019-06-19-09:18:00', 'aaa', null, null, null);
INSERT INTO `post` VALUES ('29', '测试发帖', 'mao', '2019-06-19-09:23:50', 'aaaa', null, null, null);
INSERT INTO `post` VALUES ('30', '测试发帖', 'mao', '2019-06-19-09:25:43', 'aaaa', null, null, '');
INSERT INTO `post` VALUES ('31', '111', 'mao', '2019-06-19-09:28:36', '11111', null, null, null);
INSERT INTO `post` VALUES ('32', '第一', 'mao', '2019-06-19-09:42:05', '第一', null, null, null);
INSERT INTO `post` VALUES ('33', '测试帖子顺序', 'mao', '2019-06-19-10:20:51', '顺序', null, null, null);
INSERT INTO `post` VALUES ('34', 'test', 'mao', '2019-06-19-11:17:16', 'test', null, null, null);
INSERT INTO `post` VALUES ('35', null, null, null, null, 'csac', null, null);
INSERT INTO `post` VALUES ('365', null, null, null, null, 'csac', null, null);
INSERT INTO `post` VALUES ('366', 'ee1e12e', 'aaa', '2019-06-20-11:17:22', 'qewqeqweqweqweqwewqeqwe', null, null, '1');

-- ----------------------------
-- Table structure for replier
-- ----------------------------
DROP TABLE IF EXISTS `replier`;
CREATE TABLE `replier` (
  `postid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of replier
-- ----------------------------
INSERT INTO `replier` VALUES (null, '111', '12', 'aaa', '2000-01-23 00:00:00');
INSERT INTO `replier` VALUES (null, 'cc', null, 'cc', '0000-00-00 00:00:00');
INSERT INTO `replier` VALUES (null, 'mao', null, '测试测试', '2019-06-19 15:54:05');
INSERT INTO `replier` VALUES (null, 'mao', null, '测试测试', '2019-06-19 15:53:44');
INSERT INTO `replier` VALUES (null, 'mao', null, '测试测试', '2019-06-19 16:06:40');
INSERT INTO `replier` VALUES (null, 'mao', null, '测试回复', '2019-06-19 15:45:41');
INSERT INTO `replier` VALUES (null, 'mao', null, '测试回复', '2019-06-19 15:41:43');
INSERT INTO `replier` VALUES ('34', 'mao', null, '测试', '2019-06-19 16:12:41');
INSERT INTO `replier` VALUES ('34', 'mao', null, '测试', '2019-06-19 16:12:45');
INSERT INTO `replier` VALUES ('34', 'mao', null, '测·', '2019-06-19 16:12:54');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `signature` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (null, null, null, null, '1', '123', '120', '123', null, null);
INSERT INTO `users` VALUES (null, null, null, null, '2', '123213@124.com', '111', '111', null, null);
INSERT INTO `users` VALUES (null, null, null, null, '3', '111@124.com', '121', '111', null, null);
INSERT INTO `users` VALUES (null, null, null, null, '4', 'mao@gmail.com', 'mao', '9264', null, null);
INSERT INTO `users` VALUES (null, null, null, null, '5', '123@qq.com', '11', '111', null, null);
INSERT INTO `users` VALUES (null, null, null, null, '6', '123456@qq.com', 'aaa', '123456', null, null);
