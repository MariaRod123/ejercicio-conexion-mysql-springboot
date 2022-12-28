-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2022 a las 14:32:05
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `cnt_id` int(10) UNSIGNED NOT NULL,
  `cnt_nombre` varchar(100) NOT NULL,
  `cnt_apellido` varchar(100) NOT NULL,
  `cnt_created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cnt_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`cnt_id`, `cnt_nombre`, `cnt_apellido`, `cnt_created_at`, `cnt_updated_at`) VALUES
(1, 'Maria', 'Rodriguez', '2022-12-22 10:21:53', NULL),
(2, 'Charly', 'Bravo', '2022-12-22 10:22:29', NULL),
(3, 'Luna', 'Sierra', '2022-12-22 10:23:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `tel_id` int(10) UNSIGNED NOT NULL,
  `tel_contacto_id` int(10) UNSIGNED NOT NULL,
  `tel_telefono` varchar(30) NOT NULL,
  `tel_created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `tel_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`tel_id`, `tel_contacto_id`, `tel_telefono`, `tel_created_at`, `tel_updated_at`) VALUES
(1, 1, '589456', '2022-12-22 10:25:31', NULL),
(2, 2, '241598', '2022-12-22 10:26:03', NULL),
(3, 3, '895473', '2022-12-22 10:26:26', NULL),
(4, 3, '895462', '2022-12-22 10:26:43', NULL),
(5, 3, '8941410', '2022-12-22 10:27:01', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`cnt_id`),
  ADD UNIQUE KEY `contacto_cnt_nombre_cnt_apellido_Idx` (`cnt_nombre`,`cnt_apellido`) USING BTREE,
  ADD KEY `contacto_cnt_apellido_Idx` (`cnt_apellido`) USING BTREE,
  ADD KEY `contacto_cnt_nombre_Idx` (`cnt_nombre`) USING BTREE;

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`tel_id`),
  ADD UNIQUE KEY `telefono_tel_contacto_id_tel_telefono_Idx` (`tel_contacto_id`,`tel_telefono`) USING BTREE,
  ADD KEY `telefono_tel_telefono_Idx` (`tel_telefono`) USING BTREE,
  ADD KEY `telefono_tel_usuario_id_Idx` (`tel_contacto_id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `cnt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `tel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `fk_tel_contacto_id` FOREIGN KEY (`tel_contacto_id`) REFERENCES `contacto` (`cnt_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
