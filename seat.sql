/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : seat

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-04-20 13:30:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_depts
-- ----------------------------
use seat;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_depts
-- ----------------------------
INSERT INTO `sys_depts` VALUES ('2', '图书馆方', null, '1', '负责图书馆内的事务运营', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('4', '安保处', '2', '22', '负责馆内的秩序', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('5', '校方', null, '13', '负责对图书馆的督查和政策指引', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('6', '学生方', null, '6', '核心用户', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('7', '校财务部', '5', '5', '负责对馆在校内开销的结算', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('9', '保洁处', '2', '16', '负责馆内场地的保洁', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('10', '客服处', '2', '17', '负责馆内问题的答疑和引导', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('11', '校方督察部', '5', '18', '负责定期对馆内各项指标进行检查', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('12', '本科部', '6', '19', '大学1-4年级的学生选择此部门', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('13', '研究生部', '6', '20', '研究生1-3年级的学生选择此部门', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('14', '博士部', '6', '21', '研究生及以上的学生选择此部门', '2020-01-12 14:13:22', '2020-01-12 14:13:22', 'admin', 'admin');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_feedbacks
-- ----------------------------
INSERT INTO `sys_feedbacks` VALUES ('1', '2', 'hello', '2021-02-09 14:08:08');
INSERT INTO `sys_feedbacks` VALUES ('3', '1', 'aaa', '2021-02-09 14:16:03');
INSERT INTO `sys_feedbacks` VALUES ('4', '1', 'test', '2021-02-09 14:21:55');
INSERT INTO `sys_feedbacks` VALUES ('5', '1', 'test2', '2021-02-09 17:56:23');
INSERT INTO `sys_feedbacks` VALUES ('6', '1', '希望工作人员身体健康!', '2021-02-20 12:27:53');
INSERT INTO `sys_feedbacks` VALUES ('7', '1', '希望保洁人员勤快点', '2021-03-29 10:03:37');
INSERT INTO `sys_feedbacks` VALUES ('8', '1', '1', '2021-03-29 10:09:39');
INSERT INTO `sys_feedbacks` VALUES ('9', '1', '1', '2021-03-29 10:10:31');
INSERT INTO `sys_feedbacks` VALUES ('10', '1', '1212', '2021-03-29 10:13:06');
INSERT INTO `sys_feedbacks` VALUES ('11', '1', '1212a', '2021-03-29 10:13:58');
INSERT INTO `sys_feedbacks` VALUES ('12', '1', 'qwe', '2021-03-29 10:24:34');
INSERT INTO `sys_feedbacks` VALUES ('13', '1', '我希望 能把这玩意染成绿的', '2021-04-14 12:01:38');
INSERT INTO `sys_feedbacks` VALUES ('14', '1', 'weeee', '2021-04-15 15:48:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8 COMMENT='系统日志';

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
INSERT INTO `sys_logs` VALUES ('243', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '104', '0:0:0:0:0:0:0:1', '2021-02-20 12:28:11');
INSERT INTO `sys_logs` VALUES ('244', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2021-02-20 12:28:16');
INSERT INTO `sys_logs` VALUES ('245', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '86', '0:0:0:0:0:0:0:1', '2021-02-22 12:33:44');
INSERT INTO `sys_logs` VALUES ('246', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '69', '0:0:0:0:0:0:0:1', '2021-03-10 12:08:38');
INSERT INTO `sys_logs` VALUES ('247', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '18', '0:0:0:0:0:0:0:1', '2021-03-10 12:08:45');
INSERT INTO `sys_logs` VALUES ('248', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-03-10 12:09:37');
INSERT INTO `sys_logs` VALUES ('249', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '125', '0:0:0:0:0:0:0:1', '2021-03-29 09:27:09');
INSERT INTO `sys_logs` VALUES ('250', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '12', '0:0:0:0:0:0:0:1', '2021-03-29 09:27:10');
INSERT INTO `sys_logs` VALUES ('251', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-03-29 09:30:31');
INSERT INTO `sys_logs` VALUES ('252', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-03-29 09:30:35');
INSERT INTO `sys_logs` VALUES ('253', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-03-29 09:30:43');
INSERT INTO `sys_logs` VALUES ('254', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-03-29 09:30:54');
INSERT INTO `sys_logs` VALUES ('255', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-03-29 09:39:24');
INSERT INTO `sys_logs` VALUES ('256', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-03-29 09:48:44');
INSERT INTO `sys_logs` VALUES ('257', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-03-29 09:48:46');
INSERT INTO `sys_logs` VALUES ('258', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-03-29 09:49:41');
INSERT INTO `sys_logs` VALUES ('259', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2021-03-29 09:50:45');
INSERT INTO `sys_logs` VALUES ('260', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '3', '0:0:0:0:0:0:0:1', '2021-03-29 09:52:17');
INSERT INTO `sys_logs` VALUES ('261', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '3', '0:0:0:0:0:0:0:1', '2021-03-29 09:52:26');
INSERT INTO `sys_logs` VALUES ('262', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '3', '0:0:0:0:0:0:0:1', '2021-03-29 09:53:35');
INSERT INTO `sys_logs` VALUES ('263', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '56', '0:0:0:0:0:0:0:1', '2021-03-29 10:21:13');
INSERT INTO `sys_logs` VALUES ('264', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-03-29 10:21:15');
INSERT INTO `sys_logs` VALUES ('265', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '50', '0:0:0:0:0:0:0:1', '2021-03-29 10:54:16');
INSERT INTO `sys_logs` VALUES ('266', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '39', '0:0:0:0:0:0:0:1', '2021-03-29 11:09:17');
INSERT INTO `sys_logs` VALUES ('267', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '42', '0:0:0:0:0:0:0:1', '2021-03-29 11:11:11');
INSERT INTO `sys_logs` VALUES ('268', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '60', '0:0:0:0:0:0:0:1', '2021-04-14 12:01:44');
INSERT INTO `sys_logs` VALUES ('269', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-04-14 12:01:45');
INSERT INTO `sys_logs` VALUES ('270', 'chenhaotest1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-04-14 12:01:58');
INSERT INTO `sys_logs` VALUES ('271', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '47', '0:0:0:0:0:0:0:1', '2021-04-14 12:15:50');
INSERT INTO `sys_logs` VALUES ('272', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-04-14 12:15:51');
INSERT INTO `sys_logs` VALUES ('273', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '5', '0:0:0:0:0:0:0:1', '2021-04-14 12:15:54');
INSERT INTO `sys_logs` VALUES ('274', '1', '修改自己个人信息', 'com.chen.service.impl.SysUserServiceImpl.updateUserInfo', '[1,{\"id\":1,\"username\":\"1\",\"password\":null,\"salt\":null,\"mobile\":\"18866668888\",\"email\":\"gangsterchen@163.com\",\"valid\":1,\"deptId\":null,\"deptName\":null,\"createdTime\":null,\"modifiedTime\":null,\"createdUser\":null,\"modifiedUser\":null,\"sex\":\"女\",\"birthday\":\"1998-09-22\"}]', '6', '127.0.0.1', '2021-04-14 12:18:39');
INSERT INTO `sys_logs` VALUES ('275', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '67', '0:0:0:0:0:0:0:1', '2021-04-15 13:38:08');
INSERT INTO `sys_logs` VALUES ('276', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-04-15 13:38:12');
INSERT INTO `sys_logs` VALUES ('277', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-04-15 13:38:13');
INSERT INTO `sys_logs` VALUES ('278', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-04-15 13:38:14');
INSERT INTO `sys_logs` VALUES ('279', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-04-15 13:38:20');
INSERT INTO `sys_logs` VALUES ('280', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '4', '0:0:0:0:0:0:0:1', '2021-04-15 14:03:13');
INSERT INTO `sys_logs` VALUES ('281', '1', '修改自己个人信息', 'com.chen.service.impl.SysUserServiceImpl.updateUserInfo', '[1,{\"id\":1,\"username\":\"1\",\"password\":null,\"salt\":null,\"mobile\":\"18866668888\",\"email\":\"gangsterchen@163.com\",\"valid\":1,\"deptId\":null,\"deptName\":null,\"createdTime\":null,\"modifiedTime\":null,\"createdUser\":null,\"modifiedUser\":null,\"sex\":\"女\",\"birthday\":\"1998-09-22\"}]', '9', '0:0:0:0:0:0:0:1', '2021-04-15 14:03:29');
INSERT INTO `sys_logs` VALUES ('282', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-04-15 14:06:02');
INSERT INTO `sys_logs` VALUES ('283', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2021-04-15 14:06:07');
INSERT INTO `sys_logs` VALUES ('284', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-04-15 14:06:08');
INSERT INTO `sys_logs` VALUES ('285', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-04-15 14:06:11');
INSERT INTO `sys_logs` VALUES ('286', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2021-04-15 14:06:12');
INSERT INTO `sys_logs` VALUES ('287', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '3', '0:0:0:0:0:0:0:1', '2021-04-15 14:06:25');
INSERT INTO `sys_logs` VALUES ('288', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-04-15 15:41:21');
INSERT INTO `sys_logs` VALUES ('289', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2021-04-15 15:41:24');
INSERT INTO `sys_logs` VALUES ('290', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-04-15 15:45:48');
INSERT INTO `sys_logs` VALUES ('291', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-04-15 15:46:04');
INSERT INTO `sys_logs` VALUES ('292', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '9', '0:0:0:0:0:0:0:1', '2021-04-15 15:46:41');
INSERT INTO `sys_logs` VALUES ('293', '1', '修改密码', 'com.chen.service.impl.SysUserServiceImpl.updatePassword', '[\"1\",\"11\",\"11\"]', '9', '0:0:0:0:0:0:0:1', '2021-04-15 15:47:34');
INSERT INTO `sys_logs` VALUES ('294', '1', '修改自己个人信息', 'com.chen.service.impl.SysUserServiceImpl.updateUserInfo', '[1,{\"id\":1,\"username\":\"1\",\"password\":null,\"salt\":null,\"mobile\":\"18866668888\",\"email\":\"gangsterchen@163.com\",\"valid\":1,\"deptId\":null,\"deptName\":null,\"createdTime\":null,\"modifiedTime\":null,\"createdUser\":null,\"modifiedUser\":null,\"sex\":\"男\",\"birthday\":\"1998-09-22\"}]', '4', '0:0:0:0:0:0:0:1', '2021-04-15 15:47:48');
INSERT INTO `sys_logs` VALUES ('295', '1', '修改密码', 'com.chen.service.impl.SysUserServiceImpl.updatePassword', '[\"11\",\"1\",\"1\"]', '44', '0:0:0:0:0:0:0:1', '2021-04-16 12:12:36');
INSERT INTO `sys_logs` VALUES ('296', '1', '修改密码', 'com.chen.service.impl.SysUserServiceImpl.updatePassword', '[\"1\",\"11\",\"11\"]', '13', '127.0.0.1', '2021-04-19 09:46:52');
INSERT INTO `sys_logs` VALUES ('297', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '73', '0:0:0:0:0:0:0:1', '2021-04-19 13:14:08');
INSERT INTO `sys_logs` VALUES ('298', '1', '查询用户信息', 'com.chen.service.impl.SysUserServiceImpl.findById', '[1]', '4', '0:0:0:0:0:0:0:1', '2021-04-19 13:15:16');
INSERT INTO `sys_logs` VALUES ('299', '1', '修改用户信息', 'com.chen.service.impl.SysUserServiceImpl.updateObject', '[{\"id\":1,\"username\":\"1\",\"password\":null,\"salt\":null,\"mobile\":\"18866668888\",\"email\":\"910326532@qq.com\",\"valid\":1,\"deptId\":2,\"deptName\":null,\"createdTime\":null,\"modifiedTime\":null,\"createdUser\":null,\"modifiedUser\":null,\"sex\":null,\"birthday\":null},[47]]', '10', '0:0:0:0:0:0:0:1', '2021-04-19 13:15:39');
INSERT INTO `sys_logs` VALUES ('300', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '8', '0:0:0:0:0:0:0:1', '2021-04-19 13:15:40');
INSERT INTO `sys_logs` VALUES ('301', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '13', '0:0:0:0:0:0:0:1', '2021-04-19 13:18:49');
INSERT INTO `sys_logs` VALUES ('302', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '50', '0:0:0:0:0:0:0:1', '2021-04-19 13:19:26');
INSERT INTO `sys_logs` VALUES ('303', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '10', '0:0:0:0:0:0:0:1', '2021-04-19 13:19:27');
INSERT INTO `sys_logs` VALUES ('304', '1', '日志分页查询', 'com.chen.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '6', '0:0:0:0:0:0:0:1', '2021-04-19 13:20:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

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
INSERT INTO `sys_notices` VALUES ('13', '沙尘暴啦', '沙尘暴啦', null, 'admin', '1', '2021-02-07 13:45:44', '2021-03-29 09:56:57');
INSERT INTO `sys_notices` VALUES ('14', '1', '1', null, '1', null, '2021-03-29 10:03:01', '2021-03-29 10:03:01');
INSERT INTO `sys_notices` VALUES ('15', '明天就要中期检查了', '希望别出奇奇怪怪的bug！！', null, '1', '1', '2021-04-14 11:55:48', '2021-04-14 11:56:04');
INSERT INTO `sys_notices` VALUES ('16', 'qwe', 'qwe', null, '1', null, '2021-04-15 15:48:08', '2021-04-15 15:48:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('47', '超级管理员', '负责系统所有模块的管理', '2020-04-29 10:59:45', '2021-03-29 09:45:48', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('48', '校财务', '负责对馆在校内开销的结算', '2020-04-29 11:02:01', '2021-03-29 09:45:39', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('49', '馆内客服', '负责馆内问题的答疑和引导', '2020-04-29 16:05:58', '2021-03-29 09:45:35', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('50', '安全保卫员', '负责场馆内的秩序保持工作', '2021-01-27 20:26:06', '2021-03-29 09:45:30', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('51', '保洁员', '负责场内环境的清洁', '2021-01-27 20:35:04', '2021-03-29 09:45:21', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('52', '校督察员', '负责定期对馆内各项指标进行检查', '2021-03-29 09:46:35', '2021-03-29 09:46:35', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('53', '学生用户', '核心用户', '2021-03-29 09:47:21', '2021-03-29 09:47:38', 'admin', 'admin');

-- ----------------------------
-- Table structure for sys_role_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menus`;
CREATE TABLE `sys_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1763 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

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
INSERT INTO `sys_role_menus` VALUES ('1658', '51', '8');
INSERT INTO `sys_role_menus` VALUES ('1659', '51', '145');
INSERT INTO `sys_role_menus` VALUES ('1660', '51', '151');
INSERT INTO `sys_role_menus` VALUES ('1661', '51', '146');
INSERT INTO `sys_role_menus` VALUES ('1662', '51', '152');
INSERT INTO `sys_role_menus` VALUES ('1663', '51', '153');
INSERT INTO `sys_role_menus` VALUES ('1664', '51', '154');
INSERT INTO `sys_role_menus` VALUES ('1665', '50', '8');
INSERT INTO `sys_role_menus` VALUES ('1666', '50', '45');
INSERT INTO `sys_role_menus` VALUES ('1667', '50', '119');
INSERT INTO `sys_role_menus` VALUES ('1668', '50', '47');
INSERT INTO `sys_role_menus` VALUES ('1669', '50', '120');
INSERT INTO `sys_role_menus` VALUES ('1670', '50', '145');
INSERT INTO `sys_role_menus` VALUES ('1671', '50', '151');
INSERT INTO `sys_role_menus` VALUES ('1672', '50', '146');
INSERT INTO `sys_role_menus` VALUES ('1673', '50', '152');
INSERT INTO `sys_role_menus` VALUES ('1674', '50', '153');
INSERT INTO `sys_role_menus` VALUES ('1675', '50', '154');
INSERT INTO `sys_role_menus` VALUES ('1676', '49', '8');
INSERT INTO `sys_role_menus` VALUES ('1677', '49', '25');
INSERT INTO `sys_role_menus` VALUES ('1678', '49', '143');
INSERT INTO `sys_role_menus` VALUES ('1679', '49', '45');
INSERT INTO `sys_role_menus` VALUES ('1680', '49', '119');
INSERT INTO `sys_role_menus` VALUES ('1681', '49', '126');
INSERT INTO `sys_role_menus` VALUES ('1682', '49', '127');
INSERT INTO `sys_role_menus` VALUES ('1683', '49', '137');
INSERT INTO `sys_role_menus` VALUES ('1684', '49', '46');
INSERT INTO `sys_role_menus` VALUES ('1685', '49', '115');
INSERT INTO `sys_role_menus` VALUES ('1686', '49', '47');
INSERT INTO `sys_role_menus` VALUES ('1687', '49', '120');
INSERT INTO `sys_role_menus` VALUES ('1688', '49', '128');
INSERT INTO `sys_role_menus` VALUES ('1689', '49', '129');
INSERT INTO `sys_role_menus` VALUES ('1690', '49', '130');
INSERT INTO `sys_role_menus` VALUES ('1691', '49', '145');
INSERT INTO `sys_role_menus` VALUES ('1692', '49', '151');
INSERT INTO `sys_role_menus` VALUES ('1693', '49', '146');
INSERT INTO `sys_role_menus` VALUES ('1694', '49', '152');
INSERT INTO `sys_role_menus` VALUES ('1695', '49', '153');
INSERT INTO `sys_role_menus` VALUES ('1696', '49', '154');
INSERT INTO `sys_role_menus` VALUES ('1697', '48', '8');
INSERT INTO `sys_role_menus` VALUES ('1698', '48', '25');
INSERT INTO `sys_role_menus` VALUES ('1699', '48', '143');
INSERT INTO `sys_role_menus` VALUES ('1700', '48', '45');
INSERT INTO `sys_role_menus` VALUES ('1701', '48', '119');
INSERT INTO `sys_role_menus` VALUES ('1702', '48', '46');
INSERT INTO `sys_role_menus` VALUES ('1703', '48', '115');
INSERT INTO `sys_role_menus` VALUES ('1704', '48', '47');
INSERT INTO `sys_role_menus` VALUES ('1705', '48', '120');
INSERT INTO `sys_role_menus` VALUES ('1706', '48', '145');
INSERT INTO `sys_role_menus` VALUES ('1707', '48', '151');
INSERT INTO `sys_role_menus` VALUES ('1708', '48', '146');
INSERT INTO `sys_role_menus` VALUES ('1709', '48', '152');
INSERT INTO `sys_role_menus` VALUES ('1710', '48', '153');
INSERT INTO `sys_role_menus` VALUES ('1711', '48', '154');
INSERT INTO `sys_role_menus` VALUES ('1712', '47', '8');
INSERT INTO `sys_role_menus` VALUES ('1713', '47', '25');
INSERT INTO `sys_role_menus` VALUES ('1714', '47', '131');
INSERT INTO `sys_role_menus` VALUES ('1715', '47', '143');
INSERT INTO `sys_role_menus` VALUES ('1716', '47', '45');
INSERT INTO `sys_role_menus` VALUES ('1717', '47', '119');
INSERT INTO `sys_role_menus` VALUES ('1718', '47', '126');
INSERT INTO `sys_role_menus` VALUES ('1719', '47', '127');
INSERT INTO `sys_role_menus` VALUES ('1720', '47', '137');
INSERT INTO `sys_role_menus` VALUES ('1721', '47', '46');
INSERT INTO `sys_role_menus` VALUES ('1722', '47', '115');
INSERT INTO `sys_role_menus` VALUES ('1723', '47', '116');
INSERT INTO `sys_role_menus` VALUES ('1724', '47', '117');
INSERT INTO `sys_role_menus` VALUES ('1725', '47', '118');
INSERT INTO `sys_role_menus` VALUES ('1726', '47', '47');
INSERT INTO `sys_role_menus` VALUES ('1727', '47', '120');
INSERT INTO `sys_role_menus` VALUES ('1728', '47', '128');
INSERT INTO `sys_role_menus` VALUES ('1729', '47', '129');
INSERT INTO `sys_role_menus` VALUES ('1730', '47', '130');
INSERT INTO `sys_role_menus` VALUES ('1731', '47', '145');
INSERT INTO `sys_role_menus` VALUES ('1732', '47', '151');
INSERT INTO `sys_role_menus` VALUES ('1733', '47', '146');
INSERT INTO `sys_role_menus` VALUES ('1734', '47', '152');
INSERT INTO `sys_role_menus` VALUES ('1735', '47', '153');
INSERT INTO `sys_role_menus` VALUES ('1736', '47', '154');
INSERT INTO `sys_role_menus` VALUES ('1737', '52', '8');
INSERT INTO `sys_role_menus` VALUES ('1738', '52', '25');
INSERT INTO `sys_role_menus` VALUES ('1739', '52', '143');
INSERT INTO `sys_role_menus` VALUES ('1740', '52', '45');
INSERT INTO `sys_role_menus` VALUES ('1741', '52', '119');
INSERT INTO `sys_role_menus` VALUES ('1742', '52', '46');
INSERT INTO `sys_role_menus` VALUES ('1743', '52', '115');
INSERT INTO `sys_role_menus` VALUES ('1744', '52', '47');
INSERT INTO `sys_role_menus` VALUES ('1745', '52', '120');
INSERT INTO `sys_role_menus` VALUES ('1746', '52', '145');
INSERT INTO `sys_role_menus` VALUES ('1747', '52', '151');
INSERT INTO `sys_role_menus` VALUES ('1748', '52', '146');
INSERT INTO `sys_role_menus` VALUES ('1749', '52', '152');
INSERT INTO `sys_role_menus` VALUES ('1750', '52', '153');
INSERT INTO `sys_role_menus` VALUES ('1751', '52', '154');
INSERT INTO `sys_role_menus` VALUES ('1756', '53', '8');
INSERT INTO `sys_role_menus` VALUES ('1757', '53', '145');
INSERT INTO `sys_role_menus` VALUES ('1758', '53', '151');
INSERT INTO `sys_role_menus` VALUES ('1759', '53', '146');
INSERT INTO `sys_role_menus` VALUES ('1760', '53', '152');
INSERT INTO `sys_role_menus` VALUES ('1761', '53', '153');
INSERT INTO `sys_role_menus` VALUES ('1762', '53', '154');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_seats
-- ----------------------------
INSERT INTO `sys_seats` VALUES ('1', '一楼', null, null, '2021-02-08', '2021-02-08', 'admin', 'admin', null, null);
INSERT INTO `sys_seats` VALUES ('2', '二楼', null, null, '2021-02-08', '2021-02-08', null, null, null, null);
INSERT INTO `sys_seats` VALUES ('3', '三楼', null, null, '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('4', '东区', '1', '1', '2021-02-08', '2021-04-16', null, null, null, '2021-04-16 12:16:05');
INSERT INTO `sys_seats` VALUES ('5', '东区', '1', '2', '2021-02-08', '2021-04-14', null, null, 'baojie', '2021-04-14 12:19:10');
INSERT INTO `sys_seats` VALUES ('6', '东区', '1', '1', '2021-02-08', '2021-02-09', null, null, null, '2021-02-09 12:18:48');
INSERT INTO `sys_seats` VALUES ('7', '东区', '1', '2', '2021-02-08', '2021-04-15', null, null, 'stu', '2021-04-15 15:49:17');
INSERT INTO `sys_seats` VALUES ('8', '东区', '1', '1', '2021-02-08', '2021-02-09', null, null, null, '2021-02-09 12:18:27');
INSERT INTO `sys_seats` VALUES ('9', '西区', '1', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('10', '西区', '1', '1', '2021-02-08', null, null, null, null, null);
INSERT INTO `sys_seats` VALUES ('11', '西区', '1', '1', '2021-02-08', '2021-02-09', null, null, null, '2021-02-09 12:18:42');
INSERT INTO `sys_seats` VALUES ('12', '西区', '1', '2', '2021-02-08', '2021-04-16', null, null, '1', '2021-04-16 12:16:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('1', '1', 'cc5c7bb5ce250ed1b74511d1a6fb79bf', '4bccac75-576c-4e0a-901c-023419517e21', '910326532@qq.com', '18866668888', '1', '2', null, '2021-04-19 13:15:39', null, null, '男', '1998-09-22');
INSERT INTO `sys_users` VALUES ('24', 'baojie', '00dd4bcc11a58099ae2788711137ada1', '7b94ecd4-4bfc-4530-b7c0-1cde58e08677', '910326532@qq.com', '13988886666', '1', '9', '2021-03-29 09:49:39', '2021-03-29 09:52:03', null, null, '女', '2021-03-16');
INSERT INTO `sys_users` VALUES ('25', 'stu', 'b5d7ca4496fcc4fb2a307000f7958405', 'a50b7a79-e9eb-418c-97dd-f84646b99e68', '910326532@qq.com', '13947965819', '1', '12', '2021-04-15 15:46:40', '2021-04-15 15:46:40', null, null, null, '');

-- ----------------------------
-- Table structure for sys_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE `sys_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES ('70', '18', '49');
INSERT INTO `sys_user_roles` VALUES ('71', '17', '48');
INSERT INTO `sys_user_roles` VALUES ('72', '16', '47');
INSERT INTO `sys_user_roles` VALUES ('74', '20', '48');
INSERT INTO `sys_user_roles` VALUES ('76', '19', '49');
INSERT INTO `sys_user_roles` VALUES ('80', '21', '51');
INSERT INTO `sys_user_roles` VALUES ('83', '23', '47');
INSERT INTO `sys_user_roles` VALUES ('85', '24', '51');
INSERT INTO `sys_user_roles` VALUES ('86', '25', '53');
INSERT INTO `sys_user_roles` VALUES ('87', '1', '47');
