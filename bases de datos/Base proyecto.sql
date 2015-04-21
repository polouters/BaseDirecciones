-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-04-2015 a las 03:49:02
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.4.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calle`
--

CREATE TABLE IF NOT EXISTS `calle` (
  `idCalle` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Municipio_idMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo postal`
--

CREATE TABLE IF NOT EXISTS `codigo postal` (
  `Codigo Postal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcccion`
--

CREATE TABLE IF NOT EXISTS `direcccion` (
  `Calle_idCalle` int(11) NOT NULL,
  `Vivienda_Codigo` int(11) NOT NULL,
  `Codigo Postal_Codigo Postal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `idMunicipio` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Provincia_idProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
  `idProvincia` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`idProvincia`, `Nombre`) VALUES
(1, 'Alava'),
(2, 'Bizkaia'),
(3, 'Guipuzkoa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vivienda`
--

CREATE TABLE IF NOT EXISTS `vivienda` (
  `Codigo` int(11) NOT NULL,
  `Numero` varchar(4) NOT NULL DEFAULT 'S/N',
  `Piso` varchar(3) DEFAULT NULL,
  `Letra` varchar(1) DEFAULT NULL,
  `Mano` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calle`
--
ALTER TABLE `calle`
  ADD PRIMARY KEY (`idCalle`), ADD KEY `fk_Calle_Municipio1_idx` (`Municipio_idMunicipio`);

--
-- Indices de la tabla `codigo postal`
--
ALTER TABLE `codigo postal`
  ADD PRIMARY KEY (`Codigo Postal`);

--
-- Indices de la tabla `direcccion`
--
ALTER TABLE `direcccion`
  ADD PRIMARY KEY (`Calle_idCalle`,`Vivienda_Codigo`), ADD KEY `fk_Calle_has_Vivienda_Vivienda1_idx` (`Vivienda_Codigo`), ADD KEY `fk_Calle_has_Vivienda_Calle1_idx` (`Calle_idCalle`), ADD KEY `fk_Direcccion_Codigo Postal1_idx` (`Codigo Postal_Codigo Postal`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`idMunicipio`), ADD KEY `fk_Municipio_Provincia_idx` (`Provincia_idProvincia`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`idProvincia`);

--
-- Indices de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calle`
--
ALTER TABLE `calle`
  MODIFY `idCalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `idMunicipio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `idProvincia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calle`
--
ALTER TABLE `calle`
ADD CONSTRAINT `fk_Calle_Municipio1` FOREIGN KEY (`Municipio_idMunicipio`) REFERENCES `municipio` (`idMunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `direcccion`
--
ALTER TABLE `direcccion`
ADD CONSTRAINT `fk_Calle_has_Vivienda_Calle1` FOREIGN KEY (`Calle_idCalle`) REFERENCES `calle` (`idCalle`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Calle_has_Vivienda_Vivienda1` FOREIGN KEY (`Vivienda_Codigo`) REFERENCES `vivienda` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Direcccion_Codigo Postal1` FOREIGN KEY (`Codigo Postal_Codigo Postal`) REFERENCES `codigo postal` (`Codigo Postal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
ADD CONSTRAINT `fk_Municipio_Provincia` FOREIGN KEY (`Provincia_idProvincia`) REFERENCES `provincia` (`idProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
