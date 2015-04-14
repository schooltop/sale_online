/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : t2max

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2013-03-31 22:01:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cad_positions`
-- ----------------------------
DROP TABLE IF EXISTS `cad_positions`;
CREATE TABLE `cad_positions` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `nposition` varchar(255) DEFAULT NULL,
  `dept_id` int(12) DEFAULT NULL,
  `positionname` varchar(255) DEFAULT NULL,
  `positionnum` int(12) DEFAULT NULL,
  `limittime` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `wage` int(12) DEFAULT NULL,
  `towage` int(12) DEFAULT NULL,
  `exparience` int(12) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `toage` varchar(255) DEFAULT NULL,
  `educationbg_id` int(12) DEFAULT NULL,
  `city_id` int(12) DEFAULT NULL,
  `describe` text,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `keya` varchar(255) DEFAULT NULL,
  `keyb` varchar(255) DEFAULT NULL,
  `keyc` varchar(255) DEFAULT NULL,
  `keyd` varchar(255) DEFAULT NULL,
  `user_id` int(12) DEFAULT NULL,
  `situation_id` int(12) DEFAULT NULL,
  `cad_contact_id` int(12) DEFAULT NULL,
  `need` varchar(255) DEFAULT NULL,
  `jobid` varchar(255) DEFAULT NULL,
  `netsite` varchar(255) DEFAULT NULL,
  `timeline` varchar(255) DEFAULT NULL,
  `workquale` varchar(255) DEFAULT NULL,
  `hidden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cad_positions
