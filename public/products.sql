/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-04-08 10:22:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palent_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `entile` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  `vipprice` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
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
  `is_jf` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `is_hide` int(11) DEFAULT NULL,
  `service_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', null, 'nihao', null, null, null, '2', '2', null, '12', 'Car', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('2', null, 'ceshi', null, null, null, '2', '2', null, '13', 'Spa', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('3', null, 'VIP快捷通道贵宾接送机', null, null, '我们为您提供机场通行优先权，让您的商旅畅通无阻；<br>\r\n我们的豪华车队24小时在为您候命，随时准备以贵宾礼仪接送机服务；<br>\r\n资深英伦式管家为您安排行程并全程跟从；<br>\r\n如需预定请致电：400 008 7272', '3', '3', null, '10', null, null, null, '3', null, null, '7', '1', null, null, null, null, null, '6');
INSERT INTO `products` VALUES ('4', null, '棋牌室', null, null, null, '3', '3', null, '11', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '8');
INSERT INTO `products` VALUES ('5', null, '专业雪茄品鉴', null, null, '商务旅客在机场等候期间会进行很多商务活动。而集中开发思路的高端商务会议，则是商务人群研究桥牌活动中最好的放松方式，有效的活动空间有着劳逸结合内的软硬件条件下的服务，将体现出T2max的专业服务水准。\r\n     <br/>真正的雪茄客不是“抽”雪茄，而是“品尝”雪茄。每吸一口都是味觉上极大的享受。T2MAX雪茄吧收藏大量进口极品雪茄，等待您的品鉴。', '3', '3', null, '12', null, null, null, null, null, null, '7', null, null, null, null, null, null, '8');
INSERT INTO `products` VALUES ('6', null, 'SPA美体', null, null, '籍由身心灵平衡管理、抗老回春、曲雕管理、酸疼管理、抗压管理；<br/><br/>\r\n	透过芳疗技师的温润手感来安抚、补给、修护您所求的部分； <br/><br/>\r\n	适度触动您的味觉、听觉、嗅觉、触觉；<br/><br/>\r\n	来提升心灵深处的能量，由内而外打到身心灵平衡、肌肤细腻润泽；<br/><br/>\r\n	在私密的空间里，享受水疗、按摩、护肤的专业服务及五星级充满自然气息的舒适氛围<br/><br/>\r\n	引领将抗生活方式、让您由心感受。', '3', '3', null, '13', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '4');
INSERT INTO `products` VALUES ('7', null, '精致餐饮', null, null, '我们为您精心准备了均衡营养搭配的膳食套餐，<br/>\r\n	 	并能为您炮制任何您能想得到的美食。<br/>\r\n	 自助餐热炉：6款热菜、1款甜汤、1款西式汤<br/>\r\n	煎扒档：	牛排、春鸡、三文鱼等<br/>\r\n	面点档：	上海小馄饨、上海生煎、油豆腐粉丝汤、鸡鸭血汤、面条2款<br/>\r\n	冷菜：	中西式冷菜各2款、自配沙拉、寿司和刺身<br/>\r\n	面包和西点：4款面包、6款西点、冰激凌<br/>\r\n	饮料：	2款碳酸汽水、3款果汁、1款啤酒、咖啡和茶<br/><br>\r\n\r\n	     用餐时间和形式<br>\r\n	    早餐时间为6:00--9:30；茶点时间为9:30--11:00；<br>\r\n	    午餐时间为11:00--13:30；<br>\r\n	    下午茶时间为13:30--17:00；晚餐时间为17:00--21:30；<br>\r\n	    夜宵时间为21:00--6:00；<br>\r\n              其中早午晚餐均为自助餐，其余时间为零点。', '3', '3', null, '14', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '8');
INSERT INTO `products` VALUES ('8', null, '计时客房', null, null, '超五星级标准设计的豪华客房，航班延误\r\n	 	或中转途中，解除旅途疲惫的良方莫过于\r\n	 	沐浴后，全身放松的躺在超级舒适大床上，\r\n	 	体验着漫步云端的惬意。\r\n	 	所有房价已含10%的服务费（服务费不打\r\n	 	折）和每日1份自助早餐；\r\n                     赠送每日报纸；\r\n		提供市话免费，国内长途及国际长途电\r\n		话有偿服务；免费数字电视服务（含8套\r\n		外语频道）;赠送精美茶点和水果一份；\r\n		住店客人均享受免费使用健身房和游泳池\r\n		的优惠；提供有偿专职接机服务；', '3', '3', '元/小时', '15', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '5');
INSERT INTO `products` VALUES ('9', null, '商务会议', null, null, '  豪华布局的行政会议室，可充分利用候机时间，召开全球电话视频会议\r\n            绝对安静、私密的空间，更适合高层决议的产生', '3', '3', null, '16', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('10', null, '传统文化', null, null, null, '3', '3', null, '17', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '7');
INSERT INTO `products` VALUES ('11', null, '健身', null, null, null, '3', '3', null, '18', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '7');
INSERT INTO `products` VALUES ('12', null, '泳池', null, null, null, '3', '3', null, '19', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '7');
INSERT INTO `products` VALUES ('13', null, '形象塑造', null, null, '“英国裁缝街”萨维尔街(Savile Row) 是伦敦西区一条两\r\n	         百多年历史的小街汇聚世界一些最顶尖的裁缝师，我们在这高级定制男装的圣地专门为您量身定制。', '3', '3', null, '20', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('14', null, '商务秘书', null, null, '18小时全程随从，处理会议纪要、商务往来文件、草拟并可翻译各类文书及函件。', '3', '3', null, '21', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('15', null, '全天候安全顾问', null, null, '可提供24小时全程安全顾问服务', '3', '3', null, '22', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('16', null, '机场免税商品预定', null, null, null, '3', '3', null, '23', null, null, null, null, null, null, '7', null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('17', null, '虹桥T2spa', null, null, null, '3', '3', '元/小时', '13', 'Spa', '1', null, '3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('18', '6', '足底按摩', 'Foot massage', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('19', '18', '精油', 'Essential oil', null, null, '368', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('20', '18', '牛奶、花瓣（送足底火罐拔毒）', 'Milk and petals (foot fire pot detox for free)', null, null, '288', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('21', '18', '肾保健（送足底火罐拔毒）', 'Kidney care (foot fire pot detox for free)', null, null, '288', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('22', '18', '药物', 'Medicine', null, null, '218', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('23', '18', '保健', 'Healthcare', null, null, '168', null, '元/45分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('24', '18', '纤脚 /刮脚 /捏脚 ', 'Foot sticking/ foot scraping/ foot pinching', null, null, '78', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('25', '18', '足底火罐拔毒', 'Foot fire pot detox', null, null, '108', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('26', '6', '身体按摩', 'Body massage', null, null, null, null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('27', '26', '特色体膜', 'Special body mask', null, null, '888', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('28', '26', '瑞典香薰', 'Swedish aromatherapy ', null, null, '758', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('29', '26', '淋巴排毒', 'Lymph detox', null, null, '628', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('30', '26', '泰式按摩', 'Thai massage', null, null, '628', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('31', '26', '日式按摩', 'Japanese massage', null, null, '498', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('32', '26', '中式按摩', 'Chinese  accupressure massage', null, null, '368', null, '元/45分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('33', '26', '东方三椎', 'Trip bodycare', null, null, '258', null, '元/30分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('34', '6', '面部护理', 'Facial care', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('35', '34', '快速面部护理', 'Fast facial care', null, null, '368', null, '元/40分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('36', '34', '骨胶原面膜', 'collagen mask', null, null, '368', null, '元/30分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('37', '34', '活水保湿面部护理', 'Flowing water moisture facial care', null, null, '498', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('38', '34', '活力能量面部护理', 'Vibrant energy facial care', null, null, '628', null, '元/60分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('39', '34', '骨胶原紧致提升护理', 'Collagen revitalizing and firming', null, null, '888', null, '元/75分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('40', '6', '经典疗程', 'Classical treatment', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('41', '40', '时差恢复', 'Jet-lag recovery', null, null, '1278', null, '元/90分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('42', '40', '商务之旅', 'Business travel', null, null, '1408', null, '元/90分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('43', '40', '皇家四手', 'Royal four-hand massage', null, null, '1798', null, '元/90分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('44', '6', '休憩推荐', 'Leisure recommendation', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('45', '44', '放松足疗', 'Relaxing foot massage', null, null, '128', null, '元/30分钟', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('46', '44', '背部拔罐', 'Cupping on the back', null, null, '238', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('47', '44', '背部刮痧', 'Pinching on the back', null, null, '238', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('48', '6', '美发沙龙', 'Hairdressing salon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('49', '48', '洗+吹', 'Washing + drying', null, null, '108', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('50', '48', '洗+剪+吹', 'Washing + cutting + drying', null, null, '158', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('51', '48', '洗+剪+吹+造型', 'Washing + cutting + drying + fashioning', null, null, '198', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('52', '48', '各式造型烫发', 'Various fashioning perm', null, null, '498', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('53', '48', '各式挑染', 'Various highlighting', null, null, '498', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('54', '48', '高级发膜', 'Senior hair mask', null, null, '668', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('55', '48', '儿童剪发', 'Hairdressing for kids', null, null, '108', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('56', '48', '修胡须', 'Shaving', null, null, '78', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('57', '6', '美甲沙龙', 'Manicure salon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('58', '57', '修甲', 'Manicure', null, null, '128', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('59', '57', '美甲', 'Manicure Colored', null, null, '168', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('60', '57', '美趾甲', 'Pedicure Colored', null, null, '168', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('61', '57', '纤手护理', 'Anti-Aging Hand Care', null, null, '168', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('62', '57', '纤脚护理', 'Intensive Foot Care', null, null, '218', null, '元/次', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
