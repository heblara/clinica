-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-05-2013 a las 11:22:31
-- Versión del servidor: 5.5.31
-- Versión de PHP: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mydb`
--
CREATE DATABASE `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador_clinica`
--

CREATE TABLE IF NOT EXISTS `administrador_clinica` (
  `idadministrador` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apeliido` varchar(45) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idadministrador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE IF NOT EXISTS `consulta` (
  `idconsulta` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `idDoctor` int(11) DEFAULT NULL,
  `idHorario` varchar(45) NOT NULL,
  `Diagnostico` text NOT NULL,
  PRIMARY KEY (`idconsulta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `Descripcion`) VALUES
(1, 'AHUACHAPAN'),
(2, 'SANTA ANA'),
(3, 'SONSONATE'),
(4, 'CHALATENANGO'),
(5, 'LA LIBERTAD'),
(6, 'SAN SALVADOR'),
(7, 'CUSCATLAN'),
(8, 'LA PAZ'),
(9, 'CABAÑAS'),
(10, 'SAN VICENTE'),
(11, 'USULUTAN'),
(12, 'SAN MIGUEL'),
(13, 'MORAZÁN'),
(14, 'LA UNIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `iddoctor` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `jvpm` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddoctor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `idhorario` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `idDoctor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idhorario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

CREATE TABLE IF NOT EXISTS `medicamento` (
  `idmedicamento` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `Fecha_Elaboracion` datetime DEFAULT NULL,
  `Fecha_Vencimiento` datetime DEFAULT NULL,
  `Existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmedicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `idmunicipio` int(11) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `iddepto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`idmunicipio`, `Descripcion`, `iddepto`) VALUES
(1, 'AHUACHAPÁN', 1),
(2, 'APANECA', 1),
(3, 'ATIQUIZAYA', 1),
(4, 'CONCEPCIÓN DE ATACO', 1),
(5, 'EL REFUGIO', 1),
(6, 'GUAYMANGO', 1),
(7, 'JUJUTLA', 1),
(8, 'SAN FRANCISCO MENÉNDEZ', 1),
(9, 'SAN LORENZO', 1),
(10, 'SAN PEDRO PUXTLA', 1),
(11, 'TACUBA', 1),
(12, 'TURÍN', 1),
(1, 'CANDELARIA DE LA FRONTERA', 2),
(2, 'COATEPEQUE', 2),
(3, 'CHALCHUAPA', 2),
(4, 'EL CONGO', 2),
(5, 'EL PORVENIR', 2),
(6, 'MASAHUAT', 2),
(7, 'METAPÁN', 2),
(8, 'SAN ANTONIO PAJONAL', 2),
(9, 'SAN SEBASTIÁN SALITRILLO', 2),
(10, 'SANTA ANA', 2),
(11, 'SANTA ROSA GUACHIPILÍN', 2),
(12, 'SANTIAGO DE LA FRONTERA', 2),
(13, 'TEXISTEPEQUE', 2),
(1, 'ACAJUTLA', 3),
(2, 'ARMENIA', 3),
(3, 'CALUCO', 3),
(4, 'CUISNAHUAT', 3),
(5, 'SANTA ISABEL ISHUATÁN', 3),
(6, 'IZALCO', 3),
(7, 'JUAYÚA', 3),
(8, 'NAHUIZALCO', 3),
(9, 'NAHULINGO', 3),
(10, 'SALCOATITÁN', 3),
(11, 'SAN ANTONIO DEL MONTE', 3),
(12, 'SAN JULIÁN', 3),
(13, 'SANTA CATARINA MASAHUAT', 3),
(14, 'SANTO DOMINGO DE GUZMÁN', 3),
(15, 'SONSONATE', 3),
(16, 'SONZACATE', 3),
(1, 'AGUA CALIENTE', 4),
(2, 'ARCATAO', 4),
(3, 'AZACUALPA', 4),
(4, 'CITALÁ', 4),
(5, 'COMALAPA', 4),
(6, 'CONCEPCIÓN QUEZALTEPEQUE', 4),
(7, 'CHALATENANGO', 4),
(8, 'DULCE NOMBRE DE MARÍA', 4),
(9, 'EL CARRIZAL', 4),
(10, 'EL PARAÍSO', 4),
(11, 'LA LAGUNA', 4),
(12, 'LA PALMA', 4),
(13, 'LA REINA', 4),
(14, 'LAS VUELTAS', 4),
(15, 'NOMBRE DE JESÚS', 4),
(16, 'NUEVA CONCEPCIÓN', 4),
(17, 'NUEVA TRINIDAD', 4),
(18, 'OJOS DE AGUA', 4),
(19, 'POTONICO', 4),
(20, 'SAN ANTONIO LA CRUZ', 4),
(21, 'SAN ANTONIO LOS RANCHOS', 4),
(22, 'SAN FERNANDO', 4),
(23, 'SAN FRANCISCO LEMPA', 4),
(24, 'SAN FRANCISCO MORAZÁN', 4),
(25, 'SAN IGNACIO', 4),
(26, 'SAN ISIDRO LABRADOR', 4),
(27, 'SAN JOSÉ CANCASQUE', 4),
(28, 'SAN JOSÉ LAS FLORES', 4),
(29, 'SAN LUIS DEL CARMEN', 4),
(30, 'SAN MIGUEL DE MERCEDES', 4),
(31, 'SAN RAFAEL', 4),
(32, 'SANTA RITA', 4),
(33, 'TEJUTLA', 4),
(1, 'ANTIGUO CUSCATLÁN', 5),
(2, 'CIUDAD ARCE', 5),
(3, 'COLÓN', 5),
(4, 'COMASAGUA', 5),
(5, 'CHILTIUPÁN', 5),
(6, 'HUIZÚCAR', 5),
(7, 'JAYAQUE', 5),
(8, 'JICALAPA', 5),
(9, 'LA LIBERTAD', 5),
(10, 'NUEVO CUSCATLÁN', 5),
(11, 'NUEVA SAN SALVADOR', 5),
(12, 'QUEZALTEPEQUE', 5),
(13, 'SACACOYO', 5),
(14, 'SAN JOSÉ VILLANUEVA', 5),
(15, 'SAN JUÁN OPICO', 5),
(16, 'SAN MATÍAS', 5),
(17, 'SAN PABLO TACACHICO', 5),
(18, 'TAMANIQUE', 5),
(19, 'TALNIQUE', 5),
(20, 'TEOTEPEQUE', 5),
(21, 'TEPECOYO', 5),
(22, 'ZARAGOZA', 5),
(1, 'AGUILARES', 6),
(2, 'APOPA', 6),
(3, 'AYUTUXTEPEQUE', 6),
(4, 'CUSCATANCINGO', 6),
(5, 'EL PAÍSNAL', 6),
(6, 'GUAZAPA', 6),
(7, 'ILOPANGO', 6),
(8, 'MEJICANOS', 6),
(9, 'NEJAPA', 6),
(10, 'PANCHIMALCO', 6),
(11, 'ROSARIO DE MORA', 6),
(12, 'SAN MARCOS', 6),
(13, 'SAN MARTÍN', 6),
(14, 'SAN SALVADOR', 6),
(15, 'SANTIAGO TEXACUANGOS', 6),
(16, 'SANTO TOMÁS', 6),
(17, 'SOYAPANGO', 6),
(18, 'TONACATEPEQUE', 6),
(19, 'CIUDAD DELGADO', 6),
(1, 'CANDELARIA', 7),
(2, 'COJUTEPEQUE', 7),
(3, 'EL CARMEN', 7),
(4, 'EL ROSARIO', 7),
(5, 'MONTE SAN JUÁN', 7),
(6, 'ORATORIO DE CONCEPCIÓN', 7),
(7, 'SAN BARTOLOMÉ PERULAPÍA', 7),
(8, 'SAN CRISTÓBAL', 7),
(9, 'SAN JOSÉ GUAYABAL', 7),
(10, 'SAN PEDRO PERULAPÁN', 7),
(11, 'SAN RAFAEL CEDROS', 7),
(12, 'SAN RAMÓN', 7),
(13, 'SANTA CRUZ ANALQUITO', 7),
(14, 'SANTA CRUZ MICHAPA', 7),
(15, 'SUCHITOTO', 7),
(16, 'TENANCINGO', 7),
(1, 'CUYULTITÁN', 8),
(2, 'EL ROSARIO', 8),
(3, 'JERUSALÉN', 8),
(4, 'MERCEDES LA CEIBA', 8),
(5, 'OLOCUILTA', 8),
(6, 'PARAÍSO DE OSORIO', 8),
(7, 'SAN ANTONIO MASAHUAT', 8),
(8, 'SAN EMIGDIO', 8),
(9, 'SAN FRANCISCO CHINAMECA', 8),
(10, 'SAN JUÁN NONUALCO', 8),
(11, 'SAN JUÁN TALPA', 8),
(12, 'SAN JUÁN TEPEZONTES', 8),
(13, 'SAN LUIS TALPA', 8),
(14, 'SAN MIGUEL TEPEZONTES', 8),
(15, 'SAN PEDRO MASAHUAT', 8),
(16, 'SAN PEDRO NONUALCO', 8),
(17, 'SAN RAFAEL OBRAJUELO', 8),
(18, 'SANTA MARIÁ OSTUMA', 8),
(19, 'SANTIAGO NONUALCO', 8),
(20, 'TAPALHUACA', 8),
(21, 'ZACATECOLUCA', 8),
(22, 'SAN LUIS LA HERRADURA', 8),
(1, 'CINQUERA', 9),
(2, 'GUACOTECTI', 9),
(3, 'ILOBASCO', 9),
(4, 'JUTIAPA', 9),
(5, 'SAN ISIDRO', 9),
(6, 'SENSUNTEPEQUE', 9),
(7, 'TEJUTEPEQUE', 9),
(8, 'VICTORIA', 9),
(9, 'VILLA DOLORES', 9),
(1, 'APASTEPEQUE', 10),
(2, 'GUADALUPE', 10),
(3, 'SAN CAYETANO ISTEPEQUE', 10),
(4, 'SANTA CLARA', 10),
(5, 'SANTO DOMINGO', 10),
(6, 'SAN ESTEBAN CATARINA', 10),
(7, 'SAN ILDEFONSO', 10),
(8, 'SAN LORENZO', 10),
(9, 'SAN SEBASTIÁN', 10),
(10, 'SAN VICENTE', 10),
(11, 'TECOLUCA', 10),
(12, 'TEPETITÁN', 10),
(13, 'VERAPAZ', 10),
(1, 'ALEGRÍA', 11),
(2, 'BERLÍN', 11),
(3, 'CALIFORNIA', 11),
(4, 'CONCEPCIÓN BATRES', 11),
(5, 'EL TRIUNFO', 11),
(6, 'EREGUAYQUÍN', 11),
(7, 'ESTENZUELAS', 11),
(8, 'JIQUILISCO', 11),
(9, 'JUCUAPA', 11),
(10, 'JUCUARÁN', 11),
(11, 'MERCEDES UMAÑA', 11),
(12, 'NUEVA GRANADA', 11),
(13, 'OZATLÁN', 11),
(14, 'PUERTO EL TRIUNFO', 11),
(15, 'SAN AGUSTÍN', 11),
(16, 'SAN BUENAVENTURA', 11),
(17, 'SAN DIONISIO', 11),
(18, 'SANTA ELENA', 11),
(19, 'SAN FRANCISCO JAVIER', 11),
(20, 'SANTA MARÍA', 11),
(21, 'SANTIAGO DE MARÍA', 11),
(22, 'TECAPÁN', 11),
(23, 'USULUTÁN', 11),
(1, 'CAROLINA', 12),
(2, 'CIUDAD BARRIOS', 12),
(3, 'COMACARÁN', 12),
(4, 'CHAPELTIQUE', 12),
(5, 'CHINAMECA', 12),
(6, 'CHIRILAGUA', 12),
(7, 'EL TRÁNSITO', 12),
(8, 'LOLOTIQUE', 12),
(9, 'MONCAGUA', 12),
(10, 'NUEVA GUADALUPE', 12),
(11, 'NUEVO EDÉN DE SAN JUAN', 12),
(12, 'QUELEPA', 12),
(13, 'SAN ANTONIO DEL MOSCO', 12),
(14, 'SAN GERARDO', 12),
(15, 'SAN JORGE', 12),
(16, 'SAN LUIS DE LA REINA', 12),
(17, 'SAN MIGUEL', 12),
(18, 'SAN RAFAEL ORIENTE', 12),
(19, 'SESORI', 12),
(20, 'ULUAZAPA', 12),
(1, 'ARAMBALA', 13),
(2, 'CACAOPERA', 13),
(3, 'CORINTO', 13),
(4, 'CHILANGA', 13),
(5, 'DELICIA DE CONCEPCIÓN', 13),
(6, 'EL DIVISADERO', 13),
(7, 'EL ROSARIO', 13),
(8, 'GUALOCOCTI', 13),
(9, 'GUATAJIAGUA', 13),
(10, 'JOATECA', 13),
(11, 'JOCOAITIQUE', 13),
(12, 'JOCORO', 13),
(13, 'LOLOTIQUILLO', 13),
(14, 'MEANGUERA', 13),
(15, 'OSICALA', 13),
(16, 'PERQUÍN', 13),
(17, 'SAN CARLOS', 13),
(18, 'SAN FERNANDO', 13),
(19, 'SAN FRANCISCO GOTERA', 13),
(20, 'SAN ISIDRO', 13),
(21, 'SAN SIMÓN', 13),
(22, 'SENSEMBRA', 13),
(23, 'SOCIEDAD', 13),
(24, 'TOROLA', 13),
(25, 'YAMABAL', 13),
(26, 'YOLOAYQUÍN', 13),
(1, 'ANAMORÓS', 14),
(2, 'BOLÍVAR', 14),
(3, 'CONCEPCIÓN DE ORIENTE', 14),
(4, 'CONCHAGUA', 14),
(5, 'EL CARMEN', 14),
(6, 'EL SAUSE', 14),
(7, 'INTIPUCÁ', 14),
(8, 'LA UNIÓN', 14),
(9, 'LISLIQUE', 14),
(10, 'MEANGUERA DEL GOLFO', 14),
(11, 'NUEVA ESPARTA', 14),
(12, 'PASAQUINA', 14),
(13, 'POLORÓS', 14),
(14, 'SAN ALEJO', 14),
(15, 'SAN JOSÉ LAS FUERTES', 14),
(16, 'SANTA ROSA DE LIMA', 14),
(17, 'YAYANTIQUE', 14),
(18, 'YUCUAIQUÍN', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
  `idpaciente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `DUI` char(10) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Genero` enum('M','F') NOT NULL,
  `FechaNac` date NOT NULL,
  `LugarOrigen` varchar(100) NOT NULL,
  `EstadoCivil` varchar(45) NOT NULL,
  `Direccion` text NOT NULL,
  `idmunicipio` int(11) NOT NULL,
  `Telefono` char(10) NOT NULL,
  `Celular` char(10) DEFAULT NULL,
  PRIMARY KEY (`idpaciente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE IF NOT EXISTS `receta` (
  `idreceta` int(11) NOT NULL,
  `idconsulta` int(11) NOT NULL,
  PRIMARY KEY (`idreceta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta_medicamento`
--

CREATE TABLE IF NOT EXISTS `receta_medicamento` (
  `idreceta` int(11) NOT NULL,
  `idmedicamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `tipousuario` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
