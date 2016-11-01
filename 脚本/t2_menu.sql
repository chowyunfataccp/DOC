/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-11-01 14:08:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t2_menu
-- ----------------------------
DROP TABLE IF EXISTS `t2_menu`;
CREATE TABLE `t2_menu` (
  `menuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(100) DEFAULT NULL COMMENT '菜单链接地址',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级菜单',
  `groupid` bigint(20) DEFAULT NULL COMMENT '所属组',
  `order` int(11) DEFAULT NULL COMMENT '排序（一级菜单就是从左到右，二级菜单就是从上到下）',
  PRIMARY KEY (`menuid`),
  KEY `menu_fk_groupid` (`groupid`),
  KEY `menu_fk_pid` (`pid`),
  CONSTRAINT `menu_fk_pid` FOREIGN KEY (`pid`) REFERENCES `t2_menu` (`menuid`),
  CONSTRAINT `menu_fk_groupid` FOREIGN KEY (`groupid`) REFERENCES `t1_group` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';
