/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : sender_electronic_db

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-11-22 20:14:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category_brand`
-- ----------------------------
DROP TABLE IF EXISTS `category_brand`;
CREATE TABLE `category_brand` (
  `id` int(12) NOT NULL auto_increment,
  `cid` varchar(100) NOT NULL default '',
  `bid` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_brand
-- ----------------------------
INSERT INTO `category_brand` VALUES ('1', '', '4');
INSERT INTO `category_brand` VALUES ('2', '', '7');
INSERT INTO `category_brand` VALUES ('3', '18', '4');
INSERT INTO `category_brand` VALUES ('4', '18', '7');
INSERT INTO `category_brand` VALUES ('5', '44', '5');
INSERT INTO `category_brand` VALUES ('6', '44', '9');
INSERT INTO `category_brand` VALUES ('7', '8', '45');
INSERT INTO `category_brand` VALUES ('8', '9', '45');
INSERT INTO `category_brand` VALUES ('9', '10', '45');
INSERT INTO `category_brand` VALUES ('10', '11', '45');
INSERT INTO `category_brand` VALUES ('22', '9', '46');
INSERT INTO `category_brand` VALUES ('12', '2', '');
INSERT INTO `category_brand` VALUES ('13', '3', '');
INSERT INTO `category_brand` VALUES ('14', '10', '');
INSERT INTO `category_brand` VALUES ('15', '3', '');
INSERT INTO `category_brand` VALUES ('16', '3', '');
INSERT INTO `category_brand` VALUES ('17', '3', '');
INSERT INTO `category_brand` VALUES ('21', '5', '46');
INSERT INTO `category_brand` VALUES ('23', '11', '46');
INSERT INTO `category_brand` VALUES ('25', '9', '47');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(20) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `contype` varchar(30) NOT NULL default 'comment',
  `content` varchar(1000) default NULL,
  `uptime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '3', 'comment', 'asdfsfd', '0');