-- ----------------------------
INSERT INTO `cad_positions` VALUES ('1', '用友软件股份有限公司', '828', '1', '助理总经理', '2', '2012-10-09 11:58:17', '2012-10-09 03:15:05', '2012-10-09 04:02:31', '5000', '6000', '5', '', '', '', null, '1', '', '赵晶超', 'career@bimba.edu.cn;chenyug@ufida.com.cn', '', '', '', '', '7', '2', '6012', null, 'JOB0000001', '', '', '', null);
INSERT INTO `cad_positions` VALUES ('2', '用友软件股份有限公司', '26', '1', '项目总监', '1', '2012-10-09 11:53:59', '2012-10-09 03:17:37', '2012-10-23 06:34:10', '8000', '10000', '5', '', '', '', null, '1', '<p><span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">1、 负责客户的整体经营目标：</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">2、 组织制订客户经营计划、经营策略及组织资源执行；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">3、 组建和管理客户经营组织；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">4、 深入参与项目预算、计划的制定和管理计划的审批；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">5、 负责项目全生命周期的概算、预算、结算管理；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">6、组织按目标、计划完成各项活动、任务；</span></p>\r\n<p>招聘要求：</p>\r\n<p><span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">1、 本科或本科以上学历，企业管理、财务、信息管理相关专业，；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">2、 具有5年ERP软件项目的实施和项目管理经验，独立负责过财务、供应链、生产制造领域的全程实施；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">3、 具有丰富的项目管理知识和经验、较强的知识提炼的能力；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">4、具有较好的团队管理能力以及项目把控能力</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">5、具备良好的团队协作精神、敬业精神，责任心强、工作积极主动；</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">6、良好的沟通、表达能力；能够承接工作压力，可以经常出差</span></p>', '赵晶超', 'career@bimba.edu.cn', '', '', '', '', '7', '2', '6012', null, 'JOB0000002', '', '', '', null);
INSERT INTO `cad_positions` VALUES ('3', 'Amazon.cn', '13', '1', 'Recruiting Manager', '3', '2012-10-09 14:57:20', '2012-10-09 07:15:59', '2012-10-23 06:33:52', '6000', '8000', '6', '', '', '', null, '1', '<p>&nbsp;<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">Responsibilities:&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">1. Leads the staffing process and completion of hiring goals.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">2. Measures and analyzes key recruiting metrics for the purpose of managing recruiting effectiveness and educating our clients.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">3. Work closely with business in order to deeply understand teams&rsquo; organization structure, responsibilities, strengths/weaknesses and key business drivers. Utilize this information to develop most effective recruiting strategies.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">4. Consult with internal clients on overall recruiting strategy for both the short and long term needs of the business.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">5. Responsible for working with Technical Leaders and hiring managers to define recruiting plan for the year.</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">6. Initiate and maintain a network of contacts to help identify qualified candidates for hiring needs. Help drive all sourcing channels actively, including employee referrals, utilization of vendors, campus hiring, etc.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">7. Active participation in the full cycle of recruitment efforts, including emphasis on the ability of assessment skills to help evaluating candidates and ensuring the highest bar.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">8. Emphasis on continuous improvement, as such it is expected that you will spend time to ensure ongoing education of hiring managers and interviews on recruitment &ldquo;best practice&rdquo; and interview skills training.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">9. Implement the recruitment tools/systems in China base on the guidance from HQ.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">Requirements:&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">1. Must have a Bachelor&rsquo;s Degree at a minimum.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">2. A minimum of 6-7 years of recruiting experience including at least 2-3 years in a management role &ndash; ideally within a high-tech environment.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">3. Candidates must have excellent leadership ability necessary to manage a large team, ability to serve as an evangelist for Amazon are also required.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">4. Able to understand business requirements and frame these requirements in such a way that technical and operational solutions can be developed for the highest impact.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">5. Fluent English speaking and writing skills required. Fluent Mandarin speaking and writing skills.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">6. Requires an approachable personal style, effective problem analysis, ability to deal effectively with change and conflict and excellent planning and organization skills.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">7. Knowledge of other fields of HR is a plus.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">8. Requires strong negotiating, influencing and interpersonal skills.</span></p>', 'Minghui Yang', 'career@bimba.edu.cn', '', '', '', '', '7', '2', '4080', null, 'JOB0000003', '', '', '', null);
INSERT INTO `cad_positions` VALUES ('4', '摩立特集团', '20', '1', '咨询顾问', '5', '2012-10-09 15:16:05', '2012-10-09 07:18:18', '2012-10-09 07:23:52', '6000', '10000', '3', '', '', '', null, '1', '<p><span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- 来自世界各著名大学，具有出众的学术和课外成绩&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- 中英文良好&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- 突出的分析和沟通能力，具有团队合作精神&nbsp;</span></p>\r\n<p><strong style=\"margin: 0px; padding: 0px; color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">如需申请上海办公室的咨询顾问职位，请申请者将求职信和简历(中英文)，以及成绩单(如不能在截止日期前送递成绩单原件的复印件，学校官方网站下载的成绩单亦可)发邮件至邮箱：Recruiting_Shanghai@Monitor.com，如需申请北京办公室的咨询顾问职位，请将邮件发送至邮箱：Recruiting_Beijing@Monitor.com，标题栏请使用&ldquo;Monitor Class of 2013 Local Recruiting-申请人的名字-申请人毕业学校&rdquo;的格式。&nbsp;<br />\r\n</strong></p>', '曾翔', 'career@bimba.edu.cn', '', '', '', '', '7', '2', '3021', null, 'JOB0000004', '', '', '', null);
INSERT INTO `cad_positions` VALUES ('5', 'Shanghai Johnson & Johnson Pharmaceuticals，Ltd. ', '41', '1', 'Johnson & Johnson Marketing MBA Program', '5', '2012-10-09 17:38:52', '2012-10-09 09:52:13', '2012-10-09 09:52:18', '8000', '10000', '5', '', '', '', null, '1', '<p>&nbsp;<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- MBA graduates in 2012 or 2013, with 3-year and above working experience;&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- While relevant background is definitely a plus, it is not a must. We are focusing on your FURTURE ABILITY.&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">&bull; Strong logical and problem solving ability&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">&bull; Good to learn new knowledge and skills&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">&bull; Can master complexity, and flexible to adapt new environment&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">&bull; Good communication and build up positive rapport&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">&bull; Positive, and can work under pressure&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- Bi- lingual in Chinese and English&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- Passion for FMCG marketing, and pursue long-term career interest in China&nbsp;</span><br style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\" />\r\n<span style=\"color: rgb(31, 47, 95); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">- The opening is based in Shanghai, China&nbsp;</span></p>', 'Ella Wu　', 'career@bimba.edu.cn', '', '', '', '', '7', '2', '5234', null, 'JOB0000005', '', '', '', null);
INSERT INTO `cad_positions` VALUES ('6', '中信证券', '1', '1', 'HR', '2', '2012-10-25 11:05:37', '2012-10-25 03:14:29', '2012-12-30 14:53:52', '1111555', '12222', '2', '', '25', '25', null, '1', '<p>&nbsp;ds fddshf dsh fds &nbsp;kfkskjf</p>', '吴建巍', 'junliang@nsd.edu.cn', '', '', '', '', '7', '2', '6118', null, 'JOB0000006', '', '', '', null);
INSERT INTO `cad_positions` VALUES ('7', '中信证券', '1', '1', 'HR', null, '2012-10-25 14:00:20', '2012-10-25 06:02:17', '2012-12-30 14:53:06', null, null, null, '', '', null, null, '87', '<p>&nbsp;我但是范德萨范德萨范德萨&nbsp;</p>', '吴建巍', 'career@nsd.edu.cn', null, null, null, null, '7', '2', '6118', null, 'JOB0000000', '', '', '', null);

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
-- Table structure for `checkins`
-- ----------------------------
DROP TABLE IF EXISTS `checkins`;
CREATE TABLE `checkins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_class_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `stu_reg_inf_id` int(11) DEFAULT NULL,
  `late` varchar(255) DEFAULT NULL,
  `leaver` varchar(255) DEFAULT NULL,
  `truant` varchar(255) DEFAULT NULL,
  `latetime` int(11) DEFAULT NULL,
  `leavertime` int(11) DEFAULT NULL,
  `kuaban` varchar(255) DEFAULT NULL,
  `kuabanrecord` varchar(255) DEFAULT NULL,
  `truantrecord` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkins
-- ----------------------------
INSERT INTO `checkins` VALUES ('37', '193', '257', null, '2615', '75', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('38', '193', '257', null, '2615', '81', '迟到', null, null, '36', null, null, null, null);
INSERT INTO `checkins` VALUES ('39', '193', '257', null, '2615', '92', '迟到', null, null, '76', null, null, null, null);
INSERT INTO `checkins` VALUES ('40', '193', '257', null, '2615', '106', '迟到', null, null, '180', null, null, null, null);
INSERT INTO `checkins` VALUES ('41', '193', '257', null, '2615', '109', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('42', '193', '257', null, '2615', '116', '迟到', null, null, '23', null, null, null, null);
INSERT INTO `checkins` VALUES ('43', '193', '257', null, '2615', '134', '迟到', null, null, '36', null, null, null, null);
INSERT INTO `checkins` VALUES ('44', '193', '257', null, '2615', '159', '迟到', null, null, '115', null, null, null, null);
INSERT INTO `checkins` VALUES ('45', '193', '257', null, '2615', '160', '迟到', null, null, '32', null, null, null, null);
INSERT INTO `checkins` VALUES ('46', '193', '257', null, '2615', '163', '迟到', null, null, '60', null, null, null, null);
INSERT INTO `checkins` VALUES ('47', '193', '257', null, '2615', '77', '迟到', null, null, '162', null, null, null, null);
INSERT INTO `checkins` VALUES ('48', '193', '257', null, '2615', '82', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('49', '193', '257', null, '2615', '84', '迟到', null, null, '38', null, null, null, null);
INSERT INTO `checkins` VALUES ('50', '193', '257', null, '2615', '122', '迟到', null, null, '46', null, null, null, null);
INSERT INTO `checkins` VALUES ('51', '193', '257', null, '2615', '141', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('52', '193', '257', null, '2615', '154', '迟到', null, null, '115', null, null, null, null);
INSERT INTO `checkins` VALUES ('53', '193', '257', null, '2616', '75', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('54', '193', '257', null, '2616', '89', '迟到', null, null, '25', null, null, null, null);
INSERT INTO `checkins` VALUES ('55', '193', '257', null, '2616', '92', '迟到', null, null, '5', null, null, null, null);
INSERT INTO `checkins` VALUES ('56', '193', '257', null, '2616', '126', '迟到', null, null, '15', null, null, null, null);
INSERT INTO `checkins` VALUES ('57', '193', '257', null, '2616', '162', '迟到', null, null, '60', null, null, null, null);
INSERT INTO `checkins` VALUES ('58', '193', '257', null, '2616', '99', '迟到', null, null, '5', null, null, null, null);
INSERT INTO `checkins` VALUES ('59', '193', '257', null, '2616', '141', '迟到', null, null, '56', null, null, null, null);
INSERT INTO `checkins` VALUES ('60', '193', '257', null, '2617', '81', '迟到', null, null, '29', null, null, null, null);
INSERT INTO `checkins` VALUES ('61', '193', '257', null, '2617', '90', '迟到', null, null, '26', null, null, null, null);
INSERT INTO `checkins` VALUES ('62', '193', '257', null, '2617', '106', '迟到', null, null, '124', null, null, null, null);
INSERT INTO `checkins` VALUES ('63', '193', '257', null, '2617', '116', '迟到', null, null, '16', null, null, null, null);
INSERT INTO `checkins` VALUES ('64', '193', '257', null, '2617', '140', '迟到', null, null, '18', null, null, null, null);
INSERT INTO `checkins` VALUES ('65', '193', '257', null, '2617', '147', '迟到', null, null, '29', null, null, null, null);
INSERT INTO `checkins` VALUES ('66', '193', '257', null, '2617', '157', '迟到', null, null, '13', null, null, null, null);
INSERT INTO `checkins` VALUES ('67', '193', '257', null, '2617', '159', '迟到', null, null, '101', null, null, null, null);
INSERT INTO `checkins` VALUES ('68', '193', '257', null, '2617', '160', '迟到', null, null, '10', null, null, null, null);
INSERT INTO `checkins` VALUES ('69', '193', '257', null, '2617', '162', '迟到', null, null, '45', null, null, null, null);
INSERT INTO `checkins` VALUES ('70', '193', '257', null, '2617', '163', '迟到', null, null, '34', null, null, null, null);
INSERT INTO `checkins` VALUES ('71', '193', '257', null, '2617', '84', '迟到', null, null, '11', null, null, null, null);
INSERT INTO `checkins` VALUES ('72', '193', '257', null, '2617', '104', '迟到', null, null, '114', null, null, null, null);
INSERT INTO `checkins` VALUES ('73', '193', '257', null, '2617', '141', '迟到', null, null, '98', null, null, null, null);
INSERT INTO `checkins` VALUES ('74', '193', '257', null, '2617', '80', '迟到', null, null, '26', null, null, null, null);
INSERT INTO `checkins` VALUES ('75', '193', '257', null, '2617', '90', '迟到', null, null, '26', null, null, null, null);
INSERT INTO `checkins` VALUES ('76', '193', '257', null, '2617', '106', '迟到', null, null, '124', null, null, null, null);
INSERT INTO `checkins` VALUES ('77', '193', '257', null, '2617', '116', '迟到', null, null, '16', null, null, null, null);
INSERT INTO `checkins` VALUES ('78', '193', '257', null, '2617', '140', '迟到', null, null, '18', null, null, null, null);
INSERT INTO `checkins` VALUES ('79', '193', '257', null, '2617', '147', '迟到', null, null, '29', null, null, null, null);
INSERT INTO `checkins` VALUES ('80', '193', '257', null, '2617', '157', '迟到', null, null, '13', null, null, null, null);
INSERT INTO `checkins` VALUES ('81', '193', '257', null, '2617', '159', '迟到', null, null, '101', null, null, null, null);
INSERT INTO `checkins` VALUES ('82', '193', '257', null, '2617', '160', '迟到', null, null, '10', null, null, null, null);
INSERT INTO `checkins` VALUES ('83', '193', '257', null, '2617', '162', '迟到', null, null, '45', null, null, null, null);
INSERT INTO `checkins` VALUES ('84', '193', '257', null, '2617', '163', '迟到', null, null, '34', null, null, null, null);
INSERT INTO `checkins` VALUES ('85', '193', '257', null, '2617', '84', '迟到', null, null, '11', null, null, null, null);
INSERT INTO `checkins` VALUES ('86', '193', '257', null, '2617', '104', '迟到', null, null, '114', null, null, null, null);
INSERT INTO `checkins` VALUES ('87', '193', '257', null, '2617', '141', '迟到', null, null, '98', null, null, null, null);
INSERT INTO `checkins` VALUES ('88', '193', '257', null, '2617', '81', '迟到', null, null, '29', null, null, null, null);
INSERT INTO `checkins` VALUES ('89', '193', '257', null, '2617', '90', '迟到', null, null, '26', null, null, null, null);
INSERT INTO `checkins` VALUES ('90', '193', '257', null, '2617', '106', '迟到', null, null, '124', null, null, null, null);
INSERT INTO `checkins` VALUES ('91', '193', '257', null, '2617', '116', '迟到', null, null, '16', null, null, null, null);
INSERT INTO `checkins` VALUES ('92', '193', '257', null, '2617', '139', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('93', '193', '257', null, '2617', '140', '迟到', null, null, '18', null, null, null, null);
INSERT INTO `checkins` VALUES ('94', '193', '257', null, '2617', '147', '迟到', null, null, '29', null, null, null, null);
INSERT INTO `checkins` VALUES ('95', '193', '257', null, '2617', '157', '迟到', null, null, '13', null, null, null, null);
INSERT INTO `checkins` VALUES ('96', '193', '257', null, '2617', '159', '迟到', null, null, '101', null, null, null, null);
INSERT INTO `checkins` VALUES ('97', '193', '257', null, '2617', '160', '迟到', null, null, '10', null, null, null, null);
INSERT INTO `checkins` VALUES ('98', '193', '257', null, '2617', '162', '迟到', null, null, '45', null, null, null, null);
INSERT INTO `checkins` VALUES ('99', '193', '257', null, '2617', '163', '迟到', null, null, '34', null, null, null, null);
INSERT INTO `checkins` VALUES ('100', '193', '257', null, '2617', '77', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('101', '193', '257', null, '2617', '82', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('102', '193', '257', null, '2617', '84', '迟到', null, null, '11', null, null, null, null);
INSERT INTO `checkins` VALUES ('103', '193', '257', null, '2617', '85', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('104', '193', '257', null, '2617', '104', '迟到', null, null, '114', null, null, null, null);
INSERT INTO `checkins` VALUES ('105', '193', '257', null, '2617', '141', '迟到', null, null, '98', null, null, null, null);
INSERT INTO `checkins` VALUES ('106', '193', '257', null, '2617', '154', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('107', '193', '257', null, '2617', '1901', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('108', '193', '257', null, '2618', '89', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('109', '193', '257', null, '2618', '91', '迟到', null, null, '10', null, null, null, null);
INSERT INTO `checkins` VALUES ('110', '193', '257', null, '2618', '92', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('111', '193', '257', null, '2618', '100', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('112', '193', '257', null, '2618', '106', '迟到', null, null, '33', null, null, null, null);
INSERT INTO `checkins` VALUES ('113', '193', '257', null, '2618', '116', '迟到', null, null, '30', null, null, null, null);
INSERT INTO `checkins` VALUES ('114', '193', '257', null, '2618', '129', '迟到', null, null, '30', null, null, null, null);
INSERT INTO `checkins` VALUES ('115', '193', '257', null, '2618', '139', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('116', '193', '257', null, '2618', '147', '迟到', null, null, null, null, null, null, null);
INSERT INTO `checkins` VALUES ('117', '193', '257', null, '2618', '149', '迟到', null, null, '30', null, null, null, null);
INSERT INTO `checkins` VALUES ('118', '193', '257', null, '2618', '159', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('119', '193', '257', null, '2618', '77', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('120', '193', '257', null, '2618', '82', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('121', '193', '257', null, '2618', '84', '迟到', null, null, '30', null, null, null, null);
INSERT INTO `checkins` VALUES ('122', '193', '257', null, '2618', '85', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('123', '193', '257', null, '2618', '148', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('124', '193', '257', null, '2618', '154', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('125', '193', '257', null, '2618', '158', '迟到', null, null, '57', null, null, null, null);
INSERT INTO `checkins` VALUES ('126', '193', '257', null, '2618', '1618', '迟到', null, null, '21', null, null, null, null);
INSERT INTO `checkins` VALUES ('127', '193', '257', null, '2618', '1784', '迟到', null, null, '12', null, null, null, null);
INSERT INTO `checkins` VALUES ('128', '193', '257', null, '2618', '1901', '迟到', null, null, '35', null, null, null, null);
INSERT INTO `checkins` VALUES ('129', '193', '257', null, '2618', '1861', '迟到', null, null, '50', null, null, null, null);
INSERT INTO `checkins` VALUES ('130', '193', '257', null, '2616', '85', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('131', '187', '256', null, '2525', '172', '迟到', null, null, '25', null, null, null, null);
INSERT INTO `checkins` VALUES ('132', '187', '256', null, '2525', '175', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('133', '187', '256', null, '2525', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('134', '187', '256', null, '2525', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('135', '187', '256', null, '2525', '218', '迟到', null, null, '35', null, null, null, null);
INSERT INTO `checkins` VALUES ('136', '187', '256', null, '2525', '220', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('137', '187', '256', null, '2525', '226', '迟到', null, null, '137', null, null, null, null);
INSERT INTO `checkins` VALUES ('138', '187', '256', null, '2525', '241', '迟到', null, null, '130', null, null, null, null);
INSERT INTO `checkins` VALUES ('139', '187', '256', null, '2525', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('140', '187', '256', null, '2525', '2208', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('141', '187', '256', null, '2525', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('142', '187', '256', null, '2525', '1855', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('143', '187', '256', null, '2526', '175', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('144', '187', '256', null, '2526', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('145', '187', '256', null, '2526', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('146', '187', '256', null, '2526', '220', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('147', '187', '256', null, '2526', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('148', '187', '256', null, '2526', '2208', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('149', '187', '256', null, '2526', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('150', '187', '256', null, '2526', '1855', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('151', '187', '256', null, '2527', '175', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('152', '187', '256', null, '2527', '181', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('153', '187', '256', null, '2527', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('154', '187', '256', null, '2527', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('155', '187', '256', null, '2527', '203', '迟到', null, null, null, null, null, null, null);
INSERT INTO `checkins` VALUES ('156', '187', '256', null, '2527', '213', '迟到', null, null, null, null, null, null, null);
INSERT INTO `checkins` VALUES ('157', '187', '256', null, '2527', '214', '迟到', null, null, '30', null, null, null, null);
INSERT INTO `checkins` VALUES ('158', '187', '256', null, '2527', '215', '迟到', null, null, '110', null, null, null, null);
INSERT INTO `checkins` VALUES ('159', '187', '256', null, '2527', '218', '迟到', null, null, '145', null, null, null, null);
INSERT INTO `checkins` VALUES ('160', '187', '256', null, '2527', '220', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('161', '187', '256', null, '2527', '230', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('162', '187', '256', null, '2527', '239', '迟到', null, null, '7', null, null, null, null);
INSERT INTO `checkins` VALUES ('163', '187', '256', null, '2527', '240', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('164', '187', '256', null, '2527', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('165', '187', '256', null, '2527', '255', '迟到', null, null, '22', null, null, null, null);
INSERT INTO `checkins` VALUES ('166', '187', '256', null, '2527', '261', '迟到', null, null, '110', null, null, null, null);
INSERT INTO `checkins` VALUES ('167', '187', '256', null, '2527', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('168', '187', '256', null, '2527', '1581', '迟到', null, null, '51', null, null, null, null);
INSERT INTO `checkins` VALUES ('169', '187', '256', null, '2527', '1855', '迟到', null, null, '90', null, null, null, null);
INSERT INTO `checkins` VALUES ('170', '187', '256', null, '2528', '175', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('171', '187', '256', null, '2528', '178', null, '早退', null, null, '45', null, null, null);
INSERT INTO `checkins` VALUES ('172', '187', '256', null, '2528', '181', '迟到', null, null, '30', null, null, null, null);
INSERT INTO `checkins` VALUES ('173', '187', '256', null, '2528', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('174', '187', '256', null, '2528', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('175', '187', '256', null, '2528', '206', null, '早退', null, null, '120', null, null, null);
INSERT INTO `checkins` VALUES ('176', '187', '256', null, '2528', '220', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('177', '187', '256', null, '2528', '230', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('178', '187', '256', null, '2528', '240', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('179', '187', '256', null, '2528', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('180', '187', '256', null, '2528', '255', null, '早退', null, null, '80', null, null, null);
INSERT INTO `checkins` VALUES ('181', '187', '256', null, '2528', '259', null, '早退', null, null, '50', null, null, null);
INSERT INTO `checkins` VALUES ('182', '187', '256', null, '2528', '267', '迟到', null, null, '52', null, null, null, null);
INSERT INTO `checkins` VALUES ('183', '187', '256', null, '2528', '2206', null, '早退', null, null, '50', null, null, null);
INSERT INTO `checkins` VALUES ('184', '187', '256', null, '2528', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('185', '187', '256', null, '2528', '1630', null, '早退', null, null, '100', null, null, null);
INSERT INTO `checkins` VALUES ('186', '187', '256', null, '2528', '1660', null, '早退', null, null, '100', null, null, null);
INSERT INTO `checkins` VALUES ('187', '187', '256', null, '2529', '166', '迟到', null, null, '85', null, null, null, null);
INSERT INTO `checkins` VALUES ('188', '187', '256', null, '2529', '173', '迟到', null, null, '68', null, null, null, null);
INSERT INTO `checkins` VALUES ('189', '187', '256', null, '2529', '181', '迟到', null, null, '96', null, null, null, null);
INSERT INTO `checkins` VALUES ('190', '187', '256', null, '2529', '183', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('191', '187', '256', null, '2529', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('192', '187', '256', null, '2529', '196', '迟到', null, null, '150', null, null, null, null);
INSERT INTO `checkins` VALUES ('193', '187', '256', null, '2529', '197', '迟到', null, null, '8', null, null, null, null);
INSERT INTO `checkins` VALUES ('194', '187', '256', null, '2529', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('195', '187', '256', null, '2529', '203', '迟到', null, null, '149', null, null, null, null);
INSERT INTO `checkins` VALUES ('196', '187', '256', null, '2529', '213', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('197', '187', '256', null, '2529', '214', '迟到', null, null, '120', null, null, null, null);
INSERT INTO `checkins` VALUES ('198', '187', '256', null, '2529', '218', '迟到', null, null, '55', null, null, null, null);
INSERT INTO `checkins` VALUES ('199', '187', '256', null, '2529', '223', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('200', '187', '256', null, '2529', '226', '迟到', null, null, '6', null, null, null, null);
INSERT INTO `checkins` VALUES ('201', '187', '256', null, '2529', '236', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('202', '187', '256', null, '2529', '239', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('203', '187', '256', null, '2529', '240', '迟到', null, null, '184', null, null, null, null);
INSERT INTO `checkins` VALUES ('204', '187', '256', null, '2529', '241', '迟到', null, null, '76', null, null, null, null);
INSERT INTO `checkins` VALUES ('205', '187', '256', null, '2529', '248', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('206', '187', '256', null, '2529', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('207', '187', '256', null, '2529', '253', '迟到', null, null, '15', null, null, null, null);
INSERT INTO `checkins` VALUES ('208', '187', '256', null, '2529', '255', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('209', '187', '256', null, '2529', '260', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('210', '187', '256', null, '2529', '261', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('211', '187', '256', null, '2529', '264', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('212', '187', '256', null, '2529', '265', '迟到', null, null, '174', null, null, null, null);
INSERT INTO `checkins` VALUES ('213', '187', '256', null, '2529', '2206', '迟到', null, null, '184', null, null, null, null);
INSERT INTO `checkins` VALUES ('214', '187', '256', null, '2529', '2207', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('215', '187', '256', null, '2529', '2209', '迟到', null, null, '108', null, null, null, null);
INSERT INTO `checkins` VALUES ('216', '187', '256', null, '2529', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('217', '187', '256', null, '2529', '1581', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('218', '187', '256', null, '2529', '1660', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('219', '187', '256', null, '2530', '171', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('220', '187', '256', null, '2530', '172', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('221', '187', '256', null, '2530', '175', '迟到', null, null, '44', null, null, null, null);
INSERT INTO `checkins` VALUES ('222', '187', '256', null, '2530', '178', '迟到', null, null, '50', null, null, null, null);
INSERT INTO `checkins` VALUES ('223', '187', '256', null, '2530', '181', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('224', '187', '256', null, '2530', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('225', '187', '256', null, '2530', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('226', '187', '256', null, '2530', '203', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('227', '187', '256', null, '2530', '214', '迟到', null, null, '105', null, null, null, null);
INSERT INTO `checkins` VALUES ('228', '187', '256', null, '2530', '215', '迟到', null, null, '45', null, null, null, null);
INSERT INTO `checkins` VALUES ('229', '187', '256', null, '2530', '218', '迟到', null, null, '90', null, null, null, null);
INSERT INTO `checkins` VALUES ('230', '187', '256', null, '2530', '225', '迟到', null, null, '49', null, null, null, null);
INSERT INTO `checkins` VALUES ('231', '187', '256', null, '2530', '230', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('232', '187', '256', null, '2530', '235', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('233', '187', '256', null, '2530', '240', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('234', '187', '256', null, '2530', '241', '迟到', null, null, '59', null, null, null, null);
INSERT INTO `checkins` VALUES ('235', '187', '256', null, '2530', '248', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('236', '187', '256', null, '2530', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('237', '187', '256', null, '2530', '264', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('238', '187', '256', null, '2530', '2207', '迟到', null, null, '76', null, null, null, null);
INSERT INTO `checkins` VALUES ('239', '187', '256', null, '2530', '2208', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('240', '187', '256', null, '2530', '2209', '迟到', null, null, '90', null, null, null, null);
INSERT INTO `checkins` VALUES ('241', '187', '256', null, '2530', '90', '迟到', null, null, '57', null, null, null, null);
INSERT INTO `checkins` VALUES ('242', '187', '256', null, '2530', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('243', '187', '256', null, '2530', '1581', '迟到', null, null, '53', null, null, null, null);
INSERT INTO `checkins` VALUES ('244', '187', '256', null, '2530', '1660', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('245', '187', '256', null, '2530', '1855', '迟到', null, null, '105', null, null, null, null);
INSERT INTO `checkins` VALUES ('246', '187', '256', null, '2530', '1599', '迟到', null, null, '32', null, null, null, null);
INSERT INTO `checkins` VALUES ('247', '187', '256', null, '2531', '171', '迟到', null, null, '45', null, null, null, null);
INSERT INTO `checkins` VALUES ('248', '187', '256', null, '2531', '172', '迟到', null, null, '47', null, null, null, null);
INSERT INTO `checkins` VALUES ('249', '187', '256', null, '2531', '173', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('250', '187', '256', null, '2531', '176', '迟到', null, null, '42', null, null, null, null);
INSERT INTO `checkins` VALUES ('251', '187', '256', null, '2531', '181', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('252', '187', '256', null, '2531', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('253', '187', '256', null, '2531', '197', '迟到', null, null, '90', null, null, null, null);
INSERT INTO `checkins` VALUES ('254', '187', '256', null, '2531', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('255', '187', '256', null, '2531', '203', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('256', '187', '256', null, '2531', '209', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('257', '187', '256', null, '2531', '213', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('258', '187', '256', null, '2531', '214', '迟到', null, null, '172', null, null, null, null);
INSERT INTO `checkins` VALUES ('259', '187', '256', null, '2531', '218', '迟到', null, null, '55', null, null, null, null);
INSERT INTO `checkins` VALUES ('260', '187', '256', null, '2531', '219', '迟到', null, null, '45', null, null, null, null);
INSERT INTO `checkins` VALUES ('261', '187', '256', null, '2531', '221', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('262', '187', '256', null, '2531', '223', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('263', '187', '256', null, '2531', '225', '迟到', null, null, '47', null, null, null, null);
INSERT INTO `checkins` VALUES ('264', '187', '256', null, '2531', '226', '迟到', null, null, '42', null, null, null, null);
INSERT INTO `checkins` VALUES ('265', '187', '256', null, '2531', '239', '迟到', null, null, '35', null, null, null, null);
INSERT INTO `checkins` VALUES ('266', '187', '256', null, '2531', '240', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('267', '187', '256', null, '2531', '247', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('268', '187', '256', null, '2531', '249', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('269', '187', '256', null, '2531', '251', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('270', '187', '256', null, '2531', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('271', '187', '256', null, '2531', '253', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('272', '187', '256', null, '2531', '255', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('273', '187', '256', null, '2531', '261', '迟到', null, null, '55', null, null, null, null);
INSERT INTO `checkins` VALUES ('274', '187', '256', null, '2531', '264', '迟到', null, null, '43', null, null, null, null);
INSERT INTO `checkins` VALUES ('275', '187', '256', null, '2531', '265', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('276', '187', '256', null, '2531', '2206', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('277', '187', '256', null, '2531', '2207', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('278', '187', '256', null, '2531', '2208', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('279', '187', '256', null, '2531', '2209', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('280', '187', '256', null, '2531', '96', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('281', '187', '256', null, '2531', '153', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('282', '187', '256', null, '2531', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('283', '187', '256', null, '2531', '1581', '迟到', null, null, '77', null, null, null, null);
INSERT INTO `checkins` VALUES ('284', '187', '256', null, '2531', '1630', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('285', '187', '256', null, '2531', '1660', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('286', '187', '256', null, '2531', '1855', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('287', '187', '256', null, '2531', '1599', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('288', '187', '256', null, '2532', '166', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('289', '187', '256', null, '2532', '172', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('290', '187', '256', null, '2532', '176', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('291', '187', '256', null, '2532', '181', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('292', '187', '256', null, '2532', '187', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('293', '187', '256', null, '2532', '196', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('294', '187', '256', null, '2532', '197', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('295', '187', '256', null, '2532', '198', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('296', '187', '256', null, '2532', '199', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('297', '187', '256', null, '2532', '202', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('298', '187', '256', null, '2532', '203', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('299', '187', '256', null, '2532', '209', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('300', '187', '256', null, '2532', '213', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('301', '187', '256', null, '2532', '214', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('302', '187', '256', null, '2532', '215', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('303', '187', '256', null, '2532', '218', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('304', '187', '256', null, '2532', '219', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('305', '187', '256', null, '2532', '221', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('306', '187', '256', null, '2532', '224', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('307', '187', '256', null, '2532', '225', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('308', '187', '256', null, '2532', '240', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('309', '187', '256', null, '2532', '241', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('310', '187', '256', null, '2532', '247', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('311', '187', '256', null, '2532', '249', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('312', '187', '256', null, '2532', '252', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('313', '187', '256', null, '2532', '253', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('314', '187', '256', null, '2532', '255', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('315', '187', '256', null, '2532', '260', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('316', '187', '256', null, '2532', '264', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('317', '187', '256', null, '2532', '265', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('318', '187', '256', null, '2532', '2206', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('319', '187', '256', null, '2532', '2207', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('320', '187', '256', null, '2532', '2208', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('321', '187', '256', null, '2532', '2209', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('322', '187', '256', null, '2532', '96', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('323', '187', '256', null, '2532', '153', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('324', '187', '256', null, '2532', '1580', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('325', '187', '256', null, '2532', '1660', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('326', '187', '256', null, '2532', '1855', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('327', '187', '256', null, '2532', '1599', null, null, '没来', null, null, null, null, '');
INSERT INTO `checkins` VALUES ('328', '193', '96', null, '2327', '80', null, null, null, null, null, '跨班', '2', null);

-- ----------------------------
-- Table structure for `depts`
-- ----------------------------
DROP TABLE IF EXISTS `depts`;
CREATE TABLE `depts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depts
-- ----------------------------
INSERT INTO `depts` VALUES ('1', '空港管理');
INSERT INTO `depts` VALUES ('2', '空港前台');
INSERT INTO `depts` VALUES ('3', '空港保洁');
INSERT INTO `depts` VALUES ('4', '空港美发师');
INSERT INTO `depts` VALUES ('5', '空港技师');

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
  `comfrom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line_items
-- ----------------------------
INSERT INTO `line_items` VALUES ('2', '3', '2', null, '1', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('3', '4', '1', null, '1', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('4', '4', '2', null, '1', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('5', '5', '3', null, '3', '9', null, null, '2013-01-22 17:26:07', null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('6', '6', '3', null, '1', '3', null, null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('7', '7', '3', '3', '1', '3', null, null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('8', '8', '3', null, '2', '6', null, null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('9', '9', '3', null, '1', '3', null, null, null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('10', '10', '3', null, '1', '3', '10', '2', null, null, null, null, null, null, null);
INSERT INTO `line_items` VALUES ('11', '11', '3', '3', '2', '6', '10', '2', null, null, '2013-01-22 03:03:42', '2013-01-22 03:03:42', null, null, null);
INSERT INTO `line_items` VALUES ('12', '12', '3', '3', '1', '3', '10', '2', null, null, '2013-01-24 03:38:33', '2013-01-24 03:38:33', null, null, null);
INSERT INTO `line_items` VALUES ('13', '13', '3', '3', '2', '6', '10', '2', null, null, '2013-01-25 04:49:41', '2013-01-25 04:49:41', null, null, null);
INSERT INTO `line_items` VALUES ('14', '14', '13', '3', '2', '6', '20', '3', '2013-02-01 00:00:00', '2013-02-01 06:04:00', '2013-02-01 06:04:00', '2013-02-01 06:04:00', null, null, null);
INSERT INTO `line_items` VALUES ('15', '15', '13', '3', '3', '9', '20', '3', '2013-03-01 00:00:00', '2013-02-01 06:05:31', '2013-02-01 06:05:31', '2013-02-01 06:05:31', null, null, null);
INSERT INTO `line_items` VALUES ('16', '17', '3', '3', '1', '3', '10', '2', '2013-02-01 00:00:00', '2013-02-01 07:26:05', '2013-02-01 07:26:05', '2013-02-01 07:26:05', null, null, null);
INSERT INTO `line_items` VALUES ('17', '18', '3', '3', '1', '3', '10', '2', '2013-02-01 00:00:00', '2013-02-01 07:31:14', '2013-02-01 07:31:14', '2013-02-01 07:31:14', null, null, null);
INSERT INTO `line_items` VALUES ('18', '19', '3', '3', '1', '3', '10', '2', '2013-02-01 00:00:00', '2013-02-01 07:46:04', '2013-02-01 07:46:04', '2013-02-01 07:46:04', null, null, null);
INSERT INTO `line_items` VALUES ('19', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 07:31:48', '2013-03-31 07:31:48', '2013-03-31 07:31:48', null, null, '店面');
INSERT INTO `line_items` VALUES ('20', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 07:36:22', '2013-03-31 07:36:22', '2013-03-31 07:36:22', null, null, '店面');
INSERT INTO `line_items` VALUES ('21', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 07:39:37', '2013-03-31 07:39:37', '2013-03-31 07:39:37', null, null, '店面');
INSERT INTO `line_items` VALUES ('22', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 07:39:54', '2013-03-31 07:39:54', '2013-03-31 07:39:54', null, null, '店面');
INSERT INTO `line_items` VALUES ('23', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 07:41:52', '2013-03-31 07:41:52', '2013-03-31 07:41:52', null, null, '店面');
INSERT INTO `line_items` VALUES ('24', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 07:44:11', '2013-03-31 07:44:11', '2013-03-31 07:44:11', null, null, '店面');
INSERT INTO `line_items` VALUES ('25', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 07:45:55', '2013-03-31 07:45:55', '2013-03-31 07:45:55', null, null, '店面');
INSERT INTO `line_items` VALUES ('26', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 13:54:45', '2013-03-31 13:54:45', '2013-03-31 13:54:45', null, null, '店面');
INSERT INTO `line_items` VALUES ('27', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 13:57:18', '2013-03-31 13:57:18', '2013-03-31 13:57:18', null, null, '店面');
INSERT INTO `line_items` VALUES ('28', null, '17', '3', '1', '3', '13', '2', '2013-03-31 00:00:00', '2013-03-31 13:58:54', '2013-03-31 13:58:54', '2013-03-31 13:58:54', null, null, '店面');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
INSERT INTO `orders` VALUES ('20', 'ORDER0000020', null, null, null, null, null, null, null, null, '3', null, '2013-03-31 07:44:11', '2013-03-31 07:44:11', null, null, null, null, null);
INSERT INTO `orders` VALUES ('21', 'ORDER0000021', null, null, null, null, null, null, 'po', null, '3', null, '2013-03-31 07:45:55', '2013-03-31 07:45:55', null, null, null, null, null);
INSERT INTO `orders` VALUES ('22', 'ORDER0000022', null, null, null, null, null, null, 'check', null, '3', null, '2013-03-31 13:54:44', '2013-03-31 13:54:45', null, null, null, null, null);
INSERT INTO `orders` VALUES ('23', 'ORDER0000023', null, null, null, null, null, null, 'check', null, '3', null, '2013-03-31 13:57:18', '2013-03-31 13:57:18', null, null, null, null, null);
INSERT INTO `orders` VALUES ('24', 'ORDER0000024', null, null, null, null, null, null, 'check', null, '3', null, '2013-03-31 13:58:53', '2013-03-31 13:58:53', null, null, null, null, null);

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
  `file_path` varchar(255) DEFAULT NULL,
  `pic_link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures
