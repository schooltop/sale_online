/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-03-13 08:02:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '广告媒体', null, null, null);
INSERT INTO `categories` VALUES ('2', '服装鞋包', null, null, null);
INSERT INTO `categories` VALUES ('3', '珠宝手表', null, null, null);
INSERT INTO `categories` VALUES ('4', '数码', null, null, null);
INSERT INTO `categories` VALUES ('5', '家电', null, null, null);
INSERT INTO `categories` VALUES ('6', '家具建材', null, null, null);
INSERT INTO `categories` VALUES ('7', '美食特产', null, null, null);
INSERT INTO `categories` VALUES ('8', '日用百货', null, null, null);
INSERT INTO `categories` VALUES ('9', '汽车，车品', null, null, null);
INSERT INTO `categories` VALUES ('10', '生活服务', null, null, null);

-- ----------------------------
-- Table structure for `coin_types`
-- ----------------------------
DROP TABLE IF EXISTS `coin_types`;
CREATE TABLE `coin_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_add` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coin_types
-- ----------------------------
INSERT INTO `coin_types` VALUES ('1', '签约购买', '1', null, '2012-07-25 05:59:12');
INSERT INTO `coin_types` VALUES ('2', '大客户', '1', null, null);
INSERT INTO `coin_types` VALUES ('3', '注册用户', '1', null, null);
INSERT INTO `coin_types` VALUES ('4', '购买商品', null, null, null);

-- ----------------------------
-- Table structure for `coins`
-- ----------------------------
DROP TABLE IF EXISTS `coins`;
CREATE TABLE `coins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_type_id` int(11) DEFAULT NULL,
  `in_num` int(11) DEFAULT NULL,
  `out_num` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `last_num` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=982 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coins
-- ----------------------------
INSERT INTO `coins` VALUES ('979', '1', '200', null, '5', '200', null, '2013-01-04 04:02:40', '2013-01-04 04:02:40');
INSERT INTO `coins` VALUES ('980', '1', '10000', null, '5', '10200', null, '2013-01-04 04:12:44', '2013-01-04 04:12:44');
INSERT INTO `coins` VALUES ('981', '4', null, '6000', '5', '4200', null, '2013-01-04 04:23:20', '2013-01-04 04:23:20');

-- ----------------------------
-- Table structure for `collections`
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `production_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES ('2', '5', '2', '2012-12-19 04:02:15');
INSERT INTO `collections` VALUES ('4', '5', '5', '2012-12-21 08:29:25');
INSERT INTO `collections` VALUES ('5', '5', '1', '2013-01-03 02:26:07');

-- ----------------------------
-- Table structure for `companies`
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `be_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companies
-- ----------------------------

