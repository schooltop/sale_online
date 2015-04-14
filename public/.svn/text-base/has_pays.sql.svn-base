/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-02-04 12:16:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `has_pays`
-- ----------------------------
DROP TABLE IF EXISTS `has_pays`;
CREATE TABLE `has_pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of has_pays
-- ----------------------------
INSERT INTO `has_pays` VALUES ('1', '未支付');
INSERT INTO `has_pays` VALUES ('2', '现金支付');
INSERT INTO `has_pays` VALUES ('3', '网上支付');
INSERT INTO `has_pays` VALUES ('4', 'VIP卡支付');

-- ----------------------------
-- Table structure for `line_items`
-- ----------------------------
DROP TABLE IF EXISTS `line_items`;
CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_style_id` int(11) DEFAULT NULL,
  `totime` datetime DEFAULT NULL,
  `fromtime` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `situation_id` int(11) DEFAULT NULL,
  `has_pay_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line_items
-- ----------------------------
INSERT INTO `line_items` VALUES ('2', '3', '2', null, '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('3', '4', '1', null, '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('4', '4', '2', null, '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('5', '5', '3', null, '3', '9', null, null, '2013-01-22 17:26:07', null, null, null, null, null);
INSERT INTO `line_items` VALUES ('6', '6', '3', null, '1', '3', null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('7', '7', '3', null, '1', '3', null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('8', '8', '3', null, '2', '6', null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('9', '9', '3', null, '1', '3', null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('10', '10', '3', null, '1', '3', '10', '2', null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('11', '11', '3', '3', '2', '6', '10', '2', null, null, '2013-01-22 03:03:42', '2013-01-22 03:03:42', null, null);
INSERT INTO `line_items` VALUES ('12', '12', '3', '3', '1', '3', '10', '2', null, null, '2013-01-24 03:38:33', '2013-01-24 03:38:33', null, null);
INSERT INTO `line_items` VALUES ('13', '13', '3', '3', '2', '6', '10', '2', null, null, '2013-01-25 04:49:41', '2013-01-25 04:49:41', null, null);
INSERT INTO `line_items` VALUES ('14', '14', '13', '3', '2', '6', '20', '3', '2013-02-01 00:00:00', '2013-02-01 06:04:00', '2013-02-01 06:04:00', '2013-02-01 06:04:00', null, null);
INSERT INTO `line_items` VALUES ('15', '15', '13', '3', '3', '9', '20', '3', '2013-03-01 00:00:00', '2013-02-01 06:05:31', '2013-02-01 06:05:31', '2013-02-01 06:05:31', null, null);
INSERT INTO `line_items` VALUES ('16', '17', '3', '3', '1', '3', '10', '2', '2013-02-01 00:00:00', '2013-02-01 07:26:05', '2013-02-01 07:26:05', '2013-02-01 07:26:05', null, null);
INSERT INTO `line_items` VALUES ('17', '18', '3', '3', '1', '3', '10', '2', '2013-02-01 00:00:00', '2013-02-01 07:31:14', '2013-02-01 07:31:14', '2013-02-01 07:31:14', null, null);
INSERT INTO `line_items` VALUES ('18', '19', '3', '3', '1', '3', '10', '2', '2013-02-01 00:00:00', '2013-02-01 07:46:04', '2013-02-01 07:46:04', '2013-02-01 07:46:04', null, null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `production_id` int(11) DEFAULT NULL,
  `is_sure` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `leave_message` text,
  `state_id` int(11) DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `has_pay_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3', null, '7', null, null, null, null, null, 'check', null, null, null, '2013-01-11 07:10:14', '2013-01-11 07:10:14', 'li', '12222222', '1072@111.com', null, null);
