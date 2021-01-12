/*
 Navicat Premium Data Transfer

 Source Server         : home_mysql
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 192.168.1.5:3306
 Source Schema         : demo_app

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 10/01/2021 18:35:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_log_demo
-- ----------------------------
DROP TABLE IF EXISTS `app_log_demo`;
CREATE TABLE `app_log_demo` (
  `LOG_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `IDENTITY_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RESOURCE_KIND` decimal(10,0) DEFAULT NULL,
  `RESOURCE_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IDR_CREATION_TIME` datetime DEFAULT NULL,
  `MAIN_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SUB_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OPERATE_TIME` datetime DEFAULT NULL,
  `OP_TYPE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_TYPE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_LEVEL_ID` decimal(1,0) DEFAULT NULL,
  `OPERATE_CONTENT` text CHARACTER SET utf8,
  `OPERATE_RESULT` decimal(1,0) DEFAULT NULL,
  `MODULE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MODULE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TASK_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_NETWORK_ADDRESS` text CHARACTER SET utf8,
  `CLIENT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_CPU_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IS_LOGIN_BYFOURA` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKAPPROVE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKFLAG` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ORI_GATHER_TIME` datetime DEFAULT NULL,
  `ORI_FILE_NAME` text CHARACTER SET utf8,
  `ORI_FILE_ROWNUM` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `RECHECK_DATA_ID` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `LOGRANDOMNO` decimal(2,0) DEFAULT NULL,
  `ORI_CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CLIENT_BOIS_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:BOIS序列号',
  `HARD_DISK_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:硬盘序列号',
  `RETAIN1` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN1',
  `RETAIN2` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN2',
  `RETAIN3` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN3',
  `RETAIN4` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN4',
  `RETAIN5` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN5',
  `RETAIN6` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN6',
  `RETAIN7` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN7',
  `RETAIN8` datetime DEFAULT NULL COMMENT '预留字段RETAIN8',
  `RETAIN9` datetime DEFAULT NULL COMMENT '预留字段RETAIN9',
  `RETAIN10` datetime DEFAULT NULL COMMENT '预留字段RETAIN10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for app_log_demo_202101
-- ----------------------------
DROP TABLE IF EXISTS `app_log_demo_202101`;
CREATE TABLE `app_log_demo_202101` (
  `LOG_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `IDENTITY_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RESOURCE_KIND` decimal(10,0) DEFAULT NULL,
  `RESOURCE_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IDR_CREATION_TIME` datetime DEFAULT NULL,
  `MAIN_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SUB_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OPERATE_TIME` datetime DEFAULT NULL,
  `OP_TYPE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_TYPE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_LEVEL_ID` decimal(1,0) DEFAULT NULL,
  `OPERATE_CONTENT` text CHARACTER SET utf8,
  `OPERATE_RESULT` decimal(1,0) DEFAULT NULL,
  `MODULE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MODULE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TASK_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_NETWORK_ADDRESS` text CHARACTER SET utf8,
  `CLIENT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_CPU_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IS_LOGIN_BYFOURA` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKAPPROVE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKFLAG` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ORI_GATHER_TIME` datetime DEFAULT NULL,
  `ORI_FILE_NAME` text CHARACTER SET utf8,
  `ORI_FILE_ROWNUM` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `RECHECK_DATA_ID` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `LOGRANDOMNO` decimal(2,0) DEFAULT NULL,
  `ORI_CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CLIENT_BOIS_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:BOIS序列号',
  `HARD_DISK_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:硬盘序列号',
  `RETAIN1` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN1',
  `RETAIN2` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN2',
  `RETAIN3` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN3',
  `RETAIN4` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN4',
  `RETAIN5` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN5',
  `RETAIN6` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN6',
  `RETAIN7` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN7',
  `RETAIN8` datetime DEFAULT NULL COMMENT '预留字段RETAIN8',
  `RETAIN9` datetime DEFAULT NULL COMMENT '预留字段RETAIN9',
  `RETAIN10` datetime DEFAULT NULL COMMENT '预留字段RETAIN10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for app_log_demo_202101_10001
-- ----------------------------
DROP TABLE IF EXISTS `app_log_demo_202101_10001`;
CREATE TABLE `app_log_demo_202101_10001` (
  `LOG_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `IDENTITY_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RESOURCE_KIND` decimal(10,0) DEFAULT NULL,
  `RESOURCE_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IDR_CREATION_TIME` datetime DEFAULT NULL,
  `MAIN_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SUB_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OPERATE_TIME` datetime DEFAULT NULL,
  `OP_TYPE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_TYPE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_LEVEL_ID` decimal(1,0) DEFAULT NULL,
  `OPERATE_CONTENT` text CHARACTER SET utf8,
  `OPERATE_RESULT` decimal(1,0) DEFAULT NULL,
  `MODULE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MODULE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TASK_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_NETWORK_ADDRESS` text CHARACTER SET utf8,
  `CLIENT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_CPU_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IS_LOGIN_BYFOURA` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKAPPROVE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKFLAG` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ORI_GATHER_TIME` datetime DEFAULT NULL,
  `ORI_FILE_NAME` text CHARACTER SET utf8,
  `ORI_FILE_ROWNUM` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `RECHECK_DATA_ID` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `LOGRANDOMNO` decimal(2,0) DEFAULT NULL,
  `ORI_CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CLIENT_BOIS_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:BOIS序列号',
  `HARD_DISK_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:硬盘序列号',
  `RETAIN1` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN1',
  `RETAIN2` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN2',
  `RETAIN3` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN3',
  `RETAIN4` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN4',
  `RETAIN5` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN5',
  `RETAIN6` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN6',
  `RETAIN7` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN7',
  `RETAIN8` datetime DEFAULT NULL COMMENT '预留字段RETAIN8',
  `RETAIN9` datetime DEFAULT NULL COMMENT '预留字段RETAIN9',
  `RETAIN10` datetime DEFAULT NULL COMMENT '预留字段RETAIN10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for app_log_demo_202101_10002
-- ----------------------------
DROP TABLE IF EXISTS `app_log_demo_202101_10002`;
CREATE TABLE `app_log_demo_202101_10002` (
  `LOG_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `IDENTITY_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RESOURCE_KIND` decimal(10,0) DEFAULT NULL,
  `RESOURCE_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IDR_CREATION_TIME` datetime DEFAULT NULL,
  `MAIN_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SUB_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OPERATE_TIME` datetime DEFAULT NULL,
  `OP_TYPE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_TYPE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_LEVEL_ID` decimal(1,0) DEFAULT NULL,
  `OPERATE_CONTENT` text CHARACTER SET utf8,
  `OPERATE_RESULT` decimal(1,0) DEFAULT NULL,
  `MODULE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MODULE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TASK_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_NETWORK_ADDRESS` text CHARACTER SET utf8,
  `CLIENT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_CPU_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IS_LOGIN_BYFOURA` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKAPPROVE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKFLAG` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ORI_GATHER_TIME` datetime DEFAULT NULL,
  `ORI_FILE_NAME` text CHARACTER SET utf8,
  `ORI_FILE_ROWNUM` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `RECHECK_DATA_ID` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `LOGRANDOMNO` decimal(2,0) DEFAULT NULL,
  `ORI_CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CLIENT_BOIS_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:BOIS序列号',
  `HARD_DISK_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:硬盘序列号',
  `RETAIN1` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN1',
  `RETAIN2` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN2',
  `RETAIN3` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN3',
  `RETAIN4` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN4',
  `RETAIN5` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN5',
  `RETAIN6` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN6',
  `RETAIN7` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN7',
  `RETAIN8` datetime DEFAULT NULL COMMENT '预留字段RETAIN8',
  `RETAIN9` datetime DEFAULT NULL COMMENT '预留字段RETAIN9',
  `RETAIN10` datetime DEFAULT NULL COMMENT '预留字段RETAIN10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for app_log_demo_202101_10003
-- ----------------------------
DROP TABLE IF EXISTS `app_log_demo_202101_10003`;
CREATE TABLE `app_log_demo_202101_10003` (
  `LOG_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `IDENTITY_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RESOURCE_KIND` decimal(10,0) DEFAULT NULL,
  `RESOURCE_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IDR_CREATION_TIME` datetime DEFAULT NULL,
  `MAIN_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SUB_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OPERATE_TIME` datetime DEFAULT NULL,
  `OP_TYPE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_TYPE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_LEVEL_ID` decimal(1,0) DEFAULT NULL,
  `OPERATE_CONTENT` text CHARACTER SET utf8,
  `OPERATE_RESULT` decimal(1,0) DEFAULT NULL,
  `MODULE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MODULE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TASK_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_NETWORK_ADDRESS` text CHARACTER SET utf8,
  `CLIENT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_CPU_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IS_LOGIN_BYFOURA` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKAPPROVE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKFLAG` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ORI_GATHER_TIME` datetime DEFAULT NULL,
  `ORI_FILE_NAME` text CHARACTER SET utf8,
  `ORI_FILE_ROWNUM` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `RECHECK_DATA_ID` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `LOGRANDOMNO` decimal(2,0) DEFAULT NULL,
  `ORI_CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CLIENT_BOIS_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:BOIS序列号',
  `HARD_DISK_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:硬盘序列号',
  `RETAIN1` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN1',
  `RETAIN2` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN2',
  `RETAIN3` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN3',
  `RETAIN4` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN4',
  `RETAIN5` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN5',
  `RETAIN6` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN6',
  `RETAIN7` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN7',
  `RETAIN8` datetime DEFAULT NULL COMMENT '预留字段RETAIN8',
  `RETAIN9` datetime DEFAULT NULL COMMENT '预留字段RETAIN9',
  `RETAIN10` datetime DEFAULT NULL COMMENT '预留字段RETAIN10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for app_log_demo_202101_10004
-- ----------------------------
DROP TABLE IF EXISTS `app_log_demo_202101_10004`;
CREATE TABLE `app_log_demo_202101_10004` (
  `LOG_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `IDENTITY_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RESOURCE_KIND` decimal(10,0) DEFAULT NULL,
  `RESOURCE_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IDR_CREATION_TIME` datetime DEFAULT NULL,
  `MAIN_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SUB_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OPERATE_TIME` datetime DEFAULT NULL,
  `OP_TYPE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_TYPE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_LEVEL_ID` decimal(1,0) DEFAULT NULL,
  `OPERATE_CONTENT` text CHARACTER SET utf8,
  `OPERATE_RESULT` decimal(1,0) DEFAULT NULL,
  `MODULE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MODULE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TASK_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_NETWORK_ADDRESS` text CHARACTER SET utf8,
  `CLIENT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_CPU_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IS_LOGIN_BYFOURA` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKAPPROVE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKFLAG` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ORI_GATHER_TIME` datetime DEFAULT NULL,
  `ORI_FILE_NAME` text CHARACTER SET utf8,
  `ORI_FILE_ROWNUM` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `RECHECK_DATA_ID` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `LOGRANDOMNO` decimal(2,0) DEFAULT NULL,
  `ORI_CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CLIENT_BOIS_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:BOIS序列号',
  `HARD_DISK_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:硬盘序列号',
  `RETAIN1` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN1',
  `RETAIN2` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN2',
  `RETAIN3` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN3',
  `RETAIN4` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN4',
  `RETAIN5` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN5',
  `RETAIN6` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN6',
  `RETAIN7` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN7',
  `RETAIN8` datetime DEFAULT NULL COMMENT '预留字段RETAIN8',
  `RETAIN9` datetime DEFAULT NULL COMMENT '预留字段RETAIN9',
  `RETAIN10` datetime DEFAULT NULL COMMENT '预留字段RETAIN10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for app_log_demo_202101_10005
-- ----------------------------
DROP TABLE IF EXISTS `app_log_demo_202101_10005`;
CREATE TABLE `app_log_demo_202101_10005` (
  `LOG_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `IDENTITY_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RESOURCE_KIND` decimal(10,0) DEFAULT NULL,
  `RESOURCE_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IDR_CREATION_TIME` datetime DEFAULT NULL,
  `MAIN_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SUB_ACCOUNT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OPERATE_TIME` datetime DEFAULT NULL,
  `OP_TYPE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_TYPE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OP_LEVEL_ID` decimal(1,0) DEFAULT NULL,
  `OPERATE_CONTENT` text CHARACTER SET utf8,
  `OPERATE_RESULT` decimal(1,0) DEFAULT NULL,
  `MODULE_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `MODULE_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TASK_CODE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_NETWORK_ADDRESS` text CHARACTER SET utf8,
  `CLIENT_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_CPU_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CLIENT_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_MAC` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_PORT` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `SERVER_ADDRESS` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FROM_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_ID` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TO_PROVINCES_NAME` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `IS_LOGIN_BYFOURA` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKAPPROVE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `BANKFLAG` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ORI_GATHER_TIME` datetime DEFAULT NULL,
  `ORI_FILE_NAME` text CHARACTER SET utf8,
  `ORI_FILE_ROWNUM` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `RECHECK_DATA_ID` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `LOGRANDOMNO` decimal(2,0) DEFAULT NULL,
  `ORI_CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CLIENT_BOIS_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:BOIS序列号',
  `HARD_DISK_SERIAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '新增字段:硬盘序列号',
  `RETAIN1` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN1',
  `RETAIN2` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN2',
  `RETAIN3` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN3',
  `RETAIN4` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN4',
  `RETAIN5` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN5',
  `RETAIN6` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN6',
  `RETAIN7` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段RETAIN7',
  `RETAIN8` datetime DEFAULT NULL COMMENT '预留字段RETAIN8',
  `RETAIN9` datetime DEFAULT NULL COMMENT '预留字段RETAIN9',
  `RETAIN10` datetime DEFAULT NULL COMMENT '预留字段RETAIN10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
