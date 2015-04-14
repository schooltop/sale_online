/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-09-15 13:34:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `work_salaries`
-- ----------------------------
DROP TABLE IF EXISTS `work_salaries`;
CREATE TABLE `work_salaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) DEFAULT NULL,
  `post_salary` int(11) DEFAULT NULL,
  `probation_salary` int(11) DEFAULT NULL,
  `benefit` int(11) DEFAULT NULL,
  `accumulation_fund` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_salaries
-- ----------------------------
INSERT INTO `work_salaries` VALUES ('1', '1', '6000', null, '100', null, null, null);
