/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : seat

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-02-13 16:52:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_depts
-- ----------------------------
DROP TABLE IF EXISTS `sys_depts`;
CREATE TABLE `sys_depts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `parentId` int(11) DEFAULT NULL COMMENT '上级部门',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_depts
-- ----------------------------
INSERT INTO `sys_depts` VALUES ('2', '集团教研部', null, '1', '集团教学和研发', '2018-04-19 18:59:09', '2020-01-12 14:13:22', 'admin', null);
INSERT INTO `sys_depts` VALUES ('4', '课程研发部', '2', '22', '负责课程研发', '2018-04-22 18:10:58', '2020-01-12 14:13:56', null, null);
INSERT INTO `sys_depts` VALUES ('5', '集团MIS部', null, '13', '负责集团网络环境运维', '2020-01-12 14:14:26', '2020-01-12 14:14:26', null, null);
INSERT INTO `sys_depts` VALUES ('6', '市场部', null, '6', 'ccc', '2020-04-28 15:53:23', '2020-04-28 15:54:08', null, null);
INSERT INTO `sys_depts` VALUES ('7', 'MIS-1部', '5', '5', '111', '2020-04-28 15:53:46', '2020-04-28 15:53:46', null, null);
INSERT INTO `sys_depts` VALUES ('9', 'test3', '6', '16', 'test2', '2021-01-28 18:03:42', '2021-01-31 19:16:22', null, null);

-- ----------------------------
-- Table structure for sys_feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `sys_feedbacks`;
CREATE TABLE `sys_feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(150) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_feedbacks
-- ----------------------------
INSERT INTO `sys_feedbacks` VALUES ('1', '2', 'hello', '2021-02-09 14:08:08');
INSERT INTO `sys_feedbacks` VALUES ('3', '1', 'aaa', '2021-02-09 14:16:03');
INSERT INTO `sys_feedbacks` VALUES ('4', '1', 'test', '2021-02-09 14:21:55');
INSERT INTO `sys_feedbacks` VALUES ('5', '1', 'test2', '2021-02-09 17:56:23');

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES ('11', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '1', '0:0:0:0:0:0:0:1', '2018-04-17 19:54:36');
INSERT INTO `sys_logs` VALUES ('12', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '155', '0:0:0:0:0:0:0:1', '2018-04-18 15:14:44');
INSERT INTO `sys_logs` VALUES ('13', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '165', '0:0:0:0:0:0:0:1', '2018-04-19 18:52:35');
INSERT INTO `sys_logs` VALUES ('14', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '75', '0:0:0:0:0:0:0:1', '2018-04-19 19:10:36');
INSERT INTO `sys_logs` VALUES ('15', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '69', '0:0:0:0:0:0:0:1', '2018-04-19 19:12:46');
INSERT INTO `sys_logs` VALUES ('16', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '187', '0:0:0:0:0:0:0:1', '2018-04-19 23:27:14');
INSERT INTO `sys_logs` VALUES ('17', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '103', '0:0:0:0:0:0:0:1', '2018-04-20 13:11:37');
INSERT INTO `sys_logs` VALUES ('18', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '85', '0:0:0:0:0:0:0:1', '2018-04-20 13:55:04');
INSERT INTO `sys_logs` VALUES ('19', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '89', '0:0:0:0:0:0:0:1', '2018-04-20 13:57:12');
INSERT INTO `sys_logs` VALUES ('20', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '69', '0:0:0:0:0:0:0:1', '2018-04-20 13:58:32');
INSERT INTO `sys_logs` VALUES ('21', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '291', '0:0:0:0:0:0:0:1', '2018-04-20 15:22:55');
INSERT INTO `sys_logs` VALUES ('22', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '158', '0:0:0:0:0:0:0:1', '2018-04-22 16:20:56');
INSERT INTO `sys_logs` VALUES ('23', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '94', '0:0:0:0:0:0:0:1', '2018-04-22 17:05:34');
INSERT INTO `sys_logs` VALUES ('24', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '138', '0:0:0:0:0:0:0:1', '2018-04-22 17:20:32');
INSERT INTO `sys_logs` VALUES ('25', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '124', '0:0:0:0:0:0:0:1', '2018-04-22 17:24:12');
INSERT INTO `sys_logs` VALUES ('26', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '75', '0:0:0:0:0:0:0:1', '2018-04-22 17:31:51');
INSERT INTO `sys_logs` VALUES ('27', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '148', '0:0:0:0:0:0:0:1', '2018-04-22 17:33:25');
INSERT INTO `sys_logs` VALUES ('28', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '69', '0:0:0:0:0:0:0:1', '2018-04-22 17:39:26');
INSERT INTO `sys_logs` VALUES ('29', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '120', '0:0:0:0:0:0:0:1', '2018-04-22 19:10:28');
INSERT INTO `sys_logs` VALUES ('39', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '0:0:0:0:0:0:0:1', '2020-01-12 08:54:53');
INSERT INTO `sys_logs` VALUES ('40', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2020-01-12 09:29:59');
INSERT INTO `sys_logs` VALUES ('41', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2020-01-12 09:35:25');
INSERT INTO `sys_logs` VALUES ('42', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"admin\",1]', '5', '0:0:0:0:0:0:0:1', '2020-01-12 09:35:30');
INSERT INTO `sys_logs` VALUES ('43', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2020-01-12 09:35:44');
INSERT INTO `sys_logs` VALUES ('44', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2020-01-12 09:35:46');
INSERT INTO `sys_logs` VALUES ('45', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2020-01-12 09:36:07');
INSERT INTO `sys_logs` VALUES ('46', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,0,\"admin\"]', '1', '0:0:0:0:0:0:0:1', '2020-01-12 09:36:19');
INSERT INTO `sys_logs` VALUES ('47', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,1,\"admin\"]', '1', '0:0:0:0:0:0:0:1', '2020-01-12 09:36:55');
INSERT INTO `sys_logs` VALUES ('48', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,0,\"admin\"]', '1', '0:0:0:0:0:0:0:1', '2020-01-12 09:37:05');
INSERT INTO `sys_logs` VALUES ('49', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '25', '0:0:0:0:0:0:0:1', '2020-01-12 09:42:35');
INSERT INTO `sys_logs` VALUES ('50', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,1,\"admin\"]', '2', '0:0:0:0:0:0:0:1', '2020-01-12 09:42:38');
INSERT INTO `sys_logs` VALUES ('51', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,0,\"admin\"]', '4', '0:0:0:0:0:0:0:1', '2020-01-12 09:43:23');
INSERT INTO `sys_logs` VALUES ('52', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[15,0,\"admin\"]', '1', '0:0:0:0:0:0:0:1', '2020-01-12 09:45:04');
INSERT INTO `sys_logs` VALUES ('53', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '25', '0:0:0:0:0:0:0:1', '2020-01-12 09:53:54');
INSERT INTO `sys_logs` VALUES ('54', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,1,\"admin\"]', '2', '0:0:0:0:0:0:0:1', '2020-01-12 09:53:55');
INSERT INTO `sys_logs` VALUES ('55', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,0,\"admin\"]', '1', '0:0:0:0:0:0:0:1', '2020-01-12 09:54:18');
INSERT INTO `sys_logs` VALUES ('56', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2020-01-12 09:55:00');
INSERT INTO `sys_logs` VALUES ('57', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,1,\"admin\"]', '4', '0:0:0:0:0:0:0:1', '2020-01-12 09:55:01');
INSERT INTO `sys_logs` VALUES ('58', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16,0,\"admin\"]', '2', '0:0:0:0:0:0:0:1', '2020-01-12 09:55:04');
INSERT INTO `sys_logs` VALUES ('59', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2020-01-12 09:55:23');
INSERT INTO `sys_logs` VALUES ('60', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2020-01-12 10:37:24');
INSERT INTO `sys_logs` VALUES ('61', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2020-01-12 10:37:49');
INSERT INTO `sys_logs` VALUES ('62', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '27', '0:0:0:0:0:0:0:1', '2020-01-12 11:04:16');
INSERT INTO `sys_logs` VALUES ('63', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2020-01-12 11:05:58');
INSERT INTO `sys_logs` VALUES ('64', 'admin', '用户查询', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2020-01-12 11:07:22');
INSERT INTO `sys_logs` VALUES ('68', 'admin', 'operation', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '30', '192.168.1.112', '2020-05-07 09:46:55');
INSERT INTO `sys_logs` VALUES ('69', 'admin', 'operation', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '17', '192.168.1.112', '2020-05-07 09:47:10');
INSERT INTO `sys_logs` VALUES ('70', 'admin', 'operation', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '17', '192.168.1.112', '2020-05-07 09:47:49');
INSERT INTO `sys_logs` VALUES ('71', 'admin', 'operation', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16, 1]', '72', '192.168.1.112', '2020-05-07 09:47:58');
INSERT INTO `sys_logs` VALUES ('72', 'admin', 'operation', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '16', '192.168.1.112', '2020-05-07 09:52:18');
INSERT INTO `sys_logs` VALUES ('73', 'admin', 'operation', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '16', '192.168.1.112', '2020-05-07 09:52:27');
INSERT INTO `sys_logs` VALUES ('74', 'admin', 'operation', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[16, 0]', '66', '192.168.1.112', '2020-05-07 09:52:34');
INSERT INTO `sys_logs` VALUES ('75', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '16', '192.168.1.112', '2020-05-07 09:57:52');
INSERT INTO `sys_logs` VALUES ('76', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '14', '192.168.1.112', '2020-05-07 09:58:01');
INSERT INTO `sys_logs` VALUES ('77', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[17, 0]', '73', '192.168.1.112', '2020-05-07 09:58:06');
INSERT INTO `sys_logs` VALUES ('78', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '19', '0:0:0:0:0:0:0:1', '2020-05-07 10:02:14');
INSERT INTO `sys_logs` VALUES ('79', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '12', '192.168.2.101', '2020-05-07 10:02:55');
INSERT INTO `sys_logs` VALUES ('81', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '20', '192.168.2.101', '2020-05-07 10:29:19');
INSERT INTO `sys_logs` VALUES ('82', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '15', '192.168.2.101', '2020-05-07 10:34:32');
INSERT INTO `sys_logs` VALUES ('83', 'admin', '添加用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.saveObject', '[SysUser(id=19, username=liqiang, password=302b67d0710e887cf8164426cd59da28, salt=4ddeb5b4-96dc-4def-a2d7-c6c924701b76, email=lq@t.com, mobile=1111111111111, valid=1, deptId=6, createdTime=null, modifiedTime=null, createdUser=null, modifiedUser=null), [Ljava.lang.Integer;@38d5aa5d]', '536', '192.168.2.101', '2020-05-07 10:35:08');
INSERT INTO `sys_logs` VALUES ('84', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[, 1]', '11', '192.168.2.101', '2020-05-07 10:35:11');
INSERT INTO `sys_logs` VALUES ('85', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '23', '192.168.2.101', '2020-05-07 10:38:48');
INSERT INTO `sys_logs` VALUES ('87', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '192.168.2.101', '2020-05-07 10:39:22');
INSERT INTO `sys_logs` VALUES ('88', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '20', '192.168.2.101', '2020-05-07 10:58:43');
INSERT INTO `sys_logs` VALUES ('89', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '192.168.2.101', '2020-05-07 10:59:06');
INSERT INTO `sys_logs` VALUES ('90', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '12', '192.168.2.101', '2020-05-07 11:13:09');
INSERT INTO `sys_logs` VALUES ('91', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '192.168.2.101', '2020-05-07 11:13:26');
INSERT INTO `sys_logs` VALUES ('92', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '15', '192.168.2.101', '2020-05-07 11:14:45');
INSERT INTO `sys_logs` VALUES ('93', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '475', '192.168.2.101', '2020-05-07 11:15:13');
INSERT INTO `sys_logs` VALUES ('94', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[20,0]', '198111', '192.168.2.101', '2020-05-07 11:18:37');
INSERT INTO `sys_logs` VALUES ('95', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '35', '192.168.2.101', '2020-05-07 11:51:08');
INSERT INTO `sys_logs` VALUES ('96', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '21', '192.168.2.101', '2020-05-07 11:51:09');
INSERT INTO `sys_logs` VALUES ('97', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '23', '192.168.2.101', '2020-05-07 11:51:10');
INSERT INTO `sys_logs` VALUES ('98', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '20', '192.168.2.101', '2020-05-07 11:51:11');
INSERT INTO `sys_logs` VALUES ('99', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '14', '192.168.2.101', '2020-05-07 11:51:11');
INSERT INTO `sys_logs` VALUES ('100', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '15', '192.168.2.101', '2020-05-07 11:51:12');
INSERT INTO `sys_logs` VALUES ('101', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '17', '192.168.2.101', '2020-05-07 11:59:32');
INSERT INTO `sys_logs` VALUES ('102', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '192.168.2.101', '2020-05-07 11:59:34');
INSERT INTO `sys_logs` VALUES ('103', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '12', '192.168.2.101', '2020-05-07 11:59:35');
INSERT INTO `sys_logs` VALUES ('104', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '18', '192.168.2.101', '2020-05-07 11:59:36');
INSERT INTO `sys_logs` VALUES ('105', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '192.168.2.101', '2020-05-07 11:59:39');
INSERT INTO `sys_logs` VALUES ('106', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '192.168.2.101', '2020-05-07 14:01:25');
INSERT INTO `sys_logs` VALUES ('107', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '192.168.2.101', '2020-05-07 14:01:34');
INSERT INTO `sys_logs` VALUES ('108', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '17', '192.168.2.101', '2020-05-07 14:03:46');
INSERT INTO `sys_logs` VALUES ('109', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '192.168.2.101', '2020-05-07 14:04:57');
INSERT INTO `sys_logs` VALUES ('110', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '133', '192.168.2.101', '2020-05-07 14:06:50');
INSERT INTO `sys_logs` VALUES ('111', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '17', '192.168.2.101', '2020-05-07 14:06:59');
INSERT INTO `sys_logs` VALUES ('112', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '17', '192.168.2.101', '2020-05-07 14:07:47');
INSERT INTO `sys_logs` VALUES ('113', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '26', '192.168.2.101', '2020-05-07 14:07:52');
INSERT INTO `sys_logs` VALUES ('114', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '14', '192.168.2.101', '2020-05-07 14:17:59');
INSERT INTO `sys_logs` VALUES ('115', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '14', '192.168.2.101', '2020-05-07 14:21:45');
INSERT INTO `sys_logs` VALUES ('116', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '16', '192.168.2.101', '2020-05-07 14:23:40');
INSERT INTO `sys_logs` VALUES ('117', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '192.168.2.101', '2020-05-07 14:32:09');
INSERT INTO `sys_logs` VALUES ('118', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '164', '192.168.2.101', '2020-05-07 15:39:35');
INSERT INTO `sys_logs` VALUES ('119', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '16', '192.168.2.101', '2020-05-07 15:39:53');
INSERT INTO `sys_logs` VALUES ('120', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '16', '192.168.2.101', '2020-05-07 15:39:54');
INSERT INTO `sys_logs` VALUES ('121', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '18', '192.168.2.101', '2020-05-07 15:39:54');
INSERT INTO `sys_logs` VALUES ('122', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '31', '192.168.2.101', '2020-05-07 15:39:55');
INSERT INTO `sys_logs` VALUES ('123', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '192.168.2.101', '2020-05-07 15:39:55');
INSERT INTO `sys_logs` VALUES ('124', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '192.168.2.101', '2020-05-07 15:39:56');
INSERT INTO `sys_logs` VALUES ('125', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '14', '192.168.2.101', '2020-05-07 15:39:56');
INSERT INTO `sys_logs` VALUES ('126', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '17', '192.168.2.101', '2020-05-07 15:39:57');
INSERT INTO `sys_logs` VALUES ('127', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '19', '192.168.2.101', '2020-05-07 15:39:57');
INSERT INTO `sys_logs` VALUES ('128', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '192.168.2.101', '2020-05-07 15:39:58');
INSERT INTO `sys_logs` VALUES ('129', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '204', '192.168.2.101', '2020-05-07 15:46:18');
INSERT INTO `sys_logs` VALUES ('131', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '24', '0:0:0:0:0:0:0:1', '2020-05-08 15:35:44');
INSERT INTO `sys_logs` VALUES ('132', 'admin', '禁用启用', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.validById', '[20,1]', '6', '0:0:0:0:0:0:0:1', '2020-05-08 15:36:12');
INSERT INTO `sys_logs` VALUES ('133', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '21', '0:0:0:0:0:0:0:1', '2020-05-08 17:21:26');
INSERT INTO `sys_logs` VALUES ('134', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"admin\",1]', '10', '0:0:0:0:0:0:0:1', '2020-05-08 17:21:36');
INSERT INTO `sys_logs` VALUES ('136', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"admin\",1]', '12', '0:0:0:0:0:0:0:1', '2020-05-09 09:51:16');
INSERT INTO `sys_logs` VALUES ('137', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '12', '0:0:0:0:0:0:0:1', '2020-05-09 10:23:55');
INSERT INTO `sys_logs` VALUES ('162', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '28', '127.0.0.1', '2020-05-11 13:03:18');
INSERT INTO `sys_logs` VALUES ('163', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '24', '0:0:0:0:0:0:0:1', '2020-05-11 14:34:10');
INSERT INTO `sys_logs` VALUES ('164', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '20', '0:0:0:0:0:0:0:1', '2020-05-11 17:50:48');
INSERT INTO `sys_logs` VALUES ('165', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",2]', '20', '0:0:0:0:0:0:0:1', '2020-05-11 17:50:52');
INSERT INTO `sys_logs` VALUES ('166', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '0:0:0:0:0:0:0:1', '2020-05-11 17:50:53');
INSERT INTO `sys_logs` VALUES ('167', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",2]', '23', '0:0:0:0:0:0:0:1', '2020-05-11 17:50:55');
INSERT INTO `sys_logs` VALUES ('168', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",6]', '10', '0:0:0:0:0:0:0:1', '2020-05-11 17:50:57');
INSERT INTO `sys_logs` VALUES ('169', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '0:0:0:0:0:0:0:1', '2020-05-11 17:55:24');
INSERT INTO `sys_logs` VALUES ('170', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '149', '0:0:0:0:0:0:0:1', '2020-05-12 08:26:02');
INSERT INTO `sys_logs` VALUES ('171', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '12', '0:0:0:0:0:0:0:1', '2020-05-12 10:44:58');
INSERT INTO `sys_logs` VALUES ('172', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '71', '0:0:0:0:0:0:0:1', '2020-05-27 14:28:20');
INSERT INTO `sys_logs` VALUES ('173', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '0:0:0:0:0:0:0:1', '2020-05-27 14:28:29');
INSERT INTO `sys_logs` VALUES ('174', 'admin', '查询用户', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2020-05-27 14:28:36');
INSERT INTO `sys_logs` VALUES ('175', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '41', '0:0:0:0:0:0:0:1', '2021-01-31 20:24:31');
INSERT INTO `sys_logs` VALUES ('176', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2021-01-31 20:24:48');
INSERT INTO `sys_logs` VALUES ('177', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '60', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:49');
INSERT INTO `sys_logs` VALUES ('178', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:50');
INSERT INTO `sys_logs` VALUES ('179', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:50');
INSERT INTO `sys_logs` VALUES ('180', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '18', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:51');
INSERT INTO `sys_logs` VALUES ('181', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:51');
INSERT INTO `sys_logs` VALUES ('182', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:51');
INSERT INTO `sys_logs` VALUES ('183', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:51');
INSERT INTO `sys_logs` VALUES ('184', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '14', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:51');
INSERT INTO `sys_logs` VALUES ('185', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:51');
INSERT INTO `sys_logs` VALUES ('186', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:51');
INSERT INTO `sys_logs` VALUES ('187', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:52');
INSERT INTO `sys_logs` VALUES ('188', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-01-31 21:29:52');
INSERT INTO `sys_logs` VALUES ('189', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '41', '0:0:0:0:0:0:0:1', '2021-01-31 21:30:39');
INSERT INTO `sys_logs` VALUES ('190', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '67', '0:0:0:0:0:0:0:1', '2021-02-02 20:39:54');
INSERT INTO `sys_logs` VALUES ('191', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '0:0:0:0:0:0:0:1', '2021-02-02 20:40:32');
INSERT INTO `sys_logs` VALUES ('192', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-02-02 20:40:52');
INSERT INTO `sys_logs` VALUES ('193', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-02-02 20:41:01');
INSERT INTO `sys_logs` VALUES ('194', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '109', '0:0:0:0:0:0:0:1', '2021-02-02 21:12:04');
INSERT INTO `sys_logs` VALUES ('195', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '50', '0:0:0:0:0:0:0:1', '2021-02-02 21:23:01');
INSERT INTO `sys_logs` VALUES ('196', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-02-02 21:23:05');
INSERT INTO `sys_logs` VALUES ('197', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '73', '0:0:0:0:0:0:0:1', '2021-02-02 21:29:49');
INSERT INTO `sys_logs` VALUES ('198', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '101', '0:0:0:0:0:0:0:1', '2021-02-02 22:09:40');
INSERT INTO `sys_logs` VALUES ('199', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '0:0:0:0:0:0:0:1', '2021-02-02 22:10:13');
INSERT INTO `sys_logs` VALUES ('200', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '18', '0:0:0:0:0:0:0:1', '2021-02-02 22:10:34');
INSERT INTO `sys_logs` VALUES ('201', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '0:0:0:0:0:0:0:1', '2021-02-02 22:11:55');
INSERT INTO `sys_logs` VALUES ('202', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2021-02-02 22:12:24');
INSERT INTO `sys_logs` VALUES ('203', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-02-02 22:12:55');
INSERT INTO `sys_logs` VALUES ('204', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '94', '0:0:0:0:0:0:0:1', '2021-02-03 11:05:16');
INSERT INTO `sys_logs` VALUES ('205', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2021-02-03 11:05:16');
INSERT INTO `sys_logs` VALUES ('206', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-02-03 11:05:36');
INSERT INTO `sys_logs` VALUES ('207', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '86', '0:0:0:0:0:0:0:1', '2021-02-03 21:00:12');
INSERT INTO `sys_logs` VALUES ('208', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '0:0:0:0:0:0:0:1', '2021-02-03 21:00:13');
INSERT INTO `sys_logs` VALUES ('209', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-02-03 21:00:13');
INSERT INTO `sys_logs` VALUES ('210', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-02-03 21:00:14');
INSERT INTO `sys_logs` VALUES ('211', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-02-03 21:00:19');
INSERT INTO `sys_logs` VALUES ('212', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-02-03 21:00:22');
INSERT INTO `sys_logs` VALUES ('213', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '43', '0:0:0:0:0:0:0:1', '2021-02-03 21:13:09');
INSERT INTO `sys_logs` VALUES ('214', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '14', '0:0:0:0:0:0:0:1', '2021-02-03 21:16:12');
INSERT INTO `sys_logs` VALUES ('215', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-02-03 21:16:15');
INSERT INTO `sys_logs` VALUES ('216', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '21', '0:0:0:0:0:0:0:1', '2021-02-03 21:16:26');
INSERT INTO `sys_logs` VALUES ('217', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-02-03 21:16:29');
INSERT INTO `sys_logs` VALUES ('218', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '68', '0:0:0:0:0:0:0:1', '2021-02-03 22:33:48');
INSERT INTO `sys_logs` VALUES ('219', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '11', '0:0:0:0:0:0:0:1', '2021-02-03 22:33:56');
INSERT INTO `sys_logs` VALUES ('220', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-02-03 22:35:37');
INSERT INTO `sys_logs` VALUES ('221', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '127', '0:0:0:0:0:0:0:1', '2021-02-05 21:23:55');
INSERT INTO `sys_logs` VALUES ('222', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '0:0:0:0:0:0:0:1', '2021-02-05 21:24:00');
INSERT INTO `sys_logs` VALUES ('223', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '43', '0:0:0:0:0:0:0:1', '2021-02-05 21:28:31');
INSERT INTO `sys_logs` VALUES ('224', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '199', '0:0:0:0:0:0:0:1', '2021-02-05 21:54:39');
INSERT INTO `sys_logs` VALUES ('225', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '132', '0:0:0:0:0:0:0:1', '2021-02-05 23:50:03');
INSERT INTO `sys_logs` VALUES ('226', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-02-05 23:50:18');
INSERT INTO `sys_logs` VALUES ('227', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-02-05 23:50:18');
INSERT INTO `sys_logs` VALUES ('228', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-02-05 23:51:10');
INSERT INTO `sys_logs` VALUES ('229', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '3', '0:0:0:0:0:0:0:1', '2021-02-05 23:51:13');
INSERT INTO `sys_logs` VALUES ('230', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-02-05 23:52:30');
INSERT INTO `sys_logs` VALUES ('231', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '147', '0:0:0:0:0:0:0:1', '2021-02-06 13:14:08');
INSERT INTO `sys_logs` VALUES ('232', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",2]', '10', '0:0:0:0:0:0:0:1', '2021-02-06 13:14:14');
INSERT INTO `sys_logs` VALUES ('233', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",3]', '7', '0:0:0:0:0:0:0:1', '2021-02-06 13:14:16');
INSERT INTO `sys_logs` VALUES ('234', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-02-06 13:14:23');
INSERT INTO `sys_logs` VALUES ('235', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '116', '0:0:0:0:0:0:0:1', '2021-02-07 11:28:21');
INSERT INTO `sys_logs` VALUES ('236', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-02-07 11:28:23');
INSERT INTO `sys_logs` VALUES ('237', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '75', '0:0:0:0:0:0:0:1', '2021-02-07 14:10:17');
INSERT INTO `sys_logs` VALUES ('238', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '109', '0:0:0:0:0:0:0:1', '2021-02-09 12:32:27');
INSERT INTO `sys_logs` VALUES ('239', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '0:0:0:0:0:0:0:1', '2021-02-09 12:32:28');
INSERT INTO `sys_logs` VALUES ('240', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-02-09 12:32:30');
INSERT INTO `sys_logs` VALUES ('241', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '114', '0:0:0:0:0:0:0:1', '2021-02-09 14:20:05');
INSERT INTO `sys_logs` VALUES ('242', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '59', '0:0:0:0:0:0:0:1', '2021-02-09 18:43:00');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `type` int(11) DEFAULT NULL COMMENT '类型     1：菜单   2：按钮',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `permission` varchar(500) DEFAULT NULL COMMENT '授权(如：user:create)',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='资源管理';

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('8', '系统管理', '请求路径', '1', '8', null, null, '', '2017-07-12 15:15:59', '2020-01-12 14:11:15', 'admin', null);
INSERT INTO `sys_menus` VALUES ('25', '日志管理', 'log/log_list', '1', '25', null, '8', 'sys:log:view', '2017-07-12 15:15:59', '2020-04-28 14:55:33', 'admin', null);
INSERT INTO `sys_menus` VALUES ('45', '用户管理', 'user/user_list', '1', '45', null, '8', 'sys:user:view', '2017-07-12 15:15:59', '2020-01-12 14:10:10', 'admin', null);
INSERT INTO `sys_menus` VALUES ('46', '菜单管理', 'menu/menu_list', '1', '46', null, '8', 'sys:menu:view', '2017-07-12 15:15:59', '2020-01-12 14:10:28', 'admin', null);
INSERT INTO `sys_menus` VALUES ('47', '角色管理', 'role/role_list', '1', '47', null, '8', 'sys:role:view', '2017-07-12 15:15:59', '2020-01-12 14:10:48', 'admin', null);
INSERT INTO `sys_menus` VALUES ('115', '查询', 'menu/doFindObjects', '2', '1', null, '46', 'sys:menu:view', '2017-07-13 16:33:41', '2020-01-12 14:21:29', 'admin', null);
INSERT INTO `sys_menus` VALUES ('116', '添加', 'menu/doSaveObject', '2', '2', null, '46', 'sys:menu:add', '2017-07-13 16:34:02', '2020-01-12 14:21:56', 'admin', null);
INSERT INTO `sys_menus` VALUES ('117', '修改', 'menu/doUpdateObject', '2', '3', null, '46', 'sys:menu:update', '2017-07-13 16:34:25', '2020-01-12 14:22:12', 'admin', null);
INSERT INTO `sys_menus` VALUES ('118', '删除', 'role/doDeleteObject', '2', '4', null, '46', 'sys:menu:delete', '2017-07-13 16:34:46', '2020-01-12 14:22:41', 'admin', null);
INSERT INTO `sys_menus` VALUES ('119', '查询', 'user/doFindPageObjects', '2', '1', null, '45', 'sys:user:view', '2017-07-13 16:35:05', '2020-01-12 14:20:28', 'admin', null);
INSERT INTO `sys_menus` VALUES ('120', '查询', 'role/doFindPageObjects', '2', '1', null, '47', 'sys:role:view', '2017-07-13 16:35:26', '2020-01-12 14:23:05', 'admin', null);
INSERT INTO `sys_menus` VALUES ('126', '新增', 'user/doSaveObject', '2', '2', null, '45', 'sys:user:add', '2017-07-21 11:11:34', '2020-01-12 14:20:45', 'admin', null);
INSERT INTO `sys_menus` VALUES ('127', '修改', 'user/doUpdateObject', '2', '3', null, '45', 'sys:user:update', '2017-07-21 11:11:56', '2020-01-12 14:21:05', 'admin', null);
INSERT INTO `sys_menus` VALUES ('128', '添加', 'role/doSaveObject', '2', '2', null, '47', 'sys:role:add', '2017-07-21 11:14:24', '2020-01-12 14:23:29', 'admin', null);
INSERT INTO `sys_menus` VALUES ('129', '修改', 'role/doUpdateObject', '2', '3', null, '47', 'sys:role:update', '2017-07-21 11:14:48', '2020-01-12 14:23:44', 'admin', null);
INSERT INTO `sys_menus` VALUES ('130', '删除', 'role/doDeleteObject', '2', '4', null, '47', 'sys:role:delete', '2017-07-21 11:15:09', '2020-01-12 14:24:05', 'admin', null);
INSERT INTO `sys_menus` VALUES ('131', '删除', 'log/doDeleteObjects', '2', '27', null, '25', 'sys:log:delete', '2020-01-10 17:34:31', '2020-01-10 17:34:31', 'admin', null);
INSERT INTO `sys_menus` VALUES ('137', '禁用启用', 'user/doValidById', '2', '123', null, '45', 'sys:user:update', '2020-01-12 09:34:58', '2020-01-12 09:34:58', 'admin', null);
INSERT INTO `sys_menus` VALUES ('143', '查询', 'log/doFindPageObjects', '2', '210', null, '25', 'sys:log:view', '2020-01-12 14:20:02', '2020-01-12 14:20:02', 'admin', null);
INSERT INTO `sys_menus` VALUES ('145', '修改密码', 'user/pwd_edit', '1', '17', null, '8', 'sys_pwd_edit', '2020-05-09 14:35:48', '2020-05-09 14:35:48', 'admin', null);
INSERT INTO `sys_menus` VALUES ('146', '核心业务', '', '1', '19', null, null, 'sys:goods:view', '2020-05-09 14:38:32', '2020-05-09 14:38:32', 'admin', null);
INSERT INTO `sys_menus` VALUES ('151', '个人信息', 'user/info_list', '1', '9', null, '8', 'sys:user:info', '2021-02-03 21:03:12', '2021-02-03 21:03:15', 'admin', null);
INSERT INTO `sys_menus` VALUES ('152', '公告管理', 'notice/notice_list', '1', '9', null, '146', null, '2021-02-06 13:11:43', '2021-02-06 13:11:46', 'admin', null);
INSERT INTO `sys_menus` VALUES ('153', '在线选座系统', 'seat/seat_list', '1', '9', null, '146', '', '2021-02-07 13:54:43', '2021-02-07 13:54:47', 'admin', null);
INSERT INTO `sys_menus` VALUES ('154', '意见反馈', 'feedback/feedback_edit', '1', '9', null, '146', null, '2021-02-07 14:09:41', '2021-02-07 14:09:44', 'admin', null);

-- ----------------------------
-- Table structure for sys_notices
-- ----------------------------
DROP TABLE IF EXISTS `sys_notices`;
CREATE TABLE `sys_notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `type` int(50) DEFAULT NULL,
  `createdUser` varchar(100) DEFAULT '',
  `modifiedUser` varchar(100) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifiedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_notices
-- ----------------------------
INSERT INTO `sys_notices` VALUES ('3', '测试数据1', '测试数据1', null, 'asd', 'admin', '2021-02-06 17:49:03', '2021-02-07 13:43:28');
INSERT INTO `sys_notices` VALUES ('4', '测试数据2', '测试数据2', null, 'asd', 'admin', '2021-02-06 17:49:15', '2021-02-07 13:44:11');
INSERT INTO `sys_notices` VALUES ('7', '测试数据3', '测试数据3', null, 'admin', 'admin', '2021-02-07 13:42:04', '2021-02-07 13:44:21');
INSERT INTO `sys_notices` VALUES ('8', '测试数据4', '测试数据4', null, 'admin', null, '2021-02-07 13:44:27', '2021-02-07 13:44:27');
INSERT INTO `sys_notices` VALUES ('9', '测试数据4', '测试数据4', null, 'admin', null, '2021-02-07 13:44:40', '2021-02-07 13:44:40');
INSERT INTO `sys_notices` VALUES ('10', '测试数据5', '测试数据555', null, 'admin', '1', '2021-02-07 13:44:47', '2021-02-08 10:05:57');
INSERT INTO `sys_notices` VALUES ('11', '测试数据6', '测试数据6', null, 'admin', null, '2021-02-07 13:45:05', '2021-02-07 13:45:05');
INSERT INTO `sys_notices` VALUES ('12', '测试数据8', '测试数据8', null, 'admin', null, '2021-02-07 13:45:35', '2021-02-07 13:45:35');
INSERT INTO `sys_notices` VALUES ('13', '测试数据99', '测试数据999', null, 'admin', '1', '2021-02-07 13:45:44', '2021-02-08 10:13:56');

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('47', '超级管理员', '负责系统所有模块的管理', '2020-04-29 10:59:45', '2021-02-07 14:10:04', null, null);
INSERT INTO `sys_roles` VALUES ('48', '初级软件工程师', '负责代码实现', '2020-04-29 11:02:01', '2020-05-11 11:29:26', null, null);
INSERT INTO `sys_roles` VALUES ('49', '中级软件工程师', '负责需求分析，模块设计', '2020-04-29 16:05:58', '2020-04-29 17:03:20', null, null);
INSERT INTO `sys_roles` VALUES ('50', '程序员', 'cxy', '2021-01-27 20:26:06', '2021-02-02 22:12:38', null, null);
INSERT INTO `sys_roles` VALUES ('51', '测试工程师', '测试软件Bug', '2021-01-27 20:35:04', '2021-01-28 15:39:14', null, null);

-- ----------------------------
-- Table structure for sys_role_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menus`;
CREATE TABLE `sys_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menus
-- ----------------------------
INSERT INTO `sys_role_menus` VALUES ('1334', null, '8');
INSERT INTO `sys_role_menus` VALUES ('1335', null, '25');
INSERT INTO `sys_role_menus` VALUES ('1336', null, '131');
INSERT INTO `sys_role_menus` VALUES ('1337', null, '143');
INSERT INTO `sys_role_menus` VALUES ('1338', null, '45');
INSERT INTO `sys_role_menus` VALUES ('1339', null, '119');
INSERT INTO `sys_role_menus` VALUES ('1340', null, '126');
INSERT INTO `sys_role_menus` VALUES ('1341', null, '127');
INSERT INTO `sys_role_menus` VALUES ('1342', null, '137');
INSERT INTO `sys_role_menus` VALUES ('1349', '49', '8');
INSERT INTO `sys_role_menus` VALUES ('1350', '49', '47');
INSERT INTO `sys_role_menus` VALUES ('1351', '49', '120');
INSERT INTO `sys_role_menus` VALUES ('1352', '49', '128');
INSERT INTO `sys_role_menus` VALUES ('1353', '49', '129');
INSERT INTO `sys_role_menus` VALUES ('1354', '49', '130');
INSERT INTO `sys_role_menus` VALUES ('1391', '48', '8');
INSERT INTO `sys_role_menus` VALUES ('1392', '48', '25');
INSERT INTO `sys_role_menus` VALUES ('1393', '48', '143');
INSERT INTO `sys_role_menus` VALUES ('1394', '48', '47');
INSERT INTO `sys_role_menus` VALUES ('1395', '48', '120');
INSERT INTO `sys_role_menus` VALUES ('1396', '48', '128');
INSERT INTO `sys_role_menus` VALUES ('1397', '48', '129');
INSERT INTO `sys_role_menus` VALUES ('1398', '48', '130');
INSERT INTO `sys_role_menus` VALUES ('1399', '48', '145');
INSERT INTO `sys_role_menus` VALUES ('1447', '51', '8');
INSERT INTO `sys_role_menus` VALUES ('1448', '51', '25');
INSERT INTO `sys_role_menus` VALUES ('1449', '51', '131');
INSERT INTO `sys_role_menus` VALUES ('1450', '51', '143');
INSERT INTO `sys_role_menus` VALUES ('1451', '51', '45');
INSERT INTO `sys_role_menus` VALUES ('1452', '51', '119');
INSERT INTO `sys_role_menus` VALUES ('1453', '51', '126');
INSERT INTO `sys_role_menus` VALUES ('1454', '51', '127');
INSERT INTO `sys_role_menus` VALUES ('1455', '51', '137');
INSERT INTO `sys_role_menus` VALUES ('1456', '51', '149');
INSERT INTO `sys_role_menus` VALUES ('1457', '51', '46');
INSERT INTO `sys_role_menus` VALUES ('1458', '51', '115');
INSERT INTO `sys_role_menus` VALUES ('1459', '51', '116');
INSERT INTO `sys_role_menus` VALUES ('1460', '51', '117');
INSERT INTO `sys_role_menus` VALUES ('1461', '51', '118');
INSERT INTO `sys_role_menus` VALUES ('1462', '51', '47');
INSERT INTO `sys_role_menus` VALUES ('1463', '51', '120');
INSERT INTO `sys_role_menus` VALUES ('1464', '51', '128');
INSERT INTO `sys_role_menus` VALUES ('1465', '51', '129');
INSERT INTO `sys_role_menus` VALUES ('1466', '51', '130');
INSERT INTO `sys_role_menus` VALUES ('1467', '51', '145');
INSERT INTO `sys_role_menus` VALUES ('1468', '51', '146');
INSERT INTO `sys_role_menus` VALUES ('1469', '51', '147');
INSERT INTO `sys_role_menus` VALUES ('1492', '50', '8');
INSERT INTO `sys_role_menus` VALUES ('1493', '50', '25');
INSERT INTO `sys_role_menus` VALUES ('1494', '50', '131');
INSERT INTO `sys_role_menus` VALUES ('1495', '50', '143');
INSERT INTO `sys_role_menus` VALUES ('1496', '50', '46');
INSERT INTO `sys_role_menus` VALUES ('1497', '50', '115');
INSERT INTO `sys_role_menus` VALUES ('1498', '50', '116');
INSERT INTO `sys_role_menus` VALUES ('1499', '50', '117');
INSERT INTO `sys_role_menus` VALUES ('1500', '50', '118');
INSERT INTO `sys_role_menus` VALUES ('1501', '50', '47');
INSERT INTO `sys_role_menus` VALUES ('1502', '50', '120');
INSERT INTO `sys_role_menus` VALUES ('1503', '50', '128');
INSERT INTO `sys_role_menus` VALUES ('1504', '50', '129');
INSERT INTO `sys_role_menus` VALUES ('1505', '50', '130');
INSERT INTO `sys_role_menus` VALUES ('1506', '50', '145');
INSERT INTO `sys_role_menus` VALUES ('1507', '50', '150');
INSERT INTO `sys_role_menus` VALUES ('1582', '47', '8');
INSERT INTO `sys_role_menus` VALUES ('1583', '47', '25');
INSERT INTO `sys_role_menus` VALUES ('1584', '47', '131');
INSERT INTO `sys_role_menus` VALUES ('1585', '47', '143');
INSERT INTO `sys_role_menus` VALUES ('1586', '47', '45');
INSERT INTO `sys_role_menus` VALUES ('1587', '47', '119');
INSERT INTO `sys_role_menus` VALUES ('1588', '47', '126');
INSERT INTO `sys_role_menus` VALUES ('1589', '47', '127');
INSERT INTO `sys_role_menus` VALUES ('1590', '47', '137');
INSERT INTO `sys_role_menus` VALUES ('1591', '47', '46');
INSERT INTO `sys_role_menus` VALUES ('1592', '47', '115');
INSERT INTO `sys_role_menus` VALUES ('1593', '47', '116');
INSERT INTO `sys_role_menus` VALUES ('1594', '47', '117');
INSERT INTO `sys_role_menus` VALUES ('1595', '47', '118');
INSERT INTO `sys_role_menus` VALUES ('1596', '47', '47');
INSERT INTO `sys_role_menus` VALUES ('1597', '47', '120');
INSERT INTO `sys_role_menus` VALUES ('1598', '47', '128');
INSERT INTO `sys_role_menus` VALUES ('1599', '47', '129');
INSERT INTO `sys_role_menus` VALUES ('1600', '47', '130');
INSERT INTO `sys_role_menus` VALUES ('1601', '47', '145');
INSERT INTO `sys_role_menus` VALUES ('1602', '47', '151');
INSERT INTO `sys_role_menus` VALUES ('1603', '47', '152');
INSERT INTO `sys_role_menus` VALUES ('1604', '47', '146');
INSERT INTO `sys_role_menus` VALUES ('1605', '47', '147');
INSERT INTO `sys_role_menus` VALUES ('1606', '47', '148');
INSERT INTO `sys_role_menus` VALUES ('1607', '47', '153');
INSERT INTO `sys_role_menus` VALUES ('1608', '47', '154');

-- ----------------------------
-- Table structure for sys_seats
-- ----------------------------
DROP TABLE IF EXISTS `sys_seats`;
CREATE TABLE `sys_seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '资源名称',
  `parentId` int(100) DEFAULT NULL,
  `state` int(15) DEFAULT NULL,
  `createdTime` date DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` date DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(50) DEFAULT NULL COMMENT '修改用户',
  `usedUser` varchar(100) DEFAULT NULL,
  `lastUsedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_seats
-- ----------------------------
INSERT INTO `sys_seats` VALUES ('1', '一楼', null, null, '2021-02-08', '2021-02-08', 'admin', 'admin', null, null);
INSERT INTO `sys_seats` VALUES ('2', '二楼', null, null, '2021-02-08', '2021-02-08', null, null, null, null);
INSERT INTO `sys_seats` VALUES ('3', '三楼', null, null, '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('4', '东区', '1', '2', '2021-02-08', '2021-02-09', null, null, '1', '2021-02-09 12:25:41');
INSERT INTO `sys_seats` VALUES ('5', '东区', '1', '2', '2021-02-08', '2021-02-09', null, null, 'chenhao', '2021-02-09 12:30:54');
INSERT INTO `sys_seats` VALUES ('6', '东区', '1', '1', '2021-02-08', '2021-02-09', null, null, null, '2021-02-09 12:18:48');
INSERT INTO `sys_seats` VALUES ('7', '东区', '1', '1', '2021-02-08', '2021-02-09', null, null, null, '2021-02-09 12:18:32');
INSERT INTO `sys_seats` VALUES ('8', '东区', '1', '1', '2021-02-08', '2021-02-09', null, null, null, '2021-02-09 12:18:27');
INSERT INTO `sys_seats` VALUES ('9', '西区', '1', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('10', '西区', '1', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('11', '西区', '1', '1', '2021-02-08', '2021-02-09', null, null, null, '2021-02-09 12:18:42');
INSERT INTO `sys_seats` VALUES ('12', '西区', '1', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('13', '西区', '1', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('14', '东区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('15', '东区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('16', '东区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('17', '东区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('18', '东区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('19', '西区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('20', '西区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('21', '西区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('22', '西区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('23', '西区', '2', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('24', '东区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('25', '东区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('26', '东区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('27', '东区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('28', '东区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('29', '西区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('30', '西区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('31', '西区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('32', '西区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('33', '西区', '3', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('34', '北区', '2', '1', '2021-02-08', '2021-02-08', null, null, null, null);

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐  密码加密时前缀，使加密后的值不同',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `valid` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常  默认值 ：1',
  `deptId` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  `sex` varchar(10) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('1', '1', '12da55859dbf7e94f4ec640f1020bf81', 'd2fb7c19-9760-43dc-a2cc-15ec252b1c5c', 'admin@q.com', '11232353251', '1', '2', null, '2021-02-07 13:46:27', null, null, '男', '2021-02-06');
INSERT INTO `sys_users` VALUES ('2', 'zhangli', 'bdcf69375bdb532e50279b91eb00940d', '5e7cbd36-e897-4951-b42b-19809caf3caa', 'zhangli@t.cn', '13678909876', '0', '3', '2017-07-18 10:01:51', '2018-04-22 20:49:19', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('3', 'wangke', 'c5dc32ec66041aeddf432b3146bd2257', '5e3e1475-1ea9-4a6a-976e-b07545827139', 'wangke@t.cn', '18678900987', '1', '3', '2017-07-18 11:40:53', '2018-04-22 20:48:52', null, null, null, null);
INSERT INTO `sys_users` VALUES ('4', 'zhangql', '+HBpqtPuj9KLBIpneR5X0A==', 'ed487fac-9952-45c9-acaa-21dab9c689cc', 'zhangql@t.cn', '13678909876', '1', '2', '2017-07-18 12:17:30', '2018-04-22 20:48:04', null, null, null, null);
INSERT INTO `sys_users` VALUES ('5', 'fanwei', '1acab7425d6dfae670f26bd160518902', '34fbedb2-e135-4f8d-b595-24360edc348d', 'fanwei@t.cn', '13876545678', '1', '3', '2017-07-20 17:03:22', '2018-04-22 20:47:49', null, null, null, null);
INSERT INTO `sys_users` VALUES ('6', 'wumei', '431ebdcccf3404787a144f9ba669a8e2', '8a14f46f-7a17-4dfe-85ab-08e63cb618ce', 'wumei@t.cn', '13567898765', '1', '2', '2017-07-21 10:57:40', '2018-04-22 20:46:49', null, null, null, null);
INSERT INTO `sys_users` VALUES ('7', 'user-003', '689c673a0d8bda7ee795dd45a126ae96', '3faa1d2b-a99f-4ffb-9d29-0e71563258af', 't@t.com', '123', '1', '3', '2018-01-12 23:19:58', '2018-04-22 20:46:07', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('9', 'user-002', 'e10adc3949ba59abbe56e057f20f883e', null, 't@t.com', '123', '1', '3', '2018-01-12 23:20:31', '2018-04-22 20:45:55', null, null, null, null);
INSERT INTO `sys_users` VALUES ('12', 'user-001', '5bf6593afd106aa544000d559f0c2241', '9528e727-2901-4746-8558-9010d9607da2', 't@t.com', '123', '1', '3', '2018-01-13 01:48:32', '2018-04-22 20:45:37', null, null, null, null);
INSERT INTO `sys_users` VALUES ('13', 'user-c', '2630d8bd50c76abf001a9daceeae97e6', '30fff766-e245-4a93-9f5e-6eb2c2cec494', 't@t.com', '123456', '1', '3', '2018-01-13 02:01:56', '2020-04-30 12:02:24', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('15', 'user-b', '2ce586af95c6431112092f653659c85f', 'eaedbaee-d760-40e4-b71e-ccecf01b6187', 't@t.com', '123456', '1', '3', '2018-01-13 02:02:06', '2020-04-30 12:01:31', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('16', 'lifa', '710058cf374a38d76510d009f63bf28d', 'e8e35b96-bbdd-4090-81ee-b71a36141760', 'lf@t.com', '1111111111', '0', '2', '2018-04-22 19:43:11', '2020-05-07 09:52:33', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('17', 'xiaoli', 'dd93e70c79e12b5c734080fb9ee91229', 'e0036733-1378-4ff0-a5c3-8ddc5f8e0db2', 'xl@t.com', '11122222', '0', '6', '2020-01-12 10:37:47', '2020-05-07 09:58:05', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('18', 'wangzhen', '9b12c8e94530a0d95d9e91f4d1429c4b', '4d54a593-6da5-44a8-87ca-4db7d92a526c', 'wz@t.com', '1111111111111', '1', '6', '2020-04-30 14:45:10', '2020-05-06 11:19:35', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('19', 'liqiang', '302b67d0710e887cf8164426cd59da28', '4ddeb5b4-96dc-4def-a2d7-c6c924701b76', 'lq@t.com', '1111111111111', '1', '6', '2020-05-07 10:35:07', '2020-05-11 10:48:18', null, null, null, null);
INSERT INTO `sys_users` VALUES ('20', 'guoqing', 'd16322520b08734174e271e263ace655', '65ec8f97-ec0f-45ff-a63d-9a7f8061c6dc', 'gq@t.com', '1111111111', '1', '2', '2020-05-07 10:39:19', '2021-01-28 20:32:48', null, 'admin', null, null);
INSERT INTO `sys_users` VALUES ('21', 'test01', '123456', null, '123@qq.com', '123', '1', '6', '2021-01-29 17:28:57', '2021-02-02 22:11:06', null, null, null, null);
INSERT INTO `sys_users` VALUES ('23', 'chenhao', '790382cb7d68cab5d9236e8e4df3963e', '31016fc8-5fa2-4619-98a6-62debfb12677', '123@qq.com', '111', '1', '4', '2021-01-29 17:39:03', '2021-02-05 23:52:29', null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE `sys_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES ('70', '18', '49');
INSERT INTO `sys_user_roles` VALUES ('71', '17', '48');
INSERT INTO `sys_user_roles` VALUES ('72', '16', '47');
INSERT INTO `sys_user_roles` VALUES ('74', '20', '48');
INSERT INTO `sys_user_roles` VALUES ('75', '1', '47');
INSERT INTO `sys_user_roles` VALUES ('76', '19', '49');
INSERT INTO `sys_user_roles` VALUES ('80', '21', '51');
INSERT INTO `sys_user_roles` VALUES ('83', '23', '47');
