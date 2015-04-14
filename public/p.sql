/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-01-30 10:56:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  `vipprice` float DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `bean` varchar(255) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'nihao', null, null, '2', '2', '12', 'Car', '1', null);
INSERT INTO `products` VALUES ('2', 'ceshi', null, null, '2', '2', '13', 'Spa', '1', null);
INSERT INTO `products` VALUES ('3', 'VIP快捷通道贵宾接送机', null, 'nihaoma', '3', '3', '10', null, null, null);
INSERT INTO `products` VALUES ('4', '棋牌室', null, null, '3', '3', '11', null, null, null);
INSERT INTO `products` VALUES ('5', '专业雪茄品鉴', null, null, '3', '3', '12', null, null, null);
INSERT INTO `products` VALUES ('6', 'SPA美体', null, null, '3', '3', '13', null, null, null);
INSERT INTO `products` VALUES ('7', '精致餐饮', null, null, '3', '3', '14', null, null, null);
INSERT INTO `products` VALUES ('8', '计时客房', null, null, '3', '3', '15', null, null, null);
INSERT INTO `products` VALUES ('9', '商务会议', null, null, '3', '3', '16', null, null, null);
INSERT INTO `products` VALUES ('10', '传统文化', null, null, '3', '3', '17', null, null, null);
INSERT INTO `products` VALUES ('11', '健身', null, null, '3', '3', '18', null, null, null);
INSERT INTO `products` VALUES ('12', '泳池', null, null, '3', '3', '19', null, null, null);
INSERT INTO `products` VALUES ('13', '形象塑造', null, null, '3', '3', '20', null, null, null);
INSERT INTO `products` VALUES ('14', '商务秘书', null, null, '3', '3', '21', null, null, null);
INSERT INTO `products` VALUES ('15', '全天候安保', null, null, '3', '3', '22', null, null, null);
INSERT INTO `products` VALUES ('16', '机场免税商品预定', null, null, '3', '3', '23', null, null, null);

-- ----------------------------
-- Table structure for `vip_details`
-- ----------------------------
DROP TABLE IF EXISTS `vip_details`;
CREATE TABLE `vip_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_style_id` int(11) DEFAULT NULL,
  `vip_service_id` int(11) DEFAULT NULL,
  `timenum` int(11) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  `discription` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip_details
-- ----------------------------
INSERT INTO `vip_details` VALUES ('1', '1', '1', '1', '年', '1年', null, null, null);
INSERT INTO `vip_details` VALUES ('2', '1', '2', '1', '享受', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('3', '1', '3', '5', '次', '5次', null, null, null);
INSERT INTO `vip_details` VALUES ('4', '1', '4', '5', '张', '5张', null, null, null);
INSERT INTO `vip_details` VALUES ('5', '1', '5', '0', '无', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('6', '1', '6', '0', '无', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('7', '1', '7', '0', '无', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('8', '1', '8', '0', '无', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('9', '2', '1', '1', '年', '1年', null, null, null);
INSERT INTO `vip_details` VALUES ('10', '2', '2', '1', '享受', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('11', '2', '3', '10', '次', '10次', null, null, null);
INSERT INTO `vip_details` VALUES ('12', '2', '9', '5', '张', '5张', null, null, null);
INSERT INTO `vip_details` VALUES ('13', '2', '5', '5', '次', '5次', null, null, null);
INSERT INTO `vip_details` VALUES ('14', '2', '6', '5', '次', '5次', null, null, null);
INSERT INTO `vip_details` VALUES ('15', '2', '7', '0', '无', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('16', '2', '8', '0', '无', '1为享受，0为不享受', null, null, null);
INSERT INTO `vip_details` VALUES ('17', '3', '1', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('18', '3', '2', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('19', '3', '3', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('20', '3', '9', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('21', '3', '5', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('22', '3', '6', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('23', '3', '7', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('24', '3', '8', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('25', '4', '1', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('26', '4', '2', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('27', '4', '3', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('28', '4', '9', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('29', '4', '5', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('30', '4', '6', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('31', '4', '7', null, null, null, null, null, null);
INSERT INTO `vip_details` VALUES ('32', '4', '8', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `vip_records`
-- ----------------------------
DROP TABLE IF EXISTS `vip_records`;
CREATE TABLE `vip_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_id` int(11) DEFAULT NULL,
  `vip_service_id` int(11) DEFAULT NULL,
  `timenum` int(11) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  `input_user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `from_time` datetime DEFAULT NULL,
  `to_time` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `line_item_id` int(11) DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip_records
-- ----------------------------

-- ----------------------------
-- Table structure for `vip_services`
-- ----------------------------
DROP TABLE IF EXISTS `vip_services`;
CREATE TABLE `vip_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_style_id` int(11) DEFAULT NULL,
  `price` float(100,0) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip_services
-- ----------------------------
INSERT INTO `vip_services` VALUES ('1', '1', null, '1', '会籍有效期', null);
INSERT INTO `vip_services` VALUES ('2', '1', null, '1', '享受T2MAX会员价', null);
INSERT INTO `vip_services` VALUES ('3', '1', null, '1', '免费贵宾通道快捷服务\r\n含休息区免费餐饮，上网。', null);
INSERT INTO `vip_services` VALUES ('4', '1', '299', '1', '299体验卡', null);
INSERT INTO `vip_services` VALUES ('5', '1', null, '1', '免费使用会议室\r\n每次60分钟', null);
INSERT INTO `vip_services` VALUES ('6', '1', '0', '1', '免费使用棋牌室\r\n每次60分钟', null);
INSERT INTO `vip_services` VALUES ('7', '1', null, '1', '分店优惠政策', null);
INSERT INTO `vip_services` VALUES ('8', '1', null, '1', '指定四星或五星酒店\r\n需提前预定', null);
INSERT INTO `vip_services` VALUES ('9', '1', '499', '1', '499体验卡', null);
