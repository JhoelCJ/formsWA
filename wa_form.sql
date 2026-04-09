-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-04-2026 a las 20:08:52
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wa_form`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nombre_user` varchar(100) DEFAULT NULL,
  `apellido_user` varchar(100) DEFAULT NULL,
  `usuario_user` varchar(50) DEFAULT NULL,
  `cedula_user` varchar(10) DEFAULT NULL,
  `estado_user` enum('activo','inactivo') DEFAULT NULL,
  `clave_user` varchar(255) DEFAULT NULL,
  `direccion_user` varchar(255) DEFAULT NULL,
  `telefono_user` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `intentos_fallidos` int(11) DEFAULT '0',
  `bloqueo_hasta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `nombre_user`, `apellido_user`, `usuario_user`, `cedula_user`, `estado_user`, `clave_user`, `direccion_user`, `telefono_user`, `fecha_nacimiento`, `edad`, `intentos_fallidos`, `bloqueo_hasta`) VALUES
(1, 'Super', 'Administrador', 'admin', '1700000000', 'activo', '$2y$10$5/mjtaoJ4i5KX1kQ8KWi8.70vneKtS4Yp0p4RBeJ/ZnAx8ccB98Xq', NULL, NULL, '2000-01-01', NULL, 0, NULL),
(2, 'Jilmar', 'Calderon', 'jilmar1', '1752374676', 'activo', '$2y$10$TBsTjg3PUda.yR6QcYrxhueIukaBiorQjgwrY9MugCUzY57nFb2ii', NULL, NULL, '2003-02-23', NULL, 0, NULL),
(3, 'Jhoel', 'Calderon', 'Jhoel1', '1752374678', 'activo', '$2y$10$4Zs4RbtyA0u4.wvgaqcIy.FKIHz82jhv/uvWJdvsc.SzqHwOtL2zi', NULL, NULL, '2000-02-23', NULL, 0, NULL),
(4, 'Pedro', 'Pancho', 'pedro1', '1725364718', 'activo', '$2y$10$xtwKzuKv3prNzs5sPFSSMOL9tnTz6hk4VtBN0yUKB3N/iuPz3ej7i', NULL, NULL, '1999-02-19', NULL, 0, NULL),
(5, 'Francisco', 'Sanchez', 'Francis', '1726384291', 'activo', '$2y$10$PiwMRQZDejpsO6EZXUifzuKJuXEMbmQ0WLAFeQ1WyhD9CErTUkUfK', NULL, NULL, '1978-03-23', NULL, 0, NULL),
(6, 'Gabriel', 'Calvache', 'gabrielC', '17216273t6', 'activo', '$2y$10$Kcpp0Zumj4OWLQ.bgFlO8eQKikrok/2FgZRFoe4IYvu8cQJBaqkCa', NULL, NULL, '2001-05-07', NULL, 0, NULL),
(7, 'Maicol', 'Calvache', 'maicol', '1726172172', 'activo', '$2y$10$oTyhH5QM1hlCMH2Fur7cyuFcgTUDaS8dk7xraM0KpYjnqBQJ2sM3e', NULL, NULL, '2001-04-09', NULL, 0, NULL),
(8, 'Alex', 'Pancho', 'alex', '1726172173', 'activo', '$2y$10$MoQWRvbc7rPoNBEKS6NYteX1qLXnCH.AAsVm16Udbf5W2MGpjwhsi', NULL, NULL, '2004-02-01', NULL, 0, NULL),
(9, 'Mario', 'Godinez', 'mario', '1716217218', 'activo', '$2y$10$8P7Xy5SStp2QwV789ifdRO.99IDngdxdd2nSwlnj2YdlKW9DExyK.', NULL, NULL, '2000-05-08', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `cedula_user` (`cedula_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