-- ----------------------------
-- Table structure for `dostyles`
-- ----------------------------
DROP TABLE IF EXISTS `dostyles`;
CREATE TABLE `dostyles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dostyles
-- ----------------------------
INSERT INTO `dostyles` VALUES ('1', '直接处理');
INSERT INTO `dostyles` VALUES ('2', '合作伙伴');
INSERT INTO `dostyles` VALUES ('3', '人力调配');

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
-- Table structure for `houses`
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
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
-- Records of houses
-- ----------------------------

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
INSERT INTO `line_items` VALUES ('7', '7', '3', '3', '1', '3', null, null, null, null, null, null, null, null);
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
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsgroup_id` int(11) DEFAULT NULL,
  `from` char(50) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `text` longtext,
  `publish_time` datetime DEFAULT NULL,
  `publisher` char(100) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `hide` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `text_en` longtext,
  `photo_file_name` varchar(255) DEFAULT NULL,
  `photo_content_type` varchar(255) DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `newgroup` (`newsgroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('309', '1', null, '感谢新老会员的关注与支持', '<p>\r\n	感谢您们的光临和回顾，易吧网2013年将飞速发展，成为中国最有影响力的易货网络平台。 更多的优质商户将加入我们，</p>\r\n<p>\r\n	我们也会为新老客户提供一流的服务。希望为大家提供一个更加便捷，有效和可以信赖的交易平台。</p>\r\n<p>\r\n	长久以来，我们保持稳定的合作，</p>\r\n<p>\r\n	感谢你们！</p>\r\n<p>\r\n	<img alt=\"\" src=\"/ckeditor_assets/pictures/350/content_0_1.jpg?1359347565\" style=\"width: 120px; height: 120px; \" /></p>\r\n', '2013-01-28 04:33:06', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('310', '1', null, '广州游艇展深受中外游艇界关注', '<p>\r\n	&nbsp;</p>\r\n<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 20pt; text-indent: 24pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-size: 12pt;\">由广东省游艇行业协会和广州鸿威展览服务有限公司联手举办的&ldquo;2013中国（广州）国际游艇产业博览会&rdquo;将于2013年5月10日一12日在中国进出口商品交易会琶洲展馆再次登场，本次展会自启动以来引起了国际游艇界的广泛关注，国内外企业<span style=\"margin: 0px; padding: 0px; color: black;\">踊跃参展，力图通过</span>这个中国南方最大的游艇盛会<span style=\"margin: 0px; padding: 0px; color: black;\">强势出击、争抢行业黄金商机。</span></span></div>\r\n<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 20pt; text-indent: 24pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; color: black; font-size: 12pt;\">中国作为一个快速成长的新兴游艇消费市场，近年来深受国际游艇品牌的青睐，尤其是在国际游艇市场受到国际金融危机冲击的背景下，各大国际知名品牌纷纷加大开拓中国市场的力度，从广州游艇展广受国际游艇界的热切关注就可以看出这种趋势，据悉，英国、西班牙、意大利、美国、波兰等多国游艇知名品牌，如：丽娃（Riva）、公主(Princess)、圣斯克、博星、宾士域、菲尔兰、嘉鸿、飞途、NAUTOR&rsquo;S SWAN 、Sanlorenzo Yacht 、Sunreef-yacht 、Wasa Yacht等均表示支持本届展会，世界十大游艇品牌企业也将派出强大阵容参展，</span><span style=\"margin: 0px; padding: 0px; font-size: 12pt;\">以凸显自己产品和品牌的形象和独特风格。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 20pt; text-indent: 24pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-size: 12pt;\">随着中国游艇展业的发展壮大，国际游艇组织也重视加强与中国同行的交流与合作。从组委会获悉，<span style=\"margin: 0px; padding: 0px; color: black;\">日本舟艇工业会、希腊游船经销商协会已表示将</span>组团参加本次展会，并将在展会期间与广东省游艇行业协会以及相关游艇产业园展开多项交流。另外，意大利船舶工业协会（ucina）、新加坡游艇行业协会(SBIA)、澳洲游艇码头行业协会(MIAA)、台湾区游艇工业同业公会等也在密切关注中。这个现象正好印证了一位国际游艇人士的看法，他认为，中国代表着世界游艇市场的未来，现在进入正当其时。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 20pt; text-indent: 24pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; color: black; font-size: 12pt;\">除了做好展商的组织工作外，组委会还在媒体宣传和采购商组织方面做了大量工作，大会参观人数有望再创新高。根据组委会统计信息显示，组委会已经在全球40多家专业杂志和367个国外网站展开了大力宣传，并通过组织总裁联谊会、参与高端会议、电话邀约、邮件邀请、问卷调查等方式展开了采购组织工作。积极的宣传推广措施引起了</span><span style=\"margin: 0px; padding: 0px; font-size: 12pt;\">国内外采购商的<span style=\"margin: 0px; padding: 0px; color: black;\">强烈关注，目前已有来自</span>阿联酋、英国、摩纳哥、阿联酋、新西兰、美国、西班牙等17个国家<span style=\"margin: 0px; padding: 0px; color: black;\">的</span>83家企业表示将到会参观、采购。本次展会同样引起了国内游艇界的关注，全国各地的游艇产业园区、游艇经销商、代理商、贸易商、富商富豪、俱乐部、旅游社等都表示将赴广州游艇展进行市场考察和采购</span><span style=\"margin: 0px; padding: 0px; color: black; font-size: 12pt;\">。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 20pt; text-indent: 24pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; color: black; font-size: 12pt;\">以上信息表明，广州作为中国最具发展游艇产业潜力的城市之一，理所当然成为中外游艇行业逐鹿的战略要地，而</span><span style=\"margin: 0px; padding: 0px; font-size: 12pt;\">&ldquo;中国（广州）国际游艇产业博览会&rdquo;</span><span style=\"margin: 0px; padding: 0px; color: black; font-size: 12pt;\">也必定成为</span><span style=\"margin: 0px; padding: 0px; font-size: 12pt;\">行业关注的焦点和展示品牌形象、拓展市场的重要阵地。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 20pt; text-indent: 24pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-size: 12pt;\">未来几年，让我们共同期待游艇产业在中国的华丽转身！明年五月，让我们共同见证广州国际游艇展的全新蜕变！</span></div>\r\n', '2013-01-28 06:27:40', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('311', '1', null, '上海理财博览会迎来10周年', '<p>\r\n	&nbsp;</p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px; text-indent: 28pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">11月</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">23</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">日，上海展览中心迎来了已迈入第</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">10</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">个年头的上海理财博览会。开幕第一天，尽管天气阴雨，但是市民参观出乎意料地热情高涨，尤其是在当前市场环境低迷的背景下，中小企业主和投资者们如何度过寒冬、守望春天？大家纷纷来到</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">上海理财博览会</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">寻找答案。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px; text-indent: 28pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">由《理财周刊》社和VNU欧洲展览集团联合主办的理财博览会，是目前国内展出规模最大、参展机构最全、参观人数最多、活动最丰富的金融业的年度盛会。从2003年到2012年，上海理财博览会整整走过了10个年头。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px; text-indent: 28pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">10年，上海理财博览会共同见证了中国理财市场的萌发与发展；10年，上海理财博览会一直立足于为广大市民理财服务；10年，上海理财博览会已经成为金融机构与广大市民直接沟通交流的重要平台。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px; text-indent: 21.75pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">201</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">2上海理财博览会</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">首日，</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">超过5</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">万市民走进展会现场，上海展览中心热闹非凡，近200家银行、保险公司、黄金企业、第三方理财机构以及中小企业融资服务机构参加了本届金博会，为市民进行近距离的理财服务。在博览会现场，各家机构各展风采，带来了丰富理财产品展示、专业讲座和理财资讯的同时，形式多样的观众互动也是丰富多彩。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px; text-indent: 21.75pt;\">\r\n	&nbsp;</p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px; text-indent: 21.75pt;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">在</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">11月23日第十届上海理财博览会</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">的开幕当天</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">，瑞士信贷亚洲区首席经济分析师陶冬</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">做了主题演讲。陶冬指出，</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">目前中国经济已经见底，明年固定资产投资有望回升，但</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">反弹</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">幅度不会太大。他预测，中国经济面临的是L型的趋势，&ldquo;最近几年，中国经济</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">增长在7%~7.5%，</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 14pt;\">最可能出现类似1997~2003长期在底部筑底过程&rdquo;。<img alt=\"\" src=\"/ckeditor_assets/pictures/351/content_148313157.png?1359354585\" style=\"width: 526px; height: 346px;\" /></span></p>\r\n', '2013-01-28 06:29:54', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('312', '1', null, '《2012中国奢侈品报告》发布会—上海', '<p>\r\n	&nbsp;</p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">2012年11月</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">8</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">日，由财富品质研究院、《财富品质》杂志社联合主办的《2012中国奢侈品报告》发布会在上海丽思卡尔顿酒店盛大举行。作为中国第一份以实际调研为基础的专业奢侈品市场报告，《2012中国奢侈品报告》秉承&ldquo;用事实说话&rdquo;的调研精神，用来自实际调研与深度访谈的数据和观点，为中国奢侈品市场健康有序发展提供了非常有价值的参考。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\"><img alt=\"\" src=\"/ckeditor_assets/pictures/352/content_20121113162358(1).jpg?1359354774\" style=\"width: 305px; height: 456px;\" /></span><br style=\"margin: 0px; padding: 0px;\" />\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">《中国奢侈品报告》综合涉及全球奢侈品市场</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">、</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">中国奢侈品市场</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">、</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">品牌</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">、</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">消费者</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">、</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">市场推广</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">、</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">客户服务</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">、</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">奢侈品城市发展等众多专业领域，得到了与会众多媒体和奢侈品品牌的一致认可和广泛关注。发布会现场《中国奢侈品报告》被抢购一空，主办方表示会尽量提供更多机会宣传报告内容，并将就报告举办一系列</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">演讲</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">活动。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">2012&nbsp;年的奢侈品市场随着全球经济的唱衰与富人资产的缩水，也跌入了一个新的低谷。各大奢侈品集团的财报显示，销售额增幅都出现了不同程度的减缓，与2011&nbsp;年相比，平均增幅在10%-20%&nbsp;之间，较同期减少10%&nbsp;左右。然而，尽管市场增速放缓，但是全球奢侈品市场仍在快速扩容。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">尽管如此，2012&nbsp;年全球共有1226&nbsp;名富豪荣登福布斯全球亿万富豪榜，&nbsp;54%&nbsp;的富豪实现了资产增值。而且在前100&nbsp;位上榜富豪中，来自时装与零售行业的富豪占了17%，是拥有富豪最多的领域，而LVMH集团的老板阿诺特居首。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px;\">\r\n	&nbsp;<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">随着亚太地区经济活跃度的增强，亚太市场也成为众多奢侈品集团与品牌的全球战略要地与增长抓手。对绝大多数品牌而言，亚太区领跑全球销售，还有一些品牌虽然在传统的欧洲与北美市场仍占主导地位，但亚太地区开始扮演着日益重要的角色，增长迅速。奢侈品牌对亚太市场十分重视，大型的品牌推广活动越来越多的出现在亚洲，越来越多的全球CEO亲临亚太地区的活动现场以示重视。</span></p>\r\n<p class=\"p0\" style=\"margin: 0pt 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); font-size: 14px; line-height: 28px;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">其中，中国是各大奢侈品牌最重视的市场。根据财富品质研究院预测，在未来3-5&nbsp;年亚太地区在全球奢侈品市场中的地位将更加明显，在各大奢侈品集团内的销售比</span><span style=\"margin: 0px; padding: 0px; font-family: 宋体; font-size: 12pt;\">重有望占到半壁江山，并每年保持20-30%&nbsp;的市场增速。</span></p>\r\n', '2013-01-28 06:32:57', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('313', '1', null, '《中国高端红酒报告》发布酒会', '<p>\r\n	<img alt=\"\" src=\"/ckeditor_assets/pictures/354/content_IMG_7620(2).jpg?1359355236\" style=\"width: 575px; height: 383px;\" /></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	2012年5月15日，由财富品质研究院、《财富品质》杂志社主办的&ldquo;财富&middot;品质&middot;红&rdquo;&mdash;&mdash;《中国高端红酒报告》发布会在上海隆重举行。作为财富品质研究院富豪生活方式系列报告的一部分，这是财富品质研究院继去年发布《中国奢侈品报告》和上个月发布《中国高端腕表报告》后，第三份针对富豪服务产业的专业报告。</p>\r\n<p>\r\n	<img alt=\"\" src=\"/ckeditor_assets/pictures/353/content_IMG_7516.JPG?1359355202\" style=\"width: 562px; height: 375px;\" /></p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 据财富品质研究院首席奢侈品研究员周婷和资深红酒研究员杨敏介绍，《中国高端红酒报告》调研了100多位红酒行业专业人士和媒体人，以及500多位中国富豪消费者，所有调研都采取面对面深入访谈的方式，历时3个月，共收到有效调研问卷618份，拥有广泛而深入的事实基础。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 《中国高端红酒报告》显示，全球红酒市场缓慢增长，个别国家红酒市场需求已经趋于饱和状态。但是，中国红酒消费增长迅速，保持平均70%的增幅。基于中国高端红酒市场的蓬勃发展和发展潜力，国外红酒品牌大举进军国内，要么已经在中国，要么就在来中国的路上，目前，中国红酒市场进口红酒份额在25%左右，以高端红酒为主。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 和很多奢侈品行业一样，在中国高端红酒市场，仍然是国外品牌品牌的天下，特别是以法国名庄酒为代表的高端红酒品牌。但是，财富品质研究院表示，这种状态在未来将得到改变，中国高端红酒市场红酒品牌将呈现多极化发展趋势，新世界红酒品牌将越来越在中国高端红酒市场占据重要位置。而中国高端红酒品牌，则任重而道远，短期那内很难产生具有国际竞争力的高端红酒品牌。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 具报告显示，中国富豪每周超过2次饮用红酒的占43%，其中每周有5次以上饮用葡萄酒的中国富豪有13%，但是从整体上看，更多的富豪只是偶尔饮用红酒（32%），而且有25%的富豪没有饮酒习惯。中国富豪一般认为价格500元以上的红酒品质才有保障，这个价格也是他们界定高端红酒和普通红酒的价格界限。</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 中国的高端红酒经销商在高端红酒消费过程中作用很小，缺乏对客户的专业影响力，中国富豪一般购买指定品牌的高端红酒，而很少听取经销商建议。中国富豪一般通过活动、杂志和朋友来获得高端红酒信息，分别占中国富豪高端红酒信息来源的31%，24%和21%。</p>\r\n<p>\r\n	&nbsp;&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 品牌、年份和口碑是中国富豪购买高端红酒的主要评价标准，有26%中国富豪把品牌作为评价红酒的第一标准。门店仍然是中国富豪购买高端红酒的主要渠道，占33%，另有16%的中国富豪选择直接从国外购买红酒。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 中国富豪消费者对国外购买酒庄兴趣浓厚，有多达55%的中国富豪表示，如果有机会，可以考虑参与购买国外酒庄，其中认为投资红酒产业回报率高是投资的主要原因，占总被调研中国富豪消费者的47%。在有意愿投资酒庄的消费者中，64%认为缺乏专业打理是他们购买酒庄的最大障碍。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 红酒消费正成为一种广受中国富豪非常认可的生活方式，但是，90%的中国富豪表示自己对红酒不是很了解，红酒培训产业前景广阔。同时，针对中国富豪的红酒顾问服务市场正悄然兴起，但是，红酒顾问稀缺是制约红酒顾问市场发展的主要原因。&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; &ldquo;全球市场看中国，中国市场看二三线城市&rdquo;，目前中国高端红酒在二三线城市拥有更好的市场表现和市场潜力。很多中国高端红酒经销商正把营销资源更多地投入到二三线城市，公关活动仍然是高端红酒品牌进行市场推广的主要方式。</p>\r\n', '2013-01-28 06:41:21', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('314', '83', null, '合作伙伴', '<p>\r\n	我们的合作伙伴包括全国众多的厂商。 下面是部分合作伙伴（排名不分先后）</p>\r\n<p>\r\n	赛创新港（北京）科技有限公司</p>\r\n<p>\r\n	上海时速投资有限公司</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '2013-01-29 04:10:09', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('315', '83', null, '公司发展历程', '<p>\r\n	易吧网自2011年开始在上海开展易货贸易。 2012年业务发展壮大，年易货贸易超过两千万元。</p>\r\n<p>\r\n	于2013年一月份开发易货网上交易平台，业务扩展到全国。&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '2013-01-29 04:18:07', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('316', '83', null, '管理团队', '<p>\r\n	荣建钧， 总经理，公司创始人，拥有多年广告媒体，市场推广经验。&nbsp;</p>\r\n<p>\r\n	殷伟，董事，拥有近20年市场运作，公司经营经验。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '2013-01-29 04:20:31', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('317', '83', null, '公司简介', '北京华宇新星体育设施工程有限责任公司是集咨询设计、科研开发、生产销售及工程施工为一体的营造运动场地的专业公司，从事各类体育场地及配套附属设施的施工建设，并逐渐形成了完善的科学管理体系。公司具有建设部颁发的体育场地设施工程专业承包三级资质。', '2013-01-29 04:24:01', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('318', '82', null, 'VIP会员', '<p>\r\n	VIP会员可以享受一下服务：</p>\r\n<p>\r\n	在网站首页获得推广机会</p>\r\n<p>\r\n	有客户经理专门服务，帮助客户实现更多易入和易出产品。</p>\r\n<p>\r\n	获得邀请参加易吧俱乐部的定期线下活动。</p>\r\n', '2013-01-29 04:29:56', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('319', '82', null, '普通会员', '<p>\r\n	普通会员可以在易吧商户圈内寻找所需的产品和服务，同时可以将自己的产品和服务销售给其他商户。&nbsp;</p>\r\n<p>\r\n	会员还会被定期邀请参加易吧俱乐部的线下活动。</p>\r\n', '2013-01-29 04:31:54', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('320', '82', null, '加入易吧', '<p>\r\n	为什么加入易吧</p>\r\n<p>\r\n	易吧网有上万家签约商户，这些商户经常在易吧商户内寻找自己需要的供货商。 加入易吧可以立即扩大你的客户群。&nbsp;</p>\r\n<p>\r\n	你的产品和服务，立即就有上万商户作为潜在客户。</p>\r\n<p>\r\n	怎么加入易吧</p>\r\n<p>\r\n	加入易吧很容易，只需按以下流程就可以完成签约，成为易吧会员。</p>\r\n', '2013-01-29 04:35:35', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('321', '86', null, '合作伙伴', '北京华宇新星体育设施工程有限责任公司是集咨询设计、科研开发、生产销售及工程施工为一体的营造运动场地的专业公司，从事各类体育场地及配套附属设施的施工建设，并逐渐形成了完善的科学管理体系。公司具有建设部颁发的体育场地设施工程专业承包三级资质。', null, null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('322', '86', null, '公司发展历程', '北京华宇新星体育设施工程有限责任公司是集咨询设计、科研开发、生产销售及工程施工为一体的营造运动场地的专业公司，从事各类体育场地及配套附属设施的施工建设，并逐渐形成了完善的科学管理体系。公司具有建设部颁发的体育场地设施工程专业承包三级资质。', null, null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('323', '86', null, '管理团队', '北京华宇新星体育设施工程有限责任公司是集咨询设计、科研开发、生产销售及工程施工为一体的营造运动场地的专业公司，从事各类体育场地及配套附属设施的施工建设，并逐渐形成了完善的科学管理体系。公司具有建设部颁发的体育场地设施工程专业承包三级资质。', null, null, '0', '0', null, null, null, null, null, null);
INSERT INTO `news` VALUES ('324', '86', null, '公司简介', '北京华宇新星体育设施工程有限责任公司是集咨询设计、科研开发、生产销售及工程施工为一体的营造运动场地的专业公司，从事各类体育场地及配套附属设施的施工建设，并逐渐形成了完善的科学管理体系。公司具有建设部颁发的体育场地设施工程专业承包三级资质。', null, null, '0', '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `newsgroups`
-- ----------------------------
DROP TABLE IF EXISTS `newsgroups`;
CREATE TABLE `newsgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newsgroups
-- ----------------------------
INSERT INTO `newsgroups` VALUES ('1', '网站公告', null, null, '', '');
INSERT INTO `newsgroups` VALUES ('82', '会员', null, null, '1.png', '');
INSERT INTO `newsgroups` VALUES ('83', '公司简介', null, null, '1.png', '');
INSERT INTO `newsgroups` VALUES ('84', '易吧社区', null, null, '1.png', '');
INSERT INTO `newsgroups` VALUES ('85', '易吧俱乐部', null, null, null, null);
INSERT INTO `newsgroups` VALUES ('86', '华宇简介', null, null, '1.png', null);

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
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `sys_state_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions_roles`
-- ----------------------------
DROP TABLE IF EXISTS `permissions_roles`;
CREATE TABLE `permissions_roles` (
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions_roles
-- ----------------------------

-- ----------------------------
-- Table structure for `pictures`
-- ----------------------------
DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bean` varchar(255) DEFAULT NULL,
  `bean_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `pic_link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures
-- ----------------------------
INSERT INTO `pictures` VALUES ('1', '未命名', 'Production', '1', 'public/system/Productions/1.jpg', null, '2012-12-14 07:15:34', '2012-12-14 07:15:34');
INSERT INTO `pictures` VALUES ('2', '诺基亚', 'Production', '2', 'public/system/Productions/2.jpg', null, '2012-12-18 04:45:20', '2012-12-18 04:45:20');
INSERT INTO `pictures` VALUES ('4', '诺基亚', 'Production', '2', 'public/system/Productions/4.jpg', null, '2012-12-18 04:48:55', '2012-12-18 04:48:55');
INSERT INTO `pictures` VALUES ('5', '鞋子', 'Production', '5', 'public/system/Productions/5.jpg', null, '2012-12-18 05:26:21', '2012-12-18 05:26:21');
INSERT INTO `pictures` VALUES ('6', '555', 'Production', '7', 'public/system/Productions/7_1.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('7', 'dd', 'Production', '7', 'public/system/Productions/7_2.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('8', 'ss', 'Production', '7', 'public/system/Productions/7_3.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('9', 'wee', 'Production', '7', 'public/system/Productions/7_4.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('10', 'ww', 'Production', '7', 'public/system/Productions/7_5.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('20', 'test', 'admin', '0', 'public/system/admins/0_1.png', '/', '2013-01-09 03:54:04', '2013-01-09 03:54:04');
INSERT INTO `pictures` VALUES ('21', 'test1', 'admin', '0', 'public/system/admins/0_2.png', '/', '2013-01-09 03:54:04', '2013-01-09 03:54:04');
INSERT INTO `pictures` VALUES ('22', 'test', 'admin', '0', 'public/system/admins/0_3.png', '/', '2013-01-09 03:54:05', '2013-01-09 03:54:05');
INSERT INTO `pictures` VALUES ('23', '1306453984611205972', 'Production', '8', 'public/system/Productions/_1.jpg', '/', '2013-01-10 03:29:14', '2013-01-10 03:29:14');
INSERT INTO `pictures` VALUES ('24', '111', 'Production', '8', 'public/system/Productions/_1.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('25', '222', 'Production', '8', 'public/system/Productions/_2.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('26', '111', 'Production', '8', 'public/system/Productions/_3.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('27', '222', 'Production', '8', 'public/system/Productions/_4.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('30', '1', 'Production', '10', 'public/system/Productions/10_1.jpg', '/', '2013-01-10 03:45:04', '2013-01-10 03:45:04');
INSERT INTO `pictures` VALUES ('31', '1306453984611205972', 'Production', '11', 'public/system/Productions/11_1.jpg', '/', '2013-01-10 03:50:44', '2013-01-10 03:50:44');
INSERT INTO `pictures` VALUES ('32', '333', 'Production', '12', 'public/system/Productions/12_1.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures` VALUES ('33', '555', 'Production', '12', 'public/system/Productions/12_2.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures` VALUES ('34', '666', 'Production', '12', 'public/system/Productions/12_3.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures` VALUES ('35', '777', 'Production', '13', 'public/system/Productions/13_1.jpg', '/', '2013-01-10 05:05:33', '2013-01-10 05:05:33');
INSERT INTO `pictures` VALUES ('36', '20120214092252_56903', 'Production', '14', 'public/system/Productions/14_1.jpg', '/', '2013-01-10 05:16:11', '2013-01-10 05:16:11');
INSERT INTO `pictures` VALUES ('37', '888', 'Production', '15', 'public/system/Productions/15_1.jpg', '/', '2013-01-10 05:28:12', '2013-01-10 05:28:12');
INSERT INTO `pictures` VALUES ('38', '999', 'Production', '15', 'public/system/Productions/15_2.jpg', '/', '2013-01-10 05:28:12', '2013-01-10 05:28:12');
INSERT INTO `pictures` VALUES ('39', '1', 'Production', '16', 'public/system/Productions/16_1.jpg', '/', '2013-01-10 05:40:45', '2013-01-10 05:40:45');
INSERT INTO `pictures` VALUES ('40', '2', 'Production', '16', 'public/system/Productions/16_2.jpg', '/', '2013-01-10 05:40:45', '2013-01-10 05:40:45');
INSERT INTO `pictures` VALUES ('41', '3', 'Production', '17', 'public/system/Productions/17_1.jpg', '/', '2013-01-10 05:53:23', '2013-01-10 05:53:23');
INSERT INTO `pictures` VALUES ('42', '20110811002042', 'Production', '18', 'public/system/Productions/18_1.jpg', '/', '2013-01-10 06:33:21', '2013-01-10 06:33:21');
INSERT INTO `pictures` VALUES ('43', '5', 'Production', '19', 'public/system/Productions/19_1.jpg', '/', '2013-01-10 06:36:59', '2013-01-10 06:36:59');
INSERT INTO `pictures` VALUES ('44', '6', 'Production', '20', 'public/system/Productions/20_1.jpg', '/', '2013-01-10 06:40:43', '2013-01-10 06:40:43');
INSERT INTO `pictures` VALUES ('45', 'Photo7', 'Production', '21', 'public/system/Productions/21_1.jpg', '/', '2013-01-10 06:45:10', '2013-01-10 06:45:10');
INSERT INTO `pictures` VALUES ('46', '7', 'Production', '22', 'public/system/Productions/22_1.jpg', '/', '2013-01-10 06:55:58', '2013-01-10 06:55:58');
INSERT INTO `pictures` VALUES ('47', '8', 'Production', '23', 'public/system/Productions/23_1.jpg', '/', '2013-01-10 07:34:49', '2013-01-10 07:34:49');
INSERT INTO `pictures` VALUES ('48', '9', 'Production', '23', 'public/system/Productions/23_2.jpg', '/', '2013-01-10 07:34:49', '2013-01-10 07:34:49');
INSERT INTO `pictures` VALUES ('49', '11', 'Production', '24', 'public/system/Productions/24_1.jpg', '/', '2013-01-10 08:22:01', '2013-01-10 08:22:01');
INSERT INTO `pictures` VALUES ('50', '22', 'Production', '25', 'public/system/Productions/25_1.jpg', '/', '2013-01-10 08:30:01', '2013-01-10 08:30:01');
INSERT INTO `pictures` VALUES ('51', '33', 'Production', '26', 'public/system/Productions/26_1.jpg', '/', '2013-01-11 02:34:31', '2013-01-11 02:34:31');
INSERT INTO `pictures` VALUES ('52', '2009171875377880', 'admin', '0', 'public/system/admins/0_1.jpg', '/productions/21', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures` VALUES ('53', '889938_01-01', 'admin', '0', 'public/system/admins/0_2.jpg', '/productions/25', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures` VALUES ('54', '634686437903276250', 'admin', '0', 'public/system/admins/0_3.jpg', '/productions/24', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures` VALUES ('55', '畅安阁', 'Production', '27', 'public/system/Productions/27_1.jpg', '/', '2013-01-29 09:04:58', '2013-01-29 09:04:58');
INSERT INTO `pictures` VALUES ('56', '矿泉水1', 'Production', '28', 'public/system/Productions/28_1.jpg', '/', '2013-01-30 08:43:07', '2013-01-30 08:43:07');
INSERT INTO `pictures` VALUES ('57', '矿泉水2', 'Production', '28', 'public/system/Productions/28_2.jpg', '/', '2013-01-30 08:43:07', '2013-01-30 08:43:07');
INSERT INTO `pictures` VALUES ('58', '芙蓉豪庭1', 'Production', '29', 'public/system/Productions/29_1.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures` VALUES ('59', '芙蓉豪庭2', 'Production', '29', 'public/system/Productions/29_2.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures` VALUES ('60', '芙蓉豪庭3', 'Production', '29', 'public/system/Productions/29_3.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures` VALUES ('61', '慧远1', 'Production', '30', 'public/system/Productions/30_1.jpg', '/', '2013-01-30 08:51:36', '2013-01-30 08:51:36');
INSERT INTO `pictures` VALUES ('62', '慧远2', 'Production', '30', 'public/system/Productions/30_2.jpg', '/', '2013-01-30 08:51:36', '2013-01-30 08:51:36');
INSERT INTO `pictures` VALUES ('63', '金门咖啡1', 'Production', '31', 'public/system/Productions/31_1.jpg', '/', '2013-01-30 08:56:21', '2013-01-30 08:56:21');
INSERT INTO `pictures` VALUES ('64', '开能1', 'Production', '32', 'public/system/Productions/32_1.jpg', '/', '2013-01-30 09:00:56', '2013-01-30 09:00:56');
INSERT INTO `pictures` VALUES ('65', 'SPA1', 'Production', '33', 'public/system/Productions/33_1.jpg', '/', '2013-01-30 09:02:57', '2013-01-30 09:02:57');
INSERT INTO `pictures` VALUES ('66', 'SPA2', 'Production', '33', 'public/system/Productions/33_2.jpg', '/', '2013-01-30 09:02:57', '2013-01-30 09:02:57');
INSERT INTO `pictures` VALUES ('67', '名羊天下1', 'Production', '34', 'public/system/Productions/34_1.jpg', '/', '2013-01-30 09:04:42', '2013-01-30 09:04:42');
INSERT INTO `pictures` VALUES ('68', '名羊天下2', 'Production', '34', 'public/system/Productions/34_2.jpg', '/', '2013-01-30 09:04:42', '2013-01-30 09:04:42');
INSERT INTO `pictures` VALUES ('69', '茗仕', 'Production', '35', 'public/system/Productions/35_1.jpg', '/', '2013-01-30 09:07:01', '2013-01-30 09:07:01');
INSERT INTO `pictures` VALUES ('70', '浦江二号1', 'Production', '36', 'public/system/Productions/36_1.jpg', '/', '2013-01-30 09:11:29', '2013-01-30 09:11:29');
INSERT INTO `pictures` VALUES ('71', '浦江二号2', 'Production', '36', 'public/system/Productions/36_2.jpg', '/', '2013-01-30 09:11:29', '2013-01-30 09:11:29');
INSERT INTO `pictures` VALUES ('72', '浦江一号1', 'Production', '37', 'public/system/Productions/37_1.jpg', '/', '2013-01-30 09:12:47', '2013-01-30 09:12:47');
INSERT INTO `pictures` VALUES ('73', '浦江一号2', 'Production', '37', 'public/system/Productions/37_2.jpg', '/', '2013-01-30 09:12:47', '2013-01-30 09:12:47');
INSERT INTO `pictures` VALUES ('74', '浦之舟1', 'Production', '38', 'public/system/Productions/38_1.jpg', '/', '2013-01-30 09:23:31', '2013-01-30 09:23:31');
INSERT INTO `pictures` VALUES ('75', '唐韵茶坊', 'Production', '39', 'public/system/Productions/39_1.jpg', '/', '2013-01-31 02:59:28', '2013-01-31 02:59:28');
INSERT INTO `pictures` VALUES ('76', '御席公馆1', 'Production', '40', 'public/system/Productions/40_1.jpg', '/', '2013-01-31 03:26:18', '2013-01-31 03:26:18');
INSERT INTO `pictures` VALUES ('77', '御席公馆2', 'Production', '40', 'public/system/Productions/40_2.jpg', '/', '2013-01-31 03:26:18', '2013-01-31 03:26:18');
INSERT INTO `pictures` VALUES ('78', '远大1', 'Production', '41', 'public/system/Productions/41_1.jpg', '/', '2013-01-31 03:37:57', '2013-01-31 03:37:57');
INSERT INTO `pictures` VALUES ('79', '海鸥饭店1', 'Production', '42', 'public/system/Productions/42_1.jpg', '/', '2013-01-31 08:55:42', '2013-01-31 08:55:42');
INSERT INTO `pictures` VALUES ('80', 'VIP快捷通道贵宾接送机服务', 'Product', '3', 'public/images/product/vipfast.jpg', '/', '2013-03-01 16:31:50', '2013-03-01 16:31:54');
INSERT INTO `pictures` VALUES ('81', '棋牌', 'Product', '4', 'public/images/product/xuejia_new.jpg', '/', '2013-03-01 17:36:58', '2013-03-01 17:37:03');
INSERT INTO `pictures` VALUES ('82', '专业雪茄品鉴', 'Product', '5', 'public/images/product/xuejia_new.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('83', 'SPA美体', 'Product', '6', 'public/images/product/spa4.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('84', '精致餐饮', 'Product', '7', 'public/images/product/jingzhicanyin.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('85', '计时客房', 'Product', '8', 'public/images/product/timehotel.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('86', '商务会议', 'Product', '9', 'public/images/product/meeting.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('87', '传统文化', 'Product', '10', 'public/images/product/culture.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('88', '形象塑造', 'Product', '13', 'public/images/product/bodystyle.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('89', '商务秘书', 'Product', '14', 'public/images/product/miss_new.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('90', '全天候安全顾问', 'Product', '15', 'public/images/product/safe_new.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('91', '机场免税商品预定', 'Product', '15', 'public/images/product/', '/', null, null);
INSERT INTO `pictures` VALUES ('92', '健身', 'Product', '11', 'public/images/product/exercises.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('93', '泳池', 'Product', '12', 'public/images/product/pool.jpg', '/', null, null);

-- ----------------------------
-- Table structure for `pictures_copy`
-- ----------------------------
DROP TABLE IF EXISTS `pictures_copy`;
CREATE TABLE `pictures_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bean` varchar(255) DEFAULT NULL,
  `bean_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `pic_link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures_copy
-- ----------------------------
INSERT INTO `pictures_copy` VALUES ('1', '未命名', 'Production', '1', 'public/system/Productions/1.jpg', null, '2012-12-14 07:15:34', '2012-12-14 07:15:34');
INSERT INTO `pictures_copy` VALUES ('2', '诺基亚', 'Production', '2', 'public/system/Productions/2.jpg', null, '2012-12-18 04:45:20', '2012-12-18 04:45:20');
INSERT INTO `pictures_copy` VALUES ('4', '诺基亚', 'Production', '2', 'public/system/Productions/4.jpg', null, '2012-12-18 04:48:55', '2012-12-18 04:48:55');
INSERT INTO `pictures_copy` VALUES ('5', '鞋子', 'Production', '5', 'public/system/Productions/5.jpg', null, '2012-12-18 05:26:21', '2012-12-18 05:26:21');
INSERT INTO `pictures_copy` VALUES ('6', '555', 'Production', '7', 'public/system/Productions/7_1.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures_copy` VALUES ('7', 'dd', 'Production', '7', 'public/system/Productions/7_2.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures_copy` VALUES ('8', 'ss', 'Production', '7', 'public/system/Productions/7_3.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures_copy` VALUES ('9', 'wee', 'Production', '7', 'public/system/Productions/7_4.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures_copy` VALUES ('10', 'ww', 'Production', '7', 'public/system/Productions/7_5.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures_copy` VALUES ('20', 'test', 'admin', '0', 'public/system/admins/0_1.png', '/', '2013-01-09 03:54:04', '2013-01-09 03:54:04');
INSERT INTO `pictures_copy` VALUES ('21', 'test1', 'admin', '0', 'public/system/admins/0_2.png', '/', '2013-01-09 03:54:04', '2013-01-09 03:54:04');
INSERT INTO `pictures_copy` VALUES ('22', 'test', 'admin', '0', 'public/system/admins/0_3.png', '/', '2013-01-09 03:54:05', '2013-01-09 03:54:05');
INSERT INTO `pictures_copy` VALUES ('23', '1306453984611205972', 'Production', '8', 'public/system/Productions/_1.jpg', '/', '2013-01-10 03:29:14', '2013-01-10 03:29:14');
INSERT INTO `pictures_copy` VALUES ('24', '111', 'Production', '8', 'public/system/Productions/_1.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures_copy` VALUES ('25', '222', 'Production', '8', 'public/system/Productions/_2.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures_copy` VALUES ('26', '111', 'Production', '8', 'public/system/Productions/_3.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures_copy` VALUES ('27', '222', 'Production', '8', 'public/system/Productions/_4.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures_copy` VALUES ('30', '1', 'Production', '10', 'public/system/Productions/10_1.jpg', '/', '2013-01-10 03:45:04', '2013-01-10 03:45:04');
INSERT INTO `pictures_copy` VALUES ('31', '1306453984611205972', 'Production', '11', 'public/system/Productions/11_1.jpg', '/', '2013-01-10 03:50:44', '2013-01-10 03:50:44');
INSERT INTO `pictures_copy` VALUES ('32', '333', 'Production', '12', 'public/system/Productions/12_1.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures_copy` VALUES ('33', '555', 'Production', '12', 'public/system/Productions/12_2.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures_copy` VALUES ('34', '666', 'Production', '12', 'public/system/Productions/12_3.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures_copy` VALUES ('35', '777', 'Production', '13', 'public/system/Productions/13_1.jpg', '/', '2013-01-10 05:05:33', '2013-01-10 05:05:33');
INSERT INTO `pictures_copy` VALUES ('36', '20120214092252_56903', 'Production', '14', 'public/system/Productions/14_1.jpg', '/', '2013-01-10 05:16:11', '2013-01-10 05:16:11');
INSERT INTO `pictures_copy` VALUES ('37', '888', 'Production', '15', 'public/system/Productions/15_1.jpg', '/', '2013-01-10 05:28:12', '2013-01-10 05:28:12');
INSERT INTO `pictures_copy` VALUES ('38', '999', 'Production', '15', 'public/system/Productions/15_2.jpg', '/', '2013-01-10 05:28:12', '2013-01-10 05:28:12');
INSERT INTO `pictures_copy` VALUES ('39', '1', 'Production', '16', 'public/system/Productions/16_1.jpg', '/', '2013-01-10 05:40:45', '2013-01-10 05:40:45');
INSERT INTO `pictures_copy` VALUES ('40', '2', 'Production', '16', 'public/system/Productions/16_2.jpg', '/', '2013-01-10 05:40:45', '2013-01-10 05:40:45');
INSERT INTO `pictures_copy` VALUES ('41', '3', 'Production', '17', 'public/system/Productions/17_1.jpg', '/', '2013-01-10 05:53:23', '2013-01-10 05:53:23');
INSERT INTO `pictures_copy` VALUES ('42', '20110811002042', 'Production', '18', 'public/system/Productions/18_1.jpg', '/', '2013-01-10 06:33:21', '2013-01-10 06:33:21');
INSERT INTO `pictures_copy` VALUES ('43', '5', 'Production', '19', 'public/system/Productions/19_1.jpg', '/', '2013-01-10 06:36:59', '2013-01-10 06:36:59');
INSERT INTO `pictures_copy` VALUES ('44', '6', 'Production', '20', 'public/system/Productions/20_1.jpg', '/', '2013-01-10 06:40:43', '2013-01-10 06:40:43');
INSERT INTO `pictures_copy` VALUES ('45', 'Photo7', 'Production', '21', 'public/system/Productions/21_1.jpg', '/', '2013-01-10 06:45:10', '2013-01-10 06:45:10');
INSERT INTO `pictures_copy` VALUES ('46', '7', 'Production', '22', 'public/system/Productions/22_1.jpg', '/', '2013-01-10 06:55:58', '2013-01-10 06:55:58');
INSERT INTO `pictures_copy` VALUES ('47', '8', 'Production', '23', 'public/system/Productions/23_1.jpg', '/', '2013-01-10 07:34:49', '2013-01-10 07:34:49');
INSERT INTO `pictures_copy` VALUES ('48', '9', 'Production', '23', 'public/system/Productions/23_2.jpg', '/', '2013-01-10 07:34:49', '2013-01-10 07:34:49');
INSERT INTO `pictures_copy` VALUES ('49', '11', 'Production', '24', 'public/system/Productions/24_1.jpg', '/', '2013-01-10 08:22:01', '2013-01-10 08:22:01');
INSERT INTO `pictures_copy` VALUES ('50', '22', 'Production', '25', 'public/system/Productions/25_1.jpg', '/', '2013-01-10 08:30:01', '2013-01-10 08:30:01');
INSERT INTO `pictures_copy` VALUES ('51', '33', 'Production', '26', 'public/system/Productions/26_1.jpg', '/', '2013-01-11 02:34:31', '2013-01-11 02:34:31');
INSERT INTO `pictures_copy` VALUES ('52', '2009171875377880', 'admin', '0', 'public/system/admins/0_1.jpg', '/productions/21', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures_copy` VALUES ('53', '889938_01-01', 'admin', '0', 'public/system/admins/0_2.jpg', '/productions/25', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures_copy` VALUES ('54', '634686437903276250', 'admin', '0', 'public/system/admins/0_3.jpg', '/productions/24', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures_copy` VALUES ('55', '畅安阁', 'Production', '27', 'public/system/Productions/27_1.jpg', '/', '2013-01-29 09:04:58', '2013-01-29 09:04:58');
INSERT INTO `pictures_copy` VALUES ('56', '矿泉水1', 'Production', '28', 'public/system/Productions/28_1.jpg', '/', '2013-01-30 08:43:07', '2013-01-30 08:43:07');
INSERT INTO `pictures_copy` VALUES ('57', '矿泉水2', 'Production', '28', 'public/system/Productions/28_2.jpg', '/', '2013-01-30 08:43:07', '2013-01-30 08:43:07');
INSERT INTO `pictures_copy` VALUES ('58', '芙蓉豪庭1', 'Production', '29', 'public/system/Productions/29_1.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures_copy` VALUES ('59', '芙蓉豪庭2', 'Production', '29', 'public/system/Productions/29_2.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures_copy` VALUES ('60', '芙蓉豪庭3', 'Production', '29', 'public/system/Productions/29_3.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures_copy` VALUES ('61', '慧远1', 'Production', '30', 'public/system/Productions/30_1.jpg', '/', '2013-01-30 08:51:36', '2013-01-30 08:51:36');
INSERT INTO `pictures_copy` VALUES ('62', '慧远2', 'Production', '30', 'public/system/Productions/30_2.jpg', '/', '2013-01-30 08:51:36', '2013-01-30 08:51:36');
INSERT INTO `pictures_copy` VALUES ('63', '金门咖啡1', 'Production', '31', 'public/system/Productions/31_1.jpg', '/', '2013-01-30 08:56:21', '2013-01-30 08:56:21');
INSERT INTO `pictures_copy` VALUES ('64', '开能1', 'Production', '32', 'public/system/Productions/32_1.jpg', '/', '2013-01-30 09:00:56', '2013-01-30 09:00:56');
INSERT INTO `pictures_copy` VALUES ('65', 'SPA1', 'Production', '33', 'public/system/Productions/33_1.jpg', '/', '2013-01-30 09:02:57', '2013-01-30 09:02:57');
INSERT INTO `pictures_copy` VALUES ('66', 'SPA2', 'Production', '33', 'public/system/Productions/33_2.jpg', '/', '2013-01-30 09:02:57', '2013-01-30 09:02:57');
INSERT INTO `pictures_copy` VALUES ('67', '名羊天下1', 'Production', '34', 'public/system/Productions/34_1.jpg', '/', '2013-01-30 09:04:42', '2013-01-30 09:04:42');
INSERT INTO `pictures_copy` VALUES ('68', '名羊天下2', 'Production', '34', 'public/system/Productions/34_2.jpg', '/', '2013-01-30 09:04:42', '2013-01-30 09:04:42');
INSERT INTO `pictures_copy` VALUES ('69', '茗仕', 'Production', '35', 'public/system/Productions/35_1.jpg', '/', '2013-01-30 09:07:01', '2013-01-30 09:07:01');
INSERT INTO `pictures_copy` VALUES ('70', '浦江二号1', 'Production', '36', 'public/system/Productions/36_1.jpg', '/', '2013-01-30 09:11:29', '2013-01-30 09:11:29');
INSERT INTO `pictures_copy` VALUES ('71', '浦江二号2', 'Production', '36', 'public/system/Productions/36_2.jpg', '/', '2013-01-30 09:11:29', '2013-01-30 09:11:29');
INSERT INTO `pictures_copy` VALUES ('72', '浦江一号1', 'Production', '37', 'public/system/Productions/37_1.jpg', '/', '2013-01-30 09:12:47', '2013-01-30 09:12:47');
INSERT INTO `pictures_copy` VALUES ('73', '浦江一号2', 'Production', '37', 'public/system/Productions/37_2.jpg', '/', '2013-01-30 09:12:47', '2013-01-30 09:12:47');
INSERT INTO `pictures_copy` VALUES ('74', '浦之舟1', 'Production', '38', 'public/system/Productions/38_1.jpg', '/', '2013-01-30 09:23:31', '2013-01-30 09:23:31');
INSERT INTO `pictures_copy` VALUES ('75', '唐韵茶坊', 'Production', '39', 'public/system/Productions/39_1.jpg', '/', '2013-01-31 02:59:28', '2013-01-31 02:59:28');
INSERT INTO `pictures_copy` VALUES ('76', '御席公馆1', 'Production', '40', 'public/system/Productions/40_1.jpg', '/', '2013-01-31 03:26:18', '2013-01-31 03:26:18');
INSERT INTO `pictures_copy` VALUES ('77', '御席公馆2', 'Production', '40', 'public/system/Productions/40_2.jpg', '/', '2013-01-31 03:26:18', '2013-01-31 03:26:18');
INSERT INTO `pictures_copy` VALUES ('78', '远大1', 'Production', '41', 'public/system/Productions/41_1.jpg', '/', '2013-01-31 03:37:57', '2013-01-31 03:37:57');
INSERT INTO `pictures_copy` VALUES ('79', '海鸥饭店1', 'Production', '42', 'public/system/Productions/42_1.jpg', '/', '2013-01-31 08:55:42', '2013-01-31 08:55:42');

-- ----------------------------
-- Table structure for `productions`
-- ----------------------------
DROP TABLE IF EXISTS `productions`;
CREATE TABLE `productions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `note` text,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `deleted` int(2) DEFAULT NULL,
  `begin_amount` int(11) DEFAULT '1',
  `order_num` int(11) DEFAULT '0',
  `show_num` int(11) DEFAULT '0',
  `stock` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productions
-- ----------------------------
INSERT INTO `productions` VALUES ('1', null, '戴尔电脑', '4', '2000', null, '最新的戴尔电脑 配置牛逼！赶快来买', '5', null, null, '10', '0', '0', '10000', '2013-01-03 17:09:08', '2012-12-14 07:15:34', '2012-12-18 04:23:06');
INSERT INTO `productions` VALUES ('2', null, '很牛逼的手机', '4', '200', null, '双卡双待 待机100天！包邮！', '6', '7', null, '10', '3', '18', '12', '2012-12-27 17:09:13', '2012-12-18 04:45:20', '2013-01-04 04:53:47');
INSERT INTO `productions` VALUES ('4', null, '很牛逼的手机', '4', '200', null, '双卡双待 待机100天！包邮！', '5', '8', null, '10', '0', '0', '23', '2013-01-05 17:09:17', '2012-12-18 04:48:55', '2012-12-20 07:38:21');
INSERT INTO `productions` VALUES ('5', null, '降价大处理 吐血大酬宾', '2', '1', null, '很好的鞋子啊', '5', '7', null, '10', '12', '2', '2222', '2013-01-31 17:09:21', '2012-12-18 05:26:21', '2012-12-20 07:37:32');
INSERT INTO `productions` VALUES ('6', null, '很牛逼的手机', '4', '10', null, '刷卡双待！ 超长待机！ 打电话不花钱！ 不是999！ 也不是99！ 只要9.99！赶快下手吧！', '5', null, '1', '12', '0', '0', '10000', '2013-02-27 02:43:00', '2012-12-27 02:48:55', '2012-12-27 03:09:48');
INSERT INTO `productions` VALUES ('7', null, '很牛逼的手机', '4', '10', null, '刷卡双待！ 超长待机！ 打电话不花钱！ 不是999！ 也不是99！ 只要9.99！赶快下手吧！', '5', '7', null, '12', '0', '0', '10000', '2013-02-27 02:43:00', '2012-12-27 02:50:03', '2012-12-27 03:06:52');

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
  `vip_service_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `is_suggest` int(11) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `is_hide` int(11) DEFAULT NULL,
  `service_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'nihao', null, null, '2', '2', '12', 'Car', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('2', 'ceshi', null, null, '2', '2', '13', 'Spa', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('3', 'VIP快捷通道贵宾接送机', null, 'nihaoma', '3', '3', '10', null, null, null, '3', null, null, '7', '1', null, null, null, null, null);
INSERT INTO `products` VALUES ('4', '棋牌室', null, null, '3', '3', '11', null, null, null, null, null, null, '7', '1', null, null, null, null, null);
INSERT INTO `products` VALUES ('5', '专业雪茄品鉴', null, null, '3', '3', '12', null, null, null, null, null, null, '7', null, null, null, null, null, null);
INSERT INTO `products` VALUES ('6', 'SPA美体', null, null, '3', '3', '13', null, null, null, null, null, null, '7', '1', null, null, null, null, '4');
INSERT INTO `products` VALUES ('7', '精致餐饮', null, null, '3', '3', '14', null, null, null, null, null, null, '7', '1', null, null, null, null, null);
INSERT INTO `products` VALUES ('8', '计时客房', null, null, '3', '3', '15', null, null, null, null, null, null, '7', '1', null, null, null, null, '5');
INSERT INTO `products` VALUES ('9', '商务会议', null, null, '3', '3', '16', null, null, null, null, null, null, '7', null, '1', null, null, null, null);
INSERT INTO `products` VALUES ('10', '传统文化', null, null, '3', '3', '17', null, null, null, null, null, null, '7', '1', null, null, null, null, null);
INSERT INTO `products` VALUES ('11', '健身', null, null, '3', '3', '18', null, null, null, null, null, null, '7', null, '1', null, null, null, null);
INSERT INTO `products` VALUES ('12', '泳池', null, null, '3', '3', '19', null, null, null, null, null, null, '7', null, '1', null, null, null, null);
INSERT INTO `products` VALUES ('13', '形象塑造', null, null, '3', '3', '20', null, null, null, null, null, null, '7', null, '1', null, null, null, null);
INSERT INTO `products` VALUES ('14', '商务秘书', null, null, '3', '3', '21', null, null, null, null, null, null, '7', null, '1', null, null, null, null);
INSERT INTO `products` VALUES ('15', '全天候安全顾问', null, null, '3', '3', '22', null, null, null, null, null, null, '7', null, '1', null, null, null, null);
INSERT INTO `products` VALUES ('16', '机场免税商品预定', null, null, '3', '3', '23', null, null, null, null, null, null, '7', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `provinces`
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('1', '11', '北京市');
INSERT INTO `provinces` VALUES ('2', '12', '天津市');
INSERT INTO `provinces` VALUES ('3', '13', '河北省');
INSERT INTO `provinces` VALUES ('4', '14', '山西省');
INSERT INTO `provinces` VALUES ('5', '15', '内蒙古自治区');
INSERT INTO `provinces` VALUES ('6', '21', '辽宁省');
INSERT INTO `provinces` VALUES ('7', '22', '吉林省');
INSERT INTO `provinces` VALUES ('8', '23', '黑龙江省');
INSERT INTO `provinces` VALUES ('9', '31', '上海市');
INSERT INTO `provinces` VALUES ('10', '32', '江苏省');
INSERT INTO `provinces` VALUES ('11', '33', '浙江省');
INSERT INTO `provinces` VALUES ('12', '34', '安徽省');
INSERT INTO `provinces` VALUES ('13', '35', '福建省');
INSERT INTO `provinces` VALUES ('14', '36', '江西省');
INSERT INTO `provinces` VALUES ('15', '37', '山东省');
INSERT INTO `provinces` VALUES ('16', '41', '河南省');
INSERT INTO `provinces` VALUES ('17', '42', '湖北省');
INSERT INTO `provinces` VALUES ('18', '43', '湖南省');
INSERT INTO `provinces` VALUES ('19', '44', '广东省');
INSERT INTO `provinces` VALUES ('20', '45', '广西壮族自治区');
INSERT INTO `provinces` VALUES ('21', '46', '海南省');
INSERT INTO `provinces` VALUES ('22', '50', '重庆市');
INSERT INTO `provinces` VALUES ('23', '51', '四川省');
INSERT INTO `provinces` VALUES ('24', '52', '贵州省');
INSERT INTO `provinces` VALUES ('25', '53', '云南省');
INSERT INTO `provinces` VALUES ('26', '54', '西藏自治区');
INSERT INTO `provinces` VALUES ('27', '61', '陕西省');
INSERT INTO `provinces` VALUES ('28', '62', '甘肃省');
INSERT INTO `provinces` VALUES ('29', '63', '青海省');
INSERT INTO `provinces` VALUES ('30', '64', '宁夏回族自治区');
INSERT INTO `provinces` VALUES ('31', '65', '新疆维吾尔自治区');
INSERT INTO `provinces` VALUES ('32', '71', '台湾省');
INSERT INTO `provinces` VALUES ('33', '81', '香港特别行政区');
INSERT INTO `provinces` VALUES ('34', '82', '澳门特别行政区');

-- ----------------------------
-- Table structure for `quales`
-- ----------------------------
DROP TABLE IF EXISTS `quales`;
CREATE TABLE `quales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quales
-- ----------------------------
INSERT INTO `quales` VALUES ('1', '国营');
INSERT INTO `quales` VALUES ('2', '民营');
INSERT INTO `quales` VALUES ('3', '政府');
INSERT INTO `quales` VALUES ('4', '外商独资');
INSERT INTO `quales` VALUES ('5', '中外合资');
INSERT INTO `quales` VALUES ('6', '股份制公司');
INSERT INTO `quales` VALUES ('7', '其他');

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
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin');
INSERT INTO `roles` VALUES ('2', 'company');
INSERT INTO `roles` VALUES ('3', 'contact');

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
  `hide` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_styles
-- ----------------------------
INSERT INTO `service_styles` VALUES ('1', '1', 'VIP特权', '2013-01-07 21:52:47', '2013-01-07 21:52:53', null, null, null);
INSERT INTO `service_styles` VALUES ('2', '2', '机场服务', '2013-01-14 15:21:31', '2013-01-14 15:21:36', null, null, null);
INSERT INTO `service_styles` VALUES ('3', '3', '特色服务', '2013-01-14 15:23:01', '2013-01-14 15:23:05', null, null, null);
INSERT INTO `service_styles` VALUES ('4', '4', 'Spa、按摩、足浴', '2013-03-01 12:59:39', '2013-03-01 12:59:45', '0', null, '籍由身心灵平衡管理、抗老回春、曲雕管理、酸疼管理、抗压管理；\r\n	透过芳疗技师的温润手感来安抚、补给、修护您所求的部分； \r\n	适度触动您的味觉、听觉、嗅觉、触觉；\r\n	来提升心灵深处的能量，由内而外打到身心灵平衡、肌肤细腻润泽；\r\n	在私密的空间里，享受水疗、按摩、护肤的专业服务及五星级充满自然气息的舒适氛围\r\n	引领将抗生活方式、让您由心感受。');
INSERT INTO `service_styles` VALUES ('5', '5', '计时休息', '2013-03-01 13:00:18', '2013-03-01 13:00:22', '0', null, null);
INSERT INTO `service_styles` VALUES ('6', '6', '贵宾接送机', '2013-03-01 13:01:15', '2013-03-01 13:01:19', '0', null, null);
INSERT INTO `service_styles` VALUES ('7', '7', '配套服务', '2013-03-01 13:02:06', '2013-03-01 13:02:10', '0', null, null);
INSERT INTO `service_styles` VALUES ('8', '8', '特色服务', '2013-03-11 13:03:25', '2013-03-11 13:03:30', '0', null, null);
INSERT INTO `service_styles` VALUES ('9', '9', '机票预定', '2013-03-11 13:05:11', '2013-03-11 13:05:15', '0', null, null);

-- ----------------------------
-- Table structure for `huayu_service_styles`
-- ----------------------------
DROP TABLE IF EXISTS `huayu_service_styles`;
CREATE TABLE `huayu_service_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `hide` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huayu_service_styles
-- ----------------------------
INSERT INTO `huayu_service_styles` VALUES ('1', '1', '透气型型塑胶跑道', '2013-01-07 21:52:47', '2013-01-07 21:52:53', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('2', '2', '混合型塑胶跑道', '2013-01-14 15:21:31', '2013-01-14 15:21:36', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('3', '3', '水泥混凝土基础', '2013-01-14 15:23:01', '2013-01-14 15:23:05', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('4', '4', '沥青混凝土基础', '2013-03-01 12:59:39', '2013-03-01 12:59:45', '0', null, '籍由身心灵平衡管理、抗老回春、曲雕管理、酸疼管理、抗压管理；\r\n	透过芳疗技师的温润手感来安抚、补给、修护您所求的部分； \r\n	适度触动您的味觉、听觉、嗅觉、触觉；\r\n	来提升心灵深处的能量，由内而外打到身心灵平衡、肌肤细腻润泽；\r\n	在私密的空间里，享受水疗、按摩、护肤的专业服务及五星级充满自然气息的舒适氛围\r\n	引领将抗生活方式、让您由心感受。');
INSERT INTO `huayu_service_styles` VALUES ('5', '5', '人工草坪足球场', '2013-03-01 13:00:18', '2013-03-01 13:00:22', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('6', '6', '硅PU面层球场', '2013-03-01 13:01:15', '2013-03-01 13:01:19', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('7', '7', '拼装式球场', '2013-03-01 13:02:06', '2013-03-01 13:02:10', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('8', '8', '各种体育器材', '2013-03-11 13:03:25', '2013-03-11 13:03:30', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('9', '9', '各种球场座椅', '2013-03-11 13:05:11', '2013-03-11 13:05:15', '0', null, null);
INSERT INTO `huayu_service_styles` VALUES ('13', '13', '各种围网', null, null, '0', null, null);

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
-- Table structure for `spas`
-- ----------------------------
DROP TABLE IF EXISTS `spas`;
CREATE TABLE `spas` (
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
-- Records of spas
-- ----------------------------

-- ----------------------------
-- Table structure for `states`
-- ----------------------------
DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `bean` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of states
-- ----------------------------
INSERT INTO `states` VALUES ('1', '等待付款', 'Order');
INSERT INTO `states` VALUES ('2', '等待发货', 'Order');
INSERT INTO `states` VALUES ('3', '确认收货', 'Order');
INSERT INTO `states` VALUES ('4', '申请退款', 'Order');
INSERT INTO `states` VALUES ('5', '交易成功', 'Order');
INSERT INTO `states` VALUES ('6', '交易关闭', 'Order');
INSERT INTO `states` VALUES ('7', '已上架', 'Production');
INSERT INTO `states` VALUES ('8', '已下架', 'Production');
INSERT INTO `states` VALUES ('9', '已删除', 'Production');

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
-- Table structure for `tickets`
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
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
-- Records of tickets
-- ----------------------------

-- ----------------------------
-- Table structure for `trades`
-- ----------------------------
DROP TABLE IF EXISTS `trades`;
CREATE TABLE `trades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trades
-- ----------------------------
INSERT INTO `trades` VALUES ('1', '金融/投资/证券');
INSERT INTO `trades` VALUES ('2', '银行业');
INSERT INTO `trades` VALUES ('3', '财会服务');
INSERT INTO `trades` VALUES ('4', 'IT/计算机软硬件/互联网/电子商务');
INSERT INTO `trades` VALUES ('5', '电信（设备/运营/增值服务）');
INSERT INTO `trades` VALUES ('6', '电子技术/半导体/电气');
INSERT INTO `trades` VALUES ('7', '加工制造业');
INSERT INTO `trades` VALUES ('8', '汽车');
INSERT INTO `trades` VALUES ('9', '交通/运输/物流');
INSERT INTO `trades` VALUES ('10', '能源/石油/天然气/化工');
INSERT INTO `trades` VALUES ('11', '矿产/地址勘探/采掘');
INSERT INTO `trades` VALUES ('12', '水利电力');
INSERT INTO `trades` VALUES ('13', '快速消费品（食品/饮料/烟草/化妆品）');
INSERT INTO `trades` VALUES ('14', '耐用消费品');
INSERT INTO `trades` VALUES ('15', '纺织/制衣');
INSERT INTO `trades` VALUES ('16', '医药/保健/生物工程');
INSERT INTO `trades` VALUES ('17', '房地产/建筑/装潢');
INSERT INTO `trades` VALUES ('18', '贸易/进出口');
INSERT INTO `trades` VALUES ('19', '零售/批发');
INSERT INTO `trades` VALUES ('20', '咨询顾问');
INSERT INTO `trades` VALUES ('21', '广告/公关');
INSERT INTO `trades` VALUES ('22', '传媒/文化艺术');
INSERT INTO `trades` VALUES ('23', '酒店/餐饮');
INSERT INTO `trades` VALUES ('24', '娱乐/体育/休闲');
INSERT INTO `trades` VALUES ('25', '环保');
INSERT INTO `trades` VALUES ('26', '猎头/人力资源服务');
INSERT INTO `trades` VALUES ('27', '教育/培训');
INSERT INTO `trades` VALUES ('28', '旅游服务');
INSERT INTO `trades` VALUES ('29', '法律服务');
INSERT INTO `trades` VALUES ('30', '政府/事业单位/科研院所');
INSERT INTO `trades` VALUES ('31', '非赢利性组织/公益事业');
INSERT INTO `trades` VALUES ('32', '农/林/牧/渔');
INSERT INTO `trades` VALUES ('33', '多元化集团');
INSERT INTO `trades` VALUES ('34', '科技研究与综合技术服务业');
INSERT INTO `trades` VALUES ('35', '其它');

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
  `vipconsumno_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip_records
-- ----------------------------
INSERT INTO `vip_records` VALUES ('1', '1', '1', '1', 'ci', '1', '2013-01-30 10:58:03', '2013-01-30 10:58:08', '2013-01-30 10:58:12', '2013-02-01 10:58:16', '15', '3', null, null);
INSERT INTO `vip_records` VALUES ('2', '1', '2', '1', 'ci', '1', '2013-01-30 10:59:14', '2013-01-30 10:59:19', '2013-01-30 10:59:24', '2013-02-01 10:59:31', '17', '4', null, null);

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
-- Table structure for `vipconsumnos`
-- ----------------------------
DROP TABLE IF EXISTS `vipconsumnos`;
CREATE TABLE `vipconsumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `situation` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vipconsumnos
-- ----------------------------

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

-- ----------------------------
-- Table structure for `works`
-- ----------------------------
DROP TABLE IF EXISTS `works`;
CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of works
-- ----------------------------
