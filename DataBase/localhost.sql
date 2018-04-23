-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-04-2018 a las 07:27:37
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
('2018-04-20 00:00:00', 0, '22222222b'),
('2018-05-10 08:00:00', 1, '44444444d'),
('2018-04-11 10:00:00', 1, '66666666f'),
('2018-05-03 14:00:00', 2, '22222222b'),
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
  `km` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_estacion_base` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`DNI`, `nombre`, `apellido1`, `apellido2`, `salario`, `km`, `id_categoria`, `id_estacion_base`, `foto`) VALUES
('11111111a', 'Juan', 'García de la cruz', 'García', 5400, 54000, 1, 'MAD', '/images/page2_img2.jpg'),
('12121212', 'juan', 'mecanico', NULL, 3000, 0, 1, 'MAD', ''),
('12345678a', 'Javier', 'Revuelta', 'Garcia', 0, 0, 3, 'BIL', ''),
('12345678b', 'Irene', 'Garcia', 'Muñoz', 0, 0, 3, 'MUR', ''),
('12345678c', 'Ana', 'Ibañez', 'Herrera', 0, 0, 5, 'MAD', ''),
('12345678d', 'Sandra', 'Garcia', 'Ibañez', 0, 0, 3, 'SEV', ''),
('12345678u', 'elena', 'alvarez', NULL, 4500, 6000, 4, 'LEO', ''),
('22222222b', 'Cristina ', 'García', 'Sánchez-Poves', 5900, 40000, 5, 'VAL', '/images/page2_img3.jpg'),
('33333333c', 'rocio', 'gonzalez', NULL, 5400, 40000, 1, 'VALL', ''),
('44444444d', 'alejandro', 'esquivias', NULL, 3000, 0, 2, 'ALI', ''),
('55555555d', 'fernando', 'magdalena', NULL, 3000, 0, 2, 'LEO', ''),
('66666666f', 'pedro', 'alvarez', 'alvarez', 3000, 100, 3, 'MAD', ''),
('77777777', 'pablo', 'alvarez', NULL, 3333, 400, 4, 'VAL', ''),
('99999999p', 'marcos', 'perez', NULL, 6000, 0, 5, 'MUR', '');

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
('12345678a', 0, NULL),
('12345678b', 0, NULL),
('12345678c', 1, NULL),
('12345678d', 1, NULL),
('22222222b', 0, 4),
('22222222b', 2, 2),
('55555555d', 0, NULL);

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
(7, '2018-04-09 00:40:00', '2018-04-09 19:00:00');

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
  `nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Tarea`
--

INSERT INTO `Tarea` (`id_tarea`, `nombre`) VALUES
(0, NULL),
(1, 'conducir tren madrid'),
(2, 'arreglar ruedas'),
(3, 'arreglar calefacción'),
(4, 'conducir tren madrid'),
(6, 'tr');

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
  `codigo_viaje` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TieneAsignada`
--

INSERT INTO `TieneAsignada` (`DNI`, `hora_comienzo`, `id_tarea`, `descripcion`, `hora_completada`, `codigo_viaje`, `estado`) VALUES
('11111111a', '2018-03-30 00:00:00', 1, '', '0000-00-00 00:00:00', 0, ''),
('11111111a', '2018-03-14 06:00:00', 4, '', '0000-00-00 00:00:00', 0, ''),
('12345678a', '2018-04-08 12:00:00', 1, '', '2018-04-08 13:00:00', 1, 'realizada'),
('12345678b', '2018-04-08 12:00:00', 2, '', '2018-04-08 13:00:00', 123, 'realizada'),
('12345678c', '2018-04-12 13:30:00', 0, '', '2018-04-12 16:00:00', 666, 'pendiente'),
('12345678d', '2018-04-01 19:30:00', 3, '', '2018-04-12 21:00:00', 202, 'cancelada'),
('12345678u', '2018-04-18 16:00:00', 2, '', '0000-00-00 00:00:00', 2, ''),
('22222222b', '2018-04-18 00:00:00', 1, '', '0000-00-00 00:00:00', 1, ''),
('33333333c', '2018-04-18 00:00:00', 1, '', '0000-00-00 00:00:00', 2, ''),
('55555555d', '2018-03-31 00:00:00', 2, '', '0000-00-00 00:00:00', 2, ''),
('55555555d', '2018-03-15 14:00:00', 3, '', '0000-00-00 00:00:00', 0, ''),
('77777777', '2018-04-25 11:00:00', 6, '', '0000-00-00 00:00:00', 0, ''),
('99999999p', '2018-04-18 00:45:44', 4, '', '0000-00-00 00:00:00', 1, '');

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
(3, 'rocio@correo.es', '*305CF668E4A82DB0AA2108B81A6486BACC93C082', '33333333c'),
(4, 'alejandro@correo.es', '*5AFD6AFDD511C1057208F8D88C2527FAD9DF25D7', '44444444d'),
(5, 'fernando@correo.es', '*43876E558C63744490C037FF43570764FCC3FB90', '55555555d'),
(6, 'pedroalvarez@correo.es', 'contraseñapedro', '66666666f'),
(7, 'pablo@correo.es', 'contraseñapablo', '77777777'),
(9, 'marcos@correo.es', 'contraseñamarcos', '99999999p'),
(11, 'elena@correo.es', 'contraseñaelena', '12345678u'),
(15, 'JuanMecanico@correo.es', 'mantenimiento', '12121212');

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
(123, ''),
(202, ''),
(666, '');

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
  ADD PRIMARY KEY (`DNI`,`id_tarea`),
  ADD KEY `id` (`id_tarea`),
  ADD KEY `codigo_viaje` (`codigo_viaje`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `DNI_usuario` (`DNI_usuario`);

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
  ADD CONSTRAINT `TieneAsignada_ibfk_2` FOREIGN KEY (`DNI`) REFERENCES `Empleado` (`DNI`),
  ADD CONSTRAINT `TieneAsignada_ibfk_3` FOREIGN KEY (`id_tarea`) REFERENCES `Tarea` (`id_tarea`),
  ADD CONSTRAINT `TieneAsignada_ibfk_4` FOREIGN KEY (`codigo_viaje`) REFERENCES `Viaje` (`codigo`);

--
-- Filtros para la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`DNI_usuario`) REFERENCES `Empleado` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
