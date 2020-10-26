/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : bysj

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2017-05-10 18:10:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for allusers
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('6', 'admin', 'admin', '超级管理员', '2017-04-20 11:00:24');
INSERT INTO `allusers` VALUES ('5', 'admin1', 'admin', '普通管理员', '2017-04-20 10:54:48');

-- ----------------------------
-- Table structure for biyesheng
-- ----------------------------
DROP TABLE IF EXISTS `biyesheng`;
CREATE TABLE `biyesheng` (
  `ID` int(11) DEFAULT NULL,
  `xuehao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `minzu` varchar(50) DEFAULT NULL,
  `chushengnianyue` varchar(50) DEFAULT NULL,
  `jiatingzhuzhi` varchar(50) DEFAULT NULL,
  `ruxiaoshijian` varchar(50) DEFAULT NULL,
  `xibu` varchar(50) DEFAULT NULL,
  `techang` varchar(50) DEFAULT NULL,
  `zhuanye` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `jianli` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `zhaopian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of biyesheng
-- ----------------------------
INSERT INTO `biyesheng` VALUES ('15', '张', '张', '男', '汉', '2017-01-01', 'll', '2016-09-01', '计算机系', '无', '软件工程', 'zrm', 'qqqqqqqqqq', '2017-05-10 18:05:21', 'file/nhppclogo.gif');
INSERT INTO `biyesheng` VALUES ('22', 'a', 'a', '男', 'a', '2017-12-12', 'a', '2016-12-18', '计算机系', '', '', '', '', '2017-05-10 18:05:23', '');
INSERT INTO `biyesheng` VALUES ('23', 'z', 'z', '男', 'z', '2017-12-12', 'z', '2016-12-18', 'z', 'z', 'z', 'z', 'z', '2017-05-10 18:05:31', '');

-- ----------------------------
-- Table structure for gangwei
-- ----------------------------
DROP TABLE IF EXISTS `gangwei`;
CREATE TABLE `gangwei` (
  `ID` int(11) DEFAULT NULL,
  `gongsi` varchar(50) DEFAULT NULL,
  `gangweimingcheng` varchar(50) DEFAULT NULL,
  `zhaopinrenshu` varchar(50) DEFAULT NULL,
  `xingbieyaoqiu` varchar(50) DEFAULT NULL,
  `yuexin` varchar(50) DEFAULT NULL,
  `jianjie` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of gangwei
-- ----------------------------
INSERT INTO `gangwei` VALUES ('9', '百度', '程序员', '100', '不限', '10000', '重视技术', '2017-04-20 09:02:49');
INSERT INTO `gangwei` VALUES ('10', '百度', '项目经理', '2', '男', '20000', '	\r\n性别要求：	\r\n月薪：百度', '2017-04-20 09:03:18');
INSERT INTO `gangwei` VALUES ('12', '百度', '技术部部长', '1', '不限', '20001', '技术部部长技术部部长', '2017-03-20 09:04:27');
INSERT INTO `gangwei` VALUES ('13', '百度', '技术总监', '1', '不限', '20000', '无', '2017-03-02 13:18:39');
INSERT INTO `gangwei` VALUES ('11', '百度', '清洁工', '50', '不限', '5000', '百度清洁工', '2017-03-20 09:03:49');

-- ----------------------------
-- Table structure for gongsi
-- ----------------------------
DROP TABLE IF EXISTS `gongsi`;
CREATE TABLE `gongsi` (
  `ID` int(11) DEFAULT NULL,
  `yonghuming` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `gongsimingcheng` varchar(50) DEFAULT NULL,
  `zhucezijin` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `dizhi` varchar(50) DEFAULT NULL,
  `guimo` varchar(50) DEFAULT NULL,
  `xingye` varchar(50) DEFAULT NULL,
  `jianjie` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of gongsi
-- ----------------------------
INSERT INTO `gongsi` VALUES ('5', 'baidu', 'baidu', '百度', '1000万', '0451-1000000', '中国q', '2000以上', '电子信息', '百度百度百度百度1', '2017-05-10 18:03:10');
INSERT INTO `gongsi` VALUES ('6', '奇虎', '奇虎', '奇虎', '2000万', '0451-1000001', '北京', '1000以上', '杀毒', '奇虎奇虎', '2017-03-20 10:46:46');
INSERT INTO `gongsi` VALUES ('7', '亿信华辰', '亿信华辰', '亿信华辰', '100万', '0451-1000002', '北京', '2000以上', '电子信息', '亿信华辰亿信华辰', '2017-03-20 10:47:39');
INSERT INTO `gongsi` VALUES ('8', '康拓普', '康拓普', '康拓普', '100万', '0451-1000003', '深圳', '1000以上', '电子信息', '康拓普康拓普康拓普', '2017-03-20 10:48:36');
INSERT INTO `gongsi` VALUES ('9', '谷歌', '谷歌', '谷歌', '1000万', '0451-1000004', '中国', '1000以上', '电子信息', '谷歌谷歌谷歌谷歌', '2017-03-20 10:49:21');
INSERT INTO `gongsi` VALUES ('10', '华德', '华德', '哈尔滨华德学院', '10000万', '0451-1000005', '哈尔滨学院路5号', '10000以上', '教育', '哈尔滨华德学院教育', '2017-03-20 10:50:38');

-- ----------------------------
-- Table structure for xinwentongzhi
-- ----------------------------
DROP TABLE IF EXISTS `xinwentongzhi`;
CREATE TABLE `xinwentongzhi` (
  `ID` int(11) DEFAULT NULL,
  `biaoti` varchar(255) DEFAULT NULL,
  `leibie` varchar(50) DEFAULT NULL,
  `neirong` longtext,
  `tianjiaren` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xinwentongzhi
-- ----------------------------
INSERT INTO `xinwentongzhi` VALUES ('13', '末检', '站内新闻', '时间：20号至21号', 'admin', '2017-03-20 09:08:25');
INSERT INTO `xinwentongzhi` VALUES ('20', '密码', '站内新闻', '密码密码密码密码', 'admin', '2017-03-20 10:53:53');
INSERT INTO `xinwentongzhi` VALUES ('21', '个人用户管理', '站内新闻', '个人用户管理个人用户管理', 'admin', '2017-04-21 10:04:40');
INSERT INTO `xinwentongzhi` VALUES ('17', '招聘管理员', '站内新闻', '招聘管理员招聘管理员', 'admin', '2017-05-09 10:52:12');
INSERT INTO `xinwentongzhi` VALUES ('18', '企业用户管理', '站内新闻', '企业用户管理企业用户管理', 'admin', '2017-04-20 10:52:36');
INSERT INTO `xinwentongzhi` VALUES ('19', '个人用户管理', '站内新闻', '个人用户管理个人用户管理', 'admin', '2017-04-20 10:52:46');

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `ID` int(11) DEFAULT NULL,
  `wangzhanmingcheng` varchar(50) DEFAULT NULL,
  `wangzhi` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com', '2017-04-20 10:54:48');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.com', '2017-04-20 10:54:48');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com', '2017-04-20 10:54:48');
INSERT INTO `youqinglianjie` VALUES ('4', '雅虎', 'http://www.yahoo.cn', '2017-03-20 10:54:48');
INSERT INTO `youqinglianjie` VALUES ('5', '腾讯', 'http://www.qq.com', '2017-04-20 10:54:48');

-- ----------------------------
-- Table structure for ypjl
-- ----------------------------
DROP TABLE IF EXISTS `ypjl`;
CREATE TABLE `ypjl` (
  `ID` int(11) DEFAULT NULL,
  `xh` varchar(50) DEFAULT NULL,
  `xm` varchar(50) DEFAULT NULL,
  `gwmc` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gwid` varchar(10) DEFAULT NULL,
  `gs` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ypjl
-- ----------------------------
INSERT INTO `ypjl` VALUES ('16', '张', '张', '项目经理', '2017-04-21 00:21:11', '10', '百度');
