/*
 Navicat Premium Data Transfer

 Source Server         : wamp
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : lisi_lisi

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 22/02/2019 17:19:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aparatmnets
-- ----------------------------
DROP TABLE IF EXISTS `aparatmnets`;
CREATE TABLE `aparatmnets`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `space` int(10) UNSIGNED NULL DEFAULT NULL,
  `floor_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  `rooms` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aparatmnets
-- ----------------------------
INSERT INTO `aparatmnets` VALUES (1, NULL, '2019-02-22 13:17:06', '2019-02-22 13:17:06', 'space', NULL, NULL, 20, NULL, 1, '[\"bedroom\",\"kitchen\",\"balcony\"]');

-- ----------------------------
-- Table structure for backups
-- ----------------------------
DROP TABLE IF EXISTS `backups`;
CREATE TABLE `backups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `file_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `backup_size` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `backups_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `backups_file_name_unique`(`file_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blocks
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` int(11) NULL DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `active` tinyint(1) NULL DEFAULT 1,
  `floors` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blocks_project_id_foreign`(`project_id`) USING BTREE,
  CONSTRAINT `blocks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blocks
-- ----------------------------
INSERT INTO `blocks` VALUES (1, NULL, '2019-02-22 12:26:34', '2019-02-22 13:01:08', 'Block title', NULL, NULL, 1, 1, 1, 2);
INSERT INTO `blocks` VALUES (2, NULL, '2019-02-22 13:00:58', '2019-02-22 13:00:58', 'block c', NULL, NULL, 0, 1, 1, 4);
INSERT INTO `blocks` VALUES (3, NULL, '2019-02-22 13:01:30', '2019-02-22 13:01:30', 'Block sd', NULL, NULL, 0, 2, 1, 4);
INSERT INTO `blocks` VALUES (4, NULL, '2019-02-22 13:01:46', '2019-02-22 13:01:46', 'block hotel', NULL, NULL, 0, 2, 1, 3);

-- ----------------------------
-- Table structure for catalogs
-- ----------------------------
DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE `catalogs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `text_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `text_ru` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image` int(11) NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for company_missions
-- ----------------------------
DROP TABLE IF EXISTS `company_missions`;
CREATE TABLE `company_missions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `text_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `text_ru` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image` int(11) NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for company_views
-- ----------------------------
DROP TABLE IF EXISTS `company_views`;
CREATE TABLE `company_views`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `text_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` int(11) NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `tags` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '[]',
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `departments_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'Administration', '[]', '#000', NULL, '2019-02-22 10:24:06', '2019-02-22 10:24:06');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `designation` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `gender` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Male',
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `employees_email_unique`(`email`) USING BTREE,
  INDEX `employees_dept_foreign`(`dept`) USING BTREE,
  CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'admin', 'Super Admin', 'Male', 'vaska@digitalmate.io', 1, NULL, '2019-02-22 10:24:25', '2019-02-22 10:24:25');

-- ----------------------------
-- Table structure for floors
-- ----------------------------
DROP TABLE IF EXISTS `floors`;
CREATE TABLE `floors`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `block_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `apartments` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `floors_block_id_foreign`(`block_id`) USING BTREE,
  CONSTRAINT `floors_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for green_zones
-- ----------------------------
DROP TABLE IF EXISTS `green_zones`;
CREATE TABLE `green_zones`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` int(11) NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for home_sliders
-- ----------------------------
DROP TABLE IF EXISTS `home_sliders`;
CREATE TABLE `home_sliders`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `text_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` int(11) NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_sliders
-- ----------------------------
INSERT INTO `home_sliders` VALUES (1, NULL, '2019-02-22 11:22:33', '2019-02-22 11:22:33', 'სლაიდერ', 'Slider', NULL, 2, 1);
INSERT INTO `home_sliders` VALUES (2, NULL, '2019-02-22 11:23:02', '2019-02-22 11:23:02', 'სლაიდერ 2', 'Slider 2', NULL, 3, 1);

-- ----------------------------
-- Table structure for la_configs
-- ----------------------------
DROP TABLE IF EXISTS `la_configs`;
CREATE TABLE `la_configs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of la_configs
-- ----------------------------
INSERT INTO `la_configs` VALUES (1, 'sitename', '', 'Admin', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (2, 'sitename_part1', '', 'Admin', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (3, 'sitename_part2', '', 'Skeleton', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (4, 'sitename_short', '', 'AS', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (5, 'site_description', '', 'Admin Panel Description', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (6, 'sidebar_search', '', '1', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (7, 'show_messages', '', '1', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (8, 'show_notifications', '', '1', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (9, 'show_tasks', '', '1', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (10, 'show_rightsidebar', '', '1', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (11, 'skin', '', 'skin-white', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (12, 'layout', '', 'fixed', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_configs` VALUES (13, 'default_email', '', 'test@example.com', '2019-02-22 10:24:06', '2019-02-22 10:24:06');

-- ----------------------------
-- Table structure for la_menus
-- ----------------------------
DROP TABLE IF EXISTS `la_menus`;
CREATE TABLE `la_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of la_menus
-- ----------------------------
INSERT INTO `la_menus` VALUES (1, 'Team', '#', 'fa-group', 'custom', 0, 1, '2019-02-22 10:24:05', '2019-02-22 10:24:05');
INSERT INTO `la_menus` VALUES (2, 'Users', 'users', 'fa-group', 'module', 1, 0, '2019-02-22 10:24:05', '2019-02-22 10:24:05');
INSERT INTO `la_menus` VALUES (3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 0, '2019-02-22 10:24:05', '2019-02-22 10:24:05');
INSERT INTO `la_menus` VALUES (4, 'Departments', 'departments', 'fa-tags', 'module', 1, 0, '2019-02-22 10:24:05', '2019-02-22 10:24:05');
INSERT INTO `la_menus` VALUES (5, 'Employees', 'employees', 'fa-group', 'module', 1, 0, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_menus` VALUES (6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 0, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_menus` VALUES (7, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 0, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `la_menus` VALUES (8, 'Tests', 'tests', 'fa fa-cube', 'module', 0, 0, '2019-02-22 10:29:20', '2019-02-22 10:29:20');
INSERT INTO `la_menus` VALUES (11, 'Navigations', 'navigations', 'fa fa-cube', 'module', 0, 0, '2019-02-22 10:59:00', '2019-02-22 10:59:00');
INSERT INTO `la_menus` VALUES (12, 'Home_sliders', 'home_sliders', 'fa fa-cube', 'module', 0, 0, '2019-02-22 11:08:10', '2019-02-22 11:08:10');
INSERT INTO `la_menus` VALUES (14, 'Green_zones', 'green_zones', 'fa fa-cube', 'module', 0, 0, '2019-02-22 11:14:32', '2019-02-22 11:14:32');
INSERT INTO `la_menus` VALUES (15, 'Catalogs', 'catalogs', 'fa fa-cube', 'module', 0, 0, '2019-02-22 11:27:14', '2019-02-22 11:27:14');
INSERT INTO `la_menus` VALUES (16, 'Company_views', 'company_views', 'fa fa-cube', 'module', 0, 0, '2019-02-22 11:34:47', '2019-02-22 11:34:47');
INSERT INTO `la_menus` VALUES (17, 'Company_Missions', 'company_missions', 'fa fa-cube', 'module', 0, 0, '2019-02-22 11:38:51', '2019-02-22 11:38:51');
INSERT INTO `la_menus` VALUES (18, 'Teams', 'teams', 'fa fa-cube', 'module', 0, 0, '2019-02-22 12:10:03', '2019-02-22 12:10:03');
INSERT INTO `la_menus` VALUES (19, 'Projects', 'projects', 'fa fa-cube', 'module', 0, 0, '2019-02-22 12:13:18', '2019-02-22 12:13:18');
INSERT INTO `la_menus` VALUES (20, 'Blocks', 'blocks', 'fa fa-cube', 'module', 0, 0, '2019-02-22 12:25:32', '2019-02-22 12:25:32');
INSERT INTO `la_menus` VALUES (21, 'Floors', 'floors', 'fa fa-cube', 'module', 0, 0, '2019-02-22 12:53:06', '2019-02-22 12:53:06');
INSERT INTO `la_menus` VALUES (22, 'Aparatmnets', 'aparatmnets', 'fa fa-cube', 'module', 0, 0, '2019-02-22 12:57:16', '2019-02-22 12:57:16');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_05_26_050000_create_modules_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_05_26_055000_create_module_field_types_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_05_26_060000_create_module_fields_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (5, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (6, '2014_12_01_000000_create_uploads_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_05_26_064006_create_departments_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_05_26_064007_create_employees_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_05_26_064446_create_roles_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_07_05_115343_create_role_user_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_07_07_134058_create_backups_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_07_07_134058_create_menus_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_09_10_163337_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (14, '2016_09_10_163520_create_permission_role_table', 1);
INSERT INTO `migrations` VALUES (15, '2016_09_22_105958_role_module_fields_table', 1);
INSERT INTO `migrations` VALUES (16, '2016_09_22_110008_role_module_table', 1);
INSERT INTO `migrations` VALUES (17, '2016_10_06_115413_create_la_configs_table', 1);

-- ----------------------------
-- Table structure for module_field_types
-- ----------------------------
DROP TABLE IF EXISTS `module_field_types`;
CREATE TABLE `module_field_types`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module_field_types
-- ----------------------------
INSERT INTO `module_field_types` VALUES (1, 'Address', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (2, 'Checkbox', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (3, 'Currency', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (4, 'Date', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (5, 'Datetime', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (6, 'Decimal', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (7, 'Dropdown', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (8, 'Email', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (9, 'File', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (10, 'Float', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (11, 'HTML', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (12, 'Image', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (13, 'Integer', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (14, 'Mobile', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (15, 'Multiselect', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (16, 'Name', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (17, 'Password', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (18, 'Radio', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (19, 'String', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (20, 'Taginput', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (21, 'Textarea', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (22, 'TextField', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (23, 'URL', '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_field_types` VALUES (24, 'Files', '2019-02-22 10:24:03', '2019-02-22 10:24:03');

-- ----------------------------
-- Table structure for module_fields
-- ----------------------------
DROP TABLE IF EXISTS `module_fields`;
CREATE TABLE `module_fields`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `colname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `defaultvalue` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `popup_vals` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `module_fields_module_foreign`(`module`) USING BTREE,
  INDEX `module_fields_field_type_foreign`(`field_type`) USING BTREE,
  CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module_fields
-- ----------------------------
INSERT INTO `module_fields` VALUES (1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_fields` VALUES (2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_fields` VALUES (3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_fields` VALUES (4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_fields` VALUES (5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2019-02-22 10:24:03', '2019-02-22 10:24:03');
INSERT INTO `module_fields` VALUES (6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (9, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (10, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (11, 'type', 'Type', 2, 13, 0, '0', 0, 20, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (12, 'size', 'Size', 2, 22, 0, '', 0, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (13, 'url', 'Url', 2, 19, 0, '', 0, 250, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (14, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (15, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (16, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (17, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (18, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (19, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (20, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (21, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (22, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (23, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (24, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (25, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (26, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (27, 'name', 'Name', 6, 16, 1, '', 0, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (28, 'file_name', 'File Name', 6, 19, 1, '', 0, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (29, 'backup_size', 'File Size', 6, 19, 0, '0', 0, 10, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (30, 'name', 'Name', 7, 16, 1, '', 1, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (31, 'display_name', 'Display Name', 7, 19, 0, '', 0, 250, 1, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (32, 'description', 'Description', 7, 21, 0, '', 0, 1000, 0, '', 0, '2019-02-22 10:24:04', '2019-02-22 10:24:04');
INSERT INTO `module_fields` VALUES (35, 'title', 'title', 9, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 10:29:05', '2019-02-22 10:29:05');
INSERT INTO `module_fields` VALUES (36, 'new_field', 'new_field', 9, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 10:30:23', '2019-02-22 10:30:23');
INSERT INTO `module_fields` VALUES (49, 'menu', 'menu', 9, 15, 0, '', 0, 0, 0, '[\"header\",\"burger\",\"footer\"]', 0, '2019-02-22 10:46:11', '2019-02-22 10:49:47');
INSERT INTO `module_fields` VALUES (50, 'menu_ka', 'menu ka', 16, 19, 0, '', 0, 256, 1, '', 0, '2019-02-22 10:57:19', '2019-02-22 10:57:19');
INSERT INTO `module_fields` VALUES (51, 'menu_en', 'menu en', 16, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 10:57:36', '2019-02-22 10:57:36');
INSERT INTO `module_fields` VALUES (52, 'menu_ru', 'menu ru', 16, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 10:57:51', '2019-02-22 10:57:51');
INSERT INTO `module_fields` VALUES (53, 'active', 'Active', 16, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 10:58:12', '2019-02-22 11:01:10');
INSERT INTO `module_fields` VALUES (54, 'menu_location', 'menu location', 16, 15, 0, '', 0, 0, 0, '[\"Menu\",\"Burger_Menu\"]', 0, '2019-02-22 10:59:49', '2019-02-22 10:59:49');
INSERT INTO `module_fields` VALUES (55, 'text_ka', 'text ka', 17, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:05:30', '2019-02-22 11:05:30');
INSERT INTO `module_fields` VALUES (56, 'text_en', 'text en', 17, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:06:09', '2019-02-22 11:06:09');
INSERT INTO `module_fields` VALUES (57, 'text_ru', 'text ru', 17, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:06:27', '2019-02-22 11:06:27');
INSERT INTO `module_fields` VALUES (58, 'image', 'Image', 17, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:07:52', '2019-02-22 11:07:52');
INSERT INTO `module_fields` VALUES (63, 'title_ka', 'Title ka', 19, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:13:24', '2019-02-22 11:13:24');
INSERT INTO `module_fields` VALUES (64, 'title_en', 'Title en', 19, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:13:38', '2019-02-22 11:13:38');
INSERT INTO `module_fields` VALUES (65, 'title_ru', 'Title ru', 19, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:13:55', '2019-02-22 11:13:55');
INSERT INTO `module_fields` VALUES (66, 'image', 'Image', 19, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:14:09', '2019-02-22 11:14:09');
INSERT INTO `module_fields` VALUES (67, 'active', 'Active', 19, 2, 0, 'false', 0, 0, 0, '', 0, '2019-02-22 11:14:22', '2019-02-22 11:14:22');
INSERT INTO `module_fields` VALUES (68, 'active', 'Active', 17, 2, 0, 'false', 0, 0, 1, '', 0, '2019-02-22 11:15:59', '2019-02-22 11:15:59');
INSERT INTO `module_fields` VALUES (69, 'text_ka', 'Catalog Title ka', 20, 21, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:24:54', '2019-02-22 11:25:46');
INSERT INTO `module_fields` VALUES (70, 'text_en', 'Catalog Title en', 20, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:26:05', '2019-02-22 11:26:05');
INSERT INTO `module_fields` VALUES (71, 'text_ru', 'Catalog Title ru', 20, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:26:25', '2019-02-22 11:26:25');
INSERT INTO `module_fields` VALUES (72, 'image', 'Image', 20, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:26:43', '2019-02-22 11:26:43');
INSERT INTO `module_fields` VALUES (73, 'active', 'Active', 20, 2, 0, 'false', 0, 0, 0, '', 0, '2019-02-22 11:27:04', '2019-02-22 11:27:04');
INSERT INTO `module_fields` VALUES (74, 'text_ka', 'Company View Text ka', 21, 22, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:33:04', '2019-02-22 11:33:04');
INSERT INTO `module_fields` VALUES (75, 'text_en', 'Company View Text en', 21, 22, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:33:28', '2019-02-22 11:33:28');
INSERT INTO `module_fields` VALUES (76, 'text_ru', 'Company View Text ru', 21, 22, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:33:49', '2019-02-22 11:33:49');
INSERT INTO `module_fields` VALUES (77, 'image', 'Image', 21, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:34:08', '2019-02-22 11:34:08');
INSERT INTO `module_fields` VALUES (78, 'active', 'Active', 21, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 11:34:30', '2019-02-22 11:34:30');
INSERT INTO `module_fields` VALUES (79, 'text_ka', 'Company Mission ka', 22, 21, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:35:56', '2019-02-22 11:36:47');
INSERT INTO `module_fields` VALUES (80, 'text_en', 'Company Mission en', 22, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:37:11', '2019-02-22 11:37:11');
INSERT INTO `module_fields` VALUES (81, 'text_ru', 'Company Mission ru', 22, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:37:20', '2019-02-22 11:37:20');
INSERT INTO `module_fields` VALUES (82, 'image', 'Image', 22, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 11:38:17', '2019-02-22 11:38:17');
INSERT INTO `module_fields` VALUES (83, 'active', 'Active', 22, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 11:38:38', '2019-02-22 11:38:38');
INSERT INTO `module_fields` VALUES (84, 'fullname_ka', 'Full name ka', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:50:59', '2019-02-22 11:50:59');
INSERT INTO `module_fields` VALUES (85, 'full_name en', 'Full name en', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:53:15', '2019-02-22 11:53:15');
INSERT INTO `module_fields` VALUES (86, 'Full name ru', 'Full name ru', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 11:53:27', '2019-02-22 11:53:27');
INSERT INTO `module_fields` VALUES (87, 'image', 'Image', 23, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 12:08:41', '2019-02-22 12:08:41');
INSERT INTO `module_fields` VALUES (88, 'position_ka', 'Position ka', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:09:00', '2019-02-22 12:09:00');
INSERT INTO `module_fields` VALUES (89, 'position_en', 'Position en', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:09:16', '2019-02-22 12:09:16');
INSERT INTO `module_fields` VALUES (90, 'position_ru', 'Position ru', 23, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:09:37', '2019-02-22 12:09:37');
INSERT INTO `module_fields` VALUES (91, 'active', 'Active', 23, 2, 0, 'true', 0, 0, 1, '', 0, '2019-02-22 12:09:54', '2019-02-22 12:09:54');
INSERT INTO `module_fields` VALUES (92, 'title_ka', 'Title ka', 24, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:11:18', '2019-02-22 12:11:18');
INSERT INTO `module_fields` VALUES (93, 'title_en', 'Title en', 24, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:11:28', '2019-02-22 12:11:28');
INSERT INTO `module_fields` VALUES (94, 'title_ru', 'Title ru', 24, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:11:44', '2019-02-22 12:11:44');
INSERT INTO `module_fields` VALUES (95, 'text_ka', 'Text ka', 24, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 12:12:12', '2019-02-22 12:12:12');
INSERT INTO `module_fields` VALUES (96, 'text_en', 'Text en', 24, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 12:12:28', '2019-02-22 12:12:28');
INSERT INTO `module_fields` VALUES (97, 'text_ru', 'Text ru', 24, 21, 0, '', 0, 0, 0, '', 0, '2019-02-22 12:12:51', '2019-02-22 12:12:51');
INSERT INTO `module_fields` VALUES (98, 'image', 'Image', 24, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 12:13:10', '2019-02-22 12:13:10');
INSERT INTO `module_fields` VALUES (99, 'title_ka', 'Block Title ka', 25, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:19:24', '2019-02-22 12:19:24');
INSERT INTO `module_fields` VALUES (100, 'title_en', 'Block Title en', 25, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:19:45', '2019-02-22 12:19:45');
INSERT INTO `module_fields` VALUES (101, 'title_ru', 'Block Title ru', 25, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:19:54', '2019-02-22 12:19:54');
INSERT INTO `module_fields` VALUES (102, 'image', 'Image', 25, 12, 0, '', 0, 0, 0, '', 0, '2019-02-22 12:24:29', '2019-02-22 12:24:29');
INSERT INTO `module_fields` VALUES (103, 'project_id', 'Project', 25, 7, 0, '', 0, 0, 0, '@projects', 0, '2019-02-22 12:25:05', '2019-02-22 12:25:05');
INSERT INTO `module_fields` VALUES (104, 'active', 'Active', 25, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 12:25:24', '2019-02-22 12:25:24');
INSERT INTO `module_fields` VALUES (105, 'floors', 'Floors', 25, 13, 0, '', 0, 11, 0, '', 0, '2019-02-22 12:28:49', '2019-02-22 12:28:49');
INSERT INTO `module_fields` VALUES (106, 'title_ka', 'Floor ka', 26, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:50:16', '2019-02-22 12:50:16');
INSERT INTO `module_fields` VALUES (107, 'title_en', 'Floor en', 26, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:50:48', '2019-02-22 12:50:48');
INSERT INTO `module_fields` VALUES (108, 'title_ru', 'Floor ru', 26, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:50:59', '2019-02-22 12:50:59');
INSERT INTO `module_fields` VALUES (109, 'block_id', 'Block', 26, 7, 0, '', 0, 0, 0, '@blocks', 0, '2019-02-22 12:51:34', '2019-02-22 12:51:34');
INSERT INTO `module_fields` VALUES (110, 'apartments', 'Appartmnets', 26, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:52:11', '2019-02-22 12:52:11');
INSERT INTO `module_fields` VALUES (111, 'title_ka', 'Title ka', 27, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:54:33', '2019-02-22 12:55:04');
INSERT INTO `module_fields` VALUES (112, 'title_en', 'Title en', 27, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:55:15', '2019-02-22 12:55:15');
INSERT INTO `module_fields` VALUES (113, 'title_ru', 'Title ru', 27, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:55:28', '2019-02-22 12:55:28');
INSERT INTO `module_fields` VALUES (114, 'space', 'Space', 27, 13, 0, '', 0, 11, 0, '', 0, '2019-02-22 12:56:10', '2019-02-22 12:56:10');
INSERT INTO `module_fields` VALUES (115, 'floor_id', 'Floor', 27, 19, 0, '', 0, 256, 0, '', 0, '2019-02-22 12:56:41', '2019-02-22 12:56:41');
INSERT INTO `module_fields` VALUES (116, 'active', 'Sold', 27, 2, 0, 'true', 0, 0, 0, '', 0, '2019-02-22 12:57:04', '2019-02-22 12:57:04');
INSERT INTO `module_fields` VALUES (117, 'rooms', 'Rooms', 27, 15, 0, '', 0, 0, 0, '[\"bedroom\",\"kitchen\",\"balcony\",\"toilet\"]', 0, '2019-02-22 12:59:43', '2019-02-22 12:59:43');

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES (1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2019-02-22 10:24:03', '2019-02-22 10:24:06');
INSERT INTO `modules` VALUES (2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2019-02-22 10:24:04', '2019-02-22 10:24:06');
INSERT INTO `modules` VALUES (3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2019-02-22 10:24:04', '2019-02-22 10:24:06');
INSERT INTO `modules` VALUES (4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2019-02-22 10:24:04', '2019-02-22 10:24:06');
INSERT INTO `modules` VALUES (5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2019-02-22 10:24:04', '2019-02-22 10:24:06');
INSERT INTO `modules` VALUES (6, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2019-02-22 10:24:04', '2019-02-22 10:24:06');
INSERT INTO `modules` VALUES (7, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2019-02-22 10:24:04', '2019-02-22 10:24:06');
INSERT INTO `modules` VALUES (9, 'Tests', 'Tests', 'tests', 'title', 'Test', 'TestsController', 'fa-cube', 1, '2019-02-22 10:28:53', '2019-02-22 10:29:20');
INSERT INTO `modules` VALUES (16, 'Navigations', 'Navigations', 'navigations', 'menu_ka', 'Navigation', 'NavigationsController', 'fa-cube', 1, '2019-02-22 10:51:16', '2019-02-22 10:59:00');
INSERT INTO `modules` VALUES (17, 'Home_sliders', 'Home_sliders', 'home_sliders', 'text_ka', 'Home_slider', 'Home_slidersController', 'fa-cube', 1, '2019-02-22 11:05:08', '2019-02-22 11:08:10');
INSERT INTO `modules` VALUES (19, 'Green_zones', 'Green_zones', 'green_zones', 'title_ka', 'Green_zone', 'Green_zonesController', 'fa-cube', 1, '2019-02-22 11:13:03', '2019-02-22 11:14:32');
INSERT INTO `modules` VALUES (20, 'Catalogs', 'Catalogs', 'catalogs', 'text_ka', 'Catalog', 'CatalogsController', 'fa-cube', 1, '2019-02-22 11:24:14', '2019-02-22 11:27:14');
INSERT INTO `modules` VALUES (21, 'Company_views', 'Company_views', 'company_views', 'text_ka', 'Company_view', 'Company_viewsController', 'fa-cube', 1, '2019-02-22 11:32:26', '2019-02-22 11:34:47');
INSERT INTO `modules` VALUES (22, 'Company_Missions', 'Company_Missions', 'company_missions', 'text_ka', 'Company_Mission', 'Company_MissionsController', 'fa-cube', 1, '2019-02-22 11:35:21', '2019-02-22 11:38:51');
INSERT INTO `modules` VALUES (23, 'Teams', 'Teams', 'teams', 'fullname_ka', 'Team', 'TeamsController', 'fa-cube', 1, '2019-02-22 11:50:07', '2019-02-22 12:10:03');
INSERT INTO `modules` VALUES (24, 'Projects', 'Projects', 'projects', 'title_ka', 'Project', 'ProjectsController', 'fa-cube', 1, '2019-02-22 12:10:48', '2019-02-22 12:13:18');
INSERT INTO `modules` VALUES (25, 'Blocks', 'Blocks', 'blocks', 'title_ka', 'Block', 'BlocksController', 'fa-cube', 1, '2019-02-22 12:18:57', '2019-02-22 12:25:32');
INSERT INTO `modules` VALUES (26, 'Floors', 'Floors', 'floors', 'title_ka', 'Floor', 'FloorsController', 'fa-cube', 1, '2019-02-22 12:42:58', '2019-02-22 12:53:06');
INSERT INTO `modules` VALUES (27, 'Aparatmnets', 'Aparatmnets', 'aparatmnets', 'title_ka', 'Aparatmnet', 'AparatmnetsController', 'fa-cube', 1, '2019-02-22 12:53:48', '2019-02-22 12:57:16');

-- ----------------------------
-- Table structure for navigations
-- ----------------------------
DROP TABLE IF EXISTS `navigations`;
CREATE TABLE `navigations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `menu_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `menu_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `menu_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  `menu_location` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navigations
-- ----------------------------
INSERT INTO `navigations` VALUES (1, NULL, '2019-02-22 11:00:22', '2019-02-22 11:00:30', 'მთავარი', 'Home', NULL, 1, '[\"Menu\"]');
INSERT INTO `navigations` VALUES (2, NULL, '2019-02-22 11:02:10', '2019-02-22 11:03:17', 'ჩვენს შესახებ', 'About', NULL, 1, '[\"Menu\"]');
INSERT INTO `navigations` VALUES (3, NULL, '2019-02-22 11:02:23', '2019-02-22 11:02:23', 'ბურგერ', NULL, NULL, 1, '[\"Burger_Menu\"]');
INSERT INTO `navigations` VALUES (4, NULL, '2019-02-22 11:02:37', '2019-02-22 11:02:37', 'ბურგერ მენუ', NULL, NULL, 1, '[\"Menu\",\"Burger_Menu\"]');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE,
  INDEX `password_resets_token_index`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `permission_role_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (1, 2);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `display_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2019-02-22 10:24:06', '2019-02-22 10:24:06');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_ka` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `text_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `text_ru` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES (1, NULL, '2019-02-22 12:26:14', '2019-02-22 12:26:14', 'lisi greens', 'lisi greens english', NULL, NULL, NULL, NULL, 4);
INSERT INTO `projects` VALUES (2, NULL, '2019-02-22 13:00:39', '2019-02-22 13:00:39', 'lisi kokhta', NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for role_module
-- ----------------------------
DROP TABLE IF EXISTS `role_module`;
CREATE TABLE `role_module`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_module_role_id_foreign`(`role_id`) USING BTREE,
  INDEX `role_module_module_id_foreign`(`module_id`) USING BTREE,
  CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_module
-- ----------------------------
INSERT INTO `role_module` VALUES (1, 1, 1, 1, 1, 1, 1, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module` VALUES (2, 1, 2, 1, 1, 1, 1, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module` VALUES (3, 1, 3, 1, 1, 1, 1, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module` VALUES (4, 1, 4, 1, 1, 1, 1, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module` VALUES (5, 1, 5, 1, 1, 1, 1, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module` VALUES (6, 1, 6, 1, 1, 1, 1, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module` VALUES (7, 1, 7, 1, 1, 1, 1, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module` VALUES (8, 2, 1, 1, 0, 0, 0, '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module` VALUES (9, 2, 2, 1, 0, 0, 0, '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module` VALUES (10, 2, 3, 1, 0, 0, 0, '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module` VALUES (11, 2, 4, 1, 0, 0, 0, '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module` VALUES (12, 2, 5, 1, 0, 0, 0, '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module` VALUES (13, 2, 6, 1, 0, 0, 0, '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module` VALUES (14, 2, 7, 1, 0, 0, 0, '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module` VALUES (15, 1, 9, 1, 1, 1, 1, '2019-02-22 10:29:20', '2019-02-22 10:29:20');
INSERT INTO `role_module` VALUES (18, 1, 16, 1, 1, 1, 1, '2019-02-22 10:59:00', '2019-02-22 10:59:00');
INSERT INTO `role_module` VALUES (19, 1, 17, 1, 1, 1, 1, '2019-02-22 11:08:10', '2019-02-22 11:08:10');
INSERT INTO `role_module` VALUES (21, 1, 19, 1, 1, 1, 1, '2019-02-22 11:14:32', '2019-02-22 11:14:32');
INSERT INTO `role_module` VALUES (22, 1, 20, 1, 1, 1, 1, '2019-02-22 11:27:14', '2019-02-22 11:27:14');
INSERT INTO `role_module` VALUES (23, 1, 21, 1, 1, 1, 1, '2019-02-22 11:34:47', '2019-02-22 11:34:47');
INSERT INTO `role_module` VALUES (24, 1, 22, 1, 1, 1, 1, '2019-02-22 11:38:51', '2019-02-22 11:38:51');
INSERT INTO `role_module` VALUES (25, 1, 23, 1, 1, 1, 1, '2019-02-22 12:10:03', '2019-02-22 12:10:03');
INSERT INTO `role_module` VALUES (26, 1, 24, 1, 1, 1, 1, '2019-02-22 12:13:18', '2019-02-22 12:13:18');
INSERT INTO `role_module` VALUES (27, 1, 25, 1, 1, 1, 1, '2019-02-22 12:25:32', '2019-02-22 12:25:32');
INSERT INTO `role_module` VALUES (28, 1, 26, 1, 1, 1, 1, '2019-02-22 12:53:06', '2019-02-22 12:53:06');
INSERT INTO `role_module` VALUES (29, 1, 27, 1, 1, 1, 1, '2019-02-22 12:57:16', '2019-02-22 12:57:16');

-- ----------------------------
-- Table structure for role_module_fields
-- ----------------------------
DROP TABLE IF EXISTS `role_module_fields`;
CREATE TABLE `role_module_fields`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_module_fields_role_id_foreign`(`role_id`) USING BTREE,
  INDEX `role_module_fields_field_id_foreign`(`field_id`) USING BTREE,
  CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_module_fields
-- ----------------------------
INSERT INTO `role_module_fields` VALUES (1, 1, 1, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (2, 1, 2, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (3, 1, 3, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (4, 1, 4, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (5, 1, 5, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (6, 1, 6, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (7, 1, 7, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (8, 1, 8, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (9, 1, 9, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (10, 1, 10, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (11, 1, 11, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (12, 1, 12, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (13, 1, 13, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (14, 1, 14, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (15, 1, 15, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (16, 1, 16, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (17, 1, 17, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (18, 1, 18, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (19, 1, 19, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (20, 1, 20, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (21, 1, 21, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (22, 1, 22, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (23, 1, 23, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (24, 1, 24, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (25, 1, 25, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (26, 1, 26, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (27, 1, 27, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (28, 1, 28, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (29, 1, 29, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (30, 1, 30, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (31, 1, 31, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (32, 1, 32, 'write', '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `role_module_fields` VALUES (35, 2, 1, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (36, 2, 2, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (37, 2, 3, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (38, 2, 4, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (39, 2, 5, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (40, 2, 6, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (41, 2, 7, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (42, 2, 8, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (43, 2, 9, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (44, 2, 10, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (45, 2, 11, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (46, 2, 12, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (47, 2, 13, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (48, 2, 14, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (49, 2, 15, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (50, 2, 16, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (51, 2, 17, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (52, 2, 18, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (53, 2, 19, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (54, 2, 20, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (55, 2, 21, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (56, 2, 22, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (57, 2, 23, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (58, 2, 24, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (59, 2, 25, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (60, 2, 26, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (61, 2, 27, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (62, 2, 28, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (63, 2, 29, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (64, 2, 30, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (65, 2, 31, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (66, 2, 32, 'readonly', '2019-02-22 10:28:33', '2019-02-22 10:28:33');
INSERT INTO `role_module_fields` VALUES (67, 1, 35, 'write', '2019-02-22 10:29:05', '2019-02-22 10:29:05');
INSERT INTO `role_module_fields` VALUES (68, 1, 36, 'write', '2019-02-22 10:30:24', '2019-02-22 10:30:24');
INSERT INTO `role_module_fields` VALUES (81, 1, 49, 'write', '2019-02-22 10:46:11', '2019-02-22 10:46:11');
INSERT INTO `role_module_fields` VALUES (82, 1, 50, 'write', '2019-02-22 10:57:19', '2019-02-22 10:57:19');
INSERT INTO `role_module_fields` VALUES (83, 1, 51, 'write', '2019-02-22 10:57:36', '2019-02-22 10:57:36');
INSERT INTO `role_module_fields` VALUES (84, 1, 52, 'write', '2019-02-22 10:57:51', '2019-02-22 10:57:51');
INSERT INTO `role_module_fields` VALUES (85, 1, 53, 'write', '2019-02-22 10:58:12', '2019-02-22 10:58:12');
INSERT INTO `role_module_fields` VALUES (86, 1, 54, 'write', '2019-02-22 10:59:49', '2019-02-22 10:59:49');
INSERT INTO `role_module_fields` VALUES (87, 1, 55, 'write', '2019-02-22 11:05:30', '2019-02-22 11:05:30');
INSERT INTO `role_module_fields` VALUES (88, 1, 56, 'write', '2019-02-22 11:06:09', '2019-02-22 11:06:09');
INSERT INTO `role_module_fields` VALUES (89, 1, 57, 'write', '2019-02-22 11:06:27', '2019-02-22 11:06:27');
INSERT INTO `role_module_fields` VALUES (90, 1, 58, 'write', '2019-02-22 11:07:52', '2019-02-22 11:07:52');
INSERT INTO `role_module_fields` VALUES (95, 1, 63, 'write', '2019-02-22 11:13:25', '2019-02-22 11:13:25');
INSERT INTO `role_module_fields` VALUES (96, 1, 64, 'write', '2019-02-22 11:13:38', '2019-02-22 11:13:38');
INSERT INTO `role_module_fields` VALUES (97, 1, 65, 'write', '2019-02-22 11:13:55', '2019-02-22 11:13:55');
INSERT INTO `role_module_fields` VALUES (98, 1, 66, 'write', '2019-02-22 11:14:09', '2019-02-22 11:14:09');
INSERT INTO `role_module_fields` VALUES (99, 1, 67, 'write', '2019-02-22 11:14:22', '2019-02-22 11:14:22');
INSERT INTO `role_module_fields` VALUES (100, 1, 68, 'write', '2019-02-22 11:15:59', '2019-02-22 11:15:59');
INSERT INTO `role_module_fields` VALUES (101, 1, 69, 'write', '2019-02-22 11:24:54', '2019-02-22 11:24:54');
INSERT INTO `role_module_fields` VALUES (102, 1, 70, 'write', '2019-02-22 11:26:05', '2019-02-22 11:26:05');
INSERT INTO `role_module_fields` VALUES (103, 1, 71, 'write', '2019-02-22 11:26:25', '2019-02-22 11:26:25');
INSERT INTO `role_module_fields` VALUES (104, 1, 72, 'write', '2019-02-22 11:26:43', '2019-02-22 11:26:43');
INSERT INTO `role_module_fields` VALUES (105, 1, 73, 'write', '2019-02-22 11:27:04', '2019-02-22 11:27:04');
INSERT INTO `role_module_fields` VALUES (106, 1, 74, 'write', '2019-02-22 11:33:07', '2019-02-22 11:33:07');
INSERT INTO `role_module_fields` VALUES (107, 1, 75, 'write', '2019-02-22 11:33:28', '2019-02-22 11:33:28');
INSERT INTO `role_module_fields` VALUES (108, 1, 76, 'write', '2019-02-22 11:33:49', '2019-02-22 11:33:49');
INSERT INTO `role_module_fields` VALUES (109, 1, 77, 'write', '2019-02-22 11:34:08', '2019-02-22 11:34:08');
INSERT INTO `role_module_fields` VALUES (110, 1, 78, 'write', '2019-02-22 11:34:30', '2019-02-22 11:34:30');
INSERT INTO `role_module_fields` VALUES (111, 1, 79, 'write', '2019-02-22 11:35:56', '2019-02-22 11:35:56');
INSERT INTO `role_module_fields` VALUES (112, 1, 80, 'write', '2019-02-22 11:37:11', '2019-02-22 11:37:11');
INSERT INTO `role_module_fields` VALUES (113, 1, 81, 'write', '2019-02-22 11:37:20', '2019-02-22 11:37:20');
INSERT INTO `role_module_fields` VALUES (114, 1, 82, 'write', '2019-02-22 11:38:17', '2019-02-22 11:38:17');
INSERT INTO `role_module_fields` VALUES (115, 1, 83, 'write', '2019-02-22 11:38:38', '2019-02-22 11:38:38');
INSERT INTO `role_module_fields` VALUES (116, 1, 84, 'write', '2019-02-22 11:50:59', '2019-02-22 11:50:59');
INSERT INTO `role_module_fields` VALUES (117, 1, 85, 'write', '2019-02-22 11:53:15', '2019-02-22 11:53:15');
INSERT INTO `role_module_fields` VALUES (118, 1, 86, 'write', '2019-02-22 11:53:27', '2019-02-22 11:53:27');
INSERT INTO `role_module_fields` VALUES (119, 1, 87, 'write', '2019-02-22 12:08:41', '2019-02-22 12:08:41');
INSERT INTO `role_module_fields` VALUES (120, 1, 88, 'write', '2019-02-22 12:09:00', '2019-02-22 12:09:00');
INSERT INTO `role_module_fields` VALUES (121, 1, 89, 'write', '2019-02-22 12:09:16', '2019-02-22 12:09:16');
INSERT INTO `role_module_fields` VALUES (122, 1, 90, 'write', '2019-02-22 12:09:37', '2019-02-22 12:09:37');
INSERT INTO `role_module_fields` VALUES (123, 1, 91, 'write', '2019-02-22 12:09:54', '2019-02-22 12:09:54');
INSERT INTO `role_module_fields` VALUES (124, 1, 92, 'write', '2019-02-22 12:11:18', '2019-02-22 12:11:18');
INSERT INTO `role_module_fields` VALUES (125, 1, 93, 'write', '2019-02-22 12:11:28', '2019-02-22 12:11:28');
INSERT INTO `role_module_fields` VALUES (126, 1, 94, 'write', '2019-02-22 12:11:44', '2019-02-22 12:11:44');
INSERT INTO `role_module_fields` VALUES (127, 1, 95, 'write', '2019-02-22 12:12:12', '2019-02-22 12:12:12');
INSERT INTO `role_module_fields` VALUES (128, 1, 96, 'write', '2019-02-22 12:12:28', '2019-02-22 12:12:28');
INSERT INTO `role_module_fields` VALUES (129, 1, 97, 'write', '2019-02-22 12:12:51', '2019-02-22 12:12:51');
INSERT INTO `role_module_fields` VALUES (130, 1, 98, 'write', '2019-02-22 12:13:10', '2019-02-22 12:13:10');
INSERT INTO `role_module_fields` VALUES (131, 1, 99, 'write', '2019-02-22 12:19:24', '2019-02-22 12:19:24');
INSERT INTO `role_module_fields` VALUES (132, 1, 100, 'write', '2019-02-22 12:19:45', '2019-02-22 12:19:45');
INSERT INTO `role_module_fields` VALUES (133, 1, 101, 'write', '2019-02-22 12:19:54', '2019-02-22 12:19:54');
INSERT INTO `role_module_fields` VALUES (134, 1, 102, 'write', '2019-02-22 12:24:29', '2019-02-22 12:24:29');
INSERT INTO `role_module_fields` VALUES (135, 1, 103, 'write', '2019-02-22 12:25:05', '2019-02-22 12:25:05');
INSERT INTO `role_module_fields` VALUES (136, 1, 104, 'write', '2019-02-22 12:25:24', '2019-02-22 12:25:24');
INSERT INTO `role_module_fields` VALUES (137, 1, 105, 'write', '2019-02-22 12:28:49', '2019-02-22 12:28:49');
INSERT INTO `role_module_fields` VALUES (138, 1, 106, 'write', '2019-02-22 12:50:33', '2019-02-22 12:50:33');
INSERT INTO `role_module_fields` VALUES (139, 1, 107, 'write', '2019-02-22 12:50:48', '2019-02-22 12:50:48');
INSERT INTO `role_module_fields` VALUES (140, 1, 108, 'write', '2019-02-22 12:51:00', '2019-02-22 12:51:00');
INSERT INTO `role_module_fields` VALUES (141, 1, 109, 'write', '2019-02-22 12:51:35', '2019-02-22 12:51:35');
INSERT INTO `role_module_fields` VALUES (142, 1, 110, 'write', '2019-02-22 12:52:12', '2019-02-22 12:52:12');
INSERT INTO `role_module_fields` VALUES (143, 1, 111, 'write', '2019-02-22 12:54:33', '2019-02-22 12:54:33');
INSERT INTO `role_module_fields` VALUES (144, 1, 112, 'write', '2019-02-22 12:55:15', '2019-02-22 12:55:15');
INSERT INTO `role_module_fields` VALUES (145, 1, 113, 'write', '2019-02-22 12:55:28', '2019-02-22 12:55:28');
INSERT INTO `role_module_fields` VALUES (146, 1, 114, 'write', '2019-02-22 12:56:10', '2019-02-22 12:56:10');
INSERT INTO `role_module_fields` VALUES (147, 1, 115, 'write', '2019-02-22 12:56:41', '2019-02-22 12:56:41');
INSERT INTO `role_module_fields` VALUES (148, 1, 116, 'write', '2019-02-22 12:57:04', '2019-02-22 12:57:04');
INSERT INTO `role_module_fields` VALUES (149, 1, 117, 'write', '2019-02-22 12:59:43', '2019-02-22 12:59:43');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_user_role_id_foreign`(`role_id`) USING BTREE,
  INDEX `role_user_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `display_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE,
  INDEX `roles_parent_foreign`(`parent`) USING BTREE,
  INDEX `roles_dept_foreign`(`dept`) USING BTREE,
  CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2019-02-22 10:24:06', '2019-02-22 10:24:06');
INSERT INTO `roles` VALUES (2, 'ADMIN', 'admin', NULL, 1, 1, NULL, '2019-02-22 10:28:33', '2019-02-22 10:28:33');

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `fullname_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `full_name en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Full name ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` int(11) NULL DEFAULT NULL,
  `position_ka` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `position_en` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `position_ru` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `new_field` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `menu` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tests
-- ----------------------------
INSERT INTO `tests` VALUES (1, '2019-02-22 10:44:05', '2019-02-22 10:32:13', '2019-02-22 10:44:05', 'safsdf', 'dsfsd', NULL);
INSERT INTO `tests` VALUES (2, NULL, '2019-02-22 10:50:09', '2019-02-22 10:50:09', 'ტურები', 'uuu', '[\"header\",\"burger\"]');

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `path` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `extension` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `public` tinyint(1) NULL DEFAULT 0,
  `type` int(10) UNSIGNED NULL DEFAULT NULL,
  `size` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `url` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uploads_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES (1, '12de8d4e66b0643ac998aa928c8abda4--campfire-tumblr-tumblr-camping.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\1.jpg', 'jpg', 1, 0, 3, '62029', 'image/2019-02-22/1.jpg', NULL, '2019-02-22 10:38:04', '2019-02-22 10:38:04');
INSERT INTO `uploads` VALUES (2, 'DMDIKcyWsAEsKDj.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\2.jpg', 'jpg', 1, 0, 3, '354449', 'image/2019-02-22/2.jpg', NULL, '2019-02-22 11:22:29', '2019-02-22 11:22:30');
INSERT INTO `uploads` VALUES (3, 'wallpaper2you_404548.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\3.jpg', 'jpg', 1, 0, 3, '527134', 'image/2019-02-22/3.jpg', NULL, '2019-02-22 11:22:59', '2019-02-22 11:23:00');
INSERT INTO `uploads` VALUES (4, 'batumi3.jpg', 'C:\\wamp64\\www\\code_online\\lisi.digitalmate.io\\public\\files\\image\\2019-02-22\\4.jpg', 'jpg', 1, 0, 3, '189194', 'image/2019-02-22/4.jpg', NULL, '2019-02-22 12:26:10', '2019-02-22 12:26:10');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NULL DEFAULT 0,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `type` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Employee',
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 1, 'vaska@digitalmate.io', '$2y$10$fffxDiiuSga38RvNAAN8xOCH.4f.rMreF5UaBScTgxEajMU0m5MCi', 'Employee', NULL, NULL, '2019-02-22 10:24:25', '2019-02-22 10:24:25');

SET FOREIGN_KEY_CHECKS = 1;
