/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2014-01-02 22:10:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `commission_configs`
-- ----------------------------
DROP TABLE IF EXISTS `commission_configs`;
CREATE TABLE `commission_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_style_id` int(11) DEFAULT NULL,
  `proprotion` float DEFAULT NULL,
  `for_time` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commission_configs
-- ----------------------------
INSERT INTO `commission_configs` VALUES ('1', '1', '1', '2014-01', '7', '2014-01-02 03:19:34');
INSERT INTO `commission_configs` VALUES ('2', '2', '1', '2014-01', '7', '2014-01-02 03:19:34');
INSERT INTO `commission_configs` VALUES ('3', '3', '1', '2014-01', '7', '2014-01-02 03:19:34');
INSERT INTO `commission_configs` VALUES ('4', '4', '1', '2014-01', '7', '2014-01-02 03:19:34');

-- ----------------------------
-- Table structure for `commission_styles`
-- ----------------------------
DROP TABLE IF EXISTS `commission_styles`;
CREATE TABLE `commission_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL COMMENT '提成类型',
  `gran` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commission_styles
-- ----------------------------
INSERT INTO `commission_styles` VALUES ('1', '项目', '类型', '月度');
INSERT INTO `commission_styles` VALUES ('2', '项3', '类3', '月3');
INSERT INTO `commission_styles` VALUES ('3', '项1', '类1', '月1');
INSERT INTO `commission_styles` VALUES ('4', '项2', '类2', '月2');
