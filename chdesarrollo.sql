/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : chdesarrollo

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2014-03-17 00:46:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrador_movimiento
-- ----------------------------
DROP TABLE IF EXISTS `administrador_movimiento`;
CREATE TABLE `administrador_movimiento` (
  `id_movimiento` int(10) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(40) DEFAULT NULL,
  `movimiento` varchar(80) NOT NULL,
  `fecha` date DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `sucursal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of administrador_movimiento
-- ----------------------------
INSERT INTO `administrador_movimiento` VALUES ('1', 'test', 'bla bla', '2014-02-08', 'admin', null);
INSERT INTO `administrador_movimiento` VALUES ('2', 'test', 'bla bla', '2014-02-08', 'admin', null);
INSERT INTO `administrador_movimiento` VALUES ('3', 'test', 'bla bla', '2014-02-08', 'admin', null);
INSERT INTO `administrador_movimiento` VALUES ('4', 'test', 'bla bla', '2014-02-08', 'admin', null);
INSERT INTO `administrador_movimiento` VALUES ('5', 'test', 'bla bla', '2014-02-08', 'admin', null);
INSERT INTO `administrador_movimiento` VALUES ('6', 'test', 'bla bla', '2014-02-08', 'admin', null);

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `domicilio` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idventa` int(10) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `FK_idVenta_cliente_idx` (`idventa`),
  CONSTRAINT `FK_idVenta_cliente` FOREIGN KEY (`idventa`) REFERENCES `venta_detalle` (`idventa_detalle`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES ('1', 'Christian castillo', 'Boulevard nuevo hidalgo #515', '3782002', 'Tlanchinol', '1');
INSERT INTO `cliente` VALUES ('2', 'Christian Castillo', 'Nicolas Flores #7', '3782008', 'Chapulhuacan', '2');
INSERT INTO `cliente` VALUES ('3', 'Paola divanny', 'Juan Escutia #113', '7711297853', 'Chapulhuacan', '3');
INSERT INTO `cliente` VALUES ('4', 'Paola divanny', 'Juan Escutia #113', '7711297853', 'Chapulhuacan', '4');
INSERT INTO `cliente` VALUES ('5', 'Paola divanny', 'Juan Escutia #113', '7711297853', 'Chapulhuacan', '5');
INSERT INTO `cliente` VALUES ('6', 'Jose Cruz Ramirez', 'Juan escutia algo', '7712300052', 'Tlanchinol', '7');
INSERT INTO `cliente` VALUES ('7', 'Jose Cruz Ramirez', 'Juan escutia algo', '7712300052', 'Tlanchinol', '8');
INSERT INTO `cliente` VALUES ('8', '', '', '', 'Chapulhuacan', '9');
INSERT INTO `cliente` VALUES ('9', '', '', '', 'Tlanchinol', '10');
INSERT INTO `cliente` VALUES ('10', '', '', '', 'Tlanchinol', '11');
INSERT INTO `cliente` VALUES ('11', '', '', '', 'Tlanchinol', '12');
INSERT INTO `cliente` VALUES ('12', '', '', '', 'Chapulhuacan', '13');
INSERT INTO `cliente` VALUES ('13', '', '', '', 'Tlanchinol', '14');
INSERT INTO `cliente` VALUES ('14', '', '', '', 'Tlanchinol', '15');
INSERT INTO `cliente` VALUES ('15', '', '', '', 'Chapulhuacan', '16');
INSERT INTO `cliente` VALUES ('16', '', '', '', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('17', 'Juan Perez Robles', 'sdfg', 'sdf', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('18', 'Juanito X', '', '', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('19', 'Juanito Y', '', '', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('20', 'dsfsdf', 'sdfsdfdsf', 'dsfsdf', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('21', 'Fulanito de tal por cual', 'Sin nombre, Col. sin nombre', '551234567', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('22', 'juanito', '', '987', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('23', 'juanito', '', '987', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('24', 'juanito', '', '987', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('25', 'juanito', '', '987', 'Chapulhuacan', null);
INSERT INTO `cliente` VALUES ('26', 'juanito', '', '987', 'Chapulhuacan', null);

-- ----------------------------
-- Table structure for cliente_garantia
-- ----------------------------
DROP TABLE IF EXISTS `cliente_garantia`;
CREATE TABLE `cliente_garantia` (
  `idCliente_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono_contacto` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idequipo_garantia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente_garantia`),
  KEY `idequipo_garantia_idx` (`idequipo_garantia`) USING BTREE,
  CONSTRAINT `cliente_garantia_ibfk_1` FOREIGN KEY (`idequipo_garantia`) REFERENCES `equipo_garantia` (`idequipo_garantia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Datos con clientes que metieron sus celulares a garantia';

-- ----------------------------
-- Records of cliente_garantia
-- ----------------------------
INSERT INTO `cliente_garantia` VALUES ('8', 'Christian Castillo', '771 214 9235', '8');
INSERT INTO `cliente_garantia` VALUES ('9', 'Christian Castillo', '771 214 9235', '9');
INSERT INTO `cliente_garantia` VALUES ('10', 'Paola Divanny', '771 129 7853', '10');
INSERT INTO `cliente_garantia` VALUES ('14', 'Jose pérez', '55512345', '14');
INSERT INTO `cliente_garantia` VALUES ('16', 'Christian Castillo', '771 214 9235', '16');
INSERT INTO `cliente_garantia` VALUES ('17', 'Christian Castillo', '771 214 9235', '17');
INSERT INTO `cliente_garantia` VALUES ('18', 'Paola Divanny', '7711297853', '18');
INSERT INTO `cliente_garantia` VALUES ('19', 'Paola Divanny', '7711297853', '19');
INSERT INTO `cliente_garantia` VALUES ('22', 'Citlali Ramirez', '7751215578', '22');
INSERT INTO `cliente_garantia` VALUES ('23', 'Jonathan Salas Hernandez', '771 532 0101', '23');
INSERT INTO `cliente_garantia` VALUES ('24', 'Test person', 'Not', '24');
INSERT INTO `cliente_garantia` VALUES ('25', 'juanito robles', '7712111', '25');

-- ----------------------------
-- Table structure for cliente_reparacion
-- ----------------------------
DROP TABLE IF EXISTS `cliente_reparacion`;
CREATE TABLE `cliente_reparacion` (
  `idCliente_reparacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono_contacto` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idequipo_reparacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente_reparacion`),
  KEY `idequipo_reparacion_idx` (`idequipo_reparacion`) USING BTREE,
  CONSTRAINT `cliente_reparacion_ibfk_1` FOREIGN KEY (`idequipo_reparacion`) REFERENCES `equipo_reparacion` (`idequipo_reparacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='clientes con equipos en reparacion';

-- ----------------------------
-- Records of cliente_reparacion
-- ----------------------------
INSERT INTO `cliente_reparacion` VALUES ('21', 'Yo', 'w234234', '23');
INSERT INTO `cliente_reparacion` VALUES ('22', 'Yo', 'w234234', '24');

-- ----------------------------
-- Table structure for codigo_recarga
-- ----------------------------
DROP TABLE IF EXISTS `codigo_recarga`;
CREATE TABLE `codigo_recarga` (
  `idcodigo_recarga` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_recarga` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `celular` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcodigo_recarga`)
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of codigo_recarga
-- ----------------------------
INSERT INTO `codigo_recarga` VALUES ('1', null, null, null);
INSERT INTO `codigo_recarga` VALUES ('2', '9001350', '7712149235', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('3', '9005200', '111111114', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('4', '9005000', '7712149237', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('5', '9002960', '7711234567', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('6', '9003160', '7712149239', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('7', '9003040', '7712149240', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('8', '9001700', '7712149241', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('9', '9003290', '7712149242', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('10', '9003310', '7712149243', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('11', '9009400', '7712149244', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('12', '9001050', '7712149245', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('13', '9001540', '7712149246', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('14', '9003800', '0', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('15', '9001400', '7712149250', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('16', '9001860', '7712149252', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('17', '9001500', '7712149254', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('18', '9001270', '7712149256', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('19', '9007000', '7712149258', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('20', '9001340', '77123455', 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('21', '9002720', '77123457', 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('22', '9005900', '771234599', 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('23', '9003670', '7712341001', 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('24', '9002600', '7711234568', 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('25', '9003920', '1,2,3', 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('26', '9005600', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('27', '9003170', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('28', '9004000', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('29', '9002220', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('30', '9001820', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('31', '9001710', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('32', '9002870', '7712149235', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('33', '9004600', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('34', '9006600', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('35', '9002330', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('36', '9003370', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('37', '9003650', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('38', '9009900', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('39', '9001850', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('40', '9002580', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('41', '9009000', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('42', '9002660', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('43', '9001980', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('44', '9003700', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('45', '9003080', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('46', '9004100', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('47', '9001910', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('48', '9003110', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('49', '9008200', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('50', '9009900', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('51', '9001550', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('52', '9005000', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('53', '9007800', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('54', '9002770', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('55', '9001570', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('56', '9002700', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('57', '9002580', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('58', '9003450', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('59', '9003490', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('60', '9001400', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('61', '9002800', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('62', '9002150', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('63', '9001950', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('64', '9004000', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('65', '9001040', null, 'Chapulhuacan');
INSERT INTO `codigo_recarga` VALUES ('66', '9003410', '1234578', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('67', '9002430', '91011121314', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('68', '9002960', '7711234567', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('69', '9002600', '7711234568', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('70', '9003470', '7711234569', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('71', '9002450', '7711234570', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('72', '9002430', '91011121314', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('73', '9003900', '7711234571', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('74', '9003400', '7711234572', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('75', '9003660', '7711234575', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('76', '9003620', '7711234579', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('77', '9003800', '0', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('78', '9002050', '1', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('79', '9002810', '11111111', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('80', '9002400', '111111112', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('81', '9002380', '111111113', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('82', '9005200', '111111114', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('83', '9002870', '7712149235', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('84', '9002970', '1,2,3', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('85', '9003740', '4,4,4,4', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('86', '9003510', '1,2,3\r\n1,2,2', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('87', '9002500', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('88', '9003550', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('89', '9001640', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('90', '9002050', '1', null);
INSERT INTO `codigo_recarga` VALUES ('91', '9003050', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('92', '9002460', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('93', '9002140', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('94', '9003860', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('95', '9001240', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('96', '9001120', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('97', '9003800', '0', null);
INSERT INTO `codigo_recarga` VALUES ('98', '9001000', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('99', '9007500', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('100', '9005600', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('101', '9001790', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('102', '9001920', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('103', '9008900', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('104', '9001550', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('105', '9002260', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('106', '9003700', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('107', '9001530', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('108', '9001990', null, 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('109', '9003120', null, null);
INSERT INTO `codigo_recarga` VALUES ('110', '9003860', null, null);
INSERT INTO `codigo_recarga` VALUES ('111', '9005100', null, null);
INSERT INTO `codigo_recarga` VALUES ('112', '9007000', null, null);
INSERT INTO `codigo_recarga` VALUES ('113', '9001540', null, null);
INSERT INTO `codigo_recarga` VALUES ('114', '9008700', null, null);
INSERT INTO `codigo_recarga` VALUES ('115', '9006500', null, null);
INSERT INTO `codigo_recarga` VALUES ('116', '9001300', null, null);
INSERT INTO `codigo_recarga` VALUES ('117', '9001980', null, null);
INSERT INTO `codigo_recarga` VALUES ('118', '9001400', null, null);
INSERT INTO `codigo_recarga` VALUES ('119', '9006800', null, null);
INSERT INTO `codigo_recarga` VALUES ('120', '9003390', null, null);
INSERT INTO `codigo_recarga` VALUES ('121', '9003510', '1,2,3\r\n1,2,2', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('122', '9001900', null, null);
INSERT INTO `codigo_recarga` VALUES ('123', '9001060', null, null);
INSERT INTO `codigo_recarga` VALUES ('124', '9006900', null, null);
INSERT INTO `codigo_recarga` VALUES ('125', '9002610', null, null);
INSERT INTO `codigo_recarga` VALUES ('126', '9002570', null, null);
INSERT INTO `codigo_recarga` VALUES ('127', '9001130', null, null);
INSERT INTO `codigo_recarga` VALUES ('128', '9003330', null, null);
INSERT INTO `codigo_recarga` VALUES ('129', '9001000', null, null);
INSERT INTO `codigo_recarga` VALUES ('130', '9002700', null, null);
INSERT INTO `codigo_recarga` VALUES ('131', '9005900', '771234599', null);
INSERT INTO `codigo_recarga` VALUES ('132', '9002040', null, null);
INSERT INTO `codigo_recarga` VALUES ('133', '9001980', null, null);
INSERT INTO `codigo_recarga` VALUES ('134', '9001720', null, null);
INSERT INTO `codigo_recarga` VALUES ('135', '9003560', null, null);
INSERT INTO `codigo_recarga` VALUES ('136', '9001280', null, null);
INSERT INTO `codigo_recarga` VALUES ('137', '9008000', null, null);
INSERT INTO `codigo_recarga` VALUES ('138', '9003820', null, null);
INSERT INTO `codigo_recarga` VALUES ('139', '9004300', null, null);
INSERT INTO `codigo_recarga` VALUES ('140', '9001210', null, null);
INSERT INTO `codigo_recarga` VALUES ('141', '9001270', null, null);
INSERT INTO `codigo_recarga` VALUES ('142', '9005000', null, null);
INSERT INTO `codigo_recarga` VALUES ('143', '9003680', null, null);
INSERT INTO `codigo_recarga` VALUES ('144', '9001480', null, null);
INSERT INTO `codigo_recarga` VALUES ('145', '9002800', null, null);
INSERT INTO `codigo_recarga` VALUES ('146', '9002150', null, null);
INSERT INTO `codigo_recarga` VALUES ('147', '9002810', '11111111', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('148', '9006500', null, null);
INSERT INTO `codigo_recarga` VALUES ('149', '9006600', null, null);
INSERT INTO `codigo_recarga` VALUES ('150', '9008000', null, null);
INSERT INTO `codigo_recarga` VALUES ('151', '9006300', null, null);
INSERT INTO `codigo_recarga` VALUES ('152', '9002370', null, null);
INSERT INTO `codigo_recarga` VALUES ('153', '9004000', null, null);
INSERT INTO `codigo_recarga` VALUES ('154', '9001610', null, null);
INSERT INTO `codigo_recarga` VALUES ('155', '9002010', null, null);
INSERT INTO `codigo_recarga` VALUES ('156', '9001100', null, null);
INSERT INTO `codigo_recarga` VALUES ('157', '9001330', null, null);
INSERT INTO `codigo_recarga` VALUES ('158', '9001940', null, null);
INSERT INTO `codigo_recarga` VALUES ('159', '9003480', null, null);
INSERT INTO `codigo_recarga` VALUES ('160', '9001450', null, null);
INSERT INTO `codigo_recarga` VALUES ('161', '9001620', null, null);
INSERT INTO `codigo_recarga` VALUES ('162', '9005500', null, null);
INSERT INTO `codigo_recarga` VALUES ('163', '9005200', '111111114', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('164', '9001800', null, null);
INSERT INTO `codigo_recarga` VALUES ('165', '9002770', null, null);
INSERT INTO `codigo_recarga` VALUES ('166', '9002290', null, null);
INSERT INTO `codigo_recarga` VALUES ('167', '9003120', null, null);
INSERT INTO `codigo_recarga` VALUES ('168', '9002550', null, null);
INSERT INTO `codigo_recarga` VALUES ('169', '9001600', null, null);
INSERT INTO `codigo_recarga` VALUES ('170', '9008200', null, null);
INSERT INTO `codigo_recarga` VALUES ('171', '9002520', null, null);
INSERT INTO `codigo_recarga` VALUES ('172', '9001600', null, null);
INSERT INTO `codigo_recarga` VALUES ('173', '9003290', null, null);
INSERT INTO `codigo_recarga` VALUES ('174', '9002670', null, null);
INSERT INTO `codigo_recarga` VALUES ('175', '9001360', null, null);
INSERT INTO `codigo_recarga` VALUES ('176', '9001160', null, null);
INSERT INTO `codigo_recarga` VALUES ('177', '9002510', null, null);
INSERT INTO `codigo_recarga` VALUES ('178', '9003480', null, null);
INSERT INTO `codigo_recarga` VALUES ('179', '9006000', null, null);
INSERT INTO `codigo_recarga` VALUES ('180', '9002700', null, null);
INSERT INTO `codigo_recarga` VALUES ('181', '9003780', null, null);
INSERT INTO `codigo_recarga` VALUES ('182', '9007900', null, null);
INSERT INTO `codigo_recarga` VALUES ('183', '9001190', null, null);
INSERT INTO `codigo_recarga` VALUES ('184', '9001800', null, null);
INSERT INTO `codigo_recarga` VALUES ('185', '9002340', null, null);
INSERT INTO `codigo_recarga` VALUES ('186', '9008200', null, null);
INSERT INTO `codigo_recarga` VALUES ('187', '9003730', null, null);
INSERT INTO `codigo_recarga` VALUES ('188', '9003320', null, null);
INSERT INTO `codigo_recarga` VALUES ('189', '9002740', null, null);
INSERT INTO `codigo_recarga` VALUES ('190', '9001710', null, null);
INSERT INTO `codigo_recarga` VALUES ('191', '9002440', null, null);
INSERT INTO `codigo_recarga` VALUES ('192', '9003840', null, null);
INSERT INTO `codigo_recarga` VALUES ('193', '9002170', null, null);
INSERT INTO `codigo_recarga` VALUES ('194', '9006100', null, null);
INSERT INTO `codigo_recarga` VALUES ('195', '9002430', '91011121314', null);
INSERT INTO `codigo_recarga` VALUES ('196', '9002830', null, null);
INSERT INTO `codigo_recarga` VALUES ('197', '9002560', null, null);
INSERT INTO `codigo_recarga` VALUES ('198', '9001150', null, null);
INSERT INTO `codigo_recarga` VALUES ('199', '9002600', '7711234568', null);
INSERT INTO `codigo_recarga` VALUES ('200', '9001850', null, null);
INSERT INTO `codigo_recarga` VALUES ('201', '9002270', null, null);
INSERT INTO `codigo_recarga` VALUES ('202', '9002560', null, null);
INSERT INTO `codigo_recarga` VALUES ('203', '9003270', null, null);
INSERT INTO `codigo_recarga` VALUES ('204', '9002030', null, null);
INSERT INTO `codigo_recarga` VALUES ('205', '9003040', null, null);
INSERT INTO `codigo_recarga` VALUES ('206', '9001120', null, null);
INSERT INTO `codigo_recarga` VALUES ('207', '9002860', null, null);
INSERT INTO `codigo_recarga` VALUES ('208', '9003860', null, null);
INSERT INTO `codigo_recarga` VALUES ('209', '9008000', null, null);
INSERT INTO `codigo_recarga` VALUES ('210', '9003080', null, null);
INSERT INTO `codigo_recarga` VALUES ('211', '9005700', null, null);
INSERT INTO `codigo_recarga` VALUES ('212', '9001720', null, null);
INSERT INTO `codigo_recarga` VALUES ('213', '9002160', null, null);
INSERT INTO `codigo_recarga` VALUES ('214', '9001800', null, null);
INSERT INTO `codigo_recarga` VALUES ('215', '9003520', null, null);
INSERT INTO `codigo_recarga` VALUES ('216', '9001100', null, null);
INSERT INTO `codigo_recarga` VALUES ('217', '9001180', null, null);
INSERT INTO `codigo_recarga` VALUES ('218', '9002800', null, null);
INSERT INTO `codigo_recarga` VALUES ('219', '9001350', null, null);
INSERT INTO `codigo_recarga` VALUES ('220', '9003450', null, null);
INSERT INTO `codigo_recarga` VALUES ('221', '9001100', null, null);
INSERT INTO `codigo_recarga` VALUES ('222', '9001680', null, null);
INSERT INTO `codigo_recarga` VALUES ('223', '9005100', null, null);
INSERT INTO `codigo_recarga` VALUES ('224', '9004000', null, null);
INSERT INTO `codigo_recarga` VALUES ('225', '9002810', '11111111', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('226', '9003200', null, null);
INSERT INTO `codigo_recarga` VALUES ('227', '9003540', null, null);
INSERT INTO `codigo_recarga` VALUES ('228', '9006700', null, null);
INSERT INTO `codigo_recarga` VALUES ('229', '9002560', null, null);
INSERT INTO `codigo_recarga` VALUES ('230', '9001840', null, null);
INSERT INTO `codigo_recarga` VALUES ('231', '9003280', null, null);
INSERT INTO `codigo_recarga` VALUES ('232', '9003240', null, null);
INSERT INTO `codigo_recarga` VALUES ('233', '9002890', null, null);
INSERT INTO `codigo_recarga` VALUES ('234', '9001310', null, null);
INSERT INTO `codigo_recarga` VALUES ('235', '9003480', null, null);
INSERT INTO `codigo_recarga` VALUES ('236', '9003930', null, null);
INSERT INTO `codigo_recarga` VALUES ('237', '9003170', null, null);
INSERT INTO `codigo_recarga` VALUES ('238', '9002690', null, null);
INSERT INTO `codigo_recarga` VALUES ('239', '9001830', null, null);
INSERT INTO `codigo_recarga` VALUES ('240', '9003270', null, null);
INSERT INTO `codigo_recarga` VALUES ('241', '9001620', null, null);
INSERT INTO `codigo_recarga` VALUES ('242', '9002230', null, null);
INSERT INTO `codigo_recarga` VALUES ('243', '9005800', null, null);
INSERT INTO `codigo_recarga` VALUES ('244', '9005300', null, null);
INSERT INTO `codigo_recarga` VALUES ('245', '9001400', null, null);
INSERT INTO `codigo_recarga` VALUES ('246', '9007200', null, null);
INSERT INTO `codigo_recarga` VALUES ('247', '9003090', null, null);
INSERT INTO `codigo_recarga` VALUES ('248', '9009800', null, null);
INSERT INTO `codigo_recarga` VALUES ('249', '9002580', null, null);
INSERT INTO `codigo_recarga` VALUES ('250', '9001770', null, null);
INSERT INTO `codigo_recarga` VALUES ('251', '9003300', null, null);
INSERT INTO `codigo_recarga` VALUES ('252', '9002400', '111111112', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('253', '9003500', null, null);
INSERT INTO `codigo_recarga` VALUES ('254', '9001700', null, null);
INSERT INTO `codigo_recarga` VALUES ('255', '9004900', null, null);
INSERT INTO `codigo_recarga` VALUES ('256', '9002600', '7711234568', null);
INSERT INTO `codigo_recarga` VALUES ('257', '9003800', '0', null);
INSERT INTO `codigo_recarga` VALUES ('258', '9002120', null, null);
INSERT INTO `codigo_recarga` VALUES ('259', '9003700', null, null);
INSERT INTO `codigo_recarga` VALUES ('260', '9003420', null, null);
INSERT INTO `codigo_recarga` VALUES ('261', '9002780', null, null);
INSERT INTO `codigo_recarga` VALUES ('262', '9002010', null, null);
INSERT INTO `codigo_recarga` VALUES ('263', '9008000', null, null);
INSERT INTO `codigo_recarga` VALUES ('264', '9002310', null, null);
INSERT INTO `codigo_recarga` VALUES ('265', '9003570', null, null);
INSERT INTO `codigo_recarga` VALUES ('266', '9002380', '111111113', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('267', '9001240', null, null);
INSERT INTO `codigo_recarga` VALUES ('268', '9003300', null, null);
INSERT INTO `codigo_recarga` VALUES ('269', '9003170', null, null);
INSERT INTO `codigo_recarga` VALUES ('270', '9002260', null, null);
INSERT INTO `codigo_recarga` VALUES ('271', '9002100', null, null);
INSERT INTO `codigo_recarga` VALUES ('272', '9002650', null, null);
INSERT INTO `codigo_recarga` VALUES ('273', '9007500', null, null);
INSERT INTO `codigo_recarga` VALUES ('274', '9001260', null, null);
INSERT INTO `codigo_recarga` VALUES ('275', '9001810', null, null);
INSERT INTO `codigo_recarga` VALUES ('276', '9002510', null, null);
INSERT INTO `codigo_recarga` VALUES ('277', '9001950', null, null);
INSERT INTO `codigo_recarga` VALUES ('278', '9001180', null, null);
INSERT INTO `codigo_recarga` VALUES ('279', '9001660', null, null);
INSERT INTO `codigo_recarga` VALUES ('280', '9001190', null, null);
INSERT INTO `codigo_recarga` VALUES ('281', '9002010', null, null);
INSERT INTO `codigo_recarga` VALUES ('282', '9001400', null, null);
INSERT INTO `codigo_recarga` VALUES ('283', '9003340', null, null);
INSERT INTO `codigo_recarga` VALUES ('284', '9003950', null, null);
INSERT INTO `codigo_recarga` VALUES ('285', '9003800', '0', null);
INSERT INTO `codigo_recarga` VALUES ('286', '9001690', null, null);
INSERT INTO `codigo_recarga` VALUES ('287', '9001470', null, null);
INSERT INTO `codigo_recarga` VALUES ('288', '9003490', null, null);
INSERT INTO `codigo_recarga` VALUES ('289', '9003580', null, null);
INSERT INTO `codigo_recarga` VALUES ('290', '9002240', null, null);
INSERT INTO `codigo_recarga` VALUES ('291', '9007400', null, null);
INSERT INTO `codigo_recarga` VALUES ('292', '9003760', null, null);
INSERT INTO `codigo_recarga` VALUES ('293', '9002080', null, null);
INSERT INTO `codigo_recarga` VALUES ('294', '9001320', null, null);
INSERT INTO `codigo_recarga` VALUES ('295', '9001080', null, null);
INSERT INTO `codigo_recarga` VALUES ('296', '9002260', null, null);
INSERT INTO `codigo_recarga` VALUES ('297', '9003690', null, null);
INSERT INTO `codigo_recarga` VALUES ('298', '9001500', null, null);
INSERT INTO `codigo_recarga` VALUES ('299', '9003960', null, null);
INSERT INTO `codigo_recarga` VALUES ('300', '9002690', null, null);
INSERT INTO `codigo_recarga` VALUES ('301', '9003330', null, null);
INSERT INTO `codigo_recarga` VALUES ('302', '9002800', null, null);
INSERT INTO `codigo_recarga` VALUES ('303', '9002600', '7711234568', null);
INSERT INTO `codigo_recarga` VALUES ('304', '9002810', '11111111', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('305', '9001760', null, null);
INSERT INTO `codigo_recarga` VALUES ('306', '9003570', null, null);
INSERT INTO `codigo_recarga` VALUES ('307', '9007400', null, null);
INSERT INTO `codigo_recarga` VALUES ('308', '9003630', null, null);
INSERT INTO `codigo_recarga` VALUES ('309', '9003040', null, null);
INSERT INTO `codigo_recarga` VALUES ('310', '9009100', null, null);
INSERT INTO `codigo_recarga` VALUES ('311', '9003350', null, null);
INSERT INTO `codigo_recarga` VALUES ('312', '9002680', null, null);
INSERT INTO `codigo_recarga` VALUES ('313', '9007500', null, null);
INSERT INTO `codigo_recarga` VALUES ('314', '9003300', null, null);
INSERT INTO `codigo_recarga` VALUES ('315', '9005500', null, null);
INSERT INTO `codigo_recarga` VALUES ('316', '9003420', null, null);
INSERT INTO `codigo_recarga` VALUES ('317', '9007100', null, null);
INSERT INTO `codigo_recarga` VALUES ('318', '9001640', null, null);
INSERT INTO `codigo_recarga` VALUES ('319', '9002870', '7712149235', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('320', '9001640', null, null);
INSERT INTO `codigo_recarga` VALUES ('321', '9008800', null, null);
INSERT INTO `codigo_recarga` VALUES ('322', '9003480', null, null);
INSERT INTO `codigo_recarga` VALUES ('323', '9003820', null, null);
INSERT INTO `codigo_recarga` VALUES ('324', '9002900', null, null);
INSERT INTO `codigo_recarga` VALUES ('325', '9002100', null, null);
INSERT INTO `codigo_recarga` VALUES ('326', '9001540', null, null);
INSERT INTO `codigo_recarga` VALUES ('327', '9003900', '7711234571', null);
INSERT INTO `codigo_recarga` VALUES ('328', '9001820', null, null);
INSERT INTO `codigo_recarga` VALUES ('329', '9004500', null, null);
INSERT INTO `codigo_recarga` VALUES ('330', '9002070', null, null);
INSERT INTO `codigo_recarga` VALUES ('331', '9003800', '0', null);
INSERT INTO `codigo_recarga` VALUES ('332', '9003220', null, null);
INSERT INTO `codigo_recarga` VALUES ('333', '9007400', null, null);
INSERT INTO `codigo_recarga` VALUES ('334', '9003310', null, null);
INSERT INTO `codigo_recarga` VALUES ('335', '9005700', null, null);
INSERT INTO `codigo_recarga` VALUES ('336', '9002130', null, null);
INSERT INTO `codigo_recarga` VALUES ('337', '9004000', null, null);
INSERT INTO `codigo_recarga` VALUES ('338', '9003620', '7711234579', null);
INSERT INTO `codigo_recarga` VALUES ('339', '9001190', null, null);
INSERT INTO `codigo_recarga` VALUES ('340', '9003800', '0', null);
INSERT INTO `codigo_recarga` VALUES ('341', '9002730', null, null);
INSERT INTO `codigo_recarga` VALUES ('342', '9003690', null, null);
INSERT INTO `codigo_recarga` VALUES ('343', '9002540', null, null);
INSERT INTO `codigo_recarga` VALUES ('344', '9002990', null, null);
INSERT INTO `codigo_recarga` VALUES ('345', '9001900', null, null);
INSERT INTO `codigo_recarga` VALUES ('346', '9002300', null, null);
INSERT INTO `codigo_recarga` VALUES ('347', '9003300', null, null);
INSERT INTO `codigo_recarga` VALUES ('348', '9002060', null, null);
INSERT INTO `codigo_recarga` VALUES ('349', '9002740', null, null);
INSERT INTO `codigo_recarga` VALUES ('350', '9001610', null, null);
INSERT INTO `codigo_recarga` VALUES ('351', '9004300', null, null);
INSERT INTO `codigo_recarga` VALUES ('352', '9001240', null, null);
INSERT INTO `codigo_recarga` VALUES ('353', '9005800', null, null);
INSERT INTO `codigo_recarga` VALUES ('354', '9008400', null, null);
INSERT INTO `codigo_recarga` VALUES ('355', '9004000', null, null);
INSERT INTO `codigo_recarga` VALUES ('356', '9002660', null, null);
INSERT INTO `codigo_recarga` VALUES ('357', '9003300', null, null);
INSERT INTO `codigo_recarga` VALUES ('358', '9002470', null, null);
INSERT INTO `codigo_recarga` VALUES ('359', '9001270', null, null);
INSERT INTO `codigo_recarga` VALUES ('360', '9003280', null, null);
INSERT INTO `codigo_recarga` VALUES ('361', '9008400', null, null);
INSERT INTO `codigo_recarga` VALUES ('362', '9006500', null, null);
INSERT INTO `codigo_recarga` VALUES ('363', '9005100', null, null);
INSERT INTO `codigo_recarga` VALUES ('364', '9005800', null, null);
INSERT INTO `codigo_recarga` VALUES ('365', '9001330', null, null);
INSERT INTO `codigo_recarga` VALUES ('366', '9002870', '7712149235', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('367', '9003000', null, null);
INSERT INTO `codigo_recarga` VALUES ('368', '9005500', null, null);
INSERT INTO `codigo_recarga` VALUES ('369', '9002800', null, null);
INSERT INTO `codigo_recarga` VALUES ('370', '9002930', null, null);
INSERT INTO `codigo_recarga` VALUES ('371', '9002260', null, null);
INSERT INTO `codigo_recarga` VALUES ('372', '9001850', null, null);
INSERT INTO `codigo_recarga` VALUES ('373', '9001890', null, null);
INSERT INTO `codigo_recarga` VALUES ('374', '9003370', null, null);
INSERT INTO `codigo_recarga` VALUES ('375', '9003960', null, null);
INSERT INTO `codigo_recarga` VALUES ('376', '9003200', null, null);
INSERT INTO `codigo_recarga` VALUES ('377', '9002360', null, null);
INSERT INTO `codigo_recarga` VALUES ('378', '9009800', null, null);
INSERT INTO `codigo_recarga` VALUES ('379', '9001280', null, null);
INSERT INTO `codigo_recarga` VALUES ('380', '9001830', null, null);
INSERT INTO `codigo_recarga` VALUES ('381', '9003200', null, null);
INSERT INTO `codigo_recarga` VALUES ('382', '9001680', null, null);
INSERT INTO `codigo_recarga` VALUES ('383', '9002200', null, null);
INSERT INTO `codigo_recarga` VALUES ('384', '9003990', null, null);
INSERT INTO `codigo_recarga` VALUES ('385', '9002790', null, null);
INSERT INTO `codigo_recarga` VALUES ('386', '9003700', null, null);
INSERT INTO `codigo_recarga` VALUES ('387', '9003190', null, null);
INSERT INTO `codigo_recarga` VALUES ('388', '9001370', null, null);
INSERT INTO `codigo_recarga` VALUES ('389', '9009600', null, null);
INSERT INTO `codigo_recarga` VALUES ('390', '9002000', null, null);
INSERT INTO `codigo_recarga` VALUES ('391', '9006100', null, null);
INSERT INTO `codigo_recarga` VALUES ('392', '9005100', null, null);
INSERT INTO `codigo_recarga` VALUES ('393', '9001670', null, null);
INSERT INTO `codigo_recarga` VALUES ('394', '9001450', null, null);
INSERT INTO `codigo_recarga` VALUES ('395', '9003720', null, null);
INSERT INTO `codigo_recarga` VALUES ('396', '9001020', null, null);
INSERT INTO `codigo_recarga` VALUES ('397', '9003830', null, null);
INSERT INTO `codigo_recarga` VALUES ('398', '9006200', null, null);
INSERT INTO `codigo_recarga` VALUES ('399', '9001820', null, null);
INSERT INTO `codigo_recarga` VALUES ('400', '9003580', null, null);
INSERT INTO `codigo_recarga` VALUES ('401', '9001070', null, null);
INSERT INTO `codigo_recarga` VALUES ('402', '9002080', null, null);
INSERT INTO `codigo_recarga` VALUES ('403', '9002390', null, null);
INSERT INTO `codigo_recarga` VALUES ('404', '9002680', null, null);
INSERT INTO `codigo_recarga` VALUES ('405', '9005700', null, null);
INSERT INTO `codigo_recarga` VALUES ('406', '9002570', null, null);
INSERT INTO `codigo_recarga` VALUES ('407', '9001720', null, null);
INSERT INTO `codigo_recarga` VALUES ('408', '9003490', null, null);
INSERT INTO `codigo_recarga` VALUES ('409', '9002180', null, null);
INSERT INTO `codigo_recarga` VALUES ('410', '9003550', null, null);
INSERT INTO `codigo_recarga` VALUES ('411', '9006200', null, null);
INSERT INTO `codigo_recarga` VALUES ('412', '9002970', '1,2,3', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('413', '9002570', null, null);
INSERT INTO `codigo_recarga` VALUES ('414', '9003800', '0', null);
INSERT INTO `codigo_recarga` VALUES ('415', '9002290', null, null);
INSERT INTO `codigo_recarga` VALUES ('416', '9001960', null, null);
INSERT INTO `codigo_recarga` VALUES ('417', '9002310', null, null);
INSERT INTO `codigo_recarga` VALUES ('418', '9003050', null, null);
INSERT INTO `codigo_recarga` VALUES ('419', '9007600', null, null);
INSERT INTO `codigo_recarga` VALUES ('420', '9002980', null, null);
INSERT INTO `codigo_recarga` VALUES ('421', '9002180', null, null);
INSERT INTO `codigo_recarga` VALUES ('422', '9001220', null, null);
INSERT INTO `codigo_recarga` VALUES ('423', '9002830', null, null);
INSERT INTO `codigo_recarga` VALUES ('424', '9002780', null, null);
INSERT INTO `codigo_recarga` VALUES ('425', '9002710', null, null);
INSERT INTO `codigo_recarga` VALUES ('426', '9003940', null, null);
INSERT INTO `codigo_recarga` VALUES ('427', '9002220', null, null);
INSERT INTO `codigo_recarga` VALUES ('428', '9009200', null, null);
INSERT INTO `codigo_recarga` VALUES ('429', '9003860', null, null);
INSERT INTO `codigo_recarga` VALUES ('430', '9004800', null, null);
INSERT INTO `codigo_recarga` VALUES ('431', '9001600', null, null);
INSERT INTO `codigo_recarga` VALUES ('432', '9005800', null, null);
INSERT INTO `codigo_recarga` VALUES ('433', '9001650', null, null);
INSERT INTO `codigo_recarga` VALUES ('434', '9002950', null, null);
INSERT INTO `codigo_recarga` VALUES ('435', '9003860', null, null);
INSERT INTO `codigo_recarga` VALUES ('436', '9002690', null, null);
INSERT INTO `codigo_recarga` VALUES ('437', '9003840', null, null);
INSERT INTO `codigo_recarga` VALUES ('438', '9002500', null, null);
INSERT INTO `codigo_recarga` VALUES ('439', '9003370', null, null);
INSERT INTO `codigo_recarga` VALUES ('440', '9003760', null, null);
INSERT INTO `codigo_recarga` VALUES ('441', '9003500', null, null);
INSERT INTO `codigo_recarga` VALUES ('442', '9001680', null, null);
INSERT INTO `codigo_recarga` VALUES ('443', '9008000', null, null);
INSERT INTO `codigo_recarga` VALUES ('444', '9003600', null, null);
INSERT INTO `codigo_recarga` VALUES ('445', '9002400', '111111112', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('446', '9001730', null, null);
INSERT INTO `codigo_recarga` VALUES ('447', '9001510', null, null);
INSERT INTO `codigo_recarga` VALUES ('448', '9006100', null, null);
INSERT INTO `codigo_recarga` VALUES ('449', '9001210', null, null);
INSERT INTO `codigo_recarga` VALUES ('450', '9002770', null, null);
INSERT INTO `codigo_recarga` VALUES ('451', '9001630', null, null);
INSERT INTO `codigo_recarga` VALUES ('452', '9003850', null, null);
INSERT INTO `codigo_recarga` VALUES ('453', '9002430', '91011121314', null);
INSERT INTO `codigo_recarga` VALUES ('454', '9001430', null, null);
INSERT INTO `codigo_recarga` VALUES ('455', '9003380', null, null);
INSERT INTO `codigo_recarga` VALUES ('456', '9002580', null, null);
INSERT INTO `codigo_recarga` VALUES ('457', '9009400', null, null);
INSERT INTO `codigo_recarga` VALUES ('458', '9001230', null, null);
INSERT INTO `codigo_recarga` VALUES ('459', '9005500', null, null);
INSERT INTO `codigo_recarga` VALUES ('460', '9001940', null, null);
INSERT INTO `codigo_recarga` VALUES ('461', '9002230', null, null);
INSERT INTO `codigo_recarga` VALUES ('462', '9003190', null, null);
INSERT INTO `codigo_recarga` VALUES ('463', '9001720', null, null);
INSERT INTO `codigo_recarga` VALUES ('464', '9009200', null, null);
INSERT INTO `codigo_recarga` VALUES ('465', '9001040', null, null);
INSERT INTO `codigo_recarga` VALUES ('466', '9003160', null, null);
INSERT INTO `codigo_recarga` VALUES ('467', '9003470', '7711234569', null);
INSERT INTO `codigo_recarga` VALUES ('468', '9004400', null, null);
INSERT INTO `codigo_recarga` VALUES ('469', '9002590', null, null);
INSERT INTO `codigo_recarga` VALUES ('470', '9001460', null, null);
INSERT INTO `codigo_recarga` VALUES ('471', '9001520', null, null);
INSERT INTO `codigo_recarga` VALUES ('472', '9005100', null, null);
INSERT INTO `codigo_recarga` VALUES ('473', '9001160', null, null);
INSERT INTO `codigo_recarga` VALUES ('474', '9003620', '7711234579', null);
INSERT INTO `codigo_recarga` VALUES ('475', '9001040', null, null);
INSERT INTO `codigo_recarga` VALUES ('476', '9001670', null, null);
INSERT INTO `codigo_recarga` VALUES ('477', '9005000', null, null);
INSERT INTO `codigo_recarga` VALUES ('478', '9003810', null, null);
INSERT INTO `codigo_recarga` VALUES ('479', '9006800', null, null);
INSERT INTO `codigo_recarga` VALUES ('480', '9002910', null, null);
INSERT INTO `codigo_recarga` VALUES ('481', '9001770', null, null);
INSERT INTO `codigo_recarga` VALUES ('482', '9003760', null, null);
INSERT INTO `codigo_recarga` VALUES ('483', '9001730', null, null);
INSERT INTO `codigo_recarga` VALUES ('484', '9001160', null, null);
INSERT INTO `codigo_recarga` VALUES ('485', '9002510', null, null);
INSERT INTO `codigo_recarga` VALUES ('486', '9007200', null, null);
INSERT INTO `codigo_recarga` VALUES ('487', '9002850', null, null);
INSERT INTO `codigo_recarga` VALUES ('488', '9002730', null, null);
INSERT INTO `codigo_recarga` VALUES ('489', '9001750', null, null);
INSERT INTO `codigo_recarga` VALUES ('490', '9003260', null, null);
INSERT INTO `codigo_recarga` VALUES ('491', '9001780', null, null);
INSERT INTO `codigo_recarga` VALUES ('492', '9001640', null, null);
INSERT INTO `codigo_recarga` VALUES ('493', '9002980', null, null);
INSERT INTO `codigo_recarga` VALUES ('494', '9002580', null, null);
INSERT INTO `codigo_recarga` VALUES ('495', '9002540', null, null);
INSERT INTO `codigo_recarga` VALUES ('496', '9001230', null, null);
INSERT INTO `codigo_recarga` VALUES ('497', '9002400', '111111112', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('498', '9003930', null, null);
INSERT INTO `codigo_recarga` VALUES ('499', '9003460', null, null);
INSERT INTO `codigo_recarga` VALUES ('500', '9001800', null, null);
INSERT INTO `codigo_recarga` VALUES ('501', '9003670', '7712341001', null);
INSERT INTO `codigo_recarga` VALUES ('502', '9003990', null, null);
INSERT INTO `codigo_recarga` VALUES ('503', '9002540', null, null);
INSERT INTO `codigo_recarga` VALUES ('504', '9001080', null, null);
INSERT INTO `codigo_recarga` VALUES ('505', '9001530', null, null);
INSERT INTO `codigo_recarga` VALUES ('506', '9006700', null, null);
INSERT INTO `codigo_recarga` VALUES ('507', '9001570', null, null);
INSERT INTO `codigo_recarga` VALUES ('508', '9007500', null, null);
INSERT INTO `codigo_recarga` VALUES ('509', '9002280', null, null);
INSERT INTO `codigo_recarga` VALUES ('510', '9003280', null, null);
INSERT INTO `codigo_recarga` VALUES ('511', '9003450', null, null);
INSERT INTO `codigo_recarga` VALUES ('512', '9002560', null, null);
INSERT INTO `codigo_recarga` VALUES ('513', '9002000', null, null);
INSERT INTO `codigo_recarga` VALUES ('514', '9003540', null, null);
INSERT INTO `codigo_recarga` VALUES ('515', '9002150', null, null);
INSERT INTO `codigo_recarga` VALUES ('516', '9003860', null, null);
INSERT INTO `codigo_recarga` VALUES ('517', '9005600', null, null);
INSERT INTO `codigo_recarga` VALUES ('518', '9001260', null, null);
INSERT INTO `codigo_recarga` VALUES ('519', '9001640', null, null);
INSERT INTO `codigo_recarga` VALUES ('520', '9007800', null, null);
INSERT INTO `codigo_recarga` VALUES ('521', '9002290', null, null);
INSERT INTO `codigo_recarga` VALUES ('522', '9003240', null, null);
INSERT INTO `codigo_recarga` VALUES ('523', '9001510', null, null);
INSERT INTO `codigo_recarga` VALUES ('524', '9001520', null, null);
INSERT INTO `codigo_recarga` VALUES ('525', '9003130', null, null);
INSERT INTO `codigo_recarga` VALUES ('526', '9003260', null, null);
INSERT INTO `codigo_recarga` VALUES ('527', '9003310', null, null);
INSERT INTO `codigo_recarga` VALUES ('528', '9003500', null, null);
INSERT INTO `codigo_recarga` VALUES ('529', '9001500', null, null);
INSERT INTO `codigo_recarga` VALUES ('530', '9003680', null, null);
INSERT INTO `codigo_recarga` VALUES ('531', '9001460', null, null);
INSERT INTO `codigo_recarga` VALUES ('532', '9001510', null, null);
INSERT INTO `codigo_recarga` VALUES ('533', '9002490', null, null);
INSERT INTO `codigo_recarga` VALUES ('534', '9004200', null, null);
INSERT INTO `codigo_recarga` VALUES ('535', '9002860', null, null);
INSERT INTO `codigo_recarga` VALUES ('536', '9003190', null, null);
INSERT INTO `codigo_recarga` VALUES ('537', '9002530', null, null);
INSERT INTO `codigo_recarga` VALUES ('538', '9001960', null, null);
INSERT INTO `codigo_recarga` VALUES ('539', '9007900', null, null);
INSERT INTO `codigo_recarga` VALUES ('540', '9007700', null, null);
INSERT INTO `codigo_recarga` VALUES ('541', '9002380', '111111113', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('542', '9002170', null, null);
INSERT INTO `codigo_recarga` VALUES ('543', '9001520', null, null);
INSERT INTO `codigo_recarga` VALUES ('544', '9001580', null, null);
INSERT INTO `codigo_recarga` VALUES ('545', '9001450', null, null);
INSERT INTO `codigo_recarga` VALUES ('546', '9003440', null, null);
INSERT INTO `codigo_recarga` VALUES ('547', '9003020', null, null);
INSERT INTO `codigo_recarga` VALUES ('548', '9001700', null, null);
INSERT INTO `codigo_recarga` VALUES ('549', '9003280', null, null);
INSERT INTO `codigo_recarga` VALUES ('550', '9005000', null, null);
INSERT INTO `codigo_recarga` VALUES ('551', '9002240', null, null);
INSERT INTO `codigo_recarga` VALUES ('552', '9005600', null, null);
INSERT INTO `codigo_recarga` VALUES ('553', '9003240', null, null);
INSERT INTO `codigo_recarga` VALUES ('554', '9002000', null, null);
INSERT INTO `codigo_recarga` VALUES ('555', '9004000', null, null);
INSERT INTO `codigo_recarga` VALUES ('556', '9004200', null, null);
INSERT INTO `codigo_recarga` VALUES ('557', '9002280', null, null);
INSERT INTO `codigo_recarga` VALUES ('558', '9002690', null, null);
INSERT INTO `codigo_recarga` VALUES ('559', '9007500', null, null);
INSERT INTO `codigo_recarga` VALUES ('560', '9001470', null, null);
INSERT INTO `codigo_recarga` VALUES ('561', '9003710', null, null);
INSERT INTO `codigo_recarga` VALUES ('562', '9006500', null, null);
INSERT INTO `codigo_recarga` VALUES ('563', '9002140', null, null);
INSERT INTO `codigo_recarga` VALUES ('564', '9003320', null, null);
INSERT INTO `codigo_recarga` VALUES ('565', '9003050', null, null);
INSERT INTO `codigo_recarga` VALUES ('566', '9002140', null, null);
INSERT INTO `codigo_recarga` VALUES ('567', '9009800', null, null);
INSERT INTO `codigo_recarga` VALUES ('568', '9002810', '11111111', 'Tlanchinol');
INSERT INTO `codigo_recarga` VALUES ('569', '9001640', null, null);
INSERT INTO `codigo_recarga` VALUES ('570', '9002430', '91011121314', null);
INSERT INTO `codigo_recarga` VALUES ('571', '9002900', null, null);
INSERT INTO `codigo_recarga` VALUES ('572', '9002200', null, null);
INSERT INTO `codigo_recarga` VALUES ('573', '9002300', null, null);
INSERT INTO `codigo_recarga` VALUES ('574', '9003340', null, null);
INSERT INTO `codigo_recarga` VALUES ('575', '9002650', null, null);
INSERT INTO `codigo_recarga` VALUES ('576', '9002290', null, null);
INSERT INTO `codigo_recarga` VALUES ('577', '9001260', null, null);
INSERT INTO `codigo_recarga` VALUES ('578', '9006100', null, null);
INSERT INTO `codigo_recarga` VALUES ('579', '9003560', null, null);
INSERT INTO `codigo_recarga` VALUES ('580', '9001650', null, null);
INSERT INTO `codigo_recarga` VALUES ('581', '9001930', null, null);
INSERT INTO `codigo_recarga` VALUES ('582', '9008900', null, null);
INSERT INTO `codigo_recarga` VALUES ('583', '9001150', null, null);
INSERT INTO `codigo_recarga` VALUES ('584', '9002200', null, null);
INSERT INTO `codigo_recarga` VALUES ('585', '9009000', null, null);
INSERT INTO `codigo_recarga` VALUES ('586', '9003000', null, null);
INSERT INTO `codigo_recarga` VALUES ('587', '9001800', null, null);
INSERT INTO `codigo_recarga` VALUES ('588', '9002450', '7711234570', null);
INSERT INTO `codigo_recarga` VALUES ('589', '9002570', null, null);
INSERT INTO `codigo_recarga` VALUES ('590', '9003140', null, null);
INSERT INTO `codigo_recarga` VALUES ('591', '9003650', null, null);
INSERT INTO `codigo_recarga` VALUES ('592', '9006000', null, null);
INSERT INTO `codigo_recarga` VALUES ('593', '9003930', null, null);
INSERT INTO `codigo_recarga` VALUES ('594', '9008700', null, null);
INSERT INTO `codigo_recarga` VALUES ('595', '9001240', null, null);
INSERT INTO `codigo_recarga` VALUES ('596', '9003810', null, null);
INSERT INTO `codigo_recarga` VALUES ('597', '9001870', null, null);
INSERT INTO `codigo_recarga` VALUES ('598', '9003390', null, null);
INSERT INTO `codigo_recarga` VALUES ('599', '9001470', null, null);
INSERT INTO `codigo_recarga` VALUES ('600', '9002260', null, null);
INSERT INTO `codigo_recarga` VALUES ('601', '9003920', null, null);
INSERT INTO `codigo_recarga` VALUES ('602', '9002840', null, null);
INSERT INTO `codigo_recarga` VALUES ('603', '9001170', null, null);
INSERT INTO `codigo_recarga` VALUES ('604', '9002820', null, null);

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `empleado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `password` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `FK_U_SUC_idx` (`idsucursal`) USING BTREE,
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES ('18', 'chapulhuacan', '1', '1');
INSERT INTO `empleado` VALUES ('19', 'admin', 'admin', '2');
INSERT INTO `empleado` VALUES ('20', 'bety', '1', '2');
INSERT INTO `empleado` VALUES ('21', 'frank', '1', '1');
INSERT INTO `empleado` VALUES ('22', 'christian', '1', '1');
INSERT INTO `empleado` VALUES ('23', 'pisa', '1', '4');
INSERT INTO `empleado` VALUES ('24', 'pao', '1', '1');

-- ----------------------------
-- Table structure for empleado_movimiento
-- ----------------------------
DROP TABLE IF EXISTS `empleado_movimiento`;
CREATE TABLE `empleado_movimiento` (
  `idempleado_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `movimiento_detalles` varchar(220) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `empleado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idempleado_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=1422 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of empleado_movimiento
-- ----------------------------
INSERT INTO `empleado_movimiento` VALUES ('185', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('186', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('187', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/01/2014a las 03:45:45 p.m..', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('188', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('189', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 08/01/2014a las 03:46:09 p.m..', 'Chapulhuacan', null, null);
INSERT INTO `empleado_movimiento` VALUES ('190', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('191', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/01/2014a las 03:48:53 p.m..', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('192', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('193', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('194', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 08/01/2014 a las 04:10:20 p.m.', 'Chapulhuacan', null, null);
INSERT INTO `empleado_movimiento` VALUES ('195', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('196', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 08/01/2014 a las 04:14:50 p.m.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('197', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/01/2014a las 04:22:38 p.m..', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('198', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('199', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 08/01/2014 a las 04:24:16 p.m.', 'Tlanchinol', 'admin', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('200', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('201', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 08/01/2014 a las 07:19:46 p.m.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('202', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 08/01/2014 a las 07:21:21 p.m.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('203', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 08/01/2014 a las 07:21:24 p.m.', 'Chapulhuacan', 'christian', '2014-01-08');
INSERT INTO `empleado_movimiento` VALUES ('204', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('205', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('206', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:19:35 p.m.', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('207', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:19:40 p.m.', 'Tlanchinol', null, null);
INSERT INTO `empleado_movimiento` VALUES ('208', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('209', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:22:38 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('210', 'Alta de equipo en garantia', 'El usuario admin ha entregado un equipo en garantia el dia 09/01/2014 a las 02:22:42 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('211', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 02:24:03 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('212', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('213', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('214', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 03:01:44 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('215', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('216', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 03:03:04 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('217', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('218', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 09/01/2014a las 03:03:18 p.m..', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('219', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('220', 'Alta de equipo en garantia', 'El usuario bety ha entregado un equipo en garantia el dia 09/01/2014 a las 03:03:41 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('221', 'Alta de equipo en garantia', 'El usuario bety ha entregado un equipo en garantia el dia 09/01/2014 a las 03:03:55 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('222', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('223', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('224', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:10:02 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('225', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('226', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:12:47 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('227', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('228', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:13:36 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('229', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('230', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 05:15:11 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('231', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('232', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('233', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('234', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 09/01/2014 a las 06:23:34 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('235', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('236', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 09/01/2014 a las 06:41:14 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('237', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 07:19:02 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('238', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('239', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 09/01/2014 a las 07:56:38 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('240', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 09/01/2014 a las 07:57:30 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('241', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 07:58:18 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('242', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('243', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 09/01/2014a las 07:58:46 p.m..', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('244', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('245', 'Entrega de equipo (garantia).', 'El usuario bety ha entregado un equipo en garantia el dia 09/01/2014 a las 07:59:23 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('246', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 09/01/2014a las 08:00:59 p.m..', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('247', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('248', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 08:01:13 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('249', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 08:01:22 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('250', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 08:01:28 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('251', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 09/01/2014a las 08:03:46 p.m..', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('252', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('253', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 10:04:22 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('254', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('255', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 10:04:59 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('256', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 09/01/2014a las 10:05:17 p.m..', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('257', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('258', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 10:40:31 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('259', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 10:41:53 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('260', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 10:42:00 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('261', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('262', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:42:39 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('263', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:42:46 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('264', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:42:53 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('265', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:43:01 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('266', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 09/01/2014 a las 10:43:16 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('267', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('268', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 09/01/2014 a las 10:51:50 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('269', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 09/01/2014 a las 10:51:56 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('270', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 09/01/2014 a las 10:52:07 p.m.', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('271', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 09/01/2014a las 10:52:10 p.m..', 'Tlanchinol', 'bety', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('272', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('273', 'Inicio de sesión.', 'El usuario pao inicio sesion corectamente.', 'Chapulhuacan', 'pao', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('274', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('275', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('276', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('277', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 11:29:21 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('278', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 11:29:24 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('279', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 09/01/2014 a las 11:29:26 p.m.', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('280', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/01/2014a las 11:32:22 p.m..', 'Tlanchinol', 'admin', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('281', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('282', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 09/01/2014 a las 11:40:48 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('283', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 09/01/2014 a las 11:47:20 p.m.', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('284', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 09/01/2014a las 11:52:39 p.m..', 'Chapulhuacan', 'frank', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('285', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('286', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:16 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('287', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:19 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('288', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:20 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('289', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:22 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('290', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:24 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('291', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 09/01/2014 a las 11:54:25 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('292', 'Entrega de equipo (garantia).', 'El usuario christian ha entregado un equipo en garantia el dia 09/01/2014 a las 11:54:34 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('293', 'Entrega de equipo (garantia).', 'El usuario christian ha entregado un equipo en garantia el dia 09/01/2014 a las 11:54:38 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('294', 'Entrega de equipo (garantia).', 'El usuario christian ha entregado un equipo en garantia el dia 09/01/2014 a las 11:54:42 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('295', 'Entrega de equipo (reparacion).', 'El usuario christian ha entregado un equipo en reparacion el dia 09/01/2014 a las 11:54:52 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('296', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 09/01/2014a las 11:54:56 p.m..', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('297', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('298', 'Alta de equipo en garantia.', 'El usuario christian ha dado de alta un equipo en garantia el dia 09/01/2014 a las 11:57:43 p.m.', 'Chapulhuacan', 'christian', '2014-01-09');
INSERT INTO `empleado_movimiento` VALUES ('299', 'Inicio de sesión.', 'El usuario pao inicio sesion corectamente.', 'Chapulhuacan', 'pao', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('300', 'Salida del programa.', 'El usuario pao dejó de usar el sistema el dia 10/01/2014a las 01:26:07 a.m..', 'Chapulhuacan', 'pao', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('301', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('302', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 01:56:04 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('303', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('304', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 01:56:13 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('305', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('306', 'Venta de equipo.', 'El usuario christian ha vendido un equipo el dia 10/01/2014 a las 01:56:35 a.m.', 'Chapulhuacan', 'christian', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('307', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 10/01/2014 a las 01:56:41 a.m.', 'Chapulhuacan', 'christian', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('308', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('309', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:06 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('310', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:12 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('311', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:14 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('312', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:43:17 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('313', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:49:03 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('314', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 02:49:11 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('315', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 02:49:18 a.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('316', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('317', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:41:57 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('318', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:42:07 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('319', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:42:24 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('320', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 12:42:31 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('321', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('322', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:12 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('323', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:15 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('324', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:16 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('325', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:19 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('326', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 12:45:30 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('327', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 10/01/2014 a las 12:47:03 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('328', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('329', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 10/01/2014 a las 12:52:59 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('330', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 10/01/2014 a las 12:53:05 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('331', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 10/01/2014 a las 12:55:57 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('332', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:17 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('333', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:23 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('334', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:27 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('335', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 10/01/2014 a las 12:59:45 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('336', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 01:11:22 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('337', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 10/01/2014 a las 01:11:25 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('338', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 10/01/2014 a las 01:11:33 p.m.', 'Tlanchinol', 'admin', '2014-01-10');
INSERT INTO `empleado_movimiento` VALUES ('339', 'Inicio de sesión.', 'El usuario christian inicio sesion corectamente.', 'Chapulhuacan', 'christian', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('340', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 13/01/2014 a las 11:31:58 a.m.', 'Chapulhuacan', 'christian', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('341', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('342', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 13/01/2014 a las 11:32:53 a.m.', 'Tlanchinol', 'bety', '2014-01-13');
INSERT INTO `empleado_movimiento` VALUES ('343', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('344', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 03:20:10 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('345', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('346', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 03:21:08 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('347', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 04:07:04 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('348', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 04:13:43 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('349', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('350', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:09:15 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('351', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('352', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:10:14 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('353', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('354', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:33:41 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('355', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('356', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 06:34:52 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('357', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('358', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 07:01:49 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('359', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('360', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 10:54:03 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('361', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('362', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:00:09 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('363', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:00:14 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('364', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 11:00:18 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('365', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('366', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:01:48 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('367', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:01:52 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('368', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:01:54 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('369', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:31:02 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('370', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 11:42:22 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('371', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('372', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 14/01/2014 a las 11:46:36 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('373', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 14/01/2014 a las 11:49:21 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('374', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 14/01/2014 a las 11:49:23 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('375', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 14/01/2014 a las 11:51:19 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('376', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('377', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/01/2014 a las 11:54:12 p. m.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('378', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-14');
INSERT INTO `empleado_movimiento` VALUES ('379', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('380', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:11:56 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('381', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:15:58 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('382', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:19:04 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('383', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:24:12 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('384', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:26:00 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('385', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 15/01/2014 a las 01:45:49 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('386', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 15/01/2014 a las 01:49:30 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('387', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 15/01/2014 a las 01:55:27 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('388', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 15/01/2014 a las 01:57:12 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('389', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 15/01/2014 a las 02:03:55 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('390', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/01/2014 a las 02:17:22 a. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('391', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('392', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/01/2014 a las 10:28:01 p. m.', 'Tlanchinol', 'admin', '2014-01-15');
INSERT INTO `empleado_movimiento` VALUES ('393', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('394', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:30:49 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('395', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('396', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:33:07 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('397', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('398', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:34:06 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('399', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('400', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:36:21 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('401', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('402', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:44:17 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('403', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('404', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:44:50 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('405', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('406', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:49:54 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('407', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('408', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:50:16 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('409', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('410', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:53:07 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('411', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('412', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:53:39 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('413', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('414', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 06:55:10 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('415', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('416', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 09:36:26 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('417', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('418', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 09:39:10 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('419', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('420', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/01/2014 a las 09:39:46 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('421', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('422', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('423', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-16 a las 09:51:22 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('424', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('425', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-16 a las 10:04:23 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('426', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('427', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-16 a las 10:14:49 p. m.', 'Tlanchinol', 'admin', '2014-01-16');
INSERT INTO `empleado_movimiento` VALUES ('428', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('429', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 12:46:23 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('430', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('431', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-17 a las 02:15:51 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('432', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('433', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-17 a las 02:16:35 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('434', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('435', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 02:21:35 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('436', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('437', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 17/01/2014 a las 02:26:54 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('438', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 17/01/2014 a las 02:31:34 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('439', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 17/01/2014 a las 02:31:44 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('440', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 17/01/2014 a las 02:33:44 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('441', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 02:56:41 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('442', 'Inicio de sesión.', 'El usuario chapulhuacan inicio sesion corectamente.', 'Chapulhuacan', 'chapulhuacan', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('443', 'Venta de equipo.', 'El usuario chapulhuacan ha vendido un equipo el dia 17/01/2014 a las 02:57:19 a. m.', 'Chapulhuacan', 'chapulhuacan', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('444', 'Salida del programa.', 'El usuario chapulhuacan dejó de usar el sistema el dia 17/01/2014 a las 02:58:17 a. m.', 'Chapulhuacan', 'chapulhuacan', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('445', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('446', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 03:00:36 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('447', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('448', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 03:04:06 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('449', 'Inicio de sesión.', 'El usuario chapulhuacan inicio sesion corectamente.', 'Chapulhuacan', 'chapulhuacan', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('450', 'Venta de equipo.', 'El usuario chapulhuacan ha vendido un equipo el dia 17/01/2014 a las 03:04:38 a. m.', 'Chapulhuacan', 'chapulhuacan', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('451', 'Venta de equipo.', 'El usuario chapulhuacan ha vendido un equipo el dia 17/01/2014 a las 03:04:47 a. m.', 'Chapulhuacan', 'chapulhuacan', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('452', 'Salida del programa.', 'El usuario chapulhuacan dejó de usar el sistema el dia 17/01/2014 a las 03:05:01 a. m.', 'Chapulhuacan', 'chapulhuacan', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('453', 'Inicio de sesión.', 'El usuario pisa inicio sesion corectamente.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('454', 'Salida del programa.', 'El usuario pisa dejó de usar el sistema el dia 17/01/2014 a las 11:50:36 a. m.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('455', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('456', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 17/01/2014 a las 11:51:26 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('457', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 17/01/2014 a las 11:51:57 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('458', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 11:52:02 a. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('459', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('460', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 07:04:37 p. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('461', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('462', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 07:05:46 p. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('463', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('464', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 07:07:18 p. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('465', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('466', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 17/01/2014 a las 07:07:53 p. m.', 'Tlanchinol', 'admin', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('467', 'Inicio de sesión.', 'El usuario pisa inicio sesion corectamente.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('468', 'Alta de equipo en reparacion.', 'El usuario pisa ha dado de alta un equipo en reparacion el dia 17/01/2014 a las 07:11:27 p. m.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('469', 'Salida del programa.', 'El usuario pisa dejó de usar el sistema el dia 17/01/2014 a las 07:14:52 p. m.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('470', 'Inicio de sesión.', 'El usuario pisa inicio sesion corectamente.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('471', 'Entrega de equipo (reparacion).', 'El usuario pisa ha entregado un equipo en reparacion el dia 17/01/2014 a las 07:15:42 p. m.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('472', 'Salida del programa.', 'El usuario pisa dejó de usar el sistema el dia 17/01/2014 a las 07:15:46 p. m.', 'Pisaflores', 'pisa', '2014-01-17');
INSERT INTO `empleado_movimiento` VALUES ('473', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-18');
INSERT INTO `empleado_movimiento` VALUES ('474', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 18/01/2014 a las 11:59:11 p.m.', 'Tlanchinol', 'admin', '2014-01-18');
INSERT INTO `empleado_movimiento` VALUES ('475', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-18');
INSERT INTO `empleado_movimiento` VALUES ('476', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/01/2014 a las 12:04:32 a.m.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('477', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('478', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/01/2014 a las 12:07:56 a.m.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('479', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('480', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/01/2014 a las 12:08:17 a.m.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('481', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('482', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/01/2014 a las 12:10:00 a.m.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('483', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('484', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/01/2014 a las 12:11:23 a.m.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('485', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('486', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/01/2014 a las 12:17:50 a.m.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('487', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('488', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/01/2014 a las 12:19:04 a.m.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('489', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('490', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/01/2014 a las 12:27:49 a.m.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('491', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('492', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/01/2014 a las 12:28:18 a.m.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('493', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('494', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/01/2014 a las 12:29:26 a.m.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('495', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('496', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/01/2014 a las 12:30:06 a.m.', 'Tlanchinol', 'admin', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('497', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('498', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/01/2014 a las 11:21:34 a.m.', 'Chapulhuacan', 'frank', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('499', 'Inicio de sesión.', 'El usuario pao inicio sesion corectamente.', 'Chapulhuacan', 'pao', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('500', 'Venta de equipo.', 'El usuario pao ha vendido un equipo el dia 19/01/2014 a las 12:50:01 p.m.', 'Chapulhuacan', 'pao', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('501', 'Venta de equipo.', 'El usuario pao ha vendido un equipo el dia 19/01/2014 a las 12:50:56 p.m.', 'Chapulhuacan', 'pao', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('502', 'Alta de equipo en garantia.', 'El usuario pao ha dado de alta un equipo en garantia el dia 19/01/2014 a las 12:51:59 p.m.', 'Chapulhuacan', 'pao', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('503', 'Salida del programa.', 'El usuario pao dejó de usar el sistema el dia 19/01/2014 a las 12:55:30 p.m.', 'Chapulhuacan', 'pao', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('504', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('505', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 19/01/2014 a las 12:56:20 p.m.', 'Tlanchinol', 'bety', '2014-01-19');
INSERT INTO `empleado_movimiento` VALUES ('506', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('507', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('508', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('509', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('510', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('511', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/01/2014 a las 09:43:03 p. m.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('512', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('513', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/01/2014 a las 10:04:00 p. m.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('514', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('515', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/01/2014 a las 10:19:02 p. m.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('516', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('517', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/01/2014 a las 10:22:40 p. m.', 'Tlanchinol', 'admin', '2014-01-20');
INSERT INTO `empleado_movimiento` VALUES ('518', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('519', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 21/01/2014 a las 12:18:27 a. m.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('520', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 21/01/2014 a las 12:23:08 a. m.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('521', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('522', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 21/01/2014 a las 12:28:44 a. m.', 'Chapulhuacan', 'frank', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('523', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('524', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 21/01/2014 a las 10:07:31 a.m.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('525', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('526', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-21 a las 01:29:19 p.m.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('527', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('528', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('529', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 21/01/2014 a las 02:34:27 p.m.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('530', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 21/01/2014 a las 02:34:51 p.m.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('531', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('532', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 21/01/2014 a las 02:43:05 p.m.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('533', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('534', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('535', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 21/01/2014 a las 10:59:25 p. m.', 'Chapulhuacan', 'frank', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('536', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-21');
INSERT INTO `empleado_movimiento` VALUES ('537', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('538', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 22/01/2014 a las 01:09:33 a. m.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('539', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 22/01/2014 a las 01:09:37 a. m.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('540', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('541', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 22/01/2014 a las 10:00:52 p. m.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('542', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('543', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 22/01/2014 a las 10:01:00 p. m.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('544', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('545', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 22/01/2014 a las 10:02:10 p. m.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('546', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('547', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 22/01/2014 a las 11:20:06 p. m.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('548', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('549', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 22/01/2014 a las 11:23:56 p. m.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('550', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('551', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 22/01/2014 a las 11:24:19 p. m.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('552', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('553', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 22/01/2014 a las 11:25:49 p. m.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('554', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 22/01/2014 a las 11:28:47 p. m.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('555', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('556', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 22/01/2014 a las 11:35:49 p.m.', 'Tlanchinol', 'admin', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('557', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('558', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 22/01/2014 a las 11:37:14 p.m.', 'Chapulhuacan', 'frank', '2014-01-22');
INSERT INTO `empleado_movimiento` VALUES ('559', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('560', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 23/01/2014 a las 08:15:10 a.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('561', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('562', 'Entrega de equipo (garantia).', 'El usuario frank ha entregado un equipo en garantia el dia 23/01/2014 a las 08:24:19 a.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('563', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 23/01/2014 a las 08:25:00 a.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('564', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('565', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 23/01/2014 a las 08:26:39 a.m.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('566', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('567', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 23/01/2014 a las 10:45:03 a.m.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('568', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('569', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 23/01/2014 a las 10:47:59 a.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('570', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('571', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 23/01/2014 a las 02:39:06 p.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('572', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('573', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 23/01/2014 a las 09:15:55 p.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('574', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('575', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 23/01/2014 a las 09:17:23 p.m.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('576', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('577', 'Intento de login fallido.', 'El usuario: bety, ingreso datos incorrectos.', null, 'bety', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('578', 'Inicio de sesión.', 'El usuario bety inicio sesion corectamente.', 'Tlanchinol', 'bety', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('579', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 23/01/2014 a las 09:20:08 p.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('580', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 23/01/2014 a las 09:20:14 p.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('581', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 23/01/2014 a las 09:20:16 p.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('582', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 23/01/2014 a las 09:20:26 p. m.', 'Tlanchinol', 'bety', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('583', 'Venta de equipo.', 'El usuario bety ha vendido un equipo el dia 23/01/2014 a las 09:20:28 p. m.', 'Tlanchinol', 'bety', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('584', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 23/01/2014 a las 09:20:31 p. m.', 'Tlanchinol', 'bety', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('585', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 23/01/2014 a las 09:20:29 p.m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('586', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('587', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 23/01/2014 a las 09:34:10 p. m.', 'Tlanchinol', 'admin', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('588', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('589', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 23/01/2014 a las 09:34:20 p. m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('590', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 23/01/2014 a las 09:34:23 p. m.', 'Chapulhuacan', 'frank', '2014-01-23');
INSERT INTO `empleado_movimiento` VALUES ('591', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('592', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('593', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 01:45:06 a. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('594', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 01:45:04 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('595', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('596', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('597', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 24/01/2014 a las 01:46:47 a. m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('598', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 24/01/2014 a las 01:46:48 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('599', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 24/01/2014 a las 01:46:58 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('600', 'Entrega de equipo (garantia).', 'El usuario frank ha entregado un equipo en garantia el dia 24/01/2014 a las 01:47:01 a. m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('601', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 01:48:09 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('602', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 24/01/2014 a las 01:48:25 a. m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('603', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('604', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 01:55:03 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('605', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('606', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('607', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 07:37:24 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('608', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('609', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 07:39:20 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('610', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('611', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 07:40:29 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('612', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('613', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 07:41:05 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('614', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('615', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 07:42:19 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('616', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('617', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 09:44:25 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('618', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('619', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 24/01/2014 a las 09:52:11 a.m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('620', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('621', 'Alta de equipo en garantia.', 'El usuario frank ha dado de alta un equipo en garantia el dia 24/01/2014 a las 10:15:03 a.m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('622', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 2014-01-24 a las 10:16:49 a.m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('623', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('624', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 10:20:00 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('625', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('626', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 10:22:03 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('627', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('628', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 10:25:06 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('629', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('630', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 10:25:48 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('631', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('632', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 10:26:16 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('633', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('634', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 2014-01-24 a las 10:28:00 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('635', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 10:28:17 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('636', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('637', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 10:33:33 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('638', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('639', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 10:34:14 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('640', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('641', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('642', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 10:35:38 a.m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('643', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('644', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 24/01/2014 a las 10:10:56 p. m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('645', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('646', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 10:18:03 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('647', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('648', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 10:57:06 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('649', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('650', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 10:57:52 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('651', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('652', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 10:58:21 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('653', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('654', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 24/01/2014 a las 11:19:19 p. m.', 'Chapulhuacan', 'frank', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('655', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('656', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('657', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:21:20 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('658', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('659', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:22:23 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('660', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('661', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 11:26:06 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('662', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('663', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 11:26:49 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('664', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('665', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 11:27:11 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('666', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('667', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 24/01/2014 a las 11:29:24 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('668', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:29:36 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('669', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('670', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:29:52 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('671', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('672', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-01-24 a las 11:30:28 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('673', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('674', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:31:31 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('675', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('676', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:32:21 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('677', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('678', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:34:05 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('679', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('680', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 24/01/2014 a las 11:36:22 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('681', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 24/01/2014 a las 11:37:29 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('682', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:37:32 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('683', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('684', 'Entrega de equipo (reparacion).', 'El usuario admin ha entregado un equipo en reparacion el dia 24/01/2014 a las 11:38:38 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('685', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/01/2014 a las 11:48:45 p. m.', 'Tlanchinol', 'admin', '2014-01-24');
INSERT INTO `empleado_movimiento` VALUES ('686', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('687', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 25/01/2014 a las 12:17:34 a. m.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('688', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('689', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 25/01/2014 a las 12:51:42 a. m.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('690', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('691', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 25/01/2014 a las 12:12:09 p. m.', 'Chapulhuacan', 'frank', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('692', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('693', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 25/01/2014 a las 12:29:44 p. m.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('694', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('695', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 25/01/2014 a las 04:51:53 p. m.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('696', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('697', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 25/01/2014 a las 04:56:07 p. m.', 'Tlanchinol', 'admin', '2014-01-25');
INSERT INTO `empleado_movimiento` VALUES ('698', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('699', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 12:02:36 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('700', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('701', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 01:28:09 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('702', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('703', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 01:50:44 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('704', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('705', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 01:58:19 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('706', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('707', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 01:59:46 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('708', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('709', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 02:01:23 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('710', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('711', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 02:10:33 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('712', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('713', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 02:11:28 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('714', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('715', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 02:12:06 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('716', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('717', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 03:19:11 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('718', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('719', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 04:35:59 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('720', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('721', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 05:48:25 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('722', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('723', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 05:59:43 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('724', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('725', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 06:01:58 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('726', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('727', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 06:49:07 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('728', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('729', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 06:49:38 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('730', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('731', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 06:55:01 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('732', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('733', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 07:03:10 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('734', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('735', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 07:04:00 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('736', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('737', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 26/01/2014 a las 07:04:31 p. m.', 'Chapulhuacan', 'frank', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('738', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('739', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 07:09:17 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('740', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('741', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('742', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 26/01/2014 a las 07:37:32 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('743', 'Alta de equipo en reparacion.', 'El usuario admin ha dado de alta un equipo en reparacion el dia 26/01/2014 a las 07:37:40 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('744', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 07:38:25 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('745', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 07:38:35 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('746', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('747', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:21:04 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('748', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('749', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:22:59 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('750', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('751', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:23:21 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('752', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('753', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:25:44 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('754', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('755', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:27:26 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('756', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('757', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:27:59 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('758', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('759', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:28:23 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('760', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('761', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:30:43 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('762', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('763', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 09:49:16 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('764', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('765', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 10:49:20 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('766', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('767', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 10:54:00 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('768', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('769', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 10:54:58 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('770', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('771', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:01:28 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('772', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('773', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:02:12 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('774', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('775', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:03:35 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('776', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('777', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:22:23 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('778', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('779', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:23:44 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('780', 'Inicio de sesión.', 'El usuario CHRISTIAN inicio sesion corectamente.', 'Chapulhuacan', 'CHRISTIAN', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('781', 'Salida del programa.', 'El usuario CHRISTIAN dejó de usar el sistema el dia 26/01/2014 a las 11:26:04 p. m.', 'Chapulhuacan', 'CHRISTIAN', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('782', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('783', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:27:44 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('784', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('785', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:29:21 p. m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('786', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('787', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:29:47 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('788', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('789', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:31:47 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('790', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('791', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:36:46 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('792', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('793', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:37:10 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('794', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('795', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:38:09 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('796', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('797', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/01/2014 a las 11:48:45 p.m.', 'Tlanchinol', 'admin', '2014-01-26');
INSERT INTO `empleado_movimiento` VALUES ('798', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-27');
INSERT INTO `empleado_movimiento` VALUES ('799', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 27/01/2014 a las 11:10:31 a.m.', 'Tlanchinol', 'admin', '2014-01-27');
INSERT INTO `empleado_movimiento` VALUES ('800', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-27');
INSERT INTO `empleado_movimiento` VALUES ('801', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 27/01/2014 a las 12:02:07 p.m.', 'Tlanchinol', 'admin', '2014-01-27');
INSERT INTO `empleado_movimiento` VALUES ('802', 'Inicio de sesión.', 'El usuario chapulhuacan inicio sesion corectamente.', 'Chapulhuacan', 'chapulhuacan', '2014-01-27');
INSERT INTO `empleado_movimiento` VALUES ('803', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-27');
INSERT INTO `empleado_movimiento` VALUES ('804', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 27/01/2014 a las 03:15:47 p. m.', 'Chapulhuacan', 'frank', '2014-01-27');
INSERT INTO `empleado_movimiento` VALUES ('805', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('806', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 01:19:10 a. m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('807', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('808', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 28/01/2014 a las 01:19:38 a. m.', 'Chapulhuacan', 'frank', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('809', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('810', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 01:27:08 a. m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('811', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('812', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 28/01/2014 a las 01:29:59 a. m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('813', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 01:30:26 a. m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('814', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('815', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 11:30:30 a.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('816', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('817', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 11:40:54 a.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('818', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('819', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 11:47:52 a.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('820', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('821', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 11:52:35 a.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('822', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('823', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 11:55:37 a.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('824', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('825', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 11:56:46 a.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('826', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('827', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:12:18 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('828', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('829', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:13:21 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('830', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('831', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:14:16 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('832', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('833', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:19:15 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('834', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('835', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:21:48 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('836', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('837', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:22:14 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('838', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('839', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:22:50 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('840', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('841', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:23:19 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('842', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('843', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:25:33 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('844', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('845', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:27:29 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('846', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('847', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:28:24 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('848', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('849', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:29:13 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('850', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('851', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:30:29 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('852', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('853', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:32:49 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('854', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('855', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:36:17 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('856', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('857', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 28/01/2014 a las 12:38:35 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('858', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 28/01/2014 a las 12:38:38 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('859', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:40:04 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('860', 'Inicio de sesión.', 'El usuario chapulhuacan inicio sesion corectamente.', 'Chapulhuacan', 'chapulhuacan', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('861', 'Venta de equipo.', 'El usuario chapulhuacan ha vendido un equipo el dia 28/01/2014 a las 12:40:43 p.m.', 'Chapulhuacan', 'chapulhuacan', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('862', 'Salida del programa.', 'El usuario chapulhuacan dejó de usar el sistema el dia 28/01/2014 a las 12:41:17 p.m.', 'Chapulhuacan', 'chapulhuacan', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('863', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('864', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:47:21 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('865', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('866', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 28/01/2014 a las 12:47:31 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('867', 'Venta de equipo.', 'El usuario admin ha vendido un equipo el dia 28/01/2014 a las 12:47:32 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('868', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:47:47 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('869', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('870', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 28/01/2014 a las 12:48:12 p.m.', 'Chapulhuacan', 'frank', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('871', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('872', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 12:51:38 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('873', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('874', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 04:31:31 p. m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('875', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('876', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 05:51:59 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('877', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('878', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 06:13:54 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('879', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('880', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 06:14:47 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('881', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('882', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 06:24:41 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('883', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('884', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 06:47:35 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('885', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('886', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 06:53:06 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('887', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('888', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 07:01:58 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('889', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('890', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 28/01/2014 a las 07:21:36 p.m.', 'Chapulhuacan', 'frank', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('891', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('892', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 07:48:15 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('893', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('894', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 28/01/2014 a las 07:56:10 p.m.', 'Tlanchinol', 'admin', '2014-01-28');
INSERT INTO `empleado_movimiento` VALUES ('895', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('896', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 11:38:49 a.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('897', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('898', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 11:42:46 a.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('899', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('900', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 11:45:44 a.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('901', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('902', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 11:47:11 a.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('903', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('904', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 11:47:59 a.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('905', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('906', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 11:48:29 a.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('907', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('908', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 11:52:13 a.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('909', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('910', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 01:33:34 p.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('911', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('912', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 29/01/2014 a las 02:08:26 p.m.', 'Tlanchinol', 'admin', '2014-01-29');
INSERT INTO `empleado_movimiento` VALUES ('913', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('914', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 30/01/2014 a las 10:48:16 a.m.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('915', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('916', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 30/01/2014 a las 11:00:08 a.m.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('917', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('918', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 30/01/2014 a las 11:03:28 a.m.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('919', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('920', 'Intento de login fallido.', 'El usuario: pisaflores, ingreso datos incorrectos.', null, 'pisaflores', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('921', 'Inicio de sesión.', 'El usuario pisa inicio sesion corectamente.', 'Pisaflores', 'pisa', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('922', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('923', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('924', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 30/01/2014 a las 10:06:54 p. m.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('925', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('926', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 30/01/2014 a las 10:07:00 p. m.', 'Tlanchinol', 'admin', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('927', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('928', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('929', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('930', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('931', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 30/01/2014 a las 10:36:38 p. m.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('932', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('933', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 30/01/2014 a las 10:56:45 p. m.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('934', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('935', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 30/01/2014 a las 11:00:09 p. m.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('936', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('937', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 30/01/2014 a las 11:41:21 p. m.', 'Chapulhuacan', 'frank', '2014-01-30');
INSERT INTO `empleado_movimiento` VALUES ('938', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('939', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('940', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 31/01/2014 a las 12:09:27 a.m.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('941', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('942', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:59:19 a.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('943', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('944', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 31/01/2014 a las 11:39:34 a.m.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('945', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 31/01/2014 a las 11:41:11 a.m.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('946', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('947', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 31/01/2014 a las 12:01:34 p.m.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('948', 'Intento de login fallido.', 'El usuario: frank, ingreso datos incorrectos.', null, 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('949', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('950', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('951', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:12:08 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('952', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('953', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 31/01/2014 a las 12:22:21 p.m.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('954', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('955', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('956', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:31:42 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('957', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('958', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:40:41 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('959', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('960', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:43:52 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('961', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('962', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:46:02 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('963', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('964', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:47:22 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('965', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('966', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 12:48:19 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('967', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('968', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 31/01/2014 a las 12:49:59 p.m.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('969', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('970', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('971', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 02:11:51 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('972', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('973', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 03:52:00 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('974', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('975', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 04:14:11 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('976', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('977', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 04:23:24 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('978', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('979', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 04:25:17 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('980', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('981', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 31/01/2014 a las 04:29:03 p.m.', 'Chapulhuacan', 'frank', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('982', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('983', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('984', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 06:01:13 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('985', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('986', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 06:02:47 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('987', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('988', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 06:05:15 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('989', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('990', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 06:24:35 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('991', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('992', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 07:21:15 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('993', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('994', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 07:31:34 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('995', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('996', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 11:22:05 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('997', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('998', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 11:25:20 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('999', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('1000', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 11:40:53 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('1001', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('1002', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 31/01/2014 a las 11:42:55 p.m.', 'Tlanchinol', 'admin', '2014-01-31');
INSERT INTO `empleado_movimiento` VALUES ('1003', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1004', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 01/02/2014 a las 06:54:12 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1005', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1006', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:01:02 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1007', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1008', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:03:48 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1009', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1010', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:09:02 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1011', 'Intento de login fallido.', 'El usuario: frank, ingreso datos incorrectos.', null, 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1012', 'Intento de login fallido.', 'El usuario: frank, ingreso datos incorrectos.', null, 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1013', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1014', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 01/02/2014 a las 07:09:50 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1015', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1016', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 01/02/2014 a las 07:16:05 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1017', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1018', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:22:57 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1019', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1020', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:30:31 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1021', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1022', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:33:40 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1023', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1024', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:37:17 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1025', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1026', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:43:40 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1027', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1028', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:44:44 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1029', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1030', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 07:45:13 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1031', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1032', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1033', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 08:06:03 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1034', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1035', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 01/02/2014 a las 08:11:34 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1036', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1037', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 08:15:27 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1038', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1039', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1040', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 2014-02-01 a las 08:20:33 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1041', 'Intento de login fallido.', 'El usuario: frank, ingreso datos incorrectos.', null, 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1042', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1043', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 01/02/2014 a las 08:21:06 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1044', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 2014-02-01 a las 08:22:52 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1045', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1046', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 01/02/2014 a las 08:23:56 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1047', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1048', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 08:26:24 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1049', 'Intento de login fallido.', 'El usuario: frank, ingreso datos incorrectos.', null, 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1050', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1051', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 01/02/2014 a las 08:29:55 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1052', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1053', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 01/02/2014 a las 08:59:49 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1054', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1055', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1056', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1057', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 09:03:09 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1058', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1059', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 09:05:49 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1060', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1061', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 09:44:32 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1062', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1063', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 09:53:00 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1064', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1065', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 09:57:31 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1066', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1067', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 10:03:06 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1068', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1069', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 10:04:48 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1070', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1071', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 10:05:12 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1072', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1073', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 10:05:49 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1074', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1075', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 10:06:25 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1076', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1077', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 01/02/2014 a las 11:03:12 p.m.', 'Tlanchinol', 'admin', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1078', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1079', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 01/02/2014 a las 11:04:14 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1080', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 01/02/2014 a las 11:04:17 p.m.', 'Chapulhuacan', 'frank', '2014-02-01');
INSERT INTO `empleado_movimiento` VALUES ('1081', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1082', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 12:57:14 a.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1083', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1084', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 12:59:16 a.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1085', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1086', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1087', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 01:03:12 a.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1088', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1089', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 01:05:44 a.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1090', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1091', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 02:08:49 a.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1092', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1093', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 02:18:45 a.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1094', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1095', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 12:30:18 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1096', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1097', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 03:32:37 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1098', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1099', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 03:37:48 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1100', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1101', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 03:50:24 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1102', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1103', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 03:58:31 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1104', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1105', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:00:18 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1106', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1107', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:03:05 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1108', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1109', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:06:26 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1110', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1111', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:12:37 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1112', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1113', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:15:58 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1114', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1115', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:24:10 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1116', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1117', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:32:52 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1118', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1119', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:37:12 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1120', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1121', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:45:51 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1122', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1123', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:47:29 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1124', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1125', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:53:32 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1126', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1127', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 04:54:40 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1128', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1129', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 05:57:24 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1130', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1131', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 05:59:28 p.m.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1132', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1133', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1134', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 02/02/2014 a las 21:43:48', 'Chapulhuacan', 'frank', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1135', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 02/02/2014 a las 21:52:04', 'Chapulhuacan', 'frank', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1136', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1137', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 21:52:31', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1138', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1139', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 02/02/2014 a las 21:54:43', 'Chapulhuacan', 'frank', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1140', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1141', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 02/02/2014 a las 21:58:18', 'Tlanchinol', 'admin', '2014-02-02');
INSERT INTO `empleado_movimiento` VALUES ('1142', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-03');
INSERT INTO `empleado_movimiento` VALUES ('1143', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 03/02/2014 a las 01:30:18 a.m.', 'Tlanchinol', 'admin', '2014-02-03');
INSERT INTO `empleado_movimiento` VALUES ('1144', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-04');
INSERT INTO `empleado_movimiento` VALUES ('1145', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 04/02/2014 a las 11:38:27 a.m.', 'Tlanchinol', 'admin', '2014-02-04');
INSERT INTO `empleado_movimiento` VALUES ('1146', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-05');
INSERT INTO `empleado_movimiento` VALUES ('1147', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 05/02/2014 a las 01:51:23 p.m.', 'Tlanchinol', 'admin', '2014-02-05');
INSERT INTO `empleado_movimiento` VALUES ('1148', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-05');
INSERT INTO `empleado_movimiento` VALUES ('1149', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 05/02/2014 a las 01:55:56 p.m.', 'Tlanchinol', 'admin', '2014-02-05');
INSERT INTO `empleado_movimiento` VALUES ('1150', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-06');
INSERT INTO `empleado_movimiento` VALUES ('1151', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 06/02/2014 a las 07:39:58 a.m.', 'Tlanchinol', 'admin', '2014-02-06');
INSERT INTO `empleado_movimiento` VALUES ('1152', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-06');
INSERT INTO `empleado_movimiento` VALUES ('1153', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 06/02/2014 a las 11:15:28 a.m.', 'Tlanchinol', 'admin', '2014-02-06');
INSERT INTO `empleado_movimiento` VALUES ('1154', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-06');
INSERT INTO `empleado_movimiento` VALUES ('1155', 'Inicio de sesión', 'El administrador ha iniciado sesión', null, null, null);
INSERT INTO `empleado_movimiento` VALUES ('1156', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 06/02/2014 a las 12:01:44 p.m.', 'Tlanchinol', 'admin', '2014-02-06');
INSERT INTO `empleado_movimiento` VALUES ('1157', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1158', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 01:57:53 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1159', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1160', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 02:02:46 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1161', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1162', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 10:09:23 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1163', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1164', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 10:13:08 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1165', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1166', 'Alta de equipo en garantia.', 'El usuario admin ha dado de alta un equipo en garantia el dia 08/02/2014 a las 10:21:07 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1167', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 10:22:08 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1168', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1169', 'Entrega de equipo (garantia).', 'El usuario admin ha entregado un equipo en garantia el dia 08/02/2014 a las 10:24:11 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1170', 'Movimiento de prueba', 'Detalles de movimiento de prueba', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1171', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 10:28:12 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1172', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1173', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 10:44:34 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1174', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1175', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 10:47:09 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1176', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1177', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 10:49:07 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1178', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1179', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 11:07:26 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1180', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1181', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 11:09:14 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1182', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1183', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 11:37:05 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1184', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1185', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 11:38:09 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1186', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1187', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 08/02/2014 a las 11:44:47 p.m.', 'Tlanchinol', 'admin', '2014-02-08');
INSERT INTO `empleado_movimiento` VALUES ('1188', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-09');
INSERT INTO `empleado_movimiento` VALUES ('1189', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 09/02/2014 a las 12:02:24 a.m.', 'Tlanchinol', 'admin', '2014-02-09');
INSERT INTO `empleado_movimiento` VALUES ('1190', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1191', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:09:40 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1192', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1193', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 11/02/2014 a las 08:09:59 a.m.', 'Chapulhuacan', 'frank', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1194', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1195', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:12:23 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1196', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1197', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 11/02/2014 a las 08:12:51 a.m.', 'Chapulhuacan', 'frank', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1198', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1199', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 11/02/2014 a las 08:16:41 a.m.', 'Chapulhuacan', 'frank', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1200', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1201', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:21:02 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1202', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1203', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1204', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:26:09 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1205', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1206', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:29:32 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1207', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1208', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:31:28 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1209', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1210', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:33:08 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1211', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1212', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 08:34:26 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1213', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1214', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 10:39:44 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1215', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1216', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/02/2014 a las 10:41:58 a.m.', 'Tlanchinol', 'admin', '2014-02-11');
INSERT INTO `empleado_movimiento` VALUES ('1217', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1218', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 10:30:52 a.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1219', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1220', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 10:35:56 a.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1221', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1222', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1223', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 01:18:09 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1224', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1225', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 01:18:50 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1226', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1227', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 01:19:35 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1228', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1229', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 01:24:23 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1230', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1231', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 01:49:09 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1232', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1233', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 01:55:57 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1234', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1235', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 01:58:03 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1236', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1237', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 02:00:28 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1238', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1239', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 02:02:22 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1240', 'Intento de login fallido.', 'El usuario: usuario, ingreso datos incorrectos.', null, 'usuario', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1241', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1242', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 14/02/2014 a las 02:31:01 p.m.', 'Chapulhuacan', 'frank', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1243', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1244', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 14/02/2014 a las 02:41:33 p.m.', 'Chapulhuacan', 'frank', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1245', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 14/02/2014 a las 02:41:34 p.m.', 'Chapulhuacan', 'frank', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1246', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1247', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 02:43:28 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1248', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1249', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 02:48:10 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1250', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1251', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 02:52:16 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1252', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1253', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 14/02/2014 a las 09:00:47 p.m.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1254', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-14');
INSERT INTO `empleado_movimiento` VALUES ('1255', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-15');
INSERT INTO `empleado_movimiento` VALUES ('1256', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/02/2014 a las 12:20:34 p.m.', 'Tlanchinol', 'admin', '2014-02-15');
INSERT INTO `empleado_movimiento` VALUES ('1257', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1258', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/02/2014 a las 02:03:10 p.m.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1259', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1260', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1261', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 19/02/2014 a las 09:56:04 p.m.', 'Chapulhuacan', 'frank', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1262', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1263', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/02/2014 a las 10:09:00 p.m.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1264', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1265', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/02/2014 a las 10:09:54 p.m.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1266', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1267', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/02/2014 a las 10:13:01 p.m.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1268', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1269', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 19/02/2014 a las 10:13:55 p.m.', 'Tlanchinol', 'admin', '2014-02-19');
INSERT INTO `empleado_movimiento` VALUES ('1270', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/02/2014 a las 01:24:37 p.m.', 'Tlanchinol', 'admin', '2014-02-20');
INSERT INTO `empleado_movimiento` VALUES ('1271', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/02/2014 a las 02:49:43 p.m.', 'Tlanchinol', 'admin', '2014-02-20');
INSERT INTO `empleado_movimiento` VALUES ('1272', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:56:26 p.m.', 'Tlanchinol', 'admin', '2014-02-20');
INSERT INTO `empleado_movimiento` VALUES ('1273', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/02/2014 a las 02:57:19 p.m.', 'Tlanchinol', 'admin', '2014-02-20');
INSERT INTO `empleado_movimiento` VALUES ('1274', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 03:18:17 p.m.', 'Tlanchinol', 'admin', '2014-02-20');
INSERT INTO `empleado_movimiento` VALUES ('1275', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 20/02/2014 a las 03:18:22 p.m.', 'Tlanchinol', 'admin', '2014-02-20');
INSERT INTO `empleado_movimiento` VALUES ('1276', 'Inicio de sesión.', 'El usuario frank inicio sesion correctamente a las 06:33:53 p.m.', 'Chapulhuacan', 'frank', '2014-02-21');
INSERT INTO `empleado_movimiento` VALUES ('1277', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 21/02/2014 a las 06:38:28 p.m.', 'Chapulhuacan', 'frank', '2014-02-21');
INSERT INTO `empleado_movimiento` VALUES ('1278', 'Inicio de sesión.', 'El usuario bety inicio sesion correctamente a las 06:38:38 p.m.', 'Tlanchinol', 'bety', '2014-02-21');
INSERT INTO `empleado_movimiento` VALUES ('1279', 'Salida del programa.', 'El usuario bety dejó de usar el sistema el dia 21/02/2014 a las 06:44:48 p.m.', 'Tlanchinol', 'bety', '2014-02-21');
INSERT INTO `empleado_movimiento` VALUES ('1280', 'Inicio de sesión.', 'El usuario chapulhuacan inicio sesion correctamente a las 06:45:02 p.m.', 'Chapulhuacan', 'chapulhuacan', '2014-02-21');
INSERT INTO `empleado_movimiento` VALUES ('1281', 'Venta de equipo.', 'El usuario chapulhuacan ha vendido un equipo el dia 21/02/2014 a las 06:54:34 p.m.', 'Chapulhuacan', 'chapulhuacan', '2014-02-21');
INSERT INTO `empleado_movimiento` VALUES ('1282', 'Salida del programa.', 'El usuario chapulhuacan dejó de usar el sistema el dia 21/02/2014 a las 06:57:22 p.m.', 'Chapulhuacan', 'chapulhuacan', '2014-02-21');
INSERT INTO `empleado_movimiento` VALUES ('1283', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 03:46:24 p. m.', 'Tlanchinol', 'admin', '2014-02-22');
INSERT INTO `empleado_movimiento` VALUES ('1284', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1285', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/02/2014 a las 01:45:39 p.m.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1286', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1287', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/02/2014 a las 01:46:27 p.m.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1288', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1289', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/02/2014 a las 05:08:09 p.m.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1290', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1291', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 24/02/2014 a las 07:49:52 p.m.', 'Tlanchinol', 'admin', '2014-02-24');
INSERT INTO `empleado_movimiento` VALUES ('1292', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-26');
INSERT INTO `empleado_movimiento` VALUES ('1293', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/02/2014 a las 08:38:11 a.m.', 'Tlanchinol', 'admin', '2014-02-26');
INSERT INTO `empleado_movimiento` VALUES ('1294', 'Inicio de sesión.', 'El usuario admin inicio sesion corectamente.', 'Tlanchinol', 'admin', '2014-02-26');
INSERT INTO `empleado_movimiento` VALUES ('1295', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 26/02/2014 a las 01:01:36 p.m.', 'Tlanchinol', 'admin', '2014-02-26');
INSERT INTO `empleado_movimiento` VALUES ('1296', 'Inicio de sesión.', 'El usuario frank inicio sesion corectamente.', 'Chapulhuacan', 'frank', '2014-03-03');
INSERT INTO `empleado_movimiento` VALUES ('1297', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 03/03/2014 a las 12:45:24 p.m.', 'Chapulhuacan', 'frank', '2014-03-03');
INSERT INTO `empleado_movimiento` VALUES ('1298', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 03/03/2014 a las 12:45:24 p.m.', 'Chapulhuacan', 'frank', '2014-03-03');
INSERT INTO `empleado_movimiento` VALUES ('1299', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 01:24:01 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1300', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 01:24:38 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1301', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 01:58:29 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1302', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 01:58:41 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1303', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 01:59:06 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1304', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 01:59:18 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1305', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 01:59:55 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1306', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 02:00:07 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1307', 'Intento de login fallido.', 'El usuario:  frank, ingreso datos incorrectos.', null, ' frank', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1308', 'Intento de login fallido.', 'El usuario:  christian, ingreso datos incorrectos.', null, ' christian', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1309', 'Intento de login fallido.', 'El usuario:  frank, ingreso datos incorrectos.', null, ' frank', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1310', 'Intento de login fallido.', 'El usuario:  admin, ingreso datos incorrectos.', null, ' admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1311', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1312', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1313', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1314', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1315', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1316', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1317', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1318', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1319', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1320', 'Intento de login fallido.', 'El usuario:  , ingreso datos incorrectos.', null, ' ', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1321', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:03:48 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1322', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:04:47 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1323', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 02:04:58 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1324', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:13:55 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1325', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 02:14:06 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1326', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:14:26 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1327', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 02:20:05 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1328', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:20:43 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1329', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 02:20:52 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1330', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:41:52 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1331', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 02:43:16 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1332', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:46:26 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1333', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 02:47:27 p.m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1334', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 10:29:13 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1335', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 10:37:43 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1336', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 11:34:50 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1337', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 11:35:26 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1338', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 11:35:30 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1339', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 11:38:00 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1340', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 11:43:01 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1341', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 11:43:42 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1342', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 11:51:28 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1343', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 11/03/2014 a las 11:53:54 p. m.', 'Tlanchinol', 'admin', '2014-03-11');
INSERT INTO `empleado_movimiento` VALUES ('1344', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 12:10:01 a. m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1345', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 12:10:29 a. m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1346', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 12:34:16 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1347', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 12:35:01 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1348', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 12:36:13 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1349', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 12:37:47 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1350', 'Inicio de sesión.', 'El usuario christian inicio sesion correctamente a las 12:37:56 p.m.', 'Chapulhuacan', 'christian', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1351', 'Salida del programa.', 'El usuario christian dejó de usar el sistema el dia 12/03/2014 a las 12:43:02 p.m.', 'Chapulhuacan', 'christian', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1352', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 01:11:21 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1353', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 01:11:34 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1354', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 01:11:57 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1355', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 01:13:36 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1356', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:00:26 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1357', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 02:00:45 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1358', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:09:28 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1359', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 02:09:40 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1360', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:17:23 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1361', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 02:18:03 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1362', 'Intento de login fallido.', 'El usuario:  admin, ingreso datos incorrectos.', null, ' admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1363', 'Intento de login fallido.', 'El usuario:  admin, ingreso datos incorrectos.', null, ' admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1364', 'Intento de login fallido.', 'El usuario:  admin, ingreso datos incorrectos.', null, ' admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1365', 'Intento de login fallido.', 'El usuario:  christian, ingreso datos incorrectos.', null, ' christian', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1366', 'Intento de login fallido.', 'El usuario:  admin, ingreso datos incorrectos.', null, ' admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1367', 'Intento de login fallido.', 'El usuario:  admin, ingreso datos incorrectos.', null, ' admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1368', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:20:02 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1369', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 12/03/2014 a las 02:24:31 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1370', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 02:25:22 p.m.', 'Tlanchinol', 'admin', '2014-03-12');
INSERT INTO `empleado_movimiento` VALUES ('1371', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 03:53:02 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1372', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 03:54:16 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1373', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 03:54:49 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1374', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 03:57:47 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1375', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:12:26 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1376', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:12:39 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1377', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:14:44 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1378', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:15:15 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1379', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:26:44 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1380', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:26:53 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1381', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:27:55 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1382', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:28:05 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1383', 'Intento de login fallido.', 'El usuario:  admin, ingreso datos incorrectos.', null, ' admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1384', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:28:37 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1385', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:28:46 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1386', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:39:54 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1387', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:40:04 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1388', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:49:40 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1389', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:49:52 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1390', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 04:54:13 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1391', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 04:54:20 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1392', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 06:28:25 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1393', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 06:28:37 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1394', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 07:15:14 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1395', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 07:15:40 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1396', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 08:55:49 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1397', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 15/03/2014 a las 08:57:16 p.m.', 'Tlanchinol', 'admin', '2014-03-15');
INSERT INTO `empleado_movimiento` VALUES ('1398', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 12:02:24 a.m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1399', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/03/2014 a las 12:03:11 a.m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1400', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 12:31:34 a.m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1401', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 12:43:24 a.m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1402', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/03/2014 a las 12:44:04 a.m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1403', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 07:21:28 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1404', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/03/2014 a las 07:22:14 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1405', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 07:27:53 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1406', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/03/2014 a las 07:28:31 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1407', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 07:29:03 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1408', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/03/2014 a las 07:30:39 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1409', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 07:31:18 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1410', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/03/2014 a las 07:34:59 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1411', 'Inicio de sesión.', 'El usuario admin inicio sesion correctamente a las 07:35:34 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1412', 'Salida del programa.', 'El usuario admin dejó de usar el sistema el dia 16/03/2014 a las 07:36:37 p. m.', 'Tlanchinol', 'admin', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1413', 'Intento de login fallido.', 'El usuario: frank, ingreso datos incorrectos.', null, 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1414', 'Intento de login fallido.', 'El usuario: frank, ingreso datos incorrectos.', null, 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1415', 'Inicio de sesión.', 'El usuario frank inicio sesion correctamente a las 08:24:10 p. m.', 'Chapulhuacan', 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1416', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 16/03/2014 a las 08:24:31 p. m.', 'Chapulhuacan', 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1417', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 16/03/2014 a las 08:25:51 p. m.', 'Chapulhuacan', 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1418', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 16/03/2014 a las 08:25:53 p. m.', 'Chapulhuacan', 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1419', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 16/03/2014 a las 08:25:55 p. m.', 'Chapulhuacan', 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1420', 'Venta de equipo.', 'El usuario frank ha vendido un equipo el dia 16/03/2014 a las 08:27:27 p. m.', 'Chapulhuacan', 'frank', '2014-03-16');
INSERT INTO `empleado_movimiento` VALUES ('1421', 'Salida del programa.', 'El usuario frank dejó de usar el sistema el dia 16/03/2014 a las 08:27:29 p. m.', 'Chapulhuacan', 'frank', '2014-03-16');

-- ----------------------------
-- Table structure for equipo_almacen
-- ----------------------------
DROP TABLE IF EXISTS `equipo_almacen`;
CREATE TABLE `equipo_almacen` (
  `idequipo_almacen` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_celular` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_equipo` int(10) unsigned zerofill DEFAULT '0000000000',
  `iccid_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `precioCelular` decimal(10,0) NOT NULL,
  `marca_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `numero_celular` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idequipo_almacen`),
  KEY `idsucursal_idx` (`idsucursal`) USING BTREE,
  CONSTRAINT `equipo_almacen_ibfk_1` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_almacen
-- ----------------------------
INSERT INTO `equipo_almacen` VALUES ('21', 'PH06130 STATUS BLANCO 3G', '356190055612956', '0000000020', '8952020013595534908', '4', '899', 'Lanix\r', '');
INSERT INTO `equipo_almacen` VALUES ('22', 'S100 NEGRO', '355189021656970', '0000000021', '8952020013595535009', '4', '1269', 'Lanix\r', '');
INSERT INTO `equipo_almacen` VALUES ('24', 'P880 NEGRO 3G', '355189021656972', '0000000023', '8952020013595535211', '1', '4999', 'LG\r', '');
INSERT INTO `equipo_almacen` VALUES ('26', 'XT925 RAZR HD', '355189021656974', '0000000025', '8952020013595535413', '3', '6249', 'Motorola\r', '');
INSERT INTO `equipo_almacen` VALUES ('28', 'LT26 XPERIA S', '355189021656976', '0000000027', '8952020013595535120', '1', '5739', 'Motorola\r', '');
INSERT INTO `equipo_almacen` VALUES ('29', 'MOTO X XT1058 NEGRO', '355189021656977', '0000000028', '8952020013595535221', '3', '8999', 'Motorola\r', '');
INSERT INTO `equipo_almacen` VALUES ('30', 'MOTO X XT1058 NEGRO', '355189021656978', '0000000029', '8952020013595535322', '3', '8999', 'Motorola\r', '');
INSERT INTO `equipo_almacen` VALUES ('32', 'ONE PLATA', '355189021656930', '0000000031', '8952020013595535524', '3', '7169', 'HTC\r', '');
INSERT INTO `equipo_almacen` VALUES ('38', 'ONE PLATA', '355189021656936', '0000000037', '8952020013595535524', '3', '7169', 'HTC\r', '');
INSERT INTO `equipo_almacen` VALUES ('41', 'MOTO X XT1058 NEGRO', '355189021656939', '0000000040', '8952020013594535221', '3', '8999', 'Motorola\r', '');
INSERT INTO `equipo_almacen` VALUES ('42', 'V795 ROJO', '355189021657902', '0000000041', '8952020013592736022', '3', '979', 'ZTE\r', '');
INSERT INTO `equipo_almacen` VALUES ('43', 'V795 ROJO', '355189021658903', '0000000042', '8952020013593736223', '3', '979', 'ZTE\r', '');
INSERT INTO `equipo_almacen` VALUES ('44', 'V795 ROJO', '355189021659904', '0000000043', '8952020013594736424', '3', '979', 'ZTE\r', '');
INSERT INTO `equipo_almacen` VALUES ('47', 'V795 NEGRO', '355189021726907', '0000000046', '8952020013596570221', '3', '979', 'ZTE\r', '');
INSERT INTO `equipo_almacen` VALUES ('48', 'V795 NEGRO', '355189021736908', '0000000047', '8952020013597572322', '3', '979', 'ZTE\r', '');
INSERT INTO `equipo_almacen` VALUES ('52', 'Modelo test', '99928345678', '0000000000', '999283456', '4', '6250', 'Modelo test', '7712149235');

-- ----------------------------
-- Table structure for equipo_entregado
-- ----------------------------
DROP TABLE IF EXISTS `equipo_entregado`;
CREATE TABLE `equipo_entregado` (
  `idequipo_entregado` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_entrega` date DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `empleado` varchar(45) DEFAULT NULL,
  `imei_equipo` varchar(45) DEFAULT NULL,
  `iccid_equipo` varchar(45) DEFAULT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idequipo_entregado`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of equipo_entregado
-- ----------------------------
INSERT INTO `equipo_entregado` VALUES ('1', '2014-01-09', 'Garantia', 'bety', '999888999', '9999', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('2', '2014-01-09', 'Garantia', 'bety', '299992388299', '88813389', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('3', '2014-01-09', 'Reparacion', 'admin', '2342342424', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('4', '2014-01-09', 'Reparacion', 'admin', '1231', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('5', '2014-01-09', 'Garantia', 'bety', '234970324079234', '8883778', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('6', '2014-01-09', 'Reparacion', 'christian', '1', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('7', '2014-01-09', 'Reparacion', 'christian', '2342424', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('8', '2014-01-09', 'Reparacion', 'christian', '23234234234234', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('9', '2014-01-09', 'Garantia', 'christian', '123456', '933498', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('10', '2014-01-09', 'Garantia', 'christian', '997744', '913291', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('11', '2014-01-09', 'Garantia', 'christian', '898289938888499', '1231213', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('12', '2014-01-09', 'Reparacion', 'christian', '341234234243', null, 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('13', '2014-01-10', 'Reparacion', 'admin', '3433445', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('14', '2014-01-10', 'Reparacion', 'admin', '8888888888888888888', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('15', '2014-01-10', 'Garantia', 'admin', '234970324079234', '98897', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('16', '2014-01-10', 'Garantia', 'admin', '9840292890', '92938399', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('17', '2014-01-10', 'Reparacion', 'admin', '2342342424', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('18', '2014-01-10', 'Reparacion', 'admin', '234970324079234', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('19', '2014-01-10', 'Reparacion', 'admin', '299992388299', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('20', '2014-01-10', 'Reparacion', 'admin', '234970324079234', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('21', '2014-01-14', 'Garantia', 'admin', '999888999', '9999', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('22', '2014-01-14', 'Garantia', 'admin', '234970324079234', '98897', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('23', '2014-01-14', 'Garantia', 'admin', '234970324079234', '8883778', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('24', '2014-01-14', 'Garantia', 'admin', '22', '2134345345', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('25', '2014-01-14', 'Garantia', 'admin', '9840292890', '92938399', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('26', '2014-01-14', 'Garantia', 'admin', '', '', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('27', '2014-01-14', 'Garantia', 'admin', '', '', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('28', '2014-01-14', 'Garantia', 'admin', '', '', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('29', '2014-01-14', 'Garantia', 'admin', '513764222183965', '8965880812100011146', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('30', '2014-01-15', 'Reparacion', 'admin', '3456567', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('31', '2014-01-17', 'Garantia', 'admin', '357117056385350', '895202117831002263', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('32', '2014-01-17', 'Reparacion', 'pisa', '55778445612345', null, 'Pisaflores');
INSERT INTO `equipo_entregado` VALUES ('33', '2014-01-21', 'Garantia', 'admin', '307312075680399', '892020227831001162', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('34', '2014-01-23', 'Garantia', 'frank', 'sssssssssssssss', 'qqq', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('35', '2014-01-24', 'Garantia', 'admin', '356325620883578', '899930354455078120', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('36', '2014-01-24', 'Garantia', 'admin', '555555555555555', '893550504569956117', 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('37', '2014-01-24', 'Garantia', 'frank', '0123456789', '9876543210', 'Chapulhuacan');
INSERT INTO `equipo_entregado` VALUES ('38', '2014-01-24', 'Reparacion', 'admin', '35662456', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('39', '2014-01-24', 'Reparacion', 'admin', '78000544', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('40', '2014-01-24', 'Reparacion', 'admin', '234234234', null, 'Tlanchinol');
INSERT INTO `equipo_entregado` VALUES ('41', '2014-02-08', 'Garantia', 'admin', '333444555666444', '895220201207820050', 'Tlanchinol');

-- ----------------------------
-- Table structure for equipo_garantia
-- ----------------------------
DROP TABLE IF EXISTS `equipo_garantia`;
CREATE TABLE `equipo_garantia` (
  `idequipo_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo` int(10) unsigned zerofill DEFAULT '0000000000',
  `marca_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `accesorios` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `iccid_equipo` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idempleado` int(11) DEFAULT NULL,
  `observaciones` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `modelo_equipo` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idequipo_garantia`),
  KEY `idempleado_idx` (`idempleado`) USING BTREE,
  KEY `id_empleado_idx` (`idempleado`) USING BTREE,
  KEY `id_sucursal_idx` (`idsucursal`) USING BTREE,
  KEY `id__sucursal_idx` (`idsucursal`) USING BTREE,
  CONSTRAINT `equipo_garantia_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `equipo_garantia_ibfk_2` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_garantia
-- ----------------------------
INSERT INTO `equipo_garantia` VALUES ('4', '0000000004', 'HP', '898289938888499', 'Bateria litio 22', '2014-01-08', '1231213', '21', 'Polvoso', 'DV 4000', '1');
INSERT INTO `equipo_garantia` VALUES ('8', '0000000008', 'Apple', '997744', 'Un skin', '2014-01-09', '913291', '21', 'Muy bien cuidado', 'iPhone 4', '1');
INSERT INTO `equipo_garantia` VALUES ('9', '0000000009', 'Apple', '123456', 'Un skin y otra cosa', '2014-01-09', '933498', '21', 'Muy bien cuidado', 'iPhone 5', '1');
INSERT INTO `equipo_garantia` VALUES ('10', '0000000010', 'Apple', '9992233', 'Bla bla bla', '2014-01-09', '887652', '22', 'Bla bla', 'iPhone 5s', '1');
INSERT INTO `equipo_garantia` VALUES ('14', '0000000011', 'Samsung', '513764333785555', 'tapa, cable de datos, ', '2014-01-14', '896600081207820050', '19', 'display roto', 'GT-E1205L', '2');
INSERT INTO `equipo_garantia` VALUES ('16', '0000000013', 'alcatel', '516673031842298', '', '2014-01-15', '8952200678100055588', '19', '', 'OT-808 ROSA', '2');
INSERT INTO `equipo_garantia` VALUES ('17', '0000000014', 'alcatel', '516673031842298', '', '2014-01-15', '895220066880006663', '19', '', 'OT-808 Blanco', '2');
INSERT INTO `equipo_garantia` VALUES ('18', '0000000015', 'APPLE', '507893201843378', 'funda, audifonos', '2014-01-15', '895220207370053215', '19', 'telefono golpeado', 'IPHONE 4 16GB BLANCO SPA', '2');
INSERT INTO `equipo_garantia` VALUES ('19', '0000000016', 'APPLE', '352256503335678', 'funda, audifonos', '2014-01-15', '895520204569966616', '19', '', 'IPHONE 4 16GB NEGRO SPA', '2');
INSERT INTO `equipo_garantia` VALUES ('22', '0000000019', 'Motorola', '358727056353550', 'ninguno', '2014-01-17', '895202117831002263', '19', 'equipo con carcasa rayada', 'Razr x', '2');
INSERT INTO `equipo_garantia` VALUES ('23', '0000000020', 'Marca test', '423234234111', '222', '2014-01-24', '99933002', '21', '1', '1244', '1');
INSERT INTO `equipo_garantia` VALUES ('24', '0000000021', 'Phone brand', '299948840038', '', '2014-01-24', '213123123123', '19', '', 'Phone model', '2');
INSERT INTO `equipo_garantia` VALUES ('25', '0000000022', 'MODELO', '99828823399', '', '2014-02-08', '9992899', '19', '', 'MARCA', '2');

-- ----------------------------
-- Table structure for equipo_reparacion
-- ----------------------------
DROP TABLE IF EXISTS `equipo_reparacion`;
CREATE TABLE `equipo_reparacion` (
  `idequipo_reparacion` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo` int(11) unsigned DEFAULT '0',
  `marca_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `modelo_equipo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(145) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `idempleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idequipo_reparacion`),
  KEY `FK_SUC_REP_idx` (`idsucursal`) USING BTREE,
  KEY `fk_idempleado_idx` (`idempleado`),
  CONSTRAINT `equipo_reparacion_ibfk_1` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idempleado` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of equipo_reparacion
-- ----------------------------
INSERT INTO `equipo_reparacion` VALUES ('22', '1', 'Motorola', '99139993399', 'TIP', '2014-01-26', '', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('23', '2', 'Motorola', '99139993399', 'TIP', '2014-01-26', '', null, '2', '19');
INSERT INTO `equipo_reparacion` VALUES ('24', '3', 'Motorola', '99139993398', 'TIP', '2014-01-26', '', null, '2', '19');

-- ----------------------------
-- Table structure for municipio
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `idmunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `municipio` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idmunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES ('1', 'Chapulhuacan');
INSERT INTO `municipio` VALUES ('2', 'Tlanchinol');
INSERT INTO `municipio` VALUES ('3', 'Tepehuacan');
INSERT INTO `municipio` VALUES ('4', 'Pisaflores');

-- ----------------------------
-- Table structure for permiso_usuario
-- ----------------------------
DROP TABLE IF EXISTS `permiso_usuario`;
CREATE TABLE `permiso_usuario` (
  `idpermiso_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idempleado` int(11) DEFAULT NULL,
  `permiso_usuariocol` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idpermiso_usuario`),
  KEY `FK_Permiso_empleado_idx` (`idempleado`) USING BTREE,
  CONSTRAINT `permiso_usuario_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Ésta tabla contiene los permisos que tiene cada usuario\n{tambien se debe de agregar los permisos a la tabla de usuarios}';

-- ----------------------------
-- Records of permiso_usuario
-- ----------------------------

-- ----------------------------
-- Table structure for recarga
-- ----------------------------
DROP TABLE IF EXISTS `recarga`;
CREATE TABLE `recarga` (
  `idrecarga` int(11) NOT NULL AUTO_INCREMENT,
  `idcodigo_recarga` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrecarga`),
  KEY `id_idx` (`idcodigo_recarga`) USING BTREE,
  CONSTRAINT `recarga_ibfk_1` FOREIGN KEY (`idcodigo_recarga`) REFERENCES `codigo_recarga` (`idcodigo_recarga`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of recarga
-- ----------------------------

-- ----------------------------
-- Table structure for sucursal
-- ----------------------------
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE `sucursal` (
  `idsucursal` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idmunicipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsucursal`),
  KEY `idmunicipio_idx` (`idmunicipio`) USING BTREE,
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idmunicipio`) REFERENCES `municipio` (`idmunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of sucursal
-- ----------------------------
INSERT INTO `sucursal` VALUES ('1', 'Chapulhuacan', '1');
INSERT INTO `sucursal` VALUES ('2', 'Tlanchinol', '2');
INSERT INTO `sucursal` VALUES ('3', 'Tepehuacan de Guerrero', '3');
INSERT INTO `sucursal` VALUES ('4', 'Pisaflores', '4');

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `idventa_detalle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idventa`),
  KEY `idventa_detalle_idx` (`idventa_detalle`) USING BTREE,
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idventa_detalle`) REFERENCES `venta_detalle` (`idventa_detalle`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of venta
-- ----------------------------

-- ----------------------------
-- Table structure for venta_detalle
-- ----------------------------
DROP TABLE IF EXISTS `venta_detalle`;
CREATE TABLE `venta_detalle` (
  `idventa_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `idequipo_almacen` int(11) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `modelo_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `marca_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imei_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `empleado` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `sucursal` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `iccid_celular` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idventa_detalle`),
  KEY `FK_EAlmacen_idx` (`idequipo_almacen`) USING BTREE,
  CONSTRAINT `venta_detalle_ibfk_1` FOREIGN KEY (`idequipo_almacen`) REFERENCES `equipo_almacen` (`idequipo_almacen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='/*Falta agregar los idempleado y idequipo_almacen*/';

-- ----------------------------
-- Records of venta_detalle
-- ----------------------------
INSERT INTO `venta_detalle` VALUES ('1', null, '2014-01-05', 'iPhone 4S', 'Apple', '333443', 'admin', '8001', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('2', null, '2014-01-05', 'iPhone 5S', 'Apple', '1213121', 'admin', '10300', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('3', null, '2014-01-05', 'iPhone 5', 'Apple', '112233', 'admin', '10000', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('4', null, '2014-01-05', 'Nokia', 'Nokia', '18993', 'frank', '899', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('5', null, '2014-01-05', 'XT 300', 'Sony Ericsson', '1313223424', 'frank', '399', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('6', null, '2014-01-05', 'Chat', 'LG', '231313131', 'frank', '799', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('7', null, '2014-01-05', 'iPhone 4S', 'Apple', '333444', 'frank', '8000', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('8', null, '2014-01-05', 'XT 300', 'Sony Ericsson', '1313223423', 'frank', '399', 'Chapulhuacan', null);
INSERT INTO `venta_detalle` VALUES ('9', null, '2014-01-05', 'iPhone 5S', 'Apple', '1213121', 'bety', '10300', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('10', null, '2014-01-05', 'iPhone 5', 'Apple', '112233', 'bety', '10000', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('11', null, '2014-01-05', 'iPhone 4S', 'Apple', '333443', 'bety', '8000', 'Tlanchinol', null);
INSERT INTO `venta_detalle` VALUES ('12', null, '2014-01-05', 'iPhone 5S', 'Apple', '1213121', 'admin', '10300', 'Tlanchinol', '3847952345566666');
INSERT INTO `venta_detalle` VALUES ('13', null, '2014-01-05', 'iPhone 4S', 'Apple', '333443', 'admin', '8000', 'Tlanchinol', '123456');
INSERT INTO `venta_detalle` VALUES ('14', null, '2014-01-05', 'iPhone 5', 'Apple', '112233', 'admin', '10000', 'Tlanchinol', '122334455667');
INSERT INTO `venta_detalle` VALUES ('15', null, '2014-01-05', 'Chat', 'LG', '231313131', 'christian', '799', 'Chapulhuacan', '455467567');
INSERT INTO `venta_detalle` VALUES ('16', null, '2014-01-05', 'XT 300', 'Sony Ericsson', '1313223423', 'christian', '399', 'Chapulhuacan', '234567');
INSERT INTO `venta_detalle` VALUES ('17', null, '2014-01-05', 'iPhone 4S', 'Apple', '333444', 'christian', '8000', 'Chapulhuacan', '908489399');
INSERT INTO `venta_detalle` VALUES ('18', null, '2014-01-05', 'Chat', 'LG', '231313131', 'christian', '799', 'Chapulhuacan', '455467567');
INSERT INTO `venta_detalle` VALUES ('19', null, '2014-01-05', 'XT 300', 'Sony Ericsson', '1313223424', 'christian', '399', 'Chapulhuacan', '12313213213');
INSERT INTO `venta_detalle` VALUES ('20', null, '2014-01-05', 'Nokia', 'Nokia', '18993', 'christian', '899', 'Chapulhuacan', '232323');
INSERT INTO `venta_detalle` VALUES ('21', null, '2014-01-05', 'P709', 'LG', '333', 'christian', '300', 'Chapulhuacan', '333');
INSERT INTO `venta_detalle` VALUES ('22', null, '2014-01-05', 'Chic WF Blanco', 'Azumi', '343434', 'admin', '639', 'Tlanchinol', '987654');
INSERT INTO `venta_detalle` VALUES ('23', null, '2014-01-05', 'INSPIRE 3D 3G', 'HTC', '445543', 'admin', '300', 'Tlanchinol', '33333');
INSERT INTO `venta_detalle` VALUES ('24', null, '2014-01-05', 'P708', 'LG', '2', 'admin', '300', 'Tlanchinol', '2');
INSERT INTO `venta_detalle` VALUES ('25', null, '2014-01-05', 'P708', 'LG', '555', 'admin', '300', 'Tlanchinol', '444');
INSERT INTO `venta_detalle` VALUES ('26', null, '2014-01-05', 'E450F WOLVERINE LENTES NEGRO,BLANCO 3G', 'LG', '1', 'admin', '300', 'Tlanchinol', '1');
INSERT INTO `venta_detalle` VALUES ('27', null, '2014-01-05', 'Chic WF Blanco', 'Azumi', '343434', 'admin', '639', 'Tlanchinol', '987654');
INSERT INTO `venta_detalle` VALUES ('28', null, '2014-01-05', 'E450F WOLVERINE LENTES NEGRO,BLANCO 3G', 'LG', '1', 'admin', '300', 'Tlanchinol', '1');
INSERT INTO `venta_detalle` VALUES ('29', null, '2014-01-05', 'iPhone 5S', 'Apple', '1213121', 'admin', '10300', 'Tlanchinol', '3847952345566666');
INSERT INTO `venta_detalle` VALUES ('30', null, '2014-01-05', 'iPhone 5', 'Apple', '112233', 'admin', '10000', 'Tlanchinol', '122334455667');
INSERT INTO `venta_detalle` VALUES ('31', null, '2014-01-05', 'iPhone 4S', 'Apple', '333443', 'admin', '8000', 'Tlanchinol', '123456');
INSERT INTO `venta_detalle` VALUES ('32', null, '2014-01-05', 'Chic WF Blanco', 'Azumi', '343434', 'admin', '639', 'Tlanchinol', '987654');
INSERT INTO `venta_detalle` VALUES ('33', null, '2014-01-05', 'P708', 'LG', '555', 'admin', '300', 'Tlanchinol', '444');
INSERT INTO `venta_detalle` VALUES ('34', null, '2014-01-05', 'INSPIRE 3D 3G', 'HTC', '445543', 'admin', '300', 'Tlanchinol', '33333');
INSERT INTO `venta_detalle` VALUES ('35', null, '2014-01-05', 'E450F WOLVERINE LENTES NEGRO,BLANCO 3G', 'LG', '1', 'admin', '300', 'Tlanchinol', '1');
INSERT INTO `venta_detalle` VALUES ('36', null, '2014-01-05', 'Nokia', 'Nokia', '223', 'chapulhuacan', '899', 'Chapulhuacan', '232323');
INSERT INTO `venta_detalle` VALUES ('37', null, '2014-01-05', '9900 Negro', 'Blackberry', '9992', 'chapulhuacan', '10379', 'Chapulhuacan', '689923');
INSERT INTO `venta_detalle` VALUES ('38', null, '2014-01-05', '9900 Negro', 'Blackberry', '567566', 'chapulhuacan', '10379', 'Chapulhuacan', '589589');
INSERT INTO `venta_detalle` VALUES ('39', null, '2014-01-05', 'P708', 'LG', '2', 'admin', '300', 'Tlanchinol', '2');
INSERT INTO `venta_detalle` VALUES ('40', null, '2014-01-05', 'P708', 'LG', '323', 'admin', '300', 'Tlanchinol', '343');
INSERT INTO `venta_detalle` VALUES ('41', null, '2014-01-05', 'Chat', 'LG', '231313131', 'pao', '799', 'Chapulhuacan', '455467567');
INSERT INTO `venta_detalle` VALUES ('42', null, '2014-01-05', 'iPhone 4S', 'Apple', '333444', 'pao', '8000', 'Chapulhuacan', '908489399');
INSERT INTO `venta_detalle` VALUES ('43', null, '2014-01-05', '9900 Blanco', 'Blackberry', '56732234', 'admin', '10379', 'Tlanchinol', '589789');
INSERT INTO `venta_detalle` VALUES ('44', null, '2014-01-05', 'XT925 RAZR HD', 'Motorola\r', '355189021656973', 'frank', '6249', 'Chapulhuacan', '8952020013595535312');
INSERT INTO `venta_detalle` VALUES ('45', null, '2014-01-05', 'V795 NEGRO', 'ZTE', '355189021756910', 'frank', '979', 'Chapulhuacan', '8952020013599576524');
INSERT INTO `venta_detalle` VALUES ('46', null, '2014-01-05', 'V795 ROJO', 'ZTE\r', '355189021660905', 'frank', '979', 'Chapulhuacan', '8952020013595036614');
INSERT INTO `venta_detalle` VALUES ('47', null, '2014-01-05', 'LT26 XPERIA S', 'Motorola\r', '355189021656975', 'frank', '5739', 'Chapulhuacan', '8952020013595535514');
INSERT INTO `venta_detalle` VALUES ('48', null, '2014-01-05', 'ONE PLATA', 'HTC\r', '355189021656935', 'bety', '7169', 'Tlanchinol', '8952020023595535423');
INSERT INTO `venta_detalle` VALUES ('49', null, '2014-01-05', 'ONE PLATA', 'HTC\r', '355189021656979', 'bety', '7169', 'Tlanchinol', '8952020013595535423');
INSERT INTO `venta_detalle` VALUES ('50', null, '2014-01-05', 'iphone 4s', 'apple', '0', 'frank', '10', 'Chapulhuacan', '0');
INSERT INTO `venta_detalle` VALUES ('51', null, '2014-01-05', 'MOTO X XT1058 NEGRO', 'Motorola\r', '355189021656933', 'admin', '8999', 'Tlanchinol', '8952020013105535221');
INSERT INTO `venta_detalle` VALUES ('52', null, '2014-01-05', 'ONE PLATA', 'HTC\r', '355259025685655', 'admin', '7169', 'Tlanchinol', '8952020013595534807');
INSERT INTO `venta_detalle` VALUES ('53', null, '2014-01-05', 'MOTO X XT1058 NEGRO', 'Motorola\r', '355189021656934', 'admin', '8999', 'Tlanchinol', '8952020013095535322');
INSERT INTO `venta_detalle` VALUES ('54', null, '2014-01-05', 'ONE PLATA', 'HTC\r', '355189021656998', 'chapulhuacan', '7169', 'Chapulhuacan', '8952020013595534706');
INSERT INTO `venta_detalle` VALUES ('55', null, '2014-01-05', 'ABC', 'DCE', '221', 'admin', '1300', 'Tlanchinol', '332');
INSERT INTO `venta_detalle` VALUES ('56', null, '2014-01-05', 'ABC', 'DCE', '220', 'admin', '1300', 'Tlanchinol', '331');
INSERT INTO `venta_detalle` VALUES ('57', null, '2014-01-05', 'ABC', 'DCE', '219', 'frank', '1300', 'Chapulhuacan', '330');
INSERT INTO `venta_detalle` VALUES ('58', null, '2014-01-05', 'D680 G PRO LITE', 'LG\r', '355189021656971', 'frank', '4999', 'Chapulhuacan', '8952020013595535110');
INSERT INTO `venta_detalle` VALUES ('59', null, '2014-01-05', 'ABC', 'DCE', '222', 'frank', '1300', 'Chapulhuacan', '333');
INSERT INTO `venta_detalle` VALUES ('60', null, '2014-01-05', 'IPHONE 4 16GB BLANCO SPA', 'apple', '355288991656999', 'frank', '8849', 'Chapulhuacan', '8952020013595535211');
INSERT INTO `venta_detalle` VALUES ('61', null, '2014-01-05', 'IPHONE 4 16GB BLANCO SPA', 'Apple', '355288991656666', 'frank', '8849', 'Chapulhuacan', '8952031013595535222');
INSERT INTO `venta_detalle` VALUES ('62', null, '2014-01-05', null, null, null, null, null, null, null);
INSERT INTO `venta_detalle` VALUES ('63', null, '2014-01-05', 'MOTO X XT1058 BLANCO', 'Motorola\r', '355189021656937', 'frank', '8999', 'Chapulhuacan', '8952020013525535514');
INSERT INTO `venta_detalle` VALUES ('64', null, '2014-01-05', 'MOTO X XT1058 NEGRO', 'Motorola\r', '355189021656938', 'chapulhuacan', '8999', 'Chapulhuacan', '8952020013593535120');
INSERT INTO `venta_detalle` VALUES ('65', null, '2014-03-19', 'yyy', 'xxx', '132', 'frank', '1290', 'Chapulhuacan', '567');
INSERT INTO `venta_detalle` VALUES ('66', null, '2014-03-18', 'V795 NEGRO', 'ZTE\r', '355189021746909', 'frank', '979', 'Chapulhuacan', '8952020013598574423');
INSERT INTO `venta_detalle` VALUES ('67', null, '2014-03-18', 'V795 NEGRO', 'ZTE\r', '355189021716906', 'frank', '979', 'Chapulhuacan', '8952020013594568120');
INSERT INTO `venta_detalle` VALUES ('68', null, '2014-03-18', 'MOTO X XT1058 NEGRO', 'Motorola\r', '355189021656932', 'frank', '8999', 'Chapulhuacan', '8952020013125535120');
INSERT INTO `venta_detalle` VALUES ('69', null, '2014-03-17', 'MOTO X XT1058 BLANCO', 'Motorola\r', '355189021656931', 'frank', '8999', 'Chapulhuacan', '8952020010495535514');

-- ----------------------------
-- Procedure structure for prueba_fecha
-- ----------------------------
DROP PROCEDURE IF EXISTS `prueba_fecha`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `prueba_fecha`()
BEGIN
	#Routine body goes here...
	#variables
	DECLARE fecha,fecha_vendido,fecha_2 DATE;
	DECLARE done INT DEFAULT 0;
	DECLARE i INT DEFAULT 0;

	DECLARE cur1 cursor FOR SELECT fecha_venta FROM venta_detalle;

	 UPDATE venta_detalle SET fecha_venta = DATE_FORMAT(fecha_venta,'%d/%m/%Y');
	-- UPDATE venta_detalle SET fecha_venta = fecha_venta+1;

	/*OPEN cur1;
		FETCH cur1 INTO fecha;
		REPEAT
			UPDATE venta_detalle SET fecha_venta = DATE_FORMAT(fecha_venta,'%d/%m/%Y') WHERE idventa_detalle = i+1;
		UNTIL done
		END REPEAT;
	CLOSE cur1;*/


END
;;
DELIMITER ;
