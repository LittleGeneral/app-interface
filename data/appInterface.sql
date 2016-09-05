/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-08-26 09:26:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(10) DEFAULT NULL COMMENT 'APP类型名称  如 ： 安卓手机',
  `is_encryption` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否加密 1加密 0不加密',
  `key` varchar(20) NOT NULL DEFAULT '0' COMMENT '加密key',
  `image_size` text COMMENT '按json_encode存储',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1正常 0删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1', 'owifi', '0', '0', null, '1470797635', '0', '1');

-- ----------------------------
-- Table structure for error_log
-- ----------------------------
DROP TABLE IF EXISTS `error_log`;
CREATE TABLE `error_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `app_id` int(11) DEFAULT NULL COMMENT '应用id',
  `did` int(11) DEFAULT NULL,
  `version_id` int(11) DEFAULT NULL COMMENT '版本号',
  `version_mini` int(11) DEFAULT NULL COMMENT '小版本号',
  `error_log` varchar(255) DEFAULT NULL COMMENT '错误信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='错误信息表';

-- ----------------------------
-- Records of error_log
-- ----------------------------
INSERT INTO `error_log` VALUES ('1', '1', '1', '1', '1470835045', 'asdffasdfasd');
INSERT INTO `error_log` VALUES ('2', '1', '1', '1', '1470835245', 'asdfsdffsfsddsadfas');

-- ----------------------------
-- Table structure for version_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `version_upgrade`;
CREATE TABLE `version_upgrade` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` smallint(4) unsigned NOT NULL DEFAULT '0' COMMENT '客户端设备id 1安卓pad 2安卓手机 3ios手机 4iospad',
  `version_id` smallint(4) unsigned DEFAULT '0' COMMENT '大版本号id',
  `version_mini` mediumint(8) unsigned DEFAULT '0' COMMENT '小版本号',
  `version_code` varchar(10) DEFAULT NULL COMMENT '版本标识 1.2',
  `type` tinyint(2) unsigned DEFAULT NULL COMMENT '是否升级  1升级，0不升级，2强制升级',
  `apk_url` varchar(255) DEFAULT NULL,
  `upgrade_point` varchar(255) DEFAULT NULL COMMENT '升级提示',
  `status` tinyint(2) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of version_upgrade
-- ----------------------------
INSERT INTO `version_upgrade` VALUES ('1', '0', '0', '0', null, null, null, null, '1', null, null);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `name` varchar(64) DEFAULT NULL COMMENT '产品名称',
  `description` varchar(255) DEFAULT NULL COMMENT '产品描述',
  `thumb` varchar(64) DEFAULT NULL COMMENT '网站地址',
  `discount` varchar(20) DEFAULT NULL COMMENT '产品折扣',
  `source` varchar(32) DEFAULT NULL COMMENT '产品来源',
  `tag` char(16) DEFAULT NULL COMMENT '产品标签',
  `create_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `recommend` varchar(200) DEFAULT NULL COMMENT '产品推荐',
  `img` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `orderby` tinyint(4) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '0', 'owifi', '全新OWIFI智能办公设备，超强无线WIFI+考勤机+办公系统3合1，告别传统企业仍需独立购买路由、考勤机、办公OA系统，实现办公OA系统+考勤机+路由，真正实现软件+硬件开发。做到其他软件做不到的功能，多种功能结合让企业管理更强大。', 'www.owifi.com', '0.1', '淘宝', '智能硬件1', '1470797635', '1470797635', '全新OWIFI智能办公设备1', 'https://usepanda.com/img/source-icons/svg/github.svg', '0', '1');
INSERT INTO `video` VALUES ('2', '1', 'bowifi', '全新OWIFI智能办公设备，超强无线WIFI+考勤机+办公系统3合1，告别传统企业仍需独立购买路由、考勤机、办公OA系统，实现办公OA系统+考勤机+路由，真正实现软件+硬件开发。做到其他软件做不到的功能，多种功能结合让企业管理更强大。', 'www.owifi.com', '0.11', '天猫1', '智能硬件2', '1470797623', '1470797626', '\r\n全新OWIFI智能办公设备2', 'https://usepanda.com/img/source-icons/svg/github.svg', '1', '2');
INSERT INTO `video` VALUES ('41', null, '23423', 'asdfasdf', null, null, null, null, null, null, null, './uploads/20160826032531.png', '0', null);
