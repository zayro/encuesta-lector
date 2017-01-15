/*
Navicat MySQL Data Transfer

Source Server         : local maestro
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : estructura_proyecto

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-09 18:34:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auditoria
-- ----------------------------
DROP TABLE IF EXISTS `auditoria`;
CREATE TABLE `auditoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(18) NOT NULL,
  `tiempo` datetime NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `proceso` longtext NOT NULL,
  `mensaje` longtext NOT NULL,
  `archivo` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identificacion` (`usuario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='CONTIENE LOG LOS PROCESOS DE LAS DIFERENTES EJECUCIONES DEL PROYECTO';

-- ----------------------------
-- Records of auditoria
-- ----------------------------
INSERT INTO `auditoria` VALUES ('45', '::1', '2016-02-03 09:00:57', '123456', ' DELETE FROM enlinea where identificacion = \'123456\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/public_html/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('46', '::1', '2016-02-03 16:44:02', '123456', ' DELETE FROM enlinea where identificacion = \'123456\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/public_html/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('47', '::1', '2016-02-04 11:58:43', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('48', '::1', '2016-02-04 17:40:49', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('49', '::1', '2016-02-04 17:55:09', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('50', '::1', '2016-02-04 17:56:12', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('51', '::1', '2016-02-04 17:57:43', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('52', '::1', '2016-02-04 18:01:33', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('53', '::1', '2016-02-04 18:01:38', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('54', '::1', '2016-02-04 18:03:43', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('55', '::1', '2016-02-04 18:06:25', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('56', '::1', '2016-02-04 18:07:35', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('57', '::1', '2016-02-04 18:11:36', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('58', '::1', '2016-02-04 18:12:54', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('59', '::1', '2016-02-04 18:13:57', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('60', '::1', '2016-02-04 18:14:18', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('61', '::1', '2016-02-04 18:14:36', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('62', '::1', '2016-02-04 18:14:46', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('63', '::1', '2016-02-04 18:24:33', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('64', '::1', '2016-02-04 18:25:36', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('65', '::1', '2016-02-04 18:25:39', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('66', '::1', '2016-02-04 18:44:05', 'zayro@localhost', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('67', '::1', '2016-02-05 10:32:41', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('68', '::1', '2016-02-05 10:34:20', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('69', '::1', '2016-02-08 08:10:11', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('70', '::1', '2016-02-08 08:10:21', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102123120\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('71', '::1', '2016-02-08 08:12:09', '102123120', ' DELETE FROM enlinea where identificacion = \'102123120\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('72', '::1', '2016-02-08 08:12:18', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102123120\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('73', '::1', '2016-02-08 14:05:25', '102123120', ' DELETE FROM enlinea where identificacion = \'102123120\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('74', '::1', '2016-02-08 17:25:47', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('75', '::1', '2016-02-08 17:35:25', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('76', '::1', '2016-02-08 17:36:41', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('77', '::1', '2016-02-08 17:38:12', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('78', '::1', '2016-02-08 17:39:22', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('79', '::1', '2016-02-08 17:42:29', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('80', '::1', '2016-02-08 17:46:22', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('81', '::1', '2016-02-08 17:47:34', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('82', '::1', '2016-02-08 17:48:15', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('83', '::1', '2016-02-08 17:50:59', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('84', '::1', '2016-02-08 17:52:02', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('85', '::1', '2016-02-08 17:52:23', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('86', '::1', '2016-02-08 17:53:01', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('87', '::1', '2016-02-08 17:57:20', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('88', '::1', '2016-02-08 18:03:57', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('89', '::1', '2016-02-08 18:27:03', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('90', '::1', '2016-02-08 20:15:12', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('91', '::1', '2016-02-08 20:28:19', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('92', '::1', '2016-02-08 20:35:06', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('93', '::1', '2016-02-09 08:11:07', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('94', '::1', '2016-02-09 08:33:54', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('95', '::1', '2016-02-09 08:35:09', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('96', '::1', '2016-02-09 08:55:41', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('97', '::1', '2016-02-09 08:57:01', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('98', '::1', '2016-02-09 10:06:46', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('99', '::1', '2016-02-09 10:08:56', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('100', '::1', '2016-02-09 10:37:55', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('101', '::1', '2016-02-09 10:54:31', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('102', '::1', '2016-02-09 11:39:39', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('103', '::1', '2016-02-09 11:43:34', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('104', '::1', '2016-02-09 11:50:10', '102030', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('105', '::1', '2016-02-09 11:54:17', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('106', '::1', '2016-02-09 12:23:16', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('107', '::1', '2016-02-09 12:26:09', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('108', '::1', '2016-02-09 14:12:13', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('109', '::1', '2016-02-09 14:16:12', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('110', '::1', '2016-02-09 14:20:45', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('111', '::1', '2016-02-09 14:23:21', 'zayro@localhost', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('112', '::1', '2016-02-09 14:34:35', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('113', '::1', '2016-02-09 14:41:07', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('114', '::1', '2016-02-09 14:42:30', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('115', '::1', '2016-02-09 14:42:46', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('116', '::1', '2016-02-09 14:56:47', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('117', '::1', '2016-02-09 14:56:51', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('118', '::1', '2016-02-09 15:07:54', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('119', '::1', '2016-02-09 15:07:58', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('120', '::1', '2016-02-09 15:09:42', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('121', '::1', '2016-02-09 15:11:33', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('122', '::1', '2016-02-09 15:11:46', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('123', '::1', '2016-02-09 15:13:18', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('124', '::1', '2016-02-09 15:13:31', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('125', '::1', '2016-02-09 15:14:41', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('126', '::1', '2016-02-09 15:14:51', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('127', '::1', '2016-02-09 15:15:29', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('128', '::1', '2016-02-09 15:15:39', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('129', '::1', '2016-02-09 17:04:36', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('130', '::1', '2016-02-09 17:04:47', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('131', '::1', '2016-02-09 17:05:37', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('132', '::1', '2016-02-09 17:05:48', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('133', '::1', '2016-02-09 17:14:16', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('134', '::1', '2016-02-09 17:14:25', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('135', '::1', '2016-02-09 17:37:28', '102030', ' DELETE FROM enlinea where identificacion = \'102030\'; ', 'USUARIO TERMINO SESSION', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');
INSERT INTO `auditoria` VALUES ('136', '::1', '2016-02-09 17:37:52', 'zayro@localhost', 'INSERT INTO enlinea (`identificacion`, `ip`) VALUES (\'102030\' , \'::1\');', 'INGRESO AL SISTEMA', 'C:/wamp/www/estructura-proyecto/development/controller/controller_usuario.php');

-- ----------------------------
-- Table structure for empleados
-- ----------------------------
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `id` int(12) NOT NULL,
  `nombres` varchar(20) DEFAULT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `tipo_identificacion` varchar(5) DEFAULT NULL,
  `identificacion` int(12) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identificacion` (`identificacion`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`identificacion`) REFERENCES `usuarios` (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='INFORMACION DEL EMPLEADO';

-- ----------------------------
-- Records of empleados
-- ----------------------------

-- ----------------------------
-- Table structure for empresas
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date NOT NULL,
  `servidor` varchar(14) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `bdd` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empresas
-- ----------------------------
INSERT INTO `empresas` VALUES ('1', 'demo', '2015-08-05', '2015-08-31', null, null, null, null);
INSERT INTO `empresas` VALUES ('2', 'billar', '2015-08-05', '2016-08-05', '127.0.0.1', 'zayro', 'billar', 'zayro2014');
INSERT INTO `empresas` VALUES ('3', 'billar arbolito', '2015-08-05', '2016-08-05', null, null, null, null);
INSERT INTO `empresas` VALUES ('4', 'parqueadero', '2015-08-05', '2016-08-05', '127.0.0.1', 'zayro', 'parqueadero', 'zayro2014');
INSERT INTO `empresas` VALUES ('5', 'facturacion', '2015-11-26', '2017-11-26', '127.0.0.1', 'zayro', 'facturacion', 'zayro2014');

-- ----------------------------
-- Table structure for enlinea
-- ----------------------------
DROP TABLE IF EXISTS `enlinea`;
CREATE TABLE `enlinea` (
  `identificacion` int(12) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(10) NOT NULL DEFAULT 'conectado',
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`identificacion`),
  UNIQUE KEY `fk_online_identificacion` (`identificacion`) USING BTREE,
  CONSTRAINT `fk_online_identificacion` FOREIGN KEY (`identificacion`) REFERENCES `usuarios` (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enlinea
-- ----------------------------
INSERT INTO `enlinea` VALUES ('102030', '2016-02-09 17:37:52', 'conectado', '::1');

-- ----------------------------
-- Table structure for grupo
-- ----------------------------
DROP TABLE IF EXISTS `grupo`;
CREATE TABLE `grupo` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='GRUPO O CARGO AL QUE PERTENECE EL EMPLEADO';

-- ----------------------------
-- Records of grupo
-- ----------------------------
INSERT INTO `grupo` VALUES ('1', 'ADMINISTRADOR');
INSERT INTO `grupo` VALUES ('2', 'DESARROLLADOR');
INSERT INTO `grupo` VALUES ('3', 'USUARIO BILLAR');
INSERT INTO `grupo` VALUES ('4', 'USUARIO PARQUEADERO');
INSERT INTO `grupo` VALUES ('5', 'USUARIO FACTURACION');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='MENU PRINCIPAL DEL PROYECTO';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'ADMINISTRACION');
INSERT INTO `menu` VALUES ('2', 'INFORMES');
INSERT INTO `menu` VALUES ('3', 'MODULO BILLAR');
INSERT INTO `menu` VALUES ('4', 'MODULO PARQUEAR');
INSERT INTO `menu` VALUES ('5', 'MODULO FACTURACION');
INSERT INTO `menu` VALUES ('6', 'modificar890');

-- ----------------------------
-- Table structure for privilegio
-- ----------------------------
DROP TABLE IF EXISTS `privilegio`;
CREATE TABLE `privilegio` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(12) DEFAULT NULL,
  `id_menu` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind` (`id_grupo`,`id_menu`) USING BTREE,
  KEY `privilegio_ibfk_1` (`id_menu`) USING BTREE,
  KEY `privilegio_ibfk_2` (`id_grupo`) USING BTREE,
  CONSTRAINT `privilegio_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  CONSTRAINT `privilegio_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='ASIGNACION DE PRIVILEGIO DE ACCESO A MENU';

-- ----------------------------
-- Records of privilegio
-- ----------------------------
INSERT INTO `privilegio` VALUES ('1', '1', '1');
INSERT INTO `privilegio` VALUES ('2', '1', '2');
INSERT INTO `privilegio` VALUES ('4', '1', '3');
INSERT INTO `privilegio` VALUES ('5', '1', '4');
INSERT INTO `privilegio` VALUES ('3', '3', '3');
INSERT INTO `privilegio` VALUES ('6', '4', '4');
INSERT INTO `privilegio` VALUES ('7', '5', '5');

-- ----------------------------
-- Table structure for submenu_1
-- ----------------------------
DROP TABLE IF EXISTS `submenu_1`;
CREATE TABLE `submenu_1` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `modulo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_menu` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_menu_gd_submenu` (`id_menu`) USING BTREE,
  CONSTRAINT `submenu_1_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='CONTIENE EL SUB ITEMS DEL MENU';

-- ----------------------------
-- Records of submenu_1
-- ----------------------------
INSERT INTO `submenu_1` VALUES ('1', '../componentes/phpmyadmin/', 'general', '1');
INSERT INTO `submenu_1` VALUES ('2', 'modulo/ingreso/', 'inicio', '2');
INSERT INTO `submenu_1` VALUES ('3', 'parqueadero/modulo/ingreso', 'panel ingreso', '4');
INSERT INTO `submenu_1` VALUES ('4', 'parqueadero/modulo/salida', 'panel salida', '4');
INSERT INTO `submenu_1` VALUES ('5', 'billar/modulo/panel_consumos', 'consumo', '3');
INSERT INTO `submenu_1` VALUES ('6', 'billar/modulo/panel_ubicacion', 'ubicacion', '3');
INSERT INTO `submenu_1` VALUES ('7', 'billar/modulo/panel_pago', 'pago', '3');
INSERT INTO `submenu_1` VALUES ('8', 'parqueadero/modulo/parqueadero', 'parqueadero', '4');
INSERT INTO `submenu_1` VALUES ('9', 'principal', 'inicio', '3');
INSERT INTO `submenu_1` VALUES ('10', 'principal', 'inicio', '4');
INSERT INTO `submenu_1` VALUES ('11', 'modulo/ingreso/', 'inicio', '1');
INSERT INTO `submenu_1` VALUES ('12', 'login', 'login', '5');
INSERT INTO `submenu_1` VALUES ('13', 'facturacion/modulo/facturar', 'facturar', '5');
INSERT INTO `submenu_1` VALUES ('14', 'login', 'login', '3');
INSERT INTO `submenu_1` VALUES ('15', 'facturacion/modulo/productos', 'productos', '5');
INSERT INTO `submenu_1` VALUES ('16', 'principal', 'inicio', '5');

-- ----------------------------
-- Table structure for submenu_2
-- ----------------------------
DROP TABLE IF EXISTS `submenu_2`;
CREATE TABLE `submenu_2` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `modulo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_submenu_1` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_menu_gd_submenu` (`id_submenu_1`) USING BTREE,
  CONSTRAINT `submenu_2_ibfk_1` FOREIGN KEY (`id_submenu_1`) REFERENCES `submenu_1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='SUBMENU 1';

-- ----------------------------
-- Records of submenu_2
-- ----------------------------
INSERT INTO `submenu_2` VALUES ('1', 'billar/modulo/prueba', 'prueba', '5');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) NOT NULL,
  `clave` tinyblob NOT NULL,
  `correo` varchar(25) NOT NULL,
  `grupo` int(12) NOT NULL DEFAULT '0',
  `estado` tinyint(1) NOT NULL,
  `identificacion` int(12) NOT NULL,
  `empresa` int(12) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `in_usuario` (`usuario`) USING BTREE,
  UNIQUE KEY `identificacion` (`identificacion`) USING BTREE,
  KEY `in_id` (`id`) USING BTREE,
  KEY `in_grupo` (`grupo`) USING BTREE,
  KEY `in_correo` (`correo`) USING BTREE,
  KEY `empresa` (`empresa`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`id`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`empresa`) REFERENCES `empresas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='DATOS DEL USUARIOS';

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'zayro', 0xD4DEFD439A, 'zayro8905@gmail.com', '1', '0', '1098669883', '1', '1098669883.png');
INSERT INTO `usuarios` VALUES ('2', 'fernando', 0x5EC15DA5FDC92C0B, 'correom@correo.com', '5', '1', '102123120', '5', null);
INSERT INTO `usuarios` VALUES ('3', 'parqueadero', 0xC9D44F703B3D7B31D43280, 'correop@correo.com', '4', '1', '123456', '4', null);
INSERT INTO `usuarios` VALUES ('4', 'billar01', 0xCD6B7E6DE928, 'correob@correo.com', '3', '1', '1234567', '3', null);
INSERT INTO `usuarios` VALUES ('5', 'usuariobillar01', 0xCD6B7E6DE928, 'gato', '3', '1', '102030', '2', 'marlon.png');
INSERT INTO `usuarios` VALUES ('6', 'usuariobillar02', 0xCD6B7E6DE928, 'elvia@gmail', '3', '1', '123', '2', null);

-- ----------------------------
-- Procedure structure for conectar_usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `conectar_usuarios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `conectar_usuarios`(IN `_usuario` varchar(20), IN `_clave` varchar(20), IN `_empresa` int, IN `_ip` varchar(15))
BEGIN

DECLARE identificar,
 caducir INT;


DECLARE conexion VARCHAR (20);


DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	-- ERROR
	RESIGNAL;

ROLLBACK;


END;

/*
DECLARE
	EXIT HANDLER FOR SQLWARNING
BEGIN
	-- WARNING
	RESIGNAL;
ROLLBACK;
END;
*/

