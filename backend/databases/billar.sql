/*
Navicat MySQL Data Transfer

Source Server         : local maestro
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : billar

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-09 18:34:24
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='CONTIENE LOG LOS PROCESOS DE LAS DIFERENTES EJECUCIONES DEL PROYECTO';

-- ----------------------------
-- Records of auditoria
-- ----------------------------
INSERT INTO `auditoria` VALUES ('1', '::1', '2016-02-03 17:04:46', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'45\', \'1\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('2', '::1', '2016-02-03 18:01:58', '102030', 'CALL guardar_mesa (\'10\')', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/public_html/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('3', '::1', '2016-02-03 18:27:45', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'45\', \'1\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('4', '::1', '2016-02-03 18:28:02', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'5\', \'1\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('5', '::1', '2016-02-03 18:28:21', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'45\', \'10\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('6', '::1', '2016-02-03 18:42:23', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'5\', \'1\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('7', '::1', '2016-02-04 15:53:24', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'123\', \'1\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('8', '::1', '2016-02-04 16:27:13', '102030', 'INSERT INTO tiempo (entrada, id_ubicacion) SELECT\r\n	now(),\r\n	\'2\'\r\nFROM\r\n	tiempo\r\nWHERE\r\n	id_ubicacion NOT IN (\r\n		SELECT\r\n			id_ubicacion\r\n		FROM\r\n			tiempo\r\n		WHERE\r\n			id_ubicacion = \'2\'\r\n		AND estado = \'0\'\r\n	);\r\n\r\n', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('9', '::1', '2016-02-04 16:27:15', '102030', 'INSERT INTO tiempo (entrada, id_ubicacion) SELECT\r\n	now(),\r\n	\'2\'\r\nFROM\r\n	tiempo\r\nWHERE\r\n	id_ubicacion NOT IN (\r\n		SELECT\r\n			id_ubicacion\r\n		FROM\r\n			tiempo\r\n		WHERE\r\n			id_ubicacion = \'2\'\r\n		AND estado = \'0\'\r\n	);\r\n\r\n', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('10', '::1', '2016-02-04 16:27:17', '102030', 'INSERT INTO tiempo (entrada, id_ubicacion) SELECT\r\n	now(),\r\n	\'2\'\r\nFROM\r\n	tiempo\r\nWHERE\r\n	id_ubicacion NOT IN (\r\n		SELECT\r\n			id_ubicacion\r\n		FROM\r\n			tiempo\r\n		WHERE\r\n			id_ubicacion = \'2\'\r\n		AND estado = \'0\'\r\n	);\r\n\r\n', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('11', '::1', '2016-02-04 16:27:19', '102030', 'INSERT INTO tiempo (entrada, id_ubicacion) SELECT\r\n	now(),\r\n	\'2\'\r\nFROM\r\n	tiempo\r\nWHERE\r\n	id_ubicacion NOT IN (\r\n		SELECT\r\n			id_ubicacion\r\n		FROM\r\n			tiempo\r\n		WHERE\r\n			id_ubicacion = \'2\'\r\n		AND estado = \'0\'\r\n	);\r\n\r\n', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('12', '::1', '2016-02-05 11:23:53', '102030', 'INSERT INTO tiempo (entrada, id_ubicacion) VALUES (\r\n                    now(),\r\n                    \'2\' )', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('13', '::1', '2016-02-05 11:23:56', '102030', 'INSERT INTO tiempo (entrada, id_ubicacion) VALUES (\r\n                    now(),\r\n                    \'9\' )', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('14', '::1', '2016-02-05 11:24:21', '102030', 'INSERT INTO tiempo (entrada, id_ubicacion) VALUES (\r\n                    now(),\r\n                    \'10\' )', 'se habilita una mesa', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('15', '::1', '2016-02-05 15:51:23', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'56\', \'2\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('16', '::1', '2016-02-05 17:32:01', '102030', 'UPDATE consumo set estado = 1 where id_tiempo = 6', 'pago del consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('17', '::1', '2016-02-05 17:32:01', '102030', 'UPDATE tiempo set estado = 1, salida = now() where id = 6', 'pago del tiempo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('18', '::1', '2016-02-05 17:32:01', '102030', ' \r\n      INSERT INTO `pago` (`id_tiempo`,  `total_consumo`,  `total_tiempo`) \r\n      SELECT\r\n      t.id ,\r\n      sum(s.precio) as \'precio_total\',\r\n      ROUND(ROUND(((TIME_TO_SEC(TIMEDIFF( now(), t.entrada ))/60))) * p.minuto) AS \'precio_tiempo\'\r\n      FROM\r\n      tiempo AS t\r\n      JOIN ubicacion AS u ON  u.id =t.id_ubicacion\r\n      JOIN precio as p ON  p.id  =  u.tipo\r\n      JOIN consumo as c ON c.id_tiempo = t.id\r\n      JOIN servicio as s ON c.id_servicio =  s.id\r\n      WHERE\r\n      t.estado = 0\r\n      AND\r\n      t.id = 6;\r\n      ', 'guardar el pago', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('19', '::1', '2016-02-05 17:34:49', '102030', 'UPDATE consumo set estado = 1 where id_tiempo = 2', 'pago del consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('20', '::1', '2016-02-05 17:34:49', '102030', 'UPDATE tiempo set estado = 1, salida = now() where id = 2', 'pago del tiempo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('21', '::1', '2016-02-05 17:34:49', '102030', ' \r\n      INSERT INTO `pago` (`id_tiempo`,  `total_consumo`,  `total_tiempo`) \r\n      SELECT\r\n      t.id ,\r\n      sum(s.precio) as \'precio_total\',\r\n      ROUND(ROUND(((TIME_TO_SEC(TIMEDIFF( now(), t.entrada ))/60))) * p.minuto) AS \'precio_tiempo\'\r\n      FROM\r\n      tiempo AS t\r\n      JOIN ubicacion AS u ON  u.id =t.id_ubicacion\r\n      JOIN precio as p ON  p.id  =  u.tipo\r\n      JOIN consumo as c ON c.id_tiempo = t.id\r\n      JOIN servicio as s ON c.id_servicio =  s.id\r\n      WHERE\r\n      t.estado = 0\r\n      AND\r\n      t.id = 2;\r\n      ', 'guardar el pago', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('22', '::1', '2016-02-05 17:35:34', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'54\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('23', '::1', '2016-02-05 17:35:42', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'4\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('24', '::1', '2016-02-05 17:35:45', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'27\', \'6\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('25', '::1', '2016-02-05 17:35:54', '102030', '\r\n    DELETE FROM consumo \r\n    WHERE\r\n    id = \'2\' ;', 'se elimino un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('26', '::1', '2016-02-09 10:54:45', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'5\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('27', '::1', '2016-02-09 11:02:26', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'5\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('28', '::1', '2016-02-09 11:13:48', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('29', '::1', '2016-02-09 11:16:22', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'8\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('30', '::1', '2016-02-09 11:17:00', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('31', '::1', '2016-02-09 11:17:35', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'9\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('32', '::1', '2016-02-09 11:18:23', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('33', '::1', '2016-02-09 11:18:51', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('34', '::1', '2016-02-09 11:35:39', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'67\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('35', '::1', '2016-02-09 11:36:28', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('36', '::1', '2016-02-09 15:43:21', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('37', '::1', '2016-02-09 15:47:03', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('38', '::1', '2016-02-09 15:48:45', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'8\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('39', '::1', '2016-02-09 15:59:07', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('40', '::1', '2016-02-09 16:01:52', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('41', '::1', '2016-02-09 16:02:05', '102030', 'UPDATE consumo set estado = 1 where id_tiempo = 4', 'pago del consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('42', '::1', '2016-02-09 16:02:05', '102030', 'UPDATE tiempo set estado = 1, salida = now() where id = 4', 'pago del tiempo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('43', '::1', '2016-02-09 16:02:05', '102030', ' \r\n      INSERT INTO `pago` (`id_tiempo`,  `total_consumo`,  `total_tiempo`) \r\n      SELECT\r\n      t.id ,\r\n      sum(s.precio) as \'precio_total\',\r\n      ROUND(ROUND(((TIME_TO_SEC(TIMEDIFF( now(), t.entrada ))/60))) * p.minuto) AS \'precio_tiempo\'\r\n      FROM\r\n      tiempo AS t\r\n      JOIN ubicacion AS u ON  u.id =t.id_ubicacion\r\n      JOIN precio as p ON  p.id  =  u.tipo\r\n      JOIN consumo as c ON c.id_tiempo = t.id\r\n      JOIN servicio as s ON c.id_servicio =  s.id\r\n      WHERE\r\n      t.estado = 0\r\n      AND\r\n      t.id = 4;\r\n      ', 'guardar el pago', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_billar.php');
INSERT INTO `auditoria` VALUES ('44', '::1', '2016-02-09 16:02:10', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'5\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('45', '::1', '2016-02-09 16:02:28', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'8\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');
INSERT INTO `auditoria` VALUES ('46', '::1', '2016-02-09 16:04:51', '102030', 'INSERT into consumo (id_servicio, cantidad, id_tiempo) values (\'1\', \'7\', \'4\')', 'se almanceno un consumo', 'C:/wamp/www/estructura-proyecto/development/proyect/billar/controller/controller_consumo.php');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumo
-- ----------------------------
INSERT INTO `consumo` VALUES ('1', '1', '56', '2', '1');
INSERT INTO `consumo` VALUES ('3', '1', '4', '4', '1');
INSERT INTO `consumo` VALUES ('4', '27', '6', '4', '1');
INSERT INTO `consumo` VALUES ('5', '1', '5', '4', '1');
INSERT INTO `consumo` VALUES ('6', '1', '5', '4', '1');
INSERT INTO `consumo` VALUES ('7', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('8', '1', '8', '4', '1');
INSERT INTO `consumo` VALUES ('9', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('10', '1', '9', '4', '1');
INSERT INTO `consumo` VALUES ('11', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('12', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('13', '1', '67', '4', '1');
INSERT INTO `consumo` VALUES ('14', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('15', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('16', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('17', '1', '8', '4', '1');
INSERT INTO `consumo` VALUES ('18', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('19', '1', '7', '4', '1');
INSERT INTO `consumo` VALUES ('20', '1', '5', '4', '0');
INSERT INTO `consumo` VALUES ('21', '1', '8', '4', '0');
INSERT INTO `consumo` VALUES ('22', '1', '7', '4', '0');

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS `pago`;
CREATE TABLE `pago` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_tiempo` int(12) DEFAULT NULL,
  `total_consumo` decimal(10,2) DEFAULT NULL,
  `total_tiempo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_tiempo` (`id_tiempo`) USING BTREE,
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_tiempo`) REFERENCES `tiempo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pago
-- ----------------------------
INSERT INTO `pago` VALUES ('1', null, null, null);
INSERT INTO `pago` VALUES ('2', null, null, null);
INSERT INTO `pago` VALUES ('3', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiempo
-- ----------------------------
INSERT INTO `tiempo` VALUES ('2', '2016-02-04 16:59:39', '2016-02-05 17:34:49', '1', '1');
INSERT INTO `tiempo` VALUES ('4', '2016-02-05 11:23:53', '2016-02-09 16:02:05', '1', '2');
INSERT INTO `tiempo` VALUES ('5', '2016-02-05 11:23:56', null, '0', '9');
INSERT INTO `tiempo` VALUES ('6', '2016-02-05 11:24:21', '2016-02-05 17:32:01', '1', '10');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ubicacion
-- ----------------------------
INSERT INTO `ubicacion` VALUES ('1', 'mesa 1', '1');
INSERT INTO `ubicacion` VALUES ('2', 'mesa 2', '2');
INSERT INTO `ubicacion` VALUES ('3', 'mesa 3', '2');
INSERT INTO `ubicacion` VALUES ('6', 'mesa 6', '1');
INSERT INTO `ubicacion` VALUES ('9', 'mesa 9', '1');
INSERT INTO `ubicacion` VALUES ('10', 'mesa 10', '2');

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

-- ----------------------------
-- Procedure structure for guardar_pago
-- ----------------------------
DROP PROCEDURE IF EXISTS `guardar_pago`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_pago`(IN `$identificador` INT)
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

START TRANSACTION;

UPDATE consumo set estado = 1 where id_tiempo = $identificador;

UPDATE tiempo set estado = 1, salida = now() where id = $identificador;

INSERT INTO `pago` (`id_tiempo`,  `total_consumo`,  `total_tiempo`) 
SELECT
t.id ,
sum(s.precio) as 'precio_total',
ROUND(ROUND(((TIME_TO_SEC(TIMEDIFF( now(), t.entrada ))/60))) * p.minuto) AS 'precio_tiempo'
FROM
tiempo AS t
JOIN ubicacion AS u ON  u.id =t.id_ubicacion
JOIN precio as p ON  p.id  =  u.tipo
JOIN consumo as c ON c.id_tiempo = t.id
JOIN servicio as s ON c.id_servicio =  s.id
WHERE
t.estado = 0
AND
t.id = $identificador;

END
;;
DELIMITER ;