-- ----------------------------
INSERT INTO `pictures` VALUES ('1', '未命名', 'Production', 'public/system/Productions/1.jpg', null, '2012-12-14 07:15:34', '2012-12-14 07:15:34');
INSERT INTO `pictures` VALUES ('2', '诺基亚', 'Production', 'public/system/Productions/2.jpg', null, '2012-12-18 04:45:20', '2012-12-18 04:45:20');
INSERT INTO `pictures` VALUES ('4', '诺基亚', 'Production', 'public/system/Productions/4.jpg', null, '2012-12-18 04:48:55', '2012-12-18 04:48:55');
INSERT INTO `pictures` VALUES ('5', '鞋子', 'Production', 'public/system/Productions/5.jpg', null, '2012-12-18 05:26:21', '2012-12-18 05:26:21');
INSERT INTO `pictures` VALUES ('6', '555', 'Production', 'public/system/Productions/7_1.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('7', 'dd', 'Production', 'public/system/Productions/7_2.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('8', 'ss', 'Production', 'public/system/Productions/7_3.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('9', 'wee', 'Production', 'public/system/Productions/7_4.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('10', 'ww', 'Production', 'public/system/Productions/7_5.jpg', null, '2012-12-27 02:50:03', '2012-12-27 02:50:03');
INSERT INTO `pictures` VALUES ('20', 'test', 'admin', 'public/system/admins/0_1.png', '/', '2013-01-09 03:54:04', '2013-01-09 03:54:04');
INSERT INTO `pictures` VALUES ('21', 'test1', 'admin', 'public/system/admins/0_2.png', '/', '2013-01-09 03:54:04', '2013-01-09 03:54:04');
INSERT INTO `pictures` VALUES ('22', 'test', 'admin', 'public/system/admins/0_3.png', '/', '2013-01-09 03:54:05', '2013-01-09 03:54:05');
INSERT INTO `pictures` VALUES ('23', '1306453984611205972', 'Production', 'public/system/Productions/_1.jpg', '/', '2013-01-10 03:29:14', '2013-01-10 03:29:14');
INSERT INTO `pictures` VALUES ('24', '111', 'Production', 'public/system/Productions/_1.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('25', '222', 'Production', 'public/system/Productions/_2.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('26', '111', 'Production', 'public/system/Productions/_3.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('27', '222', 'Production', 'public/system/Productions/_4.jpg', '/', '2013-01-10 03:31:30', '2013-01-10 03:31:30');
INSERT INTO `pictures` VALUES ('30', '1', 'Production', 'public/system/Productions/10_1.jpg', '/', '2013-01-10 03:45:04', '2013-01-10 03:45:04');
INSERT INTO `pictures` VALUES ('31', '1306453984611205972', 'Production', 'public/system/Productions/11_1.jpg', '/', '2013-01-10 03:50:44', '2013-01-10 03:50:44');
INSERT INTO `pictures` VALUES ('32', '333', 'Production', 'public/system/Productions/12_1.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures` VALUES ('33', '555', 'Production', 'public/system/Productions/12_2.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures` VALUES ('34', '666', 'Production', 'public/system/Productions/12_3.jpg', '/', '2013-01-10 04:11:38', '2013-01-10 04:11:38');
INSERT INTO `pictures` VALUES ('35', '777', 'Production', 'public/system/Productions/13_1.jpg', '/', '2013-01-10 05:05:33', '2013-01-10 05:05:33');
INSERT INTO `pictures` VALUES ('36', '20120214092252_56903', 'Production', 'public/system/Productions/14_1.jpg', '/', '2013-01-10 05:16:11', '2013-01-10 05:16:11');
INSERT INTO `pictures` VALUES ('37', '888', 'Production', 'public/system/Productions/15_1.jpg', '/', '2013-01-10 05:28:12', '2013-01-10 05:28:12');
INSERT INTO `pictures` VALUES ('38', '999', 'Production', 'public/system/Productions/15_2.jpg', '/', '2013-01-10 05:28:12', '2013-01-10 05:28:12');
INSERT INTO `pictures` VALUES ('39', '1', 'Production', 'public/system/Productions/16_1.jpg', '/', '2013-01-10 05:40:45', '2013-01-10 05:40:45');
INSERT INTO `pictures` VALUES ('40', '2', 'Production', 'public/system/Productions/16_2.jpg', '/', '2013-01-10 05:40:45', '2013-01-10 05:40:45');
INSERT INTO `pictures` VALUES ('41', '3', 'Production', 'public/system/Productions/17_1.jpg', '/', '2013-01-10 05:53:23', '2013-01-10 05:53:23');
INSERT INTO `pictures` VALUES ('42', '20110811002042', 'Production', 'public/system/Productions/18_1.jpg', '/', '2013-01-10 06:33:21', '2013-01-10 06:33:21');
INSERT INTO `pictures` VALUES ('43', '5', 'Production', 'public/system/Productions/19_1.jpg', '/', '2013-01-10 06:36:59', '2013-01-10 06:36:59');
INSERT INTO `pictures` VALUES ('44', '6', 'Production', 'public/system/Productions/20_1.jpg', '/', '2013-01-10 06:40:43', '2013-01-10 06:40:43');
INSERT INTO `pictures` VALUES ('45', 'Photo7', 'Production', 'public/system/Productions/21_1.jpg', '/', '2013-01-10 06:45:10', '2013-01-10 06:45:10');
INSERT INTO `pictures` VALUES ('46', '7', 'Production', 'public/system/Productions/22_1.jpg', '/', '2013-01-10 06:55:58', '2013-01-10 06:55:58');
INSERT INTO `pictures` VALUES ('47', '8', 'Production', 'public/system/Productions/23_1.jpg', '/', '2013-01-10 07:34:49', '2013-01-10 07:34:49');
INSERT INTO `pictures` VALUES ('48', '9', 'Production', 'public/system/Productions/23_2.jpg', '/', '2013-01-10 07:34:49', '2013-01-10 07:34:49');
INSERT INTO `pictures` VALUES ('49', '11', 'Production', 'public/system/Productions/24_1.jpg', '/', '2013-01-10 08:22:01', '2013-01-10 08:22:01');
INSERT INTO `pictures` VALUES ('50', '22', 'Production', 'public/system/Productions/25_1.jpg', '/', '2013-01-10 08:30:01', '2013-01-10 08:30:01');
INSERT INTO `pictures` VALUES ('51', '33', 'Production', 'public/system/Productions/26_1.jpg', '/', '2013-01-11 02:34:31', '2013-01-11 02:34:31');
INSERT INTO `pictures` VALUES ('52', '2009171875377880', 'admin', 'public/system/admins/0_1.jpg', '/productions/21', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures` VALUES ('53', '889938_01-01', 'admin', 'public/system/admins/0_2.jpg', '/productions/25', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures` VALUES ('54', '634686437903276250', 'admin', 'public/system/admins/0_3.jpg', '/productions/24', '2013-01-29 03:58:35', '2013-01-29 03:58:35');
INSERT INTO `pictures` VALUES ('55', '畅安阁', 'Production', 'public/system/Productions/27_1.jpg', '/', '2013-01-29 09:04:58', '2013-01-29 09:04:58');
INSERT INTO `pictures` VALUES ('56', '矿泉水1', 'Production', 'public/system/Productions/28_1.jpg', '/', '2013-01-30 08:43:07', '2013-01-30 08:43:07');
INSERT INTO `pictures` VALUES ('57', '矿泉水2', 'Production', 'public/system/Productions/28_2.jpg', '/', '2013-01-30 08:43:07', '2013-01-30 08:43:07');
INSERT INTO `pictures` VALUES ('58', '芙蓉豪庭1', 'Production', 'public/system/Productions/29_1.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures` VALUES ('59', '芙蓉豪庭2', 'Production', 'public/system/Productions/29_2.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures` VALUES ('60', '芙蓉豪庭3', 'Production', 'public/system/Productions/29_3.jpg', '/', '2013-01-30 08:47:11', '2013-01-30 08:47:11');
INSERT INTO `pictures` VALUES ('61', '慧远1', 'Production', 'public/system/Productions/30_1.jpg', '/', '2013-01-30 08:51:36', '2013-01-30 08:51:36');
INSERT INTO `pictures` VALUES ('62', '慧远2', 'Production', 'public/system/Productions/30_2.jpg', '/', '2013-01-30 08:51:36', '2013-01-30 08:51:36');
INSERT INTO `pictures` VALUES ('63', '金门咖啡1', 'Production', 'public/system/Productions/31_1.jpg', '/', '2013-01-30 08:56:21', '2013-01-30 08:56:21');
INSERT INTO `pictures` VALUES ('64', '开能1', 'Production', 'public/system/Productions/32_1.jpg', '/', '2013-01-30 09:00:56', '2013-01-30 09:00:56');
INSERT INTO `pictures` VALUES ('65', 'SPA1', 'Production', 'public/system/Productions/33_1.jpg', '/', '2013-01-30 09:02:57', '2013-01-30 09:02:57');
INSERT INTO `pictures` VALUES ('66', 'SPA2', 'Production', 'public/system/Productions/33_2.jpg', '/', '2013-01-30 09:02:57', '2013-01-30 09:02:57');
INSERT INTO `pictures` VALUES ('67', '名羊天下1', 'Production', 'public/system/Productions/34_1.jpg', '/', '2013-01-30 09:04:42', '2013-01-30 09:04:42');
INSERT INTO `pictures` VALUES ('68', '名羊天下2', 'Production', 'public/system/Productions/34_2.jpg', '/', '2013-01-30 09:04:42', '2013-01-30 09:04:42');
INSERT INTO `pictures` VALUES ('69', '茗仕', 'Production', 'public/system/Productions/35_1.jpg', '/', '2013-01-30 09:07:01', '2013-01-30 09:07:01');
INSERT INTO `pictures` VALUES ('70', '浦江二号1', 'Production', 'public/system/Productions/36_1.jpg', '/', '2013-01-30 09:11:29', '2013-01-30 09:11:29');
INSERT INTO `pictures` VALUES ('71', '浦江二号2', 'Production', 'public/system/Productions/36_2.jpg', '/', '2013-01-30 09:11:29', '2013-01-30 09:11:29');
INSERT INTO `pictures` VALUES ('72', '浦江一号1', 'Production', 'public/system/Productions/37_1.jpg', '/', '2013-01-30 09:12:47', '2013-01-30 09:12:47');
INSERT INTO `pictures` VALUES ('73', '浦江一号2', 'Production', 'public/system/Productions/37_2.jpg', '/', '2013-01-30 09:12:47', '2013-01-30 09:12:47');
INSERT INTO `pictures` VALUES ('74', '浦之舟1', 'Production', 'public/system/Productions/38_1.jpg', '/', '2013-01-30 09:23:31', '2013-01-30 09:23:31');
INSERT INTO `pictures` VALUES ('75', '唐韵茶坊', 'Production', 'public/system/Productions/39_1.jpg', '/', '2013-01-31 02:59:28', '2013-01-31 02:59:28');
INSERT INTO `pictures` VALUES ('76', '御席公馆1', 'Production', 'public/system/Productions/40_1.jpg', '/', '2013-01-31 03:26:18', '2013-01-31 03:26:18');
INSERT INTO `pictures` VALUES ('77', '御席公馆2', 'Production', 'public/system/Productions/40_2.jpg', '/', '2013-01-31 03:26:18', '2013-01-31 03:26:18');
INSERT INTO `pictures` VALUES ('78', '远大1', 'Production', 'public/system/Productions/41_1.jpg', '/', '2013-01-31 03:37:57', '2013-01-31 03:37:57');
INSERT INTO `pictures` VALUES ('79', '海鸥饭店1', 'Production', 'public/system/Productions/42_1.jpg', '/', '2013-01-31 08:55:42', '2013-01-31 08:55:42');
INSERT INTO `pictures` VALUES ('80', 'VIP快捷通道贵宾接送机服务', 'Product', 'public/images/product/vipfast.jpg', '/', '2013-03-01 16:31:50', '2013-03-01 16:31:54');
INSERT INTO `pictures` VALUES ('81', '棋牌', 'Product', 'public/images/product/xuejia_new.jpg', '/', '2013-03-01 17:36:58', '2013-03-01 17:37:03');
INSERT INTO `pictures` VALUES ('82', '专业雪茄品鉴', 'Product', 'public/images/product/xuejia_new.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('83', 'SPA美体', 'Product', 'public/images/product/spa4.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('84', '精致餐饮', 'Product', 'public/images/product/jingzhicanyin.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('85', '计时客房', 'Product', 'public/images/product/timehotel.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('86', '商务会议', 'Product', 'public/images/product/meeting.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('87', '传统文化', 'Product', 'public/images/product/culture.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('88', '形象塑造', 'Product', 'public/images/product/bodystyle.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('89', '商务秘书', 'Product', 'public/images/product/miss_new.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('90', '全天候安全顾问', 'Product', 'public/images/product/safe_new.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('91', '机场免税商品预定', 'Product', 'public/images/product/', '/', null, null);
INSERT INTO `pictures` VALUES ('92', '健身', 'Product', 'public/images/product/exercises.jpg', '/', null, null);
INSERT INTO `pictures` VALUES ('93', '泳池', 'Product', 'public/images/product/pool.jpg', '/', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'nihao', null, null, '2', '2', null, '12', 'Car', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('2', 'ceshi', null, null, '2', '2', null, '13', 'Spa', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('3', 'VIP快捷通道贵宾接送机', null, '我们为您提供机场通行优先权，让您的商旅畅通无阻；<br>\r\n我们的豪华车队24小时在为您候命，随时准备以贵宾礼仪接送机服务；<br>\r\n资深英伦式管家为您安排行程并全程跟从；<br>\r\n如需预定请致电：400 008 7272', '3', '3', null, '10', null, null, null, '3', null, null, '7', '1', null, null, null, null, null, '6');
INSERT INTO `products` VALUES ('4', '棋牌室', null, null, '3', '3', null, '11', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '8');
INSERT INTO `products` VALUES ('5', '专业雪茄品鉴', null, '商务旅客在机场等候期间会进行很多商务活动。而集中开发思路的高端商务会议，则是商务人群研究桥牌活动中最好的放松方式，有效的活动空间有着劳逸结合内的软硬件条件下的服务，将体现出T2max的专业服务水准。\r\n     <br/>真正的雪茄客不是“抽”雪茄，而是“品尝”雪茄。每吸一口都是味觉上极大的享受。T2MAX雪茄吧收藏大量进口极品雪茄，等待您的品鉴。', '3', '3', null, '12', null, null, null, null, null, null, '7', null, null, null, null, null, null, '8');
INSERT INTO `products` VALUES ('6', 'SPA美体', null, '籍由身心灵平衡管理、抗老回春、曲雕管理、酸疼管理、抗压管理；<br/><br/>\r\n	透过芳疗技师的温润手感来安抚、补给、修护您所求的部分； <br/><br/>\r\n	适度触动您的味觉、听觉、嗅觉、触觉；<br/><br/>\r\n	来提升心灵深处的能量，由内而外打到身心灵平衡、肌肤细腻润泽；<br/><br/>\r\n	在私密的空间里，享受水疗、按摩、护肤的专业服务及五星级充满自然气息的舒适氛围<br/><br/>\r\n	引领将抗生活方式、让您由心感受。', '3', '3', null, '13', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '4');
INSERT INTO `products` VALUES ('7', '精致餐饮', null, '我们为您精心准备了均衡营养搭配的膳食套餐，<br/>\r\n	 	并能为您炮制任何您能想得到的美食。<br/>\r\n	 自助餐热炉：6款热菜、1款甜汤、1款西式汤<br/>\r\n	煎扒档：	牛排、春鸡、三文鱼等<br/>\r\n	面点档：	上海小馄饨、上海生煎、油豆腐粉丝汤、鸡鸭血汤、面条2款<br/>\r\n	冷菜：	中西式冷菜各2款、自配沙拉、寿司和刺身<br/>\r\n	面包和西点：4款面包、6款西点、冰激凌<br/>\r\n	饮料：	2款碳酸汽水、3款果汁、1款啤酒、咖啡和茶<br/><br>\r\n\r\n	     用餐时间和形式<br>\r\n	    早餐时间为6:00--9:30；茶点时间为9:30--11:00；<br>\r\n	    午餐时间为11:00--13:30；<br>\r\n	    下午茶时间为13:30--17:00；晚餐时间为17:00--21:30；<br>\r\n	    夜宵时间为21:00--6:00；<br>\r\n              其中早午晚餐均为自助餐，其余时间为零点。', '3', '3', null, '14', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '8');
INSERT INTO `products` VALUES ('8', '计时客房', null, '超五星级标准设计的豪华客房，航班延误\r\n	 	或中转途中，解除旅途疲惫的良方莫过于\r\n	 	沐浴后，全身放松的躺在超级舒适大床上，\r\n	 	体验着漫步云端的惬意。\r\n	 	所有房价已含10%的服务费（服务费不打\r\n	 	折）和每日1份自助早餐；\r\n                     赠送每日报纸；\r\n		提供市话免费，国内长途及国际长途电\r\n		话有偿服务；免费数字电视服务（含8套\r\n		外语频道）;赠送精美茶点和水果一份；\r\n		住店客人均享受免费使用健身房和游泳池\r\n		的优惠；提供有偿专职接机服务；', '3', '3', '元/小时', '15', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '5');
INSERT INTO `products` VALUES ('9', '商务会议', null, '  豪华布局的行政会议室，可充分利用候机时间，召开全球电话视频会议\r\n            绝对安静、私密的空间，更适合高层决议的产生', '3', '3', null, '16', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('10', '传统文化', null, null, '3', '3', null, '17', null, null, null, null, null, null, '7', '1', null, null, null, null, null, '7');
INSERT INTO `products` VALUES ('11', '健身', null, null, '3', '3', null, '18', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '7');
INSERT INTO `products` VALUES ('12', '泳池', null, null, '3', '3', null, '19', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '7');
INSERT INTO `products` VALUES ('13', '形象塑造', null, '“英国裁缝街”萨维尔街(Savile Row) 是伦敦西区一条两\r\n	         百多年历史的小街汇聚世界一些最顶尖的裁缝师，我们在这高级定制男装的圣地专门为您量身定制。', '3', '3', null, '20', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('14', '商务秘书', null, '18小时全程随从，处理会议纪要、商务往来文件、草拟并可翻译各类文书及函件。', '3', '3', null, '21', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('15', '全天候安全顾问', null, '可提供24小时全程安全顾问服务', '3', '3', null, '22', null, null, null, null, null, null, '7', null, '1', null, null, null, null, '8');
INSERT INTO `products` VALUES ('16', '机场免税商品预定', null, null, '3', '3', null, '23', null, null, null, null, null, null, '7', null, null, null, null, null, null, null);
INSERT INTO `products` VALUES ('17', '虹桥T2spa', null, null, '3', '3', '元/小时', '13', 'Spa', '1', null, '3', null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员');
INSERT INTO `roles` VALUES ('2', '公司');
INSERT INTO `roles` VALUES ('3', '主管');
INSERT INTO `roles` VALUES ('4', '工作人员');
INSERT INTO `roles` VALUES ('5', 'HR');
INSERT INTO `roles` VALUES ('6', '财务');

-- ----------------------------
-- Table structure for `roles_users`
-- ----------------------------
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_users
-- ----------------------------
INSERT INTO `roles_users` VALUES ('1', '7', null, null);
INSERT INTO `roles_users` VALUES ('1', '6', null, null);

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
INSERT INTO `service_styles` VALUES ('6', '6', '贵宾接送机', '2013-03-01 13:01:15', '2013-03-01 13:01:19', '0', null, '我们为您提供机场通行优先权，让您的商旅畅通无阻；<br>\r\n我们的豪华车队24小时在为您候命，随时准备以贵宾礼仪接送机服务；<br>\r\n资深英伦式管家为您安排行程并全程跟从；<br>\r\n如需预定请致电：400 008 7272');
INSERT INTO `service_styles` VALUES ('7', '7', '配套服务', '2013-03-01 13:02:06', '2013-03-01 13:02:10', '0', null, null);
INSERT INTO `service_styles` VALUES ('8', '8', '特色服务', '2013-03-11 13:03:25', '2013-03-11 13:03:30', '0', null, null);
INSERT INTO `service_styles` VALUES ('9', '9', '机票预定', '2013-03-11 13:05:11', '2013-03-11 13:05:15', '0', null, null);

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
  `situation_id` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
INSERT INTO `service_tasks` VALUES ('10', 'TASK0000010', '26', '22', '7', null, null, '3', '店面消费现场分配业务');
INSERT INTO `service_tasks` VALUES ('11', 'TASK0000011', '27', '23', '7', null, null, '3', '店面消费现场分配业务');
INSERT INTO `service_tasks` VALUES ('12', 'TASK0000012', '28', '24', '7', null, null, '3', '店面消费现场分配业务');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of situations
-- ----------------------------
INSERT INTO `situations` VALUES ('1', '未处理', null);
INSERT INTO `situations` VALUES ('2', '等待盟友反馈', null);
INSERT INTO `situations` VALUES ('3', '已制定跟单任务', null);
INSERT INTO `situations` VALUES ('4', '已完成', null);
INSERT INTO `situations` VALUES ('5', '空闲', null);
INSERT INTO `situations` VALUES ('6', '使用中', null);

-- ----------------------------
-- Table structure for `spas`
-- ----------------------------
DROP TABLE IF EXISTS `spas`;
CREATE TABLE `spas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regprice` float DEFAULT NULL,
  `comprice` float DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `situation_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `description` text,
  `be_delete` int(11) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spas
-- ----------------------------
INSERT INTO `spas` VALUES ('1', null, null, '1', 'V3', '6', '2', 'T2MAX自由SPA服务', null, '', '', '17', '');
INSERT INTO `spas` VALUES ('2', null, null, '1', 'V5', '6', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('3', null, null, '1', 'V6', '5', '4', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('4', null, null, '1', 'V8', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('5', null, null, '1', 'V9', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('6', null, null, '1', 'V10', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('7', null, null, '1', 'V11', '5', '3', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('8', null, null, '1', 'V12', '5', '3', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('9', null, null, '1', 'V13', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('10', null, null, '1', 'V15', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('11', null, null, '1', 'V16', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('12', null, null, '1', 'V18', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('13', null, null, '1', 'V19', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('14', null, null, '1', 'V20', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('15', null, null, '1', '汗蒸房', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('16', null, null, '1', '美发室', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);
INSERT INTO `spas` VALUES ('17', null, null, '1', '特价洗脚室', '5', '2', 'T2MAX自由SPA服务', null, null, null, '17', null);

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
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_entries
-- ----------------------------
INSERT INTO `task_entries` VALUES ('21', null, '9', '7', null, null, '2013-03-31 13:35:06', '2013-03-31 13:35:06', '1', '119', '1');
INSERT INTO `task_entries` VALUES ('22', null, '10', '7', null, null, '2013-03-31 13:54:45', '2013-03-31 13:54:45', '16', '49', '1');
INSERT INTO `task_entries` VALUES ('23', null, '11', '7', null, null, '2013-03-31 13:57:18', '2013-03-31 13:57:18', '16', '113', '1');
INSERT INTO `task_entries` VALUES ('24', null, '12', '7', null, null, '2013-03-31 13:58:54', '2013-03-31 13:58:54', '16', 'qqq', '1');

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
  `user_id` int(11) DEFAULT NULL,
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
INSERT INTO `vip_records` VALUES ('1', '7', '1', '1', 'ci', '1', '2013-01-30 10:58:03', '2013-01-30 10:58:08', '2013-01-30 10:58:12', '2013-02-01 10:58:16', '15', '3', null, null);
INSERT INTO `vip_records` VALUES ('2', '7', '2', '1', 'ci', '1', '2013-01-30 10:59:14', '2013-01-30 10:59:19', '2013-01-30 10:59:24', '2013-02-01 10:59:31', '17', '4', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vipconsumnos
-- ----------------------------
INSERT INTO `vipconsumnos` VALUES ('1', '35807', '7', null, '2013-03-25 06:45:12');
INSERT INTO `vipconsumnos` VALUES ('2', '58780', '7', null, '2013-03-25 06:47:30');
INSERT INTO `vipconsumnos` VALUES ('3', '31742', '7', null, '2013-03-25 06:47:32');
INSERT INTO `vipconsumnos` VALUES ('4', '98600', '7', null, '2013-03-25 06:47:34');
INSERT INTO `vipconsumnos` VALUES ('5', '17841', '7', null, '2013-03-25 06:47:40');
INSERT INTO `vipconsumnos` VALUES ('6', '75613', '7', null, '2013-03-25 06:52:29');
INSERT INTO `vipconsumnos` VALUES ('7', '85153', '7', null, '2013-03-25 07:02:10');
INSERT INTO `vipconsumnos` VALUES ('8', '61887', '7', null, '2013-03-25 07:03:11');
INSERT INTO `vipconsumnos` VALUES ('9', '33222', '7', null, '2013-03-25 07:05:35');
INSERT INTO `vipconsumnos` VALUES ('10', '88845', '7', null, '2013-03-25 07:06:11');
INSERT INTO `vipconsumnos` VALUES ('11', '62070', '7', '1', '2013-03-25 07:08:47');
INSERT INTO `vipconsumnos` VALUES ('12', '67856', '7', '1', '2013-03-25 07:22:53');
INSERT INTO `vipconsumnos` VALUES ('13', '29946', '7', '1', '2013-03-25 07:30:05');
INSERT INTO `vipconsumnos` VALUES ('14', '11049', '7', '1', '2013-03-25 07:32:20');
INSERT INTO `vipconsumnos` VALUES ('15', '60611', '7', '1', '2013-03-25 07:33:40');
INSERT INTO `vipconsumnos` VALUES ('16', '23597', '7', null, '2013-03-25 08:31:19');
INSERT INTO `vipconsumnos` VALUES ('17', '45511', '7', null, '2013-03-25 08:35:58');
INSERT INTO `vipconsumnos` VALUES ('18', '42034', '7', null, '2013-03-25 08:37:03');
INSERT INTO `vipconsumnos` VALUES ('19', '23607', '7', null, '2013-03-25 08:38:02');
INSERT INTO `vipconsumnos` VALUES ('20', '65001', '7', null, '2013-03-25 08:39:25');
INSERT INTO `vipconsumnos` VALUES ('21', '24813', '7', null, '2013-03-25 08:44:45');

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
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `worknum` varchar(255) DEFAULT NULL,
  `idnum` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `situation` int(11) DEFAULT NULL,
  `agreement` varchar(255) DEFAULT NULL,
  `agreementstart` date DEFAULT NULL,
  `agreementend` date DEFAULT NULL,
  `social_security` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of works
-- ----------------------------
INSERT INTO `works` VALUES ('1', null, null, 'liming@t2max.com', null, '李明', '男', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('2', null, null, 'wangxinlu@t2max.com', null, '王新炉', '男', '1', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('3', null, null, 'shihuafen@t2max.com', null, '施华芬', '女', '1', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('4', null, null, 'chenlin@t2max.com', null, '陈琳', '女', '1', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('5', null, null, 'lichengfa@t2max.com', null, '李承法', '男', '1', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('6', null, null, 'chenguifen@t2max.com', null, '陈桂分', '女', '2', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('7', null, null, 'lichengqin@t2max.com', null, '李成琴', '女', '2', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('8', null, null, 'zhangyi@t2max.com', null, '张逸', '女', '2', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('9', null, null, null, null, '谢明华', '女', '3', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('10', null, null, null, null, '吴桂林', '女', '3', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('11', null, null, null, null, '陈猛', '男', '4', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('12', null, null, null, null, '毕二风', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('13', null, null, null, null, '蔡文娟', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('14', null, null, null, null, '方海兵', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('15', null, null, null, null, '黄桂玉', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('16', null, null, null, null, '李百华', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('17', null, null, null, null, '李蓉', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('18', null, null, null, null, '李世生', '男', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('19', null, null, null, null, '李瑶', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('20', null, null, null, null, '刘乐林', '男', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('21', null, null, null, null, '孙美云', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('22', null, null, null, null, '孙秀', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('23', null, null, null, null, '唐永梅', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('24', null, null, null, null, '王平', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('25', null, null, null, null, '吴金玉', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('26', null, null, null, null, '夏江霞', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('27', null, null, null, null, '熊六荣', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('28', null, null, null, null, '袁美娟', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('29', null, null, null, null, '张亚如', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('30', null, null, null, null, '张云旭', '男', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('31', null, null, null, null, '张珍', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('32', null, null, null, null, '赵兵', '男', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('33', null, null, null, null, '周玉玲', '女', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('34', null, null, null, null, '朱立群', '男', '5', '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('35', '14', null, 'helen@t2max.com', null, 'Helen黄', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('36', '15', null, 'max@t2max.com', null, '殷伟', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('37', '16', null, 'Andy@t2max.com', null, '朱毅君', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('38', '17', null, 'rainbow@t2max.com', null, '沈虹', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('39', '18', null, 'hanley@t2max.com', null, '李浩', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('40', '19', null, 'ada@t2max.com', null, '谢缨', null, null, '6', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('41', '11', null, 'david@t2max.com', null, '张伟', null, null, '5', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('42', '20', null, 'fiona@t2max.com', null, '陈瑶', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('43', '21', null, 'ivy@t2max.com', null, '张唯', null, null, '5', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('44', '22', null, 'wayne@t2max.com', null, '周炜', null, null, '5', null, null, null, null, null, null, null, null, null);
INSERT INTO `works` VALUES ('45', '23', null, 'james@t2max.com', null, '程红健', null, null, '1', null, null, null, null, null, null, null, null, null);
