/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : 65001

 Date: 29/10/2019 19:18:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add 用户信息', 7, 'add_user');
INSERT INTO `auth_permission` VALUES (20, 'Can change 用户信息', 7, 'change_user');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 用户信息', 7, 'delete_user');
INSERT INTO `auth_permission` VALUES (22, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (23, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (24, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (25, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (26, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (27, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户信息', 7, 'view_user');
INSERT INTO `auth_permission` VALUES (29, 'Can add Bookmark', 8, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (30, 'Can change Bookmark', 8, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (31, 'Can delete Bookmark', 8, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (32, 'Can add User Setting', 9, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (33, 'Can change User Setting', 9, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (34, 'Can delete User Setting', 9, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (35, 'Can add User Widget', 10, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (36, 'Can change User Widget', 10, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (37, 'Can delete User Widget', 10, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (38, 'Can add log entry', 11, 'add_log');
INSERT INTO `auth_permission` VALUES (39, 'Can change log entry', 11, 'change_log');
INSERT INTO `auth_permission` VALUES (40, 'Can delete log entry', 11, 'delete_log');
INSERT INTO `auth_permission` VALUES (41, 'Can view Bookmark', 8, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (42, 'Can view log entry', 11, 'view_log');
INSERT INTO `auth_permission` VALUES (43, 'Can view User Setting', 9, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (44, 'Can view User Widget', 10, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (45, 'Can add 数据展示部门', 12, 'add_anl_data');
INSERT INTO `auth_permission` VALUES (46, 'Can change 数据展示部门', 12, 'change_anl_data');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 数据展示部门', 12, 'delete_anl_data');
INSERT INTO `auth_permission` VALUES (48, 'Can add 数据预处理部门', 13, 'add_hut_data');
INSERT INTO `auth_permission` VALUES (49, 'Can change 数据预处理部门', 13, 'change_hut_data');
INSERT INTO `auth_permission` VALUES (50, 'Can delete 数据预处理部门', 13, 'delete_hut_data');
INSERT INTO `auth_permission` VALUES (51, 'Can add 数据采集部门', 14, 'add_sel_data');
INSERT INTO `auth_permission` VALUES (52, 'Can change 数据采集部门', 14, 'change_sel_data');
INSERT INTO `auth_permission` VALUES (53, 'Can delete 数据采集部门', 14, 'delete_sel_data');
INSERT INTO `auth_permission` VALUES (54, 'Can view 数据展示部门', 12, 'view_anl_data');
INSERT INTO `auth_permission` VALUES (55, 'Can view 数据入库部门', 13, 'view_hut_data');
INSERT INTO `auth_permission` VALUES (56, 'Can view 数据采集部门', 14, 'view_sel_data');
INSERT INTO `auth_permission` VALUES (57, 'Can add 数据预处理部门', 15, 'add_pre_data');
INSERT INTO `auth_permission` VALUES (58, 'Can change 数据预处理部门', 15, 'change_pre_data');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 数据预处理部门', 15, 'delete_pre_data');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$100000$FMMvoamEDIdz$Hh/CcbBhnlFhXtbAUImlubYJE33QEuxYmgV1rF2mDgs=', '2019-10-24 15:09:59.918127', 1, 'li', '', '', '1@1qq.com', 1, 1, '2019-10-24 14:42:40.861979');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$100000$n2CHgks6h2vT$99hVmtNZZ8ijA3c0br4noPyA8zWeW0bS6mfJAlS2cCE=', NULL, 0, '贾瑞辰', '', '', '', 0, 1, '2019-10-24 14:44:34.406485');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$100000$POPemVve33yb$LIy5TjXDmQ51nKB/Qpl1mfxSWvMkVJ1LN6NOyXnA788=', NULL, 0, '赵佳伟', '', '', '', 0, 1, '2019-10-24 14:45:05.142285');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$100000$Qxvu2TGs6qmQ$wicxWmkABc33izx6gorMmki911hgx9xC2FdFXDPHISA=', NULL, 0, '吴自强', '', '', '', 0, 1, '2019-10-24 14:45:28.385153');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$100000$2eR3eu41oefN$cIbNEoj//qlqLgD51UZibKfP91kr7WyLp8OtH/9uxaM=', '2019-10-02 06:00:00.000000', 1, 'kaer', '', '', '', 0, 1, '2019-10-24 14:45:00.000000');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$100000$d2caYOEkQSnu$XFxAWTAPF6OVcIHSjtlpngYX1YVtCVXTmi1n+w3Z280=', '2019-10-02 15:05:00.000000', 0, '施其君', '其君', '施', '167@163.com', 0, 1, '2019-10-24 14:46:00.000000');
INSERT INTO `auth_user` VALUES (7, 'pbkdf2_sha256$100000$m2KDfNCT92cg$IO0HTCXqqN3u0BWeP4611UB6MivTWhbgtTyQi6cvSRA=', '2019-10-26 00:00:00.000000', 0, '顾嘉铭', '嘉铭', '顾', 'gu@aliyun.com', 0, 1, '2019-10-24 14:47:00.000000');
INSERT INTO `auth_user` VALUES (8, 'pbkdf2_sha256$100000$N2NYXIHDLAZo$HUaTnxkDfsz4vQyo8CtuH73hWU8D+YV6lLQpnO9Tzrk=', '2019-10-24 08:44:00.000000', 0, '李欣健', '欣健', '李', '123@qq.com', 0, 1, '2019-10-24 14:47:00.000000');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$100000$pjvBKhRHVrCD$WQbeOe2dQCHnc0H23w8DRTk5REizXUlmnaaqFKrBMfg=', '2019-10-29 08:10:06.733023', 1, 'zhou', '', '', '1468@qq.com', 1, 1, '2019-10-24 15:13:54.587774');
INSERT INTO `auth_user` VALUES (10, 'pbkdf2_sha256$100000$3HJReo28Vltr$DDRBX5NmbwQYfTVodmrTT+4f+XtC4iM+owFb6/ZEh9o=', NULL, 0, 'admin', '', '', '', 0, 1, '2019-10-28 14:15:18.732833');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dept_anl_data
-- ----------------------------
DROP TABLE IF EXISTS `dept_anl_data`;
CREATE TABLE `dept_anl_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept_anl_data
-- ----------------------------
INSERT INTO `dept_anl_data` VALUES (1, '数据清洗成果', '这是面向客户的展示平台', 2, 1, '北京海淀区82号', '2019-10-28 14:16:00.000000');
INSERT INTO `dept_anl_data` VALUES (2, '数据应用', '奇思妙想', 10, 2, '北京海淀区82号', '2019-10-28 14:18:00.000000');

-- ----------------------------
-- Table structure for dept_hut_data
-- ----------------------------
DROP TABLE IF EXISTS `dept_hut_data`;
CREATE TABLE `dept_hut_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept_hut_data
-- ----------------------------
INSERT INTO `dept_hut_data` VALUES (1, '北京站', '2019-10-28 14:19:00.000000');
INSERT INTO `dept_hut_data` VALUES (2, '上海站', '2019-10-28 14:20:00.000000');
INSERT INTO `dept_hut_data` VALUES (3, '南京', '2019-10-01 14:20:00.000000');
INSERT INTO `dept_hut_data` VALUES (4, '广州站', '2019-06-10 10:10:00.000000');
INSERT INTO `dept_hut_data` VALUES (5, '青海站', '2019-10-28 14:21:00.000000');
INSERT INTO `dept_hut_data` VALUES (6, '武汉', '2019-09-10 14:22:00.000000');
INSERT INTO `dept_hut_data` VALUES (7, '长春', '2019-10-28 10:05:00.000000');
INSERT INTO `dept_hut_data` VALUES (8, '郑州站', '2019-10-28 14:23:00.000000');
INSERT INTO `dept_hut_data` VALUES (9, '广西站', '2019-10-28 14:23:00.000000');

-- ----------------------------
-- Table structure for dept_pre_data
-- ----------------------------
DROP TABLE IF EXISTS `dept_pre_data`;
CREATE TABLE `dept_pre_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept_pre_data
-- ----------------------------
INSERT INTO `dept_pre_data` VALUES (1, '海南部', '2019-10-28 14:21:00.000000');
INSERT INTO `dept_pre_data` VALUES (2, '北京部', '2019-10-28 14:21:00.000000');
INSERT INTO `dept_pre_data` VALUES (3, '青海部', '2019-10-28 14:21:00.000000');
INSERT INTO `dept_pre_data` VALUES (4, '广州部', '2019-10-28 14:22:00.000000');

-- ----------------------------
-- Table structure for dept_sel_data
-- ----------------------------
DROP TABLE IF EXISTS `dept_sel_data`;
CREATE TABLE `dept_sel_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept_sel_data
-- ----------------------------
INSERT INTO `dept_sel_data` VALUES (1, 'master', '总部', '2019-10-28 14:16:00.000000');
INSERT INTO `dept_sel_data` VALUES (2, 'branch', '分支', '2019-10-28 14:16:00.000000');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2019-10-24 14:44:34.560038', '2', '贾瑞辰', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (2, '2019-10-24 14:45:05.295898', '3', '赵佳伟', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (3, '2019-10-24 14:45:28.538738', '4', '吴自强', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (4, '2019-10-24 14:45:49.800901', '5', 'kaer', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (5, '2019-10-24 14:46:24.449277', '6', '施其君', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (6, '2019-10-24 14:47:05.186379', '7', '顾嘉铭', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (7, '2019-10-24 14:47:31.060211', '8', '李欣健', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (8, '2019-10-24 15:04:36.020996', '8', '李欣健', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (9, '2019-10-24 15:05:48.180054', '6', '施其君', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (10, '2019-10-24 15:06:49.022407', '7', '顾嘉铭', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (11, '2019-10-24 15:09:12.456974', '5', 'kaer', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (12, '2019-10-24 15:10:24.677912', '5', 'kaer', 2, '[{\"changed\": {\"fields\": [\"is_superuser\", \"last_login\"]}}]', 4, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (12, 'dept', 'anl_data');
INSERT INTO `django_content_type` VALUES (13, 'dept', 'hut_data');
INSERT INTO `django_content_type` VALUES (15, 'dept', 'pre_data');
INSERT INTO `django_content_type` VALUES (14, 'dept', 'sel_data');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'users', 'user');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (11, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (10, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-10-24 14:41:24.775413');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-10-24 14:41:33.438220');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-10-24 14:41:35.695193');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-10-24 14:41:35.791963');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2019-10-24 14:41:36.981754');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2019-10-24 14:41:37.894319');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2019-10-24 14:41:38.884660');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2019-10-24 14:41:38.956475');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2019-10-24 14:41:39.601740');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2019-10-24 14:41:39.641634');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2019-10-24 14:41:39.722454');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2019-10-24 14:41:41.690159');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2019-10-24 14:41:42.668556');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2019-10-24 14:41:43.345741');
INSERT INTO `django_migrations` VALUES (15, 'users', '0001_initial', '2019-10-24 14:41:43.794589');
INSERT INTO `django_migrations` VALUES (16, 'xadmin', '0001_initial', '2019-10-24 15:12:37.630501');
INSERT INTO `django_migrations` VALUES (17, 'xadmin', '0002_log', '2019-10-24 15:12:39.724900');
INSERT INTO `django_migrations` VALUES (18, 'xadmin', '0003_auto_20160715_0100', '2019-10-24 15:12:40.762173');
INSERT INTO `django_migrations` VALUES (19, 'dept', '0001_initial', '2019-10-28 13:28:34.995720');
INSERT INTO `django_migrations` VALUES (20, 'dept', '0002_auto_20191028_1406', '2019-10-28 14:06:23.288211');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_user
-- ----------------------------
DROP TABLE IF EXISTS `users_user`;
CREATE TABLE `users_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `adress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2019-10-28 14:15:19.001047', '127.0.0.1', '10', 'admin', 'create', '已添加。', 4, 9);
INSERT INTO `xadmin_log` VALUES (2, '2019-10-28 14:16:23.250212', '127.0.0.1', '1', 'master', 'create', '已添加。', 14, 9);
INSERT INTO `xadmin_log` VALUES (3, '2019-10-28 14:16:35.609073', '127.0.0.1', '2', 'branch', 'create', '已添加。', 14, 9);
INSERT INTO `xadmin_log` VALUES (4, '2019-10-28 14:18:18.631442', '127.0.0.1', '1', '数据清洗成果', 'create', '已添加。', 12, 9);
INSERT INTO `xadmin_log` VALUES (5, '2019-10-28 14:19:19.650349', '127.0.0.1', '2', '数据应用', 'create', '已添加。', 12, 9);
INSERT INTO `xadmin_log` VALUES (6, '2019-10-28 14:20:00.961751', '127.0.0.1', '1', '北京站', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (7, '2019-10-28 14:20:08.898043', '127.0.0.1', '2', '上海站', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (8, '2019-10-28 14:20:32.560446', '127.0.0.1', '3', '南京', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (9, '2019-10-28 14:21:07.274262', '127.0.0.1', '4', '广州站', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (10, '2019-10-28 14:21:17.378170', '127.0.0.1', '5', '青海站', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (11, '2019-10-28 14:21:39.505092', '127.0.0.1', '1', '海南部', 'create', '已添加。', 15, 9);
INSERT INTO `xadmin_log` VALUES (12, '2019-10-28 14:21:46.786501', '127.0.0.1', '2', '北京', 'create', '已添加。', 15, 9);
INSERT INTO `xadmin_log` VALUES (13, '2019-10-28 14:21:53.920386', '127.0.0.1', '2', '北京部', 'change', '修改 name', 15, 9);
INSERT INTO `xadmin_log` VALUES (14, '2019-10-28 14:22:02.527884', '127.0.0.1', '3', '青海部', 'create', '已添加。', 15, 9);
INSERT INTO `xadmin_log` VALUES (15, '2019-10-28 14:22:09.140599', '127.0.0.1', '4', '广州部', 'create', '已添加。', 15, 9);
INSERT INTO `xadmin_log` VALUES (16, '2019-10-28 14:22:46.692408', '127.0.0.1', '6', '武汉', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (17, '2019-10-28 14:23:08.789610', '127.0.0.1', '7', '长春', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (18, '2019-10-28 14:23:26.980190', '127.0.0.1', '8', '郑州站', 'create', '已添加。', 13, 9);
INSERT INTO `xadmin_log` VALUES (19, '2019-10-28 14:23:34.565424', '127.0.0.1', '9', '广西站', 'create', '已添加。', 13, 9);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 9);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
