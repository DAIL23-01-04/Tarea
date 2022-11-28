-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2022 a las 14:55:32
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eva01`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IDempleados` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellidopat` varchar(20) NOT NULL,
  `Apellidomat` varchar(20) NOT NULL,
  `NumTelefono` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IDusuarios` int(11) NOT NULL,
  `Nom_Usuarios` varchar(20) NOT NULL,
  `apellidopat_usuario` varchar(20) NOT NULL,
  `apellidomat_usuario` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IDusuarios`, `Nom_Usuarios`, `apellidopat_usuario`, `apellidomat_usuario`, `correo`, `clave`) VALUES
(1, 'Armando', 'Garnica', 'Venitez', 'vent@gmail.com', '232323'),
(2, 'Luis', 'Contreras', 'Gutierrez', 'lwis@gmail.com', '56_gato'),
(3, 'Leonel', 'Lopez', 'Anaya', 'anya@gmail.com', 'htlsd-seer'),
(4, 'Lael', 'Chavez', 'Moreno', 'lels289@gmail.com', 'ash_e09'),
(5, 'Gabriel', 'Rosario', 'Morales', 'hgd-gat@gmail.com', '67_hjjs'),
(6, 'Miguel', 'Fernandes', 'Gutierrez', 'french@gmail.com', 'ghdf-er'),
(7, 'Jose', 'Chavez', 'Hernandez', 'Jvsl@gmail.com', '19953549'),
(8, 'Enrique', 'Liera', 'de la Cruz', 'lirio_21@gmail.com', 'rosavenus');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IDempleados`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IDusuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IDempleados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IDusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
