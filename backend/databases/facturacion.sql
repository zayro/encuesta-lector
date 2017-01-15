/*
Navicat MySQL Data Transfer

Source Server         : local maestro
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : facturacion

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-04 19:57:22
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
  `usuario` int(12) NOT NULL,
  `proceso` longtext NOT NULL,
  `mensaje` longtext NOT NULL,
  `archivo` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identificacion` (`usuario`) USING BTREE,
  CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `estructura_proyecto`.`usuarios` (`identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='CONTIENE LOG LOS PROCESOS DE LAS DIFERENTES EJECUCIONES DEL PROYECTO';

-- ----------------------------
-- Records of auditoria
-- ----------------------------
INSERT INTO `auditoria` VALUES ('1', '::1', '2016-01-19 17:42:21', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    31752,\r\n    1,\r\n    102123120 \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('2', '::1', '2016-01-20 11:18:42', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    4950,\r\n    1,\r\n    102123120 \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('3', '::1', '2016-01-20 11:18:42', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    66,\r\n    75,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('4', '::1', '2016-01-20 11:19:12', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    4950,\r\n    1,\r\n    102123120 \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('5', '::1', '2016-01-20 11:19:12', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    66,\r\n    75,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('6', '::1', '2016-01-20 11:19:36', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    904950,\r\n    1,\r\n    102123120 \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('7', '::1', '2016-01-20 11:19:36', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    66,\r\n    75,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('8', '::1', '2016-01-20 11:19:36', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    3,\r\n    10,\r\n    90000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('9', '::1', '2016-01-20 11:34:57', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    3,\r\n    500000,\r\n    1,\r\n    102123120 \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('10', '::1', '2016-01-20 11:34:57', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    3,\r\n    10,\r\n    50000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('11', '::1', '2016-01-20 11:37:53', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    3,\r\n    18000280,\r\n    1,\r\n    102123120 \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('12', '::1', '2016-01-20 11:37:53', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    20,\r\n    900014,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('13', '::1', '2016-01-20 11:48:28', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    50400000,\r\n    1,\r\n    102123120,\r\n    ||\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('14', '::1', '2016-01-20 11:48:28', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    5000000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('15', '::1', '2016-01-20 11:48:28', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    5,\r\n    80000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('16', '::1', '2016-01-20 11:50:07', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    50400000,\r\n    1,\r\n    102123120,\r\n    ||\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('17', '::1', '2016-01-20 11:50:07', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    5000000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('18', '::1', '2016-01-20 11:50:07', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    5,\r\n    80000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('19', '::1', '2016-01-20 11:50:51', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    50400000,\r\n    1,\r\n    102123120,\r\n    ||\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('20', '::1', '2016-01-20 11:50:51', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    5000000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('21', '::1', '2016-01-20 11:50:51', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    5,\r\n    80000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('22', '::1', '2016-01-20 11:51:48', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    50400000,\r\n    1,\r\n    102123120,\r\n    |muy buen aplicacion|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('23', '::1', '2016-01-20 11:51:48', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    5000000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('24', '::1', '2016-01-20 11:51:48', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    5,\r\n    80000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('25', '::1', '2016-01-20 11:53:02', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    50400000,\r\n    1,\r\n    102123120,\r\n    |muy buen aplicacion|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('26', '::1', '2016-01-20 11:53:02', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    5000000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('27', '::1', '2016-01-20 11:53:02', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    5,\r\n    80000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('28', '::1', '2016-01-20 11:53:28', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    50400000,\r\n    1,\r\n    102123120,\r\n    |muy buen aplicacion | gato / | !|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('29', '::1', '2016-01-20 11:53:28', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    5000000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('30', '::1', '2016-01-20 11:53:28', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    5,\r\n    80000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('31', '::1', '2016-01-20 12:00:32', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    96240000,\r\n    1,\r\n    102123120,\r\n    |estas es una buena noticia|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('32', '::1', '2016-01-20 12:00:32', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    8020,\r\n    12000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('33', '::1', '2016-01-20 12:03:08', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    171570,\r\n    1,\r\n    102123120,\r\n    |ok very fine|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('34', '::1', '2016-01-20 12:03:08', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    345,\r\n    454,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('35', '::1', '2016-01-20 12:03:08', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    3,\r\n    45,\r\n    332,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('36', '::1', '2016-01-20 12:05:08', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    2520,\r\n    1,\r\n    102123120,\r\n    |456|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('37', '::1', '2016-01-20 12:05:08', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    45,\r\n    56,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('38', '::1', '2016-01-20 12:10:05', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    2520,\r\n    1,\r\n    102123120,\r\n    |456yyyy|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('39', '::1', '2016-01-20 12:10:05', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    45,\r\n    56,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('40', '::1', '2016-01-20 12:15:16', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    1500000,\r\n    1,\r\n    102123120,\r\n    |VENDIDO|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('41', '::1', '2016-01-20 12:15:16', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    1,\r\n    1500000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('42', '::1', '2016-01-20 12:16:42', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    3,\r\n    264,\r\n    1,\r\n    102123120,\r\n    |ok|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('43', '::1', '2016-01-20 12:16:42', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    4,\r\n    66,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('44', '::1', '2016-01-20 12:17:27', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    333334,\r\n    1,\r\n    102123120,\r\n    |ok|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('45', '::1', '2016-01-20 12:17:27', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    1,\r\n    333334,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('46', '::1', '2016-01-20 12:18:13', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    12000,\r\n    1,\r\n    102123120,\r\n    |bien|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('47', '::1', '2016-01-20 12:18:13', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    1,\r\n    12000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('48', '::1', '2016-01-20 12:19:12', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    500000,\r\n    1,\r\n    102123120,\r\n    |bien|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('49', '::1', '2016-01-20 12:19:12', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    50000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('50', '::1', '2016-01-20 12:21:27', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    500000,\r\n    1,\r\n    102123120,\r\n    |ok|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('51', '::1', '2016-01-20 12:21:27', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    10,\r\n    50000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('52', '::1', '2016-01-20 12:23:29', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    1,\r\n    1000000,\r\n    1,\r\n    102123120,\r\n    |uno nuevo|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('53', '::1', '2016-01-20 12:23:29', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    1,\r\n    1000000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('54', '::1', '2016-01-20 12:26:23', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    2000,\r\n    1,\r\n    102123120,\r\n    |very fine|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('55', '::1', '2016-01-20 12:26:23', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    1,\r\n    1,\r\n    2000,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('56', '::1', '2016-01-21 17:34:21', '102123120', 'INSERT INTO `facturacion`.`maestro_factura`\r\n    (`id`,\r\n    `factura`,\r\n    `fecha`,\r\n    `tipo_factura`,\r\n    `total`,\r\n    `id_tercero`,\r\n    `id_usuario`,\r\n    `descripcion`)\r\n    SELECT\r\n    IF(id > 0, MAX(id) + 1, 1),\r\n    CONCAT(|FACTURA - |, IF(id > 0, MAX(id) + 1, 1)),\r\n    CURRENT_TIMESTAMP,\r\n    2,\r\n    50,\r\n    1,\r\n    102123120,\r\n    |ok|\r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardo factura', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');
INSERT INTO `auditoria` VALUES ('57', '::1', '2016-01-21 17:34:22', '102123120', 'INSERT INTO `facturacion`.`detalle_factura`\r\n    (`id_producto`,\r\n    `cantidad`,\r\n    `precio`,\r\n    `id_maestro_factura`)\r\n    SELECT    \r\n    2,\r\n    10,\r\n    5,\r\n    MAX(id) \r\n    FROM  `facturacion`.`maestro_factura`;\r\n    ', 'guardando detalle', 'C:/wamp/www/estructura_proyecto/public_html/proyect/facturacion/controller/controller_factura.php');

-- ----------------------------
-- Table structure for detalle_factura
-- ----------------------------
DROP TABLE IF EXISTS `detalle_factura`;
CREATE TABLE `detalle_factura` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_producto` int(12) NOT NULL,
  `cantidad` int(10) unsigned DEFAULT '0' COMMENT 'cantidad de articulos',
  `precio` int(10) unsigned DEFAULT '0' COMMENT 'precio del articulo',
  `id_maestro_factura` int(12) NOT NULL,
  PRIMARY KEY (`id`,`id_producto`,`id_maestro_factura`),
  KEY `id_maestro_factura` (`id_maestro_factura`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_maestro_factura`) REFERENCES `maestro_factura` (`id`),
  CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detalle_factura
-- ----------------------------
INSERT INTO `detalle_factura` VALUES ('3', '2', '66', '75', '1');
INSERT INTO `detalle_factura` VALUES ('4', '2', '66', '75', '2');
INSERT INTO `detalle_factura` VALUES ('5', '3', '10', '90000', '2');
INSERT INTO `detalle_factura` VALUES ('6', '3', '10', '50000', '3');
INSERT INTO `detalle_factura` VALUES ('7', '2', '20', '900014', '4');
INSERT INTO `detalle_factura` VALUES ('8', '1', '10', '5000000', '5');
INSERT INTO `detalle_factura` VALUES ('9', '2', '5', '80000', '5');
INSERT INTO `detalle_factura` VALUES ('10', '1', '10', '5000000', '6');
INSERT INTO `detalle_factura` VALUES ('11', '2', '5', '80000', '6');
INSERT INTO `detalle_factura` VALUES ('12', '1', '10', '5000000', '7');
INSERT INTO `detalle_factura` VALUES ('13', '2', '5', '80000', '7');
INSERT INTO `detalle_factura` VALUES ('14', '1', '10', '5000000', '8');
INSERT INTO `detalle_factura` VALUES ('15', '2', '5', '80000', '8');
INSERT INTO `detalle_factura` VALUES ('16', '1', '10', '5000000', '9');
INSERT INTO `detalle_factura` VALUES ('17', '2', '5', '80000', '9');
INSERT INTO `detalle_factura` VALUES ('18', '1', '10', '5000000', '10');
INSERT INTO `detalle_factura` VALUES ('19', '2', '5', '80000', '10');
INSERT INTO `detalle_factura` VALUES ('20', '1', '8020', '12000', '11');
INSERT INTO `detalle_factura` VALUES ('21', '2', '345', '454', '12');
INSERT INTO `detalle_factura` VALUES ('22', '3', '45', '332', '12');
INSERT INTO `detalle_factura` VALUES ('23', '2', '45', '56', '13');
INSERT INTO `detalle_factura` VALUES ('24', '2', '45', '56', '14');
INSERT INTO `detalle_factura` VALUES ('25', '2', '1', '1500000', '15');
INSERT INTO `detalle_factura` VALUES ('26', '1', '4', '66', '16');
INSERT INTO `detalle_factura` VALUES ('27', '2', '1', '333334', '17');
INSERT INTO `detalle_factura` VALUES ('28', '2', '1', '12000', '18');
INSERT INTO `detalle_factura` VALUES ('29', '1', '10', '50000', '19');
INSERT INTO `detalle_factura` VALUES ('30', '1', '10', '50000', '20');
INSERT INTO `detalle_factura` VALUES ('31', '1', '1', '1000000', '21');
INSERT INTO `detalle_factura` VALUES ('32', '1', '1', '2000', '22');
INSERT INTO `detalle_factura` VALUES ('33', '2', '10', '5', '23');

-- ----------------------------
-- Table structure for maestro_factura
-- ----------------------------
DROP TABLE IF EXISTS `maestro_factura`;
CREATE TABLE `maestro_factura` (
  `id` int(12) NOT NULL DEFAULT '1',
  `factura` varchar(50) NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `tipo_factura` int(12) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `id_tercero` int(12) NOT NULL,
  `id_usuario` int(12) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`tipo_factura`,`factura`,`id_tercero`,`id_usuario`),
  UNIQUE KEY `factura` (`factura`),
  KEY `id` (`id`),
  KEY `tipo_factura` (`tipo_factura`),
  KEY `id_tercero` (`id_tercero`),
  KEY `fecha` (`fecha`),
  KEY `maestro_factura_ibfk_3` (`id_usuario`),
  CONSTRAINT `maestro_factura_ibfk_1` FOREIGN KEY (`tipo_factura`) REFERENCES `tipo_factura` (`id`),
  CONSTRAINT `maestro_factura_ibfk_2` FOREIGN KEY (`id_tercero`) REFERENCES `tercero` (`id`),
  CONSTRAINT `maestro_factura_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `estructura_proyecto`.`usuarios` (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maestro_factura
-- ----------------------------
INSERT INTO `maestro_factura` VALUES ('1', 'FACTURA - 1', '2016-01-20 11:19:12', '1', '4950.00', '1', '102123120', null);
INSERT INTO `maestro_factura` VALUES ('2', 'FACTURA - 2', '2016-01-20 11:19:36', '1', '904950.00', '1', '102123120', null);
INSERT INTO `maestro_factura` VALUES ('3', 'FACTURA - 3', '2016-01-20 11:34:57', '3', '500000.00', '1', '102123120', null);
INSERT INTO `maestro_factura` VALUES ('4', 'FACTURA - 4', '2016-01-20 11:37:53', '3', '18000280.00', '1', '102123120', null);
INSERT INTO `maestro_factura` VALUES ('5', 'FACTURA - 5', '2016-01-20 11:48:28', '2', '50400000.00', '1', '102123120', '');
INSERT INTO `maestro_factura` VALUES ('6', 'FACTURA - 6', '2016-01-20 11:50:07', '2', '50400000.00', '1', '102123120', '');
INSERT INTO `maestro_factura` VALUES ('7', 'FACTURA - 7', '2016-01-20 11:50:51', '2', '50400000.00', '1', '102123120', '');
INSERT INTO `maestro_factura` VALUES ('8', 'FACTURA - 8', '2016-01-20 11:51:48', '2', '50400000.00', '1', '102123120', 'muy buen aplicacion');
INSERT INTO `maestro_factura` VALUES ('9', 'FACTURA - 9', '2016-01-20 11:53:02', '2', '50400000.00', '1', '102123120', 'muy buen aplicacion');
INSERT INTO `maestro_factura` VALUES ('10', 'FACTURA - 10', '2016-01-20 11:53:28', '2', '50400000.00', '1', '102123120', 'muy buen aplicacion \' gato / \" !');
INSERT INTO `maestro_factura` VALUES ('11', 'FACTURA - 11', '2016-01-20 12:00:32', '2', '96240000.00', '1', '102123120', 'estas es una buena noticia');
INSERT INTO `maestro_factura` VALUES ('12', 'FACTURA - 12', '2016-01-20 12:03:08', '2', '171570.00', '1', '102123120', 'ok very fine');
INSERT INTO `maestro_factura` VALUES ('13', 'FACTURA - 13', '2016-01-20 12:05:08', '2', '2520.00', '1', '102123120', '456');
INSERT INTO `maestro_factura` VALUES ('14', 'FACTURA - 14', '2016-01-20 12:10:05', '2', '2520.00', '1', '102123120', '456yyyy');
INSERT INTO `maestro_factura` VALUES ('15', 'FACTURA - 15', '2016-01-20 12:15:16', '1', '1500000.00', '1', '102123120', 'VENDIDO');
INSERT INTO `maestro_factura` VALUES ('16', 'FACTURA - 16', '2016-01-20 12:16:42', '3', '264.00', '1', '102123120', 'ok');
INSERT INTO `maestro_factura` VALUES ('17', 'FACTURA - 17', '2016-01-20 12:17:27', '2', '333334.00', '1', '102123120', 'ok');
INSERT INTO `maestro_factura` VALUES ('18', 'FACTURA - 18', '2016-01-20 12:18:13', '1', '12000.00', '1', '102123120', 'bien');
INSERT INTO `maestro_factura` VALUES ('19', 'FACTURA - 19', '2016-01-20 12:19:12', '1', '500000.00', '1', '102123120', 'bien');
INSERT INTO `maestro_factura` VALUES ('20', 'FACTURA - 20', '2016-01-20 12:21:27', '2', '500000.00', '1', '102123120', 'ok');
INSERT INTO `maestro_factura` VALUES ('21', 'FACTURA - 21', '2016-01-20 12:23:29', '1', '1000000.00', '1', '102123120', 'uno nuevo');
INSERT INTO `maestro_factura` VALUES ('22', 'FACTURA - 22', '2016-01-20 12:26:23', '2', '2000.00', '1', '102123120', 'very fine');
INSERT INTO `maestro_factura` VALUES ('23', 'FACTURA - 23', '2016-01-21 17:34:21', '2', '50.00', '1', '102123120', 'ok');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1' COMMENT 'estado 1 producto activo',
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('1', 'samsung s3', '1020', '1');
INSERT INTO `producto` VALUES ('2', 'samsung s4', '1021', '1');
INSERT INTO `producto` VALUES ('3', 'samsung s5', '1022', '1');
INSERT INTO `producto` VALUES ('4', 'samsung s6', '1024', '1');
INSERT INTO `producto` VALUES ('5', 'samsung s7', '0777', '1');

-- ----------------------------
-- Table structure for tercero
-- ----------------------------
DROP TABLE IF EXISTS `tercero`;
CREATE TABLE `tercero` (
  `id` int(12) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `identificacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tercero
-- ----------------------------
INSERT INTO `tercero` VALUES ('1', 'Marlon', '301', '2342');

-- ----------------------------
-- Table structure for tipo_factura
-- ----------------------------
DROP TABLE IF EXISTS `tipo_factura`;
CREATE TABLE `tipo_factura` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_factura
-- ----------------------------
INSERT INTO `tipo_factura` VALUES ('1', 'VENTA');
INSERT INTO `tipo_factura` VALUES ('2', 'COMPRA');
INSERT INTO `tipo_factura` VALUES ('3', 'SERVICIO');
