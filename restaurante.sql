-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2023 a las 09:42:05
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(3) NOT NULL,
  `imagen` varchar(55) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `imagen`, `nombre`) VALUES
(1, '../img_prod/tacos-todos.jpg', 'Tacos'),
(2, '../img_prod/postres_img.jpg', 'Postres'),
(3, '../img_prod/bebidas_todas.jpg', 'Bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `cve_comentario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `comentario` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`cve_comentario`, `nombre`, `apellidos`, `correo`, `telefono`, `comentario`, `timestamp`) VALUES
(3, 'Leonardo', 'Madrigal Pardo', 'leo@gmail.com', '9932408301', 'ola buenas tardes que buena pagina 👍', '2022-08-20 20:51:51'),
(4, 'ola', 'asd', 'asd', '123', 'TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO TEXTO ', '2022-08-20 21:20:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `imagen` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id_usuario`, `correo`, `password`, `nombre`, `imagen`) VALUES
(1, 'leo@gmail.com', '123', 'Leonardo', '../img_admin/fot3.jpg'),
(2, 'alfredo@gmail.com', '1234', 'Alfredo', '../img_admin/869283.jpg'),
(3, 'eva@gmail.com', '123', 'eva', '../img_admin/1005830.jpg'),
(4, 'itzelita@gmail.com', '123', 'Itzelita❤️', '../img_admin/familia 👌👌.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `cve_noticia` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`cve_noticia`, `fecha`, `titulo`, `contenido`) VALUES
(5, '2022-08-20', 'Buenas Noticias', 'Se agrega un nuevo platillo de PASTEL CON QUESO'),
(6, '2022-08-16', 'nopi', '123ffffffff'),
(7, '2022-08-22', 'asdawd', 'asdawds'),
(8, '2022-08-15', 'asdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `cve_producto` int(4) NOT NULL,
  `imagen` varchar(60) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` int(11) NOT NULL,
  `id_categoria` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`cve_producto`, `imagen`, `nombre`, `descripcion`, `precio`, `id_categoria`) VALUES
(1, '../img_prod/pastor.jpg', 'Pastor ', 'carne de dudosa procedencia', 15, 1),
(2, '../img_prod/shirlon.jpg', 'Shirlon', 'carne de dudosa procedencia', 20, 1),
(3, '../img_prod/cochinita.webp', 'Cochinita', 'carne de dudosa procedencia', 12, 1),
(4, '../img_prod/canasta.jpg', 'Canasta', 'carne de dudosa procedencia', 16, 1),
(5, '../img_prod/churros.jpg', 'churros', 'carne dudosa procedencia', 10, 2),
(6, '../img_prod/donas.jpg', 'donas', 'carne dudosa procedencia', 7, 2),
(7, '../img_prod/pastes chocolate.jfif', 'pastel chocolate', 'carne dudosa procedencia', 55, 2),
(8, '../img_prod/pay.jfif', 'pay manzana', 'carne dudosa procedencia', 50, 2),
(9, '../img_prod/jugo de naranja.jpg', 'jugo naranja', 'agua dudosa procedencia', 25, 3),
(10, '../img_prod/chokomilk.jpg', 'chocomilk', 'agua dudosa procedencia', 30, 3),
(11, '../img_prod/agua.jfif', 'agua natural', 'natural', 10, 3),
(12, '../img_prod/cafe.jpg', 'cafe', 'agua locas', 30, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cve_usuario` tinyint(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ap_paterno` text NOT NULL,
  `ap_materno` text NOT NULL,
  `imagen` varchar(55) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cve_usuario`, `nombre`, `ap_paterno`, `ap_materno`, `imagen`, `telefono`, `direccion`) VALUES
(1, 'Leonardo', 'Madrigal', 'Pardo', '../img_usuario/1000030.jpg', '9932408301', 'La magan uno, Calle uno'),
(2, 'Alfredo', 'Perez', 'Garcia', '../img_usuario/1009824.jpg', '9932408302', 'Mercado de la cierra'),
(3, 'eva', 'castro', 'prats', '../img_usuario/valorant_jett_by_agussw_defl7wa-pre.jpg', '9932408302', 'Bajo el puente'),
(4, 'Ana', 'aurora', 'si', '../img_usuario/1034735.png', '9940789371', 'asdasd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`cve_comentario`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`cve_noticia`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`cve_producto`),
  ADD KEY `productos_cate_fk` (`id_categoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cve_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `cve_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `cve_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `cve_producto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cve_usuario` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
