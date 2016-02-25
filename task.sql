/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : task

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-02-25 20:20:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` text,
  `image` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_dir` varchar(600) DEFAULT NULL,
  `file_full_name` varchar(1000) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_28_000000_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_28_000000_create_files_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_28_000000_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_29_000000_create_project_table', '1');
INSERT INTO `migrations` VALUES ('2015_12_14_000000_create_project2workflow_table', '1');
INSERT INTO `migrations` VALUES ('2015_12_17_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2015_12_17_000000_create_versions_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_000000_create_tasks_version_table', '1');
INSERT INTO `migrations` VALUES ('2016_01_19_000000_create_tasks_workload_table', '1');
INSERT INTO `migrations` VALUES ('2016_02_18_000001_create_tasks_table', '1');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` text,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Title 0', 'first-page', 'Body 0123123QWEQW', '1', '2016-02-24 05:04:38', '2016-02-25 07:15:08');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('hbsnjzsd@163.com', '8e82a65b88c9b01a5ea3352873f1d1c45098fe53401fd3f4e6e259f8d6a88657', '2016-02-25 10:26:12');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `source` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', '安徽金大地', 'F:\\Project\\安徽金大地', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('2', '北京SOHO', 'F:\\Project\\北京SOHO', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('3', '北京东方城', 'F:\\Project\\北京东方城', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('4', '北京方兴', 'F:\\Project\\北京方兴', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('5', '北京高和', 'F:\\Project\\北京高和', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('6', '北京国瑞', 'F:\\Project\\北京国瑞', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('7', '北京和裕', 'F:\\Project\\北京和裕', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('8', '北京鸿坤', 'F:\\Project\\北京鸿坤', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('9', '北京华润', 'F:\\Project\\北京华润', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('10', '北京华远', 'F:\\Project\\北京华远', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('11', '北京金辉', 'F:\\Project\\北京金辉', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('12', '北京金融街', 'F:\\Project\\北京金融街', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('13', '北京金泰', 'F:\\Project\\北京金泰', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('14', '北京金隅', 'F:\\Project\\北京金隅', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('15', '北京京投银泰', 'F:\\Project\\北京京投银泰', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('16', '北京茂华', 'F:\\Project\\北京茂华', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('17', '北京内蒙古伊泰', 'F:\\Project\\北京内蒙古伊泰', '0', null, '2016-02-25 08:49:21', '2016-02-25 08:49:21');
INSERT INTO `projects` VALUES ('18', '北京青龙湖', 'F:\\Project\\北京青龙湖', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('19', '北京首钢', 'F:\\Project\\北京首钢', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('20', '北京首开', 'F:\\Project\\北京首开', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('21', '北京万达', 'F:\\Project\\北京万达', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('22', '北京万年', 'F:\\Project\\北京万年', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('23', '北京万年花城', 'F:\\Project\\北京万年花城', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('24', '北京希望睿智', 'F:\\Project\\北京希望睿智', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('25', '北京新世界', 'F:\\Project\\北京新世界', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('26', '北京亿利金威', 'F:\\Project\\北京亿利金威', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('27', '北京永同昌', 'F:\\Project\\北京永同昌', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('28', '北京中建', 'F:\\Project\\北京中建', '0', null, '2016-02-25 08:49:22', '2016-02-25 08:49:22');
INSERT INTO `projects` VALUES ('29', '北京中铁置业', 'F:\\Project\\北京中铁置业', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('30', '北京中信', 'F:\\Project\\北京中信', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('31', '北京鑫苑', 'F:\\Project\\北京鑫苑', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('32', '常州百兴', 'F:\\Project\\常州百兴', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('33', '常州金新', 'F:\\Project\\常州金新', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('34', '常州君悦置业', 'F:\\Project\\常州君悦置业', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('35', '长城地产', 'F:\\Project\\长城地产', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('36', '长沙北辰', 'F:\\Project\\长沙北辰', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('37', '长沙步步高', 'F:\\Project\\长沙步步高', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('38', '长沙富兴', 'F:\\Project\\长沙富兴', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('39', '长沙江域置业', 'F:\\Project\\长沙江域置业', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('40', '长沙湾田', 'F:\\Project\\长沙湾田', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('41', '长沙先导', 'F:\\Project\\长沙先导', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('42', '长沙中建', 'F:\\Project\\长沙中建', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('43', '长沙鑫远', 'F:\\Project\\长沙鑫远', '0', null, '2016-02-25 08:49:23', '2016-02-25 08:49:23');
INSERT INTO `projects` VALUES ('44', '郴州美世界', 'F:\\Project\\郴州美世界', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('45', '成都博瑞', 'F:\\Project\\成都博瑞', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('46', '成都宏誉', 'F:\\Project\\成都宏誉', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('47', '成都佳年华', 'F:\\Project\\成都佳年华', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('48', '成都领地', 'F:\\Project\\成都领地', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('49', '成都迈尔斯通', 'F:\\Project\\成都迈尔斯通', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('50', '成都荣新', 'F:\\Project\\成都荣新', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('51', '成都信和', 'F:\\Project\\成都信和', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('52', '成都宜佳信', 'F:\\Project\\成都宜佳信', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('53', '成都优品道', 'F:\\Project\\成都优品道', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('54', '成都远鸿', 'F:\\Project\\成都远鸿', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('55', '成都置信', 'F:\\Project\\成都置信', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('56', '大连北车', 'F:\\Project\\大连北车', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('57', '大连海昌', 'F:\\Project\\大连海昌', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('58', '大连亿达', 'F:\\Project\\大连亿达', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('59', '东方置地', 'F:\\Project\\东方置地', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('60', '东莞中惠', 'F:\\Project\\东莞中惠', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('61', '佛山海骏达', 'F:\\Project\\佛山海骏达', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('62', '福建新华都', 'F:\\Project\\福建新华都', '0', null, '2016-02-25 08:49:24', '2016-02-25 08:49:24');
INSERT INTO `projects` VALUES ('63', '福州融侨', 'F:\\Project\\福州融侨', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('64', '福州融信', 'F:\\Project\\福州融信', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('65', '福州正荣', 'F:\\Project\\福州正荣', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('66', '福晟集团', 'F:\\Project\\福晟集团', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('67', '广东锦峰地产', 'F:\\Project\\广东锦峰地产', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('68', '广西保利', 'F:\\Project\\广西保利', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('69', '广西嘉和', 'F:\\Project\\广西嘉和', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('70', '广西荣和', 'F:\\Project\\广西荣和', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('71', '广西三祺', 'F:\\Project\\广西三祺', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('72', '广西梧州丰业', 'F:\\Project\\广西梧州丰业', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('73', '广西阳光时代', 'F:\\Project\\广西阳光时代', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('74', '广州奥园', 'F:\\Project\\广州奥园', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('75', '广州保利', 'F:\\Project\\广州保利', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('76', '广州城建', 'F:\\Project\\广州城建', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('77', '广州方圆', 'F:\\Project\\广州方圆', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('78', '广州合景', 'F:\\Project\\广州合景', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('79', '广州家和', 'F:\\Project\\广州家和', '0', null, '2016-02-25 08:49:25', '2016-02-25 08:49:25');
INSERT INTO `projects` VALUES ('80', '广州绿地', 'F:\\Project\\广州绿地', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('81', '广州美林基业', 'F:\\Project\\广州美林基业', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('82', '广州清远恒福', 'F:\\Project\\广州清远恒福', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('83', '广州时代', 'F:\\Project\\广州时代', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('84', '广州实地', 'F:\\Project\\广州实地', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('85', '广州天誉', 'F:\\Project\\广州天誉', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('86', '广州香江', 'F:\\Project\\广州香江', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('87', '广州新世界', 'F:\\Project\\广州新世界', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('88', '广州新翊', 'F:\\Project\\广州新翊', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('89', '广州星河湾', 'F:\\Project\\广州星河湾', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('90', '广州中交南沙', 'F:\\Project\\广州中交南沙', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('91', '广州中颐', 'F:\\Project\\广州中颐', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('92', '贵州宏立城', 'F:\\Project\\贵州宏立城', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('93', '哈尔滨滨才', 'F:\\Project\\哈尔滨滨才', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('94', '杭州金成', 'F:\\Project\\杭州金成', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('95', '杭州开元', 'F:\\Project\\杭州开元', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('96', '杭州绿城', 'F:\\Project\\杭州绿城', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('97', '杭州天阳', 'F:\\Project\\杭州天阳', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('98', '杭州新中梁', 'F:\\Project\\杭州新中梁', '0', null, '2016-02-25 08:49:26', '2016-02-25 08:49:26');
INSERT INTO `projects` VALUES ('99', '杭州浙商', 'F:\\Project\\杭州浙商', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('100', '杭州中大', 'F:\\Project\\杭州中大', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('101', '杭州中天', 'F:\\Project\\杭州中天', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('102', '合肥皖投置业', 'F:\\Project\\合肥皖投置业', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('103', '河北天山', 'F:\\Project\\河北天山', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('104', '河南昌建', 'F:\\Project\\河南昌建', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('105', '河南常绿', 'F:\\Project\\河南常绿', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('106', '河南建业', 'F:\\Project\\河南建业', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('107', '河南谦茂', 'F:\\Project\\河南谦茂', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('108', '红星美凯龙', 'F:\\Project\\红星美凯龙', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('109', '吉林筑石', 'F:\\Project\\吉林筑石', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('110', '济南重汽', 'F:\\Project\\济南重汽', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('111', '江苏常发', 'F:\\Project\\江苏常发', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('112', '江苏城市置业', 'F:\\Project\\江苏城市置业', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('113', '江苏九洲', 'F:\\Project\\江苏九洲', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('114', '江苏吴中', 'F:\\Project\\江苏吴中', '0', null, '2016-02-25 08:49:27', '2016-02-25 08:49:27');
INSERT INTO `projects` VALUES ('115', '江苏新城', 'F:\\Project\\江苏新城', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('116', '江苏中南建设', 'F:\\Project\\江苏中南建设', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('117', '昆明螺蛳湾', 'F:\\Project\\昆明螺蛳湾', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('118', '昆明诺仕达', 'F:\\Project\\昆明诺仕达', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('119', '梅州鸿艺', 'F:\\Project\\梅州鸿艺', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('120', '南京安居', 'F:\\Project\\南京安居', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('121', '南京丰盛置业', 'F:\\Project\\南京丰盛置业', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('122', '南京高科', 'F:\\Project\\南京高科', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('123', '南京高力', 'F:\\Project\\南京高力', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('124', '南京鸿信', 'F:\\Project\\南京鸿信', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('125', '南京欧普', 'F:\\Project\\南京欧普', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('126', '南京栖霞建设', 'F:\\Project\\南京栖霞建设', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('127', '南京万博', 'F:\\Project\\南京万博', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('128', '南京新城', 'F:\\Project\\南京新城', '0', null, '2016-02-25 08:49:28', '2016-02-25 08:49:28');
INSERT INTO `projects` VALUES ('129', '南京新城发展', 'F:\\Project\\南京新城发展', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('130', '南京源久', 'F:\\Project\\南京源久', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('131', '南京镇江城投', 'F:\\Project\\南京镇江城投', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('132', '南京正太', 'F:\\Project\\南京正太', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('133', '南京中新', 'F:\\Project\\南京中新', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('134', '南宁高新', 'F:\\Project\\南宁高新', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('135', '南宁明东', 'F:\\Project\\南宁明东', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('136', '南宁市地产业', 'F:\\Project\\南宁市地产业', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('137', '宁波银亿', 'F:\\Project\\宁波银亿', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('138', '青岛诚基', 'F:\\Project\\青岛诚基', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('139', '青岛广嘉', 'F:\\Project\\青岛广嘉', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('140', '青岛海信', 'F:\\Project\\青岛海信', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('141', '青岛华融纺联', 'F:\\Project\\青岛华融纺联', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('142', '青岛嘉合', 'F:\\Project\\青岛嘉合', '0', null, '2016-02-25 08:49:29', '2016-02-25 08:49:29');
INSERT INTO `projects` VALUES ('143', '青岛莱钢建设', 'F:\\Project\\青岛莱钢建设', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('144', '青岛鲁能', 'F:\\Project\\青岛鲁能', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('145', '青岛啤酒', 'F:\\Project\\青岛啤酒', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('146', '青岛青建', 'F:\\Project\\青岛青建', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('147', '青岛青特', 'F:\\Project\\青岛青特', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('148', '青岛瑞隆', 'F:\\Project\\青岛瑞隆', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('149', '青岛天泰', 'F:\\Project\\青岛天泰', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('150', '青岛天一建筑', 'F:\\Project\\青岛天一建筑', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('151', '青岛天一仁和', 'F:\\Project\\青岛天一仁和', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('152', '青岛威高', 'F:\\Project\\青岛威高', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('153', '青岛西城', 'F:\\Project\\青岛西城', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('154', '青岛新华', 'F:\\Project\\青岛新华', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('155', '青岛银盛泰', 'F:\\Project\\青岛银盛泰', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('156', '青岛中置', 'F:\\Project\\青岛中置', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('157', '青岛淄博恒生置业', 'F:\\Project\\青岛淄博恒生置业', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('158', '山东高速', 'F:\\Project\\山东高速', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('159', '山东海通', 'F:\\Project\\山东海通', '0', null, '2016-02-25 08:49:30', '2016-02-25 08:49:30');
INSERT INTO `projects` VALUES ('160', '陕西东岭', 'F:\\Project\\陕西东岭', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('161', '上海保利佳', 'F:\\Project\\上海保利佳', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('162', '上海宝龙', 'F:\\Project\\上海宝龙', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('163', '上海城建', 'F:\\Project\\上海城建', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('164', '上海骋望', 'F:\\Project\\上海骋望', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('165', '上海大发', 'F:\\Project\\上海大发', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('166', '上海大华', 'F:\\Project\\上海大华', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('167', '上海复地', 'F:\\Project\\上海复地', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('168', '上海海亮', 'F:\\Project\\上海海亮', '0', null, '2016-02-25 08:49:31', '2016-02-25 08:49:31');
INSERT INTO `projects` VALUES ('169', '上海和融置业', 'F:\\Project\\上海和融置业', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('170', '上海红星集团', 'F:\\Project\\上海红星集团', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('171', '上海红星建设', 'F:\\Project\\上海红星建设', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('172', '上海红星美凯龙', 'F:\\Project\\上海红星美凯龙', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('173', '上海汇龙新城', 'F:\\Project\\上海汇龙新城', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('174', '上海立天唐人', 'F:\\Project\\上海立天唐人', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('175', '上海绿地', 'F:\\Project\\上海绿地', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('176', '上海农工商', 'F:\\Project\\上海农工商', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('177', '上海仁恒', 'F:\\Project\\上海仁恒', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('178', '上海三盛', 'F:\\Project\\上海三盛', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('179', '上海上实股份', 'F:\\Project\\上海上实股份', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('180', '上海盛高', 'F:\\Project\\上海盛高', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('181', '上海世茂', 'F:\\Project\\上海世茂', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('182', '上海铁狮门', 'F:\\Project\\上海铁狮门', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('183', '上海星豫', 'F:\\Project\\上海星豫', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('184', '上海星泓', 'F:\\Project\\上海星泓', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('185', '上海亚特兰蒂斯', 'F:\\Project\\上海亚特兰蒂斯', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('186', '上海阳光城', 'F:\\Project\\上海阳光城', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('187', '上海元景', 'F:\\Project\\上海元景', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('188', '上海证大外滩', 'F:\\Project\\上海证大外滩', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('189', '上海中民嘉业', 'F:\\Project\\上海中民嘉业', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('190', '上实诚开', 'F:\\Project\\上实诚开', '0', null, '2016-02-25 08:49:32', '2016-02-25 08:49:32');
INSERT INTO `projects` VALUES ('191', '深圳宝能', 'F:\\Project\\深圳宝能', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('192', '深圳东北城', 'F:\\Project\\深圳东北城', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('193', '深圳东方银座', 'F:\\Project\\深圳东方银座', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('194', '深圳光耀金源', 'F:\\Project\\深圳光耀金源', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('195', '深圳花半里', 'F:\\Project\\深圳花半里', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('196', '深圳花样年', 'F:\\Project\\深圳花样年', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('197', '深圳华联置业', 'F:\\Project\\深圳华联置业', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('198', '深圳华南城', 'F:\\Project\\深圳华南城', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('199', '深圳华强', 'F:\\Project\\深圳华强', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('200', '深圳机场', 'F:\\Project\\深圳机场', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('201', '深圳佳兆业', 'F:\\Project\\深圳佳兆业', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('202', '深圳金地', 'F:\\Project\\深圳金地', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('203', '深圳莱蒙', 'F:\\Project\\深圳莱蒙', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('204', '深圳联泰', 'F:\\Project\\深圳联泰', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('205', '深圳龙光', 'F:\\Project\\深圳龙光', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('206', '深圳绿景', 'F:\\Project\\深圳绿景', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('207', '深圳南益', 'F:\\Project\\深圳南益', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('208', '深圳深业科之谷', 'F:\\Project\\深圳深业科之谷', '0', null, '2016-02-25 08:49:33', '2016-02-25 08:49:33');
INSERT INTO `projects` VALUES ('209', '深圳深业鹏基南方', 'F:\\Project\\深圳深业鹏基南方', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('210', '深圳深业置地', 'F:\\Project\\深圳深业置地', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('211', '深圳泰富华', 'F:\\Project\\深圳泰富华', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('212', '深圳天健', 'F:\\Project\\深圳天健', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('213', '深圳星河', 'F:\\Project\\深圳星河', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('214', '深圳研祥', 'F:\\Project\\深圳研祥', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('215', '深圳毅德', 'F:\\Project\\深圳毅德', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('216', '深圳益田', 'F:\\Project\\深圳益田', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('217', '深圳招商', 'F:\\Project\\深圳招商', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('218', '深圳中洲', 'F:\\Project\\深圳中洲', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('219', '深圳卓越', 'F:\\Project\\深圳卓越', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('220', '沈阳穗港', 'F:\\Project\\沈阳穗港', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('221', '沈阳新世界', 'F:\\Project\\沈阳新世界', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('222', '四川蓝光', 'F:\\Project\\四川蓝光', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('223', '四川新希望', 'F:\\Project\\四川新希望', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('224', '苏州圆融', 'F:\\Project\\苏州圆融', '0', null, '2016-02-25 08:49:34', '2016-02-25 08:49:34');
INSERT INTO `projects` VALUES ('225', '天津诚越（天津燕达）', 'F:\\Project\\天津诚越（天津燕达）', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('226', '天津国民地产', 'F:\\Project\\天津国民地产', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('227', '天津津滨', 'F:\\Project\\天津津滨', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('228', '威海城投', 'F:\\Project\\威海城投', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('229', '无锡九龙仓', 'F:\\Project\\无锡九龙仓', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('230', '无锡太湖新城', 'F:\\Project\\无锡太湖新城', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('231', '五洲国际', 'F:\\Project\\五洲国际', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('232', '西安汇邦', 'F:\\Project\\西安汇邦', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('233', '西安金泰恒业', 'F:\\Project\\西安金泰恒业', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('234', '西安经发', 'F:\\Project\\西安经发', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('235', '西安莱安', 'F:\\Project\\西安莱安', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('236', '西安荣禾', 'F:\\Project\\西安荣禾', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('237', '西安协和', 'F:\\Project\\西安协和', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('238', '西安雨润', 'F:\\Project\\西安雨润', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('239', '厦门海翼', 'F:\\Project\\厦门海翼', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('240', '厦门住宅', 'F:\\Project\\厦门住宅', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('241', '厦门滕王阁', 'F:\\Project\\厦门滕王阁', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('242', '香港宏安', 'F:\\Project\\香港宏安', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('243', '香港新鸿基', 'F:\\Project\\香港新鸿基', '0', null, '2016-02-25 08:49:35', '2016-02-25 08:49:35');
INSERT INTO `projects` VALUES ('244', '邢台永康', 'F:\\Project\\邢台永康', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('245', '云南俊发', 'F:\\Project\\云南俊发', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('246', '云南实力', 'F:\\Project\\云南实力', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('247', '云南腾俊', 'F:\\Project\\云南腾俊', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('248', '浙江卡森置业', 'F:\\Project\\浙江卡森置业', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('249', '郑州丰源', 'F:\\Project\\郑州丰源', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('250', '郑州康桥', 'F:\\Project\\郑州康桥', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('251', '郑州绿都', 'F:\\Project\\郑州绿都', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('252', '郑州升龙', 'F:\\Project\\郑州升龙', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('253', '郑州亚新', 'F:\\Project\\郑州亚新', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('254', '郑州正商', 'F:\\Project\\郑州正商', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('255', '中山碧桂园', 'F:\\Project\\中山碧桂园', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('256', '中山美的', 'F:\\Project\\中山美的', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('257', '中山天域置业', 'F:\\Project\\中山天域置业', '0', null, '2016-02-25 08:49:36', '2016-02-25 08:49:36');
INSERT INTO `projects` VALUES ('258', '中山雅居乐', 'F:\\Project\\中山雅居乐', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('259', '中冶置业', 'F:\\Project\\中冶置业', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('260', '重庆德池', 'F:\\Project\\重庆德池', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('261', '重庆东原', 'F:\\Project\\重庆东原', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('262', '重庆金科', 'F:\\Project\\重庆金科', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('263', '重庆康田', 'F:\\Project\\重庆康田', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('264', '重庆龙湖', 'F:\\Project\\重庆龙湖', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('265', '重庆明源', 'F:\\Project\\重庆明源', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('266', '重庆融汇', 'F:\\Project\\重庆融汇', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('267', '重庆润鹏', 'F:\\Project\\重庆润鹏', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('268', '重庆同景', 'F:\\Project\\重庆同景', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('269', '重庆新鸥鹏', 'F:\\Project\\重庆新鸥鹏', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('270', '重庆招商', 'F:\\Project\\重庆招商', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('271', '重庆怡置', 'F:\\Project\\重庆怡置', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('272', '珠海南光恒丰', 'F:\\Project\\珠海南光恒丰', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');
INSERT INTO `projects` VALUES ('273', '珠江实业', 'F:\\Project\\珠江实业', '0', null, '2016-02-25 08:49:37', '2016-02-25 08:49:37');

-- ----------------------------
-- Table structure for projects2workflow
-- ----------------------------
DROP TABLE IF EXISTS `projects2workflow`;
CREATE TABLE `projects2workflow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `workflow_path` varchar(255) DEFAULT NULL,
  `assemblyInfo_path` varchar(255) DEFAULT NULL,
  `assemblyInfo` varchar(255) DEFAULT NULL,
  `assemblyFileInfo` varchar(255) DEFAULT NULL,
  `workflow_version` varchar(255) DEFAULT NULL,
  `erp_version` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of projects2workflow
