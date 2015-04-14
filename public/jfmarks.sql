/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-10-27 22:55:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `jfmarks`
-- ----------------------------
DROP TABLE IF EXISTS `jfmarks`;
CREATE TABLE `jfmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jfcost` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_idi` int(11) DEFAULT NULL,
  `discription` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `markuser_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jfmarks
-- ----------------------------
