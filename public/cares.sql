/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-12-05 23:24:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cares`
-- ----------------------------
DROP TABLE IF EXISTS `cares`;
CREATE TABLE `cares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) DEFAULT NULL,
  `form_time` datetime DEFAULT NULL,
  `need_attendance_days` float DEFAULT NULL,
  `meal` float DEFAULT NULL,
  `award` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cares
-- ----------------------------

-- ----------------------------
-- Table structure for `commission_configs`
-- ----------------------------
DROP TABLE IF EXISTS `commission_configs`;
CREATE TABLE `commission_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_style_id` int(11) DEFAULT NULL,
  `proportion` float DEFAULT NULL,
  `for_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commission_configs
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commission_styles
-- ----------------------------

-- ----------------------------
-- Table structure for `leave_states`
-- ----------------------------
DROP TABLE IF EXISTS `leave_states`;
CREATE TABLE `leave_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_states
-- ----------------------------
INSERT INTO `leave_states` VALUES ('1', '2', null, null, null, null, '2013-12-05 07:20:57');
INSERT INTO `leave_states` VALUES ('2', '2', null, null, null, null, '2013-12-05 07:21:04');
INSERT INTO `leave_states` VALUES ('3', '2', null, null, null, null, '2013-12-05 07:21:11');
INSERT INTO `leave_states` VALUES ('4', '2', null, null, null, null, '2013-12-05 07:25:44');
INSERT INTO `leave_states` VALUES ('5', '2', null, null, null, null, '2013-12-05 07:28:59');
INSERT INTO `leave_states` VALUES ('6', '2', null, null, null, '2013-12-05 07:31:27', '2013-12-05 07:31:27');
INSERT INTO `leave_states` VALUES ('7', '2', null, null, null, '2013-12-05 07:33:22', '2013-12-05 07:33:22');
INSERT INTO `leave_states` VALUES ('8', '2', null, null, null, '2013-12-05 07:33:29', '2013-12-05 07:33:29');
INSERT INTO `leave_states` VALUES ('9', '2', null, null, null, '2013-12-05 07:33:37', '2013-12-05 07:33:37');
INSERT INTO `leave_states` VALUES ('10', '2', null, null, null, '2013-12-05 07:49:28', '2013-12-05 07:49:28');
INSERT INTO `leave_states` VALUES ('11', '2', null, null, null, '2013-12-05 07:52:05', '2013-12-05 07:52:05');
INSERT INTO `leave_states` VALUES ('12', '2', null, null, null, '2013-12-05 07:53:37', '2013-12-05 07:53:37');
INSERT INTO `leave_states` VALUES ('13', '2', null, null, null, '2013-12-05 07:54:49', '2013-12-05 07:54:49');
INSERT INTO `leave_states` VALUES ('14', '2', null, null, null, '2013-12-05 08:19:23', '2013-12-05 08:19:23');
INSERT INTO `leave_states` VALUES ('15', '2', null, null, null, '2013-12-05 08:19:32', '2013-12-05 08:19:32');

-- ----------------------------
-- Table structure for `leave_styles`
-- ----------------------------
DROP TABLE IF EXISTS `leave_styles`;
CREATE TABLE `leave_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_styles
-- ----------------------------
INSERT INTO `leave_styles` VALUES ('1', '事假');
INSERT INTO `leave_styles` VALUES ('2', '病假');
INSERT INTO `leave_styles` VALUES ('3', '产假');
INSERT INTO `leave_styles` VALUES ('4', '婚假');
INSERT INTO `leave_styles` VALUES ('5', '年假');
INSERT INTO `leave_styles` VALUES ('6', '丧假');
INSERT INTO `leave_styles` VALUES ('7', '陪护假');

-- ----------------------------
-- Table structure for `leaves`
-- ----------------------------
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `leave_style_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `pass_state` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaves
-- ----------------------------
INSERT INTO `leaves` VALUES ('2', '7', '1', '2013-11-28 10:44:47', '2013-11-28 10:45:45', '1', '111', '1', null, '2013-11-28 02:17:22', '2013-12-04 10:26:59');
INSERT INTO `leaves` VALUES ('3', '7', '22', '2013-11-28 13:48:51', '2013-11-28 13:48:51', '1', '123', '0', null, '2013-11-28 05:58:29', '2013-11-28 05:58:29');
INSERT INTO `leaves` VALUES ('5', '7', '2', '2013-11-28 14:18:46', '2013-11-28 14:18:46', '1', '111', '0', null, '2013-11-28 06:18:53', '2013-11-28 06:18:53');
INSERT INTO `leaves` VALUES ('6', '7', '23', '2013-11-28 14:20:03', '2013-11-28 14:20:03', '1', '3131', '0', null, '2013-11-28 06:20:11', '2013-11-28 06:20:11');
INSERT INTO `leaves` VALUES ('8', '7', '2', '2013-11-28 14:23:14', '2013-11-28 14:23:14', '1', '3', '0', null, '2013-11-28 06:23:22', '2013-11-28 06:23:22');
INSERT INTO `leaves` VALUES ('10', '7', '2', '2013-12-03 21:43:13', '2013-12-03 21:43:13', '1', '3232', '1', null, '2013-12-03 13:43:21', '2013-12-03 13:43:21');

-- ----------------------------
-- Table structure for `remarks`
-- ----------------------------
DROP TABLE IF EXISTS `remarks`;
CREATE TABLE `remarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_style_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `commission` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text,
  `commission_config_id` int(11) DEFAULT NULL,
  `performances` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remarks
-- ----------------------------
