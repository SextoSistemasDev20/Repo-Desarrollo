-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-02-2020 a las 19:22:32
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecuadox7_produccion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria_productos`
--

CREATE TABLE `auditoria_productos` (
  `AUD_ID` int(11) NOT NULL,
  `AUD_DESCRIPCION` varchar(250) DEFAULT NULL,
  `AUD_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auditoria_productos`
--

INSERT INTO `auditoria_productos` (`AUD_ID`, `AUD_DESCRIPCION`, `AUD_FCREACION`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'emiliano1, 4, A', '2020-02-07 20:16:47', '2020-02-08 01:16:47', '2020-02-08 01:16:47'),
(2, 'emiliano, Ventas, A', '2020-02-07 20:19:05', '2020-02-08 01:19:05', '2020-02-08 01:19:05'),
(3, 'emiliano, Produccion, AUsuario Editado', '2020-02-07 20:20:54', '2020-02-08 01:20:54', '2020-02-08 01:20:54'),
(4, 'RRRR, $2y$10$7IpuZT2zjcSw6RU.z7hi4uF5tBFlkgSiz/3OuO.miX8ATEynM5hhS, Produccion, A Usuario Creado', '2020-02-07 20:23:27', '2020-02-08 01:23:27', '2020-02-08 01:23:27'),
(5, '  Usuario Creado', '2020-02-07 20:23:40', '2020-02-08 01:23:40', '2020-02-08 01:23:40'),
(6, '  Usuario Creado', '2020-02-07 20:23:44', '2020-02-08 01:23:44', '2020-02-08 01:23:44'),
(7, 'ttttttttttt, $2y$10$KPH0fVuTIzx9VMWE5XIyMunlCOUgr1VqglTMhnNh8LDcNQ0IsNuae, Facturacion, A Usuario Creado', '2020-02-07 20:25:16', '2020-02-08 01:25:16', '2020-02-08 01:25:16'),
(8, '  ->Usuario Eliminado', '2020-02-07 20:25:50', '2020-02-08 01:25:50', '2020-02-08 01:25:50'),
(9, '  ->Usuario Eliminado', '2020-02-07 20:26:41', '2020-02-08 01:26:41', '2020-02-08 01:26:41'),
(10, '  ->Usuario Eliminado', '2020-02-07 20:26:44', '2020-02-08 01:26:44', '2020-02-08 01:26:44'),
(11, 'RRRR ->Usuario Eliminado', '2020-02-07 20:28:30', '2020-02-08 01:28:30', '2020-02-08 01:28:30'),
(12, 'ttttttttttt ->Usuario Eliminado', '2020-02-07 20:28:46', '2020-02-08 01:28:46', '2020-02-08 01:28:46'),
(13, 'ttttttttttt ->Usuario Eliminado', '2020-02-07 20:29:07', '2020-02-08 01:29:07', '2020-02-08 01:29:07'),
(14, 'Antonio, , Reyes, , condado, antonio@antonio.com, 0987301532, 1234567891, Cedula, Hombre, A, Comprador -> Persona Editada', '2020-02-07 20:34:11', '2020-02-08 01:34:11', '2020-02-08 01:34:11'),
(15, 'ggghhhhhhhhhhhh, A -> Rol Editado', '2020-02-07 20:43:19', '2020-02-08 01:43:19', '2020-02-08 01:43:19'),
(16, 'uuuuuuuu, A -> Rol Agregado', '2020-02-07 20:43:30', '2020-02-08 01:43:30', '2020-02-08 01:43:30'),
(17, 'Jorge, $2y$10$KHdC3ATlBkrV4K1qbcixMO3VLQjZym0fDO9DzgYB4igLqEfGITQ.q, admin, A -> Usuario Editado', '2020-02-07 22:10:56', '2020-02-08 03:10:56', '2020-02-08 03:10:56'),
(18, 'admin, $2y$10$i0kyMEb/JTL7Nr0A5cXk3u5AaGpf1nION9O54vlsR6TzR4GMj8aEu, admin, A -> Usuario Editado', '2020-02-08 22:35:22', '2020-02-09 05:35:22', '2020-02-09 05:35:22'),
(19, 'User, , User, , user, user@user.com, 123456789, 123456789, Cedula, Hombre, Comprador, A -> Persona Creada', '2020-02-08 22:53:11', '2020-02-09 05:53:11', '2020-02-09 05:53:11'),
(20, 'admin, $2y$10$3IAiueyqdmTG3bI0k6kfb.QMJE8FZ6mEAYb4hV900CIrW7XtDyjBC, admin, A -> Usuario Editado', '2020-02-08 22:53:29', '2020-02-09 05:53:29', '2020-02-09 05:53:29'),
(21, 'ddd ->Usuario Eliminado', '2020-02-08 22:53:33', '2020-02-09 05:53:33', '2020-02-09 05:53:33'),
(22, 'ddd ->Usuario Eliminado', '2020-02-08 22:53:37', '2020-02-09 05:53:37', '2020-02-09 05:53:37'),
(23, 'RRRR ->Usuario Eliminado', '2020-02-08 22:53:40', '2020-02-09 05:53:40', '2020-02-09 05:53:40'),
(24, 'RRRR ->Usuario Eliminado', '2020-02-08 22:53:44', '2020-02-09 05:53:44', '2020-02-09 05:53:44'),
(25, 'RRRR ->Usuario Eliminado', '2020-02-08 22:53:50', '2020-02-09 05:53:50', '2020-02-09 05:53:50'),
(26, 'ddd ->Usuario Eliminado', '2020-02-08 22:53:55', '2020-02-09 05:53:55', '2020-02-09 05:53:55'),
(27, 'ddd ->Usuario Eliminado', '2020-02-08 22:53:59', '2020-02-09 05:53:59', '2020-02-09 05:53:59'),
(28, 'ddd ->Usuario Eliminado', '2020-02-08 22:56:15', '2020-02-09 05:56:15', '2020-02-09 05:56:15'),
(29, 'admin, $2y$10$MPTJjSsWXE7bl94y5Q3EvedNqtgvdProJeJ5FHycPTyMRemkQoRdC, admin, A -> Usuario Editado', '2020-02-09 17:27:36', '2020-02-10 00:27:36', '2020-02-10 00:27:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CAT_ID` int(11) NOT NULL,
  `CAT_NOMBRE` varchar(200) DEFAULT NULL,
  `CAT_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CAT_ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_documento`
