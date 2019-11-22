-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2019 a las 21:01:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `idactividad` int(10) NOT NULL,
  `actividad` varchar(500) NOT NULL,
  `proyecto` varchar(100) NOT NULL,
  `personal` varchar(500) NOT NULL,
  `horas` int(10) NOT NULL,
  `semana` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `observaciones` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`idactividad`, `actividad`, `proyecto`, `personal`, `horas`, `semana`, `fecha`, `observaciones`) VALUES
(1, 'asaas', 'Press Station Q5', 'Erick Monzon', 0, 0, '2019-11-22', ''),
(2, 'wadad', '1410 Q5', 'Ana Karen Uribe ', 12, 0, '2019-11-16', 'no sabe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre_interno`
--

CREATE TABLE `nombre_interno` (
  `idinterno` int(11) NOT NULL,
  `proyecto` varchar(100) NOT NULL,
  `nombre_interno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nombre_interno`
--

INSERT INTO `nombre_interno` (`idinterno`, `proyecto`, `nombre_interno`) VALUES
(1, 'AE-006-008 8440-TIGUAN', 'asas'),
(2, 'AE-006-008 8440-TIGUAN', 'awdwadwa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idpersonal`, `nombre`) VALUES
(1, 'Osviel Ascencion'),
(2, 'Ana Karen Uribe '),
(3, 'Cristian Bautista '),
(4, 'Maximiliano Santillan'),
(5, 'Luis Edgar Salvador'),
(6, 'Erick Monzon'),
(7, 'Nestor Monroy '),
(8, 'Vianey'),
(9, 'Giovanni Zamudio'),
(10, 'Eduardo Lopez'),
(11, 'Jesus Baca'),
(12, 'Saul Cardenas'),
(13, 'Arturo Martinez'),
(14, 'Jesus Ruiz'),
(15, 'Michel Romero '),
(16, 'Luis Sierra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `proyecto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `proyecto`) VALUES
(1, 'Press Station Q5'),
(2, '1410 Q5'),
(4, 'aaaaaaaaaaaa'),
(5, 'foko'),
(6, ''),
(7, 'LILYEI|'),
(8, 'AE-006-008 8440-TIGUAN');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`idactividad`);

--
-- Indices de la tabla `nombre_interno`
--
ALTER TABLE `nombre_interno`
  ADD PRIMARY KEY (`idinterno`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idpersonal`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `idactividad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `nombre_interno`
--
ALTER TABLE `nombre_interno`
  MODIFY `idinterno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idpersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
