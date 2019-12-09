-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2019 a las 16:09:57
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
(3, 'ejemplp', 'asas', 'Osviel Ascencion', 52, 50, '2019-12-04', '12121212121'),
(4, 'RUTEO DE SISTEMA NEUMÃTICO', 'PRESS STATION Q5', 'Eduardo Lopez', 6, 48, '2019-11-27', 'POR FALTA DE CABLE NO SE TERMINO'),
(5, 'Armado de HMI', 'Bloque 1, 2, 3 Refurbish Nissan B02A', 'Eduardo Lopez', 6, 45, '2019-11-04', 'Armado del HMI del proyecto Refurbish\r\n'),
(6, 'Pulido y lavado de piezas', 'IntegraciÃ³n 500B', 'Jesus Baca', 6, 45, '2019-11-04', 'Pulido y lavado de piezas\r\n'),
(7, 'Pulido de maquinados para herramental 500B.', 'IntegraciÃ³n 500B', 'Saul Cardenas', 6, 45, '2019-11-04', 'Pulido de maquinados para herramental 500B.\r\n'),
(8, 'RevisiÃ³n de los maquinados.', 'Tooling Nissan B02A', 'Eduardo Lopez', 3, 45, '2019-11-04', 'RevisiÃ³n de los maquinados del Proyecto B02A.'),
(9, 'Corte de perfil. ', 'Tooling Nissan B02A', 'Jesus Baca', 3, 45, '2019-11-04', 'Corte de perfil para proyecto B02A Nissan.'),
(10, 'Barrenado de placa para sujeciÃ³n de llantas, desgaste en base y colocaciÃ³n de llantas.', 'Press Station Q5', 'Saul Cardenas', 3, 45, '2019-11-04', 'Colocado de llantas en prensa Press Q5 (barrenado de placa para sujecion de llantas y desgaste en base de llantas para insersion de tornilleria)'),
(11, 'Curso de PLC Keyence', 'Cursos', 'Eduardo Lopez', 8, 45, '2019-11-05', 'HabÃ­a lugares disponibles y entro Eduardo al curso.'),
(12, 'Pulido de piezas.', 'IntegraciÃ³n 500B', 'Eduardo Lopez', 1, 45, '2019-11-05', 'Pulido de piezas para proyecto 500 B.'),
(13, 'Armado de herramental. ', 'Tooling Tiguan ', 'Jesus Baca', 9, 45, '2019-11-05', 'Armado de herramental Tiguan.'),
(14, 'Ajustes mecÃ¡nicos.', 'Press Station Q5', 'Saul Cardenas', 4, 45, '2019-11-05', 'Ajustes mecÃ¡nicos para Press Q5.'),
(15, 'Curso de PLC Keyence', 'Cursos', 'Eduardo Lopez', 8, 45, '2019-11-06', 'ContinuaciÃ³n de curso.'),
(16, 'Pulido de piezas.', 'IntegraciÃ³n 500B', 'Eduardo Lopez', 1, 45, '2019-11-06', 'Pulido de piezas para 500B.'),
(17, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 8, 45, '2019-11-06', 'Armado de herramental Nissan B02A St. 80.'),
(18, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 8, 45, '2019-11-06', 'Armado de Herramental Nissan B02A St. 80. '),
(19, 'Armado de herramental. ', 'IntegraciÃ³n 500B', 'Saul Cardenas', 5, 45, '2019-11-06', 'Se trabajÃ³ hasta las 10:00 pm.'),
(20, 'Lijado de acrÃ­licos. ', 'DLC', 'Eduardo Lopez', 9, 45, '2019-11-07', 'Apoyo en lijado de acrÃ­licos en proyecto DLC Marelli. '),
(21, 'Corte de acrÃ­lico. ', 'DLC', 'Jesus Baca', 6, 45, '2019-11-07', 'Corte de acrÃ­lico para proyecto DLC Marelli. '),
(22, 'Limado de filos a acrÃ­licos. ', 'DLC', 'Saul Cardenas', 6, 45, '2019-11-07', 'Apoyo a proyecto DLC.'),
(23, 'Barrenado y machuelado de acrÃ­licos. ', 'DLC', 'Saul Cardenas', 3, 45, '2019-11-07', 'Apoyo en proyecto DLC. '),
(24, 'Lijado de acrÃ­licos. ', 'DLC', 'Eduardo Lopez', 2, 45, '2019-11-08', 'Apoyo a proyecto DLC Marelli. '),
(25, 'InspecciÃ³n de posiciÃ³n correcta de barrenos. ', 'DLC', 'Eduardo Lopez', 7, 45, '2019-11-08', 'Apoyo en la inspecciÃ³n de posiciÃ³n correcta de los barrenos del plato giratorio del proyecto DLC Marelli.'),
(26, 'ColocaciÃ³n de acrÃ­licos en estructura.', 'DLC', 'Jesus Baca', 6, 45, '2019-11-08', 'Apoyo a proyecto DLC. '),
(27, 'Corte de perfil. ', 'Tooling Nissan B02A', 'Jesus Baca', 2, 45, '2019-11-08', 'Corte de perfil para B02A Nissan. '),
(28, 'Corte de puerta de gabinete. ', 'DLC', 'Jesus Baca', 1, 45, '2019-11-08', 'Apoyo a proyecto DLC. '),
(29, 'ColocaciÃ³n de acrÃ­licos en estructura.', 'DLC', 'Saul Cardenas', 2, 45, '2019-11-08', 'Apoyo a proyecto DLC. '),
(30, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 5, 45, '2019-11-08', 'Barrenado y machuelado de placas y ruteo de mangueras. '),
(31, 'Pruebas neumÃ¡ticas. ', 'GKN', 'Saul Cardenas', 2, 45, '2019-11-08', 'Pruebas a pistones. '),
(32, 'Ruteo de mangueras en herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 46, '2019-11-11', 'Ruteo de mangueras en herramental B02A ST.80. '),
(33, 'Asistencia en la cruz roja para adquisiciÃ³n de certificado medico. ', 'Extras', 'Eduardo Lopez', 2, 46, '2019-11-11', 'Asistencia en la cruz roja para adquisiciÃ³n de certificado medico. '),
(34, 'Bases laterales de nidos. ', 'IntegraciÃ³n 500B', 'Jesus Baca', 2, 46, '2019-11-11', 'Bases laterales de nidos para 500 B.'),
(35, 'Corte de puerta de gabinete. ', 'Atornillado', 'Jesus Baca', 1, 46, '2019-11-11', 'Corte de puertas de gabinete para atornillado y visiÃ³n. '),
(36, 'Corte de puerta de gabinete. ', 'Vision A7', 'Jesus Baca', 1, 46, '2019-11-11', 'Corte de puertas de gabinete para atornillado y visiÃ³n.'),
(37, 'Corte de perfil. ', 'Marcado LÃ¡ser', 'Jesus Baca', 4, 46, '2019-11-11', 'Corte de perfil para estaciÃ³n LÃ¡ser. '),
(38, 'Perneado de nidos y bujes laterales. ', 'IntegraciÃ³n 500B', 'Osviel Ascencion', 20, 46, '2019-12-02', '1111111'),
(39, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 46, '2019-11-11', 'Machuelado y barrenado de placa para herramental. '),
(40, 'Asistencia en la cruz roja para adquisiciÃ³n de certificado medico. ', 'Extras', 'Saul Cardenas', 2, 46, '2019-11-11', 'Asistencia en la cruz roja para adquisiciÃ³n de certificado medico. '),
(41, 'Ruteo de mangueras en herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 46, '2019-11-11', 'Rutero de mangueras para herramental B02A St. 80. '),
(42, 'Corte de perfil. ', 'Marcado LÃ¡ser', 'Saul Cardenas', 1, 46, '2019-11-11', 'Corte de perfiles para estructura Red Blonker LÃ¡ser. '),
(43, 'Corte de perfil. ', 'Infra Stake', 'Saul Cardenas', 1, 46, '2019-11-11', 'Corte de perfiles para estructura de Infra stake'),
(44, 'Corte de perfil. ', 'Marcado LÃ¡ser', 'Saul Cardenas', 1, 46, '2019-11-11', 'Corte de perfiles para estructura Red Blinker LÃ¡ser. '),
(45, 'Corte de perfil. ', 'Infra Stake', 'Saul Cardenas', 1, 46, '2019-11-11', 'Corte de perfiles para estructura de Infra Stake'),
(46, 'Ruteo de mangueras en herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 46, '2019-11-12', 'Ruteo de mangueras en herramental B02A St. 80. '),
(47, 'Ruteo de mangueras y sensores en herramental.', 'Tooling Nissan B02A', 'Jesus Baca', 6, 46, '2019-11-12', 'Ruteo de mangueras y sensores en herramental. '),
(48, 'Barrenado y machuelado de placa para herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 2, 46, '2019-11-12', 'Barrenado para \"T\" neumÃ¡tica y bases para cinturones. '),
(49, 'Acomodo y limpieza de Ã¡rea.', 'Limpieza de herramientas, bodegas y racks.', 'Jesus Baca', 1, 46, '2019-11-12', 'Limpieza de Ã¡rea y acomodo de cajas keyence. '),
(50, 'Machuelado de pistones. ', 'Press Station Q5', 'Jesus Baca', 1, 46, '2019-11-12', 'Machuelado de pistones para prensa. '),
(51, 'Machuelado de perfiles.', 'Marcado LÃ¡ser', 'Saul Cardenas', 2, 46, '2019-11-12', 'Machuelado de perfiles para estructura de Red Blinker LÃ¡ser. '),
(52, 'Machuelado de perfiles.', 'Infra Stake', 'Saul Cardenas', 2, 46, '2019-11-12', 'Machuelado de perfiles para estructura Infra Stake.'),
(53, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 46, '2019-11-12', 'Proyecto Nissan B02A. '),
(54, 'Ruteo de mangueras y sensores en herramental.', 'Tooling Nissan B02A', 'Saul Cardenas', 3, 46, '2019-11-12', 'Armado de herramental B02A (Ruteo de mangueras y sensores). '),
(55, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 2, 46, '2019-11-13', 'Armado de herramental B02A St. 80. '),
(56, 'Ruteo de mangueras y sensores en herramental.', 'Tooling Nissan B02A', 'Jesus Baca', 2, 46, '2019-11-13', 'Ruteo de mangueras y sensores en herramental B02A Nissan, '),
(57, 'ConexiÃ³n de sensores a pistones y regletas. ', 'Tooling Nissan B02A', 'Jesus Baca', 2, 46, '2019-11-13', 'Armado de herramental B02A, ConexiÃ³n de sensores a pistones y regletas. ConexiÃ³n de sensores de presencia. '),
(58, 'Acomodo y limpieza de Ã¡rea.', 'Limpieza de herramientas, bodegas y racks.', 'Jesus Baca', 2, 46, '2019-11-13', 'Acomodo y limpieza en rack de insumos de Giovanni. '),
(59, 'Machuelado de perfiles.', 'Frame c & Universal (5)', 'Jesus Baca', 1, 46, '2019-11-13', 'Machuelado de perfiles para Frame. '),
(60, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 46, '2019-11-13', 'Armado de herramental Nissan B02A St. 80. '),
(61, 'Ruteo de mangueras en herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 46, '2019-11-13', 'Ruteo de mangueras neumÃ¡ticas para Herramental B02A, St. 80. '),
(62, 'ConexiÃ³n de sensores a pistones y regletas. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 46, '2019-11-13', 'Armado de herramental B02A, ruteo de mangueras neumÃ¡ticas, conexiÃ³n de sensores a pistones y regletas, conexiÃ³n de sensores de presencia. '),
(63, 'Acomodo y limpieza de Ã¡rea.', 'Limpieza de herramientas, bodegas y racks.', 'Saul Cardenas', 2, 46, '2019-11-13', 'Acomodo y limpieza en rack de insumos de Giovanni. '),
(64, 'Machuelado de perfiles.', 'Frame c & Universal (5)', 'Saul Cardenas', 1, 46, '2019-11-13', 'Machuelado de perfiles para proyecto Frame. '),
(65, 'Machuelado de perfiles.', 'Frame c & Universal (5)', 'Jesus Baca', 4, 46, '2019-11-14', 'Machuelado de perfiles para proyecto Frame. '),
(66, 'Machuelado de perfiles.', 'Frame c & Universal (5)', 'Saul Cardenas', 4, 46, '2019-11-14', 'Machuelado de perfiles para Frame. '),
(67, 'Machuelado de perfiles.', 'Marcado LÃ¡ser', 'Jesus Baca', 1, 46, '2019-11-14', 'No hay observaciones. '),
(68, 'Machuelado de perfiles.', 'Infra Stake', 'Jesus Baca', 1, 46, '2019-11-14', 'No hay observaciones. '),
(69, 'Machuelado de perfiles.', 'Marcado LÃ¡ser', 'Saul Cardenas', 1, 46, '2019-11-14', 'No hay observaciones. '),
(70, 'Machuelado de perfiles.', 'Infra Stake', 'Saul Cardenas', 1, 46, '2019-11-14', 'No hay observaciones. '),
(71, 'Corte de perfil. ', 'Marcado LÃ¡ser', 'Jesus Baca', 1, 46, '2019-11-14', 'No hay observaciones. '),
(72, 'Corte de perfil. ', 'Infra Stake', 'Jesus Baca', 1, 46, '2019-11-14', 'No hay observaciones. '),
(73, 'Barrenado de perfiles. ', 'Marcado LÃ¡ser', 'Jesus Baca', 1, 46, '2019-11-14', 'No hay observaciones. '),
(74, 'Barrenado de perfiles. ', 'Infra Stake', 'Jesus Baca', 1, 46, '2019-11-14', 'No hay observaciones. '),
(75, 'Corte de perfil. ', 'Marcado LÃ¡ser', 'Saul Cardenas', 1, 46, '2019-11-14', 'No hay observaciones. '),
(76, 'Corte de perfil. ', 'Infra Stake', 'Saul Cardenas', 1, 46, '2019-11-14', 'No hay observaciones. '),
(77, 'Barrenado de perfiles. ', 'Marcado LÃ¡ser', 'Saul Cardenas', 1, 46, '2019-11-14', 'No hay observaciones. '),
(78, 'Barrenado de perfiles. ', 'Infra Stake', 'Saul Cardenas', 1, 46, '2019-11-14', 'No hay observaciones. '),
(79, 'Armado de estructura. ', 'Infra Stake', 'Eduardo Lopez', 2, 46, '2019-11-15', 'No hay observaciones. '),
(80, 'Barrenado de perfiles. ', 'Infra Stake', 'Jesus Baca', 2, 46, '2019-11-15', 'No hay observaciones. '),
(81, 'Armado de estructura. ', 'Infra Stake', 'Jesus Baca', 4, 46, '2019-11-15', 'No hay observaciones. '),
(82, 'Armado de estructura. ', 'Marcado LÃ¡ser', 'Jesus Baca', 3, 46, '2019-11-15', 'No hay observaciones. '),
(83, 'Acomodo y limpieza de Ã¡rea.', 'Limpieza de herramientas, bodegas y racks.', 'Jesus Baca', 1, 46, '2019-11-15', 'Limpieza de Ã¡rea de trabajo. '),
(84, 'Barrenado de perfiles. ', 'Infra Stake', 'Saul Cardenas', 2, 46, '2019-11-15', 'No hay observaciones. '),
(85, 'Armado de estructura. ', 'Infra Stake', 'Saul Cardenas', 4, 46, '2019-11-15', 'No hay observaciones. '),
(86, 'Armado de estructura. ', 'Marcado LÃ¡ser', 'Saul Cardenas', 2, 46, '2019-11-15', 'No hay observaciones. '),
(87, 'Acomodo y limpieza de Ã¡rea.', 'Sistema de visiÃ³n AISIN', 'Saul Cardenas', 1, 46, '2019-11-15', 'Limpieza de Ã¡rea de trabajo. '),
(88, 'Asistencia a curso de seguridad. ', 'Cursos externos', 'Jesus Baca', 6, 47, '2019-11-19', 'Asistencia a curso de seguridad a Saint Gobain.'),
(89, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 3, 47, '2019-11-19', 'Armado de herramental Nissan B02A St. 50B.'),
(90, 'Armado de estructura. ', 'Marcado LÃ¡ser', 'Jesus Baca', 4, 47, '2019-11-19', 'No hay observaciones. '),
(91, 'Corte de acrÃ­lico ABS. ', 'Marcado LÃ¡ser', 'Jesus Baca', 3, 47, '2019-11-19', 'No hay observaciones. '),
(92, 'Montaje de puertas. ', 'Marcado LÃ¡ser', 'Jesus Baca', 2, 47, '2019-11-19', 'No hay observaciones. '),
(93, 'Asistencia a curso de seguridad. ', 'Cursos externos', 'Saul Cardenas', 6, 47, '2019-11-19', 'Asistencia a curso de seguridad a planta Saint Gobain. '),
(94, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 3, 47, '2019-11-19', 'Armado de herramental Nissan B02A St. 50B.'),
(95, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 6, 47, '2019-11-20', 'Armado de herramental Nissan B02A St. 50A y 50B.'),
(96, 'Acomodo de tornillerÃ­a en racks. ', 'Limpieza de herramientas, bodegas y racks.', 'Eduardo Lopez', 3, 47, '2019-11-20', 'DistribuciÃ³n de tornillerÃ­a en rack. '),
(97, 'Montaje de acrÃ­licos ABS en estructura. ', 'Marcado LÃ¡ser', 'Jesus Baca', 6, 47, '2019-11-20', 'Montaje de acrÃ­lico a estructura Red Blinker A7 LÃ¡ser. '),
(98, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 3, 47, '2019-11-20', 'Montaje de nuevos maquinados. '),
(99, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 6, 47, '2019-11-20', 'Amado de herramental Nissan B02A St. 50A y 50B. '),
(100, 'Limpieza de estructura. ', 'Marcado LÃ¡ser', 'Saul Cardenas', 3, 47, '2019-11-20', 'Limpieza con agua y thinner a estructura Red Blinker A7 LÃ¡ser.'),
(101, 'Acomodo de tornillerÃ­a en racks. ', 'Limpieza de herramientas, bodegas y racks.', 'Saul Cardenas', 1, 47, '2019-11-20', 'No hay observaciones. '),
(102, 'Montaje de maquinados. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 47, '2019-11-21', 'Montaje de nuevos maquinados. '),
(103, 'Montaje de maquinados. ', 'Tooling Nissan B02A', 'Jesus Baca', 2, 47, '2019-11-21', 'Montaje de nuevos maquinados. '),
(104, 'Reacomodo de maquinados. ', 'Tooling Nissan B02A', 'Jesus Baca', 4, 47, '2019-11-21', 'Reacomodo de herramentales para B02A ST. 50A y 50B.'),
(105, 'Montaje de maquinados. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 47, '2019-11-21', 'Montaje de  nuevos maquinados en B02A. '),
(106, 'Reacomodo de maquinados. ', 'Tooling Nissan B02A', 'Saul Cardenas', 4, 47, '2019-11-21', 'Reacomodo de maquinados para herramentales B02A St. 50A y 50B. '),
(107, 'ReuniÃ³n.', 'ReuniÃ³n', 'Eduardo Lopez', 2, 47, '2019-11-22', 'ReuniÃ³n de trabajo para asignaciÃ³n de actividades de equipo de trabajo de Giovanni. '),
(108, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 47, '2019-11-22', 'Armado de herramental B02A,  St. 50A. '),
(109, 'Asistencia a curso de seguridad. ', 'Cursos externos', 'Eduardo Lopez', 5, 47, '2019-11-22', 'Asistencia a curso de seguridad de Valeo Planta 1. '),
(110, 'ReuniÃ³n.', 'Press Station Q5', 'Jesus Baca', 2, 47, '2019-11-22', 'ReuniÃ³n de trabajo para la asignaciÃ³n de actividades al equipo de Giovanni.'),
(111, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 2, 47, '2019-11-22', 'Armado de herramental Nissan B02A St. 50A.'),
(112, 'Corte y careado de perfiles. ', 'Tooling Nissan B02A', 'Jesus Baca', 5, 47, '2019-11-22', 'No hay comentarios. '),
(113, 'ReuniÃ³n.', 'ReuniÃ³n', 'Saul Cardenas', 2, 47, '2019-11-22', 'ReuniÃ³n de trabajo para la asignaciÃ³n de actividades al equipo de Giovanni.\r\n'),
(114, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 47, '2019-11-22', 'Armado de herramental Nissan B02A, St. 50A. '),
(115, 'Asistencia a curso de seguridad. ', 'Cursos externos', 'Saul Cardenas', 5, 47, '2019-11-22', 'Asistencia a Curso de Seguridad a Valeo Planta 1. '),
(116, 'Corte y careado de perfiles. ', 'Tooling Nissan B02A', 'Jesus Baca', 3, 47, '2019-11-21', 'Sin comentarios. '),
(117, 'Corte y careado de perfiles. ', 'Tooling Nissan B02A', 'Saul Cardenas', 3, 47, '2019-11-21', 'Sin comentarios. '),
(118, 'Armado de herramental. ', 'Vision A7', 'Saul Cardenas', 2, 45, '2019-11-05', 'Sin comentarios. '),
(119, 'Ajustes a gabinete. ', 'Vision A7', 'Saul Cardenas', 1, 45, '2019-11-05', 'Cambio de tornillos para cortesÃ­a 120V y conexiÃ³n del mismo. '),
(120, 'Armado de herramental. ', 'Atornillado', 'Saul Cardenas', 2, 45, '2019-11-05', 'Sin comentarios. '),
(121, 'Ajustes a gabinete. ', 'Atornillado', 'Saul Cardenas', 1, 45, '2019-11-05', 'Cambio de tornillos para cortesÃ­a 120 V y conexiÃ³n del mismo. '),
(122, 'Soporte en robot. ', 'LÃ­nea 2 BMW', 'Eduardo Lopez', 5, 46, '2019-11-11', 'Soporte en el robot LH lÃ­nea 2 BMW BHTC.\r\n'),
(123, 'Soporte en robot. ', 'LÃ­nea 2 BMW', 'Eduardo Lopez', 7, 46, '2019-11-12', 'Soporte en el robot LH lÃ­nea 2 BMW BHTC.\r\n'),
(124, 'Soporte en robot. ', 'Press Station Q5', 'Osviel Ascencion', 9, 46, '2019-11-13', 'Soporte en el robot LH lÃ­nea 2 BMW BHTC.'),
(125, 'Soporte en robot. ', 'LÃ­nea 2 BMW', 'Eduardo Lopez', 9, 46, '2019-11-14', 'Soporte en el robot LH lÃ­nea 2 BMW BHTC.'),
(126, 'Soporte en robot. ', 'LÃ­nea 2 BMW', 'Eduardo Lopez', 7, 46, '2019-11-15', 'Soporte en el robot LH lÃ­nea 2 BMW BHTC.'),
(127, 'Montaje de base para conector elÃ©ctrico. ', 'Atornillado', 'Jesus Baca', 2, 45, '2019-11-07', 'Sin comentarios. '),
(128, 'Montaje de base para conector elÃ©ctrico. ', 'Vision A7', 'Jesus Baca', 2, 45, '2019-11-14', 'Sin comentarios. '),
(129, 'Soporte en robot. ', 'LÃ­nea 2 BMW', 'Eduardo Lopez', 7, 47, '2019-11-21', 'Soporte a BHTC (cambio de junta al robot linea 2 BMW).'),
(130, 'Barrenacion de gabinete', 'Vision A7', 'Nestor Monroy ', 3, 44, '2019-11-01', 'S e tubo que desmontar gabinete'),
(131, 'Colocacion de glandulas', 'Vision A7', 'Nestor Monroy ', 1, 44, '2019-11-01', 'Se limaron barrenos para quitar filos'),
(132, 'Montaje de elementos de cortesia', 'Vision A7', 'Nestor Monroy ', 2, 44, '2019-11-01', 'Se montaron los gabinetes al finalizar'),
(133, 'Colocacion de canaletas en estaciÃ³n ', 'Vision A7', 'Nestor Monroy ', 3, 44, '2019-11-01', 'TambiÃ©n se conectaron los ionizadores'),
(134, 'Ensamble de maquinados', 'Tooling Tiguan ', 'Nestor Monroy ', 4, 45, '2019-11-04', 'S/O'),
(135, 'Conexion de componentes neumaticos', 'Tooling Tiguan ', 'Nestor Monroy ', 2, 45, '2019-11-04', 'S/O'),
(136, 'Conexion y ruteo de elementos electricos', 'Tooling Tiguan ', 'Nestor Monroy ', 3, 45, '2019-11-04', 'S/O'),
(137, 'Transporte a planta AL', 'Extras', 'Nestor Monroy ', 9, 45, '2019-11-05', 'S/O'),
(138, 'Pulir piezas ', 'Atornillado', 'Nestor Monroy ', 3, 45, '2019-11-06', 'S/O'),
(139, 'Ensamble de maquinados', 'Atornillado', 'Nestor Monroy ', 3, 45, '2019-11-06', 'S/O'),
(140, 'Check list de estacion ', 'Atornillado', 'Nestor Monroy ', 1, 45, '2019-11-06', 'S/O\r\n'),
(141, 'Ensamble de maquinados', 'IntegraciÃ³n 500B', 'Nestor Monroy ', 5, 45, '2019-11-06', 'S/O\r\n'),
(142, 'Cortes de acrilico', 'DLC', 'Nestor Monroy ', 6, 45, '2019-11-08', 'S/O'),
(143, 'Conexion y ruteo de elementos electricos', 'Pre elÃ©ctrica', 'Nestor Monroy ', 1, 45, '2019-11-07', 'Pogo pines '),
(144, 'Conexion y ruteo de elementos electricos', 'Tooling tarek', 'Nestor Monroy ', 2, 45, '2019-11-07', 'fibras\r\n'),
(145, 'Conexion y ruteo de elementos electricos', 'Tooling tarek', 'Nestor Monroy ', 1, 45, '2019-11-08', 'Fibras'),
(146, 'Soporte en planta', 'WL FOG Prensa infra ', 'Nestor Monroy ', 1, 45, '2019-11-08', 'S/O\r\n'),
(147, 'Soporte en planta', 'WL FOG Prensa infra ', 'Nestor Monroy ', 1, 45, '2019-11-08', 'ConexiÃ³n de cable de 3 hilos '),
(148, 'Conexion de componentes neumaticos', 'WL FOG Prensa infra ', 'Nestor Monroy ', 2, 45, '2019-11-08', 'S/O\r\n'),
(149, 'Conexion y ruteo de elementos electricos', 'WL FOG Prensa infra ', 'Nestor Monroy ', 3, 45, '2019-11-08', 'S/O'),
(150, 'Soporte en planta', 'WL FOG Prensa infra ', 'Nestor Monroy ', 6, 45, '2019-11-09', 'S/O'),
(151, 'Conexion y ruteo de elementos electricos', 'Tooling tarek', 'Nestor Monroy ', 6, 46, '2019-11-11', 'S/O'),
(152, 'Ensamble de maquinados', 'Prensa Grommet', 'Nestor Monroy ', 4, 46, '2019-11-11', 'S/O'),
(153, 'Ensamble de maquinados', 'Prensa Grommet', 'Nestor Monroy ', 1, 46, '2019-11-12', 'S/O'),
(154, 'Soporte en planta', 'Extras', 'Nestor Monroy ', 9, 46, '2019-11-12', 'S/O'),
(155, 'Conexion y ruteo de elementos electricos', 'Vision A7', 'Vianey', 4, 46, '2019-11-14', 'S/O'),
(156, 'Corte y barrenacion de perfileria', 'Atornillado', 'Nestor Monroy ', 3, 46, '2019-11-13', 'S/O\r\n'),
(157, 'Armado de unidad de mantenimiento ', 'Vision A7', 'Nestor Monroy ', 3, 46, '2019-11-13', 'S/O'),
(158, 'Montaje de unidad de mantenimiento', 'Vision A7', 'Nestor Monroy ', 3, 46, '2019-11-14', 'S/O\r\n'),
(159, 'Conexion y ruteo de elementos electricos', 'Vision A7', 'Nestor Monroy ', 3, 46, '2019-11-14', 'S/O\r\n'),
(160, 'Conexion y ruteo de elementos electricos', 'Tooling tarek', 'Nestor Monroy ', 2, 46, '2019-11-14', 'S/O\r\n'),
(161, 'Soporte en planta', 'WL FOG Prensa infra ', 'Nestor Monroy ', 9, 46, '2019-11-15', 'S/O\r\n'),
(162, 'Corte y barrenacion de perfileria', 'Vision A7', 'Nestor Monroy ', 3, 47, '2019-11-19', 'S/O'),
(163, 'BarrenaciÃ³n y machueleado de placa', 'Vision A7', 'Nestor Monroy ', 1, 47, '2019-11-19', 'S/O\r\n'),
(164, 'Conexion de componentes neumaticos', 'Vision A7', 'Nestor Monroy ', 2, 47, '2019-11-19', 'S/O\r\n'),
(165, 'Aceiter y lavar piezas anodizadas', 'Vision A7', 'Nestor Monroy ', 1, 47, '2019-11-19', 'S/O\r\n'),
(166, 'Aceiter y lavar piezas anodizadas', 'Atornillado', 'Nestor Monroy ', 2, 47, '2019-11-20', 'S/O\r\n'),
(167, 'Conexion de componentes neumaticos', 'Tooling Tiguan ', 'Nestor Monroy ', 1, 47, '2019-11-20', 'S/O\r\n'),
(168, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 4, 48, '2019-11-25', 'No hay observaciones. '),
(169, 'Perforado de gabinete elÃ©ctrico. ', 'Marcado LÃ¡ser', 'Eduardo Lopez', 4, 48, '2019-12-23', 'PerforaciÃ³n para glÃ¡ndulas '),
(170, 'Limado de perforaciones en gabinete. ', 'Marcado LÃ¡ser', 'Eduardo Lopez', 1, 48, '2019-11-25', 'Se limaron las perforaciones para glÃ¡ndulas y contacto de cortesÃ­a. '),
(171, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 6, 48, '2019-11-25', 'Sin observaciones. '),
(172, 'Corte y barrenado de perfiles. ', 'Pre elÃ©ctrica', 'Jesus Baca', 3, 48, '2019-11-25', 'Sin observaciones. '),
(173, 'Armado de herramental.', 'Tooling Nissan B02A', 'Saul Cardenas', 6, 48, '2019-11-25', 'Sin observaciones. '),
(174, 'Perforado de gabinete elÃ©ctrico. ', 'Marcado LÃ¡ser', 'Saul Cardenas', 2, 48, '2019-11-25', 'Sin observaciones. '),
(175, 'Corte y barrenado de perfiles. ', 'Pre elÃ©ctrica', 'Saul Cardenas', 1, 48, '2019-11-25', 'Sin observaciones. '),
(176, 'Seguimiento a llegada de material .', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-25', 'Seguimiento a llegada de material elÃ©ctrico y neumÃ¡tico de B02A. '),
(177, 'ColocaciÃ³n de montajes para herramentales. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-26', 'ColocaciÃ³n de los montajes de los herramentales para Nissan B02A St. 80. '),
(178, 'RevisiÃ³n con diseÃ±o.', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-25', 'RevisiÃ³n con diseÃ±o sobre el montaje de los herramentales Nissan B02A St. 50B.'),
(179, 'Barrenado y machuelado de placa para herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-25', 'Barrenado y machuelado para estaciÃ³n Nissan B02A St. 50B LH y RH. '),
(180, 'Barrenado y machuelado de placa para herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 1, 48, '2019-11-25', 'Barrenado y machuelado de placa para herramental Nissan B02A St. 50B LH y RH. '),
(181, 'Curso de Seguridad. ', 'Cursos externos', 'Jesus Baca', 3, 48, '2019-11-26', 'Curso de seguridad a Saint Gobain. '),
(182, 'RequisiciÃ³n de tornillerÃ­a y herramienta. ', 'Limpieza de herramientas, bodegas y racks.', 'Jesus Baca', 1, 48, '2019-11-26', 'Sin observaciones. '),
(183, 'Corte de gabinete. ', 'Marcado LÃ¡ser', 'Jesus Baca', 2, 48, '2019-11-26', 'Corte de gabinete para ventilador. '),
(184, 'Perforado de gabinete elÃ©ctrico. ', 'Marcado LÃ¡ser', 'Jesus Baca', 2, 48, '2019-11-26', 'PerforaciÃ³n de gabinete para glÃ¡ndulas. '),
(185, 'ColocaciÃ³n de glÃ¡ndulas. ', 'Marcado LÃ¡ser', 'Jesus Baca', 1, 48, '2019-11-26', 'Sin comentarios. '),
(186, 'ElaboraciÃ³n de reportes de actividades.', 'Reportes de actividades. ', 'Saul Cardenas', 6, 48, '2019-11-26', 'ElaboraciÃ³n de reportes de actividades correspondientes al mes de noviembre del equipo de Giovanni. '),
(187, 'Barrenado y machuelado de placa para herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 3, 48, '2019-11-26', 'Barrenado y machuelado de placa para herramental Nissan B02A St. 50B LH y RH. '),
(188, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-27', 'Armado de Herramental Nissan B02A St. 10. '),
(189, 'RevisiÃ³n con diseÃ±o.', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-27', 'RevisiÃ³n con diseÃ±o de maquinados de los herramentales Nissan B02A. '),
(190, 'Retrabajo de maquinados. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-27', 'Retrabajo de maquinados para herramental de Nissan B02A St. 50. '),
(191, 'Acomodo y limpieza de Ã¡rea.', 'Limpieza de herramientas, bodegas y racks.', 'Eduardo Lopez', 1, 48, '2019-11-27', 'Limpieza general de Ã¡rea de trabajo. '),
(192, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 6, 48, '2019-11-27', 'Sin comentarios. '),
(193, 'DistribuciÃ³n de componentes elÃ©ctricos. ', 'Marcado LÃ¡ser', 'Jesus Baca', 2, 48, '2019-11-27', 'DistribuciÃ³n de componentes elÃ©ctricos para platina. '),
(194, 'Acomodo y limpieza de Ã¡rea.', 'Limpieza de herramientas, bodegas y racks.', 'Jesus Baca', 1, 48, '2019-11-27', 'Limpieza general de Ã¡rea de trabajo. '),
(195, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 48, '2019-11-27', 'Armado de herramental Nissan B02A St. 10. '),
(196, 'Corte y careado de perfiles. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 48, '2019-11-27', 'Sin observaciones. \r\n'),
(197, 'Retrabajo de maquinados. ', 'Tooling Nissan B02A', 'Saul Cardenas', 4, 48, '2019-11-27', 'Sin observaciones. '),
(198, 'Ruteo de mangueras y sensores en herramental.', 'Tooling Nissan B02A', 'Saul Cardenas', 1, 48, '2019-11-27', 'Sin observaciones. '),
(199, 'Acomodo de herramienta para llevar a planta. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 2, 48, '2019-11-27', 'Acomodo de herramienta para llevar a planta en integraciÃ³n B02A, Valeo planta 1 y transporte a planta. '),
(200, 'IntegraciÃ³n. ', 'Tooling Nissan B02A', 'Eduardo Lopez', 7, 48, '2019-11-28', 'IntegraciÃ³n B02A St. 80. Valeo Planta 1 (Herramental LH y RH). '),
(201, 'Corte de canaleta. ', 'Marcado LÃ¡ser', 'Jesus Baca', 2, 48, '2019-11-28', 'Sin observaciones. '),
(202, 'Corte de perfil. ', 'Tooling Nissan B02A', 'Jesus Baca', 2, 48, '2019-11-28', 'Sin observaciones. '),
(203, 'Corte de riel. ', 'Marcado LÃ¡ser', 'Jesus Baca', 1, 48, '2019-11-28', 'Sin observaciones. '),
(204, 'Corte de tubular trilogic. ', 'Empaque HD', 'Jesus Baca', 1, 48, '2019-11-28', 'Sin observaciones. '),
(205, 'Montaje de riel y canaleta en platina. ', 'Marcado LÃ¡ser', 'Jesus Baca', 2, 48, '2019-11-28', 'Sin observaciones. '),
(206, 'Montaje de componentes elÃ©ctricos en platina. ', 'Marcado LÃ¡ser', 'Jesus Baca', 3, 48, '2019-11-28', 'Sin observaciones. '),
(207, 'Acomodo de herramienta para llevar a planta. ', 'Tooling Nissan B02A', 'Saul Cardenas', 2, 48, '2019-11-28', 'Acomodo de herramienta para llevar a planta para integraciÃ³n B02A, Valeo Planta 1 y transporte a planta. '),
(208, 'IntegraciÃ³n. ', 'Tooling Nissan B02A', 'Saul Cardenas', 7, 48, '2019-11-28', 'Sin observaciones. '),
(209, 'Ruteo de mangueras y sensores en herramental.', 'Tooling Nissan B02A', 'Eduardo Lopez', 6, 48, '2019-11-29', 'Ruteo de seÃ±ales y mangueras en herramental Nissan B02A st. 80.'),
(210, 'Machuelado de perfiles.', 'VW Tiguan final station 4 estaciones ', 'Eduardo Lopez', 3, 48, '2019-11-28', 'Sin observaciones. '),
(211, 'Barrenado de perfiles. ', 'Corte de colada Q1490', 'Jesus Baca', 3, 48, '2019-11-29', 'Sin observaciones. '),
(212, 'Acomodo de tornillerÃ­a en racks. ', 'Limpieza de herramientas, bodegas y racks.', 'Jesus Baca', 1, 48, '2019-11-29', 'Sin observaciones. '),
(213, 'Machuelado de perfiles.', 'Corte de colada Q1490', 'Jesus Baca', 2, 48, '2019-11-29', 'Sin observaciones. '),
(214, 'Corte de perfil. ', 'Corte de colada Q1490', 'Jesus Baca', 1, 48, '2019-11-29', 'Sin observaciones. '),
(215, 'Desmontaje de prensa. ', 'Extras', 'Jesus Baca', 1, 48, '2019-11-20', 'Sin observaciones. '),
(216, 'Traslado de prensa a bodega 1. ', 'Extras', 'Jesus Baca', 1, 48, '2019-11-29', 'Sin observaciones. '),
(217, 'ElaboraciÃ³n de reportes de actividades.', 'Reportes de actividades. ', 'Jesus Baca', 1, 48, '2019-11-29', 'Sin observaciones. '),
(218, 'Ajustes mecÃ¡nicos a herramental. ', 'Tooling Nissan B02A', 'Jesus Baca', 4, 48, '2019-11-29', 'Ajustes mecÃ¡nicos a Nissan B02A St. 80 LH y RH. '),
(219, 'Limado de perfil. ', 'Empaque HD', 'Saul Cardenas', 2, 48, '2019-11-29', 'Sin Observaciones. '),
(220, 'Machuelado de perfiles.', 'VW Tiguan final station 4 estaciones ', 'Saul Cardenas', 3, 48, '2019-11-29', 'Sin observaciones. '),
(221, 'ConexiÃ³n de los contactos de cortesÃ­a. ', 'Atornillado', 'Luis Sierra', 2, 45, '2019-11-05', 'Si observaciones. '),
(222, 'ConexiÃ³n de los contactos de cortesÃ­a. ', 'Vision A7', 'Luis Sierra', 2, 45, '2019-11-05', 'Sin observaciones. '),
(223, 'Arranque del gabinete de la estaciÃ³n. ', 'Atornillado', 'Luis Sierra', 1, 45, '2019-11-05', 'Sin observaciones. '),
(224, 'Arranque del gabinete de la estaciÃ³n. ', 'Vision A7', 'Luis Sierra', 1, 45, '2019-11-05', 'Sin obsrvaciones. '),
(225, 'RevisiÃ³n de los maquinados.', 'Tooling Nissan B02A', 'Luis Sierra', 1, 45, '2019-11-05', 'Apoyo en proyecto Nissan B02A. '),
(226, 'Armado de herramental. ', 'Tooling Nissan B02A', 'Luis Sierra', 5, 45, '2019-11-06', 'Sin observaciones. '),
(227, 'Perforado de gabinete elÃ©ctrico. ', 'DLC', 'Luis Sierra', 1, 45, '2019-11-06', 'Sin observaciones. '),
(228, 'Corte de acrÃ­lico. ', 'DLC', 'Luis Sierra', 1, 45, '2019-11-07', 'Sin observaciones. '),
(229, 'Limado de filos a acrÃ­licos. ', 'DLC', 'Luis Sierra', 1, 45, '2019-11-06', 'Sin observaciones.'),
(230, 'Barrenado y machuelado de acrÃ­licos. ', 'DLC', 'Luis Sierra', 1, 45, '2019-11-06', 'Sin observaciones. '),
(231, 'Barrenado y machuelado de acrÃ­licos. ', 'DLC', 'Luis Sierra', 3, 45, '2019-11-06', 'SIn Observaciones. '),
(232, 'Perforado de acrÃ­licos.', 'DLC', 'Luis Sierra', 3, 45, '2019-11-07', 'Sin Observaciones. '),
(233, 'Detallar acrÃ­licos. ', 'DLC', 'Luis Sierra', 3, 45, '2019-11-07', 'Sin Observaciones. '),
(234, 'Corte de acrÃ­lico. ', 'DLC', 'Luis Sierra', 5, 45, '2019-11-08', 'Sin Observaciones. '),
(235, 'Colocar puerta de gabinete. ', 'DLC', 'Luis Sierra', 1, 45, '2019-11-08', 'Sin Observaciones. '),
(236, 'Armado de panel de control. ', 'DLC', 'Luis Sierra', 2, 45, '2019-11-08', 'Colocar HMI, botones y lÃ¡mparas del panel de control. '),
(237, 'Traslado de estructura.', 'U725 Fog IR Oven ', 'Luis Sierra', 1, 46, '2019-11-11', 'Traslado de estructura del horno de la bodega 4 a la bodega 16. '),
(238, 'Traslado de estructura.', 'Press Station Q5', 'Luis Sierra', 1, 46, '2019-11-11', 'Traslado de estructura de la Prensa de bodega 4 a bodega 16. '),
(239, 'Montaje de maquinados. ', 'Press Station Q5', 'Luis Sierra', 4, 46, '2019-11-11', 'Sin observaciones. '),
(240, 'ConexiÃ³n de contactor. ', 'DLC', 'Luis Sierra', 3, 46, '2019-11-11', 'ConexiÃ³n de contactor para encender la mÃ¡quina. '),
(241, 'Barrenado y machuelado de placa para sujeciÃ³n de llantas. ', 'Press Station Q5', 'Luis Sierra', 5, 46, '2019-11-12', 'Sin observaciones. '),
(242, 'Montaje de patas a estructura. ', 'Press Station Q5', 'Luis Sierra', 2, 46, '2019-11-12', 'Sin observaciones. '),
(243, 'Montaje de maquinados. ', 'DLC', 'Luis Sierra', 2, 46, '2019-11-12', 'Sin Observaciones. '),
(244, 'Montaje de maquinados. ', 'DLC', 'Luis Sierra', 3, 46, '2019-11-13', 'Montaje de maquinados en el nidos. '),
(245, 'ConexiÃ³n de panel de Control. ', 'DLC', 'Luis Sierra', 7, 46, '2019-11-13', 'ConexiÃ³n y ruteo de cable para panel de control. '),
(246, 'ConexiÃ³n de panel de control. ', 'DLC', 'Luis Sierra', 2, 46, '2019-11-13', 'ConexiÃ³n de panel de control a gabinete. '),
(247, 'Montaje de llantas. ', 'DLC', 'Luis Sierra', 2, 46, '2019-11-14', 'Sin Observaciones. '),
(248, 'Ruteo y etiquetado de plato. ', 'DLC', 'Luis Sierra', 5, 46, '2019-11-14', 'Sin observaciones. '),
(249, 'Ruteo de sensores. ', 'DLC', 'Luis Sierra', 2, 46, '2019-11-15', 'Ruteo de sensores de pieza presente. '),
(250, 'ConexiÃ³n de interruptor principal. ', 'DLC', 'Luis Sierra', 3, 46, '2019-11-15', 'Sin observaciones. '),
(251, 'ConexiÃ³n de sensores a regletas. ', 'DLC', 'Luis Sierra', 2, 46, '2019-11-15', 'ConexiÃ³n y ruteo de sensores de pistones a regletas. '),
(252, 'ColocaciÃ³n de palpadores. ', 'DLC', 'Luis Sierra', 5, 47, '2019-11-19', 'Sin observaciones. '),
(253, 'as', 'Press Station Q5', 'Osviel Ascencion', 0, 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre_interno`
--

CREATE TABLE `nombre_interno` (
  `idinterno` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nombre_interno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nombre_interno`
--

INSERT INTO `nombre_interno` (`idinterno`, `nombre`, `nombre_interno`) VALUES
(5, 'AE-017-043-PRESS STATION Q5', 'Press Station Q5'),
(6, 'AE-012-014-1410 Q5', '1410 Q5'),
(7, 'AE-017-041-NISSAN B02A', 'Bloque 1, 2, 3 Refurbish Nissan B02A'),
(8, 'AE-017-038-WL FOG PRENSA INFRA', 'WL FOG Prensa infra '),
(9, 'AE-012-013-HD', 'Rotary & Leak Test HD'),
(10, 'AE-006-007-VW TAREK', 'Tooling tarek'),
(11, 'AE-017-039-CHMSL U725', 'Chmsl U725'),
(12, 'AE-023-003-Clipping Grommet Press', 'Prensa Grommet'),
(13, 'AE-006-008-VW TIGUAN ', 'Tooling Tiguan '),
(14, 'AE-026-001-OUTER RACE & TULIP LS', 'Outer Race & Tulip LS'),
(15, 'AE-012-015-DLC', 'DLC'),
(16, 'AE-017-041-NISSAN B02A', 'Tooling Nissan B02A'),
(17, 'AE-024-004-TRUNK TRIM PRESS G42', 'Truck Trim Press G42'),
(18, 'AE-017-046-U725 FOG IR OVEN', 'U725 Fog IR Oven '),
(19, 'AE-006-008-8440 TIGUAN', 'Atornillado'),
(20, 'AE-006-009-A7 VisiÃ³n', 'Vision A7'),
(21, 'AE-006-009-A7 Laser', 'Marcado LÃ¡ser'),
(22, 'AE-017-047-PC02F Tooling Prensa', 'IntegraciÃ³n tool prensa'),
(23, 'AE-018-006-Tarek Coupe Atornillado', 'Atornillado (estÃ¡ndar navistar)'),
(24, 'AE-006-010-BMW G42', 'Hollow bushes'),
(25, 'AE-006-010-BMW G42', 'Pre elÃ©ctrica'),
(26, 'AE-006-010-BMW G42', 'ElÃ©ctrica'),
(27, 'AE-006-010-BMW G42', 'Leak Test'),
(28, 'AE-006-011-Q5 Leak y Vision', 'Replica Q5'),
(29, 'AE-006-012-VW316 Tarek Infra', 'Infra Stake'),
(30, 'AE-003-000-Universal (Standard y en C)', 'Frame c & Universal (5)'),
(31, 'AE-012-013-HD', 'Empaque HD'),
(32, 'AE-003-018-CORTES-DE-COLADA', 'Corte de colada Q1490'),
(33, 'AE-003-018-CORTES-DE-COLADA', 'Corte de colada Q1436/Q1417'),
(34, 'AE-012-013-HD', 'Corte de colada Q1490'),
(35, 'AE-030-001-PINES-SISTEMA-VISIÃ“N', 'Sistema de VisiÃ³n Pines'),
(36, 'AE-018-007-Grease-Dispensing-Station', 'EstaciÃ³n dispensado de grasa '),
(37, 'AE-006-013-VW326-TIGUAN-GP12', 'VW Tiguan final station 4 estaciones '),
(38, 'SMART', 'Impresiones 3D'),
(39, 'SMART', 'Limpieza de herramientas, bodegas y racks.'),
(40, 'Soporte/Servicios', 'Sistema de visiÃ³n AISIN'),
(41, 'Soporte/Servicios', 'ST560 AL'),
(42, 'Soporte/Servicios', 'EstaciÃ³n 60 Q5'),
(43, 'Soporte/Servicios', 'Datalogic (estructura)'),
(44, 'Soporte/Servicios', 'CHMSL CX727'),
(45, 'Soporte/Servicios', 'CHMSL L1'),
(46, 'Soporte/Servicios', 'CHMSL L3'),
(47, 'Soporte/Servicios', 'ST66'),
(48, 'Soporte/Servicios', 'GMT1 L2'),
(49, 'Soporte/Servicios', 'GMT1 L3'),
(50, 'Soporte/Servicios', 'IntegraciÃ³n 500B'),
(51, 'Soporte/Servicios', 'Twin'),
(52, 'SMART', 'Cursos'),
(53, 'Soporte/Servicios', 'GKN'),
(54, 'SMART', 'Extras'),
(55, 'Soporte/Servicios', 'Cursos externos'),
(56, 'SMART', 'ReuniÃ³n'),
(57, 'Soporte/Servicios', 'LÃ­nea 2 BMW'),
(58, 'Soporte/Servicios', 'LÃ­nea 2 BMW'),
(59, 'SMART', 'Reportes de actividades. ');

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
(11, 'AE-017-043-PRESS STATION Q5'),
(12, 'AE-012-014-1410 Q5'),
(13, 'AE-017-041-NISSAN B02A'),
(14, 'AE-017-038-WL FOG PRENSA INFRA'),
(15, 'AE-012-013-HD'),
(16, 'AE-006-007-VW TAREK'),
(17, 'AE-017-039-CHMSL U725'),
(18, 'AE-023-003-Clipping Grommet Press'),
(19, 'AE-006-008-VW TIGUAN '),
(20, 'AE-026-001-OUTER RACE & TULIP LS'),
(21, 'AE-012-015-DLC'),
(22, 'AE-017-041-NISSAN B02A'),
(23, 'AE-024-004-TRUNK TRIM PRESS G42'),
(24, 'AE-017-046-U725 FOG IR OVEN'),
(25, 'AE-006-008-8440 TIGUAN'),
(26, 'AE-006-009-A7 VisiÃ³n'),
(27, 'AE-006-009-A7 Laser'),
(28, 'AE-017-047-PC02F Tooling Prensa'),
(29, 'AE-018-006-Tarek Coupe Atornillado'),
(30, 'AE-006-010-BMW G42'),
(31, 'AE-006-011-Q5 Leak y Vision'),
(32, 'AE-006-012-VW316 Tarek Infra'),
(33, 'AE-003-000-Universal (Standard y en C)'),
(34, 'AE-012-013-HD'),
(35, 'AE-003-018-CORTES-DE-COLADA'),
(36, 'AE-030-001-PINES-SISTEMA-VISIÃ“N'),
(37, 'AE-018-007-Grease-Dispensing-Station'),
(38, 'AE-006-013-VW326-TIGUAN-GP12'),
(39, 'SMART'),
(40, 'Soporte/Servicios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusua` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Pasw` varchar(50) NOT NULL,
  `acces` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusua`, `Nombre`, `Pasw`, `acces`) VALUES
(1, 'admin', 'admin', 1);

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusua`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `idactividad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT de la tabla `nombre_interno`
--
ALTER TABLE `nombre_interno`
  MODIFY `idinterno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idpersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