--

CREATE TABLE `detalle_documento` (
  `DOC_ID` int(11) DEFAULT NULL,
  `PRO_ID` int(11) DEFAULT NULL,
  `DET_ID` int(11) NOT NULL,
  `DET_CANTIDAD` decimal(8,0) DEFAULT NULL,
  `DET_PRECIO` decimal(8,2) DEFAULT NULL,
  `DET_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DET_ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `TIP_ID` int(11) NOT NULL,
  `DOC_ID` int(11) NOT NULL,
  `IMP_ID` int(11) NOT NULL,
  `DOC_NUMFACTURA` varchar(20) DEFAULT NULL,
  `DOC_FECHA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DOC_ESTADO` char(1) DEFAULT NULL,
  `DOC_FCREACION` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `IMP_ID` int(11) NOT NULL,
  `IMO_NOMBRE` varchar(50) DEFAULT NULL,
  `IMP_VALOR` decimal(3,2) DEFAULT NULL,
  `IMP_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IMP_ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `MOD_ID` int(11) NOT NULL,
  `MOD_NOMBRE` varchar(250) DEFAULT NULL,
  `MOD_URL` varchar(250) DEFAULT NULL,
  `MOD_DESTINO` varchar(20) DEFAULT NULL,
  `MOD_ESTADO` varchar(5) DEFAULT NULL,
  `MOD_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`MOD_ID`, `MOD_NOMBRE`, `MOD_URL`, `MOD_DESTINO`, `MOD_ESTADO`, `MOD_FCREACION`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Ventas', 'http://www.google.com', NULL, 'A', '2020-02-07 19:30:37', '2020-02-08 00:30:37', '2020-02-08 00:30:37'),
(3, 'Facturacion', 'facturacion.com', '_blank', 'A', '2020-02-07 19:50:19', '2020-02-08 00:37:28', '2020-02-08 00:50:19'),
(4, 'Facturacion1', 'facturacion.com', '_blank', 'A', '2020-02-07 19:38:54', '2020-02-08 00:38:54', '2020-02-08 00:38:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `TIPE_ID` int(11) NOT NULL,
  `PER_ID` int(11) NOT NULL,
  `PER_PNOMBRE` varchar(50) DEFAULT NULL,
  `PER_SNOMBRE` varchar(50) DEFAULT NULL,
  `PER_PAPELLIDO` varchar(50) DEFAULT NULL,
  `PER_SAPELLIDO` varchar(50) DEFAULT NULL,
  `PER_DIRECCION` varchar(500) DEFAULT NULL,
  `PER_DNI` varchar(20) DEFAULT NULL,
  `PER_CI` varchar(15) DEFAULT NULL,
  `PER_GENERO` varchar(10) DEFAULT NULL,
  `PER_CELULAR` varchar(13) DEFAULT NULL,
  `PER_EMAIL` varchar(50) DEFAULT NULL,
  `PER_ESTADO` char(1) DEFAULT 'A',
  `PER_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`TIPE_ID`, `PER_ID`, `PER_PNOMBRE`, `PER_SNOMBRE`, `PER_PAPELLIDO`, `PER_SAPELLIDO`, `PER_DIRECCION`, `PER_DNI`, `PER_CI`, `PER_GENERO`, `PER_CELULAR`, `PER_EMAIL`, `PER_ESTADO`, `PER_FCREACION`, `CREATED_AT`, `UPDATED_AT`) VALUES