INSERT INTO `orders` VALUES ('4', null, '7', null, null, null, null, null, 'cc', null, null, null, '2013-01-11 07:23:16', '2013-01-11 07:23:16', '23', '3232', '324', null, null);
INSERT INTO `orders` VALUES ('5', '1108', '7', null, null, null, null, null, 'check', null, null, null, '2013-01-15 09:59:29', '2013-01-15 09:59:29', '123123', '123123', '1072@111.com', '13401188533', null);
INSERT INTO `orders` VALUES ('6', null, '7', null, null, null, null, null, 'check', null, null, null, '2013-01-15 10:26:53', '2013-01-15 10:26:53', '123', '3213', '12312', null, null);
INSERT INTO `orders` VALUES ('7', null, '7', null, null, null, null, null, 'check', null, null, null, '2013-01-16 02:56:45', '2013-01-16 02:56:45', '123', '123123', '312', null, null);
INSERT INTO `orders` VALUES ('8', null, '7', null, null, null, null, null, 'check', null, null, null, '2013-01-16 06:00:43', '2013-01-16 06:00:43', '123', '123', '123', '123', null);
INSERT INTO `orders` VALUES ('9', null, '7', null, null, null, null, null, 'check', null, null, null, '2013-01-16 06:07:30', '2013-01-16 06:07:30', '123', '1231231', '3123', '1231', null);
INSERT INTO `orders` VALUES ('10', '9001', '7', null, null, null, null, null, 'check', null, null, null, '2013-01-17 06:25:08', '2013-01-17 06:25:08', '123', '12312', '123', '123', null);
INSERT INTO `orders` VALUES ('11', '711', '7', null, null, null, null, null, 'check', null, null, null, '2013-01-22 03:03:42', '2013-01-22 03:03:42', '123123', '3123@fde', '12312@qw', '123', null);
INSERT INTO `orders` VALUES ('12', '712', '7', null, null, null, null, null, 'check', null, '3', null, '2013-01-24 03:38:33', '2013-01-24 03:38:34', 'lijiangfeng', 'nihao', 'jamst@123.com', '11111111111', null);
INSERT INTO `orders` VALUES ('13', 'ORDER0000013', '7', null, null, null, null, null, 'check', null, '6', null, '2013-01-25 04:49:41', '2013-01-25 04:49:41', '23', 'e21ee', '323', '1231', null);
INSERT INTO `orders` VALUES ('14', 'ORDER0000014', null, null, null, null, null, null, 'check', null, '6', null, '2013-02-01 06:04:00', '2013-02-01 06:04:00', '1', '213', '2', '3', null);
INSERT INTO `orders` VALUES ('15', 'ORDER0000015', null, null, null, null, null, null, 'cc', null, '9', null, '2013-02-01 06:05:31', '2013-02-01 06:05:31', '23', '123', '2', '2', null);
INSERT INTO `orders` VALUES ('16', 'ORDER0000016', null, null, null, null, null, null, 'cc', null, '0', null, '2013-02-01 06:05:59', '2013-02-01 06:06:00', '23', '123', '2', '2', null);
INSERT INTO `orders` VALUES ('17', 'ORDER0000017', null, null, null, null, null, null, 'check', null, '3', null, '2013-02-01 07:26:05', '2013-02-01 07:26:05', '23', '134', '34', '34', null);
INSERT INTO `orders` VALUES ('18', 'ORDER0000018', null, null, null, null, null, null, 'check', null, '3', null, '2013-02-01 07:31:14', '2013-02-01 07:31:14', '1', '11', '1072@111.com1', '1', null);
INSERT INTO `orders` VALUES ('19', 'ORDER0000019', '7', null, null, null, null, null, 'cc', null, '3', null, '2013-02-01 07:46:04', '2013-02-01 07:46:04', '123143', '34', '107422244@qq.com', '13401188533', null);

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
-- Table structure for `rent_carts`
-- ----------------------------
DROP TABLE IF EXISTS `rent_carts`;
CREATE TABLE `rent_carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regprice` float DEFAULT NULL,
  `comprice` float DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `discription` text,
  `be_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rent_carts
-- ----------------------------

-- ----------------------------
-- Table structure for `service_styles`
-- ----------------------------
DROP TABLE IF EXISTS `service_styles`;
CREATE TABLE `service_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_styles
-- ----------------------------
INSERT INTO `service_styles` VALUES ('1', '1', 'VIP特权', '2013-01-07 21:52:47', '2013-01-07 21:52:53');
INSERT INTO `service_styles` VALUES ('2', '2', '机场服务', '2013-01-14 15:21:31', '2013-01-14 15:21:36');
INSERT INTO `service_styles` VALUES ('3', '3', '特色服务', '2013-01-14 15:23:01', '2013-01-14 15:23:05');

-- ----------------------------
-- Table structure for `service_tasks`
-- ----------------------------
DROP TABLE IF EXISTS `service_tasks`;
CREATE TABLE `service_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_num` varchar(255) DEFAULT NULL,
  `line_item_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  `dostyle_id` int(11) DEFAULT NULL,
  `situation` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_tasks
-- ----------------------------
INSERT INTO `service_tasks` VALUES ('2', null, '5', '5', null, null, '1', null, '你好123123');
INSERT INTO `service_tasks` VALUES ('3', null, '3', '4', null, null, '2', null, 'haoa');
INSERT INTO `service_tasks` VALUES ('4', null, '3', '4', null, null, '2', null, 'haoa12312');
INSERT INTO `service_tasks` VALUES ('5', null, '4', '4', null, null, '2', null, 'haoa12312');
INSERT INTO `service_tasks` VALUES ('6', null, '12', '12', null, null, '2', null, 'hao');
INSERT INTO `service_tasks` VALUES ('7', 'TASK0000007', '12', '12', null, null, '2', null, 'hao');
INSERT INTO `service_tasks` VALUES ('8', 'TASK0000008', '12', '12', null, null, null, null, '');
INSERT INTO `service_tasks` VALUES ('9', 'TASK0000009', '13', '13', null, null, '1', null, '3423');

-- ----------------------------
-- Table structure for `services`
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_style_id` int(11) DEFAULT NULL,
  `price` float(100,0) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('1', '1', null, '1', '会籍有效期', null);