-- ----------------------------

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_no` varchar(255) NOT NULL,
  `task_title` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `erp_version` varchar(255) DEFAULT NULL,
  `map_version` varchar(255) DEFAULT NULL,
  `abu_pm` varchar(255) DEFAULT NULL,
  `ekp_create_date` datetime DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `ekp_expect` datetime DEFAULT NULL,
  `actual_finish_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `task_type` varchar(255) DEFAULT NULL,
  `workflow_version` varchar(255) DEFAULT NULL,
  `is_sla` tinyint(4) DEFAULT NULL,
  `is_sensitive` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasks
-- ----------------------------
INSERT INTO `tasks` VALUES ('2', '20130619-1310', '建业集团-移动审批WEB版开发需求', '河南建业', '257', null, '薛小虎', '2013-07-29 11:00:27', '2013-06-27 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('3', '20130607-0595', '嘉里移动平台升级需求', '嘉里建设', '255', null, '周清河', '2013-07-29 11:06:21', '2013-07-05 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('4', '20130708-0638', 'SOHO文件下载方式修改需求', '北京SOHO', '25', null, '曹珂', '2013-07-29 11:26:00', '2013-07-09 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('5', '20130710-0870', '龙湖负载均衡缓存同步开发', '重庆龙湖', '25', null, '吴开峰', '2013-07-29 11:28:12', '2013-07-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('6', '20130710-0922', '龙光AD同步需求-新增集团下用户全部同步', '深圳龙光', '256', null, '韦曾奕', '2013-07-29 11:30:22', '2013-07-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('7', '20130716-1267', '复地POM系统tempfile文件夹异常日志文件过多的问题', '上海复地', '253', null, '张巍', '2013-07-29 11:32:59', '2013-07-16 00:00:00', null, null, '3', '工作量\n 李俊峰：0.1\n 陈伟：0.3', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('8', '20130716-1272', '复地POM系统tempxml文件夹小文件过多的平台问题', '上海复地', '253', null, '张巍', '2013-07-29 11:34:29', '2013-07-16 00:00:00', null, null, '3', '工作量：\n 李俊峰：0.1\n 陈伟：0.3', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('9', '20130722-1599', '城建工作流附件过长问题', '广州城建', '252', null, '冉航', '2013-07-29 11:40:47', '2013-07-22 00:00:00', null, null, '3', '工作量\n 李俊峰：0.1\n 陈伟：0.3', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('10', '20130723-1761', '金融街--AppGridE接口函数GetCrochetHookRows支持多选', '北京金融街', '258', null, '丁杰', '2013-07-29 11:42:39', '2013-07-23 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('11', '20130726-2023', '新鸿基平台任务', '香港新鸿基', '256', null, '陶佳俊', '2013-07-29 11:56:23', '2013-07-26 00:00:00', null, null, '3', '工作量\n 李俊峰：0.1\n 陈伟：0.6', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('12', '20130724-1871', '广州合景每日大量异常日志(平台修改)', '广州合景', '25', null, '张胜富', '2013-07-29 12:00:43', '2013-07-26 00:00:00', null, null, '3', '工作量\n 李俊峰：0.1\n 唐敦峰：0.4', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('13', '', '万科资源化过滤需求', '深圳万科', '25', null, '', '2013-07-29 12:01:47', '2013-08-09 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('14', '20130730-2252', '将报表导出的csv文件转存为xls并通过RMS加密', '中山雅居乐', '10', null, '薛小虎', '2013-07-29 17:35:47', '2013-07-29 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('15', '20130704-0402', '扫雷关键字敏感度处理', '北京SOHO', '25', null, '曹珂', '2013-07-29 11:04:42', '2013-07-04 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('16', '20130716-1245', '雅居乐明源系统专项【门户实现单点登录】', '中山雅居乐', '257', null, '薛小虎', '2013-07-29 11:39:16', '2013-07-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('17', '20130724-1816', '系统设置对岗位授权失败', '招商', '256', null, '陶佳俊', '2013-07-29 11:50:31', '2013-07-26 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('18', '20130723-1732', '招商WPS兼容性优化', '招商', '256', null, '陶佳俊', '2013-07-29 11:58:20', '2013-07-25 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('19', '20130629-2005', '广州城建增加异常信息记录功能(myExceptionLog表)', '广州城建', '252', null, '张胜富', '2013-07-29 11:02:46', '2013-07-01 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('20', '20130730-2180', '佳兆业无法检测到软件狗BUG', '深圳佳兆业', '253', null, '陶家俊', '2013-07-29 12:02:53', '2013-07-31 00:00:00', null, null, '3', '参照雅居乐ERP10的$/中山雅居乐/MAP2.0.6.60106源代码-ERP257/中山雅居乐MAP2.0.61123.0源代码VSS_ERP1.0/Branch/明源整体解决方案/Mysoft.Map.Core/Application.Security/SoftDog.vb文件实现.', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('21', '20130704-0474', '广州保利水印功能报IE脚本错误', '广州保利', '251', null, '张胜富', '2013-07-29 11:08:24', '2013-07-05 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('22', '20130724-1844', '雅居乐ERP10系统登入出现异常（高重要）', '中山雅居乐', '25', null, '薛小虎', '2013-07-29 11:44:14', '2013-07-25 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('23', '20130705-0509', '平台任务-大连亿达待办事宜调整', '大连亿达', '301', null, '赵红伟', '2013-07-29 11:24:04', '2013-07-05 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('24', '20130801-0137', '金地平台任务(售楼系统用户数超出限制BUG)', '深圳金地', '10', null, '陶家俊', '2013-08-01 18:06:17', '2013-08-02 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('25', '', 'MAP303安全修复（4个安全漏洞）', 'MAP303安全修复', '303', null, '', '2013-08-05 16:41:37', '2013-08-07 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('26', '20130802-0220', '侨鑫ERP系统登录BUG需求', '侨鑫集团', '254', null, '冉航', '2013-08-02 15:18:53', '2013-08-05 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('27', '20130718-1421', '【主动修复】【第二计划批次】', '深圳龙光', '256', null, '任磊', '2013-08-05 17:57:31', '2013-08-01 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('28', '20130805-0383', '安全漏洞修复', '香港鹰君', '301', null, '邓斌', '2013-08-05 18:00:34', '2013-08-08 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('29', '', 'HTC代码调整工具', 'MAP304', '304', null, '', '2013-08-06 11:11:34', '2013-08-02 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('30', '', '主动修复工具维护', '主动修复', '00', null, '', '2013-08-06 14:10:32', '2013-08-06 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('31', '20130716-1290', '星河IE10兼容性修复--修BUG', '深圳星河', '256', null, '陶佳俊', '2013-08-06 15:46:39', '2013-08-06 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('32', '20130802-0227', '深圳万科用户权限调整需求', '深圳万科', '25', null, '陶家俊', '2013-08-02 15:17:11', '2013-08-05 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('33', '20130820-1835', '标准256主动修复', '标准版客户', '256', null, '任磊', '2013-08-08 09:44:22', '2013-08-12 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('34', '20130822-2051', '标准256-SP1主动修复', '标准版客户', '256', null, '任磊', '2013-08-08 09:45:08', '2013-08-12 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('35', '', 'utf-8验证', 'MAP304', '304', null, '', '2013-08-08 09:54:01', '2013-08-05 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('36', '20130807-0550', '金融街--AppGridE的customfilter中存在特殊字符报错', '北京金融街', '258', null, '邹艳辉', '2013-08-08 10:01:22', '2013-08-08 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('37', '20130806-0430', 'AppGridE特殊下拉框select2的SetValue无法正确设值', '北京金融街', '256', null, '邹艳辉', '2013-08-06 11:17:52', '2013-08-07 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('38', '20130607-0640', '【主动修复】【IE10兼容修复】BUG', '广州奥园', '25', null, '任磊', '2013-08-05 10:03:16', '2013-08-05 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('39', '', 'FIX:动态加行资源加载问题', 'MAP304', '304', null, '', '2013-08-12 12:00:22', '2013-08-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('40', '', 'FIX:appForm 控件中 selectBox 控件BUG', 'MAP304', '304', null, '', '2013-08-12 12:00:47', '2013-08-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('41', '', 'FIX:动作权限缓存（通用岗位）', 'MAP304', '304', null, '', '2013-08-12 13:01:40', '2013-08-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('42', '', 'MAP304安全修复（4个安全漏洞）', 'MAP304安全修复', '304', null, '', '2013-08-08 09:53:03', '2013-08-07 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('43', '20130808-0683', '【运维治理】广州保利异常日志记录问题', '广州保利', '25', null, '张胜富', '2013-08-08 14:55:55', '2013-08-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('44', '20130808-0807', '星河-附件上传容量扩增咨询需求', '深圳星河', '256', null, '陶家俊', '2013-08-09 08:47:11', '2013-08-12 00:00:00', null, null, '3', '咨询评估类需求.无法开发及测试.', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('45', '', 'FIX:登录校验版本号问题', 'MAP304', '304', null, '', '2013-08-12 13:02:06', '2013-08-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('46', '', 'FIX:系统管理员无权限', 'MAP304', '304', null, '', '2013-08-12 13:01:02', '2013-08-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('47', '', 'FIX:登录连续点击2次Enter键', 'MAP304', '304', null, '', '2013-08-12 11:58:34', '2013-08-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('48', '20130809-0953', '登录校验软件狗的漏洞', '昆明客运', '251', null, '赵红伟', '2013-08-09 15:39:55', '2013-08-13 00:00:00', null, null, '3', '客户软件狗2010年遗失，在到13年2年多的时间里客户没有软件狗系统也能使用, 需要在在Default_Login中，增加产品狗的校验。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('49', '20130813-1197', '关于公共控件EntityFilter的问题', '北京鸿坤', '255', null, '邓斌', '2013-08-13 17:07:58', '2013-08-13 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('50', '20130813-1188', '深圳金地利销售系统客户关怀中的短信发送失败BUG', '深圳金地', '25', null, '邓斌', '2013-08-13 12:00:01', '2013-08-14 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('51', '20130814-1317', '中山碧桂园repeater页面使用viewstate缓存问题处理', '中山碧桂园', '25', null, '薛小虎', '2013-08-14 12:23:58', '2013-08-14 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('52', '', 'FIX:SQL依赖缓存机制问题', 'MAP304', '304', null, '', '2013-08-12 11:59:54', '2013-08-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('53', '', '审计日志的实现', 'MAP304', '304', null, '', '2013-08-19 13:21:46', '2013-08-19 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('54', '20130819-1736', '工作流下载附件时附件名称显示乱码', '北京福发', '25', null, '邓斌', '2013-08-19 18:40:49', '2013-08-20 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('55', '20130826-2179', '金地平台需求', '深圳金地', '25', null, '陶家俊', '2013-08-26 10:07:38', '2013-08-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('56', '', 'Post数据到Iframe', 'MAP304', '304', null, '', '2013-08-26 17:20:03', '2013-09-08 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('57', '', '增加ERP子系统版本页面', 'MAP304', '304', null, '', '2013-08-26 17:21:11', '2013-09-05 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('58', '', 'IE打印-无法支持HTC相关的内容', 'MAP304', '304', null, '', '2013-08-27 15:28:48', '2013-09-08 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('59', '', '【主动修复】广州城建-252sp3', '广州城建', '252', null, '冉航', '2013-08-29 15:00:14', '2013-09-18 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('60', '', 'ActiveX控件.net框架打包', '无', '00', null, '', '2013-11-08 19:16:13', '2013-11-08 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('61', '', 'ActiveX控件集成安装包测试', '无', '00', null, '', '2013-11-14 08:34:35', '2013-11-13 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('62', '', 'ActiveX控件打包与修复工具调整', '无', '00', null, '', '2013-11-17 11:42:48', '2013-11-15 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('63', '20140422-2694', '[工作流][流程归档成本公文丢失bug需求]', '河南建业', '301', null, '汪海疆', '2014-04-23 11:59:30', '2014-04-29 00:00:00', null, null, '1', '', '咨询', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('64', '20130814-1305', '金地erp系统支持用户名含特殊字符“.”+咨询评估', '金地', '25', null, '陶佳俊', '2013-08-15 09:08:21', '2013-08-15 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('65', '20130814-1350', '[主动运维]上海复地URL无法访问', '上海复地', '253', null, '张巍', '2013-08-14 17:49:04', '2013-08-15 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('66', '20130808-0624', '北京SOHO平台修改需求', '北京SOHO', '25', null, '曹珂', '2013-08-08 10:50:13', '2013-08-16 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('67', '20130808-0660', '【主动修复】【第二计划批次】重庆怡置', '重庆怡置', '256', null, '任磊', '2013-08-09 09:10:23', '2013-08-15 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('68', '20130816-1551', '中信单点登录功能移植', '北京中信', '303', null, '曹柯', '2013-08-16 15:12:38', '2013-08-16 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('69', '', 'UTF-8切换', 'MAP304', '304', null, '', '2013-08-19 13:15:20', '2013-08-19 00:00:00', null, null, '3', '按陈伟之前的UTF-8验证做实战操作，并检验陈伟的验证工作。', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('70', '', '设计前端新的API', 'MAP304', '304', null, '', '2013-08-19 13:16:54', '2013-08-19 00:00:00', null, null, '3', '主要是为了解决URL拼接问题，这次重新实现与URL有关的API', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('71', '20130816-1524', '北京万达平台底层支持移动产品', '北京万达', '255', null, '邹艳辉', '2013-08-16 10:49:32', '2013-08-19 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('72', '20130816-1552', '广州保利平台需求：修改数字控件(内部任务)', '广州保利', '25', null, '张胜富', '2013-08-16 15:11:10', '2013-08-19 00:00:00', null, null, '3', '开发:0.5\n测试:0.4', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('73', '20130816-1518', '建业集团-公司切换BUG', '河南建业', '257', null, '薛小虎', '2013-08-16 10:48:29', '2013-08-16 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('74', '20130809-0892', 'MAP平台集成登录bug', '总部工作流', '303', null, '孙锋', '2013-08-09 15:37:54', '2013-08-15 00:00:00', null, null, '3', '工作流单独部署时发生集成登录有BUG', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('75', '', '任务调度与维护界面开发', 'MAP304', '304', null, '', '2013-08-19 13:17:57', '2013-08-26 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('76', '20130819-1631', '上海大华读取软件狗内存异常问题', '上海大华', '25', null, '赵红伟', '2013-08-19 10:52:26', '2013-08-20 00:00:00', null, null, '3', '陈伟：0.5\n周睿：0.2', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('77', '20130812-1030', '郑州康桥【OA接口及组织架构个性化移植】', '郑州康桥', '303', null, '汪海疆', '2013-08-12 11:21:32', '2013-08-20 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('78', '20130821-1923', '【平台任务-咨询评估】金泰地产集成需求评估', '北京金泰', '302', null, '邹艳辉', '2013-08-21 15:29:18', '2013-08-21 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('79', '20130820-1790', '北京SOHO平台修改需求', '北京SOHO', '25', null, '曹柯', '2013-08-20 16:46:46', '2013-08-21 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('80', '20130822-2107', '上海景瑞_CRM_使系统可增加售楼用户授权(咨询评估)', '上海景瑞', '25', null, '赵红伟', '2013-08-26 09:58:47', '2013-08-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('81', '20130822-2044', '【主动运维】上海复地CRM站点无法访问', '上海复地', '25', null, '张巍', '2013-08-22 10:35:51', '2013-08-26 00:00:00', null, null, '3', '任务重复.关闭任务.不再处理', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('82', '20130828-2450', '广州保利DSS平台问题', '广州保利', '256', null, '邢存岭', '2013-08-28 14:17:18', '2013-08-29 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('83', '20130826-2229', '标准256-SP2主动修复', '标准版客户', '256', null, '任磊', '2013-08-28 15:48:28', '2013-08-28 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('84', '', '标准254主动修复', '标准版客户', '254', null, '任磊', '2013-08-08 09:50:20', '2013-08-19 00:00:00', null, null, '3', 'CodeReview由唐敦峰负责。', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('85', '', '【主动修复】上海复地CRM-301sp1', '上海复地', '301', null, '张巍', '2013-08-29 14:59:37', '2013-08-31 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('86', '', '【主动修复】北京金融街CRM-256sp2', '北京金融街', '256', null, '邹艳辉', '2013-08-29 15:06:36', '2013-08-30 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('87', '', '【主动修复】广州星河湾-257sp1', '广州星河湾', '256', null, '冉航', '2013-08-29 15:03:45', '2013-08-30 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('88', '20130829-2559', '招商网络狗需求', '深圳招商', '256', null, '陶家俊', '2013-08-29 16:45:53', '2013-08-29 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('89', '20130902-0035', '【主动修复】江苏新城POM-302', '江苏新城', '302', null, '张巍', '2013-08-29 15:05:58', '2013-09-04 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('90', '20130905-0599', '【主动修复】大连亿达-301sp1', '大连亿达', '301', null, '赵红伟', '2013-08-29 15:05:21', '2013-08-31 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('91', '', '【主动修复】佳兆业成本-301sp1', '佳兆业', '301', null, '陶佳俊', '2013-08-29 15:07:06', '2013-08-31 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('92', '20130829-2549', 'SOHO宕机主动修复遗漏问题', '北京SOHO', '25', null, '', '2013-08-29 16:27:29', '2013-08-30 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('93', '20130827-2304', '龙光ERP256系统遮罩无法消失BUG', '深圳龙光', '256', null, '颜邕', '2013-08-29 17:38:18', '2013-08-30 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('94', '20130902-0113', '佳兆业ad域问题', '深圳佳兆业', '301', null, '陶佳俊', '2013-09-03 08:51:03', '2013-09-03 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('95', '20130902-0210', '深圳中粮webservice接口验证', '深圳中粮', '256', null, '颜邕', '2013-09-03 08:49:46', '2013-09-03 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('96', '20130903-0231', 'CRM_使系统可增加售楼用户授权', '上海景瑞', '255', null, '赵红伟', '2013-09-04 09:11:20', '2013-09-05 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('97', '20130828-2529', '光耀金源待办消息推送需求', '光耀金源', '303', null, '邓斌', '2013-08-29 16:26:46', '2013-09-02 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('98', '20130902-0179', '厦门源昌移动审批SESSION超时', '厦门源昌', '253', null, '杨容', '2013-09-03 08:50:24', '2013-09-04 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('99', '20130904-0346', 'AppGridE特殊字符报错', '招商地产', '256', null, '陶家俊', '2013-09-04 14:51:37', '2013-09-05 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('100', '20130904-0444', '平台需求-雅居乐AD域功能调整', '中山雅居乐', '10', null, '薛小虎', '2013-09-04 19:02:25', '2013-09-05 00:00:00', null, null, '3', '支持单页面使用AD登录.AD登录失败则转跳到非AD集成登录页面', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('101', '', '关闭页面级别的跟踪功能', 'MAP304', '304', null, '', '2013-09-04 11:26:20', '2013-09-08 00:00:00', null, null, '3', '搜索平台的aspx文件，找出打开跟踪的页面，删除Trace=\"true\"\n\nMap304中不存在打开跟踪的页面', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('102', '20130904-0419', '[平台]方案应用-大文件上传', '深圳星河', '256', null, '陶家俊', '2013-09-04 16:16:28', '2013-09-08 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('103', '', 'FIX:临时文件通过Session机制', 'MAP304', '304', null, '', '2013-08-27 15:29:39', '2013-09-08 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('104', '', '域用户自动同步需求', 'MAP304', '304', null, '', '2013-08-27 15:28:04', '2013-09-08 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('105', '20130905-0578', '深圳龙光IIS崩溃问题', '深圳龙光', '256', null, '颜邕', '2013-09-05 17:49:36', '2013-09-09 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('106', '', '【主动修复】深圳绿景POM-252sp3', '深圳绿景', '252', null, '邓斌', '2013-08-29 15:01:25', '2013-09-22 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('107', '20130905-0590', '广州美林信任站点问题', '广州美林', '256', null, '冉航', '2013-09-05 17:49:09', '2013-09-11 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('108', '20130830-2701', '重庆怡置项目保存报错', '重庆怡置', '256', null, '汪海疆', '2013-09-10 08:54:57', '2013-09-11 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('109', '20130909-0727', '深圳龙光域用户同步异常', '深圳龙光', '256', null, '颜邕', '2013-09-10 08:58:14', '2013-09-11 00:00:00', null, null, '3', '与任务20130909-0727重复.只结0.1工作量', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('110', '', 'AppForm中隐藏控件封装', 'MAP304', '304', null, '', '2013-08-26 17:20:42', '2013-09-11 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('111', '20130911-0924', 'MySoft.ZipLib.dll中S改为小写', '北京华润', '256', null, '陶家俊', '2013-09-11 12:00:28', '2013-09-11 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('112', '20130911-0965', '北京华远平台功能移植', '北京华远', '25', null, '曹柯', '2013-09-12 09:04:50', '2013-09-17 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('113', '20130912-1011', '广州合景单点登录集成', '广州合景', '303', null, '张胜富', '2013-09-12 11:19:59', '2013-09-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('114', '', '[平台]方案应用-大文件上传', '广州星河', '256', null, '陶佳俊', '2013-09-13 15:33:33', '2013-09-16 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('115', '20130913-1131', '金融街平台个性化移植移动代码', '北京金融街', '258', null, '邹艳辉', '2013-09-13 15:38:33', '2013-09-16 00:00:00', null, null, '3', '金融街移动销售的上线要求\n由于金融街销售系统做过系统集成，实际销售系统版本为256.但MAP平台底层使用时258的底层，且做过个性化开发，需要对金融街个性化底层进行移动产品支持通用改造', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('116', '20130913-1099', '北京华银系统账号登录无法显示功能菜单', '北京华银', '303', null, '邓斌', '2013-09-13 11:14:41', '2013-09-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('117', '20130913-1092', '碧桂园CPU占用过高紧急问题处理', '碧桂园', '25', null, '薛小虎', '2013-09-13 08:59:56', '2013-09-16 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('118', '20130911-0926', '万科组织权限管理增加排除公司功能', '深圳万科', '25', null, '陶家俊', '2013-09-11 11:59:39', '2013-09-15 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('119', '20130916-1328', '广东鸿艺系统设置组织架构调整故障', '广东鸿艺', '303', null, '邓斌', '2013-09-17 08:26:10', '2013-09-17 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('120', '20130912-1054', '广州保利平台需求-appGridl自定添加行问题', '广州保利', '25', null, '张胜富', '2013-09-13 08:27:08', '2013-09-17 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('121', '', '【主动修复】花样年-254', '花样年', '254', null, '颜邕', '2013-08-29 15:04:21', '2013-09-16 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('122', '20130918-1451', '河南建业客服系统用户功能验证', '河南建业', '257', null, '薛小虎', '2013-09-18 10:11:22', '2013-09-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('123', '20130913-1143', '益田集团-OA接口需求方案说明', '益田集团', '303', null, '邓斌', '2013-09-16 08:56:25', '2013-09-22 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('124', '20130917-1388', '新鸿基移动审批平台支持需求', '新鸿基', '256', null, '陶佳俊', '2013-09-17 15:55:57', '2013-09-22 00:00:00', null, null, '3', '该需求已经实现.无需开发', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('125', '', '修复303SP2中的两个BUG', 'MAP303', '303', null, '', '2013-09-22 16:05:24', '2013-09-23 00:00:00', null, null, '3', '1.Application_Edit.aspx页面的判断逻辑存在问题.没有判断DOM元素是否存在就开始访问.\n2.运行设置-作业管理界面存在问题.没有正确判断列表是否选择了数据.', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('126', '20130918-1499', '深圳佳兆业特殊字符不工作流与业务系统限制不一致问题', '深圳佳兆业', '301', null, '陶佳俊', '2013-09-18 16:19:36', '2013-09-23 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('127', '20130922-1567', '佳兆业25销售平台修复', '深圳佳兆业', '25', null, '陶佳俊', '2013-09-23 08:50:14', '2013-09-25 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('128', '20130922-1555', '佳兆业301成本平台任务', '深圳佳兆业', '301', null, '陶佳俊', '2013-09-23 08:51:53', '2013-09-25 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('129', '20130922-1562', '深圳星河256平台修复', '深圳星河', '256', null, '陶佳俊', '2013-09-23 08:51:22', '2013-09-23 00:00:00', null, null, '3', '已经测试过，原版本就已经修复过,不需要修复。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('130', '20130922-1565', '深圳中海252平台修复', '深圳中海', '252', null, '陶佳俊', '2013-09-23 08:50:55', '2013-09-24 00:00:00', null, null, '3', '已经测试过，原版本就已经修复过,不需要修复。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('131', '20130924-1862', '新鸿基缓存同步报错问题修复', '香港新鸿基', '256', null, '陶佳俊', '2013-09-24 16:49:13', '2013-09-24 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('132', '20130922-1541', '华远平台集成个性化移植', '北京华远', '303', null, '曹珂', '2013-09-23 08:48:29', '2013-09-20 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('133', '', '补充小平台示例代码', '无', '00', null, '', '2013-09-13 15:35:57', '2013-09-24 00:00:00', null, null, '3', '根据API接口，提供相应的调用代码片段，更新到小平台SDK中。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('134', '20130916-1268', '协助-龙湖商业地产用户数校验', '重庆龙湖', '25', null, '吴开峰', '2013-09-17 08:26:41', '2013-09-25 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('135', '', '用友财务接口UTF-8测试', 'MAP304', '304', null, '', '2013-09-15 21:06:47', '2013-09-26 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('136', '20130925-1996', '碧桂园成本系统Bug【岗位授权无法保存】', '中山碧桂园', '25', null, '薛小虎', '2013-09-26 08:34:14', '2013-09-26 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('137', '20130925-1959', '诺仕达公司过滤Bug', '诺仕达', '302', null, '赵红伟', '2013-09-26 08:33:24', '2013-09-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('138', '20130925-1955', '俊发授权性能问题', '俊发', '25', null, '赵红伟', '2013-09-26 08:32:36', '2013-09-26 00:00:00', null, null, '3', '加索引可以解决问题', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('139', '20130926-2091', '北京上古售楼系统技术验证', '北京上古', '303', null, '郭凯', '2013-09-27 08:46:47', '2013-09-29 00:00:00', null, null, '3', '联系人:郑筱', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('140', '20130923-1686', '茂华DSS降级任务-平台改造', '茂华', '254', null, '邢存岭', '2013-09-24 14:55:57', '2013-09-25 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('141', '', '安全修复-为DSS等程序支持SQL关键字过滤', 'MAP304', '304', null, '', '2013-09-04 11:24:28', '2013-09-08 00:00:00', null, null, '3', '目前的SQL关键字只检查aspx的请求，但是DSS使用了ajax的扩展名，吴昊小蒋他们的AJAX方案使用了axd的扩展名，现在只能将扩展名改成配置项了。\n配置项的格式：.aspx;.ashx;.ajax;ajax.axd\n多个项用分号分开，默认就是以上设置。', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('142', '20130929-2300', '招商wps问题', '深圳招商', '256', null, '陶家俊', '2013-09-30 09:00:57', '2013-09-30 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('143', '20131008-0132', '华南城键盘翻页功能验证', '华南城', '302', null, '邓斌', '2013-10-08 17:05:25', '2013-10-09 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('144', '20131010-0352', '首开短信平台平台需求', '北京首开', '253', null, '邹艳辉', '2013-10-10 09:57:54', '2013-10-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('145', '20131009-0279', '深圳佳兆业RSA密钥任务', '深圳佳兆业', '301', null, '陶佳俊', '2013-10-12 12:18:31', '2013-10-09 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('146', '20131012-0667', '大连悦泰303销售系统左侧菜单显示报错', '大连悦泰', '303', null, '赵红伟', '2013-10-12 13:20:53', '2013-10-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('147', '', '深圳莱蒙主动修复', '深圳莱蒙', '253', null, '颜邕', '2013-10-11 17:39:29', '2013-10-08 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('148', '20131012-0677', '佳兆业降级到301支持任务', '深圳佳兆业', '301', null, '陶佳俊', '2013-10-14 08:54:49', '2013-10-14 00:00:00', null, null, '3', '其中0.5为结算之前唐敦峰处理RSA密钥问题工作量.', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('249', '20131119-1917', '[开发]绿景客服系统单点登录', '绿景', '302', null, '邓斌', '2013-11-20 10:29:18', '2013-11-21 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('250', '20131119-1935', '采购过程管理存储过程性能优化', '中山雅居乐', '257', null, '薛小虎', '2013-11-20 10:28:37', '2013-11-21 00:00:00', null, null, '3', '此问题需远程查看，一线联系后暂时没时间。下周一才可以查看', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('251', '20131119-1887', '[开发][合景][平台]优化需求', '广州合景', '303', null, '张胜富', '2013-11-20 10:29:54', '2013-11-22 00:00:00', null, null, '3', '上传控件添加『文档属性』及『是否过程文档』，供工作流使用', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('252', '', 'ERP与消息服务对接', '北大资源', '303', null, '', '2013-11-22 19:40:53', '2013-11-22 00:00:00', null, null, '3', '远程客户，协助一线完成ERP与消息服务对接', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('253', '', '杭州绿城ActiveX插件修复', '杭州绿城', '00', null, '', '2013-11-23 10:50:22', '2013-11-22 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('254', '20131118-1756', '异常日志无SQL辅助语句问题修复', '广州城建', '252', null, '张胜富', '2013-11-18 18:15:12', '2013-11-25 00:00:00', null, null, '3', '运维黄麟欢提的任务\nSQL异常时记录SQL与多数据源改造同时进行，该版本没有多数据源改造和记录SQL。\n单独添加记录SQL', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('255', '', '深圳莱蒙与北京金辉主动修复比对项目代码', '深圳莱蒙', '253', null, '', '2013-11-25 16:10:47', '2013-11-25 00:00:00', null, null, '3', '莱蒙有10个文件存在差异，提供增量包\n金辉不存在差异', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('256', '', '整理深圳花样年个性化库', '深圳花样年', '254', null, '', '2013-11-25 18:30:20', '2013-11-25 00:00:00', null, null, '3', '编译后无法运行的问题已查明，缺少ExceptionLog目录导致，添加DLL和目录后即可正常编译运行。\n同时补充李凡开发的遮罩层开关。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('257', '', 'ActiveX控件Project控件开发', '无', '00', null, '', '2013-11-25 19:58:55', '2013-11-25 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('258', '20131125-2555', '泛微OA单点登录需求', '上海中金', '303', null, '赵红伟', '2013-11-26 09:02:13', '2013-11-27 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('259', '20131125-2486', 'appGridTreeEdit控件的问题', '大连海昌', '304', null, '赵红伟', '2013-11-26 18:42:12', '2013-11-27 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('260', '', 'ActiveX控件中project控件修复', '无', '00', null, '', '2013-11-26 22:12:57', '2013-11-26 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('261', '20131125-2559', '2012数据库选择项目过滤报错', '广州恒大', '25', null, '冉航', '2013-11-26 09:01:25', '2013-11-26 00:00:00', null, null, '3', '原功能使用Repeater实现，后改为xslt+异步加载\n平台代码基本未作改动。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('262', '', '江苏新城关于HttpContext.Current修复', '江苏新城', '302', null, '', '2013-11-27 20:28:48', '2013-11-27 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('263', '20131126-2605', '建工销售系统需求方案_技术验证', '建工', '255', null, '邓斌', '2013-11-26 10:46:15', '2013-11-28 00:00:00', null, null, '3', '需要验证能否实现断点折线图\n验证可行', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('264', '', '蓝光303业务咨询及BUG排查', '四川蓝光', '303', null, '吴开峰', '2013-11-28 19:11:05', '2013-11-28 00:00:00', null, null, '3', '303准备上线，讨论上线数据初始化的问题。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('265', '', '岗位数据授权myUserObject表不写入数据的问题', '四川蓝光', '303', null, '吴开峰', '2013-11-28 19:13:38', '2013-11-28 00:00:00', null, null, '3', '追查各个版本的代码后发现，301以后对myUserObject表就不做操作了，用户的数据授权都从岗位数据权限获取，项目上256过来的版本需要修改代码。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('266', '', '发现并解决岗位授权可能不会清除用户缓存的bug', '无', '303', null, '', '2013-11-28 19:16:38', '2013-11-28 00:00:00', null, null, '3', '该问题在最新的版本上也存在，代码中拼接SQL的查询条件有问题，会导致SQL查询失败，但该错误不会抛出，用户无法感知，修改了这部分拼接的代码。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('267', '', 'ActiveX控件打包', '无', '00', null, '', '2013-11-28 19:35:12', '2013-11-28 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('268', '20131128-3042', '建业集团-附件服务器单独部署需求', '河南建业', '257', null, '薛小虎', '2013-11-29 09:29:28', '2013-12-02 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('269', '20131128-3015', 'ERP2.5老系统重新增加狗的校验', '广州保利', '25', null, '张胜富', '2013-11-29 09:30:21', '2013-11-29 00:00:00', null, null, '3', '回滚即可', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('270', '20131128-3013', 'DSS系统重新增加狗的校验', '广州保利', '256', null, '张胜富', '2013-11-29 09:31:24', '2013-11-29 00:00:00', null, null, '3', '回滚即可', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('271', '', 'ActiveX控件打包与前端检测', '无', '00', null, '', '2013-11-29 20:53:54', '2013-11-29 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('272', '', '测试Js替换Popup方案', '无', '00', null, '', '2013-12-02 19:23:20', '2013-12-02 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('273', '20131202-0214', '奥园upfiles文件夹管理需求', '广州奥园', '25', null, '冉航', '2013-12-02 22:30:47', '2013-12-03 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('274', '20131123-2358', '移动审批103平台调整需求', '中山美的', '254', null, '薛小虎', '2013-11-25 10:18:12', '2013-12-02 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('275', '', 'ActiveX控件修复（添加卸载以前版本的功能）', '无', '00', null, '', '2013-12-04 08:31:52', '2013-12-03 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('276', '20131126-2603', '江苏新城销售系统RTS报表打开页面内容无法复制', '江苏新城', '302', null, '', '2013-11-27 09:40:43', '2013-12-04 00:00:00', null, null, '3', '仅分析问题原因，由工报组修改', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('277', '', '中国农批明源消息服务联调', '中国农批', '303', null, '', '2013-12-04 10:04:58', '2013-12-04 00:00:00', null, null, '3', '补充联调工作量', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('278', '20131202-0145', '东亚新华系统报错', '东亚新华', '303', null, '邓斌', '2013-12-02 22:31:28', '2013-12-04 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('279', '', '天鸿BUG排查', '北京天鸿', '25', null, '', '2013-12-04 17:36:48', '2013-12-04 00:00:00', null, null, '3', '协助项目朱恋源排查岗位授权页面，动作点-岗位功能授权(项目进度管理系统-项目准备-项目知识管理库-查询)，保存时提示\"对不起，数据库中的子系统用户数超出允许范围！\"问题', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('280', '', '广州城建主动修复代码排查', '广州城建', '252', null, '', '2013-12-04 18:51:53', '2013-12-04 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('281', '', 'Popup替换方案开发', '无', '00', null, '', '2013-12-05 08:25:23', '2013-12-04 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('282', '20131204-0494', 'appGridTreeEdit控件问题总集', '大连海昌', '304', null, '赵红伟', '2013-12-05 10:10:14', '2013-12-05 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('283', '', '广州星河湾主动修复代码排查', '广州星河湾', '256', null, '', '2013-12-05 17:48:57', '2013-12-05 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('284', '', 'IE10中Popup Javscript替换方案测试', '无', '00', null, '', '2013-12-06 08:42:33', '2013-12-05 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('285', '20131205-0736', '方案应用-插件一键安装', '杭州绿城', '256', null, '薛小虎', '2013-12-06 10:15:43', '2013-12-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('286', '20131205-0637', '天鸿权限控制BUG', '北京天鸿', '25', null, '邓斌', '2013-12-05 13:10:39', '2013-12-06 00:00:00', null, null, '3', '本任务在排查过程中发现客户使用的map.core.dll与vss上最新的map.core.dll不一致。客户使用的依然是旧的core.使用最新的core本地测试没有问题。与邓斌沟通后，本任务暂时不关闭.', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('287', '20131126-2577', '岗位成员调整权限下放及调整日志需求', '总部招商', '256', null, '', '2013-11-26 10:46:49', '2013-12-04 00:00:00', null, null, '3', '工作量主要包括\n主次需求沟通0.5\n\n本任务已完成需求沟通。具体需求实现下一阶段安排。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('288', '20131203-0459', '北京鑫苑附件上传控件移植', '北京鑫苑', '303', null, '吴开峰', '2013-12-04 08:55:07', '2013-12-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('289', '', '深圳花样年主动修复代码排查', '深圳花样年', '254', null, '', '2013-12-06 18:21:07', '2013-12-06 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('290', '', '工作流SQL调整', '四川蓝光', '303', null, '吴开峰', '2013-12-06 19:06:52', '2013-12-06 00:00:00', null, null, '3', '桌面部件新增的两个tab页面的SQL来自工作流，但是代码在平台，今天工作流调整了两次SQL，配合他们发布两次增量更新包。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('291', '', '普通用户桌面部件未显示新增的tab页面', '四川蓝光', '303', null, '吴开峰', '2013-12-06 19:09:00', '2013-12-06 00:00:00', null, null, '3', '普通用户没有显示新增的两个tab页面，清空缓存后再查看问题仍存在，查看代码这两个页面并未单独配置权限，怀疑是该用户权限未开启，建议检查后问题再未反馈。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('292', '', 'Popup替换方案测试', '无', '00', null, '', '2013-12-06 19:47:41', '2013-12-06 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('293', '', '北京中建及河南建业主动修复代码排查', '河南建业', '257', null, '', '2013-12-09 18:06:59', '2013-12-09 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('294', '', '江苏新城BUG排查', '江苏新城', '302', null, '', '2013-12-09 18:09:49', '2013-12-09 00:00:00', null, null, '3', '测试发现异常日志中记录了一个SQL执行失败的记录，一个加载XML出错的日志。经排查，SQL执行失败是项目中拼接SQL有问题，in后面的条件没有单引号；XML加载出错是因为LoadXML没有判断参数是否为空，catch中又记录了异常，不影响功能，但是会在异常日志中多记录一条记录，平台主动修复会注释掉，项目中需要自行修改。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('295', '', '下载带空格的文件异常', '重庆怡置', '256', null, '', '2013-12-09 18:11:54', '2013-12-09 00:00:00', null, null, '3', '左俊反应带空格的文件下载异常，但是这个地方没有做过主动修复，经查是9月份的时候峻峰做过的主动修复代码没有同步，重新发包即可。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('296', '', 'ERP中关于Popup替换方案测试', '无', '00', null, '', '2013-12-09 21:30:28', '2013-12-09 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('297', '20131204-0600', '北京方兴售楼专项技术验证', '北京方兴', '256', null, '', '2013-12-09 11:21:53', '2013-12-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('298', '', 'popup替代方案测试', '无', '00', null, '', '2013-12-11 08:30:04', '2013-12-10 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('299', '', 'htc javascript替代方案测试', '无', '00', null, '', '2013-12-22 22:14:59', '2013-12-20 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('300', '', 'htc javascript替代方案测试', '无', '00', null, '', '2013-12-25 08:34:17', '2013-12-24 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('301', '', '杭州绿城ActiveX插件排查', '杭州绿城', '256', null, '', '2013-12-09 21:31:15', '2013-12-09 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('302', '', '上海复地及北京金融街主动修复代码排查', '上海复地', '301', null, '', '2013-12-10 11:53:41', '2013-12-10 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('303', '20131118-1718', 'ERP和租赁系统实现单点登录', '成都川南大市场', '304', null, '汪海疆', '2013-11-18 18:17:18', '2013-12-06 00:00:00', null, null, '3', '包括需求咨询0.3\n开发：0.9\n测试：0.4', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('304', '', '评估平台主动修复代码撤回所需代价', '北京万达', '255', null, '', '2013-12-10 18:01:18', '2013-12-10 00:00:00', null, null, '3', '北京万达主动修复分为多个修改项，在几个月内分批进行。\n主干代码显示有部分修改项已经存在于主干，需要进一步分析需要撤回哪些主动修复项。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('305', '', 'ActiveX控件修复', '杭州绿城', '256', null, '', '2013-12-11 08:28:06', '2013-12-10 00:00:00', null, null, '3', '在安装集成安装成后，project 加载项不成功，排查是以前安装包注册表的问题', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('306', '', '排查project通过加载项保存出错的原因', '上海中鑫', '303', null, '', '2013-12-11 08:29:19', '2013-12-10 00:00:00', null, null, '3', '原因是保存的数据量比较大', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('307', '20131211-1252', '重庆金九产品BUG升级内部任务', '重庆金九', '255', null, '', '2013-12-11 10:09:49', '2013-12-11 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('308', '20131208-0962', '雅居乐-AD登录问题升级需求单', '中山雅居乐', '257', null, '薛小虎', '2013-12-11 10:13:58', '2013-12-09 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('309', '20131211-1250', '方案应用-插件一键安装', '上海中金', '303', null, '赵红伟', '2013-12-11 10:10:36', '2013-12-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('310', '20131210-1186', '[上海三盛][平台]appgridtree控件打印、导出Bug', '上海三盛', '25', null, '赵红伟', '2013-12-11 10:11:12', '2013-12-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('311', '20131209-1030', '审批流中附件无法打开', '重庆怡置', '257', null, '汪海疆', '2013-12-11 10:13:22', '2013-12-11 00:00:00', null, null, '3', '查看项目代码相应分支发现Mysoft.Map.Business.dll文件错误使用了主动修复之后的版本，还原旧版本即可。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('312', '', '深圳龙光主动修复代码排查', '深圳龙光', '256', null, '', '2013-12-11 17:53:09', '2013-12-11 00:00:00', null, null, '3', '仅完成排查，由于后续计划不明确暂未提供报告及更新包', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('313', '', 'Project com组件修复', '上海中金', '303', null, '', '2013-12-12 08:32:16', '2013-12-11 00:00:00', null, null, '3', '由于保存数据过大，想通过压缩的方式来解决问题', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('314', '', 'Project com组件加载数据错误排查', '杭州绿城', '256', null, '', '2013-12-12 08:33:57', '2013-12-11 00:00:00', null, null, '3', '在使用project 在线编辑的时候，提示传入数据错误，目前还未找到原因。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('315', '20131209-1054', '开发-新疆和谐泛微OA单点登录需求-新疆和谐', '新疆和谐', '302', null, '汪海疆', '2013-12-11 10:12:54', '2013-12-12 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('316', '20131211-1344', '青岛新华代办事宜修改', '青岛新华', '302', null, '郭凯', '2013-12-12 10:17:47', '2013-12-12 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('317', '20131210-1144', '广州保利DSS系统平台改为读网络狗与单机狗两种方式', '广州保利', '256', null, '张胜富', '2013-12-11 10:11:53', '2013-12-12 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('318', '20131212-1414', '全面预算现金流录入实际金额页面灰色遮罩层始终不消失', '广州星河湾', '256', null, '冉航', '2013-12-12 15:44:28', '2013-12-12 00:00:00', null, null, '3', '该问题由于项目自行个性化了一套AGE控件前端文件，主动修复时没有对这些文件添加加载完成标识，导致使用了这些个性化前端文件的页面遮罩无法消失。\n添加相应的标识后遮罩正常消失。\n任务编号对应的任务非登记给平台的内部任务。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('319', '', 'ActiveX插件修复', '杭州绿城', '256', null, '', '2013-12-13 08:22:43', '2013-12-12 00:00:00', null, null, '3', '测试提交的Bug修复', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('320', '', 'Project提交数据过大修复', '上海中金', '303', null, '', '2013-12-13 08:23:36', '2013-12-12 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('321', '20131212-1430', '重庆协信金蝶OA单点登录', '重庆协信', '301', null, '汪海疆', '2013-12-13 09:48:48', '2013-12-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('322', '20131211-1359', '成本数据库二次开发需求20131211', '河南建业', '257', null, '薛小虎', '2013-12-12 10:15:13', '2013-12-16 00:00:00', null, null, '3', '需要完成的内容为修改组织信息编辑界面。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('323', '', '北京金隅、佳兆业、大连亿达主动修复代码排查', '北京金隅', '25', null, '', '2013-12-13 18:07:15', '2013-12-13 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('324', '20131209-1127', '[佳兆业][平台]OA单点登录需求', '佳兆业', '303', null, '陶佳俊', '2013-12-11 10:12:23', '2013-12-16 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('325', '', '平台主动修复代码撤回', '北京万达', '255', null, '', '2013-12-04 09:49:16', '2013-12-16 00:00:00', null, null, '3', '移除迁移至TFS之前进行的主动修复\n具体行动为同步项目代码Map部分，并移除控件后台遮罩代码。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('326', '', 'Popup替换方案测试', '无', '00', null, '', '2013-12-17 08:24:06', '2013-12-16 00:00:00', null, null, '3', '调整ERP系统的框架', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('327', '20131216-1796', '北京鑫苑单点登录功能开发', '北京鑫苑', '303', null, '吴开峰', '2013-12-17 09:30:50', '2013-12-17 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('328', '', 'Htc javascript 替代方案开发', '无', '00', null, '', '2013-12-18 08:24:06', '2013-12-17 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('329', '20131216-1638', '北京和裕优化需求', '北京和裕', '302', null, '邓斌', '2013-12-17 09:33:41', '2013-12-18 00:00:00', null, null, '3', '拆分待办通知为待办通知与消息通知', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('330', '20131217-1942', '[万科][平台]缓存同步索引超出范围BUG', '万科', '25', null, '', '2013-12-18 09:32:19', '2013-12-18 00:00:00', null, null, '3', '开发：0.5\n测试：0.2', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('331', '', '佳兆业登录时空引用BUG排查', '佳兆业', '303', null, '', '2013-12-18 15:02:54', '2013-12-18 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('332', '', 'htc javascript 替换方案测试', '无', '00', null, '', '2013-12-19 08:28:52', '2013-12-18 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('333', '20131120-2021', '2012年10月平台主动修复代码撤回', '杭州绿城', '256', null, '薛小虎', '2013-11-21 08:50:18', '2013-12-18 00:00:00', null, null, '3', '包含了VSS转TFS用时，完整撤回所有主动修复内容。(除浮点运算方案）', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('334', '20131212-1392', '岗位成员调整权限下放及调整日志需求', '总部招商', '256', null, '陶佳俊', '2013-12-13 09:35:32', '2013-12-19 00:00:00', null, null, '3', '开发：2\n测试：0.5', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('335', '20131217-1811', '招商模块显示调整', '总部招商', '256', null, '陶佳俊', '2013-12-18 16:58:19', '2013-12-19 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('336', '', 'htc javascript替代方案测试', '无', '00', null, '', '2013-12-20 08:22:15', '2013-12-19 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('337', '20131220-2266', '[新鸿基][平台]首次登陆bug', '新鸿基', '256', null, '', '2013-12-20 10:55:20', '2013-12-20 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('338', '20131220-2329', 'AppGridE允许日期控件使用文本类型的数据源', '河南建业', '257', null, '薛小虎', '2013-12-23 09:40:54', '2013-12-23 00:00:00', null, null, '3', '该任务包含四个bug修复，提出该任务时问题升级单仅包含第一项，剩余三项为后续邮件补充。\n该任务在无主动修复分支上完成。\n1.AppGridE允许日期控件使用文本类型的数据源\n2.修复AppGridE导出bug\n3.修复AppGridE复选框选中时溢出bug\n4.修复AppGridTree导出空列', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('339', '', 'htc javascript替代方案测试', '无', '00', null, '', '2013-12-23 22:50:34', '2013-12-23 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('340', '20131218-2043', '待办事宜功能弹窗提示', '大连锦联', '303', null, '邓斌', '2013-12-18 16:56:45', '2013-12-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('341', '', '在win7、ie8环境下，插件导致关闭浏览器崩溃问题的排查', '佳兆业销售', '252', null, '', '2013-12-25 08:33:41', '2013-12-24 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('342', '20131224-2660', 'AD域用户同步排除特定帐号需求', '佳兆业', '303', null, '陶佳俊', '2013-12-25 09:32:17', '2013-12-25 00:00:00', null, null, '3', '该功能标准产品自带，截图回复即可。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('343', '20131220-2263', '[平台]方案应用-大文件上传', '江苏正昌', '303', null, '汪海疆', '2013-12-23 15:29:17', '2013-12-25 00:00:00', null, null, '3', '该任务代码不由平台维护,由项目直接使用大文件上传方案.', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('344', '20131223-2427', 'BPM审批接口需求', '佳兆业', '301', null, '陶佳俊', '2013-12-23 15:31:55', '2013-12-25 00:00:00', null, null, '3', '佳兆业301\n该需求所需的URL打开在301平台中已经支持。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('345', '', 'htc javascript替代方案测试', '无', '00', null, '', '2013-12-26 08:47:13', '2013-12-25 00:00:00', null, null, '3', '今天的主要工作是整理ERP系统中css文件中定义了htc文件的样式', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('346', '20131219-2209', '单点登录调整登录流程', '四川蓝光', '303', null, '吴开峰', '2013-12-23 09:50:18', '2013-12-26 00:00:00', null, null, '3', '20131219-2209\n20131225-2736\n20131225-2746\n这三个任务一起发包', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('347', '20131225-2736', '用户编辑界面添加呼叫中心用户代码字段', '四川蓝光', '303', null, '吴开峰', '2013-12-25 15:13:16', '2013-12-26 00:00:00', null, null, '3', '20131219-2209\n20131225-2736\n20131225-2746\n这三个任务一起发包', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('348', '20131225-2746', 'PDF附件无法直接打开', '四川蓝光', '303', null, '吴开峰', '2013-12-26 15:16:29', '2013-12-26 00:00:00', null, null, '3', '20131219-2209\n20131225-2736\n20131225-2746\n这三个任务一起发包', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('349', '20131226-2852', 'AppGrid支持取消默认选中行', '中山雅居乐', '257', null, '薛小虎', '2013-12-26 15:34:36', '2013-12-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('350', '', 'htc javascript替代方案测试', '无', '00', null, '', '2013-12-27 08:30:33', '2013-12-26 00:00:00', null, null, '3', '已经完成了对Form.css和Global.css这两个Css文件的整理，并且在deom页面做没影式', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('351', '20131226-2884', '单点登录模式下多帐号切换流程优化', '中山雅居乐', '257', null, '薛小虎', '2013-12-27 09:30:13', '2013-12-27 00:00:00', null, null, '3', '该任务同时在257及10上进行', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('352', '20131223-2507', 'ie8环境下插件导致浏览器崩溃的问题（咨询）', '佳兆业', '254', null, '陶佳俊', '2013-12-23 20:01:58', '2013-12-23 00:00:00', null, null, '3', '佳兆业销售erp25', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('353', '20131227-2993', 'OA单点登录快捷方式支持', '北京鑫苑', '303', null, '吴开峰', '2013-12-27 17:22:25', '2013-12-27 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('354', '20131224-2555', '文本区支持录入㎡', '中山雅居乐', '257', null, '薛小虎', '2013-12-26 15:36:00', '2013-12-27 00:00:00', null, null, '3', '一线中途提出需求要求支持㎥，评估之后发现需要投入较大工作量，影响范围较广，最终仍然只支持㎡\n特殊字符Unicode代码参考如下：\nU+33A1㎡\nU+33A5㎥', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('355', '', 'htc javascript替代方案测试', '无', '00', null, '', '2013-12-28 17:16:21', '2013-12-27 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('356', '20131227-2989', '工作流特殊字符文件名附件无法打开', '深圳莱蒙', '253', null, '颜邕', '2013-12-30 09:47:54', '2013-12-30 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('357', '20131225-2699', '北京华远AppGridE导出EXCEL样式需求', '北京华远', '302', null, '曹珂', '2013-12-25 14:11:33', '2013-12-26 00:00:00', null, null, '3', '移植AppDynamicGird的Excel导出功能，进行改造后适用于AppGridE。给予的解决方案为脚本文件，并未修改Map平台代码。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('358', '20131226-2881', '技术验证条件选择框拼接SQL是否保存', '武汉名流', '303', null, '邓斌', '2013-12-27 09:31:21', '2013-12-30 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('359', '20131227-2956', '生僻字无法显示', '青岛海信', '255', null, '邓斌', '2013-12-30 11:46:51', '2013-12-30 00:00:00', null, null, '3', '无法显示的字符为『䇹』\n提供GB18030针对性解决方案', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('360', '20131223-2481', '方案应用-IE10兼容', '北京信达', '252', null, '郭凯', '2013-12-24 09:37:25', '2013-12-31 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('361', '20131225-2701', '方案应用-IE10兼容', '北京金隅', '254', null, '曹珂', '2013-12-25 14:08:42', '2013-12-31 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('362', '', '佳兆业IE崩溃方案排查', '佳兆业', '252', null, '', '2013-12-30 20:04:02', '2013-12-30 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('363', '', 'htc javascript替代方案中自定义事件和属性测试', '无', '00', null, '', '2013-12-30 20:04:56', '2013-12-30 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('364', '', '协助项目完成江苏正昌多文件选择', '江苏正昌', '302', null, '', '2013-12-30 20:06:06', '2013-12-30 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('365', '20131230-3179', '蓝光单点登录需求代码调整', '四川蓝光', '303', null, '吴开峰', '2013-12-31 09:46:31', '2013-12-31 00:00:00', null, null, '3', '同步项目上原来个性化的单点登录代码', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('366', '20131231-3240', '佳兆业项目控件无法选择项目或楼栋', '佳兆业', '25', null, '陶家俊', '2013-12-31 10:49:59', '2013-12-31 00:00:00', null, null, '3', '向奇邮件中描述的问题.', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('367', '20131230-3119', '单点登录集成方式调整', '北京纳帕', '302', null, '', '2013-12-30 16:51:43', '2013-12-31 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('368', '', '测试ERP303工作流在无插件和未添加到受信任站点中的使用情况', '无', '00', null, '', '2014-01-02 08:30:23', '2013-12-31 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('369', '20131231-3263', '销售系统去掉遮照功能', '广州新世界', '251', null, '张胜富', '2013-12-31 10:29:49', '2014-01-02 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('370', '20131227-2998', 'Repeater限制分页需求', '北京上古', '303', null, '郭凯', '2013-12-30 11:44:37', '2014-01-02 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('371', '20140102-0026', '方案应用-IE10兼容', '广州城建', '252', null, '冉航', '2014-01-02 10:56:58', '2014-01-03 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('372', '', '协助排查主动修复bug', '广州城建', '252', null, '冉航', '2014-01-02 16:04:23', '2014-01-02 00:00:00', null, null, '3', '相应任务编号为20131009-0203，修复人为李凡\n解决2个bug，均为日期控件没有完全修复造成。\n1个bug（142255）仅在IE6中产生，且不影响实际下载文件名。暂时没有解决方案。\n1个bug（142260）无法重现。\n3个与分页按钮相关的bug属于SQL存在重复字段导致。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('373', '', 'ERP303工作流和报表在无插件和未添加到受信任站点中的情况下的正常运行的解决方案', '无', '00', null, '', '2014-01-03 08:43:50', '2014-01-02 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('374', '20140102-0011', '组织架构标准化平台优化需求', '重庆金科', '253', null, '吴开峰', '2014-01-02 10:57:58', '2014-01-03 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('375', '20140103-0345', '登录选择公司优化', '北京鑫苑', '303', null, '吴开峰', '2014-01-03 19:02:37', '2014-01-03 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('376', '', 'ERP303工作流和报表在无插件和未添加到受信任站点中的情况下的正常运行的解决方案', '无', '00', null, '', '2014-01-06 08:33:14', '2014-01-03 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('377', '20140102-0157', '数据库连接未关闭导致数据库连接超时', '杭州绿城', '256', null, '薛小虎', '2014-01-06 09:20:08', '2014-01-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('378', '20140103-0264', '岗位授权界面无法展开层级问题', '佳兆业', '301', null, '陶佳俊', '2014-01-06 09:26:54', '2014-01-06 00:00:00', null, null, '3', '该问题由于异常数据造成。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('379', '', '排查AppFind控件输入生僻字时无法正常使用的问题', '青岛海信', '255', null, '邓斌', '2014-01-06 16:51:19', '2014-01-06 00:00:00', null, null, '3', '统一在替换1=1的条件中添加N前缀', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('380', '20140106-0479', '月度项目计划导出Excel导出失败', '北京金泰', '303', null, '邹艳辉', '2014-01-06 14:32:51', '2014-01-06 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('381', '', 'ERP303工作流和报表在无插件和未添加到受信任站点中的情况下的正常运行的解决方案', '无', '00', null, '', '2014-01-07 08:42:40', '2014-01-06 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('382', '20131225-2696', '深圳华联置业换狗后导致系统报错', '深圳华联', '253', null, '邓斌', '2013-12-25 14:14:50', '2014-01-07 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('383', '20140106-0553', '佳兆业AppGridE只读及待办消息按类型过滤需求', '佳兆业', '303', null, '', '2014-01-07 09:25:44', '2014-01-08 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('384', '20140102-0170', '新增独立的『新增销售用户』功能及权限控制', '北京城建', '303', null, '邓斌', '2014-01-06 09:26:23', '2014-01-06 00:00:00', null, null, '3', '需求沟通时间0.4', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('385', '', 'ERP303工作流和报表在无插件和未添加到受信任站点中的情况下的正常运行的解决方案', '无', '00', null, '', '2014-01-08 08:36:30', '2014-01-07 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('386', '20140107-0649', '查询条件和列表字段显示需求', '北京方兴', '256', null, '郭凯', '2014-01-08 09:49:37', '2014-01-08 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('387', '20140107-0725', '方案应用-IE10兼容', '深圳招商', '256', null, '陶佳俊', '2014-01-08 16:03:41', '2014-01-16 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('388', '', '平台代码与项目代码差异排查', '广州城建', '252', null, '', '2014-01-08 16:16:42', '2014-01-08 00:00:00', null, null, '3', '排查结果已形成文档。\nIE10修复内容涉及到7个个性化文件。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('389', '', 'ERP303工作流和报表在无插件和未添加到受信任站点中的情况下的正常运行的解决方案', '无', '00', null, '', '2014-01-09 08:38:21', '2014-01-08 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('390', '', '商业地产组织架构及标准角色添加字段', '重庆龙湖', '25', null, '', '2014-01-09 14:04:59', '2014-01-08 00:00:00', null, null, '3', '该任务由产品提出，没有任务编号', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('391', '', 'ERP303工作流和报表在无插件和未添加到受信任站点中的情况下的正常运行的解决方案', '无', '00', null, '', '2014-01-10 08:38:46', '2014-01-09 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('392', '20140107-0674', '系统xmltemp文件增长问题修复', '上海红星地产', '256', null, '张巍', '2014-01-08 10:04:40', '2014-01-10 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('393', '20140108-0748', '方案应用-插件一键安装(含xmltemp文件增长问题)', '上海红星建设', '303', null, '张巍', '2014-01-08 10:05:28', '2014-01-09 00:00:00', null, null, '3', '该任务在同一个任务编号下包含两部分任务：\nxmltemp文件增长问题修复\n插件一键安装方案应用', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('394', '', 'ERP303登录首页改造，在目前通用浏览器中能够正常显示', '无', '00', null, '', '2014-01-13 08:31:50', '2014-01-10 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('395', '20140110-1171', '功能授权界面点击报错', '佳兆业', '301', null, '陶佳俊', '2014-01-13 08:56:01', '2014-01-13 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('396', '20131230-3155', '[平台]方案应用-大文件上传', '大连锦联', '303', null, '赵红伟', '2013-12-30 16:53:02', '2014-01-10 00:00:00', null, null, '3', '应用大文件上传方案', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('397', '', '标准角色字段限制调整', '重庆龙湖', '25', null, '', '2014-01-13 15:00:26', '2014-01-13 00:00:00', null, null, '3', '该任务为『商业地产组织架构及标准角色添加字段』任务的后续需求变更，没有任务编号。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('398', '20140107-0591', '方案应用-IE10兼容', '江苏中南', '301', null, '汪海疆', '2014-01-08 16:00:08', '2014-01-13 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('399', '', '华南城WORD控件打印页面BUG', '华南国际', '302', null, '刘玺', '2014-01-13 15:47:57', '2014-01-13 00:00:00', null, null, '3', '原打印页面不显示修订记录，修改后显示了修订记录。', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('400', '20131104-0336', '四川蓝光BUG排查', '四川蓝光', '303', null, '吴开峰', '2014-01-13 15:42:56', '2014-01-13 00:00:00', null, null, '3', '一线反馈两个问题，一个是历史遗留BUG，另外一个在测试环境无法重现，联系一线也未能重现。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('401', '', '整理ERP中插件使用的功能模块', '无', '00', null, '', '2014-01-13 20:21:39', '2014-01-13 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('402', '', '上传附件允许多文件上传需求沟通及确认', '大连锦联', '303', null, '', '2014-01-14 09:30:09', '2014-01-14 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('403', '', 'ERP前端脚本运算与bigNumber对比及分析', '无', '00', null, '', '2014-01-14 09:32:32', '2014-01-14 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('404', '', '增加移动平台底层用户功能权限接口', '佳兆业', '303', null, '', '2014-01-14 09:35:05', '2014-01-14 00:00:00', null, null, '3', '深圳总部一直未登任务，补一个内部任务', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('405', '', '重新调整代码布署', '上海红星美凯龙（地产）', '256', null, '', '2014-01-14 11:08:10', '2014-01-14 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('406', '20140114-1408', '移除遮照功能', '广州合景', '303', null, '张胜富', '2014-01-14 11:28:22', '2014-01-14 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('407', '20140107-0678', '方案应用-IE10兼容', '上海瑞安', '25', null, '赵红伟', '2014-01-08 16:02:46', '2014-01-14 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('408', '20140114-1427', 'oa单点登录跳转优化', '北京鑫苑', '303', null, '吴开峰', '2014-01-14 11:29:30', '2014-01-14 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('409', '', '协助项目查看消息服务问题', '中国农批', '00', null, '', '2014-01-14 20:31:29', '2014-01-14 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('410', '', '测试工作流中所有使用DSOFramer插件的地方自动安装的情况', '无', '00', null, '', '2014-01-15 08:41:25', '2014-01-14 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('411', '', '删除xmltemp文件夹新方案实现', '上海红星美凯龙（地产）', '256', null, '', '2014-01-15 16:43:20', '2014-01-15 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('412', '', '测试ERP中报表模块关于插件的自动安装情况', '无', '00', null, '', '2014-01-16 08:48:20', '2014-01-15 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('413', '20140114-1511', '方案应用-IE10兼容', '北京金融街', '258', null, '邹艳辉', '2014-01-16 15:50:54', '2014-01-23 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('414', '20140113-1302', '方案应用-IE10兼容', '广州时代', '25', null, '张胜富', '2014-01-14 11:25:57', '2014-01-21 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('415', '20140113-1336', '方案应用-IE10兼容', '北京万通', '256', null, '邹艳辉', '2014-01-14 11:27:37', '2014-02-08 00:00:00', null, null, '3', '对接人：朱林', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('416', '20140114-1504', '优化calcDoubleFix函数', '上海红星地产', '256', null, '张巍', '2014-01-16 15:50:29', '2014-01-16 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('417', '', '对工作流和报表插件在禁用的情况下，显示友好的提示信息', '无', '00', null, '', '2014-01-17 08:46:47', '2014-01-16 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('418', '20140107-0656', '方案应用-IE10兼容', '上海景瑞', '255', null, '赵红伟', '2014-01-08 16:02:14', '2014-01-16 00:00:00', null, null, '3', '需要修复两个版本：255及25\n其中25版本对应的2.0.11116.0普及版安全扫雷已被主动修复2.0覆盖', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('419', '20140117-1930', 'AD域同步报错', '佳兆业', '303', null, '陶佳俊', '2014-01-17 17:08:49', '2014-01-17 00:00:00', null, null, '3', '仅咨询', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('420', '20140116-1843', '隐藏失效日期', '香港新鸿基', '256', null, '陶佳俊', '2014-01-17 17:14:03', '2014-01-20 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('421', '20140116-1851', 'appFind控件时间过滤条件失效', '广州合景', '303', null, '张胜富', '2014-01-17 17:18:42', '2014-01-20 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('422', '', '整理计划系统中使用ActiveX控件的使用', '无', '00', null, '', '2014-01-20 08:46:33', '2014-01-17 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('423', '20140115-1622', '方案应用-插件一键安装', '北京首开', '253', null, '邹艳辉', '2014-01-16 15:55:05', '2014-01-21 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('424', '20140114-1519', '方案应用-IE10兼容（计划系统）', '佳兆业', '303', null, '陶佳俊', '2014-01-16 15:51:27', '2014-01-21 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('425', '20140114-1521', '方案应用-IE10兼容（销售系统）', '佳兆业', '25', null, '陶佳俊', '2014-01-16 15:51:54', '2014-01-22 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('426', '20140114-1523', '方案应用-IE10兼容（成本系统）', '佳兆业', '301', null, '陶佳俊', '2014-01-16 15:54:05', '2014-02-12 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('427', '20140113-1328', '组织架构垂直管理及用户可查看兼职公司组织架构需求', '北京万达', '255', null, '邹艳辉', '2014-01-14 11:26:54', '2014-01-15 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('428', '20140113-1218', '方案应用-IE10兼容', '广州保利', '303', null, '张胜富', '2014-01-14 11:25:17', '2014-01-20 00:00:00', null, null, '3', '保利为25升级到303', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('429', '20140108-0778', '方案应用-插件一键安装', '佳兆业', '303', null, '陶佳俊', '2014-01-08 16:05:29', '2014-01-09 00:00:00', null, null, '3', 'Project插件安装后不显示提交按钮', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('430', '20140116-1733', '异常日志没有记录的问题', '深圳中粮', '256', null, '颜邕', '2014-01-16 15:57:49', '2014-01-21 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('431', '20140116-1815', '项目标准角色无法选择团队角色', '北京鑫苑', '303', null, '吴开峰', '2014-01-17 17:19:43', '2014-01-20 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('432', '', '修复佳兆业中遮罩层消失不了的问题', '佳兆业', '301', null, '', '2014-01-21 08:45:01', '2014-01-20 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('433', '20140114-1444', '功能授权问题', '北京中交集团', '303', null, '邓斌', '2014-01-16 15:49:58', '2014-01-21 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('434', '20140120-2025', '[平台]切换公司界面显示问题优化', '上海农工商', '302', null, '张巍', '2014-01-20 14:48:00', '2014-01-22 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('435', '', '插件修复，在安装包中添加VSTO 4.0', '上海红星建设', '303', null, '', '2014-01-22 08:41:47', '2014-01-21 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('436', '20140120-2066', '方案应用-插件一键安装', '总部招商', '256', null, '陶佳俊', '2014-01-22 16:36:13', '2014-01-23 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('437', '', '华远AppGridE控件修改', '北京华远', '303', null, '', '2014-01-22 18:16:46', '2014-01-22 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('438', '', 'IE10修复Bug排查，针对.net 1.1的IE10修复补丁', '北京信达', '25', null, '郭凯', '2014-01-23 08:48:43', '2014-01-22 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('439', '20140116-1806', '[平台]频繁访问首页导致站点内存溢出', '上海上实', '251', null, '赵红伟', '2014-01-17 17:23:12', '2014-01-23 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('440', '20140121-2153', '附件删除零星需求', '总部招商', '256', null, '陶佳俊', '2014-01-22 16:37:41', '2014-01-22 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('441', '20140123-2352', '方案应用-IE10兼容', '北京SOHO', '25', null, '曹珂', '2014-01-23 14:17:28', '2014-01-23 00:00:00', null, null, '3', '', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('442', '20140115-1603', '系统频繁出现SqlDependency错误', '上海立天唐人', '302', null, '赵红伟', '2014-01-16 15:54:37', '2014-01-23 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('443', '20140115-1699', '认购书文档型套打报表位置变动', '金海港', '257', null, '邓斌', '2014-01-16 15:56:10', '2014-01-23 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('444', '', 'IE10修复Bug排查', '无', '25', null, '', '2014-01-24 08:44:05', '2014-01-22 00:00:00', null, null, '3', '', '内部', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('445', '20140122-2280', '频繁访问首页导致站点内存溢出', '杭州中大', '301', null, '赵红伟', '2014-01-23 09:45:06', '2014-01-24 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('446', '20140120-2044', '上传控件焦点问题', '重庆龙湖', '25', null, '吴开峰', '2014-01-22 16:35:23', '2014-01-24 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('447', '20140120-2073', '[平台]AppForm隐藏控件支持SetValue', '无锡九龙仓', '253', null, '汪海疆', '2014-01-22 16:37:06', '2014-01-24 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('448', '20140115-1637', '增加不允许被调整的岗位控制', '总部招商', '256', null, '陶佳俊', '2014-01-16 15:55:37', '2014-01-24 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('549', '20140303-0151', '[万科][平台]资源化过滤调整需求', '深圳万科', '25', null, '颜邕', '2014-03-03 16:41:01', '2014-03-04 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('550', '20140303-0213', '[工作流][上海绿地][移动审批]审批同意后无反应', '上海绿地', '301', null, '杨正国', '2014-03-04 08:54:50', '2014-03-04 00:00:00', null, null, '3', '已发送邮件说明此项问题, 移动端不支持工作流同一责任人跳过功能, 移动组一周前发送的移动升级包解决了此项问题.', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('551', '20140304-0378', '[工作流]建业-工作流、平台-IE兼容性、遮罩层、工作流BUG', '郑州建业', '252', null, '汪海疆', '2014-03-04 17:03:07', '2014-03-03 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('552', '20140304-0399', '[工作流]西安雨润-工作流-会签无反应BUG', '西安雨润', '254', null, '汪海疆', '2014-03-04 18:44:06', '2014-03-05 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('553', '20140304-0345', '【运维】广州时代map的tempfiles目录过大', '广州时代', '25', null, '张胜富', '2014-03-04 16:21:05', '2014-03-05 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('554', '20140304-0396', '[工作流]成都鑫苑工作流流程解晰BUG', '成都鑫苑', '303', null, '李致熙', '2014-03-04 18:39:47', '2014-03-05 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('555', '20140305-0457', '[平台]方案应用-大文件上传', '深圳星河', '256', null, '涂一鸣', '2014-03-05 12:43:34', '2014-03-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('556', '20140303-0164', '[平台]方案应用-大文件上传', '深圳佳兆业', '301', null, '涂一鸣', '2014-03-04 08:53:10', '2014-03-07 00:00:00', null, null, '3', '等PM前一个IE10的更新包处理完成后再处理该问题。预计周五进入开发，下周一完成开发。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('557', '20140303-0063', '[北京万达][MAP]ntko WORD插件替换及插入文本型业务域方案', '北京万达', '255', null, '邹艳辉', '2014-03-03 11:36:38', '2014-03-05 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('558', '20140306-0557', '[成都银传][平台]单点登录消息推送', '成都银传', '303', null, '邓斌', '2014-03-06 09:49:33', '2014-03-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('559', '20140306-0552', '[工作流][上海仁恒][工作流]协商功能优化', '上海仁恒', '301', null, '杨正国', '2014-03-06 09:32:01', '2014-03-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('560', '20140306-0623', '[深圳保利达][平台]上级岗位修改异常', '深圳保利达', '256', null, '颜邕', '2014-03-06 14:04:28', '2014-03-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('561', '20140306-0584', '[工作流]碧桂园工作流优化【零星调整20140304】', '中山碧桂园', '25', null, '李锐', '2014-03-06 09:51:18', '2014-03-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('562', '20140306-0665', '[青岛嘉合东方][桌面部件]桌面部件BUG', '青岛嘉合东方', '254', null, '程旭', '2014-03-06 15:07:52', '2014-03-06 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('563', '20140305-0455', '[平台]方案应用-大文件上传', '深圳星河', '256', null, '涂一鸣', '2014-03-05 12:43:03', '2014-03-06 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('564', '20140304-0309', '[工作流]ERP10【待办消息获取接口调整】', '中山雅居乐', '10', null, '薛小虎', '2014-03-04 14:18:14', '2014-03-05 00:00:00', null, null, '3', '开发中沟通需求疑问，自测场景多，导致超时。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('565', '20140307-0759', '[移动]修改平台底层支持移动审批103', '上海大华', '258', null, '赵红伟', '2014-03-07 11:41:18', '2014-03-07 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('566', '20140304-0275', '[商业地产202产品开发]平台Map BUG修复', '内部商业地产', '304', null, '吕日辉', '2014-03-04 11:34:29', '2014-03-07 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('567', '20140307-0815', '[龙光][平台]下载的压缩文件等显示异常为axd未知文件', '深圳龙光', '256', null, '颜邕', '2014-03-07 14:28:36', '2014-03-07 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('568', '20140307-0869', '[工作流][流程收到多个代办问题]', '河南建业', '257', null, '汪海疆', '2014-03-07 15:37:16', '2014-03-07 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('569', '20140307-0756', '[工作流]某些模板审批步骤中启用签章成未勾选', '深圳绿景', '256', null, '颜邕', '2014-03-07 15:42:38', '2014-03-07 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('570', '20140306-0708', '[工作流]表单审批意见展示方式调整咨询', '上海农工商', '302', null, '杨正国', '2014-03-06 18:22:10', '2014-03-07 00:00:00', null, null, '3', '评估可行性及预计工作量，谢谢；\n待一线回复确认中', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('571', '20140307-0751', '邮件发送时间问题升级', '广州合景', '303', null, '张胜富', '2014-03-07 11:39:13', '2014-03-07 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('572', '20140307-0817', '[河南建业][平台][IE10、11兼容需求]', '河南建业', '257', null, '汪海疆', '2014-03-07 14:30:12', '2014-03-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('573', '20140306-0673', '[平台]方案应用-IE10兼容', '广州力迅', '20', null, '张胜富', '2014-03-06 15:26:08', '2014-03-07 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('574', '20140307-0782', '[工作流]审批中允许修改业务数据', '天津国民地产', '256', null, '程旭', '2014-03-07 11:47:43', '2014-03-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('575', '20140307-0863', '[工作流]抄送类型与重设责任人调整', '佛山碧桂园', '25', null, '李锐', '2014-03-07 15:32:36', '2014-03-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('576', '20140307-0883', '[成都优品道][平台]工作流页面打印报错', '成都优品道', '302', null, '邓斌', '2014-03-07 16:05:28', '2014-03-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('577', '20140307-0831', '客户web.config与研发web.config差异分析', '北京SOHO', '25', null, '曹珂', '2014-03-07 14:31:54', '2014-03-10 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('578', '20140307-0766', '[工作流]流程查询-无数据bug', '深圳星河', '256', null, '涂一鸣', '2014-03-07 11:43:47', '2014-03-06 00:00:00', null, null, '3', '需处理，当前需求PM回复任务系统操作错误，为待确认状态。仍需处理。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('579', '20140307-0830', '[工作流]数据已暂时修复原因无法查明', '安徽金大地', '257', null, '程旭', '2014-03-07 14:39:31', '2014-03-11 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('580', '20140310-0998', '[工作流]审批流程无法自动归档', '重庆新鸥鹏', '253', null, '邓斌', '2014-03-10 12:50:02', '2014-03-10 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('581', '20140306-0648', '[工作流]ntko word插件替换', '北京万达', '303', null, '邹艳辉', '2014-03-06 15:10:50', '2014-03-10 00:00:00', null, null, '3', '客户未使用明源工作流，该需求无需开发。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('582', '20140310-0954', '[工作流]工作流审批默认岗位优化', '厦门海翼', '256', null, '薛小虎', '2014-03-10 11:12:59', '2014-03-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('583', '20140310-0958', '[工作流]工作流（303）零星开发需求', '广州保利', '303', null, '张胜富', '2014-03-10 11:15:30', '2014-03-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('584', '20140307-0842', '[工作流]流程打回审批人不见', '青岛天一建筑', '303', null, '程旭', '2014-03-07 14:44:47', '2014-03-11 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('585', '20140311-1127', '[平台]工作流附件无法打开', '重庆同景', '255', null, '邓斌', '2014-03-11 09:32:08', '2014-03-13 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('586', '20140307-0893', '北京伊泰组织架构调整功能优化开发', '北京伊泰', '253', null, '郭凯', '2014-03-07 17:01:50', '2014-03-20 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('587', '20140310-1022', '成本系统专项【单点登录环境集成】', '碧桂园', '25', null, '李锐', '2014-03-11 09:57:23', '2014-03-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('588', '20140307-0760', '佳兆业主数据平台优化需求', '深圳佳兆业', '301', null, '涂一鸣', '2014-03-07 15:40:41', '2014-03-10 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('589', '20140306-0660', '[工作流]郑州丰源-工作流-工作流同一责任人跳过功能', '郑州丰源', '256', null, '汪海疆', '2014-03-06 15:06:04', '2014-03-10 00:00:00', null, null, '3', '郑州丰源工作流源码建立花费了不少时间, 原因是vss上WF3.0.8标准库版本号为3.0.8.50415存在多个标签版本.', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('590', '20140311-1195', '[平台]ERP站点内存溢出', '中山美的', '254', null, '薛小虎', '2014-03-11 15:40:39', '2014-03-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('591', '20140311-1199', '[雅居乐][平台]ERP257内存溢出排查', '中山雅居乐', '257', null, '薛小虎', '2014-03-11 15:41:43', '2014-03-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('592', '20140311-1139', '广州保利平台工作流事件注册问题修复', '广州保利', '303', null, '张胜富', '2014-03-11 10:06:56', '2014-03-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('593', '20140311-1166', '广州合景平台增加字段(金蝶核算编码)需求', '广州合景', '303', null, '张胜富', '2014-03-11 11:25:06', '2014-03-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('594', '20140311-1137', '广州时代客户使用报表插件的技术咨询', '广州时代', '25', null, '张胜富', '2014-03-11 10:05:39', '2014-03-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('595', '20140311-1211', '深圳益田工作流报错', '深圳益田', '303', null, '刘玺', '2014-03-11 17:20:17', '2014-03-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('596', '20140311-1201', '[港中旅][平台]OA单点登录', '深圳港中旅', '254', null, '颜邕', '2014-03-11 15:49:56', '2014-03-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('597', '20140311-1264', '上传页面默认文档类型显示', '广州合景', '303', null, '张胜富', '2014-03-11 17:54:25', '2014-03-11 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('598', '20140307-0848', '[工作流]审批过程丢失记录，请查明原因', '沈阳穗港', '256', null, '程旭', '2014-03-07 14:51:30', '2014-03-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('599', '20140311-1235', '[工作流]广州合景工作流BUG', '广州合景', '303', null, '张胜富', '2014-03-11 15:51:45', '2014-03-11 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('600', '20140312-1367', '成本授权数据丢失', '深圳鹏基南方', '253', null, '刘玺', '2014-03-12 11:56:59', '2014-03-13 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('601', '20140312-1344', 'AppGridE控件导出数字需要能够计算，而非文本类型', '北京华远', '303', null, '曹珂', '2014-03-12 11:10:17', '2014-03-12 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('602', '20140312-1338', '[工作流]增加不打印域', '广州合景', '303', null, '张胜富', '2014-03-12 11:01:04', '2014-03-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('603', '20140307-0791', '平台appgridtree导出无样式及css资源无法正常加载BUG修复', '商业地产202', '303', null, '袁作辉', '2014-03-07 13:02:45', '2014-03-12 00:00:00', null, null, '3', '', '产品', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('604', '20140313-1483', '[平台]方案应用-IE10兼容', '上海绿地', '257', null, '张巍', '2014-03-13 10:20:48', '2014-03-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('605', '20140310-0977', '[工作流]上传OFFICE做了加密报未装OFFICE', '南宁高新', '301', null, '程旭', '2014-03-10 11:28:05', '2014-03-12 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('606', '20140312-1409', '[工作流]移动审批无附件', '深圳花半里', '256', null, '颜邕', '2014-03-12 17:52:16', '2014-03-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('607', '20140313-1526', '认购书套打格式异常', '大连海昌', '303', null, '程旭', '2014-03-13 15:38:41', '2014-03-13 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('608', '20140313-1568', '同步客户文件', '北京方兴', '254', null, '郭凯', '2014-03-13 18:15:32', '2014-03-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('609', '20140314-1597', '[移动]103版本移动审批上线', '上海盛高', '256', null, '胡洁', '2014-03-14 10:28:05', '2014-03-13 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('610', '20140314-1605', '[平台]文档下载异常', '深圳龙光', '256', null, '颜邕', '2014-03-14 10:30:11', '2014-03-14 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('611', '20140313-1510', '计划系统打开一个项目的计划编制与调整一直加载中', '北京金泰', '303', null, '张明明', '2014-03-14 10:43:23', '2014-03-14 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('612', '20140313-1547', '[商业地产202产品开发][MAP]平台BUG(P3)', '商业地产', '303', null, '袁作辉', '2014-03-13 16:56:22', '2014-03-17 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('613', '20140313-1527', '[工作流]金融街工作流专项补充完善需求', '北京金融街', '257', null, '叶杨', '2014-03-13 15:35:15', '2014-03-14 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('614', '20140314-1635', '广州城建ERP站点内存溢出', '广州城建', '252', null, '张胜富', '2014-03-14 14:37:26', '2014-03-14 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('615', '20140314-1659', '事件订阅增加本地是否成功判断', '深圳佳兆业', '303', null, '涂一鸣', '2014-03-14 15:24:37', '2014-03-14 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('616', '20140314-1676', '[MAP]景瑞POM系统保存岗位报错', '上海景瑞', '25', null, '赵红伟', '2014-03-14 16:04:52', '2014-03-14 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('617', '20131210-0134', '客服里新增问题时页面报错', '上海瑞虹新城', '25', null, '赵红伟', '2014-02-23 15:59:24', '2014-02-18 00:00:00', null, null, '3', 'ITSM编号：\nEXEC s_reindex --重建整个ERP系统数据库中的表索引碎片\nEXEC sp_updatestats; --更新统计信息（需在s_reindex后面使用）', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('618', '20140314-1682', '[工作流]北京高和邮件推送工作流地址打开无权限', '北京高和', '301', null, '郭凯', '2014-03-14 16:17:35', '2014-03-17 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('619', '20140311-1158', '[北京万达][MAP]垂直管理功能调整补充功能', '北京万达', '255', null, '邹艳辉', '2014-03-11 11:07:48', '2014-03-12 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('620', '20140314-1715', '龙湖销售系统分页功能调整', '重庆龙湖', '25', null, '吴开峰', '2014-03-14 18:14:40', '2014-03-17 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('621', '20140317-1765', '[工作流]-流程标题生成需求', '南京万博', '303', null, '汪海疆', '2014-03-17 10:11:06', '2014-03-17 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('622', '20140312-1370', '[工作流]字段丢失，无法赋值', '青岛天一仁和', '303', null, '程旭', '2014-03-12 12:04:44', '2014-03-17 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('623', '20140317-1876', '[厦门海投][疑难杂症]网上备案疑难杂症单', '厦门海投', '25', null, '薛小虎', '2014-03-17 15:38:41', '2014-03-18 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('624', '20140317-1882', '[工作流]隐藏保存草稿、放开平方米', '广州合景', '303', null, '张胜富', '2014-03-17 15:53:30', '2014-03-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('625', '20140315-1739', '[工作流]明源工作流与第三方工作流对接咨询', '上海复地', '303', null, '杨正国', '2014-03-16 19:36:24', '2014-03-21 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('626', '20140317-1828', '[工作流][移动审批]移动审批无法批阅问题', '北京金融街', '303', null, '叶杨', '2014-03-17 11:48:45', '2014-03-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('627', '20140318-1964', '[工作流]前后插审批组织架构界面调整需求', '北京金融街', '303', null, '叶杨', '2014-03-18 09:05:24', '2014-03-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('628', '20140317-1940', '[平台]方案应用-IE10兼容', '成都置信', '252', null, '邓斌', '2014-03-17 23:12:06', '2014-03-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('629', '20140314-1697', '[工作流]鹏基南方工作流管理某流程审批完未能进入下一步骤', '深圳鹏基南方', '253', null, '刘玺', '2014-03-14 17:05:54', '2014-03-18 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('630', '20140317-1824', '[工作流]移动审批产品优化及反馈', '广州合景', '303', null, '胡洁', '2014-03-17 11:50:31', '2014-03-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('631', '20140318-1976', '[平台]方案应用-插件一键安装', '北京首开', '254', null, '朱林', '2014-03-18 09:58:07', '2014-03-18 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('632', '20140318-2022', '广州时代报表插件转换为MSI格式', '广州时代', '25', null, '张胜富', '2014-03-18 11:47:41', '2014-03-17 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('633', '20140318-2021', '[主动运维]龙湖内存溢出问题升级排查', '重庆龙湖', '25', null, '黄麟欢', '2014-03-18 11:48:49', '2014-03-19 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('634', '20140318-2013', '(BUG)鑫苑（多角色查询计划系统功能权限修复）', '重庆鑫苑', '303', null, '陈轶涛', '2014-03-18 11:32:45', '2014-03-18 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('635', '20140318-2004', '[工作流]修改业务域数据问题', '杭州中大', '301', null, '程旭', '2014-03-18 11:10:51', '2014-03-19 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('636', '20140314-1723', '[工作流]同一节点产生多条待办', '四川新希望', '302', null, '邓斌', '2014-03-14 19:42:08', '2014-03-17 00:00:00', null, null, '3', '已提交更新包,内含修复历史数据的sql样例.', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('637', '20140318-2133', '[平台]网上备案控件问题修复', '厦门海投', '25', null, '薛小虎', '2014-03-18 19:04:51', '2014-03-19 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('638', '20140319-2149', '【运维】雅居乐10系统提示数据库版本不对', '中山雅居乐', '10', null, '薛小虎', '2014-03-18 22:56:01', '2014-03-19 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('639', '20140306-0548', '[平台]方案应用-大文件上传', '厦门滕王阁', '303', null, '薛小虎', '2014-03-06 09:28:26', '2014-03-11 00:00:00', null, null, '3', '[工作流],[平台]审批附件批量上传和下载，平台部分由肖铎开发，开发前后与肖铎多沟通。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('640', '20140320-2401', '星河平台工作流上传附件图片优化需求', '深圳星河', '256', null, '涂一鸣', '2014-03-20 11:30:07', '2014-03-20 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('641', '20140319-2289', '平台appGridE控件导出功能调整', '北京华远', '303', null, '曹珂', '2014-03-19 17:06:51', '2014-03-21 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('642', '20140318-1983', '[工作流]广州保利移动审批可编辑表单专项-工作流修改', '广州保利', '25', null, '胡洁', '2014-03-18 10:00:53', '2014-03-19 00:00:00', null, null, '3', '本次需求开发这边提交更新包,但是无法直接测试，今天未联系上王晨旭请他协助测试,我会继续跟进.', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('643', '20140319-2228', '[工作流]N小时没处理则自动完成问题', '重庆康田置业', '253', null, '邓斌', '2014-03-19 16:04:44', '2014-03-19 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('644', '20140319-2326', '[工作流]工作流底层修改', '青岛银盛泰', '256', null, '', '2014-03-20 09:31:28', '2014-03-21 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('645', '20140318-2089', '[报表]屏幕报表打印报错', '上海大华', '251', null, '赵红伟', '2014-03-18 17:37:34', '2014-03-19 00:00:00', null, null, '3', '经过排查，原代码就已经实现了此功能，此处无需调整。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('646', '20140320-2439', '[平台]ERP10门户查看系统待办消息超时', '中山雅居乐', '10', null, '薛小虎', '2014-03-20 19:33:32', '2014-03-21 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('647', '20140318-1989', '[工作流]多人审批不全选及提示调整', '北京金融街', '258', null, '叶杨', '2014-03-18 10:18:39', '2014-03-20 00:00:00', null, null, '3', '可以开始处理，调整多人审批为默认不全选，将选择下一步责任人的提示调整为红色\n\n仅调整多人并行审批责任人不明确场景下的责任人名称默认全不选', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('648', '20140307-0905', '[工作流]修改记录规范', '重庆东原', '257', null, '邓斌', '2014-03-07 17:34:06', '2014-03-21 00:00:00', null, null, '3', '一线已经确认了，不做需求1.1了，只做需求2.1那个增加高级选择的部分。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('649', '20140321-2568', '平台修改-撤回IE兼容包中关于插件的部分', '广州时代', '25', null, '张胜富', '2014-03-21 11:52:37', '2014-03-21 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('650', '20140321-2546', '销售系统交互明细查询报错', '北京新世界', '252', null, '郭凯', '2014-03-21 10:13:36', '2014-03-21 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('651', '20140320-2511', '[上海大华][平台]费用系统集成后遗留Bug处理', '上海大华', '258', null, '赵红伟', '2014-03-21 14:24:41', '2014-03-21 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('652', '20140318-2074', '[工作流]合约规划特殊字符校验BUG', '深圳花样年', '253', null, '颜邕', '2014-03-18 16:01:10', '2014-03-24 00:00:00', null, null, '3', '开发1.5D,测试0.8D', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('653', '20140319-2271', '[工作流]表单增加重新归集历史页签', '北京鑫苑', '303', null, '罗洪涛', '2014-03-19 17:05:36', '2014-03-20 00:00:00', null, null, '3', '需26、27号完成。(待PM确认是否需开发)', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('654', '20140321-2612', '日志文件在成倍增长，导致内存溢出', '重庆东原', '257', null, '邓斌', '2014-03-21 15:49:21', '2014-03-21 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('655', '20140319-2286', '短信发送失败', '青岛星空', '303', null, '程旭', '2014-03-19 17:06:07', '2014-03-21 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('656', '20140320-2446', '[工作流]工作流完善需求（展开方式）', '北京金融街', '303', null, '叶杨', '2014-03-20 19:35:30', '2014-03-20 00:00:00', null, null, '3', '本需求由2人共同完成：\n雷启明：1D\n陈静：0.4D', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('657', '20140321-2535', '[工作流]系统待办事项bug', '成都宜佳信', '257', null, '邓斌', '2014-03-21 09:48:43', '2014-03-24 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('658', '20140321-2635', '[工作流]业务表单无法显示', '深圳佳兆业', '301', null, '涂一鸣', '2014-03-21 17:44:42', '2014-03-24 00:00:00', null, null, '3', 'PM确认为环境问题，此问题无需工作流团队排查。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('659', '20140324-2823', '[工作流]流程表单的附件位置错位', '深圳星河', '256', null, '涂一鸣', '2014-03-24 17:16:19', '2014-03-24 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('660', '20140319-2294', '附件防伪需求', '上海红星地产', '256', null, '张巍', '2014-03-20 09:29:31', '2014-03-19 00:00:00', null, null, '3', '由刘玮进行技术验证。可联系江威或者张永亮。', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('661', '20140324-2749', '【MAP平台】插件支持单独安装', '北京首开', '254', null, '邹艳辉', '2014-03-24 15:38:30', '2014-03-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('662', '20140322-2661', '部分电脑看不到目标成本信息', '重庆鑫苑', '303', null, '黄伟', '2014-03-23 17:10:27', '2014-03-24 00:00:00', null, null, '3', '问题升级后，一线同事已自行解决该问题，解决方案为卸载客户端杀毒软件。', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('663', '20140325-2877', '[工作流]北京方兴成本系统工作流BUG', '北京方兴', '254', null, '郭凯', '2014-03-25 10:24:03', '2014-03-25 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('664', '20140325-2953', '[工作流]ntko word插件自动安装', '北京首开', '254', null, '邹艳辉', '2014-03-25 14:32:48', '2014-03-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('665', '20140320-2455', '[工作流]费用系统审批记录优化', '重庆鑫苑', '303', null, '邵波', '2014-03-20 22:15:37', '2014-03-21 00:00:00', null, null, '3', '鑫苑累计出现几个bug, 与张圣一起做的,截止已经全部修复完, 等待项目通过.', '修复', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('666', '20140320-2459', '[工作流]费用系统流程解析BUG', '重庆鑫苑', '303', null, '邵波', '2014-03-20 22:17:13', '2014-03-21 00:00:00', null, null, '3', '鑫苑工作流累计出现多个bug, 与张圣一起修复完成, 等待项目测试通过.', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('667', '20140325-2963', '销售系统中划拨单中数据与实际金额不一致', '广州城建', '252', null, '张胜富', '2014-03-25 14:54:09', '2014-03-26 00:00:00', null, null, '3', '', '疑难', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('668', '20140326-3074', '[报表]DSS报表服务报错问题', '上海复地', '303', null, '张巍', '2014-03-26 10:27:17', '2014-03-27 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('669', '20140325-2922', '[工作流]移动审批104PC端支持需求', '移动审批', '303', null, '杨容', '2014-03-25 11:48:09', '2014-03-26 00:00:00', null, null, '3', '希望能在本周四之前提交需求1.1与需求1.2的ERP303支持版本', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('670', '20140326-3192', '[平台]项目系统超时问题', '北京纳帕', '301', null, '郭凯', '2014-03-26 17:42:20', '2014-03-26 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('671', '20140326-3163', '[工作流]新增流程模版报错', '江苏新城', '302', null, '杨正国', '2014-03-26 17:39:37', '2014-03-27 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('672', '20140326-3138', '[平台]方案应用-IE10兼容', '深圳华南城', '302', null, '颜邕', '2014-03-26 17:38:17', '2014-03-27 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('673', '20140325-3022', '碧桂园平台控件数字长度校验BUG', '中山碧桂园', '303', null, '张杰', '2014-03-25 17:14:22', '2014-03-26 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('674', '20140326-3088', '[工作流]成本系统合同审批用印归档时界面异常，无‘归档’按钮', '重庆龙湖', '253', null, '吴开峰', '2014-03-26 10:33:07', '2014-03-26 00:00:00', null, null, '3', '', '咨询', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('675', '20140326-3234', '[平台]Project2003在线编辑功能问题', '中山雅居乐', '10', null, '薛小虎', '2014-03-27 09:45:24', '2014-04-02 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('676', '20140324-2827', '[工作流]并行审批、移动审批电子签章功能修改', '西安雨润', '254', null, '汪海疆', '2014-03-24 17:28:18', '2014-03-24 00:00:00', null, null, '3', '处理需求2标签页，并行审批参考303的实现。', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('677', '20140325-3034', '(BUG)鑫苑（消息服务停止）', '重庆鑫苑', '254', null, '邵波', '2014-03-27 16:40:52', '2014-03-25 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('678', '20140326-3220', '[平台]广州保利撤销遮照包开发', '广州保利', '303', null, '张胜富', '2014-03-26 19:00:18', '2014-03-28 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('679', '20140328-3393', '佳兆业销售MAP修改需求', '深圳佳兆业', '25', null, '邢存岭', '2014-03-28 10:15:59', '2014-03-28 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('680', '20140327-3328', '[工作流]北京方兴工作流发起提示无流程模板', '北京方兴', '253', null, '郭凯', '2014-03-27 17:03:03', '2014-03-28 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('681', '20140226-2005', '[平台]AppGridE导出Excel调整', '重庆龙湖', '201', null, '王磊', '2014-03-28 09:44:25', '2014-03-28 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('682', '20140326-3212', '303升级到304的独立解决方案和更新包', '内部任务', '304', null, '柯晓露', '2014-03-26 18:11:32', '2014-03-31 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('683', '20140326-3092', '[工作流]广州保利Word内容丢失问题排查', '广州保利', '303', null, '张胜富', '2014-03-26 10:37:54', '2014-03-29 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('684', '20140328-3453', '[工作流]流转突然发现没有当前责任人', '北京金融街', '258', null, '叶杨', '2014-03-28 14:00:59', '2014-03-29 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('685', '20140326-3116', '[工作流]步骤名称自动同步', '重庆新鸥鹏', '253', null, '邓斌', '2014-03-26 17:20:23', '2014-03-29 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('686', '20140328-3395', '[工作流]广州中颐工作流电子签章的设置丢失疑难杂症升级', '广州中颐', '251', null, '张胜富', '2014-03-28 10:19:03', '2014-03-29 00:00:00', null, null, '3', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('687', '20140328-3385', '[工作流]金科费用系统流程丢失', '重庆金科', '253', null, '邵波', '2014-03-28 16:07:49', '2014-04-03 00:00:00', null, null, '1', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('688', '20140327-3326', '[工作流]鑫苑计划系统（待办最大化自适应显示）', '北京鑫苑', '303', null, '邵波', '2014-03-27 17:01:39', '2014-03-27 00:00:00', null, null, '3', '历史消息打开问题', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('689', '20140326-3165', '[工作流]新流程再次打开编号会自动加1', '北京金融街', '258', null, '叶杨', '2014-03-26 17:41:03', '2014-03-29 00:00:00', null, null, '3', '这是产品设计流水号不唯一的方案，只要打开新建流程，则流水号都会增加1，从而避免流水号重复的问题!所以此非问题。', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('690', '20140331-3557', '销售系统税费划拨疑难杂症升级', '广州城建', '252', null, '张胜富', '2014-03-31 11:12:56', '2014-03-31 00:00:00', null, null, '1', '', '咨询', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('691', '20140327-3350', '[工作流](北京鑫苑)特殊岗位流程监控', '北京鑫苑', '303', null, '邵波', '2014-03-27 19:54:03', '2014-03-31 00:00:00', null, null, '3', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('692', '20140331-3652', '销售系统交易变更BUG疑难杂症升级', '广州奥园', '25', null, '胡星火', '2014-03-31 15:55:08', '2014-03-31 00:00:00', null, null, '1', '', '咨询', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('693', '20140331-3645', '[平台]工作流附件特殊字符问题', '深圳卓越', '252', null, '刘玺', '2014-03-31 15:53:44', '2014-04-01 00:00:00', null, null, '1', '', 'BUG', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tasks` VALUES ('694', '20140331-3600', '[平台]单点登录开发', '港中旅', '256', null, '颜邕', '2014-03-31 11:18:06', '2014-04-03 00:00:00', null, null, '1', '', '需求', '', '0', '0', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tasks_workload
-- ----------------------------
DROP TABLE IF EXISTS `tasks_workload`;
CREATE TABLE `tasks_workload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` double(8,2) NOT NULL,
  `task_id` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasks_workload
-- ----------------------------

-- ----------------------------
-- Table structure for task_version
-- ----------------------------
DROP TABLE IF EXISTS `task_version`;
CREATE TABLE `task_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SycnUser` varchar(255) NOT NULL,
  `GetSqlDBTime` datetime NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_version
-- ----------------------------

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(40) DEFAULT NULL,
  `task_no` varchar(20) DEFAULT NULL,
  `task_title` varchar(200) DEFAULT NULL,
  `customer_name` varchar(40) DEFAULT NULL,
  `abu_pm` varchar(40) DEFAULT NULL,
  `task_status` tinyint(4) DEFAULT NULL,
  `is_sla` tinyint(1) DEFAULT NULL,
  `workflow_version` varchar(10) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `task_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_task
-- ----------------------------
INSERT INTO `tb_task` VALUES ('694', '186d79ad-48db-4848-a76b-88be9174a107', '20160201-0049', '【佛山美的】工作流BUG修复', '佛山美的', '薛小虎', '2', '0', '303', null, '需求', null, '', null);

-- ----------------------------
-- Table structure for tb_workload
-- ----------------------------
DROP TABLE IF EXISTS `tb_workload`;
CREATE TABLE `tb_workload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `task_no` varchar(20) DEFAULT NULL,
  `task_type` varchar(20) DEFAULT NULL,
  `task_time` double DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_workload
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'wonder4', 'wonder4', null, 'hbsnjzsd@163.com', null, 'qrbJ6VBeBUoparcFPhcU640M7lXBGysVsH0JUVFm3u3pm00yPk1Nm8Ca8Yn7', '2016-02-25 07:58:14', '2016-02-25 09:29:32', '$2y$10$ZpIUo/k6QAQtaQp058s4vuXUF6980NhsCjEnUuquwPPGdRvndHSlS', null);
INSERT INTO `users` VALUES ('2', null, 'snjatf', null, 'hbsnjzsd@126.com', null, 'gKazp8Jx7skImWb7Id62uDeCxR9A8c81fBCG7xj9cmVXa0s2twCCOb37KW3X', '2016-02-25 09:36:54', '2016-02-25 09:38:31', '$2y$10$OdrwHfXePk1mj0OsSCYQa.pg.0uPe9EzFEE/obySjCuF2u2gWee4K', null);
INSERT INTO `users` VALUES ('5', null, 'werw', null, 'qerq@12.com', null, 'Ee5d3nukHFdmPXrCT1s2LxNfyTpWLhD2uG1ThsKExhSST2yzyjFUkwrvog82', '2016-02-25 09:41:08', '2016-02-25 10:25:58', '$2y$10$k85ZoKLWnUy2Yx1owb4h7uiwwNocnI/oi80JeY.w3DqLMPNBdOMDq', '开发');

-- ----------------------------
-- Table structure for versions
-- ----------------------------
DROP TABLE IF EXISTS `versions`;
CREATE TABLE `versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `workflow_version` varchar(255) DEFAULT NULL,
  `erp_version` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of versions
-- ----------------------------
INSERT INTO `versions` VALUES ('1', '3.0.3.30531', 'ERP2.5.1', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('2', '3.0.4.30930', 'ERP2.5.2', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('3', '3.0.4.40205', 'ERP2.5.2 SP3', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('4', '3.0.5.40326', 'ERP2.5.3', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('5', '3.0.5.51230', 'ERP2.5.3SP-安全扫雷', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('6', '3.0.6.40730', 'ERP2.5.4', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('7', '3.0.7.41027', 'ERP2.5.5', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('8', '3.0.8.50415', 'ERP2.5.6', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('9', '3.0.8.50415', 'ERP2.5.6SP1', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('10', '3.0.8.51103', 'ERP2.5.6SP2', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('11', '3.0.9.60106', 'ERP2.5.7', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('12', '3.0.9.60106', 'ERP2.5.7SP1', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('13', '3.0.9.61101', 'ERP2.5.7SP-移动审批', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('14', '3.0.10.60831', 'ERP2.5.8', null, '2016-02-25 08:45:56', '2016-02-25 08:45:56');
INSERT INTO `versions` VALUES ('15', '3.5.1.10430', 'ERP3.0.1', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('16', '3.5.1.10824', 'ERP3.0.1SP1', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('17', '3.5.2.11130', 'ERP3.0.2', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('18', '3.5.2.20310', 'ERP3.0.2SP-商业地产', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('19', '3.5.3.20630', 'ERP3.0.3', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('20', '3.5.3.20813', 'ERP3.0.3SP', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('21', '3.5.4.30415', 'ERP3.0.4', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('22', '3.5.5.30704', 'ERP3.0.5', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('23', '3.5.5.30811', 'ERP3.0.5SP1', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('24', '3.5.5.31114', 'ERP3.0.5SP2', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('25', '3.5.5.40127', 'ERP3.0.5SP3', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('26', '3.5.6.30930', 'ERP3.0.5SP-步步高', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('27', '3.5.6.40213', 'ERP3.0.6', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('28', '3.5.7.40630', 'ERP3.0.7', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('29', '3.5.7.40630', 'ERP3.0.7SP1', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('30', '3.5.8.40830', 'ERP3.0.7SP2', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('31', '3.5.8.40930', 'ERP3.0.7SP3', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('32', '3.5.8.40930', 'ERP3.0.7SP4', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('33', '2.0.11228.0', 'ERP25_1128', null, '2016-02-25 08:45:57', '2016-02-25 08:45:57');
INSERT INTO `versions` VALUES ('34', '2.0.11115.0', 'ERP25_1115', null, '2016-02-25 08:45:58', '2016-02-25 08:45:58');
INSERT INTO `versions` VALUES ('35', '2.0.20623.0', 'ERP25_0623', null, '2016-02-25 08:45:58', '2016-02-25 08:45:58');
