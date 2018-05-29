-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-05-2018 a las 11:57:05
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id4898307_workforce`
--
CREATE DATABASE IF NOT EXISTS `id4898307_workforce` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id4898307_workforce`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categoria`
--

CREATE TABLE `Categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Categoria`
--

INSERT INTO `Categoria` (`id_categoria`, `nombre`) VALUES
(1, 'maquinista'),
(2, 'mecanico'),
(3, 'revisor'),
(4, 'azafato'),
(5, 'personal de cafeteria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cursa`
--

CREATE TABLE `Cursa` (
  `fecha` datetime DEFAULT NULL,
  `id_cursos` int(11) NOT NULL,
  `DNI_empleado` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Cursa`
--

INSERT INTO `Cursa` (`fecha`, `id_cursos`, `DNI_empleado`) VALUES
('2018-05-09 08:25:00', 0, '11111111a'),
('2018-04-20 00:00:00', 0, '22222222b'),
('2018-05-01 00:00:00', 1, '12345678a'),
('2018-05-02 00:00:00', 1, '12345678b'),
('2018-05-05 00:00:00', 1, '12345678u'),
('2018-05-25 00:00:00', 1, '18181818b'),
('2018-05-03 00:00:00', 1, '18181818g'),
('2018-05-01 00:00:00', 1, '18181819b'),
('2018-05-10 08:00:00', 1, '44444444d'),
('2018-04-11 10:00:00', 1, '66666666f'),
('2018-05-11 14:10:00', 1, '77777777'),
('2018-05-03 14:00:00', 2, '22222222b'),
('2018-05-01 00:00:00', 3, '12345678a'),
('2018-05-04 00:00:00', 3, '12345678d'),
('2018-05-05 00:00:00', 3, '12345678u'),
('2018-05-01 00:00:00', 4, '12345678a'),
('2018-05-03 00:00:00', 4, '12345678c'),
('2018-05-04 00:00:00', 4, '12345678d'),
('2018-05-05 00:00:00', 4, '12345678u'),
('2018-05-02 00:00:00', 5, '12345678b'),
('2018-05-03 00:00:00', 5, '12345678c'),
('2018-05-04 00:00:00', 5, '12345678d'),
('2018-05-05 00:00:00', 5, '12345678u'),
('2018-05-02 00:00:00', 6, '12345678b'),
('2018-05-03 00:00:00', 6, '12345678c'),
('2018-05-05 00:00:00', 6, '12345678u'),
('2018-05-03 00:00:00', 7, '12345678c'),
('2018-05-04 00:00:00', 7, '12345678d'),
('2018-05-05 00:00:00', 7, '12345678u'),
('2018-05-17 08:00:00', 8, '44444444d'),
('2018-05-23 09:00:00', 8, '55555555d'),
('2018-04-26 05:00:25', 8, '99999999p'),
('2018-04-20 09:00:19', 9, '12345678u');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cursos`
--

CREATE TABLE `Cursos` (
  `id_cursos` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `codigo_tren` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Cursos`
--

INSERT INTO `Cursos` (`id_cursos`, `nombre`, `codigo_tren`) VALUES
(0, 'tren alta velocidad', 12),
(1, 'limpieza de trenes', 0),
(2, 'trenes de velocidad media', 12),
(3, 'maniobras con asientos', 25),
(4, 'limpieza con toxicos', 23),
(5, 'limpieza a presion', 30),
(6, 'manipulacion de alimentos', 40),
(7, 'calibraje especial', 70),
(8, 'limpieza', 4),
(9, 'cocina en el tren', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE `Empleado` (
  `DNI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido1` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salario` int(11) NOT NULL,
  `bonus` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `km` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_estacion_base` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`DNI`, `nombre`, `apellido1`, `apellido2`, `salario`, `bonus`, `km`, `id_categoria`, `id_estacion_base`, `foto`) VALUES
('11111111a', 'Juan', 'García de la cruz', 'García', 5400, '0.4', 54000, 3, 'MAD', '/images/page2_img2.jpg'),
('11111111t', 'pepe', 'Garcia', 'Ibañez', 6000, '', 0, 4, 'VAL', ''),
('11111111w', 'martin', 'fernandez', 'alvarez', 5000, '', 0, 5, 'VAL', ''),
('11111111x', 'roberto', 'fernandez', 'alvarez', 4000, '', 0, 1, 'VAL', ''),
('11111111y', 'pablo', 'fernandez', 'alvarez', 3000, '', 0, 3, 'VAL', ''),
('11111111z', 'francisco', 'Garcia', 'Muñoz', 7000, '', 0, 2, 'VAL', ''),
('12121212', 'juan', 'mecanico', NULL, 3000, '3%', 0, 1, 'MAD', ''),
('12345678a', 'Javier', 'Revuelta', 'Garcia', 0, '5%', 0, 3, 'BAR', ''),
('12345678b', 'Irene', 'Garcia', 'Muñoz', 3000, '4%', 0, 3, 'BAR', ''),
('12345678c', 'Ana', 'Ibañez', 'Herrera', 5000, '3%', 0, 3, 'BAR', ''),
('12345678d', 'Sandra', 'Garcia', 'Ibañez', 3500, '5%', 0, 3, 'BAR', ''),
('12345678u', 'elena', 'alvarez', 'alvarez', 4500, '4%', 6000, 3, 'BAR', ''),
('18181818a', 'Rocio', 'garcia', 'rodriguez', 90000, '0.4', 400, 1, 'MAD', ''),
('18181818b', 'Miranda', 'Alonso', 'Gonzalez', 21000, '0.2', 5433, 2, 'MAD', ''),
('18181818g', 'Maria', 'Mune', 'Rivas', 11111, '0.4', 4567, 4, 'MAD', ''),
('18181819b', 'Marta', 'martin', 'lopez', 2222, '0.2', 1000, 3, 'MAD', ''),
('22222222b', 'Cristina ', 'García', 'Sánchez-Poves', 5900, '0.3', 40000, 5, 'MAD', '/images/page2_img3.jpg'),
('23232323a', 'carmen', 'martinez', 'perez', 20000, '0.4', 23422, 1, 'BAR', ''),
('23232323b', 'rosa', 'lopez', 'perez', 20000, '0.4', 2422, 2, 'BAR', ''),
('23232323c', 'antonio', 'munarriz', 'brea', 40000, '0.2', 3334, 4, 'BAR', ''),
('23232323e', 'santiago', 'jimenez', 'rosales', 22000, '0.1', 23552, 5, 'BAR', ''),
('33333333c', 'rocio', 'gonzalez', 'perez', 5400, '5%', 40000, 1, 'MAD', ''),
('44444444d', 'alejandro', 'esquivias', 'fernandez', 3000, '0.4', 0, 2, 'MAD', ''),
('55555555d', 'fernando', 'magdalena', NULL, 3000, '3%', 0, 4, 'MAD', ''),
('66666666f', 'pedro', 'alvarez', 'alvarez', 3000, '5%', 100, 5, 'MAD', ''),
('77777777', 'pablo', 'alvarez', NULL, 3333, '4%', 400, 4, 'MAD', ''),
('99999999p', 'marcos', 'perez', NULL, 6000, '3%', 0, 5, 'MAD', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estacion_base`
--

CREATE TABLE `Estacion_base` (
  `id_estacion_base` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Estacion_base`
--

INSERT INTO `Estacion_base` (`id_estacion_base`, `nombre`) VALUES
('ALI', 'alicante'),
('BAR', 'barcelona '),
('BIL', 'bilbao'),
('LEO', 'leon'),
('MAD', 'madrid'),
('MAL', 'malaga'),
('MUR', 'murcia'),
('PAM', 'pamplona'),
('SEV', 'sevilla'),
('VAL', 'valencia'),
('VALL', 'valladolid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Jornada_empleado`
--

CREATE TABLE `Jornada_empleado` (
  `DNI_empleado` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_jornada_laboral` int(11) NOT NULL,
  `id_jornada_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Jornada_empleado`
--

INSERT INTO `Jornada_empleado` (`DNI_empleado`, `id_jornada_laboral`, `id_jornada_empleado`) VALUES
('11111111a', 0, 1),
('11111111a', 1, 25),
('11111111a', 7, 5),
('11111111a', 21, 35),
('11111111t', 2, 62),
('11111111t', 21, 0),
('11111111w', 21, 37),
('11111111x', 21, 38),
('11111111y', 2, 63),
('11111111y', 21, 39),
('11111111z', 2, 64),
('11111111z', 21, 40),
('12121212', 21, 41),
('12345678a', 20, 20),
('12345678a', 21, 42),
('12345678b', 20, 21),
('12345678b', 21, 43),
('12345678b', 22, 31),
('12345678c', 20, 22),
('12345678c', 21, 44),
('12345678c', 23, 32),
('12345678d', 20, 23),
('12345678d', 21, 45),
('12345678d', 24, 33),
('12345678u', 20, 24),
('12345678u', 21, 46),
('12345678u', 25, 34),
('18181818a', 21, 47),
('18181818b', 21, 48),
('18181818g', 21, 49),
('18181819b', 7, 35),
('18181819b', 21, 50),
('22222222b', 0, 4),
('22222222b', 1, 25),
('22222222b', 2, 25),
('22222222b', 7, 2),
('22222222b', 21, 51),
('23232323a', 21, 52),
('23232323b', 21, 53),
('23232323c', 21, 54),
('23232323e', 21, 55),
('33333333c', 2, 26),
('33333333c', 21, 56),
('44444444d', 21, 57),
('55555555d', 0, NULL),
('55555555d', 21, 58),
('66666666f', 21, 59),
('77777777', 21, 60),
('99999999p', 21, 61);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Jornada_laboral`
--

CREATE TABLE `Jornada_laboral` (
  `id_jornada_laboral` int(11) NOT NULL,
  `hora_entrada` datetime NOT NULL,
  `hora_salida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Jornada_laboral`
--

INSERT INTO `Jornada_laboral` (`id_jornada_laboral`, `hora_entrada`, `hora_salida`) VALUES
(0, '2018-04-08 12:00:00', '2018-04-08 20:00:00'),
(1, '2018-04-12 13:00:00', '2018-04-12 22:00:00'),
(2, '2018-04-13 17:00:00', '2018-04-13 23:30:00'),
(6, '2018-04-11 11:30:00', '2018-04-11 16:00:00'),
(7, '2018-04-09 00:20:00', '2018-04-09 19:00:00'),
(20, '2018-04-08 12:00:00', '2018-04-08 18:00:00'),
(21, '2018-03-09 06:00:00', '2018-03-09 14:00:00'),
(22, '2018-03-09 10:00:00', '2018-03-09 15:00:00'),
(23, '2018-03-09 11:00:00', '2018-03-09 17:00:00'),
(24, '2018-03-09 13:00:00', '2018-03-09 18:00:00'),
(25, '2018-03-09 16:00:00', '2018-03-09 21:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Solicitud`
--

CREATE TABLE `Solicitud` (
  `id_solicitud` int(11) NOT NULL,
  `tipo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNI_empleado` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Solicitud`
--

INSERT INTO `Solicitud` (`id_solicitud`, `tipo`, `estado`, `DNI_empleado`) VALUES
(1, 'vacaciones', 'aceptada', '11111111a'),
(2, 'baja', 'aceptada', '33333333c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tarea`
--

CREATE TABLE `Tarea` (
  `id_tarea` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incidencias` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Tarea`
--

INSERT INTO `Tarea` (`id_tarea`, `nombre`, `incidencias`) VALUES
(0, NULL, ''),
(1, 'conducir tren madrid', ''),
(2, 'arreglar ruedas', ''),
(3, 'arreglar calefacción', ''),
(4, 'conducir tren madrid', ''),
(6, 'tr', ''),
(8, 'dar la vuelta a asientos', ''),
(9, 'limpieza de ventanas', ''),
(10, 'reposicion de alimentos', ''),
(11, 'calibracion de agujas', ''),
(12, 'limpieza de suelos', ''),
(13, 'arreglar filtro de aire (humedad alta)', '1'),
(14, 'arreglar filtro de aire (humedad media)', '2'),
(15, 'arreglar filtro de aire (humedad baja)', '3'),
(16, 'arreglar rodamiento (presión alta)', '4'),
(17, 'arreglar rodamiento (presión media)', '5'),
(18, 'arreglar rodamiento (presión baja)', '6'),
(19, 'arreglar rodamiento (temperatura alta)', '7'),
(20, 'arreglar rodamiento (temperatura media)', '8'),
(21, 'arreglar rodamiento (temperatura baja)', '9'),
(22, 'arreglar filtro de aire (polución alta)', '10'),
(23, 'arreglar filtro de aire (polución media)', '11'),
(24, 'arreglar filtro de aire (polución baja)', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TieneAsignada`
--

CREATE TABLE `TieneAsignada` (
  `DNI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_comienzo` datetime DEFAULT NULL,
  `id_tarea` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hora_completada` datetime NOT NULL,
  `codigo_viaje` int(11) DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_tieneAsignada` int(11) NOT NULL,
  `comentario` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TieneAsignada`
--

INSERT INTO `TieneAsignada` (`DNI`, `hora_comienzo`, `id_tarea`, `descripcion`, `hora_completada`, `codigo_viaje`, `estado`, `id_tieneAsignada`, `comentario`) VALUES
('11111111a', '2018-03-30 00:00:00', 1, '', '0000-00-00 00:00:00', 0, 'incompleta', 1, ''),
('11111111a', '2018-03-14 06:00:00', 4, '', '0000-00-00 00:00:00', 0, 'completada', 2, ' el trabajo esta bien'),
('22222222b', '2018-04-18 00:00:00', 1, '', '0000-00-00 00:00:00', 1, 'realizada', 8, ''),
('33333333c', '2018-04-18 00:00:00', 1, '', '0000-00-00 00:00:00', 2, 'cancelada', 9, ''),
('55555555d', '2018-03-31 00:00:00', 2, '', '0000-00-00 00:00:00', 2, 'realizada', 10, ''),
('55555555d', '2018-03-15 14:00:00', 3, '', '0000-00-00 00:00:00', 0, 'incompleta', 11, ''),
('77777777', '2018-04-25 11:00:00', 6, '', '0000-00-00 00:00:00', 0, 'pendiente', 12, ''),
('99999999p', '2018-04-18 00:45:44', 4, '', '0000-00-00 00:00:00', 1, 'incompleta', 13, ''),
('11111111a', '2018-03-13 06:00:00', 4, '', '0000-00-00 00:00:00', 0, 'pendiente', 14, ''),
('11111111a', '2018-04-14 18:00:00', 4, '', '0000-00-00 00:00:00', 0, 'incompleta', 15, ''),
('11111111a', '2018-04-25 16:00:00', 4, '', '0000-00-00 00:00:00', 202, 'realizada', 16, ''),
('12345678a', '2018-05-02 12:00:00', 8, '', '2018-05-02 15:00:00', 666, 'pendiente', 17, ''),
('12345678a', '2018-05-16 09:00:00', 10, '', '2018-05-02 17:00:00', 202, 'realizada', 18, 'todo perfecto'),
('12345678b', '2018-05-16 07:00:00', 11, '', '2018-05-16 11:00:00', 202, 'incompleta', 19, 'no tenia herramienta'),
('12345678b', '2018-05-16 10:00:00', 12, '', '2018-05-16 13:00:00', 202, 'realizada', 20, 'todo perfecto'),
('12345678c', '2018-05-17 10:00:00', 11, '', '2018-05-17 12:00:00', 2, 'cancelada', 21, ''),
('12345678d', '2018-05-16 10:00:00', 9, '', '2018-05-16 13:00:00', 666, 'realizada', 22, ''),
('12345678d', '2018-05-16 08:00:00', 11, '', '2018-05-16 13:00:00', 202, 'incompleta', 23, 'falta aceite'),
('12345678u', '2018-05-17 07:00:00', 10, '', '2018-05-17 11:00:00', 666, 'incompleta', 24, 'Sin bocadillos'),
('44444444d', '2018-09-09 00:00:00', 11, ' ', '2018-09-09 00:00:00', 0, 'pendiente', 25, ' '),
('12345678b', '2018-05-30 17:00:00', 2, '', '2018-05-30 00:00:00', 0, 'pendiente', 26, ''),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'realizada', 27, 'No quedan vasos de plastico'),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 28, 'Hola'),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 29, 'Hola'),
('12345678d', '2018-05-21 00:00:00', 11, 'To wipe the inside of the train', '2018-05-22 00:00:00', 0, 'pendiente', 30, 'Hola'),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 105, 'Hola'),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 106, 'Hola'),
('12345678c', '2018-05-21 00:00:00', 11, 'To wipe the inside of the train', '2018-05-22 00:00:00', 0, 'pendiente', 107, 'Hola'),
('55555555d', '2018-09-09 00:00:00', 20, ' ', '2018-09-09 00:00:00', 0, 'pendiente', 108, ' '),
('12345678b', '2018-05-30 17:00:00', 2, '', '2018-05-30 00:00:00', 0, 'pendiente', 109, ''),
('12345678a', '2018-05-30 17:00:00', 2, '', '2018-05-30 00:00:00', 0, 'incompleta', 110, 'No tiene quehacer suficiente'),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 111, 'Hola'),
('12345678a', '2018-05-21 00:00:00', 12, 'Clean the floor', '2018-05-22 00:00:00', 0, 'pendiente', 112, 'Hola'),
('12345678a', '2018-05-24 07:52:03', 16, ' ', '2018-05-24 09:52:03', 0, 'incompleta', 139, 'no se que tengo que hacer'),
('11111111a', '2018-05-24 14:48:39', 17, ' ', '2018-05-24 16:48:39', 0, 'pendiente', 140, ' '),
('22222222b', '2018-05-24 14:49:00', 17, ' ', '2018-05-24 16:49:00', 0, 'realizada', 141, ' '),
('55555555d', '2018-05-24 14:50:01', 17, ' ', '2018-05-24 16:50:01', 0, 'pendiente', 142, ' '),
('12345678a', '2018-05-24 14:50:32', 17, ' ', '2018-05-24 16:50:32', 0, 'pendiente', 143, ' '),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 144, 'Hola'),
('12345678a', '2018-05-21 00:00:00', 12, 'Clean the floor', '2018-05-22 00:00:00', 0, 'pendiente', 145, 'Hola'),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 146, 'Hola'),
('12345678a', '2018-05-21 00:00:00', 12, 'Clean the floor', '2018-05-22 00:00:00', 0, 'pendiente', 147, 'Hola'),
('11111111a', '2018-05-24 21:38:20', 19, ' ', '2018-05-24 23:38:20', 0, 'pendiente', 148, ' '),
('22222222b', '2018-05-24 21:41:03', 14, ' ', '2018-05-24 23:41:03', 0, 'pendiente', 149, ' '),
('33333333c', '2018-05-24 21:41:03', 22, ' ', '2018-05-24 23:41:03', 0, 'pendiente', 150, ' '),
('12345678b', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 151, 'Hola'),
('12345678c', '2018-05-21 00:00:00', 11, 'To wipe the inside of the train', '2018-05-22 00:00:00', 0, 'pendiente', 152, 'Hola'),
('11111111a', '2018-05-25 09:38:20', 13, ' ', '2018-05-25 11:38:20', 0, 'pendiente', 153, ' '),
('22222222b', '2018-05-25 09:38:21', 14, ' ', '2018-05-25 11:38:21', 0, 'pendiente', 154, ' '),
('12345678a', '2018-05-25 09:38:21', 23, ' ', '2018-05-25 11:38:21', 0, 'pendiente', 155, ' '),
('12345678c', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 156, 'Hola'),
('12345678a', '2018-05-21 00:00:00', 12, 'Clean the floor', '2018-05-22 00:00:00', 0, 'pendiente', 157, 'Hola'),
('12345678c', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 158, 'Hola'),
('12345678a', '2018-05-21 00:00:00', 12, 'Clean the floor', '2018-05-22 00:00:00', 0, 'pendiente', 159, 'Hola'),
('12345678b', '2018-05-25 10:00:00', 19, ' ', '2018-05-25 12:00:00', 0, 'pendiente', 160, ' '),
('12345678c', '2018-05-21 00:00:00', 10, 'Reposition of Cafe Food', '2018-05-22 00:00:00', 0, 'pendiente', 161, 'Hola'),
('12345678a', '2018-05-21 00:00:00', 12, 'Clean the floor', '2018-05-22 00:00:00', 0, 'pendiente', 162, 'Hola'),
('18181819b', '2018-05-25 10:09:15', 13, ' ', '2018-05-25 12:09:15', 0, 'pendiente', 163, ' '),
('22222222b', '2018-06-30 17:00:00', 4, '', '2018-05-30 00:00:00', 0, 'pendiente', 164, ''),
('22222222b', '2018-06-30 17:00:00', 4, '', '2018-05-30 00:00:00', 0, 'pendiente', 165, ''),
('12345678c', '0000-00-00 00:00:00', 11, 'To wipe the inside of the train', '1970-01-01 00:00:00', 202, 'pendiente', 166, ' '),
('12345678c', '0000-00-00 00:00:00', 11, 'To wipe the inside of the train', '1970-01-01 00:00:00', 0, 'pendiente', 167, ' '),
('12345678b', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '1970-01-01 00:00:00', 0, 'pendiente', 168, ' '),
('12345678c', '0000-00-00 00:00:00', 11, 'To wipe the inside of the train', '1970-01-01 00:00:00', 0, 'pendiente', 169, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 170, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 171, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 172, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 173, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 174, ' '),
('22222222b', '2018-06-30 17:00:00', 4, '', '2018-05-30 00:00:00', 0, 'pendiente', 175, ''),
('12345678u', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '0000-00-00 00:00:00', 0, 'pendiente', 176, ' '),
('12345678u', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '0000-00-00 00:00:00', 0, 'pendiente', 177, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 178, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 179, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 180, ' '),
('22222222b', '0000-00-00 00:00:00', 4, '', '2018-05-30 00:00:00', 67, 'pendiente', 181, ''),
('12345678u', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '0000-00-00 00:00:00', 0, 'pendiente', 182, ' '),
('12345678a', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'pendiente', 183, ' '),
('22222222b', '0000-00-00 00:00:00', 4, '', '2018-05-30 00:00:00', 1111, 'pendiente', 184, ''),
('12345678u', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '0000-00-00 00:00:00', 0, 'pendiente', 185, ' '),
('12345678u', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '0000-00-00 00:00:00', 666, 'pendiente', 186, ' '),
('12345678c', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '0000-00-00 00:00:00', 98, 'pendiente', 187, ' '),
('12345678u', '2018-06-01 15:00:00', 10, 'Reposition of Cafe Food', '2018-06-01 15:30:00', 666, 'pendiente', 188, ''),
('22222222b', '2018-05-30 17:00:00', 4, '', '2018-05-30 19:00:00', 1112, 'pendiente', 189, ''),
('22222222b', '2018-05-30 17:00:00', 4, '', '2018-05-30 19:00:00', 1112, 'pendiente', 190, ''),
('22222222b', '2018-05-30 17:00:00', 4, '', '2018-05-30 19:00:00', 11, 'pendiente', 191, ''),
('77777777', '2018-05-29 20:20:00', 2, '', '2018-05-29 23:50:00', 117, 'pendiente', 192, ''),
('66666666f', '2018-05-29 20:20:00', 2, '', '2018-05-29 23:50:00', 117, 'pendiente', 193, ''),
('18181819b', '2018-05-29 20:20:00', 2, '', '2018-05-29 23:50:00', 117, 'pendiente', 194, ''),
('44444444d', '2018-05-29 20:20:00', 2, '', '2018-05-29 23:50:00', 117, 'pendiente', 195, ''),
('18181818b', '2018-05-28 10:00:00', 2, '', '2018-05-28 12:00:00', 119, 'pendiente', 196, ''),
('18181819b', '2018-05-28 10:00:00', 2, '', '2018-05-28 12:00:00', 119, 'pendiente', 197, ''),
('44444444d', '2018-05-28 10:00:00', 2, '', '2018-05-28 12:00:00', 119, 'pendiente', 198, ''),
('18181818b', '2018-05-28 00:00:00', 2, '', '2018-05-28 01:01:00', 120, 'pendiente', 199, ''),
('44444444d', '2018-05-28 00:00:00', 2, '', '2018-05-28 01:01:00', 120, 'pendiente', 200, ''),
('18181819b', '2018-05-28 00:00:00', 2, '', '2018-05-28 01:01:00', 120, 'pendiente', 201, ''),
('18181818g', '2018-05-28 00:00:00', 2, '', '2018-05-28 01:01:00', 120, 'pendiente', 202, ''),
('11111111a', '2018-05-28 07:19:08', 13, ' ', '2018-05-28 09:19:08', 0, 'pendiente', 203, ' '),
('18181819b', '2018-05-28 07:19:09', 14, ' ', '2018-05-28 09:19:09', 0, 'pendiente', 204, ' '),
('11111111t', '2018-05-28 07:19:10', 23, ' ', '2018-05-28 09:19:10', 0, 'pendiente', 205, ' '),
('11111111w', '2018-05-28 07:19:11', 14, ' ', '2018-05-28 09:19:11', 0, 'pendiente', 206, ' '),
('11111111x', '2018-05-28 07:19:12', 13, ' ', '2018-05-28 09:19:12', 0, 'pendiente', 207, ' '),
('11111111y', '2018-05-28 07:19:12', 23, ' ', '2018-05-28 09:19:12', 0, 'pendiente', 208, ' '),
('11111111z', '2018-05-28 07:19:12', 13, ' ', '2018-05-28 09:19:12', 0, 'pendiente', 209, ' '),
('12121212', '2018-05-28 07:19:13', 22, ' ', '2018-05-28 09:19:13', 0, 'realizada', 210, ' '),
('12345678a', '2018-05-28 07:19:14', 13, ' ', '2018-05-28 09:19:14', 0, 'pendiente', 211, ' '),
('12345678b', '2018-05-28 07:19:14', 22, ' ', '2018-05-28 09:19:14', 0, 'pendiente', 212, ' '),
('12345678c', '2018-05-28 07:19:15', 22, ' ', '2018-05-28 09:19:15', 0, 'pendiente', 213, ' '),
('12345678d', '2018-05-28 07:19:16', 23, ' ', '2018-05-28 09:19:16', 0, 'pendiente', 214, ' '),
('12345678u', '2018-05-28 07:19:16', 22, ' ', '2018-05-28 09:19:16', 0, 'pendiente', 215, ' '),
('18181818a', '2018-05-28 07:19:17', 14, ' ', '2018-05-28 09:19:17', 0, 'pendiente', 216, ' '),
('18181818b', '2018-05-28 07:19:18', 23, ' ', '2018-05-28 09:19:18', 0, 'pendiente', 217, ' '),
('18181818g', '2018-05-28 07:19:20', 14, ' ', '2018-05-28 09:19:20', 0, 'pendiente', 218, ' '),
('23232323a', '2018-05-28 07:19:21', 22, ' ', '2018-05-28 09:19:21', 0, 'pendiente', 219, ' '),
('23232323b', '2018-05-28 07:19:22', 14, ' ', '2018-05-28 09:19:22', 0, 'pendiente', 220, ' '),
('23232323c', '2018-05-28 07:19:23', 23, ' ', '2018-05-28 09:19:23', 0, 'pendiente', 221, ' '),
('23232323e', '2018-05-28 07:19:24', 22, ' ', '2018-05-28 09:19:24', 0, 'pendiente', 222, ' '),
('33333333c', '2018-05-28 07:19:26', 13, ' ', '2018-05-28 09:19:26', 0, 'pendiente', 223, ' '),
('44444444d', '2018-05-28 07:19:27', 23, ' ', '2018-05-28 09:19:27', 0, 'pendiente', 224, ' '),
('55555555d', '2018-05-28 07:19:29', 13, ' ', '2018-05-28 09:19:29', 0, 'pendiente', 225, ' '),
('66666666f', '2018-05-28 07:19:30', 22, ' ', '2018-05-28 09:19:30', 0, 'pendiente', 226, ' '),
('77777777', '2018-05-28 07:19:31', 22, ' ', '2018-05-28 09:19:31', 0, 'pendiente', 227, ' '),
('99999999p', '2018-05-28 07:19:32', 22, ' ', '2018-05-28 09:19:32', 0, 'pendiente', 228, ' '),
('66666666f', '2018-05-28 12:00:00', 2, '', '2018-05-28 14:02:00', 124, 'pendiente', 229, ''),
('18181818g', '2018-05-28 12:00:00', 2, '', '2018-05-28 14:02:00', 124, 'pendiente', 230, ''),
('66666666f', '2018-03-09 13:00:00', 2, '', '2018-03-09 13:50:00', 124, 'pendiente', 231, ''),
('18181819b', '2018-03-09 13:00:00', 2, '', '2018-03-09 13:50:00', 124, 'pendiente', 232, ''),
('44444444d', '2018-03-09 13:00:00', 2, '', '2018-03-09 13:50:00', 124, 'pendiente', 233, ''),
('44444444d', '2018-03-09 13:00:00', 2, '', '2018-03-09 13:50:00', 125, 'pendiente', 234, ''),
('66666666f', '2018-03-09 13:00:00', 2, '', '2018-03-09 13:50:00', 125, 'pendiente', 235, ''),
('12345678u', '0000-00-00 00:00:00', 8, 'To twist the seats on right direction', '1970-01-01 00:00:00', 0, 'pendiente', 236, ' '),
('12345678b', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '1970-01-01 00:00:00', 0, 'pendiente', 237, ' '),
('12345678c', '0000-00-00 00:00:00', 11, 'To wipe the inside of the train', '1970-01-01 00:00:00', 0, 'pendiente', 238, ' '),
('12345678c', '0000-00-00 00:00:00', 10, 'Reposition of Cafe Food', '1970-01-01 00:00:00', 0, 'pendiente', 239, ' '),
('12345678u', '0000-00-00 00:00:00', 12, 'Clean the floor', '1970-01-01 00:00:00', 0, 'incompleta', 240, 'hola'),
('18181818g', '2018-05-28 13:01:00', 2, '', '2018-05-28 14:52:00', 126, 'pendiente', 241, ''),
('66666666f', '2018-05-28 13:01:00', 2, '', '2018-05-28 14:52:00', 126, 'pendiente', 242, ''),
('12121212', '2018-09-09 00:00:00', 23, ' ', '2018-09-09 00:00:00', 0, 'pendiente', 243, ' '),
('12121212', '2018-09-09 00:00:00', 13, ' ', '2018-09-09 00:00:00', 0, 'pendiente', 244, ' '),
('12121212', '2018-05-28 08:49:57', 23, ' ', '2018-05-28 10:49:57', 0, 'pendiente', 245, ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contraseña` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNI_usuario` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id_usuario`, `correo`, `contraseña`, `DNI_usuario`) VALUES
(1, 'juan@correo.es', '$2y$10$FlPvMkpU7zpGGMVl/.LrIeGiDIdBY7GsCvdpLTIq04GN2yQ86G78u', '11111111a'),
(2, 'cristina@correo.es', '$2y$10$wsvFmSp8e3/JIucpBajoOudzBBkyzrWHXf/jhwHZJcB6aBOgSBKoy', '22222222b'),
(3, 'rocio@correo.es', '$2y$10$byAg7Kjw0VA8e1RO/MbJQe8i.KhfZkM/tKPk/1HxYq5PxBgyDvSsa', '33333333c'),
(4, 'alejandro@correo.es', '$2y$10$sfrH9f3nZd9X2JI2Y9Urcuq71WooI9ahHOVONUU6qw6y2C8.qiUdm', '44444444d'),
(5, 'fernando@correo.es', '$2y$10$hETIs9zlvZMnE1F1Zee1d.xsgLV/oIbZV9wj8alZBV0QYwt09zlTS', '55555555d'),
(6, 'pedroalvarez@correo.es', '$2y$10$pdTlPpEMCWbTWJJNVhotguPgCxQ.jENpB2OjyHAel.WxSmgMtKO9G', '66666666f'),
(7, 'pablo@correo.es', 'contraseñapablo', '77777777'),
(9, 'marcos@correo.es', 'contraseñamarcos', '99999999p'),
(11, 'elena@correo.es', '$2y$10$8Amfu48VGyzXdhn9Ts1JoOcdToc/7v0PaKImEfNsIcuAe0IlysQV.', '12345678u'),
(15, 'JuanMecanico@correo.es', '$2y$10$qUgdfSmUpwuu4C9Cf/Y1Xu4Qn0wl5p1ZkZJh6wrh3JqnQ4v1AcQYi', '12121212');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Vacaciones`
--

CREATE TABLE `Vacaciones` (
  `id_vacaciones` int(11) NOT NULL,
  `empleado_DNI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `inicio_vacaciones` datetime NOT NULL,
  `fin_vacaciones` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Vacaciones`
--

INSERT INTO `Vacaciones` (`id_vacaciones`, `empleado_DNI`, `inicio_vacaciones`, `fin_vacaciones`) VALUES
(1, '11111111a', '2018-05-16 00:00:00', '2018-05-23 00:00:00'),
(2, '12121212', '2018-05-23 00:00:00', '2018-05-30 00:00:00'),
(3, '12345678a', '2018-05-30 00:00:00', '2018-06-06 00:00:00'),
(4, '12345678b', '2018-06-06 00:00:00', '2018-06-13 00:00:00'),
(5, '12345678c', '2018-06-13 00:00:00', '2018-06-20 00:00:00'),
(6, '12345678d', '2018-06-20 00:00:00', '2018-06-27 00:00:00'),
(7, '12345678u', '2018-06-27 00:00:00', '2018-07-04 00:00:00'),
(8, '33333333c', '2018-07-04 00:00:00', '2018-07-11 00:00:00'),
(9, '44444444d', '2018-07-11 00:00:00', '2018-07-18 00:00:00'),
(10, '55555555d', '2018-07-18 00:00:00', '2018-07-25 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Viaje`
--

CREATE TABLE `Viaje` (
  `codigo` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Viaje`
--

INSERT INTO `Viaje` (`codigo`, `estado`) VALUES
(0, 'en estacion '),
(1, 'de camino'),
(2, 'en la estacion'),
(3, ''),
(4, ''),
(11, ''),
(67, ''),
(98, ''),
(117, ''),
(119, ''),
(120, ''),
(123, ''),
(124, ''),
(125, ''),
(126, ''),
(202, ''),
(666, ''),
(1111, ''),
(1112, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `Cursa`
--
ALTER TABLE `Cursa`
  ADD PRIMARY KEY (`id_cursos`,`DNI_empleado`),
  ADD KEY `DNI_empleado` (`DNI_empleado`);

--
-- Indices de la tabla `Cursos`
--
ALTER TABLE `Cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Indices de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_estacion_base` (`id_estacion_base`);

--
-- Indices de la tabla `Estacion_base`
--
ALTER TABLE `Estacion_base`
  ADD PRIMARY KEY (`id_estacion_base`);

--
-- Indices de la tabla `Jornada_empleado`
--
ALTER TABLE `Jornada_empleado`
  ADD PRIMARY KEY (`DNI_empleado`,`id_jornada_laboral`),
  ADD KEY `id_jornada_laboral` (`id_jornada_laboral`);

--
-- Indices de la tabla `Jornada_laboral`
--
ALTER TABLE `Jornada_laboral`
  ADD PRIMARY KEY (`id_jornada_laboral`);

--
-- Indices de la tabla `Solicitud`
--
ALTER TABLE `Solicitud`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `DNI_empleado` (`DNI_empleado`);

--
-- Indices de la tabla `Tarea`
--
ALTER TABLE `Tarea`
  ADD PRIMARY KEY (`id_tarea`);

--
-- Indices de la tabla `TieneAsignada`
--
ALTER TABLE `TieneAsignada`
  ADD PRIMARY KEY (`id_tieneAsignada`),
  ADD UNIQUE KEY `id_tieneAsignada` (`id_tieneAsignada`),
  ADD KEY `codigo_viaje` (`codigo_viaje`),
  ADD KEY `DNI` (`DNI`),
  ADD KEY `id_tarea` (`id_tarea`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `DNI_usuario` (`DNI_usuario`);

--
-- Indices de la tabla `Vacaciones`
--
ALTER TABLE `Vacaciones`
  ADD PRIMARY KEY (`id_vacaciones`),
  ADD KEY `empleado_DNI` (`empleado_DNI`);

--
-- Indices de la tabla `Viaje`
--
ALTER TABLE `Viaje`
  ADD PRIMARY KEY (`codigo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Cursa`
--
ALTER TABLE `Cursa`
  ADD CONSTRAINT `Cursa_ibfk_1` FOREIGN KEY (`DNI_empleado`) REFERENCES `Empleado` (`DNI`),
  ADD CONSTRAINT `Cursa_ibfk_2` FOREIGN KEY (`id_cursos`) REFERENCES `Cursos` (`id_cursos`);

--
-- Filtros para la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD CONSTRAINT `Empleado_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `Categoria` (`id_categoria`),
  ADD CONSTRAINT `Empleado_ibfk_2` FOREIGN KEY (`id_estacion_base`) REFERENCES `Estacion_base` (`id_estacion_base`);

--
-- Filtros para la tabla `Jornada_empleado`
--
ALTER TABLE `Jornada_empleado`
  ADD CONSTRAINT `Jornada_empleado_ibfk_1` FOREIGN KEY (`DNI_empleado`) REFERENCES `Empleado` (`DNI`),
  ADD CONSTRAINT `Jornada_empleado_ibfk_2` FOREIGN KEY (`id_jornada_laboral`) REFERENCES `Jornada_laboral` (`id_jornada_laboral`);

--
-- Filtros para la tabla `Solicitud`
--
ALTER TABLE `Solicitud`
  ADD CONSTRAINT `Solicitud_ibfk_1` FOREIGN KEY (`DNI_empleado`) REFERENCES `Empleado` (`DNI`);

--
-- Filtros para la tabla `TieneAsignada`
--
ALTER TABLE `TieneAsignada`
  ADD CONSTRAINT `TieneAsignada_ibfk_4` FOREIGN KEY (`codigo_viaje`) REFERENCES `Viaje` (`codigo`),
  ADD CONSTRAINT `TieneAsignada_ibfk_5` FOREIGN KEY (`DNI`) REFERENCES `Empleado` (`DNI`),
  ADD CONSTRAINT `TieneAsignada_ibfk_6` FOREIGN KEY (`id_tarea`) REFERENCES `Tarea` (`id_tarea`);

--
-- Filtros para la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`DNI_usuario`) REFERENCES `Empleado` (`DNI`);

--
-- Filtros para la tabla `Vacaciones`
--
ALTER TABLE `Vacaciones`
  ADD CONSTRAINT `Vacaciones_ibfk_1` FOREIGN KEY (`empleado_DNI`) REFERENCES `Empleado` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