(2, 2, 'Jorge', NULL, 'Reyes', NULL, 'condado', 'Ruc', '1234567890', 'Mujer', '0987301532', 'reyesjorge_10@hotmail.com', 'I', '2020-02-07 17:52:51', '2020-02-07 22:12:17', '2020-02-07 22:52:51'),
(1, 4, 'Antonio', NULL, 'Reyes', NULL, 'condado', 'Cedula', '1234567891', 'Hombre', '0987301532', 'antonio@antonio.com', 'A', '2020-02-07 20:33:47', '2020-02-07 22:22:13', '2020-02-08 01:33:47'),
(1, 5, 'User', NULL, 'User', NULL, 'user', 'Cedula', '123456789', 'Hombre', '123456789', 'user@user.com', 'A', '2020-02-08 22:53:11', '2020-02-09 05:53:11', '2020-02-09 05:53:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_productos`
--

CREATE TABLE `personas_productos` (
  `PER_PROD_ID` int(11) NOT NULL,
  `PER_ID` int(11) NOT NULL,
  `PRO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `CAT_ID` int(11) NOT NULL,
  `PRO_ID` int(11) NOT NULL,
  `PRO_NOMBRE` varchar(100) DEFAULT NULL,
  `PRO_DESCRIPCION` varchar(800) DEFAULT NULL,
  `PRO_PRECIO` decimal(8,2) DEFAULT NULL,
  `PRO_MAXIMO` decimal(8,2) DEFAULT NULL,
  `PRO_MINIMO` decimal(8,2) DEFAULT NULL,
  `PRO_TIENEIVA` char(2) DEFAULT NULL,
  `PRO_ESTADO` char(1) DEFAULT NULL,
  `PRO_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ROL_ID` int(11) NOT NULL,
  `ROL_NOMBRE` varchar(50) DEFAULT NULL,
  `ROL_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ROL_ESTADO` char(1) DEFAULT 'A',
  `CREATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`ROL_ID`, `ROL_NOMBRE`, `ROL_FCREACION`, `ROL_ESTADO`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'admin', '2020-02-06 23:03:48', 'A', '2020-02-07 03:52:24', '2020-02-07 04:03:47'),
(4, 'Ventas', '2020-02-06 23:54:09', 'A', '2020-02-07 04:54:09', '2020-02-07 04:54:09'),
(5, 'Produccion', '2020-02-06 23:54:15', 'A', '2020-02-07 04:54:15', '2020-02-07 04:54:15'),
(7, 'Facturacion', '2020-02-07 00:33:19', 'A', '2020-02-07 05:33:19', '2020-02-07 05:33:19'),
(10, 'Despacho', '2020-02-07 20:43:19', 'A', '2020-02-08 01:42:10', '2020-02-08 01:43:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `TIP_ID` int(11) NOT NULL,
  `TIP_NOMBRE` varchar(100) DEFAULT NULL,
  `TIP_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TIP_ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `TIPE_ID` int(11) NOT NULL,
  `TIPE_NOMBRE` varchar(100) DEFAULT NULL,
  `TIPE_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TIPE_ESTADO` char(1) DEFAULT 'A',
  `CREATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`TIPE_ID`, `TIPE_NOMBRE`, `TIPE_FCREACION`, `TIPE_ESTADO`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Comprador', '2020-02-07 15:57:03', 'A', '2020-02-07 20:57:03', '2020-02-07 20:57:03'),
(2, 'Vendedor', '2020-02-08 22:52:38', 'A', '2020-02-07 20:58:08', '2020-02-09 05:52:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `ROL_ID` int(11) NOT NULL,
  `USU_USUARIO` varchar(50) DEFAULT NULL,
  `USU_PASSWORD` varchar(100) DEFAULT NULL,
  `USU_FCREACION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USU_ESTADO` char(1) DEFAULT 'A',
  `CREATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `ROL_ID`, `USU_USUARIO`, `USU_PASSWORD`, `USU_FCREACION`, `USU_ESTADO`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'admin', '$2y$10$MPTJjSsWXE7bl94y5Q3EvedNqtgvdProJeJ5FHycPTyMRemkQoRdC', '2020-02-09 17:27:36', 'A', '2020-02-07 04:07:31', '2020-02-10 00:27:36'),
(2, 4, 'george1', '$2y$10$zHNmfmkwl3zWjk1u0VtGhOe1N3hzyZdcRpNhuMsWqUflbL1pzJMtO', '2020-02-07 19:50:30', 'A', '2020-02-07 05:12:28', '2020-02-08 00:50:30'),
(3, 5, 'prueba', '$2y$10$vOweTvUztKMEfWAXJ81vZOOk.x.uvinaO73JbiZOxsg38avWTk/py', '2020-02-07 00:29:39', 'A', '2020-02-07 05:29:39', '2020-02-07 05:29:39'),
(4, 5, 'emiliano', '$2y$10$6aBvm4CxhL/gMmzn33jHOeaDinTZWwQn5AXS3nHZv4U5hmPMXnxRK', '2020-02-07 20:20:54', 'A', '2020-02-08 01:15:16', '2020-02-08 01:20:54'),
(5, 5, 'RRRR', '$2y$10$7IpuZT2zjcSw6RU.z7hi4uF5tBFlkgSiz/3OuO.miX8ATEynM5hhS', '2020-02-07 20:23:27', 'A', '2020-02-08 01:23:27', '2020-02-08 01:23:27'),
(6, 7, 'ttttttttttt', '$2y$10$KPH0fVuTIzx9VMWE5XIyMunlCOUgr1VqglTMhnNh8LDcNQ0IsNuae', '2020-02-07 20:25:16', 'A', '2020-02-08 01:25:16', '2020-02-08 01:25:16'),
(7, 5, 'marcy', '$2y$10$ig03A5sHEza1/P3hH1S83Oi7ayAOwoCm3X3WQDpo.Bdhv94FNvxFG', '2020-02-07 21:55:30', 'A', '2020-02-08 02:55:30', '2020-02-08 02:55:30'),
(8, 7, 'emiliano', '$2y$10$cid9DXYy1Ld2Cbc898mQPeizal.f1GIs12nPFGtlmVhEnycK8N8q6', '2020-02-07 22:11:53', 'A', '2020-02-08 03:11:53', '2020-02-08 03:11:53'),
(9, 5, 'Fc', '$2y$10$kGHo1LbzFZSl0XEL4n647euSQnw4Nj4O3BimBmDYEV8w3oAYG9C5.', '2020-02-08 01:15:03', 'A', '2020-02-08 08:15:03', '2020-02-08 08:15:03'),
(10, 5, 'ddd', '$2y$10$vl8XuqNcOrOm1wUerYAQruMuMyvgKgM1h/Cal95rjUdG/1py8nYLK', '2020-02-08 01:45:35', 'A', '2020-02-08 08:45:35', '2020-02-08 08:45:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria_productos`
--
ALTER TABLE `auditoria_productos`
  ADD PRIMARY KEY (`AUD_ID`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CAT_ID`);

--
-- Indices de la tabla `detalle_documento`
--
ALTER TABLE `detalle_documento`
  ADD PRIMARY KEY (`DET_ID`),
  ADD KEY `FK_RELATIONSHIP_4` (`DOC_ID`),
  ADD KEY `FK_RELATIONSHIP_8` (`PRO_ID`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`DOC_ID`),
  ADD KEY `FK_RELATIONSHIP_2` (`TIP_ID`),
  ADD KEY `FK_RELATIONSHIP_3` (`IMP_ID`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`IMP_ID`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`MOD_ID`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`PER_ID`),
  ADD KEY `FK_RELATIONSHIP_5` (`TIPE_ID`);

--
-- Indices de la tabla `personas_productos`
--
ALTER TABLE `personas_productos`
  ADD PRIMARY KEY (`PER_PROD_ID`),
  ADD KEY `FK_RELATIONSHIP_6` (`PER_ID`),
  ADD KEY `FK_RELATIONSHIP_7` (`PRO_ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`PRO_ID`),
  ADD KEY `FK_RELATIONSHIP_1` (`CAT_ID`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ROL_ID`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`TIP_ID`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`TIPE_ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_RELATIONSHIP_9` (`ROL_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria_productos`
--
ALTER TABLE `auditoria_productos`
  MODIFY `AUD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CAT_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_documento`
--
ALTER TABLE `detalle_documento`
  MODIFY `DET_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `DOC_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  MODIFY `IMP_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `MOD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `PER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personas_productos`
--
ALTER TABLE `personas_productos`
  MODIFY `PER_PROD_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `PRO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `ROL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `TIP_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `TIPE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_documento`
--
ALTER TABLE `detalle_documento`
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`DOC_ID`) REFERENCES `documento` (`DOC_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`PRO_ID`) REFERENCES `productos` (`PRO_ID`);

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`TIP_ID`) REFERENCES `tipo_documento` (`TIP_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`IMP_ID`) REFERENCES `impuestos` (`IMP_ID`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`TIPE_ID`) REFERENCES `tipo_persona` (`TIPE_ID`);

--
-- Filtros para la tabla `personas_productos`
--
ALTER TABLE `personas_productos`
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`PER_ID`) REFERENCES `persona` (`PER_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`PRO_ID`) REFERENCES `productos` (`PRO_ID`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`CAT_ID`) REFERENCES `categoria` (`CAT_ID`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ROL_ID`) REFERENCES `roles` (`ROL_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