INSERT INTO `services` VALUES ('2', '1', null, '1', '享受T2MAX会员价', null);
INSERT INTO `services` VALUES ('3', '1', null, '1', '免费贵宾通道快捷服务\r\n含休息区免费餐饮，上网。', null);
INSERT INTO `services` VALUES ('4', '1', '299', '1', '299体验卡', null);
INSERT INTO `services` VALUES ('5', '1', null, '1', '免费使用会议室\r\n每次60分钟', null);
INSERT INTO `services` VALUES ('6', '1', '0', '1', '免费使用棋牌室\r\n每次60分钟', null);
INSERT INTO `services` VALUES ('7', '1', null, '1', '分店优惠政策', null);
INSERT INTO `services` VALUES ('8', '1', null, '1', '指定四星或五星酒店\r\n需提前预定', null);
INSERT INTO `services` VALUES ('9', '1', '499', '1', '499体验卡', null);
INSERT INTO `services` VALUES ('10', '2', null, '1', 'VIP快捷通道贵宾接送机', null);
INSERT INTO `services` VALUES ('11', '2', null, null, '棋牌室', null);
INSERT INTO `services` VALUES ('12', '2', null, null, '专业雪茄品鉴', null);
INSERT INTO `services` VALUES ('13', '2', null, null, 'SPA美体', null);
INSERT INTO `services` VALUES ('14', '2', null, null, '精致餐饮', null);
INSERT INTO `services` VALUES ('15', '2', null, null, '计时客房', null);
INSERT INTO `services` VALUES ('16', '2', null, null, '商务会议', null);
INSERT INTO `services` VALUES ('17', '2', null, null, '传统文化', null);
INSERT INTO `services` VALUES ('18', '2', null, null, '健身', null);
INSERT INTO `services` VALUES ('19', '2', null, null, '泳池', null);
INSERT INTO `services` VALUES ('20', '3', null, null, '形象塑造', null);
INSERT INTO `services` VALUES ('21', '3', null, null, '商务秘书', null);
INSERT INTO `services` VALUES ('22', '3', null, null, '全天候安保', null);
INSERT INTO `services` VALUES ('23', '3', null, null, '机场免税商品预定', null);

-- ----------------------------
-- Table structure for `situations`
-- ----------------------------
DROP TABLE IF EXISTS `situations`;
CREATE TABLE `situations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of situations
-- ----------------------------
INSERT INTO `situations` VALUES ('1', '未处理', null);
INSERT INTO `situations` VALUES ('2', '等待盟友反馈', null);
INSERT INTO `situations` VALUES ('3', '已制定跟单任务', null);
INSERT INTO `situations` VALUES ('4', '已完成', null);

-- ----------------------------
-- Table structure for `task_entries`
-- ----------------------------
DROP TABLE IF EXISTS `task_entries`;
CREATE TABLE `task_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `service_task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `addrec` varchar(11) DEFAULT NULL,
  `service_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_entries
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip_records
-- ----------------------------
INSERT INTO `vip_records` VALUES ('1', '1', '1', '1', 'ci', '1', '2013-01-30 10:58:03', '2013-01-30 10:58:08', '2013-01-30 10:58:12', '2013-02-01 10:58:16', '4', '3', null);
INSERT INTO `vip_records` VALUES ('2', '1', '2', '1', 'ci', '1', '2013-01-30 10:59:14', '2013-01-30 10:59:19', '2013-01-30 10:59:24', '2013-02-01 10:59:31', '4', '4', null);

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

-- ----------------------------
-- Table structure for `vip_styles`
-- ----------------------------
DROP TABLE IF EXISTS `vip_styles`;
CREATE TABLE `vip_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `leave` float(100,0) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  `usefulltime` int(11) DEFAULT NULL,
  `vipprice` int(11) DEFAULT NULL,
  `vipbargin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip_styles
-- ----------------------------
INSERT INTO `vip_styles` VALUES ('1', '银卡会员', '9800', '9800.00元/年', null, null, null, '1', null, null);
INSERT INTO `vip_styles` VALUES ('2', '金卡会员', '50000', '50000.00元/年', null, null, null, '1', null, null);
INSERT INTO `vip_styles` VALUES ('3', '白金会员', '150000', '150000.00元/年', null, null, null, '3', null, null);
INSERT INTO `vip_styles` VALUES ('4', '董事钻石卡会员', '800000', '800000.00元/年', null, null, null, '5', null, null);

-- ----------------------------
-- Table structure for `vips`
-- ----------------------------
DROP TABLE IF EXISTS `vips`;
CREATE TABLE `vips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_num` varchar(255) DEFAULT NULL,
  `vip_style_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `input_user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text,
  `situation` int(11) DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  `fromtime` datetime DEFAULT NULL,
  `totime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vips
-- ----------------------------
INSERT INTO `vips` VALUES ('1', '201301040079527', '1', '7', '4', '2013-01-23 15:25:28', null, '测试', '1', null, '2013-01-23 15:40:23', '2013-12-01 15:40:28');
