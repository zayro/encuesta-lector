/*
Navicat MySQL Data Transfer

Source Server         : mysql_remoto_lector
Source Server Version : 50639
Source Host           : 18.218.216.180:3306
Source Database       : evaluar

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-05-13 11:30:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aula
-- ----------------------------
DROP TABLE IF EXISTS `aula`;
CREATE TABLE `aula` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of aula
-- ----------------------------
INSERT INTO `aula` VALUES ('1', 'QUINTO');
INSERT INTO `aula` VALUES ('2', 'SEXTO');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'Salud');
INSERT INTO `categoria` VALUES ('2', 'Aventura');
INSERT INTO `categoria` VALUES ('3', 'Deportes');
INSERT INTO `categoria` VALUES ('4', 'Prehistoria');
INSERT INTO `categoria` VALUES ('5', 'Tecnología');
INSERT INTO `categoria` VALUES ('6', 'Economía');
INSERT INTO `categoria` VALUES ('7', 'Internacional');
INSERT INTO `categoria` VALUES ('8', 'Variedades');
INSERT INTO `categoria` VALUES ('9', 'Caricatura/Historieta');

-- ----------------------------
-- Table structure for nivel_lectura
-- ----------------------------
DROP TABLE IF EXISTS `nivel_lectura`;
CREATE TABLE `nivel_lectura` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci COMMENT='es una tabla para interpretar los niveles de lectura';

-- ----------------------------
-- Records of nivel_lectura
-- ----------------------------
INSERT INTO `nivel_lectura` VALUES ('1', 'Literal');
INSERT INTO `nivel_lectura` VALUES ('2', 'Intertextual');
INSERT INTO `nivel_lectura` VALUES ('3', 'Crítico');
INSERT INTO `nivel_lectura` VALUES ('4', 'Inferencial');

-- ----------------------------
-- Table structure for opcion
-- ----------------------------
DROP TABLE IF EXISTS `opcion`;
CREATE TABLE `opcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opciones` text COLLATE utf8_unicode_ci NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `correcta` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `id_pregunta` (`id_pregunta`) USING BTREE,
  CONSTRAINT `opcion_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=521 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of opcion
-- ----------------------------
INSERT INTO `opcion` VALUES ('1', '10', '1', 'f');
INSERT INTO `opcion` VALUES ('2', 'Solamente uno, porque el dormir solamente implica un período de tiempo determinado.', '1', 'f');
INSERT INTO `opcion` VALUES ('3', 'Más de 70.', '1', 't');
INSERT INTO `opcion` VALUES ('4', 'Entre 50 y 70.', '1', 'f');
INSERT INTO `opcion` VALUES ('5', 'El estrés y las preocupaciones.', '2', 'f');
INSERT INTO `opcion` VALUES ('6', 'Las enfermedades y los malestares estomacales.', '2', 'f');
INSERT INTO `opcion` VALUES ('7', 'Las angustias del día siguiente.', '2', 'f');
INSERT INTO `opcion` VALUES ('8', 'El consumir alimentos poco saludables por la noche o revisar el celular antes de dormir.', '2', 't');
INSERT INTO `opcion` VALUES ('9', 'Un método para mejorar la respiración de las personas.', '3', 'f');
INSERT INTO `opcion` VALUES ('10', 'Un método que puede ser eficaz para conciliar el sueño.', '3', 't');
INSERT INTO `opcion` VALUES ('11', 'Un método de meditación prolongada.', '3', 'f');
INSERT INTO `opcion` VALUES ('12', 'Un método inventado por el doctor Andrew Weil  para aliviar el estrés.', '3', 'f');
INSERT INTO `opcion` VALUES ('13', 'Inhalar – contener la respiración – Exhalar.', '4', 't');
INSERT INTO `opcion` VALUES ('14', 'Inhalar – exhalar - inhalar.', '4', 'f');
INSERT INTO `opcion` VALUES ('15', 'Contener la respiración – Inhalar- Exhalar.', '4', 'f');
INSERT INTO `opcion` VALUES ('16', 'Exhalar- contener la respiración – inhalar.', '4', 'f');
INSERT INTO `opcion` VALUES ('17', 'Una hormona que se activa cuando nos encontramos en situaciones de riesgo.', '5', 'f');
INSERT INTO `opcion` VALUES ('18', 'Una hormona que ayuda a conciliar el sueño.', '5', 'f');
INSERT INTO `opcion` VALUES ('19', 'Una hormona que aumenta la frecuencia cardíaca, y se acaba los nervios y el mal humor.', '5', 't');
INSERT INTO `opcion` VALUES ('20', 'Una hormona que forma parte de los productos químicos calmantes, que  hacen que el corazón funcione a un ritmo más lento.', '5', 'f');
INSERT INTO `opcion` VALUES ('21', 'Sustancias químicas que ayudan a relajar el organismo.', '6', 'f');
INSERT INTO `opcion` VALUES ('22', 'Las encargadas de regular la actividad cardíaca de nuestro cuerpo.', '6', 'f');
INSERT INTO `opcion` VALUES ('23', 'Unas hormonas que se encarga de activar los sistemas de alarma del cuerpo humano para mantenerlo alerta.', '6', 't');
INSERT INTO `opcion` VALUES ('24', 'Unas hormonas de la cual depende o no, la posibilidad de conciliar el sueño.', '6', 'f');
INSERT INTO `opcion` VALUES ('25', 'Un entrenamiento mental en el que la persona logra inducir cierto nivel de conciencia para conseguir un objetivo concreto.', '7', 't');
INSERT INTO `opcion` VALUES ('26', 'Una técnica utilizada para conciliar el sueño de manera más rápida.', '7', 'f');
INSERT INTO `opcion` VALUES ('27', 'Una capacidad que tenemos todos los seres humanos para recapacitar y pensar sobre nuestra realidad, entorno e incluso, el sueño.', '7', 'f');
INSERT INTO `opcion` VALUES ('28', 'Un recurso para ayudar a las personas a superar sus trastornos de sueño.', '7', 'f');
INSERT INTO `opcion` VALUES ('29', 'Una estrategia que se emplea para enseñar algo, por ejemplo, los métodos de enseñanza de la lengua inglesa o métodos para aprender inglés.', '8', 'f');
INSERT INTO `opcion` VALUES ('30', 'Una forma de plantear diferentes soluciones a un mismo problema.', '8', 'f');
INSERT INTO `opcion` VALUES ('31', 'Un camino o ¨guía”, para realizar algo o llegar a determinado fin.', '8', 'f');
INSERT INTO `opcion` VALUES ('32', 'Una manera de plantear, organizar y sistematizar, una estrategia para llegar a un determinado resultado.', '8', 't');
INSERT INTO `opcion` VALUES ('33', 'La neuroquímica, parte de la química que estudia el comportamiento del cerebro, y la meditación.', '9', 't');
INSERT INTO `opcion` VALUES ('34', 'La meditación y los trastornos de sueño.', '9', 'f');
INSERT INTO `opcion` VALUES ('35', 'Los trastornos de sueño y la brisa del mar en la playa.', '9', 'f');
INSERT INTO `opcion` VALUES ('36', 'Los trastornos de sueño y problemas psicológicos.', '9', 'f');
INSERT INTO `opcion` VALUES ('37', 'Pérdida del apetito y desórdenes alimenticios.', '10', 'f');
INSERT INTO `opcion` VALUES ('38', 'Pérdida de sueño y de la capacidad de concentración.', '10', 't');
INSERT INTO `opcion` VALUES ('39', 'Depresión y ansiedad.', '10', 'f');
INSERT INTO `opcion` VALUES ('40', 'Dolores musculares.', '10', 'f');
INSERT INTO `opcion` VALUES ('41', 'Consumir alimentos poco saludables por la noche. ', '11', 'f');
INSERT INTO `opcion` VALUES ('42', 'Checar nuestro celular antes de dormir.', '11', 'f');
INSERT INTO `opcion` VALUES ('43', 'Niveles de adrenalina desproporcionados al momento de dormir.', '11', 't');
INSERT INTO `opcion` VALUES ('44', 'Tener preocupaciones, deudas o angustias.', '11', 'f');
INSERT INTO `opcion` VALUES ('45', 'Tranquilidad y dominio de sí mismo.', '12', 'f');
INSERT INTO `opcion` VALUES ('46', 'Activar sustancias químicas calmantes en el cerebro.', '12', 't');
INSERT INTO `opcion` VALUES ('47', 'Permite dormir.', '12', 'f');
INSERT INTO `opcion` VALUES ('48', 'Disminuye el estrés y la depresión.', '12', 'f');
INSERT INTO `opcion` VALUES ('49', 'Liberar la adrenalina.', '13', 't');
INSERT INTO `opcion` VALUES ('50', 'Activar las enzimas digestivas.', '13', 'f');
INSERT INTO `opcion` VALUES ('51', 'Facilitar la meditación.', '13', 'f');
INSERT INTO `opcion` VALUES ('52', 'Facilitar la asimilación de alimentos.', '13', 'f');
INSERT INTO `opcion` VALUES ('53', 'La capacidad de dormir, porque si una persona no respira bien, no duerme bien.', '14', 'f');
INSERT INTO `opcion` VALUES ('54', 'La frecuencia cardíaca.', '14', 't');
INSERT INTO `opcion` VALUES ('55', 'El ciclo digestivo.', '14', 'f');
INSERT INTO `opcion` VALUES ('56', 'El ciclo respiratorio.', '14', 'f');
INSERT INTO `opcion` VALUES ('57', 'Tener problemas en el colegio.', '15', 'f');
INSERT INTO `opcion` VALUES ('58', 'Tener una vida tranquila.', '15', 'f');
INSERT INTO `opcion` VALUES ('59', 'Meditar frecuentemente.', '15', 'f');
INSERT INTO `opcion` VALUES ('60', 'Manejar los niveles de adrenalina en el cuerpo.', '15', 't');
INSERT INTO `opcion` VALUES ('61', 'Afectar la calidad de vida de los seres humanos.', '16', 'f');
INSERT INTO `opcion` VALUES ('62', 'Afectar la calidad de sueño.', '16', 'f');
INSERT INTO `opcion` VALUES ('63', 'Alterar los niveles de adrenalina, afectando la calidad del sueño.', '16', 't');
INSERT INTO `opcion` VALUES ('64', 'Afectar la alimentación de los seres humanos.', '16', 'f');
INSERT INTO `opcion` VALUES ('65', 'Una persona religiosa, con estabilidad laboral y familiar.', '17', 'f');
INSERT INTO `opcion` VALUES ('66', 'Una persona obsesionada con la perfección, con alto nivel de compromiso y muchos compromisos de índole profesional y familiar.', '17', 't');
INSERT INTO `opcion` VALUES ('67', 'Un alcohólico, que bebe hasta altas horas de la noche.', '17', 'f');
INSERT INTO `opcion` VALUES ('68', 'Un estudiante, que tiene muchos deberes para el día siguiente.', '17', 'f');
INSERT INTO `opcion` VALUES ('69', '“6-9-10”', '18', 't');
INSERT INTO `opcion` VALUES ('70', '“8-7-4”', '18', 'f');
INSERT INTO `opcion` VALUES ('71', '“7-4-8”', '18', 'f');
INSERT INTO `opcion` VALUES ('72', '10000 pies', '19', 'f');
INSERT INTO `opcion` VALUES ('73', '7,620 metros', '19', 't');
INSERT INTO `opcion` VALUES ('74', '7,620 pies', '19', 'f');
INSERT INTO `opcion` VALUES ('75', '1 km', '19', 'f');
INSERT INTO `opcion` VALUES ('76', 'Luke Aikins', '20', 't');
INSERT INTO `opcion` VALUES ('77', 'Lucas Blow', '20', 'f');
INSERT INTO `opcion` VALUES ('78', 'Erik Aikins', '20', 'f');
INSERT INTO `opcion` VALUES ('79', 'Robin Erink', '20', 'f');
INSERT INTO `opcion` VALUES ('80', '50 x 50 metros', '21', 'f');
INSERT INTO `opcion` VALUES ('81', '25 x25 metros', '21', 'f');
INSERT INTO `opcion` VALUES ('82', '30 x 30 metros', '21', 't');
INSERT INTO `opcion` VALUES ('83', '40 x 40 metros', '21', 'f');
INSERT INTO `opcion` VALUES ('84', 'Controlando su dirección inclinando el cuerpo contra el viento.', '22', 'f');
INSERT INTO `opcion` VALUES ('85', 'Utilizó una red gigante para frenar su caída, después de una caída libre hacia la tierra.', '22', 'f');
INSERT INTO `opcion` VALUES ('86', 'Se orientó por el color de la red.', '22', 'f');
INSERT INTO `opcion` VALUES ('87', 'Aikins era guiado por un sistema de alta tecnología que mostraba luces rojas en el sitio de aterrizaje si iba fuera de curso y luces verdes si iba en la dirección correcta.', '22', 't');
INSERT INTO `opcion` VALUES ('88', 'Se somete a esta fuerza al igual que cualquier otro cuerpo en el universo.', '23', 't');
INSERT INTO `opcion` VALUES ('89', 'Contrarresta dicha fuerza para caer a menor velocidad.', '23', 'f');
INSERT INTO `opcion` VALUES ('90', 'Desafía la ley de la gravedad al caer de tal altura y sobrevivir.', '23', 'f');
INSERT INTO `opcion` VALUES ('91', 'No tienen en cuenta a la gravedad ni sus leyes para hacer el salto.', '23', 'f');
INSERT INTO `opcion` VALUES ('92', 'El paracaidista desacelera a medida que cae.', '24', 'f');
INSERT INTO `opcion` VALUES ('93', 'El paracaidista siente la misma fuerza de gravedad durante todo su salto.', '24', 'f');
INSERT INTO `opcion` VALUES ('94', 'El paracaidista aumenta su velocidad a medida que cae.', '24', 't');
INSERT INTO `opcion` VALUES ('95', 'El paracaidista cae a una velocidad constante.', '24', 'f');
INSERT INTO `opcion` VALUES ('96', 'Los paracaídas usan la resistencia del aire para disminuir la fuerza de la caída.', '25', 'f');
INSERT INTO `opcion` VALUES ('97', 'Los paracaídas únicamente funcionan cuando hay corrientes de aire que le permiten expandirse.', '25', 'f');
INSERT INTO `opcion` VALUES ('98', 'Los paracaidistas comprender la relación: gravedad, resistencia del aire.', '25', 'f');
INSERT INTO `opcion` VALUES ('99', 'El paracaídas puede funcionar en un espacio con ausencia de aire.', '25', 't');
INSERT INTO `opcion` VALUES ('100', 'Saber cuánto tiempo puede durar la caída.', '26', 'f');
INSERT INTO `opcion` VALUES ('101', 'Calcular el momento exacto para abrir su paracaídas.', '26', 't');
INSERT INTO `opcion` VALUES ('102', 'Tener control sobre su velocidad.', '26', 'f');
INSERT INTO `opcion` VALUES ('103', 'Poder encontrar el lugar de aterrizaje.', '26', 'f');
INSERT INTO `opcion` VALUES ('104', 'Ser el primer hombre en saltar desde un avión sin paracaídas y sobrevivir.', '27', 'f');
INSERT INTO `opcion` VALUES ('105', 'Comprobar los cálculos hechos meses atrás durante la planeación de la maniobra.', '27', 't');
INSERT INTO `opcion` VALUES ('106', 'Ganar el dinero y la fama correspondiente a la hazaña.', '27', 'f');
INSERT INTO `opcion` VALUES ('107', 'Ser conocido mundialmente.', '27', 'f');
INSERT INTO `opcion` VALUES ('108', 'Planeación, preparación, ejecución.', '28', 't');
INSERT INTO `opcion` VALUES ('109', 'Valor, Coraje, Fuerza.', '28', 'f');
INSERT INTO `opcion` VALUES ('110', 'Investigadores, paracaídas, red.', '28', 'f');
INSERT INTO `opcion` VALUES ('111', 'Avión, Paracaidista, red.', '28', 'f');
INSERT INTO `opcion` VALUES ('112', 'Practicara con maniobras semejantes para perderle el miedo a las alturas.', '29', 'f');
INSERT INTO `opcion` VALUES ('113', 'Desarrollara su curso de aprendizaje de manera gradual antes de tomar saltos de tantas magnitudes.', '29', 'f');
INSERT INTO `opcion` VALUES ('114', 'Que intercalara en su aprendizaje experiencias “seguras” y “extremas” dentro del mismo paracaidismo.', '29', 'f');
INSERT INTO `opcion` VALUES ('115', 'Que no realizara este tipo de hazañas hasta que no estuviera certificado como profesional capacitado.', '29', 't');
INSERT INTO `opcion` VALUES ('116', 'No vale la pena arriesgar la vida por una aventura.', '30', 't');
INSERT INTO `opcion` VALUES ('117', 'No se debe atentar contra las leyes de la naturaleza.', '30', 'f');
INSERT INTO `opcion` VALUES ('118', 'Puede ser interpretado como un intento de suicidio.', '30', 'f');
INSERT INTO `opcion` VALUES ('119', 'Este tipo de deportes está prohibido en algunas naciones del mundo.', '30', 'f');
INSERT INTO `opcion` VALUES ('120', 'Hacer algo que ningún otro ser humano ha hecho.', '31', 't');
INSERT INTO `opcion` VALUES ('121', 'Figurar en los medios por hacer algo novedoso.', '31', 'f');
INSERT INTO `opcion` VALUES ('122', 'Atraer la atención de los medios de comunicación.', '31', 'f');
INSERT INTO `opcion` VALUES ('123', 'Arriesgar su vida para atraer la atención de los medios de comunicación sobre su persona y sus actividades deportivas.', '31', 'f');
INSERT INTO `opcion` VALUES ('124', 'La planeación es indispensable al iniciar un nuevo proyecto.', '32', 'f');
INSERT INTO `opcion` VALUES ('125', 'Toda maniobra requiere planeación.', '32', 'f');
INSERT INTO `opcion` VALUES ('126', 'Aikins es un estratega.', '32', 'f');
INSERT INTO `opcion` VALUES ('127', 'Los deportes extremos exigen preparación física y mental, además de equipos de apoyo y logística en general que evalúe los riesgos de la actividad a realizar.', '32', 't');
INSERT INTO `opcion` VALUES ('128', 'El paracaidista habría abierto su paracaídas.', '33', 'f');
INSERT INTO `opcion` VALUES ('129', 'El paracaidista probablemente habría perdido el curso.', '33', 't');
INSERT INTO `opcion` VALUES ('130', 'Fallaba toda la misión. ', '33', 'f');
INSERT INTO `opcion` VALUES ('132', 'Es un material con altas cualidades de resistencia y elasticidad, que, además, es bastante liviano.', '34', 't');
INSERT INTO `opcion` VALUES ('133', 'Es un material muy resistente y rígido.', '34', 'f');
INSERT INTO `opcion` VALUES ('134', 'Es un material de experimentación de uso prohibido.', '34', 'f');
INSERT INTO `opcion` VALUES ('135', 'Es un material bastante frágil y suave.', '34', 'f');
INSERT INTO `opcion` VALUES ('136', 'Buscar un buen instructor, asistir a las clases, alimentarse bien.', '35', 'f');
INSERT INTO `opcion` VALUES ('137', 'Inscribirse en un gimnasio, entrenar constantemente, dormir bien.', '35', 'f');
INSERT INTO `opcion` VALUES ('138', 'Saber cuál es el ejercicio más adecuado, cuántas sesiones semanales necesitamos y, sobre todo, cuándo veremos algún efecto. ', '35', 't');
INSERT INTO `opcion` VALUES ('139', 'Lograr la alimentación ideal, hacer ejercicio “sin matarse”, permanecer en el entrenamiento más de 66 días.', '35', 'f');
INSERT INTO `opcion` VALUES ('140', 'Una sesión de 30 minutos que combine diferentes tipos de ejercicios.', '36', 'f');
INSERT INTO `opcion` VALUES ('141', '40 minutos diarios con una mezcla de ejercicios aeróbicos y anaeróbicos.', '36', 'f');
INSERT INTO `opcion` VALUES ('142', 'Todos los días con una carga moderada y ejercicios variados.', '36', 'f');
INSERT INTO `opcion` VALUES ('143', 'Se recomienda cada semana al menos 150 minutos de ejercicio de intensidad moderada repartidos en cinco días –una media hora diaria– o tres sesiones de entre veinte minutos y una hora de actividad vigorosa', '36', 't');
INSERT INTO `opcion` VALUES ('144', 'En el tiempo necesario para estar en forma.', '37', 'f');
INSERT INTO `opcion` VALUES ('145', 'En los 66 días que son necesarios para generar o cambiar un hábito o para conseguir alcanzar la meta que nos propongamos.', '37', 't');
INSERT INTO `opcion` VALUES ('146', 'En los 66 días necesarios para fortalecer el cuerpo y acostumbrar la anatomía para realizar una actividad deportiva determinada.', '37', 'f');
INSERT INTO `opcion` VALUES ('147', 'En el período de tiempo correspondiente a una meta de entrenamiento.', '37', 'f');
INSERT INTO `opcion` VALUES ('148', 'Enfoque.', '38', 't');
INSERT INTO `opcion` VALUES ('149', 'Estrategia.', '38', 'f');
INSERT INTO `opcion` VALUES ('150', 'Método.', '38', 'f');
INSERT INTO `opcion` VALUES ('151', 'Recurso.', '38', 'f');
INSERT INTO `opcion` VALUES ('152', 'El texto se inspiró en el entrenamiento de Arnold Schwarzenegger para hacer las sugerencias de rutinas.', '39', 'f');
INSERT INTO `opcion` VALUES ('153', 'Arnold sostiene que la fuerza se encuentra en la persistencia, al igual que el texto cuando propone crear el hábito de ejercicio por más de 66 días para adapta el cuerpo al deporte.', '39', 't');
INSERT INTO `opcion` VALUES ('154', 'El texto, al igual que el fisiculturista, nos invitan a hacer ejercicio de manera constante.', '39', 'f');
INSERT INTO `opcion` VALUES ('155', 'Tanto el fisiculturista como el texto, buscan motivar a las personas para hacer ejercicio.', '39', 'f');
INSERT INTO `opcion` VALUES ('156', 'Reconoce que para tener una buena vida hay que tener una vida sana.', '40', 't');
INSERT INTO `opcion` VALUES ('157', 'Plantea un modo de vida en el que el cuerpo merece la misma importancia que la mente.', '40', 'f');
INSERT INTO `opcion` VALUES ('158', 'Establece las normas para tener una vida saludable.', '40', 'f');
INSERT INTO `opcion` VALUES ('159', 'Define  las normas para tener un cuerpo en óptimas condiciones.', '40', 'f');
INSERT INTO `opcion` VALUES ('160', 'Nos propone actividades orientadas a todas las necesidades fisiológicas de un cuerpo en período de adaptación al deporte.', '41', 'f');
INSERT INTO `opcion` VALUES ('161', 'Nos muestra estrategias concretas para llegar a metas deportivas concretas.', '41', 'f');
INSERT INTO `opcion` VALUES ('162', 'Nos comparte una estrategia de entrenamiento ideal, que nos plantea un objetivo concreto, en un período de tiempo específico y con ejercicios controlados que nos permitan optimizar los resultados físi', '41', 't');
INSERT INTO `opcion` VALUES ('163', 'Nos enseña una rutina programada por profesionales y orientada a sacar el mayor provecho posible para entrenarse en la vida cotidiana.', '41', 'f');
INSERT INTO `opcion` VALUES ('164', 'Un posible entrenamiento ideal, sistemático y progresivo.', '42', 't');
INSERT INTO `opcion` VALUES ('165', 'Un entrenamiento incompleto, pues no se enfoca en un deporte específico.', '42', 'f');
INSERT INTO `opcion` VALUES ('166', 'Un entrenamiento básico, pues falta profundización en determinados ejercicios.', '42', 'f');
INSERT INTO `opcion` VALUES ('167', 'Un entrenamiento ineficaz, pues no está basado en ejercicio sistemáticos ni procesos organizados.', '42', 'f');
INSERT INTO `opcion` VALUES ('168', 'Sesiones de fútbol durante dos horas al día.', '43', 'f');
INSERT INTO `opcion` VALUES ('169', 'Fútbol un día, baloncesto otro día, voleibol y finalmente natación.', '43', 'f');
INSERT INTO `opcion` VALUES ('170', 'Un entrenamiento concurrente.', '43', 't');
INSERT INTO `opcion` VALUES ('171', 'Sesiones de gimnasio y deportes a manera de intervalo.', '43', 'f');
INSERT INTO `opcion` VALUES ('172', 'Odian hacer ejercicio.', '44', 'f');
INSERT INTO `opcion` VALUES ('173', 'Son competidores de alto rendimiento.', '44', 'f');
INSERT INTO `opcion` VALUES ('174', 'Son personas con obesidad mórbida.', '44', 'f');
INSERT INTO `opcion` VALUES ('175', 'Personas que están iniciando su formación física y su rutina deportiva.', '44', 't');
INSERT INTO `opcion` VALUES ('176', 'Tienen establecidos socialmente algunos periodos  de mayor actividad física en los que si se desea, se pueden cambiar los hábitos de las personas.', '45', 't');
INSERT INTO `opcion` VALUES ('177', 'La mayoría de las personas no tienen hábitos de vida saludable y por lo tanto optan por renunciar al ejercicio a los pocos días.', '45', 'f');
INSERT INTO `opcion` VALUES ('178', 'La mayoría de las personas son muy activas pero necesitan períodos de descanso para recuperar sus fuerzas.', '45', 'f');
INSERT INTO `opcion` VALUES ('179', 'La mayoría de las personas se preocupa más por su apariencia en determinadas épocas del año.', '45', 'f');
INSERT INTO `opcion` VALUES ('180', 'Está adaptado a funcionar bajo estrés y por ello es favorable para el crecimiento de los músculos.', '46', 'f');
INSERT INTO `opcion` VALUES ('181', 'Es un ser de costumbres y al tomar la costumbre de hacer ejercicio se habitúa al nivel de exigencia.', '46', 'f');
INSERT INTO `opcion` VALUES ('182', 'Es un ser adaptable que con el estímulo del ejercicio modifica su estructura muscular.', '46', 'f');
INSERT INTO `opcion` VALUES ('183', 'Funciona mejor, y evidencia más los resultados físicos, cuando se programa en metas cortas con principio y fin determinado.', '46', 't');
INSERT INTO `opcion` VALUES ('184', 'Un año.', '47', 'f');
INSERT INTO `opcion` VALUES ('185', 'Seis meses.', '47', 'f');
INSERT INTO `opcion` VALUES ('186', 'Nueve semanas y media.', '47', 't');
INSERT INTO `opcion` VALUES ('187', 'Nueve meses.', '47', 'f');
INSERT INTO `opcion` VALUES ('188', 'La tendencia natural del ser humano es al reposo.', '48', 'f');
INSERT INTO `opcion` VALUES ('189', 'El ser humano es un animal de costumbres y por lo tanto debe tener actividad física ordenada de manera constante para quemar grasa y generar más músculo.', '48', 't');
INSERT INTO `opcion` VALUES ('190', 'El ser humano es un animal de costumbres y por lo tanto debe acostumbrarse a estrés del ejercicio y dicha adaptación toma tiempo.', '48', 'f');
INSERT INTO `opcion` VALUES ('191', 'El cuerpo del ser humano responde al estímulo de diferentes situaciones estresantes que le llevan al cuerpo mismo a protegerse.', '48', 'f');
INSERT INTO `opcion` VALUES ('192', 'Nos volveremos más resistentes físicamente.', '49', 'f');
INSERT INTO `opcion` VALUES ('193', 'En nueve semanas y media adoptaremos un hábito de vida saludable.', '49', 't');
INSERT INTO `opcion` VALUES ('194', 'El cuerpo producirá más músculo durante todo el año.', '49', 'f');
INSERT INTO `opcion` VALUES ('195', 'Tendremos una condición física tan buena como la de un fisiculturista.', '49', 'f');
INSERT INTO `opcion` VALUES ('196', 'Si iniciamos un entrenamiento de un momento a otro y con una sesión de ejercicios muy intensa y desordenada, el cuerpo se va a resentir y aparecerán dolores, molestias y posibles lesiones.', '50', 't');
INSERT INTO `opcion` VALUES ('197', ' Si iniciamos un entrenamiento de un momento a otro y con una sesión de ejercicios muy intensa, el cuerpo se va a activar y va a aumentar su resistencia.', '50', 'f');
INSERT INTO `opcion` VALUES ('198', 'Una vez pasado el umbral de las nueve semanas y media el cuerpo se adapta al ejercicio.', '50', 'f');
INSERT INTO `opcion` VALUES ('199', 'El cuerpo obedece a costumbres y hábitos.', '50', 'f');
INSERT INTO `opcion` VALUES ('200', 'Hace 27.000 años.', '51', 't');
INSERT INTO `opcion` VALUES ('201', 'Hace 30.000 años.', '51', 'f');
INSERT INTO `opcion` VALUES ('202', 'Hace 20.000 años.', '51', 'f');
INSERT INTO `opcion` VALUES ('203', 'Hace 37.000 años.', '51', 'f');
INSERT INTO `opcion` VALUES ('204', 'Eran animales de compañía que le servía a los humanos para cuidar el ganado y pastorear diversos tipos de animales.', '52', 'f');
INSERT INTO `opcion` VALUES ('205', 'Porque eran compañeros que incluso establecían fuertes vínculos emocionales al punto en el que cuando fallecían se les hacían ceremonias de enterramiento.', '52', 'f');
INSERT INTO `opcion` VALUES ('206', 'Ayudaban a los cazadores a encontrar antes a la presa y podían rodear a los animales más grandes y retenerlos en un punto hasta que los humanos se hacían cargo de la situación.', '52', 't');
INSERT INTO `opcion` VALUES ('207', 'Por sus habilidades de caza que le permitían a los humanos encontrar el rastro de animales más grandes, como mamuts, para poder cazarlos con mayor facilidad.', '52', 'f');
INSERT INTO `opcion` VALUES ('208', 'Los perros y los lobos tienen un ancestro común.', '53', 'f');
INSERT INTO `opcion` VALUES ('209', 'Los lobos evolucionaron para ser domesticados y se convirtieron en perros.', '53', 'f');
INSERT INTO `opcion` VALUES ('210', 'Los perros y los lobos tienen ancestros comunes.', '53', 'f');
INSERT INTO `opcion` VALUES ('211', 'La domesticación de los lobos dio paso a la generación de otra especie.', '53', 't');
INSERT INTO `opcion` VALUES ('212', 'El texto habla abiertamente de la evolución de los lobos.', '54', 'f');
INSERT INTO `opcion` VALUES ('213', 'El texto nos plantea que la interacción entre lobos y hombres dio espacio a una relación de reciprocidad que ayudó a evolucionar a ambas especies.', '54', 't');
INSERT INTO `opcion` VALUES ('214', 'El texto desafía al creacionismo al insinuar que el perro viene del lobo.', '54', 'f');
INSERT INTO `opcion` VALUES ('215', 'El creacionismo no daría credibilidad a ninguno de los argumentos propuestos en el texto.', '54', 'f');
INSERT INTO `opcion` VALUES ('216', 'Porque con su ayuda se aumentaban las posibilidades de éxito en la cacería.', '55', 't');
INSERT INTO `opcion` VALUES ('217', 'Porque eran muy cariñosos y los niños establecían vínculos emocionales con ellos.', '55', 'f');
INSERT INTO `opcion` VALUES ('218', 'Porque eran buenos guardianes.', '55', 'f');
INSERT INTO `opcion` VALUES ('219', 'Porque era útiles para el pastoreo.', '55', 'f');
INSERT INTO `opcion` VALUES ('220', 'Por la ayuda de los perros que facilitaban labores cotidianas como la caza.', '56', 't');
INSERT INTO `opcion` VALUES ('221', 'Por el dominio de la agricultura. ', '56', 'f');
INSERT INTO `opcion` VALUES ('222', 'Por la ayuda de los perros en actividades como el pastoreo.', '56', 'f');
INSERT INTO `opcion` VALUES ('223', 'Por la ayuda de los lobos que se volvieron domésticos.', '56', 'f');
INSERT INTO `opcion` VALUES ('224', 'Que se establecían estrechos vínculos entre los cánidos y los humanos, al punto en el que al fallecer se hacían entierros funerarios.', '57', 'f');
INSERT INTO `opcion` VALUES ('225', 'Que los perros evolucionaron de los lobos.', '57', 'f');
INSERT INTO `opcion` VALUES ('226', 'Que los rituales funerarios no eran solamente para los humanos sino también para los perros.', '57', 'f');
INSERT INTO `opcion` VALUES ('227', 'Que la utilización de los perros fue una nueva técnica de caza que le permitió a los primeros asentamientos humanos la mejora en su ingesta de proteínas y por lo tanto en el aumento de la población humana.', '57', 't');
INSERT INTO `opcion` VALUES ('228', 'Desde hace 27.000 años el ser humano utiliza perros en labores de caza.', '58', 'f');
INSERT INTO `opcion` VALUES ('229', 'Desde hace más de 27.000 años se utiliza a los perros.', '58', 'f');
INSERT INTO `opcion` VALUES ('230', 'Se cree que el perro forma parte de la evolución de la sociedad humana desde hace 27.000 años.', '58', 't');
INSERT INTO `opcion` VALUES ('231', 'Los perros ya se habían separado de los lobos mucho antes de los 27.000 años que lleva con la humanidad.', '58', 'f');
INSERT INTO `opcion` VALUES ('232', 'Por innovar en nuevas tecnologías.', '59', 'f');
INSERT INTO `opcion` VALUES ('233', 'Por implementar energías renovables.', '59', 'f');
INSERT INTO `opcion` VALUES ('234', 'Por inaugurar la primera carretera solar del mundo.', '59', 't');
INSERT INTO `opcion` VALUES ('235', 'Por desarrollar panales solares de última tecnología.', '59', 'f');
INSERT INTO `opcion` VALUES ('236', 'Si el país hiciera carreteras solares en una cuarta parte del millón de vías existentes en su territorio.', '60', 't');
INSERT INTO `opcion` VALUES ('237', 'Si Francia renuncia al consumo de combustibles fósiles.', '60', 'f');
INSERT INTO `opcion` VALUES ('238', 'Si el país continúa invirtiendo en energías renovables.', '60', 'f');
INSERT INTO `opcion` VALUES ('239', 'Si Francia utiliza este tipo de carreteras solares para general energía.', '60', 'f');
INSERT INTO `opcion` VALUES ('240', 'La energía solar es la energía que hay en el espacio, y su utilización es el cumplimiento de las predicciones de Tesla.', '61', 'f');
INSERT INTO `opcion` VALUES ('241', 'La humanidad ya desarrolló la tecnología para aprovechar la energía solar y es un gran paso para lograr el aprovechamiento de la energía del espacio.', '61', 't');
INSERT INTO `opcion` VALUES ('242', 'Los hombres ya tienen éxito en sus mecanismos vinculados al aprovechamiento de la energía.', '61', 'f');
INSERT INTO `opcion` VALUES ('243', 'Nikola Tesla era un visionario y pudo predecir el desarrollo de tecnologías amigables con el planeta.', '61', 'f');
INSERT INTO `opcion` VALUES ('244', 'La electricidad puede ser muy económica si se optimiza la utilización de los recursos naturales.', '62', 'f');
INSERT INTO `opcion` VALUES ('245', 'El uso de la energía solar es un perfecto ejemplo de electricidad económica.', '62', 'f');
INSERT INTO `opcion` VALUES ('246', 'La electricidad no puede llegar a ser sustentable, ya que siempre se necesita del uso de un recurso fósil para generarla.', '62', 't');
INSERT INTO `opcion` VALUES ('247', 'Las velas son más costosas ecológicamente hablando, en comparación con la electricidad.', '62', 'f');
INSERT INTO `opcion` VALUES ('248', 'El despertar la conciencia de todas las personas sobre el cambio climático.', '63', 'f');
INSERT INTO `opcion` VALUES ('249', 'El uso de energías renovables frente al cambio climático.', '63', 'f');
INSERT INTO `opcion` VALUES ('250', 'Se da un gran paso para la utilización de las energías renovables a través de iniciativas  creativas.', '63', 'f');
INSERT INTO `opcion` VALUES ('251', 'Se estimula la inversión y la utilización de las energías renovables, logrando el abaratamiento de la tecnología y por lo tanto, facilitando su acceso a la población en general.', '63', 't');
INSERT INTO `opcion` VALUES ('252', 'Se gana mucho al estimular este tipo de energía, pues cada vez se va a desarrollar más tecnologías, bajando los precios y optimizando los resultados.', '64', 'f');
INSERT INTO `opcion` VALUES ('253', ' No se justifica, por ningún motivo, tanta inversión.', '64', 'f');
INSERT INTO `opcion` VALUES ('254', 'El consumo de las 5.000 personas que habitan dicha región, justifica el gasto.', '64', 'f');
INSERT INTO `opcion` VALUES ('255', ' Las ganancias a largo plazo de la implementación de este tipo de energía, son mucho mayores que la inversión inicial.', '64', 't');
INSERT INTO `opcion` VALUES ('256', 'No es sustentable el uso de la tecnología de la carretera solar, pues resulta más costosa que la tecnología solar propia de los techos.', '65', 'f');
INSERT INTO `opcion` VALUES ('257', 'Es sustentable, pues cada vez se incrementa el uso de la tecnología solar como solución a los problemas energéticos del mundo.', '65', 'f');
INSERT INTO `opcion` VALUES ('258', 'El precio de las placas fotovoltaicas de las carreteras solares descenderá, haciendo cada vez más viable la implementación de dicha tecnología.', '65', 't');
INSERT INTO `opcion` VALUES ('259', 'Cada vez se construirán más carreteras pues el precio de su construcción ha bajado desde 2008.', '65', 'f');
INSERT INTO `opcion` VALUES ('260', 'Se estima que las celdas solamente podrán captar el 80% de la energía solar de un día.', '66', 't');
INSERT INTO `opcion` VALUES ('261', 'Se estima que solamente se va a aprovechar el 20% de la energía solar de un día.', '66', 'f');
INSERT INTO `opcion` VALUES ('262', 'Las celdas solares funcionarán utilizando toda la energía solar del día.', '66', 'f');
INSERT INTO `opcion` VALUES ('263', 'Se estima que se va a aprovechar la luz, solamente cuando los autos transiten por la carretera.', '66', 'f');
INSERT INTO `opcion` VALUES ('264', 'Una Ciencia que estudia las emociones y sentimientos del ser humano cuando compra.', '67', 'f');
INSERT INTO `opcion` VALUES ('265', 'Una ciencia que busca aumentar las ventas de determinados productos a través del pensamiento.', '67', 'f');
INSERT INTO `opcion` VALUES ('266', 'Una ciencia que estudia el marketing.', '67', 'f');
INSERT INTO `opcion` VALUES ('267', 'Una ciencia que investiga y estudia cómo se comporta el cerebro en un proceso de compra.', '67', 't');
INSERT INTO `opcion` VALUES ('268', 'El audiovisual, el motor y el sensitivo.', '68', 'f');
INSERT INTO `opcion` VALUES ('269', 'El sensomotor, el visual y el kinestésico.', '68', 'f');
INSERT INTO `opcion` VALUES ('270', 'El visual, el auditivo y el kinestésico.', '68', 't');
INSERT INTO `opcion` VALUES ('271', 'El auditivo, el motor y el kinestésico.', '68', 'f');
INSERT INTO `opcion` VALUES ('272', 'El marketing emocional contempla la posibilidad de un neuromarketing que utiliza técnicas como el storytelling para llegar al consumidor e invitarlo a comprar.', '69', 't');
INSERT INTO `opcion` VALUES ('273', 'El storytelling es una estrategia emocional que persuade a la gente.', '69', 'f');
INSERT INTO `opcion` VALUES ('274', 'El neuromarketing fue descubierto gracias a los efectos del storytelling.', '69', 'f');
INSERT INTO `opcion` VALUES ('275', 'El storytelling logra vender más productos gracias al neuromarketing.', '69', 'f');
INSERT INTO `opcion` VALUES ('276', 'La misión de un publicista es lograr que la persona compre más y para eso se inventa historias conmovedoras.', '70', 'f');
INSERT INTO `opcion` VALUES ('277', 'La misión de un publicista es captar la atención del público durante el anuncio, mientras transmite una emoción, para mostrar el producto con la intención de que el consumidor pueda recordarlo una vez que el anuncio acabe.', '70', 't');
INSERT INTO `opcion` VALUES ('278', 'El objetivo del publicista es promocionar un producto utilizando cualquier estrategia de mercadeo, entre ellas, el storytelling.', '70', 'f');
INSERT INTO `opcion` VALUES ('279', 'El objetivo de un publicista es atraer los medios de comunicación sobre el producto y para esto se inventa historias conmovedoras que permitan la identificación del consumidor con el producto.', '70', 'f');
INSERT INTO `opcion` VALUES ('280', 'EL perifoneo es una de las estrategias más efectivas.', '71', 'f');
INSERT INTO `opcion` VALUES ('281', 'El radio es el medio masivo de comunicación más efectivo.', '71', 'f');
INSERT INTO `opcion` VALUES ('282', 'En los comercios siempre se encontrará música que llame la atención del cliente.', '71', 'f');
INSERT INTO `opcion` VALUES ('283', 'En una tienda de moda joven, será normal encontrar música electro, house, música que incite a salir de fiesta, ese es el objetivo, encontrarte con esa sensación.', '71', 't');
INSERT INTO `opcion` VALUES ('284', 'Poner el producto en un lugar visible.', '72', 'f');
INSERT INTO `opcion` VALUES ('285', 'Poner el precio de un producto acabado en 0,99.', '72', 't');
INSERT INTO `opcion` VALUES ('286', 'Utilizar empaques llamativos.', '72', 'f');
INSERT INTO `opcion` VALUES ('287', 'Atraer la atención del consumidor por medio de letreros.', '72', 'f');
INSERT INTO `opcion` VALUES ('288', 'Es un comprador de emociones, porque no compra los productos por su utilidad sino por la emoción que despiertan los publicistas.', '73', 't');
INSERT INTO `opcion` VALUES ('289', 'Es un consumidor impulsivo por naturaleza, ya que siempre desea lo que le gusta a primera vista.', '73', 'f');
INSERT INTO `opcion` VALUES ('290', 'Es un consumidor responsable, ya que tiene la capacidad de programar sus gastos  y sus compras.', '73', 'f');
INSERT INTO `opcion` VALUES ('291', 'Es un comprador de ilusiones, porque no compra los productos sino las ilusiones propuestas por los publicistas.', '73', 'f');
INSERT INTO `opcion` VALUES ('292', 'Busca eliminar olores molestos propios del establecimiento, logrando crear un ambiente propicio para las compras.', '74', 'f');
INSERT INTO `opcion` VALUES ('293', 'Buscan asociar el olor de la fragancia con el local para que la persona se sienta a gusto en el lugar, comprando más, y que lo recuerde cada vez que percibe la fragancia.', '74', 't');
INSERT INTO `opcion` VALUES ('294', 'Buscan un aire más sofisticado para su local ya que esto le permitirá atraer a clientes más adinerados y por lo tanto, vender más.', '74', 'f');
INSERT INTO `opcion` VALUES ('295', 'Buscan atraer a los jóvenes, por lo tanto utilizan feromonas que atraen a los sexos según el tipo de ropa que venden.', '74', 'f');
INSERT INTO `opcion` VALUES ('296', 'Un fenómeno natural.', '75', 'f');
INSERT INTO `opcion` VALUES ('297', 'El lanzamiento  de una nueva pieza atómica para evaluar la potencia lograda por los científicos del país.', '75', 't');
INSERT INTO `opcion` VALUES ('298', 'El choque de dos placas tectónicas.', '75', 'f');
INSERT INTO `opcion` VALUES ('299', 'Un ataque nuclear por parte de Corea del Norte.', '75', 'f');
INSERT INTO `opcion` VALUES ('300', 'El mayor de todos.', '76', 't');
INSERT INTO `opcion` VALUES ('301', 'El más tecnológico.', '76', 'f');
INSERT INTO `opcion` VALUES ('302', 'El más preciso.', '76', 'f');
INSERT INTO `opcion` VALUES ('303', 'El más ruidoso.', '76', 'f');
INSERT INTO `opcion` VALUES ('304', 'Tanto para las Naciones Unidas como para Obama, la actitud del presidente de Corea del Norte, es irresponsable.', '77', 'f');
INSERT INTO `opcion` VALUES ('305', 'Tanto para Obama como para las Naciones Unidas, las pruebas nucleares de Kim Jong Un son un desafió al mundo.', '77', 't');
INSERT INTO `opcion` VALUES ('306', 'Tanto para Obama como para las Naciones Unidas, las pruebas son un atentado a la ecología mundial.', '77', 'f');
INSERT INTO `opcion` VALUES ('307', 'Tanto para las Naciones Unidas como para Obama, las pruebas atómicas están prohibidas.', '77', 'f');
INSERT INTO `opcion` VALUES ('308', 'Puede ser parte de la solución y no del problema.', '78', 'f');
INSERT INTO `opcion` VALUES ('309', 'La energía nuclear es limpia, mientras que la bomba nuclear es energía sucia y contaminante.', '78', 'f');
INSERT INTO `opcion` VALUES ('310', 'La energía nuclear, utilizada de manera responsable, puede ayudar a solucionar las necesidades energéticas de la humanidad, mientras que las bombas nucleares pueden destruir la humanidad misma.', '78', 't');
INSERT INTO `opcion` VALUES ('311', 'La energía nuclear es tan peligrosa e inestable como las bombas nucleares.', '78', 'f');
INSERT INTO `opcion` VALUES ('312', 'Puede alterar la geología del territorio y causar posibles terremotos.', '79', 'f');
INSERT INTO `opcion` VALUES ('313', 'Kim Jong Un, desafió una vez más al mundo y lanzó un quinto misil pese a las advertencias de naciones unidas.', '79', 't');
INSERT INTO `opcion` VALUES ('314', 'Las bombas atómicas contaminan el lugar de los hechos por muchos años y con altos grados de radiación.', '79', 'f');
INSERT INTO `opcion` VALUES ('315', 'Corea del norte es una amenaza contra la democracia mundial y por lo tanto es un peligro que tenga armamento nuclear.', '79', 'f');
INSERT INTO `opcion` VALUES ('316', 'Preocupados, pues nuestra nación no es aliada de Estados Unidos.', '80', 'f');
INSERT INTO `opcion` VALUES ('317', 'Tranquilos, pues somos aliados de Estados Unidos, y de esta manera no tenemos riesgo ante cualquier amenaza con misiles.', '80', 'f');
INSERT INTO `opcion` VALUES ('318', 'A la expectativa, porque aunque nuestra nación es aliada de estados unidos, debemos estar alerta, pues un ataque nuclear, o una posible guerra atómica, puede tener consecuencias para el planeta en general.', '80', 't');
INSERT INTO `opcion` VALUES ('319', 'Despreocupados, pues Corea del Norte está muy lejos de nuestra nación, por lo tanto, no es problema de nosotros', '80', 'f');
INSERT INTO `opcion` VALUES ('320', 'Se va a lograr la estabilidad mundial,  pues las naciones unidas respetarán las posiciones de Kim Jong Un.', '81', 'f');
INSERT INTO `opcion` VALUES ('321', 'Se desarrolle la evolución de las armas nucleares, aumentando su potencia y alcance letal.', '81', 'f');
INSERT INTO `opcion` VALUES ('322', 'Otras naciones decidan apoyar a Kim Jong Un, en busca de un aliado estratégico con alto poder militar.', '81', 'f');
INSERT INTO `opcion` VALUES ('323', 'Se van a incrementar las sanciones por parte de Naciones Unidas a Corea del Norte, se crearía inestabilidad política y posiblemente se podría desencadenar un ataque nuclear.', '81', 't');
INSERT INTO `opcion` VALUES ('324', 'Se contaminarían todas las fuentes hídricas.', '82', 'f');
INSERT INTO `opcion` VALUES ('325', 'Se podría desestabilizar el equilibro natural del planeta tierra.', '82', 't');
INSERT INTO `opcion` VALUES ('326', 'Se detendrían tanto la rotación como la translación del planeta tierra.', '82', 'f');
INSERT INTO `opcion` VALUES ('327', 'Se aniquilaría al 80% de la población mundial.', '82', 'f');
INSERT INTO `opcion` VALUES ('328', 'Porque la dueña pensó  que la solución económica al problema del establecimiento, se encontraba en la mano de obra barata y poco capacitada.', '83', 'f');
INSERT INTO `opcion` VALUES ('329', 'Porque la dueña es muy religiosa y sabía que si ayudaba al necesitado estaba asegurando su puesto en el cielo.', '83', 'f');
INSERT INTO `opcion` VALUES ('330', 'Porque ella cree que todos merecemos una segunda oportunidad.', '83', 't');
INSERT INTO `opcion` VALUES ('331', 'Porque necesitaba un empleado que le ayudara en las labores más difíciles y tediosas de la cocina.', '83', 'f');
INSERT INTO `opcion` VALUES ('332', 'Debido a problemas de drogadicción, cosa que lo marginaba con sus empleadores.', '84', 'f');
INSERT INTO `opcion` VALUES ('333', 'Debido a su mala presentación personal, pues ninguna persona estaría dispuesta a tolerar las fachas de un mendigo en el trabajo.', '84', 'f');
INSERT INTO `opcion` VALUES ('334', 'Debido a la falta de oportunidades de trabajo para personas con más de 30 años y sin preparación académica.', '84', 'f');
INSERT INTO `opcion` VALUES ('335', 'Debido a su largo historial de malas acciones que no le permitían encontrar un trabajo digno para solventar su alimentación.', '84', 't');
INSERT INTO `opcion` VALUES ('336', 'El inicio de los ahorros que le permitirán salir de la indigencia.', '85', 'f');
INSERT INTO `opcion` VALUES ('337', 'El sentirse alguien mejor, recuperando la confianza en sí mismo y ganándosela de los demás.', '85', 't');
INSERT INTO `opcion` VALUES ('338', 'Tener la capacidad se sentirse autosuficiente nuevamente, ya que podía correr con sus gastos y por consecuencia, darse sus lujos.', '85', 'f');
INSERT INTO `opcion` VALUES ('339', 'El recuperar su capacidad adquisitiva, cosa que lo convierte en una persona útil para la sociedad.', '85', 'f');
INSERT INTO `opcion` VALUES ('340', 'Tanto el texto como la sociedad actual concuerdan en que es un riesgo para la sociedad el emplear a personas de la calle.', '86', 'f');
INSERT INTO `opcion` VALUES ('341', 'La sociedad actual no ve ninguna utilidad en las personas de la calle, al igual que el texto.', '86', 'f');
INSERT INTO `opcion` VALUES ('342', 'La sociedad actual desprecia el rol de las personas de la calle al punto de no confiar en ellas, mientras que el texto propone una alternativa de confianza en la que, a través del trabajo, la persona reencuentra la confianza en sí mismo y la de los demás.', '86', 't');
INSERT INTO `opcion` VALUES ('343', 'La sociedad actual desprecia el rol de las personas de la calle al punto de considerarlas un problema, mientras que el texto propone continuar viéndolas como personas y por lo tanto, darles la posibilidad de trabajar y surgir.', '86', 'f');
INSERT INTO `opcion` VALUES ('344', 'Marcus es un vagabundo que a pesar de su condición tiene mucho por ofrecer tanto a los demás como a la sociedad.', '87', 't');
INSERT INTO `opcion` VALUES ('345', 'Marcos no es un indigente, solamente es un vagabundo.', '87', 'f');
INSERT INTO `opcion` VALUES ('346', 'El término indigente es un peyorativo, y Marcus merece respeto.', '87', 'f');
INSERT INTO `opcion` VALUES ('347', 'La indigencia es una condición totalmente diferente a la de un vagabundo.', '87', 'f');
INSERT INTO `opcion` VALUES ('348', 'Los habitantes de la calle son personas peligrosas que se han convertido en un problema para la sociedad.', '88', 'f');
INSERT INTO `opcion` VALUES ('349', 'Los habitantes de la calle son seres humanos como cualquiera de nosotros, y como tal, pueden cambiar su vida y la de los demás.', '88', 't');
INSERT INTO `opcion` VALUES ('350', 'Los habitantes de la calle son la mejor muestra de mano de obra barata, siempre y cuando, se puedan rehabilitar.', '88', 'f');
INSERT INTO `opcion` VALUES ('351', 'Tanto el texto como la noticia nos muestran una realidad innegable en la que los indigentes han demostrado ser útiles en todos los trabajos. Por lo tanto, son personas con altas capacidades de mando y liderazgo.', '88', 'f');
INSERT INTO `opcion` VALUES ('352', 'Que el “vagabundo” no tenga unas intenciones reales de cambiar su forma de vida y en consecuencia, no tenga deseos de recuperar la confianza en sí mismo y la de los demás.', '89', 't');
INSERT INTO `opcion` VALUES ('353', 'Que el “vagabundo” busque el empleo como un pretexto para ganarse la confianza de los empleadores, para posteriormente robarlos.', '89', 'f');
INSERT INTO `opcion` VALUES ('354', 'Que el “vagabundo” consiga el empleo pero no sea responsable, es decir, que no llegue puntualmente al trabajo, que algunos otros días falte y en otros casos haga el trabajo mal.', '89', 'f');
INSERT INTO `opcion` VALUES ('355', 'Que el “vagabundo” tenga problemas con otros “vagabundos” y estos quieran desquitarse de él tomando retaliaciones contra el negocio.', '89', 'f');
INSERT INTO `opcion` VALUES ('356', 'Han tenido experiencias negativas con los “vagabundos”.', '90', 'f');
INSERT INTO `opcion` VALUES ('357', 'Prefieren dar el pescado en lugar de enseñar a pescar.', '90', 'f');
INSERT INTO `opcion` VALUES ('358', 'Saben de restaurantes y reconocen la importancia de que todo su personal esté capacitado para la labor que realiza.', '90', 'f');
INSERT INTO `opcion` VALUES ('359', 'No creen en la posibilidad de cambio de los “vagabundos” y prefieren simplemente no tenerlos en cuenta ni dejarlos entrar a sus negocios.', '90', 't');
INSERT INTO `opcion` VALUES ('360', 'Tolerancia.', '91', 'f');
INSERT INTO `opcion` VALUES ('361', 'Aceptación.', '91', 'f');
INSERT INTO `opcion` VALUES ('362', 'Inclusión.', '91', 't');
INSERT INTO `opcion` VALUES ('363', 'Exclusión.', '91', 'f');
INSERT INTO `opcion` VALUES ('364', 'Una persona que tiene esas características no resulta confiable. Y cualquier empleo requiere de confianza por parte del empleador.', '92', 't');
INSERT INTO `opcion` VALUES ('365', 'Una persona sin experiencia no se puede desempeñar con suficiencia en un empleo.', '92', 'f');
INSERT INTO `opcion` VALUES ('366', 'Una persona con antecedentes penales posiblemente puede ser un prófugo de la justicia o un ladrón, y un empleador no puede darse el lujo de correr el riesgo de ser robado.', '92', 'f');
INSERT INTO `opcion` VALUES ('367', 'Las personas con estas características no cumplen con ningún perfil laboral, por lo tanto, no pueden pasar sus hojas de vida a ninguna empresa.', '92', 'f');
INSERT INTO `opcion` VALUES ('368', 'Se mete a un programa de rehabilitación, ya que dichos programas tienen convenios con bolsas de empleo y les ayudan a incorporarse a la vida laboral.', '93', 'f');
INSERT INTO `opcion` VALUES ('369', 'Es honesto y le cuenta la verdad de su vida a las personas.', '93', 'f');
INSERT INTO `opcion` VALUES ('370', 'Recibe la ayuda oportuna de personas que le brindan la oportunidad de ser útiles para ellos mismos y para la sociedad.', '93', 't');
INSERT INTO `opcion` VALUES ('371', 'Se implementan políticas sociales de reinserción para los habitantes de la calle.', '93', 'f');
INSERT INTO `opcion` VALUES ('372', 'Ahora que tiene dinero, puede comprar lo que quiere.', '94', 'f');
INSERT INTO `opcion` VALUES ('373', 'Ahora que ganó su propio dinero, lo mínimo que debe comprar es su comida.', '94', 'f');
INSERT INTO `opcion` VALUES ('374', 'Ahora que tiene dinero, quiere colaborar con la economía del café, porque sabe que todas las ganancias lo beneficiaran indirectamente a él.', '94', 'f');
INSERT INTO `opcion` VALUES ('375', 'Ahora que ganó su propio dinero, se sintió bien consigo mismo pues recordó su dignidad como ser humano y empezó a pagar sus alimentos como cualquier otro cliente del café.', '94', 't');
INSERT INTO `opcion` VALUES ('376', 'El equipo de rescate habría activado las señales de alarma.', '33', 'f');
INSERT INTO `opcion` VALUES ('377', 'Un informe en que se expone algo que debe tenerse en cuenta para una acción o en determinado asunto.', '95', 't');
INSERT INTO `opcion` VALUES ('378', 'Una sanción disciplinaria que se impone por determinada falta.', '95', 'f');
INSERT INTO `opcion` VALUES ('379', 'Un llamado de atención en el que las dos partes llegan a acuerdos para el mutuo beneficio.', '95', 'f');
INSERT INTO `opcion` VALUES ('380', 'Un compendio de recomendaciones en el que las naciones definen sus acuerdos.', '95', 'f');
INSERT INTO `opcion` VALUES ('381', 'Que el ministerio de ambiente logre firmar el convenio para el desarrollo de energías renovables.', '96', 'f');
INSERT INTO `opcion` VALUES ('382', 'Que la Unidad de Planeación Minero Energética (UPME) llegue a un acuerdo con el ministerio de ambiente.', '96', 'f');
INSERT INTO `opcion` VALUES ('383', 'Que se disminuya la utilización de los combustibles fósiles para evitar la emisión de gases invernaderos en un 30%.', '96', 'f');
INSERT INTO `opcion` VALUES ('384', 'Que se disminuya la emisión de gases invernaderos en un 20%.', '96', 't');
INSERT INTO `opcion` VALUES ('385', 'Desarrollo de energías geotérmicas, solares y eólicas.', '97', 'f');
INSERT INTO `opcion` VALUES ('386', 'Desarrollo de energías eólica y solar.', '97', 'f');
INSERT INTO `opcion` VALUES ('387', 'Desarrollo de energías eólica, solar y de mares.', '97', 't');
INSERT INTO `opcion` VALUES ('388', 'Desarrollo de múltiples tipos de energías limpias que ayuden a contrarrestar el calentamiento global.', '97', 'f');
INSERT INTO `opcion` VALUES ('389', 'La emisión de gases invernaderos y el calentamiento global, son problemáticas que se han venido discutiendo desde el tratado de Kioto, tratado de muchos países no han cumplido y por eso se necesitan interventores externos, como Holanda.', '98', 'f');
INSERT INTO `opcion` VALUES ('390', 'La emisión de gases invernaderos y el calentamiento global, son problemas internacionales cuya solución solamente se puede encontrar a través del uso de energías renovables. ', '98', 't');
INSERT INTO `opcion` VALUES ('391', 'La emisión de gases invernaderos y el calentamiento global, son problemas internacionales, por eso es indispensable que todos los países tomen conciencia sobre la ecología y el medio ambiente.', '98', 'f');
INSERT INTO `opcion` VALUES ('392', 'La emisión de gases invernaderos y el calentamiento global, son problemáticas internacionales que van directamente relacionadas con el derretimiento de los polos, y el cambio climático, por eso los países se unen para buscar alternativas que les permitan continuar con sus avances tecnológicos.', '98', 'f');
INSERT INTO `opcion` VALUES ('393', 'Los gobiernos de Colombia y Holanda son conscientes de que si no implementan este tipo de estrategias, la raza humana se encuentra en inminente riesgo de extinción.', '99', 'f');
INSERT INTO `opcion` VALUES ('394', 'Con este tipo de acuerdos políticos se busca generar la conciencia y la  tecnología que ayudará a encontrar soluciones al cambio climático. Asegurando nuestra supervivencia y la de las demás especies en un marco de paz, convivencia, y desarrollo de las regiones más afectadas por el conflicto armado.', '99', 't');
INSERT INTO `opcion` VALUES ('395', 'Tanto para Holanda como para Colombia, la implementación de las nuevas tecnologías es una prioridad que no da espera y por ello buscan de manera insistente estrategias políticas que nos ayuden a sobrevivir.', '99', 'f');
INSERT INTO `opcion` VALUES ('396', 'Con este tipo de acuerdos políticos evidencian su creciente preocupación por los problemas ambientales que afectan a sus países, y demuestran su voluntad en la búsqueda de soluciones al mismo.', '99', 'f');
INSERT INTO `opcion` VALUES ('397', 'Las energías eólica, solar y de mares, son recursos inagotables que pueden generar incalculables ganancias. De manera que invertir en ellas,  es un negocio muy lucrativo que puede favorecer a ambos países. ', '100', 'f');
INSERT INTO `opcion` VALUES ('398', 'El desarrollo de energías eólica, solar y de mares, es un buen negocio a largo plazo, pues a futuro puede asegurar la generación de energía a bajo costo.', '100', 'f');
INSERT INTO `opcion` VALUES ('399', 'Tanto Holanda y Colombia se encuentran preocupados por la producción de CO2.', '100', 'f');
INSERT INTO `opcion` VALUES ('400', ' El cambio climático es un pretexto que se inventaron los mismos países productores para frenar el crecimiento industrial y por lo tanto, económico, de su competencia.', '100', 't');
INSERT INTO `opcion` VALUES ('401', 'Los gases invernaderos dificultan la producción de cultivos agrícolas, ya que está directamente relacionado con el clima y este, con las oleadas de sequía y lluvias, por lo tanto, entre más control se tenga, mayor probabilidad de supervivencia para la raza humana.', '101', 'f');
INSERT INTO `opcion` VALUES ('402', 'Los gases invernaderos son los principales culpables del cambio climático, lo que desestabiliza el equilibrio del planeta tierra y con ello, pone en peligro a todas las especies que habitan en él.', '101', 't');
INSERT INTO `opcion` VALUES ('403', 'Los gases invernaderos son gases que pueden ser útiles para la humanidad, para ello es indispensable hacer avances tecnológicos que faciliten su aprovechamiento.', '101', 'f');
INSERT INTO `opcion` VALUES ('404', 'Si no se controlan los gases invernaderos, nos podemos encontrar ante la inminente extinción del ser humano.', '101', 'f');
INSERT INTO `opcion` VALUES ('405', 'Las comunidades afectadas directamente por el proceso de paz en Colombia van a tener mayor demanda de energía y es necesario suplirla con energías renovables.', '102', 'f');
INSERT INTO `opcion` VALUES ('406', 'Las comunidades directamente relacionadas con el proceso de paz en Colombia, necesitan el acompañamiento de supervisores externos como Holanda, para verificar que procesos como el desarme, se den de manera transparente, lo que permite el intercambio de experiencias y conocimientos.', '102', 'f');
INSERT INTO `opcion` VALUES ('407', 'Las comunidades directamente relacionadas con el proceso de paz en Colombia, necesitan acompañamiento, tanto del estado como de entres internacionales, lo que permite  implementar intercambios tecnológicos y de conocimiento.', '102', 't');
INSERT INTO `opcion` VALUES ('408', 'Las comunidades directamente relacionadas con el proceso de paz en Colombia, necesitan acompañamiento del estado  y esta es una gran oportunidad para probar nuevas tecnologías a favor del medio ambiente.', '102', 'f');
INSERT INTO `opcion` VALUES ('409', 'Porque Holanda fue muy específica al aclarar que solamente deseaba trabajar con las poblaciones que se encontraban en situación de vulnerabilidad por el conflicto armado, como la Orinoquía, el Pacífico y el Caribe.', '103', 'f');
INSERT INTO `opcion` VALUES ('410', 'Porque son regiones afectadas históricamente por el conflicto armado con las Farc, y el marco del proceso de paz es una oportunidad invaluable para la implementación de acuerdos de cooperación con  otros países, en este caso, en el campo energético.', '103', 't');
INSERT INTO `opcion` VALUES ('411', 'Porque dichas regiones han tenido presencia de insurgentes y forma parte del proyecto, para el fin del conflicto, la reinserción de dichos insurgentes a la vida  productiva, especialmente en lo que a generación de energía se refiere.', '103', 'f');
INSERT INTO `opcion` VALUES ('412', 'Porque dichas regiones han sido abandonadas por el estado y ahora que se firmó un acuerdo de paz, es posible que la situación política y social cambie; para ello, es indispensable el apoyo de naciones externas como Holanda.', '103', 'f');
INSERT INTO `opcion` VALUES ('413', 'Se va a incentivar la producción de combustibles alternativos a través del aceite de palma y el biodisel.', '104', 'f');
INSERT INTO `opcion` VALUES ('414', 'Se va a incentivar la creatividad y la innovación que permitan el aprovechamiento de los recursos naturales y el reciclaje de los diferentes recursos, en búsqueda de la reducción de un 20% de los gases de efecto invernadero para el 2030.', '104', 'f');
INSERT INTO `opcion` VALUES ('415', 'Se va a incentivar la producción de tecnologías amigables con el planeta tierra, que permitan optimizar el aprovechamiento de la energía geotérmica e hidroeléctrica, que tienen una buena relación entre la inversión  y el beneficio, y que además, permiten la reducción considerable de la emisión de gases de efecto invernadero.', '104', 'f');
INSERT INTO `opcion` VALUES ('416', 'Se va a incentivar la creatividad y la innovación en la aplicación de tecnologías que permitan el aprovechamiento de las corrientes de aire, las corrientes marinas y la energía solar.', '104', 't');
INSERT INTO `opcion` VALUES ('417', 'El proceso de paz logrado con las FARC, pues permitirá que el estado centre su atención en la satisfacción de las necesidades energéticas propias de las regiones afectadas por el conflicto, lo que significa una gran oportunidad para  el desarrollo de tecnologías amigables con el planeta.', '105', 't');
INSERT INTO `opcion` VALUES ('418', 'El planteamiento de nuevas políticas energéticas por parte tanto del ministerio de minas como de ambiente, lo que genera un espacio propicio para el intercambio de experiencias y conocimiento, con otros países, en este caso Holanda.', '105', 'f');
INSERT INTO `opcion` VALUES ('419', 'El período de inestabilidad política propio de las elecciones, pues cada ministro trata de dejar su legado celebrando acuerdos internacionales como el logrado con Holanda.', '105', 'f');
INSERT INTO `opcion` VALUES ('420', 'Las exigencias internacionales con respecto al cambio climático, pues todos los países del mundo se propusieron una reducción del 20% en la producción de gases de efecto invernadero para el 2030.', '105', 'f');
INSERT INTO `opcion` VALUES ('421', 'Especialistas extranjeros vengan a implementar proyectos pilotos que ayuden a las poblaciones más vulnerables, como las poblaciones indígenas, afrocolombianas y raizales; impulsando la cultura y la economía de dichas regiones.  ', '106', 'f');
INSERT INTO `opcion` VALUES ('422', 'Especialistas extranjeros venga a intercambiar experiencias y tecnología, que le permita a las comunidades más afectadas por el conflicto armado, la implementación de energías limpias, como la eólica, la de mares y la solar, para satisfacer su demanda energética y atenuar la producción de gases de efecto invernadero.', '106', 't');
INSERT INTO `opcion` VALUES ('423', 'Especialistas colombianos viajen al exterior para capacitarse en el uso y la implementación de tecnologías novedosas que permitan el aprovechamiento de los recursos naturales no renovables de manera eficiente y amigable con el planeta.', '106', 'f');
INSERT INTO `opcion` VALUES ('424', 'Especialistas colombianos establezcan una relación de intercambio tecnológico con sus pares holandeses, lo que les va a permitir el desarrollo y la innovación, en la implementación de estrategias sociales, culturales y tecnológicas, que afecten el desarrollo tecnológico y cultural de las regiones afectadas por el conflicto.', '106', 'f');
INSERT INTO `opcion` VALUES ('425', 'Dos personas que comparan dos obras de arte.', '107', 'f');
INSERT INTO `opcion` VALUES ('426', 'Un vendedor de arte que explica la pintura a un posible comprador.', '107', 'f');
INSERT INTO `opcion` VALUES ('427', 'Un personaje que comparte con otra, su interpretación de una obra de arte según su propia forma de ver el mundo.', '107', 't');
INSERT INTO `opcion` VALUES ('428', 'Dos personas que analizan una obra de arte y la clasifican según el período histórico al que corresponde.', '107', 'f');
INSERT INTO `opcion` VALUES ('429', 'Hace un análisis teniendo en cuenta el contexto propio en el que fue creada.', '108', 'f');
INSERT INTO `opcion` VALUES ('430', 'Hace una interpretación a partir de su propio punto de vista.', '108', 't');
INSERT INTO `opcion` VALUES ('431', 'Hace un análisis de la técnica empleada por el artista al momento de la creación de la misma.', '108', 'f');
INSERT INTO `opcion` VALUES ('432', 'Plantea diferentes formas de relacionar a una obra de arte con su contexto.', '108', 'f');
INSERT INTO `opcion` VALUES ('433', 'No dice nada, porque solamente nos presenta dibujos.', '109', 'f');
INSERT INTO `opcion` VALUES ('434', 'Se utiliza correctamente, pues nos indica quién está hablando y nos muestra lo que dice.', '109', 'f');
INSERT INTO `opcion` VALUES ('435', 'Está mal utilizado, pues no se sabe cuál es el personaje que habla.', '109', 'f');
INSERT INTO `opcion` VALUES ('436', 'Sirve para mostrar la manera en la que una persona con mentalidad “cuadrada” interpreta una obra de arte “circular”.', '109', 't');
INSERT INTO `opcion` VALUES ('437', 'Mana Neyestani es un “revoltoso” que busca acabar con el orden político y social de su nación.', '110', 'f');
INSERT INTO `opcion` VALUES ('438', 'Mana Neyestani es un artista cuyo objetivo es generar polémica para atraer la atención de los medios de comunicación sobre su obra.', '110', 'f');
INSERT INTO `opcion` VALUES ('439', 'Mana Neyestani es un artista cuyo objetivo es denunciar las realidades sociales, políticas y culturales de su país y del mundo, para generar reflexión y con ella, cambio.', '110', 't');
INSERT INTO `opcion` VALUES ('440', 'Mana Neyestani es un ideólogo que plasma sus propuestas sociales a través de dibujos.', '110', 'f');
INSERT INTO `opcion` VALUES ('441', 'Interpretar  la obra de arte según los criterios que tienen preconcebidos. ', '111', 't');
INSERT INTO `opcion` VALUES ('442', 'Analizar la obra de manera objetiva y concreta.', '111', 'f');
INSERT INTO `opcion` VALUES ('443', 'Proponer diferentes interpretaciones de la obra.', '111', 'f');
INSERT INTO `opcion` VALUES ('444', 'Analizar el contexto de la obra y el punto de vista del artista.', '111', 'f');
INSERT INTO `opcion` VALUES ('445', 'Es adecuado para la obra de arte, pues la interpreta en su totalidad.', '112', 'f');
INSERT INTO `opcion` VALUES ('446', 'Es pertinente en cuanto permite una amplia interpretación.', '112', 'f');
INSERT INTO `opcion` VALUES ('447', 'Es irresponsable, pues emite juicios de valor sobre la obra, sin analizarla.', '112', 'f');
INSERT INTO `opcion` VALUES ('448', 'Es inapropiado para la obra de arte, ya que desconoce su naturaleza.', '112', 't');
INSERT INTO `opcion` VALUES ('449', 'La realidad depende de quién la interpreta.', '113', 't');
INSERT INTO `opcion` VALUES ('450', 'Cada quién ve lo que quiere ver.', '113', 'f');
INSERT INTO `opcion` VALUES ('451', 'Nuestras apreciaciones son el reflejo de nuestros pensamientos.', '113', 'f');
INSERT INTO `opcion` VALUES ('452', 'Cada obra de arte tiene su única manera de ser interpretada.', '113', 'f');
INSERT INTO `opcion` VALUES ('453', 'Un círculo hecho a partir de hexágonos, que toma el pensamiento cuadriculado de los espectadores y le da cierta esfericidad sin perder los ángulos.', '114', 'f');
INSERT INTO `opcion` VALUES ('454', 'Un círculo hecho de círculos, que permite interpretar la obra de arte a partir de su propia realidad y contexto, teniendo en cuenta el rol y la intención del artista.', '114', 't');
INSERT INTO `opcion` VALUES ('455', 'Un cuadrado hecho de círculos, pues los personajes tienen un pensamiento cuadrado que va a ser llenado por los círculos propuestos por la obra.', '114', 'f');
INSERT INTO `opcion` VALUES ('456', 'Un cuadrado hecho de hexágonos, que toma el pensamiento angular y rectilíneo de los personajes y trata de amoldarlo a una figura que se parezca al círculo que muestra la obra.', '114', 'f');
INSERT INTO `opcion` VALUES ('457', 'Desaparecerían los eclipses, las noches serían más oscuras y las mareas serían más pequeñas.', '115', 't');
INSERT INTO `opcion` VALUES ('458', 'Desaparecerían los eclipses y los días serían más largos.', '115', 'f');
INSERT INTO `opcion` VALUES ('459', 'Desaparecerían las mareas y las noches serían más oscuras.', '115', 'f');
INSERT INTO `opcion` VALUES ('460', 'Desaparecerían las mareas, los días serían menos largos y los eclipses serían más largos.', '115', 'f');
INSERT INTO `opcion` VALUES ('461', 'La luna acelera la rotación de la tierra.', '116', 'f');
INSERT INTO `opcion` VALUES ('462', 'La luna regula las mareas del océano.', '116', 'f');
INSERT INTO `opcion` VALUES ('463', 'La luna regula el clima de la noche.', '116', 'f');
INSERT INTO `opcion` VALUES ('464', 'La luna frena la rotación terrestre.', '116', 't');
INSERT INTO `opcion` VALUES ('465', 'En efecto, la tierra y la luna forman un sistema planetario doble.', '117', 'f');
INSERT INTO `opcion` VALUES ('466', 'Es un hecho que somos el único sistema planetario doble que existe en nuestro sistema solar.', '117', 'f');
INSERT INTO `opcion` VALUES ('467', 'El autor se atreve a afirmar que la tierra y la luna forman un sistema planetario doble.', '117', 't');
INSERT INTO `opcion` VALUES ('468', 'La tierra y la luna no son un sistema planetario.', '117', 'f');
INSERT INTO `opcion` VALUES ('469', 'Al tratarse de una película animada, no importan las reglas naturales y por lo tanto, en nada afecta el robo de la luna a la naturaleza de la misma.', '118', 'f');
INSERT INTO `opcion` VALUES ('470', 'Sin la luna, el planeta tierra se habría desestabilizado y se habría alterado la velocidad de la rotación de la tierra, cosa que habría hecho imposible el desarrollo normal del filme.', '118', 't');
INSERT INTO `opcion` VALUES ('471', 'El rayo reductor deduce también la gravedad que ejerce la luna, por lo tanto, no hay problema al acercarla más a la tierra.', '118', 'f');
INSERT INTO `opcion` VALUES ('472', 'El robo de la luna ocurrió durante menos de un día, por lo tanto, no todo el planeta sintió directamente las consecuencias del mismo.', '118', 'f');
INSERT INTO `opcion` VALUES ('473', 'La luna es la responsable directa de la formación de los eclipses.', '119', 'f');
INSERT INTO `opcion` VALUES ('474', 'El sol es el responsable directo de la formación de los eclipses.', '119', 'f');
INSERT INTO `opcion` VALUES ('475', 'Los eclipses son la mejor muestra de que la luna necesita de la luz del sol para brillar.', '119', 't');
INSERT INTO `opcion` VALUES ('476', 'Los eclipses son fenómenos naturales ocasionados por la tierra.', '119', 'f');
INSERT INTO `opcion` VALUES ('477', 'Se convirtió en un “imán de meteoritos” pues desde su formación ha absorbido numerosos impactos de meteoritos que pudieron impactar con la tierra.', '120', 'f');
INSERT INTO `opcion` VALUES ('478', 'La regulación de las estaciones y las mareas, así como la estabilización de la rotación del planeta.', '120', 't');
INSERT INTO `opcion` VALUES ('479', 'La iluminación de las noches, pues nos permitió el aprovechamiento del tiempo durante la noche.', '120', 'f');
INSERT INTO `opcion` VALUES ('480', 'La regulación de las mareas, pues le permitió a la humanidad el dominio de los mares.', '120', 'f');
INSERT INTO `opcion` VALUES ('481', 'Se desestabilice, lo que ocasionaría un caos organizacional que afectaría la productividad de las empresas y la calidad de vida de los seres humanos, pues los siclos diarios serían más cortos, lo que también acortaría el tiempo de descanso. ', '121', 't');
INSERT INTO `opcion` VALUES ('482', 'Se estabilice, pues el cambio en el horario invitaría a la reflexión sobre las realidades de la sociedad y provocaría un cambio pensado para ayudar a los sectores más vulnerables.', '121', 'f');
INSERT INTO `opcion` VALUES ('483', 'Se desestabilice, lo que ocasionaría un caos en el calendario; es decir que todos los seres humanos perderíamos nuestras convenciones sociales.', '121', 'f');
INSERT INTO `opcion` VALUES ('484', 'Se estabilice, pues proporcionaría la posibilidad de replantear las necesidades sociales a partir del calendario, por ejemplo, se podrían definir semanas más cortas o jornadas laborales más flexibles.', '121', 'f');
INSERT INTO `opcion` VALUES ('485', 'Terremotos más frecuentes, pues la gravedad de la tierra se vería afectada y con ello las presiones entre las placas tectónicas.', '122', 'f');
INSERT INTO `opcion` VALUES ('486', 'Los tsunamis, pues las mareas ocasionarían olas gigantescas que acaben con las poblaciones costeras.', '122', 'f');
INSERT INTO `opcion` VALUES ('487', 'Tendríamos inviernos muy largos, seguidos de períodos de sequía interminables, lo que daría muy poco espacio a la primavera y el otoño, afectando el clima mundial y la desaparición de las estaciones.', '122', 't');
INSERT INTO `opcion` VALUES ('488', 'No habría noches, pues la noche depende de la luna para existir.', '122', 'f');
INSERT INTO `opcion` VALUES ('489', 'Mafalda mira por la ventana, la mamá limpia los platos, la mamá le hace una pregunta a la niña, la niña responde.', '123', 'f');
INSERT INTO `opcion` VALUES ('490', 'La mamá le hace una pregunta a Mafalda mientras la niña limpia los cubiertos y le responde.', '123', 'f');
INSERT INTO `opcion` VALUES ('491', 'La mamá de Mafalda limpia los platos mientras le hace una pregunta a su hija, ella responde y la mamá se queda reflexionando sobre la respuesta recibida.', '123', 't');
INSERT INTO `opcion` VALUES ('492', 'Mafalda mira por la ventana, su mamá organiza los platos y las dos conversan sobre la humanidad.', '123', 'f');
INSERT INTO `opcion` VALUES ('493', 'La gente que pasa caminando por la calle.', '124', 'f');
INSERT INTO `opcion` VALUES ('494', 'Una mosca que se estrella en repetidas ocasiones contra el cristal de la venta.', '124', 't');
INSERT INTO `opcion` VALUES ('495', 'La ciudad y los edificios que se están al otro lado de la ventana.', '124', 'f');
INSERT INTO `opcion` VALUES ('496', 'El paisaje que puede apreciar desde su ventana.', '124', 'f');
INSERT INTO `opcion` VALUES ('497', 'La humanidad nunca podrá dejar la violencia, pues tiene la tendencia a caer siempre en los mismos errores.', '125', 't');
INSERT INTO `opcion` VALUES ('498', 'La humanidad podrá encontrar la paz, en la medida en que pueda abrir la ventana de la violencia.', '125', 'f');
INSERT INTO `opcion` VALUES ('499', 'La humanidad nunca podrá encontrar la paz, pues la violencia es parte de su naturaleza.', '125', 'f');
INSERT INTO `opcion` VALUES ('500', 'La humanidad podrá dejar la violencia, pues la violencia no hace parte de la naturaleza del ser humano ni de su espíritu.', '125', 'f');
INSERT INTO `opcion` VALUES ('501', 'Está en contra de Flaubert, pues cambia la naturaleza del ser humano por la de una mosca.', '126', 'f');
INSERT INTO `opcion` VALUES ('502', 'Va por la línea de Flaubert, pues la humanidad, en muchos aspectos, se parece a las moscas.', '126', 'f');
INSERT INTO `opcion` VALUES ('503', 'Concuerda con Flaubert, pues reconoce ciertos aspectos propios de  la humanidad en su observación del comportamiento de una mosca estrellándose contra el cristal.', '126', 't');
INSERT INTO `opcion` VALUES ('504', 'Se desvía de la apreciación de Flaubert, pues una mosca no tiene nada parecido a la humanidad.', '126', 'f');
INSERT INTO `opcion` VALUES ('505', 'Piensa que la humanidad es tan insignificante como una mosca.', '127', 'f');
INSERT INTO `opcion` VALUES ('506', 'Opina que la humanidad no tiene salida, como la mosca, que no puede atravesar el cristal.', '127', 'f');
INSERT INTO `opcion` VALUES ('507', 'Reflexiona sobre la humanidad al analizar que constantemente se enfrasca en situaciones conflictivas que no tienen salida ni solución.', '127', 'f');
INSERT INTO `opcion` VALUES ('508', 'Considera que la humanidad constantemente está estrellándose contra las mismas barreras que le impiden ser libre, a pesar de que gracias a su inteligencia, puede vislumbrar la libertad.', '127', 't');
INSERT INTO `opcion` VALUES ('509', 'El ser humano a través de su vida se encuentra en un constante aprendizaje, por lo tanto, tiene la capacidad de aprender y no volver a estrellarse con los mismos obstáculos.', '128', 't');
INSERT INTO `opcion` VALUES ('510', 'El ser humano es el único “animal” que no aprende de sus propios errores, y comete las mismas equivocaciones una y otra vez.', '128', 'f');
INSERT INTO `opcion` VALUES ('511', 'El ser humano se encuentra encerrado en sus propias libertades, lo que le impide ser libre.', '128', 'f');
INSERT INTO `opcion` VALUES ('512', 'La humanidad no tiene nada parecido a una mosca, por lo tanto, no se puede establecer analogía alguna.', '128', 'f');
INSERT INTO `opcion` VALUES ('513', 'No está acostumbrada a ese tipo de respuestas por parte de Mafalda.', '129', 'f');
INSERT INTO `opcion` VALUES ('514', 'Conoce la naturaleza crítica de su hija y sabe que seguramente está haciendo un análisis profundo al respecto de la humanidad y su naturaleza.', '129', 't');
INSERT INTO `opcion` VALUES ('515', 'No se imagina qué es lo que realmente está viendo su hija.', '129', 'f');
INSERT INTO `opcion` VALUES ('516', 'Conociendo a Mafalda, sabe que muy posiblemente está haciendo un daño, por ejemplo: rayando las paredes o manchando el piso.', '129', 'f');
INSERT INTO `opcion` VALUES ('517', 'Necesita ayuda de su hija para hacer los quehaceres de la casa.', '130', 'f');
INSERT INTO `opcion` VALUES ('518', 'Mafalda estaba muy silenciosa y normalmente, cuando un niño está muy tranquilo, es porque está tramando algo.', '130', 't');
INSERT INTO `opcion` VALUES ('519', 'Buscaba a su esposo y para eso necesitaba la ayuda de su hija.', '130', 'f');
INSERT INTO `opcion` VALUES ('520', 'Mafalda es una niña muy inquieta y si no se “sentía” en la casa, posiblemente era porque estaba enferma.', '130', 'f');

-- ----------------------------
-- Table structure for pregunta
-- ----------------------------
DROP TABLE IF EXISTS `pregunta`;
CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preguntas` text COLLATE utf8_unicode_ci,
  `id_texto` int(11) DEFAULT NULL,
  `id_nivel` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_texto` (`id_texto`) USING BTREE,
  KEY `id_nivel` (`id_nivel`) USING BTREE,
  CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`id_texto`) REFERENCES `textos` (`id`),
  CONSTRAINT `pregunta_ibfk_2` FOREIGN KEY (`id_nivel`) REFERENCES `nivel_lectura` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pregunta
-- ----------------------------
INSERT INTO `pregunta` VALUES ('1', '-¿Cuántos tipos de trastorno de sueño existen?', '1', '1');
INSERT INTO `pregunta` VALUES ('2', 'Las causas de los trastornos de sueño pueden ser:', '1', '1');
INSERT INTO `pregunta` VALUES ('3', 'El método de respiración \"4-7-8\" es:', '1', '1');
INSERT INTO `pregunta` VALUES ('4', '¿En qué consiste el método de respiración \"4-7-8\"?', '1', '1');
INSERT INTO `pregunta` VALUES ('5', 'Según el texto: ¿qué es la adrenalina?:', '1', '1');
INSERT INTO `pregunta` VALUES ('6', 'Según el texto, las hormonas son:', '1', '2');
INSERT INTO `pregunta` VALUES ('7', '¿Qué es la meditación?', '1', '2');
INSERT INTO `pregunta` VALUES ('8', '¿Qué es un método?', '1', '2');
INSERT INTO `pregunta` VALUES ('9', 'En el texto, se puede hacer relación entre:', '1', '2');
INSERT INTO `pregunta` VALUES ('10', 'El estrés puede causar problemas como:', '1', '2');
INSERT INTO `pregunta` VALUES ('11', '¿Cuáles pueden ser las causas por las que una persona puede tener desórdenes de sueño?', '1', '3');
INSERT INTO `pregunta` VALUES ('12', '¿Cuáles son los efectos de la meditación?', '1', '3');
INSERT INTO `pregunta` VALUES ('13', '¿Cuál es una de las funciones de las glándulas suprarrenales?', '1', '3');
INSERT INTO `pregunta` VALUES ('14', 'El ciclo respiratorio está directamente relacionado con:', '1', '3');
INSERT INTO `pregunta` VALUES ('15', 'Según el texto, una de las posibles estrategias para  tener un buen nivel de sueño es:', '1', '4');
INSERT INTO `pregunta` VALUES ('16', 'Según el Dr. Andrew Weil, de la Universidad de Harvard, el estrés puede:', '1', '4');
INSERT INTO `pregunta` VALUES ('17', '¿Cuál persona tiene mayor probabilidad de tener problemas de sueño?', '1', '4');
INSERT INTO `pregunta` VALUES ('18', 'En el método de respiración \"4-7-8\", la secuencia numérica podría ser reemplazada por:', '1', '4');
INSERT INTO `pregunta` VALUES ('19', '¿Desde qué altura se lanzó el paracaidista?', '2', '1');
INSERT INTO `pregunta` VALUES ('20', '¿Cómo se llamaba el paracaidista?', '2', '1');
INSERT INTO `pregunta` VALUES ('21', '¿Cuáles eran las dimensiones de la red?', '2', '1');
INSERT INTO `pregunta` VALUES ('22', '¿Cómo hizo el deportista para continuar en el rumbo correcto mientras caía?', '2', '1');
INSERT INTO `pregunta` VALUES ('23', 'Wikipedia dice que “La gravedad es una de las cuatro interacciones fundamentales observadas en la naturaleza.” A partir de dicha definición, podemos decir que el paracaidista:', '2', '2');
INSERT INTO `pregunta` VALUES ('24', 'Si decimos de la fuerza de gravedad que: “A mayor distancia menor fuerza de atracción, y a menor distancia mayor la fuerza de atracción.” Es correcto afirmar que:', '2', '2');
INSERT INTO `pregunta` VALUES ('25', 'Para comprender el funcionamiento de un paracaídas debemos tener en cuenta tanto a la gravedad como a la resistencia del aire; pues un objeto cae porque la gravedad lo \"empuja\" hacia abajo, y la resis', '2', '2');
INSERT INTO `pregunta` VALUES ('26', 'Los paracaidistas utilizan elementos de alta precisión para medir la altura a la que se encuentran, esto con el fin de:', '2', '2');
INSERT INTO `pregunta` VALUES ('27', '¿Qué motivó al personaje del reportaje para hacer el salto?', '2', '3');
INSERT INTO `pregunta` VALUES ('28', 'Para poder realizar una hazaña semejante es necesario:', '2', '3');
INSERT INTO `pregunta` VALUES ('29', 'Si a una persona le gusta el paracaidismo y está en proceso de aprendizaje, sería recomendable que:', '2', '3');
INSERT INTO `pregunta` VALUES ('30', 'Para algunas personas puede ser tomada como una actitud desafiante el saltar sin paracaídas porque para ellas:', '2', '3');
INSERT INTO `pregunta` VALUES ('31', 'A partir de la hazaña podemos concluir que una de las mejores maneras de figurar en la historia de la humanidad es:', '2', '4');
INSERT INTO `pregunta` VALUES ('32', 'Teniendo en cuenta la planeación de la maniobra es correcto afirmar que:', '2', '4');
INSERT INTO `pregunta` VALUES ('33', 'Si hubiera fallado el sistema de alta tecnología que le indicaba al paracaidista su ubicación:', '2', '4');
INSERT INTO `pregunta` VALUES ('34', 'El material con el que se construyó la red, probablemente:', '2', '4');
INSERT INTO `pregunta` VALUES ('35', '¿Cuáles son las tres cuestiones fundamentales al momento de decidirse a hacer ejercicio?', '3', '1');
INSERT INTO `pregunta` VALUES ('36', '¿Cuánto tiempo se debe entrenar según el Colegio Estadounidense de Medicina Deportiva? ', '3', '1');
INSERT INTO `pregunta` VALUES ('37', '¿En qué consiste La cifra mágica de nueve semanas y media?', '3', '1');
INSERT INTO `pregunta` VALUES ('38', 'En la afirmación: \"Si queremos generar cambios significativos en nuestro cuerpo para mejorar la salud y la estética, hemos de cambiar de perspectiva.\" podemos cambiar la palabra perspectiva por', '3', '1');
INSERT INTO `pregunta` VALUES ('39', 'EL célebre fisiculturista Arnold Schwarzenegger dijo alguna vez: “La fuerza no viene de ganar. Tus luchas desarrollan tus fortalezas. Cuando sigues a pesar de las dificultades y decides no rendirte, e', '3', '2');
INSERT INTO `pregunta` VALUES ('40', 'Platón sostenían una filosofía de “mente sana en cuerpo sano” porque, al igual que en el texto', '3', '2');
INSERT INTO `pregunta` VALUES ('41', 'Según La universidad Politécnica de Madrid, los factores de entrenamiento que afectan el rendimiento deportivo tiene características físicas, características fisiológicas, niveles de destreza, características psicológicas. El texto nos plantea un entrenamiento integral en cuanto:', '3', '2');
INSERT INTO `pregunta` VALUES ('42', 'Según MATVEIEV (1983) el entrenamiento deportivo: “Es la forma fundamental de preparación del deportista, basada en ejercicios sistemáticos  y la cual representa en esencia, un proceso organizado pedagógicamente con el objeto de dirigir la evolución del deportista.” Es por esto que el circuito propuesto en el texto es:', '3', '2');
INSERT INTO `pregunta` VALUES ('43', 'A partir del texto: ¿Cómo se imagina un entrenamiento ideal?', '3', '3');
INSERT INTO `pregunta` VALUES ('44', '“El entrenamiento perfecto según la ciencia” puede ser un artículo útil para personas que:', '3', '3');
INSERT INTO `pregunta` VALUES ('45', 'El texto afirma que: “La mayoría nos movemos por picos de intensidad” al aclarar que: “Pocas veces se llega a las diez semanas” refiriéndose al entrenamiento. Esto se debe a que las personas:', '3', '3');
INSERT INTO `pregunta` VALUES ('46', 'Cuando el texto nos dice: “Muchos entrenadores proponen que dividamos nuestros objetivos en bloques de 66 días. Eso no solo nos ayudará a ver resultados, sino también a motivarnos con un objetivo que tiene un principio y un final”, es porque el ser humano:', '3', '3');
INSERT INTO `pregunta` VALUES ('47', 'Según el texto, ¿cuánto tiempo puede tomarle a una persona dejar de fumar?', '3', '4');
INSERT INTO `pregunta` VALUES ('48', 'Cuando el texto habla del organismo nos aclara que: “si está ocho horas sentado u otras tantas de pie y de pronto se le impone una actividad física intensa y sin ordenar, su tendencia será a protegerse. Ni quemará más grasa, ni generará más músculo; al revés, intentará reservarse y gastar lo menos posible, por si el esfuerzo se prolonga en el tiempo. Su reacción resulta biológicamente lógica.” A partir de lo anterior podemos afirmar que:', '3', '4');
INSERT INTO `pregunta` VALUES ('49', 'Si iniciamos hoy mismo nuestro entrenamiento con el circuito sugerido al final del texto, podemos inferir que:', '3', '4');
INSERT INTO `pregunta` VALUES ('50', 'El texto nos aclara que al cuerpo: “si está ocho horas sentado u otras tantas de pie y de pronto se le impone una actividad física intensa y sin ordenar, su tendencia será a protegerse.” Así que sería correcto inferir que:', '3', '4');
INSERT INTO `pregunta` VALUES ('51', '¿Desde hace cuánto se estima que nuestros ancestros utilizaban perros para perseguir y abatir mamuts?:', '4', '1');
INSERT INTO `pregunta` VALUES ('52', '¿Por qué los perros les resultaban útiles a los humanos primitivos?:', '4', '1');
INSERT INTO `pregunta` VALUES ('53', 'Charles Darwin postuló que todas las especies de seres vivos han evolucionado con el tiempo a partir de un antepasado común mediante un proceso natural. Este  proceso se evidencia en el texto porque:', '4', '2');
INSERT INTO `pregunta` VALUES ('54', 'Una concepción creacionista en la que no hay espacio para la evolución, estaría en contra del texto porque:', '4', '2');
INSERT INTO `pregunta` VALUES ('55', 'A partir de la lectura podemos decir que los canes eran honrados cuando fallecían:', '4', '3');
INSERT INTO `pregunta` VALUES ('56', 'A partir del texto: ¿por qué cree que era posible realizar más capturas y aumentar la ingesta de proteínas, para que la población aumentara?', '4', '3');
INSERT INTO `pregunta` VALUES ('57', 'Si tenemos en cuenta que “una ceremonia que fue realizada tras la muerte del cánido, en un yacimiento de Predmostí, en la actual República Checa, parece sustentar la hipótesis de la investigadora.” Podemos inferir que la hipótesis es:', '4', '4');
INSERT INTO `pregunta` VALUES ('58', 'El enunciado: “Hace 27.000 años, nuestros ancestros probablemente ya utilizaban perros para perseguir y abatir mamuts.” Nos permite inferir que:', '4', '4');
INSERT INTO `pregunta` VALUES ('59', 'Según el artículo: ¿por qué Francia se robó la atención mundial?', '5', '1');
INSERT INTO `pregunta` VALUES ('60', 'Según el texto: Francia podría  lograr la independencia energética:', '5', '1');
INSERT INTO `pregunta` VALUES ('61', 'Nikola Tesla dijo alguna vez “«A lo largo de espacio hay energía, y es una mera cuestión de tiempo hasta que los hombres tengan éxito en sus mecanismos vinculados al aprovechamiento de esa energía».” Lo expresado por Tesla está de acuerdo con el texto porque:', '5', '2');
INSERT INTO `pregunta` VALUES ('62', 'Thomas Edison dijo: “Vamos a hacer la electricidad tan barata que sólo los ricos quemarán velas.” La única posición que NO está de acuerdo con lo manifestado por Edison y el texto, es:', '5', '2');
INSERT INTO `pregunta` VALUES ('63', '¿Cuáles son los beneficios más importantes de este tipo de iniciativas promovidas por el gobierno Francés?', '5', '3');
INSERT INTO `pregunta` VALUES ('64', 'El texto nos aclara que algunos ecologistas lanzaron fuertes críticas porque “consideran que el precio pagado, cinco millones de euros, no es razonable para la cantidad de energía producida”.  La afirmación de los ecologistas no es correcta si tenemos en cuenta que:', '5', '3');
INSERT INTO `pregunta` VALUES ('65', 'A partir de la afirmación: “Los responsables del proyecto argumentan que el precio se abaratará en la medida que se expanda la demanda. De hecho, los precios de las placas solares fotovoltaicas han descendido entre 65 % y 75 % entre 2009 y 2013, y el precio de la energía lo ha hecho 80 % desde 2008.” Podemos inferir que:', '5', '4');
INSERT INTO `pregunta` VALUES ('66', 'Si tenemos en cuenta que: “Los ingenieros calculan que el tránsito de los carros sólo ocupa el 20 % del tiempo, permitiendo que las celdas capten luz el resto del día.” Podemos decir que:', '5', '4');
INSERT INTO `pregunta` VALUES ('67', '¿Qué es el neuromarketing?', '6', '1');
INSERT INTO `pregunta` VALUES ('68', 'Los tres tipos de neuromarketing que menciona el texto son:', '6', '1');
INSERT INTO `pregunta` VALUES ('69', 'A propósito de la técnica, Storytelling Maya Angelou manifestó: “La gente olvidará lo que dijiste, la gente olvidará lo que hiciste, pero la gente nunca olvidará cómo la hiciste sentir”. Lo manifestado por Angelou coincide con el texto porque:', '6', '2');
INSERT INTO `pregunta` VALUES ('70', 'EL storytelling es una estrategia de mercadeo en la que se narra una historia a través de diferentes recursos visuales o audiovisuales, que busca la identificación del consumidor a través de su sensibilidad para que sienta cierta filiación hacia una marca determinada, y en consecuencia, consuma un producto determinado. Esta definición coincide con el punto de vista del publicista planteado en el texto porque:', '6', '2');
INSERT INTO `pregunta` VALUES ('71', 'Si el neuromarketing auditivo se basa en aquello que escuchamos, según el texto, es correcto afirmar que:', '6', '3');
INSERT INTO `pregunta` VALUES ('72', 'Según el texto, el neuromarketing visual se centra en lo que percibimos por nuestros ojos. Así pues, la estrategia más acertada para la venta de un producto es:', '6', '3');
INSERT INTO `pregunta` VALUES ('73', 'Si tenemos en cuenta que “cada vez más, los consumidores  no solo consumen porque la razón se lo impone, sino porque son movidos por las emociones.” Podemos inferir que el ser humano:', '6', '4');
INSERT INTO `pregunta` VALUES ('74', 'El neuromarketing kinestésico se refiere a lo que percibimos por el tacto, el gusto y el olfato. Así pues, podemos inferir que si los vendedores de un almacén de ropa juvenil utilizan siempre el mismo perfume y lo rocían por todo el local, es porque:', '6', '4');
INSERT INTO `pregunta` VALUES ('75', '¿Qué generó el temblor de 5,3 grados en la escala de Richter?', '7', '1');
INSERT INTO `pregunta` VALUES ('76', 'El misil del artículo es diferente a los anteriormente lanzados por Corea del Norte, porque este misil ha sido:', '7', '1');
INSERT INTO `pregunta` VALUES ('77', 'El presidente Obama dijo que la prueba nuclear de Corea del Norte era \"una grave amenaza para la seguridad regional y para la paz y la estabilidad internacional\". Esta afirmación coincide con lo manifestado por las Naciones Unidas porque:', '7', '2');
INSERT INTO `pregunta` VALUES ('78', 'Las bombas nucleares pueden crear gran destrucción, sin embargo, muchas personas consideran que la energía nuclear es parte de la solución al cambio climático pues  no generan dióxido de carbono (CO2) y evitan un 8 % de las emisiones anuales mundiales de gases contaminantes. Si tenemos en cuenta esto, la energía nuclear, a diferencia de las bombas nucleares:', '7', '2');
INSERT INTO `pregunta` VALUES ('79', 'El Instituto de Armas Nucleares de Corea del Norte manifestó que: “el objetivo de este nuevo lanzamiento fue inocente”. Sin embargo los habitantes de Corea del Sur protestaron por el peligro en que los pone. La posición del instituto de armas nucleares de corea del Norte es altamente peligrosa porque:', '7', '3');
INSERT INTO `pregunta` VALUES ('80', 'Si tenemos en cuenta que: “Estados Unidos aseguró que con sus países aliados tienen la tecnología necesaria para protegerse ante cualquier amenaza con misiles.” Nosotros deberíamos estar:', '7', '3');
INSERT INTO `pregunta` VALUES ('81', 'Si el presidente norcoreano, Kim Jong Un continúa desafiando al mundo pese a las advertencias de naciones unidas, podemos inferir que:', '7', '4');
INSERT INTO `pregunta` VALUES ('82', 'Si un solo misil puede lograr un temblor de 5,3 grados en la escala de Richter. Podemos inferir que en una guerra nuclear a nivel mundial:', '7', '4');
INSERT INTO `pregunta` VALUES ('83', '¿Por qué la dueña de la cafetería decidió dar una oportunidad de trabajo al “vagabundo”?', '8', '1');
INSERT INTO `pregunta` VALUES ('84', '¿Por qué el vagabundo no encontraba empleo?', '8', '1');
INSERT INTO `pregunta` VALUES ('85', 'Cuando: “Marcus comenzó a recibir paga y con ella misma se compraba sus alimentos”, la mayor ganancia para él, como ser humano fue:', '8', '1');
INSERT INTO `pregunta` VALUES ('86', 'Podría decirse que la sociedad actual no contempla ninguna utilidad para las personas de la calle al punto de denominarlas “Vagabundos”; esta posición de la sociedad no concuerda con la historia presentada en el texto porque:', '8', '2');
INSERT INTO `pregunta` VALUES ('87', 'Si analizamos la etimología de la palabra INDIGENTE, podemos decir que proviene del latín indigens-indigentis, que para los antiguos romanos significaba “carencia o falta de algo”. Es decir, que un indigente es aquel que “no tiene o no dispone de nada”.  Según el texto, el término indigente no se puede aplicar a personas como Marcus porque:', '8', '2');
INSERT INTO `pregunta` VALUES ('88', 'En: www.eltiempo.com, se publicó una noticia el 21 de septiembre de 2016 en la que se manifestaba que: “Un grupo de exhabitantes de la calle de Bogotá recibieron un reconocimiento de los comerciantes de Los Mártires por convertirse en cuidadores del sector.” Esta noticia, al igual que la lectura, coinciden en que:', '8', '2');
INSERT INTO `pregunta` VALUES ('89', 'Una de las principales incertidumbres de contratar a un “vagabundo” como empleado es:', '8', '3');
INSERT INTO `pregunta` VALUES ('90', 'La actitud de Abi puede ser considerada inadecuada o peligrosa por personas que:', '8', '3');
INSERT INTO `pregunta` VALUES ('91', 'La lectura anterior es un perfecto ejemplo de:', '8', '3');
INSERT INTO `pregunta` VALUES ('92', 'Según el texto “Cuando no se tiene experiencia, se tienen antecedentes penales o se pasa de los 30 años, el conseguir un empleo es poco probable porque”:', '8', '4');
INSERT INTO `pregunta` VALUES ('93', ' A partir del texto, un “vagabundo” podría encontrar trabajo si:', '8', '4');
INSERT INTO `pregunta` VALUES ('94', 'Cuando Marcus empezó a ganar dinero, inmediatamente empezó a pagar sus propios alimentos, posiblemente porque:', '8', '4');
INSERT INTO `pregunta` VALUES ('95', 'En el primer párrafo, el término “memorando” hace referencia a:', '9', '1');
INSERT INTO `pregunta` VALUES ('96', 'Según el texto: ¿Qué espera Luis Gilberto Murillo para 2030?:', '9', '1');
INSERT INTO `pregunta` VALUES ('97', 'Sobre qué hace especial énfasis el memorando?', '9', '1');
INSERT INTO `pregunta` VALUES ('98', 'El Espectador, un periódico de alto prestigio en Colombia, publicó el día 9 de diciembre del 2016, un artículo en el que se afirma que: “Las grandes compañías de internet alimentarán enteramente sus operaciones con energía renovable en un futuro.” Esto evidencia una preocupación internacional a la que no es ajena ni Colombia ni Holanda porque:', '9', '2');
INSERT INTO `pregunta` VALUES ('99', 'Leonardo Dicaprio, el célebre actor de Hollywood, dijo en su discurso sobre el cambio climático pronunciado en la ONU en septiembre de 2014: “resolver esta crisis no es un tema de política, sino de supervivencia”. Así pues, los gobiernos de Colombia y Holanda, concuerdan con el actor porque:', '9', '2');
INSERT INTO `pregunta` VALUES ('100', 'Existen muchos políticos en el mundo conocidos como “negacionistas del cambio climático”, que se atreven a manifestar públicamente que el cambio climático no es más que un “invento” o una estrategia de “desprestigio de la industria”, entre otros argumentos que niegan la afectación del clima a nivel mundial. Así pues, la única afirmación de corte negacionista y que por lo tanto se opone a lo manifestado en el texto es:', '9', '2');
INSERT INTO `pregunta` VALUES ('101', 'La emisión de gases invernaderos es uno de los principales retos ecológicos para la sociedad del siglo XXI porque:', '9', '3');
INSERT INTO `pregunta` VALUES ('102', 'En la lectura, el representante de Holanda afirma que: “en el contexto del proceso de paz, tenemos que traer energía limpia a las regiones más impactadas por la violencia y por el conflicto. Es una oportunidad de intercambiar conocimiento, experiencia y tecnología”. Dicha afirmación es oportuna en cuanto:', '9', '3');
INSERT INTO `pregunta` VALUES ('103', '¿Por qué el memorando de entendimiento se centrará principalmente en regiones como la Orinoquía, el Pacífico y el Caribe?', '9', '3');
INSERT INTO `pregunta` VALUES ('104', ' Según el Minambiente, la firma del memorando de entendimiento hará especial énfasis en el desarrollo de energías eólica, solar y de mares. Así pues, podemos afirmar que:', '9', '4');
INSERT INTO `pregunta` VALUES ('105', 'A partir de lo manifestado por Luis Gilberto Murillo: “Colombia es uno de los países pioneros en solicitar y recibir asistencia técnica en materia ambiental. Por eso, este memorando de entendimiento es clave por la coyuntura que vivimos en el país, donde encontramos una oportunidad en la generación de energías no convencionales”. Podemos inferir que la coyuntura a la que hace referencia es:', '9', '4');
INSERT INTO `pregunta` VALUES ('106', 'Con la implementación del acuerdo se prevén “el intercambio de visitas de expertos, empresas y delegaciones para prestar asesoría, adiestramiento técnico en las áreas de cooperación e implementar los proyectos piloto”. Así pues, podemos esperar que:', '9', '4');
INSERT INTO `pregunta` VALUES ('107', 'La caricatura de Mana Neyestani nos presenta:', '11', '1');
INSERT INTO `pregunta` VALUES ('108', 'A partir de la caricatura se puede decir que el personaje que habla de  la obra de arte:', '11', '1');
INSERT INTO `pregunta` VALUES ('109', 'Un “globo” o “cuadro de diálogo” es un símbolo propio del lenguaje de la caricatura que se utiliza para representar el diálogo de un personaje determinado; se caracteriza principalmente porque termina en una “cola” o “rabo”, que indica de cuál personaje procede casa diálogo. En la caricatura, el cuadro de diálogo:', '11', '2');
INSERT INTO `pregunta` VALUES ('110', 'Mana Neyestani nació en Tehrán, la capital de Irán, en 1973, es un caricaturista e ilustrador cuyo trabajo es reconocido internacionalmente por realizar críticas mordaces tanto a nivel intelectual, económico como social, especialmente al respecto de su propia nación. Por ello fue puesto preso el 12 de mayo de 2006 a causa de una de sus ilustraciones, sin embargo tres meses después logró una licencia de libertad que le permitió exiliarse en Francia junto con su esposa. Así pues, a partir de la caricatura podemos afirmar que:', '11', '2');
INSERT INTO `pregunta` VALUES ('111', 'A partir de la caricatura podemos decir que es correcto afirmar que el personaje que habla busca:', '11', '3');
INSERT INTO `pregunta` VALUES ('112', 'Analizando lo manifestado en el cuadro de diálogo, podemos decir que lo manifestado por el personaje:', '11', '3');
INSERT INTO `pregunta` VALUES ('113', 'Una afirmación que podría ser adecuada para sintetizar lo expuesto en la caricatura de Mana Neyestani sería:', '11', '4');
INSERT INTO `pregunta` VALUES ('114', 'Una interpretación más apropiada para la obra de arte sería:', '11', '4');
INSERT INTO `pregunta` VALUES ('115', '¿Qué pasaría si no hubiera luna?', '10', '1');
INSERT INTO `pregunta` VALUES ('116', 'Cuando el autor nos menciona el papel que desempeña la luna en la estabilidad de los movimientos de la Tierra es porque:', '10', '1');
INSERT INTO `pregunta` VALUES ('117', 'Muchos autores consideran que la relación entre la tierra y la luna es la de un planeta-satélite y no, como lo manifiesta el texto “un sistema planetario doble”.  Esto, porque en un sistema planetario doble el centro de gravedad de ambos planetas se encuentra afuera de los planetas mismos, mientras que en el caso de la luna y el planeta tierra, el centro de gravedad se encuentra adentro de la tierra. Así pues, la afirmación inicial del texto no es del todo acertada porque:', '10', '2');
INSERT INTO `pregunta` VALUES ('118', 'La película animada: “Mi villano favorito 1” plantea una situación hipotética\r\n En la que un “villano” se roba a la luna. La  película resulta verosímil, es decir, creíble, en todas las afirmaciones menos en:\r\n', '10', '2');
INSERT INTO `pregunta` VALUES ('119', 'Como sabemos, la luna brilla gracias a los rayos del sol, así pues, es correcto afirmar que:', '10', '3');
INSERT INTO `pregunta` VALUES ('120', '¿Cuál pudo haber sido el mayor aporte de la luna a nuestro planeta?', '10', '3');
INSERT INTO `pregunta` VALUES ('121', 'Si “desapareciera la luna” se desestabilizaría nuestra percepción de un día, pues no duraría 24 horas sino de 6 a 8 horas. Esto provocaría que el manejo del tiempo que propone nuestra sociedad:', '10', '4');
INSERT INTO `pregunta` VALUES ('122', 'Según el texto, sin la luna, la orientación del eje de la Tierra no se mantendría estable y experimentaría variaciones caóticas con el tiempo. Una de estas caóticas variaciones podría ser:', '10', '4');
INSERT INTO `pregunta` VALUES ('123', 'El orden en el que ocurren los acontecimientos en la historieta es:', '12', '1');
INSERT INTO `pregunta` VALUES ('124', 'Cuando Mafalda dice que está mirando a la humanidad es porque la está comparando con:', '12', '1');
INSERT INTO `pregunta` VALUES ('125', 'Mahatma Gandi, el célebre líder político y pacifista Hindú que luchó por la independencia de su nación ante Inglaterra, manifestó alguna vez que: “La humanidad no puede liberarse de la violencia más que por medio de la no violencia”.  Así pues,  teniendo en cuenta lo manifestado por  Gandi en relación con la historieta:', '12', '2');
INSERT INTO `pregunta` VALUES ('126', 'EL célebre escritor Gustave Flaubert, autor de obras maestras de la literatura universal como lo es “Madame Bovary”, entre otras, alguna vez manifestó: “La humanidad es como es. No se trata de cambiarla, sino de conocerla”. Teniendo en cuenta la afirmación anterior, podemos decir que Mafalda:', '12', '2');
INSERT INTO `pregunta` VALUES ('127', 'Si Mafalda compara a la humanidad con una mosca estrellándose en repetidas oportunidades contra una ventana es porque posiblemente:', '12', '3');
INSERT INTO `pregunta` VALUES ('128', 'La apreciación de Mafalda puede NO  ser correcta si se tiene en cuenta que:', '12', '3');
INSERT INTO `pregunta` VALUES ('129', 'Si la mamá de Mafalda se queda pensando en la respuesta de su hija, es porque:', '12', '4');
INSERT INTO `pregunta` VALUES ('130', 'A partir del primer cuadro de la historieta podemos inferir que la mamá de Mafalda hace su primera intervención porque:', '12', '4');

-- ----------------------------
-- Table structure for relacion_aulas
-- ----------------------------
DROP TABLE IF EXISTS `relacion_aulas`;
CREATE TABLE `relacion_aulas` (
  `id_aulas` int(11) NOT NULL,
  `identificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_aulas`,`identificacion`),
  KEY `identificacion` (`identificacion`) USING BTREE,
  CONSTRAINT `relacion_aulas_ibfk_1` FOREIGN KEY (`identificacion`) REFERENCES `proyecto`.`usuarios` (`identificacion`),
  CONSTRAINT `relacion_aulas_ibfk_2` FOREIGN KEY (`id_aulas`) REFERENCES `aula` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of relacion_aulas
-- ----------------------------
INSERT INTO `relacion_aulas` VALUES ('1', '111111');
INSERT INTO `relacion_aulas` VALUES ('1', '111112');
INSERT INTO `relacion_aulas` VALUES ('1', '111113');
INSERT INTO `relacion_aulas` VALUES ('1', '111114');
INSERT INTO `relacion_aulas` VALUES ('1', '123456');
INSERT INTO `relacion_aulas` VALUES ('1', '123456789');
INSERT INTO `relacion_aulas` VALUES ('1', '1098669883');

-- ----------------------------
-- Table structure for resultados
-- ----------------------------
DROP TABLE IF EXISTS `resultados`;
CREATE TABLE `resultados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_opcion` int(11) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`id_opcion`,`identificacion`),
  KEY `id_opcion` (`id_opcion`) USING BTREE,
  KEY `identificacion` (`identificacion`) USING BTREE,
  CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`identificacion`) REFERENCES `proyecto`.`usuarios` (`identificacion`),
  CONSTRAINT `resultados_ibfk_2` FOREIGN KEY (`id_opcion`) REFERENCES `opcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of resultados
-- ----------------------------
INSERT INTO `resultados` VALUES ('1', '3', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('2', '8', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('3', '10', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('4', '13', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('5', '19', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('6', '23', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('7', '25', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('8', '32', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('9', '33', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('10', '38', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('11', '43', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('12', '46', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('13', '49', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('14', '54', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('15', '60', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('16', '63', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('17', '66', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('18', '69', '123456', '2016-12-27 18:55:28');
INSERT INTO `resultados` VALUES ('19', '2', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('20', '6', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('21', '9', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('22', '14', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('23', '20', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('24', '22', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('25', '28', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('26', '31', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('27', '34', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('28', '38', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('29', '42', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('30', '46', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('31', '50', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('32', '54', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('33', '58', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('34', '62', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('35', '65', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('36', '69', '111111', '2016-12-27 21:05:24');
INSERT INTO `resultados` VALUES ('37', '2', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('38', '6', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('39', '10', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('40', '15', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('41', '17', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('42', '22', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('43', '28', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('44', '32', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('45', '33', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('46', '37', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('47', '42', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('48', '47', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('49', '50', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('50', '54', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('51', '58', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('52', '62', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('53', '66', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('54', '69', '111112', '2016-12-27 21:55:38');
INSERT INTO `resultados` VALUES ('55', '3', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('56', '6', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('57', '9', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('58', '13', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('59', '18', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('60', '23', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('61', '27', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('62', '29', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('63', '33', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('64', '37', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('65', '43', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('66', '46', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('67', '50', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('68', '53', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('69', '58', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('70', '62', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('71', '67', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('72', '68', '111113', '2016-12-27 22:58:04');
INSERT INTO `resultados` VALUES ('73', '1', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('74', '5', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('75', '10', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('76', '13', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('77', '17', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('78', '23', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('79', '25', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('80', '31', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('81', '34', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('82', '39', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('83', '44', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('84', '45', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('85', '49', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('86', '53', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('87', '58', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('88', '62', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('89', '66', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('90', '71', '111114', '2016-12-27 22:58:37');
INSERT INTO `resultados` VALUES ('91', '73', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('92', '76', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('93', '82', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('94', '87', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('95', '88', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('96', '94', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('97', '99', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('98', '101', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('99', '105', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('100', '108', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('101', '115', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('102', '116', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('103', '120', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('104', '127', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('105', '129', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('106', '132', '123456', '2017-01-14 02:24:00');
INSERT INTO `resultados` VALUES ('107', '138', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('108', '143', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('109', '145', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('110', '148', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('111', '153', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('112', '156', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('113', '162', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('114', '164', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('115', '170', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('116', '175', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('117', '176', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('118', '183', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('119', '186', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('120', '189', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('121', '193', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('122', '196', '123456', '2017-01-14 16:24:40');
INSERT INTO `resultados` VALUES ('123', '200', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('124', '206', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('125', '211', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('126', '213', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('127', '216', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('128', '220', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('129', '227', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('130', '230', '123456', '2017-01-14 18:05:04');
INSERT INTO `resultados` VALUES ('131', '234', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('132', '236', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('133', '241', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('134', '246', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('135', '251', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('136', '255', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('137', '258', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('138', '260', '123456', '2017-01-14 18:13:51');
INSERT INTO `resultados` VALUES ('139', '267', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('140', '270', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('141', '272', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('142', '277', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('143', '283', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('144', '285', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('145', '288', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('146', '293', '123456', '2017-01-14 23:38:59');
INSERT INTO `resultados` VALUES ('147', '73', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('148', '77', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('149', '82', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('150', '85', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('151', '90', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('152', '93', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('153', '99', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('154', '102', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('155', '105', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('156', '108', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('157', '113', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('158', '117', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('159', '121', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('160', '125', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('161', '128', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('162', '133', '111111', '2017-01-14 23:54:15');
INSERT INTO `resultados` VALUES ('163', '297', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('164', '300', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('165', '305', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('166', '310', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('167', '313', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('168', '318', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('169', '323', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('170', '325', '123456', '2017-01-15 14:59:07');
INSERT INTO `resultados` VALUES ('171', '330', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('172', '335', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('173', '337', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('174', '342', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('175', '344', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('176', '349', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('177', '352', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('178', '359', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('179', '362', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('180', '364', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('181', '370', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('182', '375', '123456', '2017-01-15 15:08:00');
INSERT INTO `resultados` VALUES ('183', '377', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('184', '384', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('185', '387', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('186', '390', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('187', '394', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('188', '400', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('189', '402', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('190', '407', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('191', '410', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('192', '416', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('193', '417', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('194', '422', '123456', '2017-01-18 17:04:10');
INSERT INTO `resultados` VALUES ('195', '73', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('196', '76', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('197', '81', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('198', '87', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('199', '89', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('200', '92', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('201', '98', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('202', '103', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('203', '106', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('204', '108', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('205', '113', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('206', '118', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('207', '123', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('208', '125', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('209', '376', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('210', '132', '111112', '2017-01-23 23:39:37');
INSERT INTO `resultados` VALUES ('211', '378', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('212', '382', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('213', '385', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('214', '390', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('215', '394', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('216', '397', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('217', '403', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('218', '405', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('219', '409', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('220', '416', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('221', '418', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('222', '423', '111112', '2017-01-23 23:42:16');
INSERT INTO `resultados` VALUES ('223', '138', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('224', '141', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('225', '146', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('226', '150', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('227', '155', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('228', '156', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('229', '162', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('230', '167', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('231', '169', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('232', '174', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('233', '177', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('234', '180', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('235', '185', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('236', '189', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('237', '195', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('238', '196', '111112', '2017-01-24 02:25:16');
INSERT INTO `resultados` VALUES ('239', '200', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('240', '204', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('241', '209', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('242', '213', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('243', '219', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('244', '220', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('245', '225', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('246', '230', '111112', '2017-01-24 02:35:27');
INSERT INTO `resultados` VALUES ('247', '233', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('248', '237', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('249', '241', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('250', '245', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('251', '249', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('252', '253', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('253', '258', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('254', '262', '111112', '2017-01-29 16:47:45');
INSERT INTO `resultados` VALUES ('255', '457', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('256', '464', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('257', '467', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('258', '470', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('259', '475', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('260', '478', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('261', '481', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('262', '487', '123456', '2017-02-01 23:13:47');
INSERT INTO `resultados` VALUES ('263', '427', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('264', '430', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('265', '436', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('266', '439', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('267', '441', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('268', '448', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('269', '449', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('270', '454', '123456', '2017-02-04 19:16:19');
INSERT INTO `resultados` VALUES ('271', '491', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('272', '494', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('273', '497', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('274', '503', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('275', '508', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('276', '509', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('277', '514', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('278', '518', '123456', '2017-02-04 19:42:09');
INSERT INTO `resultados` VALUES ('279', '458', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('280', '462', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('281', '466', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('282', '469', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('283', '473', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('284', '477', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('285', '482', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('286', '485', '111112', '2017-02-06 03:30:02');
INSERT INTO `resultados` VALUES ('287', '490', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('288', '493', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('289', '498', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('290', '502', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('291', '507', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('292', '510', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('293', '513', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('294', '518', '111112', '2017-02-06 03:32:50');
INSERT INTO `resultados` VALUES ('295', '264', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('296', '269', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('297', '273', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('298', '277', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('299', '281', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('300', '285', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('301', '289', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('302', '293', '111112', '2017-02-06 03:44:14');
INSERT INTO `resultados` VALUES ('303', '73', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('304', '76', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('305', '82', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('306', '85', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('307', '89', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('308', '93', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('309', '97', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('310', '102', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('311', '105', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('312', '108', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('313', '112', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('314', '117', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('315', '122', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('316', '125', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('317', '128', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('318', '132', '111113', '2017-02-06 03:53:31');
INSERT INTO `resultados` VALUES ('319', '378', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('320', '382', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('321', '386', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('322', '390', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('323', '394', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('324', '398', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('325', '401', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('326', '406', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('327', '409', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('328', '414', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('329', '418', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('330', '421', '111113', '2017-02-06 03:55:00');
INSERT INTO `resultados` VALUES ('331', '265', '111113', '2017-02-06 03:59:27');
INSERT INTO `resultados` VALUES ('332', '269', '111113', '2017-02-06 03:59:27');
INSERT INTO `resultados` VALUES ('333', '273', '111113', '2017-02-06 03:59:27');
INSERT INTO `resultados` VALUES ('334', '276', '111113', '2017-02-06 03:59:27');
INSERT INTO `resultados` VALUES ('335', '281', '111113', '2017-02-06 03:59:27');
INSERT INTO `resultados` VALUES ('336', '284', '111113', '2017-02-06 03:59:27');
INSERT INTO `resultados` VALUES ('337', '289', '111113', '2017-02-06 03:59:27');
INSERT INTO `resultados` VALUES ('338', '292', '111113', '2017-02-06 03:59:27');

-- ----------------------------
-- Table structure for textos
-- ----------------------------
DROP TABLE IF EXISTS `textos`;
CREATE TABLE `textos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `texto` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `id_categoria` smallint(6) DEFAULT NULL,
  `sinopsis` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`) USING BTREE,
  CONSTRAINT `textos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of textos
-- ----------------------------
INSERT INTO `textos` VALUES ('1', '¡ENTRENA TU CEREBRO PARA CONCILIAR EL SUEÑO EN MENOS DE UN MINUTO!', 0x3C7020636C6173733D22746578742D6A757374696679223E20C2BF5469656E65732070726F626C656D6173207061726120646F726D69723F204E6F206572657320656C20C3BA6E69636F2E204C6F732074726173746F726E6F732064656C20737565C3B16F2073652068616E20636F6E7665727469646F20656E20756E612065706964656D6961206D756E6469616C2E20486179206DC3A173206465203730206469666572656E7465732074726173746F726E6F732064656C20737565C3B16F2C206F20636F6E206C6120696E636170616369646164207061726120636F6E63696C69617220656C20737565C3B16F2E0A203C62723E3C62723E0A4C617320636175736173206465206573746F732074726173746F726E6F732070756564656E2076617269617220706F7220636F6E73756D697220616C696D656E746F7320706F636F2073616C756461626C657320706F72206C61206E6F636865206F20636865636172206E75657374726F2063656C756C617220616E74657320646520646F726D69722E2041666F7274756E6164616D656E74652C2068617920756E6120736F6C756369C3B36E2065666963617A206C6C616D61646120656C206DC3A9746F646F20646520726573706972616369C3B36E2022342D372D38222E0A203C62723E3C62723E0A200A457374652065666963617A206DC3A9746F646F20667565206465736172726F6C6C61646F20706F722044722E20416E64726577205765696C2C206465206C6120556E69766572736964616420646520486172766172642C20756E206DC3A96469636F2064652073616C75642066C3AD736963612079206D656E74616C2C207175652065737475646961206C61206D65646974616369C3B36E2079207375732065666563746F73207061726120616C697669617220656C2065737472C3A9732E0A3C62723E3C62723E0AC2BF43C3B36D6F2066756E63696F6E613F0A3C62723E3C62723E0A4C6F2071756520646562657320646520686163657220736567C3BA6E205765696C20657320696E68616C617220706F72206C61206E6172697A20647572616E74652063756174726F20736567756E646F732C2079206C7565676F20636F6E74656E6572206C6120726573706972616369C3B36E20706F7220736965746520736567756E646F732E2059207061726120656C206772616E2066696E616C2C20657868616C6120706F72206C6120626F636120647572616E7465206F63686F20736567756E646F732E0A203C62723E3C62723E0A5475206365726562726F2061686F726120657374C3A120696E756E6461646F2064652070726F647563746F73207175C3AD6D69636F732063616C6D616E7465732C207920747520636F72617AC3B36E2066756E63696F6E61206120756E207269746D6F206DC3A173206C656E746F2E20526570C3AD74656C6F20647572616E74652034206369636C6F7320646520726573706972616369C3B36E2E0A203C62723E3C62723E0A457374612074C3A9636E696361206573206D7579206566656374697661207061726120646976657273617320736974756163696F6E65733A20636F6D6F20706F7220656A656D706C6F20656C2065737472C3A9732C20656E20656C20717565206C617320676CC3A16E64756C61732073757072617272656E616C6573206C69626572616E20616472656E616C696E612E204573746120686F726D6F6E612061756D656E7461206C61206672656375656E6369612063617264C3AD6163612C2079207365206163616261206C6F73206E657276696F73207920656C206D616C2068756D6F722E0A203C62723E3C62723E0A496E68616C6172207920657868616C617220656E20696E74657276616C6F73207072656369736F7320636F6E74726172726573746120656C2065666563746F206465206C6120616472656E616C696E612079206C61206672656375656E6369612063617264C3AD61636120636F6D69656E7A612061206469736D696E756972206C612076656C6F63696461642C207961207175652074652076657A206F626C696761646F20612068616365726C6F2E0A203C62723E3C62723E0A416C207072696E636970696F20706F6472C3AD61732073656E74697220756E61206C6967657261206D6F6C65737469612C207065726F20646573617061726563652072C3A1706964616D656E74652E0A45737465206DC3A9746F646F207469656E65206578616374616D656E746520656C206D69736D6F2065666563746F2071756520736920657374757669657261732064697366727574616E646F20646520756E612072656672657363616E74652062726973612064656C206D617220656E206C6120706C6179612E0A203C62723E3C62723E0AC2A1507275C3A962616C6F20792064696E6F73207369207265616C6D656E74652074652066756E63696F6EC3B3210A3C62723E3C62723E0A3C2F703E0A546F6D61646F2064653A203C6120687265663D22687474703A2F2F7777772E6D7579696E7465726573616E74652E636F6D2E6D782F73616C75642F31362F30392F312F646F726D69722D6D656E6F732D756E2D6D696E75746F2D7265737069726163696F6E2E68746D6C2F22207461726765743D225F626C616E6B223E4D7579696E7465726573616E74652E636F6D2E6D783C2F613E0A0A0D0A, '1', 'La importancia de dormir bien.', '2016-09-11 23:49:44', '2016-12-27 17:08:10');
INSERT INTO `textos` VALUES ('2', 'ESTE PARACAIDISTA BRINCÓ DE UN AVIÓN SIN PARACAÍDAS', 0x3C7020636C6173733D22746578742D6A757374696679223E20556E207061726163616964697374612065737461646F756E6964656E736520736520686120636F6E7665727469646F20656E206C61207072696D65726120706572736F6E6120656E20656C206D756E646F20656E206C6F6772617220756E2073616C746F20646573646520756E20617669C3B36E20E2809320372C363230206D6574726F7320E280932073696E20756E20706172616361C3AD6461732C207920736F62726576697669722E0A3C62723E203C62723E200A50617261206C6F67726172206C612068617A61C3B1612C204C756B652041696B696E73207574696C697AC3B320756E612072656420676967616E74652070617261206672656E6172207375206361C3AD64612C206465737075C3A97320646520756E61206361C3AD6461206C69627265206861636961206C6120746965727261206120323431206B6D2F682E0A203C62723E203C62723E200A4C61206D616E696F62726120746F6D6F203138206D6573657320646520706C616E65616369C3B36E2079206D7563686F732063C3A16C63756C6F732070617261206C6F677261726C612C20616C2070756E746F2071756520756E2065717569706F20646520696E76657374696761646F726573207475766F2071756520617365677572617273652071756520656C2064697365C3B16F206465206C612072656420667565726120706572666563746F207061726120646574656E65722061207469656D706F20612041696B696E7320616E7465732064652071756520676F6C706561726120656C207375656C6F2C207065726F20717565206E6F20646574757669657261206C61206361C3AD64612074616E20616272757074616D656E746520717565206C6F206C617374696D6172612E0A203C62723E203C62723E200A4C61207265642064652033302078203330206D6574726F7320E28093206375796F206D6174657269616C206E6F206861207369646F20726576656C61646F20E280932066756520736F706F727461646120706F7220756E206772C3BA6173206120756E6120616C74757261206465203631206D6574726F732C206170726F78696D6164616D656E746520636F6D6F20756E20656469666963696F206465203230207069736F732E2054616D6269C3A96E20686162C3AD6120756E6120736567756E64612072656420646520656D657267656E6369612C207061726120646574656E657220612041696B696E7320656E206361736F2064652071756520616C676F2073616C69657261206D616C2E0A203C62723E203C62723E200A4D69656E747261732069626120656E206361C3AD6461206C696272652C2041696B696E73206572612067756961646F20706F7220756E2073697374656D6120646520616C7461207465636E6F6C6F67C3AD6120717565206D6F737472616261206C7563657320726F6A617320656E20656C20736974696F206465206174657272697A616A652073692069626120667565726120646520637572736F2079206C75636573207665726465732073692069626120656E206C612064697265636369C3B36E20636F7272656374612E20436F6E74726F6C616E646F2073752064697265636369C3B36E20696E636C696E616E646F20656C2063756572706F20636F6E74726120656C207669656E746F2E0A203C62723E203C62723E200A4D69726120656C2076C3AD64656F206465206C6120696E637265C3AD626C65206163726F6261636961206120636F6E74696E75616369C3B36E2E20592061756E717565207369656D70726520657374616D6F732066656C6963657320646520717565206C617320706572736F6E617320636F6E66C3AD656E20656E206C61206369656E6369612C20726563756572646120717565204E554E434120646562657320696E74656E7461722065737465207469706F2064652068617A61C3B1617320656E20636173612E0A3C62723E203C62723E200A3C2F703E0A546F6D61646F2064653A200A3C6120687265663D22687474703A2F2F7777772E6D7579696E7465726573616E74652E636F6D2E6D782F7465636E6F6C6F6769612F31362F30382F382F61696B696E732D7061726163616964697374612D73616C746F2D73696E2D706172616361696461732D7265642E68746D6C2F22207461726765743D225F626C616E6B223E4D7579696E7465726573616E74652E636F6D2E6D783C2F613E0A0A, '2', 'Gran Hazaña de un paracaidista.', '2016-09-24 22:37:59', '2016-12-27 17:21:22');
INSERT INTO `textos` VALUES ('3', 'EL ENTRENAMIENTO MÁS COMPLETO SEGÚN LA CIENCIA', 0x3C7020636C6173733D22746578742D6A757374696679223E0A4375616E646F206E6F73206465636964696D6F73206120686163657220656A6572636963696F2C2073757267656E2074726573206375657374696F6E65732066756E64616D656E74616C65733A206375C3A16C20657320656C206DC3A17320616465637561646F2C206375C3A16E74617320736573696F6E65732073656D616E616C6573206E656365736974616D6F7320792C20736F62726520746F646F2C206375C3A16E646F20766572656D6F7320616C67C3BA6E2065666563746F2E204C61206D656A6F72206F706369C3B36E20736F6E206C6F7320636972637569746F7320656E206C6F732071756520736520616C7465726E616E2063756174726F206F2063696E636F2061637469766964616465732064652064697374696E746F207469706F20636F6E20706572696F646F732064652064657363616E736F20656E74726520736572696520792073657269652E204C6F7320656E7472656E61646F72657320646963656E207175652C2073696E206D6174617273652079206573636F6769656E646F206269656E206C61207461626C612064652061637469766964616465732C20656C2063756572706F206C6F206E6F746172C3A120656E2036362064C3AD61732E0A3C62723E3C62723E0A506C616E6966696361206C612073657369C3B36E3B2073616C697220657868617573746F206E6F20657320676172616E74C3AD61206465206275656E6F7320726573756C7461646F732E0A3C62723E3C62723E0AC2BF5175C3A9206573206D656A6F722C20656E7472656E6172206C6120667565727A61206F206C6120726573697374656E6369613F20457374616D6F7320616E7465206C6120657465726E612070726567756E74612061206C6120686F72612064652070726163746963617220656A6572636963696F2E204E6F7320737572676520706F7271756520646973706F6E656D6F7320646520706F636F207469656D706F20656E20656C2064C3AD6120612064C3AD6120792071756572656D6F732C206CC3B3676963616D656E74652C20736163617220656C206DC3A178696D6F2072656E64696D69656E746F2061206E756573747261206163746976696461642E205065726F20656C6567697220656E74726520616D62617320657320756E612076697369C3B36E2065717569766F636164612C20796120717565206E6F73206C6C65766120656E206C61206D61796F72C3AD61206465206C6F73206361736F7320616C206572726F722064652070656761726E6F7320756E2070616C697AC3B36E20616572C3B36269636F2C2070656E73616E646F2071756520636F6E20656C6C6F207175656D6172656D6F73206DC3A173206772617361732C206F206120727574696E617320636F6E206D7563686F207065736F20636F6E20656C206F626A657469766F2064652067616E6172206DC3A173206DC3BA7363756C6F2E0A3C62723E3C62723E0A4C61207265616C6964616420657320717565206C617320706572736F6E617320717565206C6F6772616E20656E7472656E617220646520666F726D6120636F6E74696E7561206C6F20686163656E2064652070726F6D6564696F20646F7320766563657320706F722073656D616E612079206E6F206DC3A1732064652063756172656E7461206D696E75746F7320656E2063616461206F63617369C3B36E2E20436F6E2065737461206D656469612C2073692071756572656D6F732067656E657261722063616D62696F73207369676E69666963617469766F7320656E206E75657374726F2063756572706F2070617261206D656A6F726172206C612073616C75642079206C6120657374C3A9746963612C2068656D6F732064652063616D626961722064652070657273706563746976612E20416C2063656E747261726E6F7320756E2064C3AD6120656E206C61206D617361206D757363756C61722079206F74726F20656E206C6F7320656A6572636963696F7320616572C3B36269636F732C20656C20657374C3AD6D756C6F20616C2071756520736520736F6D65746520616C2063756572706F20657320696E7369676E69666963616E74652C2061756E7175652061636162656D6F7320657874656E7561646F732E0A3C62723E3C62723E0A4C612072617AC3B36E207365206861796120656E2071756520656C206F7267616E69736D6F206E6F207361626520736920636F7272652064656C616E746520646520756E206C65C3B36E207061726120736F627265766976697220E280937920657374C3A12068616369656E646F20756E20736F6272656573667565727A6F20706F7220656C6C6FE28093206F20736920656E7472656E6120706F7220756E206F626A657469766F2073616C756461626C652E204173C3AD207175652C20736920657374C3A1206F63686F20686F7261732073656E7461646F2075206F747261732074616E7461732064652070696520792064652070726F6E746F207365206C6520696D706F6E6520756E61206163746976696461642066C3AD7369636120696E74656E736120792073696E206F7264656E61722C2073752074656E64656E63696120736572C3A120612070726F746567657273652E204E69207175656D6172C3A1206DC3A1732067726173612C206E692067656E65726172C3A1206DC3A173206DC3BA7363756C6F3B20616C20726576C3A9732C20696E74656E746172C3A12072657365727661727365207920676173746172206C6F206D656E6F7320706F7369626C652C20706F7220736920656C206573667565727A6F2073652070726F6C6F6E676120656E20656C207469656D706F2E20537520726561636369C3B36E20726573756C74612062696F6CC3B3676963616D656E7465206CC3B3676963612E0A3C62723E3C62723E0A456E746F6E6365732C20C2BF6375C3A16C206573206C612064696EC3A16D69636120696465616C3F204C6120726573707565737461206573206D75792073656E63696C6C613A20636F6D62696E6172206C617320646F73206D6F64616C69646164657320656E20756E61206D69736D612073657369C3B36E206F20656E206469666572656E746573206D6F6D656E746F73207065726F2064656E74726F2064656C206D69736D6F2064C3AD612E204C6F732070726F666573696F6E616C6573206C6F206C6C616D616E20656E7472656E616D69656E746F20636F6E63757272656E74652E204E6F206F627374616E74652C207472617320646172207265737075657374612061206C61207072696D6572612070726567756E74612C206E6F732073757267656E20616C206D656E6F7320646F73206375657374696F6E6573206DC3A1732E204C61207072696D6572613A20C2BF6375C3A16E746F207469656D706F206573206E656365736172696F20656D706C6561722070617261206E6F7461722063616D62696F73207369676E69666963617469766F7320656E20656C2063756572706F3F2059206C6120736567756E64613A20C2BF63C3B36D6F20636F6D62696E6172206C6F7320656A6572636963696F7320646520667565727A612079206C6F7320646520726573697374656E63696120656E20636164612073657369C3B36E3F0A3C62723E3C62723E0A4C61206369667261206DC3A1676963613A206E756576652073656D616E61732079206D656469612E0A3C62723E3C62723E0A456C20556E697665727369747920436F6C6C656765206465204C6F6E647265732066696A6120656E203636206C6F732064C3AD6173206E656365736172696F7320706172612067656E65726172206F2063616D6269617220756E2068C3A16269746F206F207061726120636F6E73656775697220616C63616E7A6172206C61206D65746120717565206E6F732070726F706F6E67616D6F732E20506F636173207665636573207365206C6C6567612061206C6173206469657A2073656D616E617320646520656E7472656E616D69656E746F2073656775696461732E204C61206D61796F72C3AD61206E6F73206D6F76656D6F7320706F72207069636F7320646520696E74656E73696461642E2048617920646F7320706572696F646F732071756520736F6E20636C617665733A20656C20636F6D69656E7A6F2064656C2061C3B16F2C206375616E646F206D756368612067656E7465207365206170756E7461206120756E2067696D6E6173696F206F20656D7069657A61206120636F727265723B207920686163696120656C206D6573206465206D61796F2C20636F696E63696469656E646F20636F6E20717565206C6F73207072696D65726F732064C3AD61732064652063616C6F72206E6F7320686163656E2076657220656C20766572616E6F2061206C61207675656C7461206465206C612065737175696E612E0A3C62723E3C62723E0A4D7563686F7320656E7472656E61646F7265732070726F706F6E656E20717565206469766964616D6F73206E75657374726F73206F626A657469766F7320656E20626C6F717565732064652036362064C3AD61732E2045736F206E6F20736F6C6F206E6F7320617975646172C3A120612076657220726573756C7461646F732C2073696E6F2074616D6269C3A96E2061206D6F74697661726E6F7320636F6E20756E206F626A657469766F20717565207469656E6520756E207072696E636970696F207920756E2066696E616C2E20556E612076657A207175652068617320746F6D61646F206C6120646563697369C3B36E2C207469656E65732071756520706C616E69666963617220656C20656A6572636963696F20636F6E207265616C69736D6F2E20C2BF4375C3A16E746F207469656D706F20656E7472656E6F3F20456C20436F6C6567696F2045737461646F756E6964656E7365206465204D65646963696E61204465706F727469766120284143534D2C20706F7220737573207369676C617320656E20696E676CC3A97329207265636F6D69656E646120636164612073656D616E6120616C206D656E6F7320313530206D696E75746F7320646520656A6572636963696F20646520696E74656E7369646164206D6F6465726164612072657061727469646F7320656E2063696E636F2064C3AD617320E28093756E61206D6564696120686F726120646961726961E28093206F207472657320736573696F6E657320646520656E747265207665696E7465206D696E75746F73207920756E6120686F726120646520616374697669646164207669676F726F73612E200A3C62723E3C62723E0A4573746F206573206C6F20696465616C2C2073696E20656D626172676F2C206C6120646F73697320706572666563746120657320617175656C6C612071756520726573756C746120636F6D70617469626C6520636F6E206C6173206163746976696461646573206465206C612076696461206469617269612079206C61626F72616C2061206D6564696F2079206C6172676F20706C617A6F2E2050617261206C6F6772617220656C206F626A657469766F206861792071756520736572207072C3A1637469636F732E20506F722065736F2C20636164612073657369C3B36E20717565206C6C6576656D6F732061206361626F2C2061756E71756520736561206465206469657A206D696E75746F732C2064656265206170726F766563686172736520616C206DC3A178696D6F20792074656E657220746F646F73206C6F7320636F6D706F6E656E746573206E656365736172696F73207061726120717565206E7565737472612073616C7564206D656A6F726520706F636F206120706F636F2E0A3C62723E3C62723E0A556E20636972637569746F20636F6E20656C2071756520706F6472C3AD616D6F7320656D70657A617220686F79206D69736D6F20736572C3AD6120657374653A0A3C62723E3C62723E0A312920323030206D6574726F7320636F727269656E646F206F2063616D696E616E646F3B203229204469657A2073656E746164696C6C61733B203329204F63686F20666C6578696F6E65732E20342920536569732073616C746F7320766572746963616C6573207920766F6C766572206120636F72726572206F20616E64617220323030206D6574726F732E204465626572C3AD616D6F732068616365726C6F20646F732076656365732C20636F6E20747265696E746120736567756E646F732064652064657363616E736F20656E747265206361646120656A6572636963696F207920646F73206D696E75746F73206465207265706F736F20656E74726520636972637569746F207920636972637569746F2E20456C20656E7472656E616D69656E746F206475726120656E747265207665696E746963696E636F207920747265696E7461206D696E75746F732E0A3C62723E3C62723E0A3C2F703E0A546F6D61646F2064653A200A3C6120687265663D22687474703A2F2F7777772E6D7579696E7465726573616E74652E65732F73616C75642F6172746963756C6F2F656C2D656E7472656E616D69656E746F2D6D61732D636F6D706C65746F2D736567756E2D6C612D6369656E6369612D32323134383039333034343022207461726765743D225F626C616E6B223E4D7579696E7465726573616E74652E636F6D2E65733C2F613E0A, '3', 'Planifica la sesión; salir exhausto no es garantía de buenos resultados.', '2016-09-24 22:37:59', '2017-01-24 02:32:21');
INSERT INTO `textos` VALUES ('4', 'PERROS: LOS MEJORES AMIGOS DEL CAZADOR DESDE LA PREHISTORIA', 0x3C7020636C6173733D22746578742D6A757374696679223E0D0A486163652032372E3030302061C3B16F732C206E75657374726F7320616E63657374726F732070726F6261626C656D656E7465207961207574696C697A6162616E20706572726F732E0D0A3C62723E3C62723E0D0A506F723A204A617669657220466C6F7265730D0A3C62723E3C62723E0D0A486163652032372E3030302061C3B16F732C206E75657374726F7320616E63657374726F732070726F6261626C656D656E7465207961207574696C697A6162616E20706572726F73207061726120706572736567756972207920616261746972206D616D7574732E204573206DC3A1732C206573746F732063616E65732C20646F6D657374696361646F73206120706172746972206465206C6F626F7320657370656369616C6D656E746520637572696F736F73207175652073652061636572636162616E2061206C6F73206173656E74616D69656E746F732068756D616E6F7320656E20627573636120646520636F6D6964612C20696E636C75736F206572616E20686F6E7261646F73206375616E646F2066616C6C6563C3AD616E2E2045736F20616C206D656E6F732063726565206C6120616E74726F70C3B36C6F67612050617420536869706D616E2C2070726F6665736F726120656DC3A972697461206465206C6120556E697665727369646164204573746174616C2064652050656E73696C76616E69612C2071756520686120696D70756C7361646F20756E206573747564696F20746974756C61646F20486F7720646F20796F75206B696C6C203836206D616D6D6F7468733F2C20656E20656C207175652064657374616361206C6120696D706F7274616E636961206465206573746F7320616E696D616C657320656E206C61732070617274696461732064652063617A612070726568697374C3B372696361732E20200D0A203C62723E3C62723E0D0A456C2068616C6C617A676F20646520756E206772616E20687565736F2C2070726F6261626C656D656E7465206465206D616D75742C20636F6C6F6361646F20656E747265206C61732066617563657320646520756E20706572726F2C20756E6120636572656D6F6E69612071756520667565207265616C697A6164612074726173206C61206D75657274652064656C2063C3A16E69646F2C20656E20756E20796163696D69656E746F20646520507265646D6F7374C3AD2C20656E206C612061637475616C20526570C3BA626C6963612043686563612C207061726563652073757374656E746172206C6120686970C3B37465736973206465206C6120696E76657374696761646F72612E204573746120696E646963612C206164656DC3A1732C207175652061756E717565206C6F732068756D616E6F732063617A6162616E206573746F732070726F626F73636964696F7320657874696E746F7320646573646520C3A9706F6361732072656D6F7461732C20736520686120646573637562696572746F2071756520656E7472652034352E30303020792031352E3030302061C3B16F7320616E746573206465206E7565737472612065726120737572676965726F6E206E756D65726F736F7320656E636C6176657320656E206C6F73207175652073652068616E20656E636F6E747261646F73206D756368C3AD73696D6F7320726573746F7320C3B373656F7320646520656C6C6F732C20656E20616C67756E6F73206361736F732070657274656E656369656E7465732061206369656E746F7320646520656A656D706C617265732E200D0A203C62723E3C62723E0D0A536869706D616E206170756E746120717565206C61206D61796F72C3AD61206E6F20667565726F6E2076C3AD6374696D6173206465206163636964656E746573206F20646573617374726573206E61747572616C65732E20456E207375206F70696E69C3B36E2C2064656269C3B3206465736172726F6C6C6172736520756E61206E756576612074C3A9636E6963612064652063617A6120717565207065726D697469C3B32063617074757261726C6F73206DC3A1732066C3A163696C6D656E74652E20446520686563686F2C20756E2065717569706F206465206578706572746F7320636F6F7264696E61646F20706F72206C612070616C656F6E74C3B36C6F6761204D6965746A65204765726D6F6E7072C3A92C2064656C205265616C20496E7374697475746F2042656C6761206465204369656E63696173204E61747572616C65732C2068612064657465726D696E61646F20717565206C6F732066C3B373696C6573206465206361726EC3AD766F726F73207175652068616E2061706172656369646F20656E206D7563686F732064652065736F73206173656E74616D69656E746F732070657274656E6563656E2061206772616E64657320706572726F732C2079206E6F2061206C6F626F732C20636F6D6F20736520736F73706563686162612E20E2809C417975646162616E2061206C6F732063617A61646F726573206120656E636F6E7472617220616E7465732061206C61207072657361207920706F64C3AD616E20726F646561722061206C6F7320616E696D616C6573206DC3A173206772616E646573207920726574656E65726C6F7320656E20756E2070756E746F20686173746120717565206C6F732068756D616E6F7320736520686163C3AD616E20636172676F206465206C612073697475616369C3B36E2E20546F646F20656C6C6F2061756D656E74616261206C617320706F736962696C69646164657320646520C3A97869746F206465206C61206361636572C3AD61E2809D2C207365C3B1616C6120536869706D616E2E20E2809C506F64C3AD616E207472616E73706F72746172206C6173207069657A6173206861737461206C756761722073656775726F206F2070726F7465676572206C6F7320726573746F73206465206F74726F732064657072656461646F726573207369206573746F206E6F2065726120706F7369626C652C206C6F20717565207065726D6974C3AD612061206C6F732063617A61646F726573206163616D70617220696E20736974752E2044652065737465206D6F646F2C207265616C697A6162616E206DC3A1732063617074757261732C2061756D656E746162616E20737520696E67657374612064652070726F7465C3AD6E61732C207265647563C3AD616E20737520676173746F20656E657267C3A97469636F2079206C6120706F626C616369C3B36E20706F64C3AD612063726563657220636F6E206D61796F7220666163696C69646164E2809D2C207365C3B1616C612E0D0A3C62723E3C62723E0D0A546F6D61646F2064653A200D0A3C6120687265663D22687474703A2F2F7777772E6D7579686973746F7269612E65732F707265686973746F7269612F6172746963756C6F2F706572726F732D6C6F732D6D656A6F7265732D616D69676F732D64656C2D63617A61646F722D64657364652D6C612D707265686973746F7269612D3935313430313434393232392F22207461726765743D225F626C616E6B223E687474703A2F2F7777772E6D7579686973746F7269612E65732F3C2F613E0D0A, '4', 'Hace 27.000 años, nuestros ancestros probablemente ya utilizaban perros.', '2016-09-24 22:37:59', '2016-12-27 20:09:08');
INSERT INTO `textos` VALUES ('5', 'FRANCIA INAUGURA PRIMERA CARRETERA SOLAR DEL MUNDO', 0x3C7020636C6173733D22746578742D6A757374696679223E0A0A456C20C3A172656120646520322E383030206D6574726F7320637561647261646F73207065726D69746972C3A1206361707475726172206C6120656E657267C3AD61206E65636573617269612070617261206D616E74656E657220656C20616C756D627261646F2070C3BA626C69636F20646520756E20706F626C61646F20646520352E303030206861626974616E7465732E0A3C62723E3C62723E090A506F723A2052656461636369C3B36E2056697669720A3C62723E3C62723E0A4672616E63696120736520726F62C3B3206C61206174656E6369C3B36E206D756E6469616C20616C20696E617567757261722061796572206C61207072696D6572612063617272657465726120736F6C61722064656C206D756E646F2E20456C20747261796563746F2C2071756520706F722061686F72612074616E2073C3B36C6F207469656E6520756E206B696CC3B36D6574726F206465206C6F6E6769747564207065726F206DC3A173206164656C616E746520736572C3A120616D706C6961646F2C206F6375706120756E612076C3AD61206C6F63616C20656E204E6F726D616E64C3AD6120286E6F726F65737465292E204C6F732070616E656C657320736F6C617265732C20657370656369616C6D656E74652073C3B36C69646F73207061726120736F706F7274617220656C207065736F206465206C6F73206175746F6DC3B376696C6573207920636F6E206C61206164686572656E636961206E65636573617269612070617261206C6F73206E65756DC3A17469636F732C2070726F6D6574656E20696D706F6E657220756E61206E75657661206D6F646120736F7374656E69626C652061206E6976656C20676C6F62616C2E0A3C62723E3C62723E0A456C2070726F796563746F20657374C3A120636F6E63656269646F20636F6D6F20756E6120666F726D61206465206361707475726172206C6120656E657267C3AD6120736F6C6172206E6563657361726961207061726120616C696D656E74617220656C20616C756D627261646F2070C3BA626C69636F2064656C20706F626C61646F20656E20656C20717565206861626974616E20352E30303020706572736F6E61732E204C61206D696E6973747261206465204D6564696F20416D6269656E7465206672616E636573612C2053C3A9676F6CC3A86E6520526F79616C2C20656E6361726761646120646520696E61756775726172206C6120696E667261657374727563747572612C20617365677572C3B32071756520736520747261746120646520756E6120696465612071756520766120656E206C61206CC3AD6E6561206465206C61207472616E73696369C3B36E2064656C207061C3AD73206861636961206C617320656E657267C3AD61732072656E6F7661626C65732E0A3C62723E3C62723E0A506172612064617220756E612069646561206465206C6120696D706F7274616E636961206465206573746120657374726174656769612C20656C20676F626965726E6F206672616E63C3A973206578706C6963C3B32071756520736920656C207061C3AD732068696369657261206C6F206D69736D6F20656E20756E61206375617274612070617274652064656C206D696C6CC3B36E2064652076C3AD6173206578697374656E74657320656E207375207465727269746F72696F2C20706F6472C3AD61206C6F67726172206C6120696E646570656E64656E63696120656E657267C3A9746963612E20556E61206173706972616369C3B36E2071756520636F6E74726173746120636F6E206C6173206372C3AD746963617320717565207961206C616E7A61726F6E20616C67756E6F7320677275706F732065636F6C6F6769737461732071756520636F6E7369646572616E2071756520656C2070726563696F2070616761646F2C2063696E636F206D696C6C6F6E6573206465206575726F732C206E6F2065732072617A6F6E61626C652070617261206C612063616E746964616420646520656E657267C3AD612070726F6475636964612E0A3C62723E3C62723E0AE2809C53696E206475646120657320756E206176616E63652074C3A9636E69636F2C207065726F2070617261206465736172726F6C6C6172206C61732072656E6F7661626C657320686179206F74726173207072696F72696461646573206164656DC3A1732064652065737465206A7567756574652C2064656C2071756520736162656D6F7320717565206573206D7579206361726F2C207065726F206E6F2073692066756E63696F6E61206269656EE2809D2C20617365677572C3B320616C2064696172696F204C65204D6F6E64652C20656C2076696365707265736964656E7465206465206C61205265642070617261206C61205472616E73696369C3B36E20456E657267C3A9746963612028434C4552292C204D617263204A65646C69637A6B612E0A3C62723E3C62723E0A556E6120736F6C61206369667261206861207365727669646F2061206C6F73206372C3AD7469636F73207061726120686163657220636C61726F2073752070756E746F3A20656C2070726563696F2064656C206B696C6F766174696F2070726F64756369646F20656E20657374612076C3AD612061736369656E64652061203137206575726F732C206672656E7465206120312C33207061726120656C207175652073652067656E65726120656E2063656C646120736F6C617220696E7374616C61646120656E20756E2074656A61646F2E0A3C62723E3C62723E0A4C6F7320726573706F6E7361626C65732064656C2070726F796563746F20617267756D656E74616E2071756520656C2070726563696F207365206162617261746172C3A120656E206C61206D65646964612071756520736520657870616E6461206C612064656D616E64612E20446520686563686F2C206C6F732070726563696F73206465206C617320706C6163617320736F6C6172657320666F746F766F6C7461696361732068616E2064657363656E6469646F20656E74726520363520252079203735202520656E7472652032303039207920323031332C207920656C2070726563696F206465206C6120656E657267C3AD61206C6F20686120686563686F203830202520646573646520323030382E0A3C62723E3C62723E0A4C6F7320322E383030206D6574726F7320637561647261646F7320617366616C7461646F7320636F6E2065737465206D6174657269616C20657370656369616C20736F6E20656C20726573756C7461646F2064652063696E636F2061C3B16F73206465207072756562617320636F6E207065717565C3B16F73207472616D6F7320696E7374616C61646F7320656E206170617263616D69656E746F73206F206672656E7465206120656469666963696F732070C3BA626C69636F732E204C6F7320696E67656E6965726F732063616C63756C616E2071756520656C207472C3A16E7369746F206465206C6F7320636172726F732073C3B36C6F206F6375706120656C20323020252064656C207469656D706F2C207065726D697469656E646F20717565206C61732063656C6461732063617074656E206C757A20656C20726573746F2064656C2064C3AD612E0A3C62723E3C62723E0A546F6D61646F2064653A200A3C6120687265663D22687474703A2F2F7777772E656C65737065637461646F722E636F6D2F6E6F7469636961732F6369656E6369612F6672616E6369612D696E6175677572612D7072696D6572612D6361727265746572612D736F6C61722D64656C6D756E646F2D6172746963756C6F2D3637313638362F22207461726765743D225F626C616E6B223E687474703A2F2F7777772E656C65737065637461646F722E636F6D2F3C2F613E0A3C2F703E0A, '5', 'Los paneles solares están diseñados para soportar el peso de los vehículos.', '2016-12-27 19:51:29', '2016-12-27 20:12:03');
INSERT INTO `textos` VALUES ('6', '¿QUÉ ES EL NEUROMARKETING?', 0x3C7020636C6173733D22746578742D6A757374696679223E0A556E61206369656E6369612071756520696E76657374696761207920657374756469612063C3B36D6F20736520636F6D706F72746120656C206365726562726F20656E20756E2070726F6365736F20646520636F6D7072612E0A3C62723E3C62723E0A506F723A2045646974682047C3B36D657A0A3C62723E3C62723E0A0A4D756368617320656D7072657361732073652068616E2070657263617461646F207175652070617261206C6C656761722061206C6F7320636F6E73756D69646F726573206861792071756520636F6E656374617220636F6E207375732073656E74696D69656E746F732C207472616E736D697469C3A96E646F6C657320756E6F732076616C6F726573207920756E617320656D6F63696F6E65732C2079612071756520736F6C6F206465206573746120666F726D6120736520706F6472C3A1207265636962697220756E20666565646261636B20706F73697469766F20686163696120656C2070726F647563746F206F206C61206D617263612E20546F646F206573746F206573206C6F2071756520736520636F6E6F636520636F6D6F206D61726B6574696E6720656D6F63696F6E616C2C20646F6E6465206D7563686173207665636573207365207574696C697A616E2074C3A9636E6963617320636F6D6F20656C2073746F727974656C6C696E672070617261206C6C6567617220616C20636F6E73756D69646F722C20746F63616E646F207375206669627261206DC3A1732073656E7369626C652C20612074726176C3A97320646520756E6120686973746F72696120646F6E6465206C61206D6172636120657320756E206D6172636F20636F6E7465787475616C2079206E6F206C612070726F7461676F6E69737461206465206C61207472616D612E205065726F2C206465206573746F206861626C6172656D6F73206F74726F2064C3AD612E0A3C62723E3C62723E0A0A41207261C3AD7A20646520657374612074656E64656E6369612C2064656C206D61726B6574696E6720656D6F63696F6E616C2C20737572676520656C206E6575726F6D61726B6574696E672C20756E61206369656E6369612071756520696E76657374696761207920657374756469612063C3B36D6F20736520636F6D706F72746120656C206365726562726F20656E20756E2070726F6365736F20646520636F6D7072612E0A3C62723E3C62723E0A0A506F722074616E746F2C20656C206F626A657469766F2064652065737461206369656E6369612065732065737475646961722063C3B36D6F207265616363696F6E6120656C206365726562726F20616E746520756E612063616D7061C3B161207075626C696369746172696120646520756E2070726F647563746F2C20706F7220656A656D706C6F2C206F20616E7465206375616C717569657220657374C3AD6D756C6F2072656C6163696F6E61646F20636F6E206C61207075626C6963696461642E0A3C62723E3C62723E0A0A5065726F2C20C2BF7175C3A9206D696465206578616374616D656E746520656C206E6575726F6D61726B6574696E673F2045737461206369656E6369612073652063656E74726120656E2074726573206173706563746F7320636C617665733A206C61206174656E6369C3B36E2C206C6120656D6F6369C3B36E2079206C61206D656D6F7269612E0A3C62723E3C62723E0A0A506F6E67C3A16D6F6E6F7320646573646520656C2070756E746F20646520766973746120646520756E2070726F666573696F6E616C206465207075626C696369646164206F206D61726B6574696E672E205375206D697369C3B36E20736572C3A120636170746172206C61206174656E6369C3B36E2064656C207573756172696F20636F6E20756E20616E756E63696F2E204465737075C3A9732C206465626572C3A1207472616E736D6974697220756E6120656D6F6369C3B36E20647572616E746520656C20616E756E63696F20792066696E616C6D656E7465206465626572C3A1206D6F737472617220656C2070726F647563746F20656E20656C206D6F6D656E746F20616465637561646F2C206375616E646F20656C20636F6E73756D69646F7220657374C3A920696E6D6572736F20656E20C3A96C2C207061726120717565206173C3AD207075656461207265636F726461726C6F20756E612076657A2071756520656C20616E756E63696F2061636162652E0A3C62723E3C62723E0A0A5065726F2C20C2BF7175C3A9206573206C6F20717565206E6F7320656D70756A6120656E206E75657374726F206365726562726F206120746F6D6172206C6120646563697369C3B36E2066696E616C20646520636F6D7072612C206573206C612072617AC3B36E206F20736520747261746120646520656D6F63696F6E65733F20C2BF5175C3A92070656E73C3A169733F204D75636861732076656365732C20636F6D7072616D6F7320706F72717565206C612072617AC3B36E206E6F73206C6F20696D706F6E653A206E656365736974616D6F7320616C676F2C20656C2070726563696F20657320616365707461626C652079206E6F73206C6F206C6C6576616D6F732E205065726F2C206F747261732076656365732C206E6F206E656365736974616D6F73206573652070726F647563746F2C20706F64656D6F732076697669722073696E20C3A96C2C20792061C3BA6E206173C3AD206361656D6F7320656E2065736520706F646572207065727375617369766F206465206C61206D617263612C20646520666F726D6120696E636C75736F20696E636F6E736369656E7465732E0A3C62723E3C62723E0A0A456E747265206C6F73207469706F73206465206E6575726F6D61726B6574696E6720706F64656D6F73206D656E63696F6E61723A203C62723E0A616C2076697375616C2C20617564697469766F206F206B696E657374C3A97369636F2E20456C2076697375616C20657320617175656C207175652073652063656E74726120656E20636F6D6F20706572636962696D6F7320746F646F20616E7465206E75657374726F73206F6A6F732E20506F7220656A656D706C6F2C20756E612074C3A9636E696361206D7579207574696C697A61646120657320706F6E657220656C2070726563696F20646520756E2070726F647563746F206163616261646F20656E20302C39392E20457374612074C3A9636E69636120707369636F6CC3B36769636120617975646120616C20636F6E73756D69646F7220612076657220656C2070726563696F206DC3A1732062616A6F2E20536920616C676F2076616C6520392C39392C20656C20636F6E73756D69646F72206E6F20766572C3A120696775616C206573652070726563696F20717565203130206575726F732E20556E2063C3A96E74696D6F206120766563657320657320656C2063617573616E746520646520636F6E736567756972206DC3A1732076656E7461732E0A3C62723E3C62723E0A0A456C206E6575726F6D61726B6574696E6720617564697469766F207365206261736120656E20617175656C6C6F2071756520657363756368616D6F732E20506F722065736F2C20756E61206DC3BA7369636120656E20756E206C6F63616C20707565646520696E666C75697220616C676F20656E206C6120646563697369C3B36E20646520636F6D70726120646520756E20636C69656E74652E204E6F20657320756E20666163746F7220646563697369766F2C207065726F2073C3AD206179756461206120717565206C6120636F6D707261207365207265616C69636520636F6E20C3A97869746F2E20456E20756E61207469656E6461206465206D6F6461206A6F76656E2C20736572C3A1206E6F726D616C20656E636F6E74726172206DC3BA7369636120656C656374726F2C20686F7573652C206DC3BA736963612071756520696E6369746520612073616C6972206465206669657374612C2065736520657320656C206F626A657469766F2C20656E636F6E74726172746520636F6E206573612073656E73616369C3B36E2E0A3C62723E3C62723E0A0A456C206B696E657374C3A97369636F20736520726566696572652061206C6F2071756520706572636962696D6F7320706F7220656C20746163746F2C20656C20677573746F207920656C206F6C6661746F2E20486179206D7563686F73206C6F63616C657320717565207469656E656E20756E206F6C6F72206361726163746572C3AD737469636F20616C20656E747261722C20706F7220656A656D706C6F206C6F732073757065726D65726361646F73207469656E64656E2061206F6C6572206D7579206269656E20612070616E2072656369C3A96E20686563686F2C20706F722065736F207375656C656E20706F6E6572206C6F7320686F726E6F732064652070616E61646572C3AD6120656E206D6564696F2064656C2065737461626C6563696D69656E746F2E0A3C62723E3C62723E0A0A4F74726F73206173706563746F7320636F6D6F206C61206C6F63616C697A616369C3B36E206465206C6F732070726F647563746F732C20737520706F73696369C3B36E2C206C6120696C756D696E616369C3B36E2C206F206C6F73206361727269746F7320646520636F6D707261206772616E646573206F206C61732063657374617320636F6E2072756564617320726F74617320287061726120717565207469656E64616E206120646573706C617A61727365206861636961206C617320657374616E746572C3AD6173292C20736F6E20616C67756E6173206573747261746567696173206465206E6575726F6D61726B6574696E6720717565206D7563686173206D6172636173207574696C697A616E20706172612070657273756164697220616C20636F6E73756D69646F722E0A3C62723E3C62723E0A0A456E20646566696E69746976612C20636164612076657A206DC3A1732C206C6F7320636F6E73756D69646F72657320206E6F20736F6C6F20636F6E73756D656E20706F72717565206C612072617AC3B36E207365206C6F20696D706F6E652C2073696E6F20706F7271756520736F6E206D6F7669646F7320706F72206C617320656D6F63696F6E65732E205920646520657374617320656D6F63696F6E657320796120736520657374C3A16E206F637570616E646F206D756368617320656D7072657361732071756520617075657374616E20706F7220656C206E6575726F6D61726B6574696E6720636F6D6F206573747261746567696120706172612061756D656E746172207375732076656E7461732C207065727375616469656E646F20646520756E6120666F726D6120737574696C20616C20636C69656E74652E0A3C62723E3C62723E0A546F6D61646F2064653A200A3C6120687265663D2220687474703A2F2F7777772E6D7579696E7465726573616E74652E65732F7465636E6F6C6F6769612F6172746963756C6F2F7175652D65732D656C2D6E6575726F6D61726B6574696E672D39323134353030393834343122207461726765743D225F626C616E6B223E687474703A2F2F7777772E6D7579696E7465726573616E74652E65732F3C2F613E0A3C2F703E0A, '6', 'Una ciencia que investiga y estudia cómo se comporta el cerebro en un proceso de compra.', '2016-12-28 16:02:36', '2016-12-28 16:34:11');
INSERT INTO `textos` VALUES ('7', 'EL JOVEN DICTADOR NORCOREANO QUE VOLVIÓ A DESAFIAR AL MUNDO', 0x3C7020636C6173733D22746578742D6A757374696679223E0D0A506573652061206C617320616476657274656E63696173206465204E6163696F6E657320556E69646173206120436F7265612064656C204E6F7274652070617261207175652073652061627374656E6761206465207265616C697A617220656E7361796F73206E75636C65617265732C20656C20707265736964656E7465206E6F72636F7265616E6F2C204B696D204A6F6E6720556E2C20646573616669C3B320756E612076657A206DC3A17320616C206D756E646F2079206C616E7AC3B3207375207175696E746F206D6973696C2E0D0A3C62723E3C62723E0D0A5472617320656C206C616E7A616D69656E746F206C6F7320736572766963696F73207369736D6F6CC3B36769636F73206465206C6F73207061C3AD73657320766563696E6F732064657465637461726F6E20756E2074656D626C6F7220646520352C3320677261646F7320656E206C6120657363616C6120646520526963687465722E20536567C3BA6E20656C20496E7374697475746F2064652041726D6173204E75636C656172657320646520436F7265612064656C204E6F7274652C20656C206F626A657469766F2064652065737465206E7565766F206C616E7A616D69656E746F2066756520696E6F63656E74653A206576616C756172206C6120706F74656E63696120646520756E61206E75657661207069657A61206174C3B36D6963612065737475646961646120792066616272696361646120706F72206369656E74C3AD6669636F732064656C207061C3AD732E0D0A3C62723E3C62723E0D0A456C20706F6465722064656C206D6973696C206861207369646F20656C206D61796F72206465206C6F732063696E636F206C616E7A61646F7320706F7220436F7265612064656C204E6F7274652E205920706F6E6520656E20616C657274612061206C6120636F6D756E6964616420696E7465726E6163696F6E616C20736F627265206C6F73206176616E636573206E75636C6561726573206465204B696D204A6F6E6720556E2E20537573206D696C6974617265732063656C65627261726F6E2065737465206E7565766F2073756365736F2E0D0A3C62723E3C62723E0D0A4C6F73206861626974616E74657320646520436F7265612064656C205375722C207175656D61726F6E2070616E63617274617320636F6E206C6120696D6167656E2064656C20707265736964656E7465206E6F72636F7265616E6F20706172612070726F74657374617220706F7220656C2070656C6967726F20656E20717565206C6F7320706F6E652E0D0A0D0A3C62723E3C62723E0D0A456C20436F6E73656A6F20646520536567757269646164206465204E6163696F6E657320556E6964617320636F6E64656EC3B3206C61732070727565626173206E75636C656172657320792070726570617261206E75657661732073616E63696F6E6573207061726120436F7265612064656C204E6F7274652E2045737461646F7320556E69646F7320617365677572C3B32071756520636F6E20737573207061C3AD73657320616C6961646F73207469656E656E206C61207465636E6F6C6F67C3AD61206E656365736172696120706172612070726F7465676572736520616E7465206375616C717569657220616D656E617A6120636F6E206D6973696C65732E0D0A3C62723E3C62723E0D0A546F6D61646F2064653A200D0A3C6120687265663D22687474703A2F2F6E6F746963696173756E6F6C61726564696E646570656E6469656E74652E636F6D2F323031362F30392F31302F6E6F7469636961732F696E7465726E6163696F6E616C2F656C2D6A6F76656E2D6469637461646F722D6E6F72636F7265616E6F2D7175652D766F6C76696F2D612D64657361666961722D616C2D6D756E646F2F3F706C6174666F726D3D686F6F74737569746522207461726765743D225F626C616E6B223E687474703A2F2F6E6F746963696173756E6F6C61726564696E646570656E6469656E74652E636F6D3C2F613E0D0A3C2F703E0D0A, '7', 'El presidente norcoreano, Kim Jong Un, desafió una vez más al mundo y lanzó su quinto misil.', '2016-12-28 19:13:39', '2016-12-28 19:13:57');
INSERT INTO `textos` VALUES ('8', 'DUEÑA DE CAFETERÍA CONTRATA A UN VAGABUNDO - DOS SEMANAS DESPUÉS ENCUENTRA ESTO EN LA COCINA', 0x3C7020636C6173733D22746578742D6A757374696679223E0D0A456E204D696E6E6561706F6C69732C2045737461646F7320556E69646F732C20416269207469656E6520756E612063616665746572C3AD61206465206E6F6D62726520416269277320436166C3A92E204164656DC3A17320646520736572206C6120647565C3B1612074616D6269C3A96E206C612074726162616A612079206C65206775737461206573746172206D757920616C2070656E6469656E74652074616E746F2064652073757320636C69656E74657320636F6D6F20646520737520706572736F6E616C2E0D0A3C62723E3C62723E0D0A546F646F7320736162656D6F7320717565206375616E646F206E6F207365207469656E6520657870657269656E6369612C207365207469656E656E20616E7465636564656E7465732070656E616C6573206F2073652070617361206465206C6F732033302061C3B16F732C20656C20636F6E73656775697220756E20656D706C656F206573206D757920706F636F2070726F6261626C652C20706F722065736F206573207175652074616E74617320706572736F6E6173207465726D696E616E20656E206C61732063616C6C6573206D656E646967616E646F2079206173C3AD2066756520636F6D6F204D6172637573206C6C6567C3B320686173746120656C20636166C3A9206465204162692E0D0A3C62723E3C62723E0D0A2DC2BF4D6520726567616C6172C3AD6120756E61206D6F6E65646974613F2C206C652064696A6F204D61726375732061204162692C20717569656E20656E2065736F73206D6F6D656E746F73206174726176657361626120706F7220756E61206D616C612065636F6E6F6DC3AD61207065726F206164656DC3A1732C20657374616261206E656365736974616E646F20646520706572736F6E616C2C206173C3AD207175652065737461206C652064696A6F3A202DC2A8596F2074652076656F2073616E6F2C206E6F20736572C3AD61206D656A6F722067616E61727465207475732070726F70696173206D6F6E65646173206120636F73746120646520756E20656D706C656F3F2C204D6172637573206C652068697A6F207361626572206C6F206D7563686F20717565206C6520677573746172C3AD612074726162616A61722070756573206120646563697220766572646164207369206572612070656E6F736F20616E6461722070696469656E646F20706F72206C61732063616C6C6573207065726F20636F6E666573C3B3207175652066696E616C6D656E746520756E6F207465726D696E6162612061636F7374756D6272C3A16E646F736520706F72206C61206E6563657369646164206465206C6C65766172736520616C676F2061206C6120626F63612E205375206C6172676F20686973746F7269616C206465206D616C617320616363696F6E6573206E6F207065726D6974C3AD612071756520C3A96C20656E636F6E747261726120756E2074726162616A6F206469676E6F207061726120736F6C76656E74617220737520616C696D656E74616369C3B36E207920747261732073752073696E636572696461642C2041626965207475766F20756E612067656E69616C2070726F706F73696369C3B36E2E0D0A3C62723E3C62723E0D0A4D7563686F73207075646965726F6E20686162657220636F727269646F2061204D6172637573207065726F20416269206C652061627269C3B3206C61732070756572746173206465207375206E65676F63696F2C20756E61206865726D6F73612061636369C3B36E206465206C61206375616C206465626572C3AD616D6F73207465726D696E617220636F6E20756E20706F636F20646520696E73706972616369C3B36E2070756573206E6F732068612064656D6F73747261646F20717565206C6F7320636F72617A6F6E6573206275656E6F732061C3BA6E206578697374656E2E0D0A3C62723E3C62723E0D0A5361636172206C612063616665746572C3AD61206164656C616E746520696D706C696361626120746F646F20756E207265746F2070617261204162692C2073696E20656D626172676F2C206E6563657369746162612071756520616C677569656E206C652065636861726120756E61206D616E6F20656E206C6120636F63696E6120656E20637565737469C3B36E206465206C61206C696D7069657A612C206173C3AD20717565206E6F20647564C3B320656E206F6672656365726C6520656D706C656F2061204D617263757320612063616D62696F2064656C2070616E20646520636164612064C3AD612079206375616E646F20656C20636166C3A92073652065737461626C65636965726120756E20706F636F2C20636F6D656E7A6172C3AD612061206461726C6520756E207375656C646F2E0D0A3C62723E3C62723E0D0A4D6172637573206163657074C3B320636F6E206D7563686120616C656772C3AD612C206E6F20706F6472C3AD612063726565722071756520706F722066696E20616C677569656E206C65206F667265636965726120656D706C656F2C206E6F207075646F206F63756C74617220737520656D6F6369C3B36E207920737573206F6A6F73207365206C6C656E61726F6E206465206CC3A16772696D61732E2041626920726563696269C3B320756E61206772616E20736F6E7269736120636F6D6F2061677261646563696D69656E746F2E20200D0A3C62723E3C62723E0D0A41626920636F6D7061727469C3B3206573746120616EC3A963646F746120656E207375206375656E74612064652046616365626F6F6B207920612074726176C3A97320646520656C6C6120636F6E74696E75C3B32068616369656E646F20636F6D656E746172696F73206D757920706F73697469766F7320616365726361206465204D61726375732E205365C3B1616CC3B320717565206E6F2073C3B36C6F20686163C3AD61206C6173206C61626F72657320636F72726573706F6E6469656E7465732073696E6F20717565206C65206179756461626120636F6E206F7472617320746172656173206578747261732E205369656D707265206573746162612064697370756573746F20612065636861726C6520756E61206D616E6F2E204D617263757320657261206D757920726573706F6E7361626C652C20612064696172696F2063756D706CC3AD6120636F6E20737520686F726172696F207920726573706574616261206C6173207265676C61732064656C206C756761722E0D0A3C62723E3C62723E0D0A4375616E646F2066696E616C6D656E746520656C20636166C3A920636F6D656E7AC3B320612064617220667275746F732C204D617263757320636F6D656E7AC3B3206120726563696269722070616761207920636F6E20656C6C61206D69736D6120736520636F6D70726162612073757320616C696D656E746F732064652064696172696F2E205961206E6F207065726D6974C3AD612071756520416269206C6520726567616C617261206C6120636F6D6964612C20C3A96C2073652073656E74C3AD61206F7267756C6C6F736F20646520706F6465722070616761726C6120636F6E207375206573667565727A6F20792074726162616A6F2E20436F6E6669657361207175652065736F206C6520686163C3AD612073656E74697220616C677569656E206D656A6F722C206164656DC3A1732C2072656375706572C3B3206C6120636F6E6669616E7A6120656E2073C3AD206D69736D6F20792073652067616EC3B3206C61206465206C6F732064656DC3A1732E204D6172637573206E6F2073C3B36C6F206F627475766F20756E20656D706C656F2073696E6F2074616D6269C3A96E20616D69676F732E0D0A3C62723E3C62723E0D0A4D6172637573207465726D696EC3B32064656D6F737472616E646F206465207175C3A92065737461626120686563686F206375616E646F20656E20756E61206F63617369C3B36E204162692076696F20636F6D6F206C6520636F6D7072616261206465736179756E6F206120756E61206D756A6572207661676162756E64612C2065736F2073696E20647564612064657272697469C3B320737520636F72617AC3B36E2E204E6F2063616265206475646120717565206C6F7320717565206D656E6F73207469656E656E20736F6E206C6F7320717565206DC3A1732064616E20C2BF6E6F2063726565733F0D0A3C62723E3C62723E0D0A45732063696572746F20717565206E6F20646562656D6F73206465206A757A6761722061206C617320706572736F6E61732071756520616E64616E20706F72206C61732063616C6C65732070696469656E646F206D6F6E656461732C207065726F206573206D7563686F206D656A6F7220736920707565646573206F6672656365726C657320616C676F20717565206C6F732062656E656669636965206DC3A1732079206C6F7320617975646520612063616D62696172206C612073697475616369C3B36E20656E206C612071756520657374C3A16E2E0D0A3C62723E3C62723E0D0A4E756E6361206573207461726465207061726120686163657220616C676F206275656E6F20706F7220616C67C3BA6E20646573636F6E6F6369646F20792074616D706F636F20706172612064617220736567756E646173206F706F7274756E6964616420707565732073696E206475646120746F646F73206C61206D65726563656D6F732E0D0A3C62723E3C62723E0D0A546F6D61646F2064653A200D0A3C6120687265663D2220687474703A2F2F7777772E6D696D756E646F76657264652E6F72672F323031362F31322F6475656E612D64652D6361666574657269612D636F6E74726174612D756E2E68746D6C22207461726765743D225F626C616E6B223E20687474703A2F2F7777772E6D696D756E646F76657264652E6F72673C2F613E0D0A3C2F703E0D0A, '8', 'Marcus aceptó con mucha alegría, no podría creer que por fin alguien le ofreciera empleo.', '2017-01-12 23:03:59', '2017-01-13 00:51:33');
INSERT INTO `textos` VALUES ('9', 'HOLANDA Y COLOMBIA FIRMARON CONVENIO PARA DESARROLLO DE ENERGÍAS RENOVABLES', 0x3C7020636C6173733D22746578742D6A757374696679223E0A456C206D656D6F72616E646F20646520656E74656E64696D69656E746F2073652063656E74726172C3A120656E20656C206465736172726F6C6C6F20646520656E657267C3AD61732065C3B36C6963612C20736F6C61722079206465206D617265732E2053652063656E74726172C3A1207072696E636970616C6D656E746520656E20726567696F6E657320636F6D6F206C61204F72696E6F7175C3AD612C20656C20506163C3AD6669636F207920656C204361726962652E0A3C62723E3C62723E0A506F723A2052656461636369C3B36E204E6163696F6E616C0A3C62723E3C62723E0A50617261206465736172726F6C6C6172206E7565766173206675656E74657320646520656E657267C3AD612072656E6F7661626C652C20436F6C6F6D626961207920486F6C616E6461206669726D61726F6E20756E206D656D6F72616E646F20646520656E74656E64696D69656E746F20717565206475726172C3A120646F732061C3B16F732070726F72726F6761626C65732E204C6120696E74656E6369C3B36E2C20736567C3BA6E20657870726573C3B320656C206D696E697374726F20646520416D6269656E74652C204C7569732047696C626572746F204D7572696C6C6F2C20657320717565206573746F206179756465206120717565207365206469736D696E757961206C6120656D697369C3B36E20646520676173657320696E7665726E616465726F7320656E20756E20323025207061726120323033302E0A203C62723E3C62723E0A456C206163756572646F20667565206669726D61646F20706F7220656C204D696E6973746572696F20646520416D6269656E74652C206C6120556E6964616420646520506C616E65616369C3B36E204D696E65726F20456E657267C3A974696361202855504D4529207920656C205265696E6F206465205061C3AD7365732042616A6F732C20726570726573656E7461646F20706F7220656C20656D62616A61646F722064652065737465207061C3AD7320656E20436F6C6F6D6269612C204A65726F656E20526F6F64656E627572672E200A203C62723E3C62723E0A416C20726573706563746F2064656C206163756572646F20646520636F6F706572616369C3B36E20656E747265206C6F7320646F73207061C3AD7365732C20526F6F64656E6275726720617365677572C3B32071756520E2809C656E20656C20636F6E746578746F2064656C2070726F6365736F2064652070617A2C2074656E656D6F732071756520747261657220656E657267C3AD61206C696D7069612061206C617320726567696F6E6573206DC3A17320696D706163746164617320706F72206C612076696F6C656E636961207920706F7220656C20636F6E666C6963746F2E20457320756E61206F706F7274756E6964616420646520696E74657263616D6269617220636F6E6F63696D69656E746F2C20657870657269656E6369612079207465636E6F6C6F67C3AD61E2809D2E0A3C62723E3C62723E200A536567C3BA6E20656C204D696E616D6269656E74652C206C61206669726D612064656C206D656D6F72616E646F20646520656E74656E64696D69656E746F20686172C3A120657370656369616C20C3A96E666173697320656E20656C206465736172726F6C6C6F20646520656E657267C3AD61732065C3B36C6963612C20736F6C61722079206465206D617265732E204164656DC3A1732C2073652063656E74726172C3A120656E20726567696F6E657320636F6D6F204F72696E6F7175C3AD612C20506163C3AD6669636F2079204361726962652E2054616D6269C3A96E2073652070726576C3A96E20E2809C656C20696E74657263616D62696F2064652076697369746173206465206578706572746F732C20656D70726573617320792064656C65676163696F6E65732070617261207072657374617220617365736F72C3AD612C2061646965737472616D69656E746F2074C3A9636E69636F20656E206C617320C3A17265617320646520636F6F706572616369C3B36E206520696D706C656D656E746172206C6F732070726F796563746F732070696C6F746FE2809D2E0A3C62723E3C62723E200AE2809C436F6C6F6D62696120657320756E6F206465206C6F73207061C3AD7365732070696F6E65726F7320656E20736F6C69636974617220792072656369626972206173697374656E6369612074C3A9636E69636120656E206D61746572696120616D6269656E74616C2E20506F722065736F2C2065737465206D656D6F72616E646F20646520656E74656E64696D69656E746F20657320636C61766520706F72206C6120636F79756E747572612071756520766976696D6F7320656E20656C207061C3AD732C20646F6E646520656E636F6E7472616D6F7320756E61206F706F7274756E6964616420656E206C612067656E6572616369C3B36E20646520656E657267C3AD6173206E6F20636F6E76656E63696F6E616C6573E2809D2064696A6F204C7569732047696C626572746F204D7572696C6C6F2C206465737075C3A97320646520717565207365206669726D61726120656C206163756572646F20656E74726520616D626F73207061C3AD7365732E0A3C62723E3C62723E0A546F6D61646F2064653A200A3C6120687265663D2220687474703A2F2F7777772E656C65737065637461646F722E636F6D2F6E6F7469636961732F6E6163696F6E616C2F686F6C616E64612D792D636F6C6F6D6269612D6669726D61726F6E2D636F6E76656E696F2D6465736172726F6C6C6F2D64652D656E65722D6172746963756C6F2D36373137313222207461726765743D225F626C616E6B223E207777772E656C65737065637461646F722E636F6D3C2F613E0A3C2F703E0A, '5', 'Para desarrollar nuevas fuentes de energía renovable, Colombia y Holanda firmaron un acuerdo. ', '2017-01-15 05:16:07', '2017-02-01 23:16:58');
INSERT INTO `textos` VALUES ('10', '¿QUÉ PASARÍA SI NO HUBIERA LUNA?', 0x3C7020636C6173733D22746578742D6A757374696679223E0A4D756368612067656E74652073652070726567756E7461207175C3A92073756365646572C3AD61207369206E6F2068756269657261204C756E612E20546520636F6E74616D6F7320636F6D6F20736572C3AD6120656C206D756E646F2073696E206E75657374726F20736174C3A96C6974652E203C62723E3C62723E0A0A506F723A204D412E205361626164656C6C3C62723E3C62723E0A4E75657374726F20706C616E65746120657320C3BA6E69636F20706F7271756520706F73656520756E20736174C3A96C69746520657863657063696F6E616C6D656E7465206772616E64653A206C61204C756E612E20446520686563686F2C20666F726D616D6F7320756E2073697374656D6120706C616E65746172696F20646F626C652C20616C676F206162736F6C7574616D656E746520616EC3B36D616C6F20656E747265206C6F7320706C616E657461732064656C2053697374656D6120536F6C61722E204861737461207375206E6163696D69656E746F2066756520616EC3B36D616C6F3A206E75657374726F20736174C3A96C697465206E616369C3B3206375616E646F206E75657374726F20706C616E6574612065737461626120656E20737520696E66616E6369612079207472617320656C20696D706163746F20646520756E206F626A65746F206D61796F7220717565204D617274652E203C62723E3C62723E0A0A5369206E6F2068756269657261204C756E61206465736170617265636572C3AD616E206C6F732065636C69707365732079206C6173206E6F6368657320736572C3AD616E206D7563686F206DC3A173206F7363757261732E204C6173206D61726561732074616D6269C3A96E20736572C3AD616E206469666572656E7465733A20646520686563686F2C20736572C3AD616E206DC3A173207065717565C3B161732C20616C72656465646F7220646520756E2074657263696F206465206C6F2071756520736F6E2061686F72612E20546F646F206C6F20636F6E74726172696F2061206C6120C3A9706F636120656E2071756520736520666F726DC3B3206C61204C756E613A20636F6D6F20736520656E636F6E7472616261206DC3A173206365726361206465206C61205469657272612C20C2A16C6173206D6172656173206C6C65676162616E2061206C6F732039206D6574726F7321203C62723E3C62723E0A0A5065726F206C6F206DC3A17320696E7465726573616E746520736572C3AD61206C6F207175652073756365646572C3AD612061206E75657374726F2070726F70696F20706C616E6574612E204E6F20736F6D6F7320636F6E736369656E7465732064656C20706170656C2071756520646573656D7065C3B161206E75657374726F20286D616C206C6C616D61646F292027736174C3A96C6974652720656E206C61206573746162696C69646164206465206C6F73206D6F76696D69656E746F73206465206C61205469657272612E20506F7220756E206C61646F2C206C612070726573656E636961206465206C61204C756E61206672656E61206C6120726F74616369C3B36E207465727265737472652C2061756E71756520646520756E206D6F646F206D75792C206D7579207065717565C3B16F3A2064656C206F7264656E20646520756E6F7320706F636F73206D6963726F736567756E646F7320706F722061C3B16F2E20436C61726F2071756520616C206361626F206465206C6F7320352E303030206D696C6C6F6E65732064652061C3B16F7320717565206C6C657661206E75657374726F20706C616E6574612064616E646F207675656C74617320616C72656465646F722064656C20536F6C207369676E696669636120756E206275656E207069636F2E20446520686563686F2C2073696E204C756E6120656C2064C3AD61206E6F206475726172C3AD6120323420686F7261732073696E6F20C2A1646520362061203820686F72617321203C62723E3C62723E0A0A59206E6F20736F6C6F2065736F2E2053696E20656C6C61206C61206F7269656E74616369C3B36E2064656C20656A65206465206C6120546965727261206E6F207365206D616E74656E6472C3AD612065737461626C652079206578706572696D656E746172C3AD6120766172696163696F6E6573206361C3B3746963617320C2B4636F6E20656C207469656D706F2E2051756520657374656D6F732064697366727574616E646F20646520756E6120737563657369C3B36E20726567756C6172206465206C6173206573746163696F6E657320647572616E7465206D696C6C6F6E65732064652061C3B16F7320657320677261636961732061206C61204C756E612E204D617274652C20706F7220656A656D706C6F2C207469656E6520646F73206C756E6173206D696EC3BA7363756C6173207920737520656A6520646520726F74616369C3B36E2068612063616D626961646F203630C2BA20656E206C6F7320C3BA6C74696D6F73203130206D696C6C6F6E65732064652061C3B16F732028656E20636F6D706172616369C3B36E2C20656C20656A6520746572726573747265206F7363696C6120736F6C6F20312C35C2BA20636164612034312E3030302061C3B16F73292E204C617320636F6E73656375656E6369617320636C696D61746F6CC3B3676963617320646520756E612076617269616369C3B36E206361C3B3746963612064656C20656A6520646520726F74616369C3B36E20686172C3AD616E206D757920646966C3AD63696C20717565206C6120766964612065766F6C7563696F6E61726120636F6D6F206C6F20686120686563686F20656E20656C20706C616E6574612E203C62723E3C62723E0A546F6D61646F2064653A203C62723E3C62723E0A3C6120687265663D2220687474703A2F2F7777772E6D7579696E7465726573616E74652E65732F6369656E6369612F70726567756E7461732D726573707565737461732F7175652D706173617269612D73692D6E6F2D687562696572612D6C756E612D39353134383432323134313122207461726765743D225F626C616E6B223E207777772E6D7579696E7465726573616E74652E65733C2F613E0A3C2F703E0A, '8', 'texto', '2017-01-15 05:16:07', '2017-01-16 20:58:06');
INSERT INTO `textos` VALUES ('11', 'CARICATURA - MANA NEYESTANI', 0x3C7020636C6173733D22746578742D63656E746572223E0A0A3C696D67207372633D2270726F796563742F6576616C7561722F6173736574732F696D616765732F6C656374757261732F696D6167656E5F30312E6A7067223E200A0A3C2F703E, '9', 'Caricatura de Mana Neyestani sobre las formas de interpretar la realidad.', '2017-01-13 02:41:54', '2017-01-15 05:25:33');
INSERT INTO `textos` VALUES ('12', 'MAFALDA - LA HUMANIDAD', 0x3C7020636C6173733D22746578742D63656E746572223E0A0A3C696D67207372633D2270726F796563742F6576616C7561722F6173736574732F696D616765732F6C656374757261732F696D6167656E5F30322E4A5047223E0A3C2F703E, '9', 'Quino, con su personaje Mafalda, nos invita a reflexionar sobre la humanidad.', '2017-02-03 02:11:44', '2017-02-04 19:32:01');
SET FOREIGN_KEY_CHECKS=1;
