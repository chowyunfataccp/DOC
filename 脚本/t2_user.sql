/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-11-01 14:08:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t2_user
-- ----------------------------
DROP TABLE IF EXISTS `t2_user`;
CREATE TABLE `t2_user` (
  `uid` bigint(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(6) DEFAULT NULL COMMENT '昵称',
  `sex` int(2) DEFAULT NULL COMMENT '性别,0未知 1:男 2:女',
  `gid` bigint(11) DEFAULT NULL COMMENT '所属组',
  `openid` varchar(50) DEFAULT NULL COMMENT '来自微信接口',
  PRIMARY KEY (`uid`),
  KEY `user_fk_gid` (`gid`),
  CONSTRAINT `user_fk_gid` FOREIGN KEY (`gid`) REFERENCES `t1_group` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户表';
