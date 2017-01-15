/*
Navicat MySQL Data Transfer

Source Server         : local maestro
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : parqueadero

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-04 19:57:07
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='CONTIENE LOG LOS PROCESOS DE LAS DIFERENTES EJECUCIONES DEL PROYECTO';

-- ----------------------------
-- Records of auditoria
-- ----------------------------
INSERT INTO `auditoria` VALUES ('1', '::1', '2016-02-03 09:51:15', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'hij93J\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('2', '::1', '2016-02-03 10:14:50', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'hij93m\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('3', '::1', '2016-02-03 10:16:39', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'hij93k\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('4', '::1', '2016-02-03 10:25:42', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'hij93c\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('5', '::1', '2016-02-03 10:28:45', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'hij93d\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('6', '::1', '2016-02-03 10:29:05', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'hij93f\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('7', '::1', '2016-02-03 10:29:36', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'HIJ93H\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('8', '::1', '2016-02-03 10:31:59', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'HIJ93I\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('9', '::1', '2016-02-03 10:37:37', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'HIJ93J\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('10', '::1', '2016-02-03 10:46:26', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'HIJ93M\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('11', '::1', '2016-02-03 10:50:02', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'HIJ93K\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('12', '::1', '2016-02-03 10:55:13', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'HIJ93K\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('13', '::1', '2016-02-03 11:02:27', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'HIJ93C\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('14', '::1', '2016-02-03 11:02:35', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'HIJ93C\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('15', '::1', '2016-02-03 11:21:24', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'aaaaaa\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('16', '::1', '2016-02-03 11:21:33', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'aaaaaa\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('17', '::1', '2016-02-03 11:22:48', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'bbbbbb\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('18', '::1', '2016-02-03 11:22:51', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'bbbbbb\'\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('19', '::1', '2016-02-03 11:23:00', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'bbbbbb\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('20', '::1', '2016-02-03 11:48:26', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'bbbbbb\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('21', '::1', '2016-02-03 11:48:29', '123456', 'UPDATE vehiculo\r\n    INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n    AND vehiculo.estado = 0\r\n    AND vehiculo.placa = \'bbbbbb\'\r\n    AND vehiculo.tiempo_salida IS NULL\r\n    SET vehiculo.estado = \'cancelado\',\r\n     vehiculo.tiempo_salida = NOW(),\r\n     vehiculo.valor =\r\n                    IF (\r\n                            #CONDICION\r\n                            MINUTE (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) > precios.salir,\r\n                            #CONDICION SI ES VERDADERO\r\n                            (\r\n                                    TIMESTAMPDIFF(\r\n                                            HOUR,\r\n                                            vehiculo.tiempo_entrada,\r\n                                            NOW()\r\n                                    ) * precios.precio_hora\r\n                            ) + precios.precio_hora,\r\n                            #CONDICION SI ES FALSO\r\n                            HOUR (\r\n                                    TIMEDIFF(\r\n                                            NOW(),\r\n                                            vehiculo.tiempo_entrada\r\n                                    )\r\n                            ) * precios.precio_hora\r\n                    ),\r\n     vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('22', '::1', '2016-02-03 11:48:34', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'bbbbbb\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('23', '::1', '2016-02-03 12:05:28', '123456', 'UPDATE vehiculo\r\n            INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n            AND vehiculo.estado = \'0\'\r\n            AND vehiculo.placa = \'bbbbbb\'\r\n            AND vehiculo.tiempo_salida IS NULL\r\n            SET vehiculo.estado = \'cancelado\',\r\n             vehiculo.tiempo_salida = NOW(),\r\n             vehiculo.valor =\r\n            IF (\r\n                    #CONDICION\r\n                    MINUTE (\r\n                            TIMEDIFF(\r\n                                    NOW(),\r\n                                    vehiculo.tiempo_entrada\r\n                            )\r\n                    ) > precios.salir,\r\n                    #CONDICION SI ES VERDADERO\r\n                    (\r\n                            TIMESTAMPDIFF(\r\n                                    HOUR,\r\n                                    vehiculo.tiempo_entrada,\r\n                                    NOW()\r\n                            ) * precios.precio_hora\r\n                    ) + precios.precio_hora,\r\n                    #CONDICION SI ES FALSO\r\n                    HOUR (\r\n                            TIMEDIFF(\r\n                                    NOW(),\r\n                                    vehiculo.tiempo_entrada\r\n                            )\r\n                    ) * precios.precio_hora\r\n            ),\r\n             vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('24', '::1', '2016-02-03 12:05:38', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'bbbbbb\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('25', '::1', '2016-02-03 12:05:42', '123456', 'UPDATE vehiculo\r\n            INNER JOIN precios ON vehiculo.vehiculo = precios.id\r\n            AND vehiculo.estado = \'0\'\r\n            AND vehiculo.placa = \'bbbbbb\'\r\n            AND vehiculo.tiempo_salida IS NULL\r\n            SET vehiculo.estado = \'cancelado\',\r\n             vehiculo.tiempo_salida = NOW(),\r\n             vehiculo.valor =\r\n            IF (\r\n                    #CONDICION\r\n                    MINUTE (\r\n                            TIMEDIFF(\r\n                                    NOW(),\r\n                                    vehiculo.tiempo_entrada\r\n                            )\r\n                    ) > precios.salir,\r\n                    #CONDICION SI ES VERDADERO\r\n                    (\r\n                            TIMESTAMPDIFF(\r\n                                    HOUR,\r\n                                    vehiculo.tiempo_entrada,\r\n                                    NOW()\r\n                            ) * precios.precio_hora\r\n                    ) + precios.precio_hora,\r\n                    #CONDICION SI ES FALSO\r\n                    HOUR (\r\n                            TIMEDIFF(\r\n                                    NOW(),\r\n                                    vehiculo.tiempo_entrada\r\n                            )\r\n                    ) * precios.precio_hora\r\n            ),\r\n             vehiculo.factura = concat(\'FACT - \', vehiculo.id);', 'actualiza y guarda salida del vehiculo', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_actualizar_vehiculo.php');
INSERT INTO `auditoria` VALUES ('26', '::1', '2016-02-03 12:05:48', '123456', 'INSERT INTO vehiculo (placa, tiempo_entrada, vehiculo ) VALUES (UPPER(\'bbbbbb\'), now(), \'2\')', 'guarda entrada parqueadero', 'C:/wamp/www/estructura-proyecto/public_html/proyect/parqueadero/controller/controller_insertar_vehiculo.php');

-- ----------------------------
-- Table structure for historico_facturas
-- ----------------------------
DROP TABLE IF EXISTS `historico_facturas`;
CREATE TABLE `historico_facturas` (
  `id` int(20) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `tiempo_entrada` datetime NOT NULL,
  `tiempo_salida` datetime DEFAULT NULL,
  `vehiculo` varchar(10) NOT NULL,
  `estado` varchar(12) DEFAULT '0',
  `valor` int(11) DEFAULT NULL,
  `factura` varchar(50) DEFAULT NULL,
  UNIQUE KEY `factura` (`factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of historico_facturas
-- ----------------------------
INSERT INTO `historico_facturas` VALUES ('69', 'HIJ93C', '2016-02-03 11:31:35', null, '2', '0', null, '');
INSERT INTO `historico_facturas` VALUES ('70', 'BBBBBB', '2016-02-03 11:48:26', '2016-02-03 11:48:28', '2', 'cancelado', '0', 'FACT - 000000000070');
INSERT INTO `historico_facturas` VALUES ('71', 'BBBBBB', '2016-02-03 11:48:34', '2016-02-03 12:05:28', '2', 'cancelado', '2000', 'FACT - 000000000071');
INSERT INTO `historico_facturas` VALUES ('72', 'BBBBBB', '2016-02-03 12:05:38', '2016-02-03 12:05:42', '2', 'cancelado', '0', 'FACT - 000000000072');

-- ----------------------------
-- Table structure for precios
-- ----------------------------
DROP TABLE IF EXISTS `precios`;
CREATE TABLE `precios` (
  `precio_hora` decimal(11,2) DEFAULT NULL,
  `precio_minuto` decimal(11,2) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `salir` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of precios
-- ----------------------------
INSERT INTO `precios` VALUES ('1200.00', '16.67', '1', 'MOTO', '10');
INSERT INTO `precios` VALUES ('2000.00', '33.33', '2', 'CARRO', '10');

-- ----------------------------
-- Table structure for vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo` (
  `id` int(12) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `placa` varchar(6) NOT NULL,
  `tiempo_entrada` datetime NOT NULL,
  `tiempo_salida` datetime DEFAULT NULL,
  `vehiculo` int(12) NOT NULL,
  `estado` varchar(12) DEFAULT '0',
  `valor` int(10) DEFAULT NULL,
  `factura` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `in_factura` (`factura`,`placa`) USING BTREE,
  UNIQUE KEY `in_estado` (`placa`,`estado`,`factura`) USING BTREE,
  KEY `fk_vehiculo_id` (`vehiculo`),
  CONSTRAINT `fk_vehiculo_id` FOREIGN KEY (`vehiculo`) REFERENCES `precios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehiculo
-- ----------------------------
INSERT INTO `vehiculo` VALUES ('000000000069', 'HIJ93C', '2016-02-03 11:31:35', null, '2', '0', null, '');
INSERT INTO `vehiculo` VALUES ('000000000070', 'BBBBBB', '2016-02-03 11:48:26', '2016-02-03 11:48:28', '2', 'cancelado', '0', 'FACT - 000000000070');
INSERT INTO `vehiculo` VALUES ('000000000071', 'BBBBBB', '2016-02-03 11:48:34', '2016-02-03 12:05:28', '2', 'cancelado', '2000', 'FACT - 000000000071');
INSERT INTO `vehiculo` VALUES ('000000000072', 'BBBBBB', '2016-02-03 12:05:38', '2016-02-03 12:05:42', '2', 'cancelado', '0', 'FACT - 000000000072');
INSERT INTO `vehiculo` VALUES ('000000000073', 'BBBBBB', '2016-02-03 12:05:48', null, '2', '0', null, '');

-- ----------------------------
-- View structure for informes_pagos
-- ----------------------------
DROP VIEW IF EXISTS `informes_pagos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `informes_pagos` AS SELECT
precios.nombre as vehiculo ,
	vehiculo.tiempo_entrada,
	now() AS tiempo_salida,
	precios.salir as margen_salida,
precios.precio_hora,
precios.precio_minuto,
	# CAMPO
	TIMEDIFF(
		NOW(),
		vehiculo.tiempo_entrada
	) AS DIFERENCIA,
	# CAMPO
	HOUR (
		TIMEDIFF(
			NOW(),
			vehiculo.tiempo_entrada
		)
	) AS HORA,
	# CAMPO
	MINUTE (
		TIMEDIFF(
			NOW(),
			vehiculo.tiempo_entrada
		)
	) AS MINUTO,
	# CAMPO
	ROUND(
		TIMESTAMPDIFF(
			MINUTE,
			vehiculo.tiempo_entrada,
			NOW()
		) * precios.precio_minuto
	) AS cancelar_minutos,
	# CAMPO
	ROUND(
		TIMESTAMPDIFF(
			HOUR,
			vehiculo.tiempo_entrada,
			NOW()
		) * precios.precio_hora
	) AS cancelar_horas,
	# CAMPO
	(
		IF (
			#CONDICION
			MINUTE (
				TIMEDIFF(
					NOW(),
					vehiculo.tiempo_entrada
				)
			) > precios.salir,
			#CONDICION SI ES VERDADERO
			(
				TIMESTAMPDIFF(
					HOUR,
					vehiculo.tiempo_entrada,
					NOW()
				) * precios.precio_hora
			) + precios.precio_hora,
			#CONDICION SI ES FALSO
			HOUR (
				TIMEDIFF(
					NOW(),
					vehiculo.tiempo_entrada
				)
			) * precios.precio_hora
		)
	) AS PAGAR 
# TABLA
FROM
	vehiculo,
	precios
WHERE
estado = '0'
AND vehiculo.vehiculo = precios.id ;

-- ----------------------------
-- View structure for informe_movimientos
-- ----------------------------
DROP VIEW IF EXISTS `informe_movimientos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `informe_movimientos` AS select p.nombre as vehiculo, h.placa, h.tiempo_entrada, h.tiempo_salida, h.estado, h.valor, h.factura from historico_facturas as h join precios as p on h.vehiculo = p.id ;

-- ----------------------------
-- View structure for informe_pendientes
-- ----------------------------
DROP VIEW IF EXISTS `informe_pendientes`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `informe_pendientes` AS select * from vehiculo where estado = '0' ;

-- ----------------------------
-- Procedure structure for pago_parqueadero
-- ----------------------------
DROP PROCEDURE IF EXISTS `pago_parqueadero`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pago_parqueadero`(IN `pago_vehiculo` varchar (6))
BEGIN
	#RUTINA DE PAGOS
SELECT
precios.nombre as vehiculo ,
	vehiculo.tiempo_entrada,
	now() AS tiempo_salida,
	precios.salir as margen_salida,
precios.precio_hora,
precios.precio_minuto,
	# CAMPO
	TIMEDIFF(
		NOW(),
		vehiculo.tiempo_entrada
	) AS DIFERENCIA,
	# CAMPO
	HOUR (
		TIMEDIFF(
			NOW(),
			vehiculo.tiempo_entrada
		)
	) AS HORA,
	# CAMPO
	MINUTE (
		TIMEDIFF(
			NOW(),
			vehiculo.tiempo_entrada
		)
	) AS MINUTO,
	# CAMPO
	ROUND(
		TIMESTAMPDIFF(
			MINUTE,
			vehiculo.tiempo_entrada,
			NOW()
		) * precios.precio_minuto
	) AS cancelar_minutos,
	# CAMPO
	ROUND(
		TIMESTAMPDIFF(
			HOUR,
			vehiculo.tiempo_entrada,
			NOW()
		) * precios.precio_hora
	) AS cancelar_horas,
	# CAMPO
	(
		IF (
			#CONDICION
			MINUTE (
				TIMEDIFF(
					NOW(),
					vehiculo.tiempo_entrada
				)
			) > precios.salir,
			#CONDICION SI ES VERDADERO
			(
				TIMESTAMPDIFF(
					HOUR,
					vehiculo.tiempo_entrada,
					NOW()
				) * precios.precio_hora
			) + precios.precio_hora,
			#CONDICION SI ES FALSO
			HOUR (
				TIMEDIFF(
					NOW(),
					vehiculo.tiempo_entrada
				)
			) * precios.precio_hora
		)
	) AS PAGAR 
# TABLA
FROM
	vehiculo,
	precios
WHERE
	placa = pago_vehiculo
AND estado = '0'
AND vehiculo.vehiculo = precios.id;



END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `guarda_historico`;
DELIMITER ;;
CREATE TRIGGER `guarda_historico` AFTER UPDATE ON `vehiculo` FOR EACH ROW INSERT INTO historico_facturas (
id,
	placa,
	tiempo_entrada,
	tiempo_salida,
	vehiculo,
	estado,
	valor,
	factura
)
VALUES
	(
new.id,
		new.placa,
		new.tiempo_entrada,
		new.tiempo_salida,
		new.vehiculo,
		new.estado,
		new.valor,
		new.factura
	)
;;
DELIMITER ;
