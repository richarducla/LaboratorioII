-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2017 a las 13:58:27
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `all4sale`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Nombre` varchar(50) DEFAULT NULL,
  `Contrase` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `AdministradorID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Nombre`, `Contrase`, `Estatus`, `AdministradorID`) VALUES
('Nury', 'amaro', 'A', 1),
('Richard', '222', 'A', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` text,
  `Precio` int(11) DEFAULT NULL,
  `Ubicacion` varchar(50) DEFAULT NULL,
  `Imagen` text,
  `fechaCreacion` date DEFAULT NULL,
  `fechaCaducidad` date DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `AnuncioID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`Nombre`, `Descripcion`, `Precio`, `Ubicacion`, `Imagen`, `fechaCreacion`, `fechaCaducidad`, `Estatus`, `AnuncioID`, `CategoriaID`) VALUES
('Vendo Rosas', 'Vendo rosas para el 14 de febrero', 500, 'UCLA - DCyT', '', NULL, NULL, 'A', 1, 1),
('Nombre', 'Ucla Dcyt', 3000, 'Barquisimeto', '', NULL, NULL, 'A', 2, 1111),
('dasad', 'czxxc', 123, 'asd', 'Chrysanthemum.jpg', '2017-01-30', '2017-02-15', '1', 3, 123),
('', '', NULL, '', '', '2017-02-06', '2017-02-23', '', 4, 12312);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Nombre` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `CategoriaID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobro`
--

CREATE TABLE `cobro` (
  `Descripcion` varchar(50) DEFAULT NULL,
  `Monto` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `CobroID` int(11) NOT NULL,
  `TipoventaID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `Puntaje` int(11) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `PuntuacionID` int(11) NOT NULL,
  `VentaID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puntuacion`
--

INSERT INTO `puntuacion` (`Puntaje`, `Descripcion`, `Estatus`, `PuntuacionID`, `VentaID`) VALUES
(5, 'ASD', 'a', 1, 1111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciopostventa`
--

CREATE TABLE `serviciopostventa` (
  `Descripcion` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `ServiciopostventaID` int(11) NOT NULL,
  `VentaID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `Mensaje` text,
  `Fecha` date DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `SugerenciasID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoventa`
--

CREATE TABLE `tipoventa` (
  `Descripcion` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `TipoventaID` int(11) NOT NULL,
  `ServiciopostventaID` int(11) DEFAULT NULL,
  `VentaID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Documentoid` varchar(50) DEFAULT NULL,
  `Contrase` varchar(50) DEFAULT NULL,
  `Foto` text,
  `Tipo` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `UsuarioID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Nombre`, `Apellido`, `Pais`, `Estado`, `Email`, `Telefono`, `Documentoid`, `Contrase`, `Foto`, `Tipo`, `Estatus`, `UsuarioID`) VALUES
('miguel', 'zozzaro', 'Venezuela', 'Zulia', 'mzdec1611@hotmail.com', 1111111, '', '', '', '', '', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariopremium`
--

CREATE TABLE `usuariopremium` (
  `Tipo` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `UsuariopremiumID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Descripcion` varchar(50) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Monto` int(11) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `VentaID` int(11) NOT NULL,
  `AnuncioID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`AdministradorID`);

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`AnuncioID`),
  ADD KEY `post_fk` (`CategoriaID`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Indices de la tabla `cobro`
--
ALTER TABLE `cobro`
  ADD PRIMARY KEY (`CobroID`),
  ADD KEY `FK_Cobro_Tipoventa` (`TipoventaID`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`PuntuacionID`),
  ADD KEY `puntu_fk` (`VentaID`);

--
-- Indices de la tabla `serviciopostventa`
--
ALTER TABLE `serviciopostventa`
  ADD PRIMARY KEY (`ServiciopostventaID`),
  ADD KEY `post_k` (`VentaID`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`SugerenciasID`);

--
-- Indices de la tabla `tipoventa`
--
ALTER TABLE `tipoventa`
  ADD PRIMARY KEY (`TipoventaID`),
  ADD KEY `FK_Tipoventa_Serviciopostventa` (`ServiciopostventaID`),
  ADD KEY `FK_Tipoventa_Venta` (`VentaID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`UsuarioID`);

--
-- Indices de la tabla `usuariopremium`
--
ALTER TABLE `usuariopremium`
  ADD PRIMARY KEY (`UsuariopremiumID`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`VentaID`),
  ADD KEY `anunven_fk` (`AnuncioID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `AdministradorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `AnuncioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cobro`
--
ALTER TABLE `cobro`
  MODIFY `CobroID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  MODIFY `PuntuacionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `serviciopostventa`
--
ALTER TABLE `serviciopostventa`
  MODIFY `ServiciopostventaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `SugerenciasID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoventa`
--
ALTER TABLE `tipoventa`
  MODIFY `TipoventaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `UsuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuariopremium`
--
ALTER TABLE `usuariopremium`
  MODIFY `UsuariopremiumID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `VentaID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
