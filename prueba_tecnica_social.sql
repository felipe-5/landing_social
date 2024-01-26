-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2024 a las 03:02:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_tecnica_social`
--
CREATE DATABASE IF NOT EXISTS `prueba_tecnica_social` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba_tecnica_social`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_tienda`
--

CREATE TABLE `formulario_tienda` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `correo` text NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `tienda` text NOT NULL,
  `pais` int(11) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formulario_tienda`
--

INSERT INTO `formulario_tienda` (`id`, `usuario`, `correo`, `telefono`, `tienda`, `pais`, `direccion`) VALUES
(15, 'cristian', 'csalcedo9607@gmail.com', '3102439744', 'tienda ', 4, 'transversal 40'),
(18, 'cristian', 'csalcedo9607@gmail.com', '8558', 'tienda ', 8, 'transversal 40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `pais` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `pais`) VALUES
(1, 'Argentina'),
(3, 'Chile'),
(4, 'Colombia'),
(5, 'Costa Rica'),
(6, 'España'),
(7, 'Estados Unidos'),
(8, 'Francia'),
(9, 'México'),
(10, 'Panamá');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario_tienda`
--
ALTER TABLE `formulario_tienda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario_tienda`
--
ALTER TABLE `formulario_tienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
