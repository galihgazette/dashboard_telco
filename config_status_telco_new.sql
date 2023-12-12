/*
 Navicat Premium Data Transfer

 Source Server         : Grafana @ 107
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : 172.17.1.107:3306
 Source Schema         : config

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 11/12/2023 12:16:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_status_telco_new
-- ----------------------------
DROP TABLE IF EXISTS `config_status_telco_new`;
CREATE TABLE `config_status_telco_new`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `operator` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `server` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_ssh` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logfile` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pathlog` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_err` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vendor` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `port` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uname` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `upass` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time_log` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fname` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 81 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_status_telco_new
-- ----------------------------
INSERT INTO `config_status_telco_new` VALUES (77, 'Telkomsel', '172.17.0.226', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: null', 'Banking', 'Direct Telkomsel', '172.17.0.120', '32888', 'sprintTsel', 'SprintTesting', '2023-12-09 04:17:44', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (78, 'Telkomsel', '172.17.0.226', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: null', 'Banking', 'Direct Telkomsel', '172.17.0.120', '32888', 'sprintTsel', 'SprintTesting', '2023-12-09 04:17:57', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (2, 'Indosat', '172.17.0.82', 'amy', 'indosat.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Infobip', '172.17.0.91', '32882', 'mitracomm_regular3', 'P@ssSpr1nt6299', '2023-12-09 04:19:30', 'isat.adapter.infobip.php', '0');
INSERT INTO `config_status_telco_new` VALUES (3, 'Telkomsel', '172.17.0.79', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56549', 'sprinttsel', 'P@ssSPR1nt1921', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (4, 'Hutchinson', '172.17.0.79', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Mitracomm', 'mitrapay.mitracomm.com', '56412', 'sprint', 'P@ssSPR1nt5933', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (5, 'Hutchinson', '172.17.0.79', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'IMS', 'api.imitra.com', '25000', 'sprint', 'phahf$a-qu4eeNee', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (6, 'Telkomsel', '172.17.0.79', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8002', 'bankntt', '1bank2ntt3', '2023-12-09 04:22:31', 'bank/push.jsp', '0');
INSERT INTO `config_status_telco_new` VALUES (7, 'Telkomsel', '172.17.0.79', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.223', '9001', 'sprint', 'sprint123', '2023-12-09 04:21:43', 'bank/push.jsp', '0');
INSERT INTO `config_status_telco_new` VALUES (8, 'Excelcom', '172.17.0.79', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct via Kannel', '172.17.0.155', '13013', 'bca69888', '69888bc4', '2023-12-09 04:20:41', 'cgi-bin/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (9, 'Hutchinson', '172.17.0.79', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'Cakraflash', 'api.cakraflash.com', '8000', 'cfspr', '1zFReh6y', '2023-12-06 13:53:52', 'api/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (10, 'Telkomsel', '172.17.0.79', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56554', 'sprinttselotp', 'P@ssSPR1nt0tp5537', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (11, 'Hutchinson', '172.17.0.79', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'DIRECT', '172.18.0.108', '13013', 'hutchpush0yo', 'hutchpush0', '2023-12-06 13:53:52', 'cgi-bin/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (12, 'Excelcom', '172.17.0.79', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'api2.smsblast.id', '443', 'sprint', 'Sprint2o19tr1al', '2023-12-06 13:53:52', 'v2/reg/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (13, 'Excelcom', '172.17.0.79', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'sgkrt.smsblast.id', '443', 'Sprint-xl', '4BOCKulz', '2023-12-06 13:53:52', 'v2/reg/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (14, 'Excelcom', '172.17.0.79', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'sgkrt.smsblast.id', '443', 'Sprint-xl', '4BOCKulz', '2023-12-06 13:53:52', 'v2/prem/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (15, 'Telkomsel', '172.17.0.79', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'api2.smsblast.id', '443', 'tselsprint', '92K6Magq', '2023-12-06 13:53:52', 'v2/prem/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (16, 'Excelcom', '172.17.0.79', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'ADA', 'cmp1.adreach.co', '9003', 'sprint3', 'SPrint3D', '2023-12-06 13:53:52', 'interactive_api/service/rest_api_v2s.php', '0');
INSERT INTO `config_status_telco_new` VALUES (17, 'Excelcom', '172.17.0.79', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'ADA', 'api.reachme.id', '443', 'sprintBCA', 'Bc4s9@#!', '2023-12-06 13:53:52', 'interactive_api/service/rest_api_v2s.php', '0');
INSERT INTO `config_status_telco_new` VALUES (18, 'Telkomsel', '172.17.0.79', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'idkrt.smsblast.id', '443', 'tselsprint', '92K6Magq', '2023-12-06 13:53:52', 'v2/reg/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (19, 'Telkomsel', '172.17.0.228', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8000', 'bankntt', 'Sprint123', '2023-12-09 04:25:38', 'bank/push.jsp', '1');
INSERT INTO `config_status_telco_new` VALUES (20, 'Hutchinson', '172.17.0.79', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Mitracomm', 'mitrapay.mitracomm.com', '56802', 'sprinthutch', 'P@ss1733', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (21, 'Hutchinson', '172.17.0.79', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'IMS', 'api.imitra.com', '25002', 'sprint', 'phahf$a-qu4eeNee', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (22, 'Indosat', '172.17.0.79', 'amy', 'indosat.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56812', 'isatotpspc', 'P@ss8052', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (23, 'Indosat', '172.17.0.225', 'amy', 'satelindo.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Infobip', '172.17.0.91', '32882', 'mitracomm_premium3', 'P@ssSpr1nt2634', '2023-12-06 14:14:30', 'isat.adapter.infobip.php', '1');
INSERT INTO `config_status_telco_new` VALUES (24, 'Excelcom', '172.17.0.225', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct via Kannel', '172.17.0.108', '13013', 'xlpeps1000', 'secengp3p5', '2023-12-09 04:30:51', 'cgi-bin/sendsms', '1');
INSERT INTO `config_status_telco_new` VALUES (25, 'Indosat', '172.17.0.225', 'amy', 'satelindo.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Infobip', '172.17.0.91', '32882', 'mitracomm_regular3', 'P@ssSpr1nt6299', '2023-12-09 04:36:00', 'isat.adapter.infobip.php', '1');
INSERT INTO `config_status_telco_new` VALUES (26, 'Telkomsel', '172.17.0.225', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8002', 'brilink', 'Sprint123', '2023-12-06 14:14:51', 'bank/push.jsp', '1');
INSERT INTO `config_status_telco_new` VALUES (27, 'Hutchinson', '172.17.0.225', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'Cakraflash', 'api.cakraflash.com', '8000', 'cfspr02', '6VwVkYNB', NULL, 'api/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (28, 'Excelcom', '172.17.0.225', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'api2.smsblast.id', '443', 'sprint', 'Sprint2o19tr1al', NULL, 'v2/reg/sendsms', '');
INSERT INTO `config_status_telco_new` VALUES (29, 'Excelcom', '172.17.0.225', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'api2.smsblast.id', '443', 'sprint', 'Sprint2o19tr1al', NULL, 'v2/prem/sendsms', '');
INSERT INTO `config_status_telco_new` VALUES (30, 'Smartfren', '172.17.0.225', 'amy', 'smartfren.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'IMS', 'api2.imitra.com', '25000', 'sprint', 'phahf$a-qu4eeNee', NULL, 'sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (31, 'Hutchinson', '172.17.0.225', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'IMS', 'api.imitra.com', '25002', 'sprint', 'phahf$a-qu4eeNee', NULL, 'sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (32, 'Telkomsel', '172.17.0.225', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'sgkrt.smsblast.id', '443', 'tselsprint', '92K6Magq', NULL, 'v2/reg/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (33, 'Telkomsel', '172.17.0.225', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'sgkrt.smsblast.id', '443', 'tselsprint', '92K6Magq', NULL, 'v2/prem/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (34, 'International', '172.17.0.225', 'amy', 'international.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'Cakraflash', 'api.cakraflash.com', '4443', 'cfsprint05', 'z46tuuVS', NULL, 'api/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (35, 'Indosat', '172.17.0.225', 'amy', 'satelindo.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Mitracomm', 'mitrapay.mitracomm.com', '56802', 'sprintisat', 'P@ss3618', '2023-12-06 14:15:35', 'sendsms', '1');
INSERT INTO `config_status_telco_new` VALUES (36, 'Indosat', '172.17.0.228', 'amy', 'satelindo.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Infobip', '172.17.0.91', '32882', 'mitracomm_premium3', 'P@ssSpr1nt2634', '2023-12-06 14:17:32', 'isat.adapter.infobip.php', '1');
INSERT INTO `config_status_telco_new` VALUES (37, 'Excelcom', '172.17.0.228', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Via KANNEL', '172.17.0.108', '13013', 'xlpeps1000', 'secengp3p5', '2023-12-06 14:17:39', 'cgi-bin/sendsms', '1');
INSERT INTO `config_status_telco_new` VALUES (38, 'Indosat', '172.17.0.228', 'amy', 'satelindo.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Infobip', '172.17.0.91', '32882', 'mitracomm_regular3', 'P@ssSpr1nt6299', '2023-12-09 04:37:10', 'isat.adapter.infobip.php', '1');
INSERT INTO `config_status_telco_new` VALUES (39, 'Telkomsel', '172.17.0.228', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8002', 'brilink', 'Sprint123', '2023-12-06 14:17:52', 'bank/push.jsp', '1');
INSERT INTO `config_status_telco_new` VALUES (40, 'Hutchinson', '172.17.0.228', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'Cakraflash', 'api.cakraflash.com', '8000', 'cfspr02', '6VwVkYNB', NULL, 'api/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (41, 'Excelcom', '172.17.0.228', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'api2.smsblast.id', '443', 'sprint', 'Sprint2o19tr1al', NULL, 'v2/reg/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (42, 'Excelcom', '172.17.0.228', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'api2.smsblast.id', '443', 'sprint', 'Sprint2o19tr1al', NULL, 'v2/prem/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (43, 'Smartfren', '172.17.0.228', 'amy', 'smartfren.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'IMS', 'api2.imitra.com', '25000', 'sprint', 'phahf$a-qu4eeNee', NULL, 'sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (44, 'Hutchinson', '172.17.0.228', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'IMS', 'api.imitra.com', '25002', 'sprint', 'phahf$a-qu4eeNee', NULL, 'sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (45, 'Telkomsel', '172.17.0.228', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'sgkrt.smsblast.id', '443', 'tselsprint', '92K6Magq', '2023-12-06 14:19:30', 'v2/reg/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (46, 'Telkomsel', '172.17.0.228', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'sgkrt.smsblast.id', '443', 'tselsprint', '92K6Magq', '2023-12-06 14:19:45', 'v2/prem/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (47, 'International', '172.17.0.228', 'amy', 'international.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'Cakraflash', 'api.cakraflash.com', '4443', 'cfsprint05', 'z46tuuVS', NULL, 'api/sendsms', NULL);
INSERT INTO `config_status_telco_new` VALUES (48, 'Indosat', '172.17.0.228', 'amy', 'satelindo.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Mitracomm', 'mitrapay.mitracomm.com', '56802', 'sprintisat', 'P@ss3618', NULL, 'sendsms', '');
INSERT INTO `config_status_telco_new` VALUES (49, 'Indosat', '172.17.0.82', 'amy', 'indosat.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Infobip', '172.17.0.91', '32882', 'mitracomm_regular3', 'P@ssSpr1nt6299', '2023-12-06 13:54:00', 'isat.adapter.infobip.php', '0');
INSERT INTO `config_status_telco_new` VALUES (50, 'Hutchinson', '172.17.0.82', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Via KANNEL', '172.17.0.108', '13013', 'hutchpush0yo', 'hutchpush0', '2023-12-06 13:54:00', 'cgi-bin/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (51, 'Telkomsel', '172.17.0.82', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56549', 'sprinttsel', 'P@ssSPR1nt1921', '2023-12-06 13:54:00', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (52, 'Hutchinson', '172.17.0.82', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Mitracomm', 'mitrapay.mitracomm.com', '56412', 'sprint', 'P@ssSPR1nt5933', '2023-12-06 13:54:00', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (53, 'Hutchinson', '172.17.0.82', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'IMS', 'api.imitra.com', '25000', 'sprint', 'phahf$a-qu4eeNee', '2023-12-06 13:54:00', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (54, 'Telkomsel', '172.17.0.82', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8002', 'bankntt', '1bank2ntt3', '2023-12-09 04:22:45', 'bank/push.jsp', '0');
INSERT INTO `config_status_telco_new` VALUES (55, 'Telkomsel', '172.17.0.82', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.223', '9001', 'sprint', 'sprint123', '2023-12-09 04:23:03', 'bank/push.jsp', '0');
INSERT INTO `config_status_telco_new` VALUES (56, 'Excelcom', '172.17.0.82', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Via KANNEL', '172.17.0.155', '13013', 'bca69888', '69888bc4', '2023-12-06 13:54:00', 'cgi-bin/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (57, 'Hutchinson', '172.17.0.82', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk', 'Cakraflash', 'api.cakraflash.com', '8000', 'cfspr', '1zFReh6y', '2023-12-06 13:54:00', 'api/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (58, 'Telkomsel', '172.17.0.82', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56554', 'sprinttselotp', 'P@ssSPR1nt0tp5537', '2023-12-06 13:54:00', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (59, 'Hutchinson', '172.17.0.82', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Via KANNEL', '172.18.0.108', '13013', 'hutchpush0yo', 'hutchpush0', '2023-12-06 13:54:00', 'cgi-bin/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (60, 'Excelcom', '172.17.0.82', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'api2.smsblast.id', '443', 'sprint', 'Sprint2o19tr1al', '2023-12-06 13:54:00', 'v2/reg/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (61, 'Excelcom', '172.17.0.82', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'sgkrt.smsblast.id', '443', 'Sprint-xl', '4BOCKulz', '2023-12-06 13:54:00', 'v2/reg/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (62, 'Excelcom', '172.17.0.82', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'sgkrt.smsblast.id', '443', 'Sprint-xl', '4BOCKulz', '2023-12-06 13:54:00', 'v2/prem/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (63, 'Telkomsel', '172.17.0.82', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'MD Media', 'api2.smsblast.id', '443', 'tselsprint', '92K6Magq', '2023-12-06 13:54:00', 'v2/prem/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (64, 'Excelcom', '172.17.0.82', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'ADA', 'cmp1.adreach.co', '9003', 'sprint3', 'SPrint3D', '2023-12-06 13:54:00', 'interactive_api/service/rest_api_v2s.php', '0');
INSERT INTO `config_status_telco_new` VALUES (65, 'Excelcom', '172.17.0.82', 'amy', 'excelcom.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'ADA', 'api.reachme.id', '443', 'sprintBCA', 'Bc4s9@#!', '2023-12-06 13:54:00', 'interactive_api/service/rest_api_v2s.php', '0');
INSERT INTO `config_status_telco_new` VALUES (66, 'Telkomsel', '172.17.0.82', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'MD Media', 'idkrt.smsblast.id', '443', 'tselsprint', '92K6Magq', '2023-12-06 13:54:00', 'v2/reg/sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (67, 'Telkomsel', '172.17.0.82', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8000', 'bankntt', 'Sprint123', '2023-12-09 04:23:16', 'bank/push.jsp', '0');
INSERT INTO `config_status_telco_new` VALUES (68, 'Hutchinson', '172.17.0.82', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Mitracomm', 'mitrapay.mitracomm.com', '56802', 'sprinthutch', 'P@ss1733', '2023-12-06 13:54:00', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (69, 'Hutchinson', '172.17.0.82', 'amy', 'hutchinson.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'IMS', 'api.imitra.com', '25002', 'sprint', 'phahf$a-qu4eeNee', '2023-12-06 13:54:00', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (70, 'Indosat', '172.17.0.82', 'amy', 'indosat.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56812', 'isatotpspc', 'P@ss8052', '2023-12-06 13:54:00', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (71, 'Indosat', '172.17.0.79', 'amy', 'indosat.log', '/home/chandra', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56812', 'isatotpspc', 'P@ss8052', '2023-12-06 13:53:52', 'sendsms', '0');
INSERT INTO `config_status_telco_new` VALUES (72, 'Indosat', '172.17.0.225', 'amy', 'satelindo.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56812', 'isatspc', 'P@ss1139', '2023-12-06 14:15:45', 'sendsms', '1');
INSERT INTO `config_status_telco_new` VALUES (73, 'Telkomsel', '172.17.0.225', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: null', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8002', 'brilink', 'Sprint123', '2023-12-06 14:15:55', 'bank/push.jsp', '1');
INSERT INTO `config_status_telco_new` VALUES (74, 'Telkomsel', '172.17.0.225', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Reguler', 'Mitracomm', 'mitrapay.mitracomm.com', '56576', 'sprinttsel', 'P@ssSPR1nt1921', '2023-12-09 01:59:48', 'sendsms', '1');
INSERT INTO `config_status_telco_new` VALUES (75, 'Telkomsel', '172.17.0.228', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56554', 'sprinttselotp', 'P@ssSPR1nt0tp5537', '2023-12-06 14:18:25', 'sendsms', '1');
INSERT INTO `config_status_telco_new` VALUES (76, 'Telkomsel', '172.17.0.228', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: null', 'Banking', 'Direct Telkomsel', '172.25.252.130', '8002', 'brilink', 'Sprint123', '2023-12-06 14:18:34', 'bank/push.jsp', '1');
INSERT INTO `config_status_telco_new` VALUES (79, 'Telkomsel', '172.17.0.225', 'amy', 'telkomsel.log', '/var/log/push', 'RESP: Error/Connection Failed', 'Bulk Premium', 'Mitracomm', 'mitrapay.mitracomm.com', '56554', 'sprinttselotp', 'P@ssSPR1nt0tp5537', '2023-12-09 04:38:01', 'sendsms', '1');
INSERT INTO `config_status_telco_new` VALUES (80, 'Indosat', '172.17.0.225', 'amy', 'satelindo.log', '/var/log/push', 'Internal Server Error', 'Banking', 'Direct Indosat', '202.152.162.192', '18402', '', '', '2023-12-11 11:24:14', '', '1');

SET FOREIGN_KEY_CHECKS = 1;