-- ----------------------------
-- Table structure for `img_resource`
-- ----------------------------
DROP TABLE IF EXISTS `img_resource`;
CREATE TABLE `img_resource` (
  `id` int(20) NOT NULL auto_increment,
  `goodsid` int(20) NOT NULL default '0',
  `imgsrc` varchar(150) NOT NULL default '',
  `imgtype` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of img_resource
-- ----------------------------
INSERT INTO `img_resource` VALUES ('124', '0', '/admin/upload/1380328906.jpg', '1');
INSERT INTO `img_resource` VALUES ('125', '0', '/admin/upload/1380328932.jpg', '1');
INSERT INTO `img_resource` VALUES ('127', '0', '/admin/upload/1380328937.jpg', '1');
INSERT INTO `img_resource` VALUES ('128', '0', '/admin/upload/1380328941.jpg', '1');
INSERT INTO `img_resource` VALUES ('122', '0', '/admin/upload/1380328888.jpg', '1');
INSERT INTO `img_resource` VALUES ('133', '308', '/admin/upload/13803523801.jpg', '0');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `memberid` int(12) NOT NULL auto_increment,
  `mobilenum` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `pushtoken` varchar(50) default '',
  `name` varchar(255) default '',
  `work` varchar(100) default NULL,
  `sex` varchar(20) default '0' COMMENT '0是男 1是女',
  `birthday` varchar(50) default '0',
  `addr` varchar(255) default '',
  `email` varchar(255) default '',
  `passcode` varchar(255) default '',
  `qq` varchar(100) default '',
  `invitecode` varchar(40) default '',
  `points` int(10) default '0',
  `checked` int(1) default '0',
  `logined` int(1) default '0',
  `regtime` int(11) default '0',
  `llogintime` varchar(20) default NULL,
  `shopviewnum` int(10) default NULL,
  PRIMARY KEY  (`memberid`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('25', '33x', '202cb962ac59075b964b07152d234b70', '', '33', 'workx', '0', '333333', '33x', '3x', 'px', '3x', '1380117629', '8000', '1', '1', '0', '2013-09-25', null);
INSERT INTO `member` VALUES ('27', '13e', '202cb962ac59075b964b07152d234b70', '', '', null, '1', '0', '', '', '', '', '1380117689', '45', '0', '1', '0', '2013-09-28', '0');
INSERT INTO `member` VALUES ('28', '132e', '202cb962ac59075b964b07152d234b70', '', '', null, '1', '0', '', '', '', '', '1380117696', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('29', '13333666', '202cb962ac59075b964b07152d234b70', '', '', null, '1', '0', '', '', '', '', '1380118094', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('30', '133336667', '202cb962ac59075b964b07152d234b70', '', '', null, '1', '0', '', '', '', '', '13801181227', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('31', '13333336667', '202cb962ac59075b964b07152d234b70', '', '', null, '1', '0', '', '', '', '', '13801181996667', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('32', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('33', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('34', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('35', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('36', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('37', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('38', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('39', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('40', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('41', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('42', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('43', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('44', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('45', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('46', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('47', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('48', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('49', '13402839649', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('50', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);
INSERT INTO `member` VALUES ('51', '23', '', '', '', null, '0', '0', '', '', '', '', '', '0', '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for `points_log`
-- ----------------------------
DROP TABLE IF EXISTS `points_log`;
CREATE TABLE `points_log` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `event` int(5) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `point` int(10) NOT NULL default '0',
  `memo` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of points_log
-- ----------------------------

-- ----------------------------
-- Table structure for `points_rule`
-- ----------------------------
DROP TABLE IF EXISTS `points_rule`;
CREATE TABLE `points_rule` (
  `id` int(8) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `event` int(5) NOT NULL default '0',
  `point` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of points_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `point_goods`
-- ----------------------------
DROP TABLE IF EXISTS `point_goods`;
CREATE TABLE `point_goods` (
  `id` int(12) NOT NULL auto_increment,
  `bn` varchar(30) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `imgsrc` varchar(150) NOT NULL default '',
  `pointvalue` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of point_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `push_rule`
-- ----------------------------
DROP TABLE IF EXISTS `push_rule`;
CREATE TABLE `push_rule` (
  `id` int(12) NOT NULL auto_increment,
  `pushtime` int(11) NOT NULL default '0',
  `body` text,
  `ispush` int(4) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of push_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_brand`
-- ----------------------------
DROP TABLE IF EXISTS `shop_brand`;
CREATE TABLE `shop_brand` (
  `bid` int(12) NOT NULL auto_increment,
  `brand` varchar(100) NOT NULL default '',
  `logo` varchar(100) NOT NULL default '',
  `intro` text,
  `intro_original` text,
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_brand
-- ----------------------------
INSERT INTO `shop_brand` VALUES ('1', 'root', '', null, null);
INSERT INTO `shop_brand` VALUES ('2', '海尔', '', null, null);
INSERT INTO `shop_brand` VALUES ('3', '美的', '', null, null);
INSERT INTO `shop_brand` VALUES ('4', 'TCL', '/admin/upload/1378735030.jpg', '<p>我是品牌介绍</p>', null);
INSERT INTO `shop_brand` VALUES ('5', 'LG', '', '<p>斯蒂芬</p>', null);
INSERT INTO `shop_brand` VALUES ('44', 'aa', '', '', null);
INSERT INTO `shop_brand` VALUES ('45', '统帅', '/admin/upload/1380297741.jpg', '<p>品牌<br/></p>', null);
INSERT INTO `shop_brand` VALUES ('46', '放点苏打粉1x234', '', '<p><span style=\\\"color: rgb(255, 0, 0);\\\">2x</span></p>', null);
INSERT INTO `shop_brand` VALUES ('47', '新品牌1122', '/admin/upload/1385036948.jpg', '<p><span style=\\\"font-size: 24px; color: rgb(255, 0, 0);\\\">介绍112266</span></p>', '<p><span style=\"font-size: 24px; color: rgb(255, 0, 0);\">介绍112266</span></p>');

-- ----------------------------
-- Table structure for `shop_category`
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category` (
  `cid` int(12) NOT NULL auto_increment,
  `cat` varchar(100) NOT NULL default '',
  `pid` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES ('1', 'root', '');
INSERT INTO `shop_category` VALUES ('2', '平板电视', '1');
INSERT INTO `shop_category` VALUES ('3', '平板电视网络连接', '2');
INSERT INTO `shop_category` VALUES ('8', '空调1', '1');
INSERT INTO `shop_category` VALUES ('5', '3D电视', '2');
INSERT INTO `shop_category` VALUES ('6', '变频空调', '4');
INSERT INTO `shop_category` VALUES ('9', '变频空调', '8');
INSERT INTO `shop_category` VALUES ('10', '冷暖空调', '9');
INSERT INTO `shop_category` VALUES ('11', '定频空调2', '8');

-- ----------------------------
-- Table structure for `shop_goods`
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods`;
CREATE TABLE `shop_goods` (
  `id` int(12) NOT NULL auto_increment,
  `saleid` int(12) NOT NULL default '0',
  `cid` varchar(100) NOT NULL default '',
  `catpath` varchar(255) NOT NULL default '',
  `bid` varchar(100) NOT NULL default '',
  `bn` varchar(30) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `specify` varchar(100) NOT NULL default '',
  `level` varchar(100) NOT NULL default '',
  `factory` varchar(100) NOT NULL default '',
  `madein` varchar(100) NOT NULL default '',
  `body` text,
  `canshu` text,
  `originalPrice` decimal(10,2) default '0.00',
  `currentPrice` decimal(10,2) default '0.00',
  `unit` varchar(20) NOT NULL default '',
  `ishot` int(1) NOT NULL default '0',
  `isnew` int(1) NOT NULL default '0',
  `imgsrc` varchar(150) NOT NULL default '',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) NOT NULL default '',
  `memo` text NOT NULL,
  `comment` varchar(100) NOT NULL default '',
  `prop1` text NOT NULL,
  `prop2` varchar(255) NOT NULL default '',
  `prop3` varchar(255) NOT NULL default '',
  `prop4` varchar(255) NOT NULL default '',
  `prop5` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_goods
-- ----------------------------
INSERT INTO `shop_goods` VALUES ('361', '-1', '', '', '-1', '', '24', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('363', '-1', '', '', '-1', '', 'DF', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br style=\\\"text-align: left;\\\"/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><ol class=\\\" list-paddingleft-2\\\" style=\\\"list-style-type: decimal;\\\"><li><p style=\\\"margin-top: 0px;\\\">&nbsp;AFDSFASDFSADFSDF &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\\\"border: 1px solid rgb(0, 0, 0);\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SDFSDF</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></li></ol></td></tr></tbody></table><style>body%25257Bpadding%25253A0px%25253Bmargin%25253A0px%25253B%25257D</style><style>body%7Bpadding%3A0px%3Bmargin%3A0px%3B%7D</style><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('340', '-1', '', '', '-1', '', '阿斯蒂芬', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px; color: rgb(255, 0, 0);\\\">主体参数</span><span style=\\\"font-size: 14px;\\\"><br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body%7Bpadding%3A0px%3Bmargin%3A0px%3B%7D</style><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('341', '-1', '', '', '-1', '', '34', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('342', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('343', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('344', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('345', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('346', '-1', '', '', '-1', '', '34', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('347', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('348', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('349', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('350', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('351', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('352', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('353', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('354', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('355', '-1', '', '', '-1', '', '24', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('356', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('357', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('358', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('359', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `shop_goods` VALUES ('360', '-1', '', '', '-1', '', '234', '', '', '', '', '', '<table cellspacing=\\\"0\\\" border=\\\"1\\\" bordercolor=\\\"#7f7f7f\\\" cellpadding=\\\"0\\\" style=\\\"maring-top:-20px;\\\"><tbody><tr><td width=\\\"554\\\" valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"1\\\" align=\\\"center\\\" style=\\\"word-break: break-all; background-color: rgb(219, 229, 241);\\\" height=\\\"32\\\"><span style=\\\"font-size: 14px;\\\">主体参数<br/></span></td></tr><tr><td width=\\\"554\\\" valign=\\\"middle\\\" align=\\\"left\\\" style=\\\"word-break: break-all; background-color: rgb(237, 245, 250);\\\" height=\\\"38\\\"><span style=\\\"font-size: 14px;\\\">&nbsp;</span></td></tr></tbody></table><style>body{padding:0px;margin:0px;}</style>', '0.00', '0.00', '', '0', '0', '', '0', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `shop_info`
-- ----------------------------
DROP TABLE IF EXISTS `shop_info`;
CREATE TABLE `shop_info` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `sendservicinfo` text,
  `fixservicinfo` text,
  `pointinfo` text,
  `address` varchar(150) NOT NULL default '',
  `installphone` varchar(20) default NULL,
  `servicephone` varchar(20) default NULL,
  `longitude` varchar(32) NOT NULL default '',
  `latitude` varchar(32) NOT NULL default '',
  `gLongitude` varchar(32) NOT NULL default '',
  `gLatitude` varchar(32) NOT NULL default '',
  `img` varchar(200) default NULL,
  `sendservicinfo_original` text,
  `fixservicinfo_original` text,
  `pointinfo_original` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_info
-- ----------------------------
INSERT INTO `shop_info` VALUES ('4', '阿萨德发烧发到', '', '', '', '', '', '', '', '', '', '', '/admin/upload/1380034352.jpg', null, null, null);
INSERT INTO `shop_info` VALUES ('3', '卖场', '<p>阿斯蒂芬</p>', '<p>阿斯蒂芬</p>', '<p>撒旦法</p>', '成都', '123', '321', '11', '22', '33', '44', '/admin/upload/1380033492.jpg', null, null, null);
INSERT INTO `shop_info` VALUES ('5', 'sadfsdfxxx', '<p>x</p>', '<p>x</p>', '<p>x</p>', 'x', 'asdfxx', 'x', 'x', 'x', 'x', 'x', '', null, null, null);
INSERT INTO `shop_info` VALUES ('6', '新卖场', '<p><span style=\\\"font-size: 24px; color: rgb(255, 0, 0);\\\">苏打粉123</span></p>', '<p><span style=\\\"color: rgb(255, 0, 0); font-size: 24px;\\\">苏打粉223</span></p>', '<p><span style=\\\"color: rgb(255, 0, 0); font-size: 24px;\\\">苏打粉323</span></p>', '', '', '', '', '', '', '', '', '<p><span style=\"font-size: 24px; color: rgb(255, 0, 0);\">苏打粉123</span></p>', '<p><span style=\"color: rgb(255, 0, 0); font-size: 24px;\">苏打粉223</span></p>', '<p><span style=\"color: rgb(255, 0, 0); font-size: 24px;\">苏打粉323</span></p>');
INSERT INTO `shop_info` VALUES ('7', '新卖场22', '<p><span style=\\\"font-size: 24px; color: rgb(146, 208, 80);\\\">234234</span></p>', '<p><span style=\\\"color: rgb(146, 208, 80); font-size: 24px;\\\">234234<span style=\\\"color: rgb(146, 208, 80); font-size: 24px;\\\">234234</span></span></p>', '<p><span style=\\\"color: rgb(146, 208, 80); font-size: 24px;\\\">234234<span style=\\\"color: rgb(146, 208, 80); font-size: 24px;\\\">234234<span style=\\\"color: rgb(146, 208, 80); font-size: 24px;\\\">234234</span></span></span></p>', '', '', '', '', '', '', '', '', '<p><span style=\"font-size: 24px; color: rgb(146, 208, 80);\">234234</span></p>', '<p><span style=\"color: rgb(146, 208, 80); font-size: 24px;\">234234<span style=\"color: rgb(146, 208, 80); font-size: 24px;\">234234</span></span></p>', '<p><span style=\"color: rgb(146, 208, 80); font-size: 24px;\">234234<span style=\"color: rgb(146, 208, 80); font-size: 24px;\">234234<span style=\"color: rgb(146, 208, 80); font-size: 24px;\">234234</span></span></span></p>');
INSERT INTO `shop_info` VALUES ('8', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('9', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('10', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('11', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('12', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('13', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('14', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('15', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('16', 'sdf ', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('17', 'sdf ', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('18', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('19', 'dsf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('20', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('21', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('22', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('23', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('24', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `shop_info` VALUES ('25', 'sdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `shop_sales`
-- ----------------------------
DROP TABLE IF EXISTS `shop_sales`;
CREATE TABLE `shop_sales` (
  `id` int(12) NOT NULL auto_increment,
  `title` varchar(150) NOT NULL default '',
  `logo` varchar(100) NOT NULL default '',
  `poster` varchar(100) NOT NULL default '',
  `intro` text,
  `share_content` text,
  `share_content_original` text,
  `intro_original` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_sales
-- ----------------------------
INSERT INTO `shop_sales` VALUES ('23', '新活动34', '/admin/upload/13850363601.jpg', '/admin/upload/1385036360.jpg', '<p><span style=\\\"font-size: 24px; color: rgb(255, 0, 0);\\\">活动34按到<span style=\\\"font-size: 24px; color: rgb(0, 176, 80);\\\"></span></span><span style=\\\"font-size: 24px; color: rgb(0, 176, 80);\\\">斯蒂芬</span></p>', '<p><span style=\\\"font-size: 14px; color: rgb(255, 192, 0);\\\">分享内容34斯蒂芬斯蒂芬</span></p>', '<p><span style=\"font-size: 14px; color: rgb(255, 192, 0);\">分享内容34斯蒂芬斯蒂芬</span></p>', '<p><span style=\"font-size: 24px; color: rgb(255, 0, 0);\">活动34按到<span style=\"font-size: 24px; color: rgb(0, 176, 80);\"></span></span><span style=\"font-size: 24px; color: rgb(0, 176, 80);\">斯蒂芬</span></p>');
INSERT INTO `shop_sales` VALUES ('25', '暗室逢灯', '', '', '<p>撒旦<span style=\\\"color: rgb(0, 112, 192);\\\">法</span></p>', '', '', '<p>撒旦<span style=\"color: rgb(0, 112, 192);\">法</span></p>');
INSERT INTO `shop_sales` VALUES ('26', 'sdf', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('27', 'sdf', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('28', 'sdf', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('29', 'd', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('30', 'd', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('31', 'd', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('32', 'd', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('33', 'd', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('34', 'd', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('35', 'd', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('36', 'sdf', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('37', '3', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('38', '3', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('39', '3', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('40', '3', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('41', '3', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('42', '3', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('43', '3', '', '', '', '', '', '');
INSERT INTO `shop_sales` VALUES ('44', '3', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(50) NOT NULL default '' COMMENT '登录帐号',
  `password` varchar(100) NOT NULL default '' COMMENT '密码',
  `name` varchar(50) default NULL,
  `phone` varchar(20) default NULL,
  `qq` varchar(20) default NULL,
  `note` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login_u` USING BTREE (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('22', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', null, null, null);

-- ----------------------------
-- Table structure for `weibo`
-- ----------------------------
DROP TABLE IF EXISTS `weibo`;
CREATE TABLE `weibo` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `appkey` varchar(50) NOT NULL default '',
  `appsecret` varchar(50) NOT NULL default '',
  `redirecturl` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weibo
-- ----------------------------
INSERT INTO `weibo` VALUES ('3', '阿斯蒂芬', '', '', '');

-- ----------------------------
-- Function structure for `CC`
-- ----------------------------
DROP FUNCTION IF EXISTS `CC`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CC`() RETURNS int(11)
BEGIN
	#Routine body goes here...


	RETURN 333;
END
;;
DELIMITER ;
