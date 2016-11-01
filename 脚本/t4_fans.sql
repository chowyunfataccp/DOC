/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-11-01 14:08:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t4_fans
-- ----------------------------
DROP TABLE IF EXISTS `t4_fans`;
CREATE TABLE `t4_fans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchantid` bigint(20) DEFAULT NULL COMMENT '广告商户',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户（微信）',
  PRIMARY KEY (`id`),
  KEY `fans_fk_merchantid` (`merchantid`),
  KEY `fans_fk_userid` (`userid`),
  CONSTRAINT `fans_fk_userid` FOREIGN KEY (`userid`) REFERENCES `t2_user` (`uid`),
  CONSTRAINT `fans_fk_merchantid` FOREIGN KEY (`merchantid`) REFERENCES `t3_merchant` (`merchantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='粉丝表';