SELECT
	DATEDIFF(e.fecha_final, CURDATE()) AS caduce,
IF (
	l.identificacion,
	'conectado',
	'desconectado'
) AS enlinea,
 u.identificacion INTO caducir,
 conexion,
 identificar
FROM
	usuarios AS u
JOIN empresas AS e ON u.empresa = e.id
LEFT JOIN enlinea l ON l.identificacion = u.identificacion
WHERE
	u.clave = encode(_clave, 'clave')
AND
u.empresa = _empresa
AND (
	u.usuario = _usuario
	OR u.correo = _usuario
)
AND u.estado = 1
#OR l.ip = _ip
HAVING
	caduce > 1;


IF (conexion = 'desconectado') THEN
	
INSERT INTO enlinea (`identificacion`, `ip`) VALUES	(identificar , _ip);

SELECT
	u.usuario,
	u.grupo,
	g.nombre AS nombre_grupo,
	u.identificacion,
	u.imagen,
	u.empresa AS codigo_empresa,
	e.nombre AS empresa,
	e.clave as clave,
	e.usuario as usuario,
	e.servidor as servidor,
	e.bdd as bdd,
	'true' AS success
FROM
	usuarios AS u
JOIN grupo AS g ON u.grupo = g.id
JOIN empresas AS e ON e.id = u.empresa
WHERE
	u.identificacion = identificar;


ELSE

#DELETE FROM enlinea WHERE identificacion = identificar;


IF EXISTS (SELECT identificacion FROM enlinea WHERE identificacion = identificar) THEN

SELECT *, 'conectado' AS success FROM enlinea WHERE identificacion = identificar;

ELSE

SELECT 'false' AS success;

END
IF;
		


END
IF;

COMMIT;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for cambio_clave
-- ----------------------------
DROP FUNCTION IF EXISTS `cambio_clave`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cambio_clave`(`_clave` varchar(50), `_cambio` varchar(50), `_usuario` varchar(50)) RETURNS varchar(20) CHARSET utf8
BEGIN

DECLARE salida varchar(50);

    UPDATE
    usuarios
    SET
    clave = encode(_cambio, 'clave')
    WHERE
    usuario = _usuario
    and
    clave = encode(_clave, 'clave')
    and
    estado  = '1';

SELECT ROW_COUNT() into salida;

	RETURN salida;
END
;;
DELIMITER ;
