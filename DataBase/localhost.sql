-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-03-2018 a las 16:31:50
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
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Categoria`
--

INSERT INTO `Categoria` (`id`, `nombre`) VALUES
(1, 'maquinista'),
(2, 'mecanico'),
(3, 'train reception');

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
('2018-05-03 14:00:00', 2, '22222222b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cursos`
--

CREATE TABLE `Cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `codigo_tren` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Cursos`
--

INSERT INTO `Cursos` (`id`, `nombre`, `estado`, `codigo_tren`) VALUES
(0, 'tren alta velocidad', 'completado', 12),
(1, 'limpieza de trenes', 'realizado', 0),
(2, 'trenes de velocidad media', 'realizado', 12);

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
  `id_jornada_laboral` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `foto` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`DNI`, `nombre`, `apellido1`, `apellido2`, `salario`, `km`, `id_categoria`, `id_estacion_base`, `id_jornada_laboral`, `id_usuario`, `foto`) VALUES
('11111111a', 'juan', 'garcia', NULL, 5400, 54000, 1, 'MAD', 0, 1, '/images/page2_img2.jpg'),
('22222222b', 'cristina ', 'garcia', NULL, 5400, 40000, 1, 'VAL', 0, 2, ''),
('33333333c', 'rocio', 'gonzalez', NULL, 5400, 40000, 1, 'VALL', 0, 3, ''),
('44444444d', 'alejandro', 'esquivias', NULL, 3000, 0, 2, 'ALI', 0, 4, ''),
('55555555d', 'fernando', 'magdalena', NULL, 3000, 0, 2, 'LEO', 0, 5, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estacion_base`
--

CREATE TABLE `Estacion_base` (
  `id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Estacion_base`
--

INSERT INTO `Estacion_base` (`id`, `nombre`) VALUES
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
-- Estructura de tabla para la tabla `Jornada_laboral`
--

CREATE TABLE `Jornada_laboral` (
  `id` int(11) NOT NULL,
  `hora_entrada` datetime NOT NULL,
  `hora_salida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Jornada_laboral`
--

INSERT INTO `Jornada_laboral` (`id`, `hora_entrada`, `hora_salida`) VALUES
(0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Solicitud`
--

CREATE TABLE `Solicitud` (
  `id` int(11) NOT NULL,
  `tipo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNI_empleado` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Solicitud`
--

INSERT INTO `Solicitud` (`id`, `tipo`, `estado`, `DNI_empleado`) VALUES
(1, 'vacaciones', 'aceptada', '11111111a'),
(2, 'baja', 'aceptada', '33333333c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tarea`
--

CREATE TABLE `Tarea` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripción` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_comienzo` datetime NOT NULL,
  `hora_completada` datetime NOT NULL,
  `codigo_viaje` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Tarea`
--

INSERT INTO `Tarea` (`id`, `nombre`, `tipo`, `descripción`, `hora_comienzo`, `hora_completada`, `codigo_viaje`, `estado`) VALUES
(1, 'conducir tren madrid', 'conducir', 'conducir el tren 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'realizada'),
(2, 'arreglar ruedas', 'arreglar', 'arreglar ruedas del tren 14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'cancelada'),
(3, 'arreglar calefacción', 'reparacion', 'la calefacción no se enciende', '2018-04-12 09:00:00', '2018-04-12 15:00:00', 0, 'a realizar'),
(4, 'conducir tren madrid', 'conducir', 'conducir el tren a madrid', '2018-03-15 07:00:00', '2018-03-15 12:00:00', 2, 'a realizar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TieneAsignada`
--

CREATE TABLE `TieneAsignada` (
  `DNI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TieneAsignada`
--

INSERT INTO `TieneAsignada` (`DNI`, `fecha`, `id`) VALUES
('11111111a', '2018-03-30 00:00:00', 1),
('11111111a', '2018-03-14 06:00:00', 4),
('22222222b', '2018-04-18 00:00:00', 1),
('33333333c', '2018-04-18 00:00:00', 1),
('44444444d', '2018-03-21 00:00:00', 2),
('55555555d', '2018-03-31 00:00:00', 2),
('55555555d', '2018-03-15 14:00:00', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contraseña` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNI_usuario` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id`, `correo`, `contraseña`, `DNI_usuario`) VALUES
(1, 'juan@correo.es', '$2y$10$FlPvMkpU7zpGGMVl/.LrIeGiDIdBY7GsCvdpLTIq04GN2yQ86G78u', '11111111a'),
(2, 'cristina@correo.es', '*D13AC1E66A9084C1CBC4DA408172A8215F73625B', '22222222b'),
(3, 'rocio@correo.es', '*305CF668E4A82DB0AA2108B81A6486BACC93C082', '33333333c'),
(4, 'alejandro@correo.es', '*5AFD6AFDD511C1057208F8D88C2527FAD9DF25D7', '44444444d'),
(5, 'fernando@correo.es', '*43876E558C63744490C037FF43570764FCC3FB90', '55555555d');

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
(2, 'en la estacion');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_jornada_laboral` (`id_jornada_laboral`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_estacion_base` (`id_estacion_base`);

--
-- Indices de la tabla `Estacion_base`
--
ALTER TABLE `Estacion_base`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Jornada_laboral`
--
ALTER TABLE `Jornada_laboral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Solicitud`
--
ALTER TABLE `Solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DNI_empleado` (`DNI_empleado`);

--
-- Indices de la tabla `Tarea`
--
ALTER TABLE `Tarea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo_viaje` (`codigo_viaje`);

--
-- Indices de la tabla `TieneAsignada`
--
ALTER TABLE `TieneAsignada`
  ADD PRIMARY KEY (`DNI`,`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`),
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
  ADD CONSTRAINT `Cursa_ibfk_2` FOREIGN KEY (`id_cursos`) REFERENCES `Cursos` (`id`);

--
-- Filtros para la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD CONSTRAINT `Empleado_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `Categoria` (`id`),
  ADD CONSTRAINT `Empleado_ibfk_3` FOREIGN KEY (`id_jornada_laboral`) REFERENCES `Jornada_laboral` (`id`),
  ADD CONSTRAINT `Empleado_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`),
  ADD CONSTRAINT `Empleado_ibfk_5` FOREIGN KEY (`id_estacion_base`) REFERENCES `Estacion_base` (`id`);

--
-- Filtros para la tabla `Solicitud`
--
ALTER TABLE `Solicitud`
  ADD CONSTRAINT `Solicitud_ibfk_1` FOREIGN KEY (`DNI_empleado`) REFERENCES `Empleado` (`DNI`);

--
-- Filtros para la tabla `Tarea`
--
ALTER TABLE `Tarea`
  ADD CONSTRAINT `Tarea_ibfk_1` FOREIGN KEY (`codigo_viaje`) REFERENCES `Viaje` (`codigo`);

--
-- Filtros para la tabla `TieneAsignada`
--
ALTER TABLE `TieneAsignada`
  ADD CONSTRAINT `TieneAsignada_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Tarea` (`id`),
  ADD CONSTRAINT `TieneAsignada_ibfk_2` FOREIGN KEY (`DNI`) REFERENCES `Empleado` (`DNI`);

--
-- Filtros para la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`DNI_usuario`) REFERENCES `Empleado` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
