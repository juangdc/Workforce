-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-03-2018 a las 08:45:53
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
(2, 'mecanico');

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
('2018-04-20 00:00:00', 0, '22222222b');

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
(0, 'tren alta velocidad', 'completado', 12);

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
  `id_estacion_base` int(11) NOT NULL,
  `id_jornada_laboral` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`DNI`, `nombre`, `apellido1`, `apellido2`, `salario`, `km`, `id_categoria`, `id_estacion_base`, `id_jornada_laboral`, `id_usuario`) VALUES
('11111111a', 'juan', 'garcia', NULL, 5400, 54000, 1, 0, 0, 1),
('22222222b', 'cristina ', 'garcia', NULL, 5400, 40000, 1, 0, 0, 2),
('33333333c', 'rocio', 'gonzalez', NULL, 5400, 40000, 1, 0, 0, 3),
('44444444d', 'alejandro', 'esquivias', NULL, 3000, 0, 2, 0, 0, 4),
('55555555d', 'fernando', 'magdalena', NULL, 3000, 0, 2, 0, 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estacion_base`
--

CREATE TABLE `Estacion_base` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Estacion_base`
--

INSERT INTO `Estacion_base` (`id`, `nombre`) VALUES
(0, 'marid');

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
  `codigo_viaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Tarea`
--

INSERT INTO `Tarea` (`id`, `nombre`, `tipo`, `descripción`, `hora_comienzo`, `hora_completada`, `codigo_viaje`) VALUES
(1, 'conducir tren madrid', 'conducir', 'conducir el tran 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'arreglar ruedas', 'arreglar', 'arreglar ruedas del tren 14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

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
('22222222b', '2018-04-18 00:00:00', 1),
('33333333c', '2018-04-18 00:00:00', 1),
('44444444d', '2018-03-21 00:00:00', 2),
('55555555d', '2018-03-31 00:00:00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contraseña` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNI_usuario` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id`, `correo`, `contraseña`, `DNI_usuario`) VALUES
(1, 'juan@correo.es', 'contraseñajuan', '11111111a'),
(2, 'cristina@correo.es', 'contraseñacristina', '22222222b'),
(3, 'rocio@correo.es', 'contraseñarocio', '33333333c'),
(4, 'alejandro@correo.es', 'contraseñaalejandro', '44444444d'),
(5, 'fernando@correo.es', 'contraseñafernando', '55555555d');

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
(0, 'en estacion ');

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
  ADD KEY `id_estacion_base` (`id_estacion_base`),
  ADD KEY `id_jornada_laboral` (`id_jornada_laboral`),
  ADD KEY `id_usuario` (`id_usuario`);

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
  ADD CONSTRAINT `Empleado_ibfk_2` FOREIGN KEY (`id_estacion_base`) REFERENCES `Estacion_base` (`id`),
  ADD CONSTRAINT `Empleado_ibfk_3` FOREIGN KEY (`id_jornada_laboral`) REFERENCES `Jornada_laboral` (`id`),
  ADD CONSTRAINT `Empleado_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`);

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
