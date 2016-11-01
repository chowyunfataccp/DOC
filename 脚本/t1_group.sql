/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-11-01 14:08:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t1_group
-- ----------------------------
DROP TABLE IF EXISTS `t1_group`;
CREATE TABLE `t1_group` (
  `gid` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(6) DEFAULT NULL COMMENT '组名称',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分组表';
