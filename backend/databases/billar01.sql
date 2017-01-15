/*
Navicat MySQL Data Transfer

Source Server         : local maestro
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : billar01

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-08-14 18:18:56
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
  `archivo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identificacion` (`usuario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='CONTIENE LOG LOS PROCESOS DE LAS DIFERENTES EJECUCIONES DEL PROYECTO';

-- ----------------------------
-- Records of auditoria
-- ----------------------------
INSERT INTO `auditoria` VALUES ('1', '127.0.0.1', '2015-07-21 10:25:04', '123456', 'CALL guardar_mesa (|1|)', 'se habilita una mesa', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_tiempo.php');
INSERT INTO `auditoria` VALUES ('2', '127.0.0.1', '2015-07-21 10:25:10', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |1|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('3', '127.0.0.1', '2015-07-21 10:25:12', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |5|, |1|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('4', '127.0.0.1', '2015-07-21 10:25:28', '123456', 'UPDATE consumo set estado = 1 where id_tiempo = |1|;', 'ACTUALIZA EL ESTADO DEL CONSUMO A CANCELADO', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_pago.php');
INSERT INTO `auditoria` VALUES ('5', '127.0.0.1', '2015-07-21 10:25:28', '123456', 'UPDATE tiempo set estado = 1, salida = now() where id = |1|;', 'ACTUALIZA EL ESTADO DEL TIEMPO A CANCELADO', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_pago.php');
INSERT INTO `auditoria` VALUES ('6', '127.0.0.1', '2015-07-21 10:25:45', '123456', 'CALL guardar_mesa (|1|)', 'se habilita una mesa', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_tiempo.php');
INSERT INTO `auditoria` VALUES ('7', '127.0.0.1', '2015-08-03 15:20:36', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('8', '127.0.0.1', '2015-08-03 15:20:39', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('9', '127.0.0.1', '2015-08-03 15:22:24', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |2|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('10', '127.0.0.1', '2015-08-03 15:23:04', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('11', '127.0.0.1', '2015-08-03 15:23:20', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('12', '127.0.0.1', '2015-08-03 15:23:28', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |5|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('13', '127.0.0.1', '2015-08-03 15:26:33', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |2|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('14', '127.0.0.1', '2015-08-03 15:27:13', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('15', '127.0.0.1', '2015-08-03 15:28:57', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('16', '127.0.0.1', '2015-08-03 15:34:56', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('17', '127.0.0.1', '2015-08-03 15:36:32', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('18', '127.0.0.1', '2015-08-03 15:39:43', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |6|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('19', '127.0.0.1', '2015-08-03 15:46:08', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |3|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('20', '127.0.0.1', '2015-08-03 15:46:19', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |4|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('21', '127.0.0.1', '2015-08-03 15:46:34', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |5|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('22', '127.0.0.1', '2015-08-03 15:48:42', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |6|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('23', '127.0.0.1', '2015-08-03 15:49:25', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |7|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('24', '127.0.0.1', '2015-08-03 15:53:00', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |8|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('25', '127.0.0.1', '2015-08-03 15:58:04', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |9|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('26', '172.21.70.130', '2015-08-03 15:58:54', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |10|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('27', '172.21.70.130', '2015-08-03 16:02:07', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('28', '172.21.70.130', '2015-08-03 16:03:04', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |2|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('29', '172.21.70.130', '2015-08-03 16:09:19', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |2|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('30', '172.21.70.130', '2015-08-03 16:12:22', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |1|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('31', '172.21.70.130', '2015-08-03 16:13:12', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('32', '172.21.70.130', '2015-08-03 16:13:21', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |1|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('33', '127.0.0.1', '2015-08-03 16:13:31', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |11|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('34', '127.0.0.1', '2015-08-03 16:13:39', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |20|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('35', '127.0.0.1', '2015-08-03 16:14:34', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |6|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('36', '127.0.0.1', '2015-08-03 16:14:40', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('37', '127.0.0.1', '2015-08-03 16:15:28', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |6|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('38', '127.0.0.1', '2015-08-03 16:15:36', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |2|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('39', '127.0.0.1', '2015-08-03 16:24:53', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |5|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('40', '127.0.0.1', '2015-08-03 16:26:50', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('41', '127.0.0.1', '2015-08-03 16:27:21', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |43|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('42', '172.21.70.130', '2015-08-03 16:28:02', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |3|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('43', '127.0.0.1', '2015-08-03 16:34:49', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('44', '172.21.70.130', '2015-08-03 16:35:23', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |43|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('45', '172.21.70.130', '2015-08-03 16:35:50', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |1|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('46', '172.21.70.130', '2015-08-03 16:35:57', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |4|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('47', '172.21.70.130', '2015-08-03 16:37:37', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |5|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('48', '172.21.70.130', '2015-08-03 16:38:12', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |2|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('49', '172.21.70.130', '2015-08-03 16:38:47', '123456', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (|1|, |10|, |2|)', 'se almanceno un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/guardar_consumo.php');
INSERT INTO `auditoria` VALUES ('50', '172.21.70.130', '2015-08-03 16:39:23', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |12|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');
INSERT INTO `auditoria` VALUES ('51', '172.21.70.130', '2015-08-03 16:39:27', '123456', '\r\nDELETE FROM consumo \r\nWHERE\r\nid = |13|\r\n;\r\n\r\n', 'se elimino un consumo', 'C:/wamp/www/estructura_proyecto/public_html/billar/script_php/eliminar_consumo.php');

-- ----------------------------
-- Table structure for consumo
-- ----------------------------
DROP TABLE IF EXISTS `consumo`;
CREATE TABLE `consumo` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `id_servicio` int(12) DEFAULT NULL,
  `cantidad` tinyint(2) DEFAULT '1',
  `id_tiempo` int(12) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '0' COMMENT 'estado si cancelo el  producto 1 si no lo cancelo es 0',
  PRIMARY KEY (`id`),
  KEY `fk_id_servicio_consumo` (`id_servicio`) USING BTREE,
  KEY `fk_id_tiempo_consumo` (`id_tiempo`) USING BTREE,
  CONSTRAINT `consumo_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id`),
  CONSTRAINT `consumo_ibfk_2` FOREIGN KEY (`id_tiempo`) REFERENCES `tiempo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumo
-- ----------------------------
INSERT INTO `consumo` VALUES ('1', '1', '3', '1', '1');
INSERT INTO `consumo` VALUES ('2', '1', '5', '1', '1');
INSERT INTO `consumo` VALUES ('14', '1', '6', '2', '0');
INSERT INTO `consumo` VALUES ('15', '1', '3', '2', '0');
INSERT INTO `consumo` VALUES ('16', '1', '2', '2', '0');
INSERT INTO `consumo` VALUES ('17', '1', '2', '2', '0');
INSERT INTO `consumo` VALUES ('18', '1', '1', '2', '0');
INSERT INTO `consumo` VALUES ('19', '1', '3', '2', '0');
INSERT INTO `consumo` VALUES ('21', '1', '6', '2', '0');
INSERT INTO `consumo` VALUES ('22', '1', '4', '2', '0');
INSERT INTO `consumo` VALUES ('23', '1', '6', '2', '0');
INSERT INTO `consumo` VALUES ('24', '1', '2', '2', '0');
INSERT INTO `consumo` VALUES ('25', '1', '5', '2', '0');
INSERT INTO `consumo` VALUES ('26', '1', '4', '2', '0');
INSERT INTO `consumo` VALUES ('27', '1', '43', '2', '0');
INSERT INTO `consumo` VALUES ('28', '1', '3', '2', '0');
INSERT INTO `consumo` VALUES ('29', '1', '4', '2', '0');
INSERT INTO `consumo` VALUES ('30', '1', '43', '2', '0');
INSERT INTO `consumo` VALUES ('31', '1', '1', '2', '0');
INSERT INTO `consumo` VALUES ('32', '1', '4', '2', '0');
INSERT INTO `consumo` VALUES ('33', '1', '5', '2', '0');
INSERT INTO `consumo` VALUES ('34', '1', '2', '2', '0');
INSERT INTO `consumo` VALUES ('35', '1', '10', '2', '0');

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS `pago`;
CREATE TABLE `pago` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_tiempo` int(12) DEFAULT NULL,
  `producto` varchar(50) DEFAULT NULL,
  `cantidad` int(12) DEFAULT NULL,
  `precio_consumo` decimal(10,2) DEFAULT NULL,
  `precio_tiempo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_tiempo` (`id_tiempo`) USING BTREE,
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_tiempo`) REFERENCES `tiempo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pago
-- ----------------------------

-- ----------------------------
-- Table structure for precio
-- ----------------------------
DROP TABLE IF EXISTS `precio`;
CREATE TABLE `precio` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `hora` decimal(10,2) DEFAULT NULL,
  `minuto` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of precio
-- ----------------------------
INSERT INTO `precio` VALUES ('1', 'billar', '1000.00', '16.67');
INSERT INTO `precio` VALUES ('2', 'pool', '1500.00', '25.00');
INSERT INTO `precio` VALUES ('3', 'rana', '500.00', '100.00');

-- ----------------------------
-- Table structure for servicio
-- ----------------------------
DROP TABLE IF EXISTS `servicio`;
CREATE TABLE `servicio` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `precio` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio
-- ----------------------------
INSERT INTO `servicio` VALUES ('1', 'cervezas', '2000');
INSERT INTO `servicio` VALUES ('2', 'gaseosa', '1500');
INSERT INTO `servicio` VALUES ('3', 'galletas', '500');
INSERT INTO `servicio` VALUES ('4', 'mentas', '50');
INSERT INTO `servicio` VALUES ('5', 'cigarrillo', '600');
INSERT INTO `servicio` VALUES ('26', 'casa link', '6786');
INSERT INTO `servicio` VALUES ('27', 'teteros', '45');
INSERT INTO `servicio` VALUES ('28', 'casas', '12');
INSERT INTO `servicio` VALUES ('29', 'comida', '1200');
INSERT INTO `servicio` VALUES ('30', 'fresco', '234');
INSERT INTO `servicio` VALUES ('34', 'vasos', '300');

-- ----------------------------
-- Table structure for tiempo
-- ----------------------------
DROP TABLE IF EXISTS `tiempo`;
CREATE TABLE `tiempo` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `entrada` datetime DEFAULT NULL,
  `salida` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '0' COMMENT 'estado si cancelo el tiempo 1 si no lo cancelo es 0',
  `id_ubicacion` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_ubicacion_tiempo` (`id_ubicacion`) USING BTREE,
  CONSTRAINT `tiempo_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiempo
-- ----------------------------
INSERT INTO `tiempo` VALUES ('1', '2015-07-21 10:25:04', '2015-07-21 10:25:28', '1', '1');
INSERT INTO `tiempo` VALUES ('2', '2015-07-21 10:25:45', null, '0', '1');

-- ----------------------------
-- Table structure for ubicacion
-- ----------------------------
DROP TABLE IF EXISTS `ubicacion`;
CREATE TABLE `ubicacion` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `tipo` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo` (`tipo`) USING BTREE,
  CONSTRAINT `ubicacion_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `precio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ubicacion
-- ----------------------------
INSERT INTO `ubicacion` VALUES ('1', 'mesa 1', '1');
INSERT INTO `ubicacion` VALUES ('2', 'mesa 2', '2');
INSERT INTO `ubicacion` VALUES ('3', 'mesa 3', '2');
INSERT INTO `ubicacion` VALUES ('6', 'mesa 6', '1');
INSERT INTO `ubicacion` VALUES ('9', 'mesa 9', '1');

-- ----------------------------
-- Procedure structure for guardar_mesa
-- ----------------------------
DROP PROCEDURE IF EXISTS `guardar_mesa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_mesa`(IN `$id_ubicacion` INT)
BEGIN

DECLARE exit handler for sqlexception
  BEGIN
    -- ERROR
RESIGNAL;
  ROLLBACK;
END;

DECLARE exit handler for sqlwarning
 BEGIN
    -- WARNING
RESIGNAL;
 ROLLBACK;
END;

IF NOT EXISTS ( SELECT id from tiempo where id_ubicacion = $id_ubicacion and  estado = '0' ) THEN

INSERT into tiempo (entrada, id_ubicacion) values (now(), $id_ubicacion);

ELSE
  
 SIGNAL SQLSTATE '45000'
 SET MESSAGE_TEXT = 'ya esta asignada';

END IF;







END
;;
DELIMITER ;
