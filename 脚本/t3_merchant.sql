/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-11-01 14:08:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t3_merchant
-- ----------------------------
DROP TABLE IF EXISTS `t3_merchant`;
CREATE TABLE `t3_merchant` (
  `merchantid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '广告商户名称',
  `userid` bigint(20) DEFAULT NULL COMMENT '管理员(微信)',
  `sceneid` int(5) DEFAULT NULL COMMENT '带参二维码的参数值',
  `ticket` varchar(100) DEFAULT NULL COMMENT '接口中换取二维码的ticket',
  `groupid` bigint(20) DEFAULT NULL COMMENT '所属组',
  PRIMARY KEY (`merchantid`),
  KEY `merchant_fk_userid` (`userid`),
  KEY `merchant_fk_groupid` (`groupid`),
  CONSTRAINT `merchant_fk_groupid` FOREIGN KEY (`groupid`) REFERENCES `t1_group` (`gid`),
  CONSTRAINT `merchant_fk_userid` FOREIGN KEY (`userid`) REFERENCES `t2_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COMMENT='广告商户表';
