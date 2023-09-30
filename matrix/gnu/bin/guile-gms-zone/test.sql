-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 89.40.6.195
-- Tiempo de generación: 20-03-2022 a las 01:14:56
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `s5_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores_tiendas`
--

CREATE TABLE `actores_tiendas` (
  `ID` int(11) NOT NULL,
  `Skin` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `A` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Localidad` varchar(32) NOT NULL DEFAULT 'Los Santos',
  `EntradaLocalX` float NOT NULL,
  `EntradaLocalY` float NOT NULL,
  `EntradaLocalZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actores_tiendas`
--

INSERT INTO `actores_tiendas` (`ID`, `Skin`, `X`, `Y`, `Z`, `A`, `Interior`, `VW`, `Localidad`, `EntradaLocalX`, `EntradaLocalY`, `EntradaLocalZ`) VALUES
(1, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 1, 'Idlewood', 1833.78, -1842.66, 13.5781),
(2, 184, -31.4199, -185.485, 1007.73, 270.854, 10, 1, 'Idlewood', 1928.58, -1776.28, 13.5469),
(3, 229, -23.1045, -57.341, 1003.55, 6.8759, 6, 66, 'Commerce', 1352.37, -1759.25, 13.5078),
(4, 229, -27.7613, -91.7475, 1003.55, 11.0644, 18, 2, 'Temple', 1315.49, -897.682, 39.5781),
(5, 229, -31.4202, -185.448, 1007.73, 266.314, 10, 2, 'Mullholand', 1000.59, -919.926, 42.3281),
(6, 229, -103.898, -24.2032, 1000.72, 2.3002, 3, 3, 'Mullholand', 1087.66, -922.483, 43.3906),
(7, 229, -103.898, -24.2032, 1000.72, 2.3002, 3, 20, 'Market', 953.908, -1336.83, 13.5389),
(8, 229, -103.898, -24.2032, 1000.72, 2.3002, 3, 6, 'Market', 1137.99, -1365.38, 13.9844),
(9, 229, 207.058, -127.807, 1003.51, 180.433, 3, 0, 'Rodeo', 499.518, -1360.63, 16.369),
(10, 229, 204.297, -157.83, 1000.52, 179.961, 14, 57, 'Rodeo', 454.201, -1477.97, 30.8137),
(11, 145, 204.853, -8.0961, 1001.21, 269.375, 5, 56, 'Rodeo', 461.704, -1500.8, 31.0453),
(12, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 3, 'Flint Country', -78.3736, -1169.9, 2.13546),
(13, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 4, 'Easter Basin', -1676.17, 432.196, 7.17969),
(14, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 3, 'Juniper Hill', -2442.74, 755.418, 35.1719),
(15, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 5, 'Juniper Hollow', -2420.15, 969.843, 45.2969),
(16, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 5, 'Casino Starfish', 2194.94, 1991.05, 12.2969),
(17, 229, 161.456, -81.1919, 1001.8, 181.49, 18, 55, 'Downtown Los Santos', 1456.48, -1137.61, 23.9485),
(18, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 11, 'Downtown Los Santos', 1565.86, -1171.42, 24.0953),
(19, 229, 498.7, -77.5756, 998.765, 0, 11, 12, 'East Los Santos', 2348.5, -1372.68, 24.3984),
(20, 245, -103.898, -24.2032, 1000.72, 2.3002, 3, 12, 'East Los Santos', 2421.45, -1219.34, 25.5559),
(21, 229, -1072.13, 356.004, 1180.53, 181.155, 1, 2, 'Creek', 2861.26, 2430.74, 11.069),
(22, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 7, 'Creek', 2884.56, 2454.05, 11.069),
(23, 145, 373.688, -117.279, 1001.5, 178.979, 5, 4, 'Creek', 2756.76, 2477.35, 11.0625),
(24, 145, 373.688, -117.279, 1001.5, 178.979, 5, 10, 'Roca Escalante', 2351.82, 2533.63, 10.8203),
(25, 145, 373.688, -117.279, 1001.5, 178.979, 5, 11, 'Roca Escalante', 2330.6, 2533.61, 10.8203),
(26, 145, 373.688, -117.279, 1001.5, 178.979, 5, 12, 'Roca Escalante', 2309.5, 2533.61, 10.8203),
(27, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 12, 'The Emerald Isle', 2187.71, 2469.64, 11.2422),
(28, 145, 373.688, -117.279, 1001.5, 178.979, 5, 3, 'The Emerald Isle', 2083.34, 2224.7, 11.0234),
(29, 229, -103.877, -24.2025, 1000.72, 359.973, 3, 9, 'Redsands East', 2085.12, 2073.97, 11.0547),
(30, 229, -1072.13, 356.004, 1180.53, 181.155, 1, 1, 'The Strip', 2107.75, 2165.51, 10.8203),
(31, 229, -1072.13, 356.004, 1180.53, 181.155, 1, 3, 'El Quebrado', -1480.98, 2591.66, 55.8359),
(32, 145, 373.688, -117.279, 1001.5, 178.979, 5, 8, 'Blueberry', 203.395, -201.942, 1.57812),
(33, 145, 373.688, -117.279, 1001.5, 178.979, 5, 7, 'Montgomery', 1367.55, 248.252, 19.5669),
(34, 145, 373.688, -117.279, 1001.5, 178.979, 5, 6, 'Palomino Creek', 2331.81, 75.0506, 26.621),
(35, 145, 373.688, -117.279, 1001.5, 178.979, 5, 2, 'Esplanade North', -1720.95, 1359.78, 7.18532),
(36, 56, 203.797, -41.6677, 1001.8, 179.728, 1, 66, 'Jefferson', 2112.91, -1211.46, 23.9629),
(37, 101, 207.514, -98.7055, 1005.26, 178.482, 15, 3, 'Ganton', 2244.31, -1665.36, 15.4766),
(38, 145, 373.688, -117.279, 1001.5, 178.979, 5, 9, 'Idlewood', 2105.48, -1806.47, 13.5547),
(39, 229, 498.7, -77.5756, 998.765, 0, 11, 3, 'Doherty', -1820.85, -125.765, 5.7484),
(40, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 10, 'Las Venturas', 2117.5, 896.778, 11.1797),
(41, 229, 498.7, -77.5756, 998.765, 0, 11, 6, 'The Camel\'s Toe', 2507.39, 1242.25, 10.827),
(42, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 8, 'Roca Escalante', 2247.64, 2396.17, 10.8203),
(43, 85, 1214.88, -15.2607, 1000.92, 0, 2, 5, 'The Pink Swan', 2014.81, 1107.01, 10.8203),
(44, 63, 970.836, -44.7808, 1001.12, 87.7157, 3, 0, 'The Pink Swan', 2014.84, 1150.47, 10.9203),
(45, 206, -31.4207, -185.424, 1007.73, 270, 0, 13, 'Montgomery', 1383.25, 465.559, 20.1919),
(46, 247, 498.7, -77.5756, 998.765, 0, 11, 16, 'Dillimore', 681.64, -473.348, 16.6363),
(47, 72, -27.6877, -91.6325, 1003.55, 10.4018, 18, 6, 'Ganton', 2424.2, -1742.81, 13.5454),
(48, 72, -30.4527, -30.6771, 1003.56, 5.5409, 4, 56, 'Market', 2424.2, -1742.81, 13.5454),
(49, 44, -223.307, 1404.52, 27.7734, 90, 18, 0, 'Cantera Hunter Quarry', 824.868, 860.272, 12.3028);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aka`
--

CREATE TABLE `aka` (
  `ID` int(11) NOT NULL,
  `NAMES` varchar(128) NOT NULL DEFAULT '',
  `IP` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backpack`
--

CREATE TABLE `backpack` (
  `ID` int(11) NOT NULL,
  `Objeto` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0',
  `Cantidad` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canal_dudas`
--

CREATE TABLE `canal_dudas` (
  `canal_dudas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum_table`
--

CREATE TABLE `curriculum_table` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(24) NOT NULL,
  `ID_DB` int(11) NOT NULL,
  `CV_ESTADO` int(11) NOT NULL,
  `PREGUNTA_1` varchar(200) NOT NULL DEFAULT 'Nada',
  `PREGUNTA_2` varchar(200) NOT NULL DEFAULT 'Ninguno',
  `PREGUNTA_3` varchar(200) NOT NULL DEFAULT 'Ninguno',
  `PREGUNTA_4` varchar(200) NOT NULL DEFAULT 'Ninguno',
  `PREGUNTA_5` varchar(200) NOT NULL DEFAULT 'Ninguno',
  `PREGUNTA_6` varchar(200) NOT NULL DEFAULT 'Ninguno',
  `PREGUNTA_7` varchar(200) NOT NULL DEFAULT 'Ninguno',
  `PREGUNTA_8` varchar(200) NOT NULL DEFAULT 'Ninguno',
  `PREGUNTA_9` varchar(200) NOT NULL DEFAULT 'Ninguno'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doors`
--

CREATE TABLE `doors` (
  `ID` int(11) NOT NULL,
  `Type` int(11) NOT NULL DEFAULT 1 COMMENT '1=Franquicias | 2=Gobierno | 3=Normales | 4=Normales Y',
  `Pickup` int(11) NOT NULL DEFAULT 1318,
  `Nombre` varchar(64) NOT NULL DEFAULT '24/7',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Propietario` varchar(32) NOT NULL DEFAULT 'Ninguno',
  `Extra` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doors`
--

INSERT INTO `doors` (`ID`, `Type`, `Pickup`, `Nombre`, `X`, `Y`, `Z`, `Propietario`, `Extra`) VALUES
(1, 4, 1318, 'Mina Castillo del Diablo', -611.365, 2325.39, 79.5652, 'Gobierno', 1),
(2, 1, 1318, 'The Well Stacked Pizza', 2105.49, -1806.41, 13.5544, 'Gobierno', 1),
(3, 1, 1318, 'The Well Stacked Pizza', 203.396, -201.943, 1.5779, 'Gobierno', 1),
(4, 1, 1318, 'The Well Stacked Pizza', 1367.53, 248.395, 19.5669, 'Gobierno', 1),
(5, 1, 1318, 'The Well Stacked Pizza', 2331.81, 75.0223, 26.6208, 'Gobierno', 1),
(6, 1, 1318, 'The Well Stacked Pizza', 2638.79, 1849.81, 11.0234, 'Gobierno', 1),
(7, 1, 1318, 'The Well Stacked Pizza', 2309.44, 2533.61, 10.8203, 'Gobierno', 1),
(8, 1, 1318, 'The Well Stacked Pizza', 2330.52, 2533.61, 10.8203, 'Gobierno', 1),
(9, 1, 1318, 'The Well Stacked Pizza', 2351.77, 2533.63, 10.8203, 'Gobierno', 1),
(10, 1, 1318, 'The Well Stacked Pizza', 2083.31, 2224.7, 11.0234, 'Gobierno', 1),
(11, 1, 1318, 'The Well Stacked Pizza', 2756.77, 2477.35, 11.0625, 'Gobierno', 1),
(12, 1, 1318, 'The Well Stacked Pizza', -1808.73, 945.9, 24.8906, 'Gobierno', 1),
(13, 1, 1318, 'The Well Stacked Pizza', -1720.95, 1359.67, 7.1852, 'Gobierno', 1),
(14, 2, 1318, 'Unity Station', 1743.06, -1864.46, 13.5738, 'Gobierno', 1),
(15, 2, 1318, 'Country General Hospital', 2025.24, -1401.67, 17.2096, 'Gobierno', 1),
(16, 2, 1318, 'Departamento de polici­a', 1555.5, -1675.57, 16.1951, 'Gobierno', 1),
(17, 2, 1318, 'Banco plaza', 1498.41, -1580.52, 13.5495, 'Gobierno', 1),
(18, 2, 1318, 'Banco Central de Las Venturas', 2449.47, 2290.21, 10.8203, 'Gobierno', 1),
(19, 2, 1318, 'Las Venturas Hospital', 1607.42, 1815.24, 10.8203, 'Gobierno', 1),
(20, 2, 1318, 'Departamento de polici­a', 2290.11, 2431.7, 10.8203, 'Gobierno', 1),
(21, 2, 1318, 'San Fierro Medical Center', -2665, 640.164, 14.5531, 'Gobierno', 1),
(22, 2, 1318, 'Banco Central San Fierro', -1581.12, 867.929, 7.6953, 'Gobierno', 1),
(23, 2, 1318, 'Departamento de polici­a', -1605.49, 710.272, 13.8669, 'Gobierno', 1),
(24, 2, 1318, 'Banco central de Los Santos', 1457.13, -1009.92, 26.8437, 'Gobierno', 1),
(25, 2, 1318, 'All Saints General Hospital', 1172.08, -1323.4, 15.4031, 'Gobierno', 1),
(26, 3, 1318, 'Tienda 24/7', 1104.87, -1370.28, 14.0844, 'Gobierno', 1),
(27, 3, 1318, 'Bar', 681.64, -473.348, 16.6363, 'Gobierno', 1),
(28, 3, 1318, 'Tienda de Autoservicio', 1383.25, 465.559, 20.1919, 'Gobierno', 1),
(29, 3, 1318, 'Sex Shop', 953.908, -1336.83, 13.5389, 'Gobierno', 1),
(30, 3, 1318, '24/7', 1315.43, -897.682, 39.5781, 'Gobierno', 1),
(31, 3, 1318, 'Binco', 2244.32, -1665.55, 15.4766, 'Gobierno', 1),
(32, 3, 1318, 'Tienda 24/7', 1352.32, -1759.25, 13.5078, 'Gobierno', 1),
(33, 3, 1318, 'ZIP', 1456.41, -1137.66, 23.9479, 'Gobierno', 1),
(34, 3, 1318, 'Tienda de Autoservicio', -78.3731, -1169.9, 2.1354, 'Gobierno', 1),
(35, 3, 1318, 'Sex Shop', 1087.68, -922.482, 43.3906, 'Gobierno', 1),
(36, 3, 1318, 'Tienda 24/7', 2546.46, 1972.67, 10.8203, 'Gobierno', 1),
(37, 3, 1318, 'Academia de polici­a', 2362.83, 2306.3, 8.1406, 'Gobierno', 1),
(38, 3, 1318, 'GYM Ganton', 2229.68, -1721.42, 13.5627, 'Gobierno', 1),
(39, 3, 1318, 'Pro Laps', 499.515, -1360.63, 16.369, 'Gobierno', 1),
(40, 3, 1318, 'Tienda 24/7', 2247.66, 2396.17, 10.8203, 'Gobierno', 1),
(41, 3, 1318, 'Tienda de autoservicio', 2187.71, 2469.61, 11.2419, 'Gobierno', 1),
(42, 3, 1318, 'Tienda 24/7', 1565.65, -1171.05, 24.1925, 'Gobierno', 1),
(43, 3, 1318, 'Tienda de autoservicio', -1676.15, 432.219, 7.1797, 'Gobierno', 1),
(44, 3, 1318, 'Tienda 24/7', -2442.62, 755.418, 35.1716, 'Gobierno', 1),
(45, 3, 1318, 'Tienda 24/7', 2884.56, 2454.05, 11.0689, 'Gobierno', 1),
(46, 3, 1318, 'Tienda de autoservicio', -1320.49, 2698.65, 50.2662, 'Gobierno', 1),
(47, 3, 1318, 'Bar', -1820.85, -125.765, 5.7484, 'Gobierno', 1),
(48, 3, 1318, 'Tienda de autoservicio', 1599.01, 2221.76, 11.0625, 'Gobierno', 1),
(49, 3, 1318, 'Tienda 24/7', 2194.94, 1990.97, 12.2966, 'Gobierno', 1),
(50, 3, 1318, 'Sex Shop', 2085.29, 2073.93, 11.0544, 'Gobierno', 1),
(51, 3, 1318, 'Ferreteria', 2107.74, 2165.47, 10.8203, 'Gobierno', 1),
(52, 3, 1318, 'Sex Shop', 1940, -2115.93, 13.6953, 'Gobierno', 1),
(54, 3, 1318, 'Estadio Las Venturas', 1093.99, 1597, 12.5466, 'Gobierno', 1),
(55, 3, 1318, 'Sex Shop', 1137.99, -1365.38, 13.9841, 'Gobierno', 1),
(56, 3, 1318, 'RS Haul', 1377.06, 1152.76, 10.8203, 'Gobierno', 1),
(57, 3, 1318, 'Tienda de autoservicio', 2117.51, 896.776, 11.1794, 'Gobierno', 1),
(58, 3, 1318, 'Bar', 824.56, 860.622, 12.2334, 'Gobierno', 1),
(59, 3, 1318, 'Penitenciaria Fort Carson', 224.262, 1443.81, 10.8051, 'Gobierno', 1),
(60, 3, 1318, 'Tienda de autoservicio', 639.047, 1683.34, 7.1875, 'Gobierno', 1),
(61, 3, 1318, 'Bone Country Minera S.A.', -384.811, 2206.07, 42.4234, 'Gobierno', 1),
(62, 3, 1318, 'Vestuario de Mineros', -550.163, 2347.28, 76.3871, 'Gobierno', 1),
(63, 3, 1318, 'Binco', 2244.32, -1665.55, 15.4766, 'Gobierno', 1),
(64, 3, 1318, 'Ferreteria', -1480.93, 2591.66, 55.8358, 'Gobierno', 1),
(65, 3, 1318, 'Ferreteria', 2861.26, 2430.74, 11.0689, 'Gobierno', 1),
(66, 3, 1318, 'Sub Urban', 2112.91, -1211.46, 23.9626, 'Gobierno', 1),
(67, 3, 1318, 'Sex Shop', 2421.45, -1219.24, 25.5618, 'Gobierno', 1),
(68, 3, 1318, 'Bar', -89.61, 1378.23, 10.4694, 'Gobierno', 1),
(69, 3, 1318, 'Bar', 2348.5, -1372.68, 24.3983, 'Gobierno', 1),
(70, 3, 1318, 'Bar', 2310.08, -1643.53, 14.8268, 'Gobierno', 1),
(71, 3, 1318, 'Bar', 2507.39, 1242.25, 10.8268, 'Gobierno', 1),
(72, 3, 1318, 'Tienda de autoservicio', 1928.58, -1776.28, 13.5466, 'Gobierno', 1),
(73, 3, 1318, 'Tienda de autoservicio', -2420.15, 969.843, 45.2966, 'Gobierno', 1),
(74, 3, 1318, 'Tienda de autoservicio', 2344.04, 583.172, 11.2075, 'Gobierno', 1),
(75, 3, 1318, 'Tienda 24/7', 1833.55, -1842.58, 13.5781, 'Gobierno', 1),
(76, 3, 1318, 'Tienda 24/7', 2424, -1742.71, 13.543, 'Gobierno', 1),
(77, 3, 1318, 'Tienda de autoservicio', 1000.59, -919.886, 42.3281, 'Gobierno', 1),
(78, 3, 1318, 'Victim', 461.694, -1500.75, 31.0459, 'Gobierno', 1),
(79, 3, 1318, 'Didier Sachs', 454.192, -1477.95, 30.8128, 'Gobierno', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estacionamientos`
--

CREATE TABLE `estacionamientos` (
  `ID` int(11) NOT NULL,
  `EnUso` int(11) NOT NULL DEFAULT 0,
  `Propietario` int(11) NOT NULL DEFAULT -1,
  `EntradaX` float NOT NULL,
  `EntradaY` float NOT NULL,
  `EntradaZ` float NOT NULL,
  `EntradaA` float NOT NULL,
  `SalidaX` float NOT NULL,
  `SalidaY` float NOT NULL,
  `SalidaZ` float NOT NULL,
  `SalidaA` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VirtualWorld` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL DEFAULT 5,
  `Precio` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estacionamientos`
--

INSERT INTO `estacionamientos` (`ID`, `EnUso`, `Propietario`, `EntradaX`, `EntradaY`, `EntradaZ`, `EntradaA`, `SalidaX`, `SalidaY`, `SalidaZ`, `SalidaA`, `Interior`, `VirtualWorld`, `Nivel`, `Precio`) VALUES
(1, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1655.22, -1861.46, 13.5499, 179, 1, 1, 9, 2531250),
(2, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1443.15, -1468.14, 13.4021, 212, 1, 2, 11, 5695311),
(3, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1643.56, -1521.65, 13.5588, 231, 1, 3, 7, 1125000),
(4, 1, 0, 2058.54, 2437.26, 10.8428, 180, -23.1628, -269.37, 5.4297, 97, 1, 4, 10, 3796875),
(5, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1393.16, -1169.86, 23.8203, 338, 1, 5, 7, 1125000),
(6, 1, 0, -1283.28, 461.168, 8.2025, 268.853, -425.883, 2225.75, 42.4297, 7, 30, 6, 5, 500000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricas`
--

CREATE TABLE `fabricas` (
  `ID` int(11) NOT NULL,
  `BandaID` int(11) NOT NULL DEFAULT 0,
  `Localizacion` varchar(64) NOT NULL DEFAULT 'Ninguna',
  `EntradaX` float NOT NULL,
  `EntradaY` float NOT NULL,
  `EntradaZ` float NOT NULL,
  `EntradaA` float NOT NULL,
  `GarajeE_X` float NOT NULL,
  `GarajeE_Y` float NOT NULL,
  `GarajeE_Z` float NOT NULL,
  `GarajeE_A` float NOT NULL,
  `Tanque1Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque2Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque3Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque4Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque5Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque6Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque7Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque8Contenido` int(11) NOT NULL DEFAULT 0,
  `Tanque9Contenido` int(11) NOT NULL DEFAULT 0,
  `Almacen1` int(11) NOT NULL DEFAULT 0,
  `Almacen2` int(11) NOT NULL DEFAULT 0,
  `Almacen3` int(11) NOT NULL DEFAULT 0,
  `Almacen4` int(11) NOT NULL DEFAULT 0,
  `Almacen5` int(11) NOT NULL DEFAULT 0,
  `Almacen6` int(11) NOT NULL DEFAULT 0,
  `Almacen7` int(11) NOT NULL DEFAULT 0,
  `Almacen8` int(11) NOT NULL DEFAULT 0,
  `Almacen9` int(11) NOT NULL DEFAULT 0,
  `Almacen10` int(11) NOT NULL DEFAULT 0,
  `Soborno` int(11) NOT NULL DEFAULT 0,
  `EnVenta` int(11) NOT NULL,
  `MContra` int(11) NOT NULL DEFAULT 0,
  `PorcentajeLleno1` int(11) NOT NULL DEFAULT 0,
  `PorcentajeLleno2` int(11) NOT NULL DEFAULT 0,
  `PorcentajeLleno3` int(11) NOT NULL DEFAULT 0,
  `ProgresoC1` int(11) NOT NULL DEFAULT 0,
  `ProgresoC2` int(11) NOT NULL DEFAULT 0,
  `ProgresoC3` int(11) NOT NULL DEFAULT 0,
  `ProgresoC4` int(11) NOT NULL DEFAULT 0,
  `ProgresoC5` int(11) NOT NULL DEFAULT 0,
  `EstadoC1` int(11) NOT NULL,
  `EstadoC2` int(11) NOT NULL DEFAULT 0,
  `EstadoC3` int(11) NOT NULL DEFAULT 0,
  `EstadoC4` int(11) NOT NULL DEFAULT 0,
  `EstadoC5` int(11) NOT NULL DEFAULT 0,
  `TieneMoledor1` int(11) NOT NULL,
  `TieneMoledor2` int(11) NOT NULL,
  `TieneMoledor3` int(11) NOT NULL,
  `TieneMoledor4` int(11) NOT NULL,
  `TieneMoledor5` int(11) NOT NULL,
  `Guardia1` int(11) NOT NULL DEFAULT 0,
  `Guardia2` int(11) NOT NULL DEFAULT 0,
  `Guardia3` int(11) NOT NULL DEFAULT 0,
  `Guardia4` int(11) NOT NULL DEFAULT 0,
  `Guardia5` int(11) NOT NULL DEFAULT 0,
  `Sniper` int(11) NOT NULL DEFAULT 0,
  `DineroAlmacenado` int(11) NOT NULL DEFAULT 0,
  `Chalecos` int(11) NOT NULL DEFAULT 0,
  `Tec9` int(11) NOT NULL DEFAULT 0,
  `Uzi` int(11) NOT NULL DEFAULT 0,
  `Recortada` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fabricas`
--

INSERT INTO `fabricas` (`ID`, `BandaID`, `Localizacion`, `EntradaX`, `EntradaY`, `EntradaZ`, `EntradaA`, `GarajeE_X`, `GarajeE_Y`, `GarajeE_Z`, `GarajeE_A`, `Tanque1Contenido`, `Tanque2Contenido`, `Tanque3Contenido`, `Tanque4Contenido`, `Tanque5Contenido`, `Tanque6Contenido`, `Tanque7Contenido`, `Tanque8Contenido`, `Tanque9Contenido`, `Almacen1`, `Almacen2`, `Almacen3`, `Almacen4`, `Almacen5`, `Almacen6`, `Almacen7`, `Almacen8`, `Almacen9`, `Almacen10`, `Soborno`, `EnVenta`, `MContra`, `PorcentajeLleno1`, `PorcentajeLleno2`, `PorcentajeLleno3`, `ProgresoC1`, `ProgresoC2`, `ProgresoC3`, `ProgresoC4`, `ProgresoC5`, `EstadoC1`, `EstadoC2`, `EstadoC3`, `EstadoC4`, `EstadoC5`, `TieneMoledor1`, `TieneMoledor2`, `TieneMoledor3`, `TieneMoledor4`, `TieneMoledor5`, `Guardia1`, `Guardia2`, `Guardia3`, `Guardia4`, `Guardia5`, `Sniper`, `DineroAlmacenado`, `Chalecos`, `Tec9`, `Uzi`, `Recortada`) VALUES
(1, 0, 'BlueBerry', 279.819, -221.486, 1.57812, 0, 269.089, -221.485, 1.57812, 174.613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 5, 'LVA Freight Depot', 1708.11, 1025.62, 10.8203, 266.477, 1708.11, 1015.22, 10.8203, 266.219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 374313, 1, 276, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 4, 'Linden Side', 2847.63, 983.593, 10.75, -90, 2847.63, 972.838, 10.75, 268.413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 275, 0, 0, 0, 100, 0, 0, 0, 0, 3, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 'Spinybed', 2379.67, 2777.66, 10.8203, 10.82, 2365.99, 2777.66, 10.8203, 10.82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0),
(5, 0, 'Montgomery', 1227.75, 181.496, 20.4219, 155.62, 1239.48, 180.416, 19.663, 155.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0),
(6, 0, 'Fallen Tree', -541.815, -508.953, 25.5234, 0, -555.211, -508.953, 25.4559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0),
(7, 0, 'Doherty', -2129.13, -188.246, 35.3203, -90, -2128.98, -213.603, 35.3203, -90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0),
(8, 0, 'Angel Pine', -1974.93, -2433.59, 30.625, 45, -1972.08, -2430.65, 30.625, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0),
(9, 0, 'East Beach', 2770.69, -1628.72, 12.1775, 179.525, 2766, -1615.24, 10.9219, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0),
(10, 0, 'Dillimore', 826.707, -613.778, 16.3359, 174.537, 820.055, -613.778, 16.3432, 178.61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0),
(11, 10, 'Bayside Marina', -2281.96, 2288.3, 4.974, 90, -2286.95, 2286.84, 5.1554, 358.061, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 470542, 1, 276, 0, 100, 0, 100, 0, 0, 0, 0, 3, 1, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 0, 0),
(12, 0, 'Ocean Dokcs', 2354.21, -2288.07, 17.4219, 45, 2347.09, -2301.21, 13.5469, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -43285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facciones`
--

CREATE TABLE `facciones` (
  `id` int(11) NOT NULL,
  `fecha` varchar(32) NOT NULL DEFAULT '01/01/2016',
  `Nombre` varchar(32) NOT NULL,
  `Integrantes` int(10) NOT NULL DEFAULT 0,
  `Lider` varchar(32) NOT NULL,
  `Rango1` varchar(32) NOT NULL DEFAULT 'Iniciado',
  `Rango2` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango3` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango4` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango5` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango6` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango7` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango8` varchar(32) NOT NULL DEFAULT 'Lider',
  `territorio` varchar(32) NOT NULL DEFAULT 'Ninguno',
  `MaxIntegrantes` int(3) NOT NULL DEFAULT 20,
  `EnUso` int(11) NOT NULL DEFAULT 1,
  `Color` int(15) NOT NULL DEFAULT 0,
  `Rango1Edi` int(1) NOT NULL DEFAULT 0,
  `Rango1Exp` int(1) NOT NULL DEFAULT 0,
  `Rango1Inv` int(1) NOT NULL DEFAULT 0,
  `Rango2Edi` int(1) NOT NULL DEFAULT 0,
  `Rango2Exp` int(1) NOT NULL DEFAULT 0,
  `Rango2Inv` int(1) NOT NULL DEFAULT 0,
  `Rango3Edi` int(1) NOT NULL DEFAULT 0,
  `Rango3Exp` int(1) NOT NULL DEFAULT 0,
  `Rango3Inv` int(1) NOT NULL DEFAULT 0,
  `Rango4Edi` int(1) NOT NULL DEFAULT 0,
  `Rango4Exp` int(1) NOT NULL DEFAULT 0,
  `Rango4Inv` int(1) NOT NULL DEFAULT 0,
  `Rango5Edi` int(1) NOT NULL DEFAULT 0,
  `Rango5Exp` int(1) NOT NULL DEFAULT 0,
  `Rango5Inv` int(1) NOT NULL DEFAULT 0,
  `Rango6Inv` int(1) NOT NULL DEFAULT 0,
  `Rango6Exp` int(1) NOT NULL DEFAULT 0,
  `Rango6Edi` int(1) NOT NULL DEFAULT 0,
  `Rango7Inv` int(1) NOT NULL DEFAULT 0,
  `Rango7Exp` int(1) NOT NULL DEFAULT 0,
  `Rango7Edi` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facciones`
--

INSERT INTO `facciones` (`id`, `fecha`, `Nombre`, `Integrantes`, `Lider`, `Rango1`, `Rango2`, `Rango3`, `Rango4`, `Rango5`, `Rango6`, `Rango7`, `Rango8`, `territorio`, `MaxIntegrantes`, `EnUso`, `Color`, `Rango1Edi`, `Rango1Exp`, `Rango1Inv`, `Rango2Edi`, `Rango2Exp`, `Rango2Inv`, `Rango3Edi`, `Rango3Exp`, `Rango3Inv`, `Rango4Edi`, `Rango4Exp`, `Rango4Inv`, `Rango5Edi`, `Rango5Exp`, `Rango5Inv`, `Rango6Inv`, `Rango6Exp`, `Rango6Edi`, `Rango7Inv`, `Rango7Exp`, `Rango7Edi`) VALUES
(0, '15/12/2018', 'No borrar', 0, 'Ninguno', 'Aprendiz', 'Tecnico', 'Recursos Humanos', 'Ingeniero Ambiental', 'Coordinador', 'SubDirector', 'Director', 'Encargado', 'Ninguno', 20, 1, 232790271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '06/07/2012', 'S.A.P.D', -2, 'Ninguno', 'Cadete', 'Oficial', 'Cabo', 'Sagento', 'Teniente', 'Capitan', 'Inspector', 'Comisario', 'Ninguno', 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '15/09/2021', 'S.A.E.M', -1, 'Ninguno', 'Recluta', 'Soldado', 'Oficial', 'Teniente', 'Capitan', 'Mayor', 'Coronel', 'General', 'Ninguno', 50, 1, 6400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitaciones`
--

CREATE TABLE `invitaciones` (
  `ID` int(10) NOT NULL,
  `Activo` varchar(3) NOT NULL DEFAULT '1',
  `Invitador` varchar(26) NOT NULL,
  `Invitado` varchar(26) NOT NULL,
  `BandaID` int(26) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_ingresos`
--

CREATE TABLE `log_ingresos` (
  `ID` int(10) NOT NULL,
  `Nombre` varchar(32) NOT NULL,
  `Pais` varchar(32) NOT NULL,
  `IP` varchar(32) NOT NULL,
  `Fecha` varchar(32) NOT NULL,
  `Host` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_transacciones`
--

CREATE TABLE `log_transacciones` (
  `ID` int(10) NOT NULL,
  `Fecha` varchar(32) NOT NULL,
  `Enviador` varchar(32) NOT NULL,
  `Receptor` varchar(32) NOT NULL,
  `Monto` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_ventas`
--

CREATE TABLE `log_ventas` (
  `id` int(10) NOT NULL,
  `Vendedor` varchar(24) NOT NULL,
  `arma` int(10) NOT NULL DEFAULT 0,
  `precio` int(10) NOT NULL DEFAULT 0,
  `comprador` varchar(24) NOT NULL,
  `item` varchar(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marihuana`
--

CREATE TABLE `marihuana` (
  `ID` int(11) NOT NULL,
  `Owner` varchar(128) NOT NULL DEFAULT 'Ninguno',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Estado` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `Creado` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `PEDIDO` varchar(100) NOT NULL,
  `INFO` varchar(100) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `ESTADO` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `pID` int(10) NOT NULL,
  `paX` varchar(32) NOT NULL,
  `paY` varchar(32) NOT NULL,
  `paZ` varchar(32) NOT NULL,
  `pSegundos` int(11) NOT NULL,
  `pMinutos` int(11) NOT NULL,
  `pHoras` int(11) NOT NULL,
  `pEstado` int(11) NOT NULL,
  `Plantador` varchar(32) NOT NULL,
  `Creado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_book`
--

CREATE TABLE `player_book` (
  `ID` int(11) NOT NULL,
  `PHONE_ID` int(11) NOT NULL,
  `NAME` varchar(24) NOT NULL,
  `PHONE_NUMBER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `player_book`
--

INSERT INTO `player_book` (`ID`, `PHONE_ID`, `NAME`, `PHONE_NUMBER`) VALUES
(1, 5003, 'Policía', 911),
(2, 5003, 'Asistencia Médica', 71),
(3, 5003, 'Servicio de grúas', 815),
(4, 5003, 'Asistencia mecánica', 80),
(5, 5003, 'Servicio de taxi', 82),
(6, 5155, 'Policía', 911),
(7, 5155, 'Asistencia Médica', 71),
(8, 5155, 'Servicio de grúas', 815),
(9, 5155, 'Asistencia mecánica', 80),
(10, 5155, 'Servicio de taxi', 82),
(11, 5156, 'Policía', 911),
(12, 5156, 'Asistencia Médica', 71),
(13, 5156, 'Servicio de grúas', 815),
(14, 5156, 'Asistencia mecánica', 80),
(15, 5156, 'Servicio de taxi', 82),
(16, 5157, 'Policía', 911),
(17, 5157, 'Asistencia Médica', 71),
(18, 5157, 'Servicio de grúas', 815),
(19, 5157, 'Asistencia mecánica', 80),
(20, 5157, 'Servicio de taxi', 82),
(21, 5158, 'Policía', 911),
(22, 5158, 'Asistencia Médica', 71),
(23, 5158, 'Servicio de grúas', 815),
(24, 5158, 'Asistencia mecánica', 80),
(25, 5158, 'Servicio de taxi', 82),
(26, 5159, 'Policía', 911),
(27, 5159, 'Asistencia Médica', 71),
(28, 5159, 'Servicio de grúas', 815),
(29, 5159, 'Asistencia mecánica', 80),
(30, 5159, 'Servicio de taxi', 82),
(31, 5160, 'Policía', 911),
(32, 5160, 'Asistencia Médica', 71),
(33, 5160, 'Servicio de grúas', 815),
(34, 5160, 'Asistencia mecánica', 80),
(35, 5160, 'Servicio de taxi', 82),
(36, 5161, 'Policía', 911),
(37, 5161, 'Asistencia Médica', 71),
(38, 5161, 'Servicio de grúas', 815),
(39, 5161, 'Asistencia mecánica', 80),
(40, 5161, 'Servicio de taxi', 82),
(41, 5163, 'Policía', 911),
(42, 5163, 'Asistencia Médica', 71),
(43, 5163, 'Servicio de grúas', 815),
(44, 5163, 'Asistencia mecánica', 80),
(45, 5163, 'Servicio de taxi', 82),
(46, 5162, 'Policía', 911),
(47, 5162, 'Asistencia Médica', 71),
(48, 5162, 'Servicio de grúas', 815),
(49, 5162, 'Asistencia mecánica', 80),
(50, 5162, 'Servicio de taxi', 82),
(51, 5164, 'Policía', 911),
(52, 5164, 'Asistencia Médica', 71),
(53, 5164, 'Servicio de grúas', 815),
(54, 5164, 'Asistencia mecánica', 80),
(55, 5164, 'Servicio de taxi', 82),
(56, 5167, 'Policía', 911),
(57, 5167, 'Asistencia Médica', 71),
(58, 5167, 'Servicio de grúas', 815),
(59, 5167, 'Asistencia mecánica', 80),
(60, 5167, 'Servicio de taxi', 82),
(61, 5176, 'Policía', 911),
(62, 5176, 'Asistencia Médica', 71),
(63, 5176, 'Servicio de grúas', 815),
(64, 5176, 'Asistencia mecánica', 80),
(65, 5176, 'Servicio de taxi', 82);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_toys`
--

CREATE TABLE `player_toys` (
  `ID` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `MODEL_ID` int(11) NOT NULL,
  `BONE` int(11) NOT NULL,
  `ATTACHED` int(11) NOT NULL DEFAULT 0,
  `POS_X` float NOT NULL DEFAULT 0.085,
  `POS_Y` float NOT NULL DEFAULT 0.017999,
  `POS_Z` float NOT NULL DEFAULT 0.000999,
  `ROT_X` float NOT NULL DEFAULT 87.2,
  `ROT_Y` float NOT NULL DEFAULT 88.1,
  `ROT_Z` float NOT NULL DEFAULT -7.5,
  `SCALE_X` float NOT NULL DEFAULT 1,
  `SCALE_Y` float NOT NULL DEFAULT 1,
  `SCALE_Z` float NOT NULL DEFAULT 1,
  `COLOR_1` int(11) NOT NULL,
  `COLOR_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IDPropietario` int(11) NOT NULL,
  `Propietario` varchar(40) NOT NULL DEFAULT 'Ninguno',
  `EnVenta` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `EnUso` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `PosXS` float NOT NULL,
  `PosYS` float NOT NULL,
  `PosZS` float NOT NULL,
  `PosA` float NOT NULL,
  `PosAS` float NOT NULL,
  `Nivel` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `EnVentaPor` int(11) NOT NULL,
  `Interior` int(11) NOT NULL,
  `InteriorID` int(11) NOT NULL,
  `Abierta` int(11) NOT NULL,
  `Sprunk` int(11) NOT NULL,
  `Cerveza` int(11) NOT NULL,
  `Aquarius` int(11) NOT NULL,
  `Pizzas` int(11) NOT NULL,
  `Vino` int(11) NOT NULL,
  `AK47` int(11) NOT NULL,
  `M4` int(11) NOT NULL,
  `EscopetaNormal` int(11) NOT NULL,
  `EscopetaDeCombate` int(11) NOT NULL,
  `MP5` int(11) NOT NULL,
  `9mm` int(11) NOT NULL,
  `9mmSilenciada` int(11) NOT NULL,
  `DesertEagle` int(11) NOT NULL,
  `Rifle` int(11) NOT NULL,
  `Granada` int(11) NOT NULL,
  `Manopla` int(11) NOT NULL,
  `Cuchillo` int(11) NOT NULL,
  `Katana` int(11) NOT NULL,
  `Medicamentos` int(11) NOT NULL,
  `Crack` int(11) NOT NULL,
  `Marihuana` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Camara` int(11) NOT NULL,
  `Flores` int(11) NOT NULL,
  `Pala` int(11) NOT NULL,
  `BateDeBeisbol` int(11) NOT NULL,
  `PaloDeGolf` int(11) NOT NULL,
  `GX` float NOT NULL,
  `GY` float NOT NULL,
  `GZ` float NOT NULL,
  `GA` float NOT NULL,
  `Localizacion` varchar(80) NOT NULL,
  `Ganancias` int(10) NOT NULL DEFAULT 0,
  `PaloDeBillar` int(11) NOT NULL,
  `ConsoladorRosa` int(11) NOT NULL,
  `VibradorBlanco` int(11) NOT NULL,
  `GranVibradorBlanco` int(11) NOT NULL,
  `VibradorPlateado` int(11) NOT NULL,
  `Baston` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_vehicles`
--

CREATE TABLE `p_vehicles` (
  `id` int(11) NOT NULL,
  `Propietario` int(11) NOT NULL,
  `Slot` int(11) NOT NULL DEFAULT 0,
  `EstacionadoX` float NOT NULL DEFAULT 0,
  `EstacionadoY` float NOT NULL DEFAULT 0,
  `EstacionadoZ` float NOT NULL DEFAULT 0,
  `EstacionadoA` float NOT NULL DEFAULT 0,
  `VE1` int(11) NOT NULL DEFAULT 0,
  `VE2` int(11) NOT NULL DEFAULT 0,
  `VE3` int(11) NOT NULL DEFAULT 0,
  `VE4` int(11) NOT NULL DEFAULT 0,
  `vMoneda` int(11) NOT NULL DEFAULT 45,
  `Modelo` int(11) NOT NULL DEFAULT 0,
  `Combustible` int(11) NOT NULL DEFAULT 50,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Color1` int(11) NOT NULL DEFAULT 0,
  `Color2` int(11) NOT NULL DEFAULT 0,
  `Vida` int(11) NOT NULL DEFAULT 1000,
  `vBaul` int(11) NOT NULL DEFAULT 0,
  `vBaul2` int(11) NOT NULL DEFAULT 0,
  `vBaul3` int(11) NOT NULL DEFAULT 0,
  `vBaul4` int(11) NOT NULL DEFAULT 0,
  `vBaul5` int(11) NOT NULL DEFAULT 0,
  `vBaul6` int(11) NOT NULL DEFAULT 0,
  `vBaul7` int(11) NOT NULL DEFAULT 0,
  `vBaul8` int(11) NOT NULL DEFAULT 0,
  `vBaul9` int(11) NOT NULL DEFAULT 0,
  `vBaul10` int(11) NOT NULL DEFAULT 0,
  `PaintJob` int(11) NOT NULL DEFAULT -1,
  `Componentes0` int(11) NOT NULL DEFAULT 0,
  `Componentes1` int(11) NOT NULL DEFAULT 0,
  `Componentes2` int(11) NOT NULL DEFAULT 0,
  `Componentes3` int(11) NOT NULL DEFAULT 0,
  `Componentes4` int(11) NOT NULL DEFAULT 0,
  `Componentes5` int(11) NOT NULL DEFAULT 0,
  `Componentes6` int(11) NOT NULL DEFAULT 0,
  `Componentes7` int(11) NOT NULL DEFAULT 0,
  `Componentes8` int(11) NOT NULL DEFAULT 0,
  `Componentes9` int(11) NOT NULL DEFAULT 0,
  `Componentes10` int(11) NOT NULL DEFAULT 0,
  `Componentes11` int(11) NOT NULL DEFAULT 0,
  `Componentes12` int(11) NOT NULL DEFAULT 0,
  `Componentes13` int(11) NOT NULL DEFAULT 0,
  `Precio` int(11) NOT NULL,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `A` int(11) NOT NULL,
  `O_VW` int(11) NOT NULL DEFAULT 0,
  `Seguro` int(11) NOT NULL DEFAULT 0,
  `O_Interior` int(11) NOT NULL DEFAULT 0,
  `Patente` varchar(9) NOT NULL DEFAULT 'FZRP 1705',
  `vAlarma` int(11) NOT NULL DEFAULT 0,
  `Traba` int(11) NOT NULL DEFAULT 0,
  `Estado_Alarma` int(11) NOT NULL DEFAULT 0,
  `Estado_Seguro` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(10) UNSIGNED NOT NULL,
  `Cantidad` int(30) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_admin`
--

CREATE TABLE `registros_admin` (
  `ID` int(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Responsable` varchar(64) NOT NULL DEFAULT 'Ninguno',
  `Jugador` varchar(64) NOT NULL DEFAULT 'Ninguno',
  `Razon` varchar(128) NOT NULL DEFAULT 'Vacio',
  `Accion` varchar(32) NOT NULL DEFAULT 'Ninguna',
  `Panel` int(11) DEFAULT 0,
  `Nota` varchar(128) NOT NULL DEFAULT 'Ninguna',
  `NotaNivel` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `territorios`
--

CREATE TABLE `territorios` (
  `ID` int(11) NOT NULL,
  `Banda` int(11) NOT NULL DEFAULT 0,
  `Parte` varchar(64) NOT NULL DEFAULT 'Ninguna',
  `Nombre` varchar(64) NOT NULL DEFAULT 'Ninguna',
  `Min_X` float NOT NULL,
  `Min_Y` float NOT NULL,
  `Min_Z` float NOT NULL,
  `Max_X` float NOT NULL,
  `Max_Y` float NOT NULL,
  `Max_Z` float NOT NULL,
  `Z_Activa` int(11) NOT NULL DEFAULT 1,
  `Color` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `territorios`
--

INSERT INTO `territorios` (`ID`, `Banda`, `Parte`, `Nombre`, `Min_X`, `Min_Y`, `Min_Z`, `Max_X`, `Max_Y`, `Max_Z`, `Z_Activa`, `Color`) VALUES
(1, 0, 'LA', 'Los Santos', 44.614, -2892.97, -242.99, 2997.06, -768.026, 900, 0, 0),
(2, 0, 'RIH1a', 'Richman', 321.355, -860.619, -89.083, 687.802, -768.026, 110.916, 0, 0),
(3, 0, 'RIH1b', 'Richman', 321.355, -768.026, -89.083, 700.794, -674.885, 110.916, 0, 0),
(4, 0, 'RIH2', 'Richman', 321.355, -1044.07, -89.083, 647.557, -860.619, 110.916, 0, 0),
(5, 0, 'RIH3a', 'Richman', 72.648, -1404.97, -89.083, 225.164, -1235.07, 110.916, 0, 0),
(6, 0, 'RIH3b', 'Richman', 72.648, -1235.07, -89.083, 321.355, -1008.15, 110.916, 0, 0),
(7, 0, 'RIH4', 'Richman', 321.355, -1235.07, -89.083, 647.521, -1044.07, 110.916, 0, 0),
(8, 0, 'RIH5a', 'Richman', 647.557, -1118.28, -89.083, 787.46, -954.661, 110.916, 0, 0),
(9, 0, 'RIH5b', 'Richman', 647.557, -954.661, -89.083, 768.693, -860.619, 110.916, 0, 0),
(10, 0, 'RIH6a', 'Richman', 225.164, -1369.62, -89.083, 334.502, -1292.07, 110.916, 0, 0),
(11, 0, 'RIH6b', 'Richman', 225.164, -1292.07, -89.083, 466.222, -1235.07, 110.916, 0, 0),
(12, 0, 'MUL1a', 'Mulholland', 687.802, -860.619, -89.083, 911.802, -768.026, 110.916, 0, 0),
(13, 0, 'MUL1b', 'Mulholland', 737.572, -768.026, -89.083, 1142.29, -674.885, 110.916, 0, 0),
(14, 0, 'MUL1c', 'Mulholland', 861.085, -674.885, -89.083, 1156.55, -600.895, 110.916, 0, 0),
(15, 0, 'MUL2a', 'Mulholland', 1281.13, -452.424, -89.083, 1641.13, -290.912, 110.916, 0, 0),
(16, 0, 'MUL2b', 'Mulholland', 1269.13, -768.026, -89.083, 1414.07, -452.424, 110.916, 0, 0),
(17, 0, 'MUL3', 'Mulholland', 1414.07, -768.026, -89.083, 1667.61, -452.424, 110.916, 0, 0),
(18, 0, 'MUL4', 'Mulholland', 768.693, -954.661, -89.083, 952.604, -860.619, 110.916, 0, 0),
(19, 0, 'MUL5a', 'Mulholland', 1096.47, -910.169, -89.083, 1169.13, -768.026, 110.916, 0, 0),
(20, 0, 'MUL5b', 'Mulholland', 952.604, -937.184, -89.083, 1096.47, -860.619, 110.916, 0, 0),
(21, 0, 'MUL5c', 'Mulholland', 911.802, -860.619, -89.083, 1096.47, -768.026, 110.916, 0, 0),
(22, 0, 'MUL6', 'Mulholland', 1169.13, -910.169, -89.083, 1318.13, -768.026, 110.916, 0, 0),
(23, 0, 'MUL7a', 'Mulholland', 1357, -926.999, -89.083, 1463.9, -768.026, 110.916, 0, 0),
(24, 0, 'MUL7b', 'Mulholland', 1318.13, -910.169, -89.083, 1357, -768.026, 110.916, 0, 0),
(25, 0, 'MULINT', 'Mulholland Intersection', 1463.9, -1150.87, -89.083, 1812.62, -768.026, 110.916, 0, 0),
(26, 0, 'SUN1', 'Temple', 952.663, -1130.84, -89.083, 1096.47, -937.184, 110.916, 1, 0),
(27, 0, 'SUN2', 'Temple', 1096.47, -1026.33, -89.083, 1252.33, -910.169, 110.916, 0, 0),
(28, 0, 'SUN3a', 'Temple', 1252.33, -1130.85, -89.083, 1378.33, -1026.33, 110.916, 1, 0),
(29, 0, 'SUN3b', 'Temple', 1252.33, -1026.33, -89.083, 1391.05, -926.999, 110.916, 0, 0),
(30, 0, 'SUN3c', 'Temple', 1252.33, -926.999, -89.083, 1357, -910.169, 110.916, 0, 0),
(31, 0, 'SUN4', 'Temple', 1096.47, -1130.84, -89.083, 1252.33, -1026.33, 110.916, 1, 0),
(32, 0, 'CHC1a', 'Las Colinas', 1994.33, -1100.82, -89.083, 2056.86, -920.815, 110.916, 1, 0),
(33, 0, 'CHC1b', 'Las Colinas', 2056.86, -1126.32, -89.083, 2126.86, -920.815, 110.916, 1, 0),
(34, 0, 'CHC2a', 'Las Colinas', 2126.86, -1126.32, -89.083, 2185.33, -934.489, 110.916, 1, 0),
(35, 0, 'CHC2b', 'Las Colinas', 2185.33, -1154.59, -89.083, 2281.45, -934.489, 110.916, 1, 0),
(36, 0, 'CHC3', 'Las Colinas', 2281.45, -1135.04, -89.083, 2632.74, -945.034, 110.916, 1, 0),
(37, 0, 'CHC4a', 'Las Colinas', 2747.74, -1120.04, -89.083, 2959.35, -945.034, 110.916, 1, 0),
(38, 0, 'CHC4b', 'Las Colinas', 2632.74, -1135.04, -89.083, 2747.74, -945.034, 110.916, 1, 0),
(39, 0, 'VIN1a', 'Vinewood', 647.711, -1416.25, -89.083, 787.46, -1227.28, 110.916, 0, 0),
(40, 0, 'VIN1b', 'Vinewood', 647.557, -1227.28, -89.083, 787.46, -1118.28, 110.916, 0, 0),
(41, 0, 'VIN2', 'Vinewood', 787.46, -1130.84, -89.083, 952.604, -954.661, 110.916, 1, 0),
(42, 0, 'VIN3', 'Vinewood', 787.46, -1310.21, -89.083, 952.663, -1130.84, 110.916, 0, 0),
(43, 0, 'LDT1a', 'Downtown Los Santos', 1370.85, -1170.87, -89.083, 1463.9, -1130.85, 110.916, 0, 0),
(44, 0, 'LDT1b', 'Downtown Los Santos', 1378.33, -1130.85, -89.083, 1463.9, -1026.33, 110.916, 0, 0),
(45, 0, 'LDT1c', 'Downtown Los Santos', 1391.05, -1026.33, -89.083, 1463.9, -926.999, 110.916, 0, 0),
(46, 0, 'LDT3', 'Downtown Los Santos', 1370.85, -1384.95, -89.083, 1463.9, -1170.87, 110.916, 0, 0),
(47, 0, 'LDT4', 'Downtown Los Santos', 1463.9, -1290.87, -89.083, 1724.76, -1150.87, 110.916, 0, 0),
(48, 0, 'LDT5', 'Downtown Los Santos', 1463.9, -1430.87, -89.083, 1724.76, -1290.87, 110.916, 0, 0),
(49, 0, 'LDT6', 'Downtown Los Santos', 1724.76, -1250.9, -89.083, 1812.62, -1150.87, 110.916, 0, 0),
(50, 0, 'LDT7', 'Downtown Los Santos', 1724.76, -1430.87, -89.083, 1812.62, -1250.9, 110.916, 0, 0),
(51, 0, 'LDT8', 'Downtown Los Santos', 1507.51, -1385.21, 110.916, 1582.55, -1325.31, 335.915, 0, 0),
(52, 0, 'GLN1', 'Glen Park', 1812.62, -1350.72, -89.083, 2056.86, -1100.82, 110.916, 1, 0),
(53, 0, 'GLN1b', 'Glen Park', 1812.62, -1100.82, -89.083, 1994.33, -973.38, 110.916, 1, 0),
(54, 0, 'GLN2a', 'Glen Park', 1812.62, -1449.67, -89.083, 1996.91, -1350.72, 110.916, 1, 0),
(55, 0, 'LFL1a', 'Los Flores', 2581.73, -1454.35, -89.083, 2632.83, -1393.42, 110.916, 1, 0),
(56, 0, 'LFL1b', 'Los Flores', 2581.73, -1393.42, -89.083, 2747.74, -1135.04, 110.916, 1, 0),
(57, 0, 'MKT1', 'Market', 1072.66, -1416.25, -89.083, 1370.85, -1130.85, 110.916, 0, 0),
(58, 0, 'MKT2', 'Market', 926.921, -1577.59, -89.083, 1370.85, -1416.25, 110.916, 0, 0),
(59, 0, 'MKT3', 'Market', 787.46, -1416.25, -89.083, 1072.66, -1310.21, 110.916, 0, 0),
(60, 0, 'MKT4', 'Market', 952.663, -1310.21, -89.083, 1072.66, -1130.85, 110.916, 0, 0),
(61, 0, 'MARKST', 'Market Station', 787.46, -1410.93, -34.126, 866.008, -1310.21, 65.873, 0, 0),
(62, 0, 'JEF1a', 'Jefferson', 2185.33, -1210.74, -89.083, 2281.45, -1154.59, 110.916, 1, 0),
(63, 0, 'JEF1b', 'Jefferson', 2056.86, -1210.74, -89.083, 2185.33, -1126.32, 110.916, 1, 0),
(64, 0, 'JEF2', 'Jefferson', 2056.86, -1372.04, -89.083, 2281.45, -1210.74, 110.916, 1, 0),
(65, 0, 'JEF3a', 'Jefferson', 1996.91, -1449.67, -89.083, 2056.86, -1350.72, 110.916, 0, 0),
(66, 0, 'JEF3b', 'Jefferson', 2056.86, -1449.67, -89.083, 2266.21, -1372.04, 110.916, 1, 0),
(67, 0, 'JEF3c', 'Jefferson', 2124.66, -1494.03, -89.083, 2266.21, -1449.67, 110.916, 1, 0),
(68, 0, 'ROD1a', 'Rodeo', 225.164, -1684.65, -89.083, 312.803, -1501.95, 110.916, 0, 0),
(69, 0, 'ROD1b', 'Rodeo', 225.164, -1501.95, -89.083, 334.502, -1369.62, 110.916, 0, 0),
(70, 0, 'ROD1c', 'Rodeo', 334.502, -1501.95, -89.083, 422.679, -1406.05, 110.916, 0, 0),
(71, 0, 'ROD2a', 'Rodeo', 334.502, -1406.05, -89.083, 466.222, -1292.07, 110.916, 0, 0),
(72, 0, 'ROD2b', 'Rodeo', 466.222, -1385.07, -89.083, 647.521, -1235.07, 110.916, 0, 0),
(73, 0, 'ROD3a', 'Rodeo', 312.803, -1684.65, -89.083, 422.679, -1501.95, 110.916, 0, 0),
(74, 0, 'ROD3b', 'Rodeo', 422.679, -1684.65, -89.083, 558.098, -1570.2, 110.916, 0, 0),
(75, 0, 'ROD4a', 'Rodeo', 558.098, -1684.65, -89.083, 647.521, -1384.93, 110.916, 0, 0),
(76, 0, 'ROD4b', 'Rodeo', 466.222, -1570.2, -89.083, 558.098, -1385.07, 110.916, 0, 0),
(77, 0, 'ROD4c', 'Rodeo', 422.679, -1570.2, -89.083, 466.222, -1406.05, 110.916, 0, 0),
(78, 0, 'ROD5a', 'Rodeo', 72.648, -1544.17, -89.083, 225.164, -1404.97, 110.916, 0, 0),
(79, 0, 'ROD5b', 'Rodeo', 72.648, -1684.65, -89.083, 225.164, -1544.17, 110.916, 0, 0),
(80, 0, 'MAR1', 'Marina', 647.711, -1577.59, -89.083, 807.921, -1416.25, 110.916, 0, 0),
(81, 0, 'MAR2', 'Marina', 807.921, -1577.59, -89.083, 926.921, -1416.25, 110.916, 0, 0),
(82, 0, 'MAR3', 'Marina', 647.711, -1804.21, -89.083, 851.448, -1577.59, 110.916, 0, 0),
(83, 0, 'THALL1', 'Commerce', 1323.9, -1842.27, -89.083, 1701.9, -1722.26, 110.916, 0, 0),
(84, 0, 'COM1a', 'Commerce', 1323.9, -1722.26, -89.083, 1440.9, -1577.59, 110.916, 0, 0),
(85, 0, 'COM1b', 'Commerce', 1370.85, -1577.59, -89.083, 1463.9, -1384.95, 110.916, 0, 0),
(86, 0, 'COM2', 'Commerce', 1463.9, -1577.59, -89.083, 1667.96, -1430.87, 110.916, 0, 0),
(87, 0, 'COM3', 'Commerce', 1667.96, -1577.59, -89.083, 1812.62, -1430.87, 110.916, 0, 0),
(88, 0, 'COM4', 'Commerce', 1583.5, -1722.26, -89.083, 1758.9, -1577.59, 110.916, 0, 0),
(89, 0, 'ELS1a', 'East Los Santos', 2281.45, -1372.04, -89.083, 2381.68, -1135.04, 110.916, 1, 0),
(90, 0, 'ELS1b', 'East Los Santos', 2381.68, -1454.35, -89.083, 2462.13, -1135.04, 110.916, 1, 0),
(91, 0, 'ELS2', 'East Los Santos', 2462.13, -1454.35, -89.083, 2581.73, -1135.04, 110.916, 1, 0),
(92, 0, 'ELS3a', 'East Los Santos', 2222.56, -1628.53, -89.083, 2421.03, -1494.03, 110.916, 1, 0),
(93, 0, 'ELS3b', 'East Los Santos', 2266.26, -1494.03, -89.083, 2381.68, -1372.04, 110.916, 1, 0),
(94, 0, 'ELS3c', 'East Los Santos', 2381.68, -1494.03, -89.083, 2421.03, -1454.35, 110.916, 1, 0),
(95, 0, 'ELS4', 'East Los Santos', 2421.03, -1628.53, -89.083, 2632.83, -1454.35, 110.916, 1, 0),
(96, 0, 'EBE1', 'East Beach', 2747.74, -1498.62, -89.083, 2959.35, -1120.04, 110.916, 1, 0),
(97, 0, 'EBE2a', 'East Beach', 2632.83, -1668.13, -89.083, 2747.74, -1393.42, 110.916, 1, 0),
(98, 0, 'EBE2b', 'East Beach', 2747.74, -1668.13, -89.083, 2959.35, -1498.62, 110.916, 1, 0),
(99, 0, 'EBE3c', 'East Beach', 2632.83, -1852.87, -89.083, 2959.35, -1668.13, 110.916, 1, 0),
(100, 0, 'PER1', 'Pershing Square', 1440.9, -1722.26, -89.083, 1583.5, -1577.59, 110.916, 0, 0),
(101, 20, 'IWD1', 'Idlewood', 1812.62, -1602.31, -89.083, 2124.66, -1449.67, 110.916, 1, -541510265),
(102, 0, 'IWD2', 'Idlewood', 2124.66, -1742.31, -89.083, 2222.56, -1494.03, 110.916, 1, 0),
(103, 0, 'IWD3a', 'Idlewood', 1812.62, -1852.87, -89.083, 1971.66, -1742.31, 110.916, 1, 0),
(104, 0, 'IWD3b', 'Idlewood', 1812.62, -1742.31, -89.083, 1951.66, -1602.31, 110.916, 1, 0),
(105, 0, 'IWD4', 'Idlewood', 1951.66, -1742.31, -89.083, 2124.66, -1602.31, 110.916, 1, 0),
(106, 17, 'IWD5', 'Idlewood', 1971.66, -1852.87, -89.083, 2222.56, -1742.31, 110.916, 1, 802807431),
(107, 0, 'GAN1', 'Ganton', 2222.56, -1722.33, -89.083, 2632.83, -1628.53, 110.916, 1, 0),
(108, 0, 'GAN2', 'Ganton', 2222.56, -1852.87, -89.083, 2632.83, -1722.33, 110.916, 1, 0),
(109, 0, 'CONF1a', 'Conference Center', 1073.22, -1842.27, -89.083, 1323.9, -1804.21, 110.916, 0, 0),
(110, 0, 'CONF1b', 'Conference Center', 1046.15, -1804.21, -89.083, 1323.9, -1722.26, 110.916, 0, 0),
(111, 0, 'CITYS', 'City Hall', -2867.85, 277.411, 0, -2593.44, 458.411, 200, 0, 0),
(112, 0, 'LMEX1a', 'Little Mexico', 1701.9, -1842.27, -89.083, 1812.62, -1722.26, 110.916, 1, 0),
(113, 0, 'LMEX1b', 'Little Mexico', 1758.9, -1722.26, -89.083, 1812.62, -1577.59, 110.916, 1, 0),
(114, 0, 'UNITY', 'Unity Station', 1692.62, -1971.8, -20.492, 1812.62, -1932.8, 79.507, 0, 0),
(115, 0, 'SMB1', 'Santa Maria Beach', 342.648, -2173.29, -89.083, 647.711, -1684.65, 110.916, 0, 0),
(116, 0, 'SMB2', 'Santa Maria Beach', 72.648, -2173.29, -89.083, 342.648, -1684.65, 110.916, 0, 0),
(117, 0, 'VERO1', 'Verona Beach', 851.448, -1804.21, -89.083, 1046.15, -1577.59, 110.916, 0, 0),
(118, 0, 'VERO3', 'Verona Beach', 1161.52, -1722.26, -89.083, 1323.9, -1577.59, 110.916, 0, 0),
(119, 0, 'VERO4a', 'Verona Beach', 647.711, -2173.29, -89.083, 930.221, -1804.21, 110.916, 0, 0),
(120, 0, 'VERO4b', 'Verona Beach', 930.221, -2006.78, -89.083, 1073.22, -1804.21, 110.916, 0, 0),
(121, 0, 'LIND1a', 'Willowfield', 1970.62, -2179.25, -89.083, 2089, -1852.87, 110.916, 1, 0),
(122, 0, 'LIND1b', 'Willowfield', 2089, -2235.84, -89.083, 2201.82, -1989.9, 110.916, 1, 0),
(123, 0, 'LIND2a', 'Willowfield', 2089, -1989.9, -89.083, 2324, -1852.87, 110.916, 1, 0),
(124, 0, 'LIND2b', 'Willowfield', 2201.82, -2095, -89.083, 2324, -1989.9, 110.916, 1, 0),
(125, 0, 'LIND3', 'Willowfield', 2324, -2059.23, -89.083, 2541.7, -1852.87, 110.916, 1, 0),
(126, 0, 'LIND4a', 'Willowfield', 2541.7, -2059.23, -89.083, 2703.58, -1941.4, 110.916, 1, 0),
(127, 0, 'LIND4c', 'Willowfield', 2541.7, -1941.4, -89.083, 2703.58, -1852.87, 110.916, 1, 0),
(128, 0, 'ELCO1', 'El Corona', 1692.62, -2179.25, -89.083, 1812.62, -1842.27, 110.916, 0, 0),
(129, 0, 'ELCO2', 'El Corona', 1812.62, -2179.25, -89.083, 1970.62, -1852.87, 110.916, 1, 0),
(130, 0, 'PLS', 'Playa del Seville', 2703.58, -2126.9, -89.083, 2959.35, -1852.87, 110.916, 1, 0),
(131, 0, 'BLUF1a', 'Verdant Bluffs', 930.221, -2488.42, -89.083, 1249.62, -2006.78, 110.916, 0, 0),
(132, 0, 'BLUF1b', 'Verdant Bluffs', 1073.22, -2006.78, -89.083, 1249.62, -1842.27, 110.916, 0, 0),
(133, 0, 'BLUF2', 'Verdant Bluffs', 1249.62, -2179.25, -89.083, 1692.62, -1842.27, 110.916, 0, 0),
(134, 0, 'LAIR1', 'Los Santos International', 1249.62, -2394.33, -89.083, 1852, -2179.25, 110.916, 0, 0),
(135, 0, 'LAIR2a', 'Los Santos International', 1852, -2394.33, -89.083, 2089, -2179.25, 110.916, 0, 0),
(136, 0, 'LAIR2b', 'Los Santos International', 1382.73, -2730.88, -89.083, 2201.82, -2394.33, 110.916, 0, 0),
(137, 0, 'LBAG1', 'Los Santos International', 1974.63, -2394.33, -39.083, 2089, -2256.59, 60.916, 0, 0),
(138, 0, 'LBAG2', 'Los Santos International', 1400.97, -2669.26, -39.083, 2189.82, -2597.26, 60.916, 0, 0),
(139, 0, 'LBAG3', 'Los Santos International', 2051.63, -2597.26, -39.083, 2152.45, -2394.33, 60.916, 0, 0),
(140, 17, 'LDOC1a', 'Ocean Docks', 2089, -2394.33, -89.083, 2201.82, -2235.84, 110.916, 1, 802807431),
(141, 0, 'LDOC1b', 'Ocean Docks', 2201.82, -2418.33, -89.083, 2324, -2095, 110.916, 1, 0),
(142, 0, 'LDOC2', 'Ocean Docks', 2324, -2145.1, -89.083, 2703.58, -2059.23, 110.916, 1, 0),
(143, 0, 'LDOC3a', 'Ocean Docks', 2324, -2302.33, -89.083, 2703.58, -2145.1, 110.916, 1, 0),
(144, 0, 'LDOC3b', 'Ocean Docks', 2201.82, -2730.88, -89.083, 2324, -2418.33, 110.916, 1, 0),
(145, 0, 'LDOC3c', 'Ocean Docks', 2703.58, -2302.33, -89.083, 2959.35, -2126.9, 110.916, 1, 0),
(146, 0, 'LDOC4', 'Ocean Docks', 2373.77, -2697.09, -89.083, 2809.22, -2330.46, 110.916, 0, 0),
(147, 0, 'RED', 'Red County', -1213.91, -768.026, -242.99, 2997.06, 596.348, 900, 0, 0),
(148, 0, 'MONT', 'Montgomery', 1119.51, 119.526, 0, 1451.4, 493.322, 200, 0, 0),
(149, 0, 'MONT1', 'Montgomery', 1451.4, 347.457, 0, 1582.44, 420.802, 200, 0, 0),
(150, 0, 'MONINT', 'Montgomery Intersection', 1546.65, 208.164, 0, 1745.83, 347.457, 200, 0, 0),
(151, 0, 'MONINT', 'Montgomery Intersection', 1582.44, 347.457, 0, 1664.62, 401.75, 200, 0, 0),
(152, 0, 'HBARNS', 'Hampton Barns', 603.034, 264.312, 0, 761.994, 366.571, 200, 0, 0),
(153, 0, 'HANKY', 'Hankypanky Point', 2576.92, 62.157, 0, 2759.25, 385.502, 200, 0, 0),
(154, 0, 'BLUAC', 'Blueberry Acres', -319.675, -220.136, 0, 104.533, 293.324, 200, 0, 0),
(155, 0, 'FERN', 'Fern Ridge', 508.188, -139.259, 0, 1306.66, 119.526, 200, 0, 0),
(156, 0, 'PANOP', 'The Panopticon', -947.979, -304.32, 0, -319.675, 327.071, 200, 0, 0),
(157, 0, 'PALO', 'Palomino Creek', 2160.22, -149.003, 0, 2576.92, 228.322, 200, 0, 0),
(158, 0, 'BLUEB', 'Blueberry', 19.607, -404.135, 0, 349.606, -220.136, 200, 1, 0),
(159, 0, 'BLUEB1', 'Blueberry', 104.533, -220.136, 0, 349.606, 152.235, 200, 0, 0),
(160, 0, 'TOPFA', 'Hilltop Farm', 967.382, -450.39, 0, 1176.78, -217.899, 200, 0, 0),
(161, 0, 'NROCK', 'North Rock', 2285.37, -768.026, 0, 2770.59, -269.739, 200, 0, 0),
(162, 0, 'DILLI', 'Dillimore', 580.794, -674.885, 0, 861.085, -404.79, 200, 0, 0),
(163, 0, 'SF', 'San Fierro', -2997.47, -1115.58, -242.99, -1213.91, 1659.68, 900, 0, 0),
(164, 0, 'BATTP', 'Battery Point', -2741.07, 1268.41, 0, -2533.04, 1490.47, 200, 1, 0),
(165, 0, 'ESPN1', 'Esplanade North', -2533.04, 1358.9, 0, -1996.66, 1501.21, 200, 0, 0),
(166, 0, 'ESPN2', 'Esplanade North', -1996.66, 1358.9, 0, -1524.24, 1592.51, 200, 1, 0),
(167, 0, 'ESPN3', 'Esplanade North', -1982.32, 1274.26, 0, -1524.24, 1358.9, 200, 1, 0),
(168, 0, 'ESPE1', 'Esplanade East', -1620.3, 1176.52, 0, -1580.01, 1274.26, 200, 0, 0),
(169, 0, 'ESPE2', 'Esplanade East', -1580.01, 1025.98, 0, -1499.89, 1274.26, 200, 0, 0),
(170, 0, 'ESPE3', 'Esplanade East', -1499.89, 578.395, -79.615, -1339.89, 1274.26, 20.384, 0, 0),
(171, 0, 'JUNIHO', 'Juniper Hollow', -2533.04, 968.369, 0, -2274.17, 1358.9, 200, 0, 0),
(172, 0, 'SFDWT1', 'Downtown', -1982.32, 744.169, 0, -1871.72, 1274.26, 200, 0, 0),
(173, 0, 'SFDWT2', 'Downtown', -1871.72, 1176.42, 0, -1620.3, 1274.26, 200, 1, 0),
(174, 0, 'SFDWT3', 'Downtown', -1700.01, 744.267, 0, -1580.01, 1176.52, 200, 0, 0),
(175, 0, 'SFDWT4', 'Downtown', -1580.01, 744.267, 0, -1499.89, 1025.98, 200, 0, 0),
(176, 0, 'SFDWT5', 'Downtown', -2078.67, 578.395, 0, -1499.89, 744.267, 200, 0, 0),
(177, 0, 'SFDWT6', 'Downtown', -1993.28, 265.243, 0, -1794.92, 578.395, 200, 0, 0),
(178, 0, 'PARA', 'Paradiso', -2741.07, 793.411, 0, -2533.04, 1268.41, 200, 0, 0),
(179, 0, 'CALT', 'Calton Heights', -2274.17, 744.169, 0, -1982.32, 1358.9, 200, 0, 0),
(180, 0, 'FINA', 'Financial', -1871.72, 744.169, 0, -1701.3, 1176.42, 300, 0, 0),
(181, 0, 'BAYV', 'Palisades', -2994.49, 458.411, 0, -2741.07, 1339.61, 200, 0, 0),
(182, 0, 'JUNIHI', 'Juniper Hill', -2533.04, 578.395, 0, -2274.17, 968.369, 200, 0, 0),
(183, 0, 'CHINA', 'Chinatown', -2274.17, 578.395, 0, -2078.67, 744.169, 200, 1, 0),
(184, 0, 'CIVI', 'Santa Flora', -2741.07, 458.411, 0, -2533.04, 793.411, 200, 0, 0),
(185, 0, 'WESTP1', 'Queens', -2533.04, 458.411, 0, -2329.31, 578.395, 200, 0, 0),
(186, 0, 'WESTP2', 'Queens', -2593.44, 54.722, 0, -2411.22, 458.411, 200, 0, 0),
(187, 0, 'WESTP3', 'Queens', -2411.22, 373.539, 0, -2253.54, 458.411, 200, 0, 0),
(188, 0, 'CITYS', 'City Hall', -2867.85, 277.411, 0, -2593.44, 458.411, 200, 0, 0),
(189, 0, 'EASB1', 'Easter Basin', -1794.92, 249.904, 0, -1242.98, 578.395, 200, 0, 0),
(190, 0, 'EASB2', 'Easter Basin', -1794.92, -50.096, 0, -1499.89, 249.904, 200, 1, 0),
(191, 0, 'GARC', 'Garcia', -2411.22, -222.589, 0, -2173.04, 265.243, 200, 0, 0),
(192, 0, 'SFGLF3', 'Garcia', -2395.14, -222.589, 0, -2354.09, -204.792, 200, 0, 0),
(193, 0, 'CRANB', 'Cranberry Station', -2007.83, 56.306, 0, -1922, 224.781, 100, 0, 0),
(194, 0, 'OCEAF1', 'Ocean Flats', -2994.49, 277.411, 0, -2867.85, 458.411, 200, 0, 0),
(195, 0, 'OCEAF2', 'Ocean Flats', -2994.49, -222.589, 0, -2593.44, 277.411, 200, 0, 0),
(196, 0, 'OCEAF3', 'Ocean Flats', -2994.49, -430.276, 0, -2831.89, -222.589, 200, 0, 0),
(197, 0, 'HASH', 'Hashbury', -2593.44, -222.589, 0, -2411.22, 54.722, 200, 1, 0),
(198, 0, 'DOH1', 'Doherty', -2270.04, -324.114, 0, -1794.92, -222.589, 200, 1, 0),
(199, 0, 'DOH2', 'Doherty', -2173.04, -222.589, 0, -1794.92, 265.243, 200, 1, 0),
(200, 0, 'SFBAG2', 'Easter Bay Airport', -1315.42, -405.388, 15.406, -1264.4, -209.542, 25.406, 0, 0),
(201, 0, 'SFBAG3', 'Easter Bay Airport', -1354.39, -287.398, 15.406, -1315.42, -209.542, 25.406, 0, 0),
(202, 0, 'SFBAG1', 'Easter Bay Airport', -1490.33, -209.542, 15.406, -1264.4, -148.388, 25.406, 0, 0),
(203, 0, 'SFAIR1', 'Easter Bay Airport', -1794.92, -730.117, 0, -1213.91, -50.096, 200, 0, 0),
(204, 0, 'SFAIR2', 'Easter Bay Airport', -1242.98, -50.096, 0, -1213.91, 578.395, 200, 0, 0),
(205, 0, 'SFAIR3', 'Easter Bay Airport', -1499.89, -50.096, 0, -1242.98, 249.904, 200, 0, 0),
(206, 0, 'SFAIR4', 'Easter Bay Airport', -1213.91, -730.117, 0, -1132.82, -50.096, 200, 0, 0),
(207, 0, 'SFAIR5', 'Easter Bay Airport', -1213.91, -50.096, 0, -947.979, 578.395, 200, 0, 0),
(208, 0, 'FLINTC', 'Flint County', -1213.91, -2892.97, -242.99, 44.614, -768.026, 900, 0, 0),
(209, 0, 'CUNTC1', 'Avispa Country Club', -2470.04, -355.493, 0, -2270.04, -318.493, 46.099, 0, 0),
(210, 0, 'CUNTC2', 'Avispa Country Club', -2831.89, -430.276, 0, -2646.4, -222.589, 200, 0, 0),
(211, 0, 'CUNTC3', 'Avispa Country Club', -2550.04, -355.493, 0, -2470.04, -318.493, 39.7, 0, 0),
(212, 0, 'SFGLF1', 'Avispa Country Club', -2361.51, -417.199, 0, -2270.04, -355.493, 200, 0, 0),
(213, 0, 'SFGLF2', 'Avispa Country Club', -2667.81, -302.135, -28.83, -2646.4, -262.32, 71.169, 0, 0),
(214, 0, 'SFGLF4', 'Avispa Country Club', -2646.4, -355.493, 0, -2270.04, -222.589, 200, 0, 0),
(215, 0, 'HAUL', 'Fallen Tree', -792.254, -698.554, 0, -452.403, -380.042, 200, 0, 0),
(216, 0, 'HILLP', 'Missionary Hill', -2994.49, -811.276, 0, -2178.69, -430.276, 200, 0, 0),
(217, 0, 'EBAY', 'Easter Bay Chemical', -1132.82, -768.026, 0, -956.476, -578.117, 200, 1, 0),
(218, 0, 'EBAY2', 'Easter Bay Chemical', -1132.82, -787.39, 0, -956.476, -768.026, 200, 1, 0),
(219, 0, 'ETUNN', 'Easter Tunnel', -1709.71, -833.033, 0, -1446.01, -730.117, 200, 0, 0),
(220, 0, 'SILLY1', 'Foster Valley', -2178.69, -1115.58, 0, -1794.92, -599.883, 200, 0, 0),
(221, 0, 'SILLY2', 'Foster Valley', -2178.69, -1250.97, 0, -1794.92, -1115.58, 200, 0, 0),
(222, 0, 'SILLY3', 'Foster Valley', -2270.04, -430.276, 0, -2178.69, -324.114, 200, 0, 0),
(223, 0, 'SILLY4', 'Foster Valley', -2178.69, -599.883, 0, -1794.92, -324.114, 200, 0, 0),
(224, 0, 'FARM', 'The Farm', -1209.67, -1317.1, 114.981, -908.161, -787.39, 251.981, 0, 0),
(225, 0, 'BEACO', 'Beacon Hill', -399.632, -1075.52, -1.489, -319.032, -977.515, 198.511, 0, 0),
(226, 0, 'FLINTI', 'Flint Intersection', -187.699, -1596.76, -89.083, 17.063, -1276.6, 110.916, 0, 0),
(227, 0, 'FLINTR', 'Flint Range', -594.19, -1648.55, 0, -187.699, -1276.6, 200, 0, 0),
(228, 0, 'LEAFY', 'Leafy Hollow', -1166.97, -1856.03, 0, -815.624, -1602.07, 200, 0, 0),
(229, 0, 'BACKO', 'Back o Beyond', -1166.97, -2641.19, 0, -321.743, -1856.03, 200, 0, 0),
(230, 0, 'WHET', 'Whetstone', -2997.47, -2892.97, -242.99, -1213.91, -1115.58, 900, 0, 0),
(231, 0, 'MTCHI1', 'Mount Chiliad', -2994.49, -2189.91, -47.916, -2178.69, -1115.58, 576.083, 0, 0),
(232, 0, 'MTCHI2', 'Mount Chiliad', -2178.69, -1771.66, -47.916, -1936.12, -1250.97, 576.083, 0, 0),
(233, 0, 'MTCHI3', 'Mount Chiliad', -2997.47, -1115.58, -47.916, -2178.69, -971.913, 576.083, 0, 0),
(234, 0, 'MTCHI4', 'Mount Chiliad', -2178.69, -2189.91, -47.916, -2030.12, -1771.66, 576.083, 0, 0),
(235, 0, 'CREEK', 'Shady Creeks', -1820.64, -2643.68, 0, -1226.78, -1771.66, 200, 0, 0),
(236, 0, 'CREEK1', 'Shady Creeks', -2030.12, -2174.89, 0, -1820.64, -1771.66, 200, 0, 0),
(237, 0, 'SHACA', 'Shady Cabin', -1632.83, -2263.44, 0, -1601.33, -2231.79, 200, 0, 0),
(238, 0, 'ANGPI', 'Angel Pine', -2324.94, -2584.29, 0, -1964.22, -2212.11, 200, 0, 0),
(239, 0, 'VE', 'Las Venturas', 869.46, 596.348, -242.99, 2997.06, 2993.87, 900, 0, 0),
(240, 0, 'YBELL1', 'Yellow Bell Golf Course', 1117.4, 2723.23, -89.083, 1457.46, 2863.23, 110.916, 0, 0),
(241, 0, 'YBELL2', 'Yellow Bell Golf Course', 1457.46, 2723.23, -89.083, 1534.56, 2863.23, 110.916, 0, 0),
(242, 0, 'SPIN', 'Spinybed', 2121.4, 2663.17, -89.083, 2498.21, 2861.55, 110.916, 0, 0),
(243, 0, 'KACC', 'K.A.C.C. Military Fuels', 2498.21, 2626.55, -89.083, 2749.9, 2861.55, 110.916, 0, 0),
(244, 0, 'PRP1', 'Prickle Pine', 1534.56, 2583.23, -89.083, 1848.4, 2863.23, 110.916, 0, 0),
(245, 0, 'PRP2', 'Prickle Pine', 1117.4, 2507.23, -89.083, 1534.56, 2723.23, 110.916, 0, 0),
(246, 0, 'PRP3', 'Prickle Pine', 1848.4, 2553.49, -89.083, 1938.8, 2863.23, 110.916, 0, 0),
(247, 0, 'PRP4', 'Prickle Pine', 1938.8, 2624.23, -89.083, 2121.4, 2861.55, 110.916, 0, 0),
(248, 0, 'YELLOW', 'Yellow Bell Station', 1377.48, 2600.43, -21.926, 1492.45, 2687.36, 78.073, 0, 0),
(249, 0, 'JTN1', 'Julius Thruway North', 2498.21, 2542.55, -89.083, 2685.16, 2626.55, 110.916, 0, 0),
(250, 0, 'JTN2', 'Julius Thruway North', 2237.4, 2542.55, -89.083, 2498.21, 2663.17, 110.916, 0, 0),
(251, 0, 'JTN3', 'Julius Thruway North', 2121.4, 2508.23, -89.083, 2237.4, 2663.17, 110.916, 0, 0),
(252, 0, 'JTN4', 'Julius Thruway North', 1938.8, 2508.23, -89.083, 2121.4, 2624.23, 110.916, 0, 0),
(253, 0, 'JTN5', 'Julius Thruway North', 1534.56, 2433.23, -89.083, 1848.4, 2583.23, 110.916, 0, 0),
(254, 0, 'JTN6', 'Julius Thruway North', 1848.4, 2478.49, -89.083, 1938.8, 2553.49, 110.916, 0, 0),
(255, 0, 'JTN7', 'Julius Thruway North', 1377.39, 2433.23, -89.083, 1534.56, 2507.23, 110.916, 0, 0),
(256, 0, 'JTN8', 'Julius Thruway North', 1704.59, 2342.83, -89.083, 1848.4, 2433.23, 110.916, 0, 0),
(257, 0, 'PINT', 'Pilson Intersection', 1098.39, 2243.23, -89.083, 1377.39, 2507.23, 110.916, 0, 0),
(258, 0, 'ISLE', 'The Emerald Isle', 2011.94, 2202.76, -89.083, 2237.4, 2508.23, 110.916, 0, 0),
(259, 0, 'ROCE1', 'Roca Escalante', 2237.4, 2202.76, -89.083, 2536.43, 2542.55, 110.916, 0, 0),
(260, 0, 'ROCE2', 'Roca Escalante', 2536.43, 2202.76, -89.083, 2625.16, 2442.55, 110.916, 0, 0),
(261, 0, 'WWE', 'Whitewood Estates', 883.307, 1726.22, -89.083, 1098.31, 2507.23, 110.916, 1, 0),
(262, 0, 'WWE1', 'Whitewood Estates', 1098.31, 1726.22, -89.083, 1197.39, 2243.23, 110.916, 0, 0),
(263, 0, 'OVS', 'Old Venturas Strip', 2162.39, 2012.18, -89.083, 2685.16, 2202.76, 110.916, 1, 0),
(264, 0, 'CREE', 'Creek', 2749.9, 1937.25, -89.083, 2921.62, 2669.79, 110.916, 0, 0),
(265, 0, 'REDE1', 'Redsands East', 1817.39, 2011.83, -89.083, 2106.7, 2202.76, 110.916, 0, 0),
(266, 0, 'REDE2', 'Redsands East', 1817.39, 2202.76, -89.083, 2011.94, 2342.83, 110.916, 0, 0),
(267, 0, 'REDE3', 'Redsands East', 1848.4, 2342.83, -89.083, 2011.94, 2478.49, 110.916, 0, 0),
(268, 0, 'REDW1', 'Redsands West', 1297.47, 2142.86, -89.083, 1777.39, 2243.23, 110.916, 0, 0),
(269, 0, 'REDW2', 'Redsands West', 1236.63, 1883.11, -89.083, 1777.39, 2142.86, 110.916, 0, 0),
(270, 0, 'REDW3', 'Redsands West', 1377.39, 2243.23, -89.083, 1704.59, 2433.23, 110.916, 1, 0),
(271, 0, 'REDW4', 'Redsands West', 1704.59, 2243.23, -89.083, 1777.39, 2342.83, 110.916, 1, 0),
(272, 0, 'HGP', 'Harry Gold Parkway', 1777.39, 863.231, -89.083, 1817.39, 2342.83, 110.916, 0, 0),
(273, 0, 'STRIP1', 'The Strip', 2027.4, 863.229, -89.083, 2087.39, 1703.23, 110.916, 1, 0),
(274, 0, 'STRIP2', 'The Strip', 2106.7, 1863.23, -89.083, 2162.39, 2202.76, 110.916, 1, 0),
(275, 0, 'JTW1', 'Julius Thruway West', 1197.39, 1163.39, -89.083, 1236.63, 2243.23, 110.916, 0, 0),
(276, 0, 'JTW2', 'Julius Thruway West', 1236.63, 2142.86, -89.083, 1297.47, 2243.23, 110.916, 0, 0),
(277, 0, 'VISA1', 'The Visage', 1817.39, 1863.23, -89.083, 2106.7, 2011.83, 110.916, 1, 0),
(278, 0, 'VISA2', 'The Visage', 1817.39, 1703.23, -89.083, 2027.4, 1863.23, 110.916, 1, 0),
(279, 0, 'STAR1', 'Starfish Casino', 2162.39, 1883.23, -89.083, 2437.39, 2012.18, 110.916, 1, 0),
(280, 0, 'STAR2', 'Starfish Casino', 2437.39, 1783.23, -89.083, 2685.16, 2012.18, 110.916, 0, 0),
(281, 0, 'CONST1', 'Starfish Casino', 2437.39, 1858.1, -39.083, 2495.09, 1970.85, 60.916, 0, 0),
(282, 0, 'SRY', 'Sobell Rail Yards', 2749.9, 1548.99, -89.083, 2923.39, 1937.25, 110.916, 0, 0),
(283, 0, 'JTE1', 'Julius Thruway East', 2685.16, 1055.96, -89.083, 2749.9, 2626.55, 110.916, 0, 0),
(284, 0, 'JTE2', 'Julius Thruway East', 2623.18, 943.234, -89.083, 2749.9, 1055.96, 110.916, 0, 0),
(285, 0, 'JTE3', 'Julius Thruway East', 2625.16, 2202.76, -89.083, 2685.16, 2442.55, 110.916, 0, 0),
(286, 0, 'JTE4', 'Julius Thruway East', 2536.43, 2442.55, -89.083, 2685.16, 2542.55, 110.916, 0, 0),
(287, 0, 'BFLD1', 'Blackfield', 964.39, 1203.22, -89.083, 1197.39, 1403.22, 110.916, 1, 0),
(288, 0, 'BFLD2', 'Blackfield', 964.39, 1403.22, -89.083, 1197.39, 1726.22, 110.916, 0, 0),
(289, 0, 'VAIR1', 'Las Venturas Airport', 1236.63, 1203.28, -89.083, 1457.37, 1883.11, 110.916, 0, 0),
(290, 0, 'VAIR2', 'Las Venturas Airport', 1457.37, 1203.28, -89.083, 1777.39, 1883.11, 110.916, 0, 0),
(291, 0, 'VAIR3', 'Las Venturas Airport', 1457.37, 1143.21, -89.083, 1777.4, 1203.28, 110.916, 0, 0),
(292, 0, 'LVBAG', 'Las Venturas Airport', 1515.81, 1586.4, -12.5, 1729.95, 1714.56, 87.5, 0, 0),
(293, 0, 'ROY', 'Royal Casino', 2087.39, 1383.23, -89.083, 2437.39, 1543.23, 110.916, 1, 0),
(294, 0, 'PILL1', 'Pilgrim', 2437.39, 1383.23, -89.083, 2624.4, 1783.23, 110.916, 0, 0),
(295, 0, 'PILL2', 'Pilgrim', 2624.4, 1383.23, -89.083, 2685.16, 1783.23, 110.916, 0, 0),
(296, 0, 'LST', 'Linden Station', 2749.9, 1198.99, -89.083, 2923.39, 1548.99, 110.916, 0, 0),
(297, 0, 'LINDEN', 'Linden Station', 2811.25, 1229.59, -39.594, 2861.25, 1407.59, 60.405, 0, 0),
(298, 0, 'HIGH', 'The High Roller', 1817.39, 1283.23, -89.083, 2027.39, 1469.23, 110.916, 1, 0),
(299, 0, 'STRIP3', 'The Strip', 2027.4, 1783.23, -89.083, 2162.39, 1863.23, 110.916, 1, 0),
(300, 0, 'STRIP4', 'The Strip', 2027.4, 1703.23, -89.083, 2137.4, 1783.23, 110.916, 1, 0),
(301, 0, 'PINK', 'The Pink Swan', 1817.39, 1083.23, -89.083, 2027.39, 1283.23, 110.916, 1, 0),
(302, 0, 'GGC1', 'Greenglass College', 964.39, 1044.69, -89.083, 1197.39, 1203.22, 110.916, 0, 0),
(303, 0, 'GGC2', 'Greenglass College', 964.39, 930.89, -89.083, 1166.53, 1044.69, 110.916, 0, 0),
(304, 0, 'LDS', 'Linden Side', 2749.9, 943.234, -89.083, 2923.39, 1198.99, 110.916, 1, 0),
(305, 0, 'LVA1', 'LVA Freight Depot', 1457.39, 863.229, -89.083, 1777.4, 1143.21, 110.916, 1, 0),
(306, 0, 'LVA2', 'LVA Freight Depot', 1375.6, 919.447, -89.083, 1457.37, 1203.28, 110.916, 0, 0),
(307, 0, 'LVA3', 'LVA Freight Depot', 1277.05, 1087.63, -89.083, 1375.6, 1203.28, 110.916, 0, 0),
(308, 0, 'LVA4', 'LVA Freight Depot', 1315.35, 1044.69, -89.083, 1375.6, 1087.63, 110.916, 0, 0),
(309, 0, 'LVA5', 'LVA Freight Depot', 1236.63, 1163.41, -89.083, 1277.05, 1203.28, 110.916, 0, 0),
(310, 0, 'DRAG', 'The Four Dragons Casino', 1817.39, 863.231, -89.083, 2027.39, 1083.23, 110.916, 1, 0),
(311, 0, 'LOT', 'Come-A-Lot', 2087.39, 943.234, -89.083, 2623.18, 1203.23, 110.916, 1, 0),
(312, 0, 'BINT1', 'Blackfield Intersection', 1166.53, 795.01, -89.083, 1375.6, 1044.69, 110.916, 0, 0),
(313, 0, 'BINT2', 'Blackfield Intersection', 1197.39, 1044.69, -89.083, 1277.05, 1163.39, 110.916, 0, 0),
(314, 0, 'BINT3', 'Blackfield Intersection', 1277.05, 1044.69, -89.083, 1315.35, 1087.63, 110.916, 0, 0),
(315, 0, 'BINT4', 'Blackfield Intersection', 1375.6, 823.228, -89.083, 1457.39, 919.447, 110.916, 0, 0),
(316, 0, 'JTS1', 'Julius Thruway South', 1457.39, 823.228, -89.083, 2377.39, 863.229, 110.916, 0, 0),
(317, 0, 'JTS2', 'Julius Thruway South', 2377.39, 788.893, -89.083, 2537.39, 897.901, 110.916, 0, 0),
(318, 0, 'BFC1', 'Blackfield Chapel', 1375.6, 596.348, -89.083, 1558.09, 823.228, 110.916, 0, 0),
(319, 0, 'BFC2', 'Blackfield Chapel', 1325.6, 596.348, -89.083, 1375.6, 795.01, 110.916, 0, 0),
(320, 0, 'RIE', 'Randolph Industrial Estate', 1558.09, 596.348, -89.083, 1823.08, 823.234, 110.916, 0, 0),
(321, 0, 'LDM', 'Last Dime Motel', 1823.08, 596.348, -89.083, 1997.22, 823.228, 110.916, 0, 0),
(322, 0, 'RSE', 'Rockshore East', 2537.39, 676.549, -89.083, 2902.35, 943.234, 110.916, 1, 0),
(323, 0, 'RSW1', 'Rockshore West', 1997.22, 596.348, -89.083, 2377.39, 823.228, 110.916, 1, 0),
(324, 0, 'ROBAD', 'Tierra Robada', -2997.47, 1659.68, -242.99, -480.539, 2993.87, 900, 0, 0),
(325, 0, 'ROBAD1', 'Tierra Robada', -1213.91, 596.348, -242.99, -480.539, 1659.68, 900, 0, 0),
(326, 0, 'ELQUE', 'El Quebrados', -1645.23, 2498.52, 0, -1372.14, 2777.85, 200, 0, 0),
(327, 0, 'SUNNN', 'Bayside', -2741.07, 2175.15, 0, -2353.17, 2722.79, 200, 0, 0),
(328, 0, 'BYTUN', 'Bayside Tunnel', -2290.19, 2548.29, -89.083, -1950.19, 2723.29, 110.916, 0, 0),
(329, 0, 'ALDEA', 'Aldea Malvada', -1372.14, 2498.52, 0, -1277.59, 2615.35, 200, 1, 0),
(330, 0, 'SUNMA', 'Bayside Marina', -2353.17, 2275.79, 0, -2153.17, 2475.79, 200, 0, 0),
(331, 0, 'BARRA', 'Las Barrancas', -926.13, 1398.73, 0, -719.234, 1634.69, 200, 1, 0),
(332, 0, 'ROBINT', 'Robada Intersection', -1119.01, 1178.93, -89.083, -862.025, 1351.45, 110.916, 0, 0),
(333, 0, 'BONE', 'Bone County', -480.539, 596.348, -242.99, 869.46, 2993.87, 900, 0, 0),
(334, 0, 'PAYAS', 'Las Payasadas', -354.332, 2580.36, 0, -133.625, 2816.82, 200, 0, 0),
(335, 0, 'VALLE', 'Valle Ocultado', -936.668, 2611.44, 0, -715.96, 2847.9, 200, 0, 0),
(336, 0, 'ELCA', 'El Castillo del Diablo', -464.515, 2217.68, 0, -208.57, 2580.36, 200, 1, 0),
(337, 0, 'ELCA1', 'El Castillo del Diablo', -208.57, 2123.01, 0, 114.032, 2337.18, 200, 1, 0),
(338, 0, 'ELCA2', 'El Castillo del Diablo', -208.57, 2337.18, 0, 8.429, 2487.18, 200, 0, 0),
(339, 0, 'ARCO', 'Arco del Oeste', -901.129, 2221.86, 0, -592.09, 2571.97, 200, 1, 0),
(340, 0, 'MEAD', 'Verdant Meadows', 37.032, 2337.18, 0, 435.988, 2677.9, 200, 0, 0),
(341, 0, 'BRUJA', 'Las Brujas', -365.166, 2123.01, 0, -208.57, 2217.68, 200, 1, 0),
(342, 0, 'TOM', 'Regular Tom', -405.769, 1712.86, 0, -276.718, 1892.75, 200, 1, 0),
(343, 0, 'REST', 'Restricted Area', -91.585, 1655.05, -50, 421.234, 2123.01, 250, 0, 0),
(344, 0, 'PALMS', 'Green Palms', 176.58, 1305.45, 0, 338.657, 1520.72, 200, 0, 0),
(345, 0, 'OCTAN', 'Octane Springs', 338.657, 1228.51, 0, 664.307, 1655.05, 200, 0, 0),
(346, 0, 'CARSO', 'Fort Carson', -376.233, 826.325, 0, 123.717, 1220.44, 200, 0, 0),
(347, 0, 'QUARY', 'Hunter Quarry', 337.243, 710.84, -115.238, 860.554, 1031.71, 203.761, 0, 0),
(348, 0, 'LSINL', 'Los Santos Inlet', -321.743, -2224.43, -89.083, 44.614, -1724.43, 110.916, 0, 0),
(349, 0, 'FLINW', 'Flint Water', -314.425, -753.874, -89.083, -106.338, -463.072, 110.916, 0, 0),
(350, 0, 'SANB1', 'San Fierro Bay', -2616.4, 1501.21, 0, -1996.66, 1659.68, 200, 1, 0),
(351, 0, 'SANB2', 'San Fierro Bay', -2616.4, 1659.68, 0, -1996.66, 2175.15, 200, 0, 0),
(352, 0, 'SHERR', 'Sherman Reservoir', -789.736, 1659.68, -89.083, -599.505, 1929.41, 110.916, 0, 0),
(353, 0, 'SASO', 'San Andreas Sound', 2450.39, 385.502, -100, 2759.25, 562.348, 200, 0, 0),
(354, 0, 'GANTB', 'Gant Bridge', -2741.45, 1659.68, 0, -2616.4, 2175.15, 200, 0, 0),
(355, 0, 'GANTB1', 'Gant Bridge', -2741.07, 1490.47, 0, -2616.4, 1659.68, 200, 0, 0),
(356, 0, 'DAM', 'The Sherman Dam', -968.771, 1929.41, 0, -481.126, 2155.26, 200, 0, 0),
(357, 0, 'GARV', 'Garver Bridge', -1339.89, 828.129, -89.083, -1213.91, 1057.04, 110.916, 0, 0),
(358, 0, 'GARV1', 'Garver Bridge', -1213.91, 950.021, -89.083, -1087.93, 1178.93, 110.916, 0, 0),
(359, 0, 'GARV2', 'Garver Bridge', -1499.89, 696.442, -179.615, -1339.89, 925.353, 20.384, 0, 0),
(360, 0, 'KINC', 'Kincaid Bridge', -1339.89, 599.218, -89.083, -1213.91, 828.129, 110.916, 0, 0),
(361, 0, 'KINC1', 'Kincaid Bridge', -1213.91, 721.111, -89.083, -1087.93, 950.021, 110.916, 0, 0),
(362, 0, 'KINC2', 'Kincaid Bridge', -1087.93, 855.369, -89.083, -961.95, 986.281, 110.916, 0, 0),
(363, 0, 'FALLO', 'Fallow Bridge', 434.341, 366.571, 0, 603.034, 555.679, 200, 0, 0),
(364, 0, 'MART', 'Martin Bridge', -222.179, 293.324, 0, -122.125, 476.464, 200, 0, 0),
(365, 0, 'MAKO', 'The Mako Span', 1664.62, 401.75, 0, 1785.14, 567.203, 200, 0, 0),
(366, 0, 'FRED', 'Frederick Bridge', 2759.25, 296.501, 0, 2774.25, 594.757, 200, 0, 0),
(367, 0, 'VERO2', 'Verona Beach', 1046.15, -1722.26, -89.0839, 1161.52, -1577.59, 110.916, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tuning_objects`
--

CREATE TABLE `tuning_objects` (
  `ID` int(11) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `MODELID` int(11) NOT NULL,
  `OFF_X` float NOT NULL,
  `OFF_Y` float NOT NULL,
  `OFF_Z` float NOT NULL,
  `ROT_X` float NOT NULL,
  `ROT_Y` float NOT NULL,
  `ROT_Z` float NOT NULL,
  `COLOR_0` int(11) NOT NULL,
  `COLOR_1` int(11) NOT NULL,
  `COLOR_2` int(11) NOT NULL,
  `COLOR_3` int(11) NOT NULL,
  `COLOR_4` int(11) NOT NULL,
  `TEXT` varchar(32) NOT NULL,
  `FONT` varchar(32) NOT NULL,
  `FONT_SIZE` int(11) NOT NULL,
  `FONT_BOLD` int(11) NOT NULL,
  `FONT_COLOR` int(11) NOT NULL,
  `ID_VEHICLE` int(10) NOT NULL,
  `ATTACHED` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(129) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `posA` float NOT NULL DEFAULT 0,
  `EntradaX` float NOT NULL DEFAULT 0,
  `EntradaY` float NOT NULL DEFAULT 0,
  `EntradaZ` float NOT NULL DEFAULT 0,
  `DeathX` float NOT NULL DEFAULT 0,
  `DeathY` float NOT NULL DEFAULT 0,
  `Sanciones` int(11) NOT NULL DEFAULT 0,
  `DeathZ` float NOT NULL DEFAULT 0,
  `DeathA` float NOT NULL DEFAULT 0,
  `Admin` int(1) NOT NULL DEFAULT 0,
  `Fecha_Ban` varchar(32) NOT NULL DEFAULT '16/02/2020',
  `Sexo` varchar(1) NOT NULL DEFAULT '0',
  `Edad` int(10) NOT NULL DEFAULT 0,
  `Skin` varchar(3) NOT NULL DEFAULT '0',
  `Vida` float NOT NULL,
  `Chaleco` float NOT NULL,
  `Registro` varchar(15) NOT NULL DEFAULT '19/7/2014',
  `Money` int(30) NOT NULL DEFAULT 0,
  `Banco` int(30) NOT NULL DEFAULT 0,
  `Moneda` int(30) NOT NULL DEFAULT 500,
  `Cargos` varchar(1) NOT NULL DEFAULT '0',
  `Duty` varchar(1) NOT NULL DEFAULT '0',
  `SkinTrabajo` varchar(3) NOT NULL DEFAULT '0',
  `Nivel` varchar(2) NOT NULL DEFAULT '5',
  `Experiencia` varchar(3) NOT NULL DEFAULT '0',
  `Agonizando` varchar(1) NOT NULL DEFAULT '0',
  `GPS` varchar(1) NOT NULL DEFAULT '0',
  `Radio` varchar(1) NOT NULL DEFAULT '0',
  `Numero` varchar(10) NOT NULL DEFAULT '0',
  `Guia` int(1) NOT NULL DEFAULT 1,
  `Sonidos` int(1) NOT NULL DEFAULT 1,
  `Muteos` int(1) NOT NULL DEFAULT 1,
  `Barras` int(1) NOT NULL DEFAULT 1,
  `Alerta` int(1) NOT NULL DEFAULT 1,
  `Velocimetro` int(1) NOT NULL DEFAULT 1,
  `valortotal` int(10) NOT NULL,
  `Interior` int(10) NOT NULL DEFAULT 0,
  `MundoVirtual` int(10) NOT NULL DEFAULT 0,
  `Materiales` int(10) NOT NULL DEFAULT 15000,
  `Sed` int(255) NOT NULL DEFAULT 8,
  `Trabajo` int(2) NOT NULL DEFAULT 0,
  `Trabajo2` int(2) NOT NULL DEFAULT 0,
  `Faccion` varchar(5) NOT NULL DEFAULT '0',
  `Rango` varchar(10) DEFAULT '0',
  `suspendido` int(11) NOT NULL DEFAULT 0,
  `Crack` int(10) NOT NULL DEFAULT 5000,
  `Cocaina` int(10) NOT NULL DEFAULT 0,
  `Heroina` int(10) NOT NULL DEFAULT 0,
  `Medicamentos` int(10) NOT NULL DEFAULT 5000,
  `Marihuana` int(10) NOT NULL,
  `Agenda` varchar(2) NOT NULL DEFAULT '0',
  `Registro_U` varchar(32) NOT NULL,
  `username_low` varchar(32) NOT NULL DEFAULT 'ninguno',
  `LicenciaVuelo` varchar(5) NOT NULL DEFAULT '1',
  `TiempoPD` int(15) NOT NULL DEFAULT 0,
  `TiempoJail` int(30) NOT NULL DEFAULT 0,
  `Repuestos` int(3) NOT NULL DEFAULT 0,
  `hx` float NOT NULL,
  `hy` float NOT NULL,
  `hz` float NOT NULL,
  `Baneado` varchar(2) NOT NULL DEFAULT '0',
  `Banpor` varchar(64) NOT NULL DEFAULT 'Ninguno',
  `Baneante` int(11) NOT NULL,
  `razon` varchar(32) NOT NULL DEFAULT 'Ninguno',
  `IP` varchar(15) NOT NULL,
  `TiempoDuda` int(11) NOT NULL DEFAULT 0,
  `TiempoAnuncio` int(11) NOT NULL DEFAULT 0,
  `Online` int(1) NOT NULL DEFAULT 0,
  `Email` varchar(50) NOT NULL DEFAULT 'notiene@email.com',
  `EMS` int(11) NOT NULL DEFAULT 0,
  `TiempoCarcelS` int(3) NOT NULL DEFAULT 0,
  `Pais_Registro` varchar(32) NOT NULL DEFAULT 'Desconocido',
  `Stats` int(1) NOT NULL DEFAULT 0,
  `EnCasa` varchar(10) NOT NULL DEFAULT '0',
  `EnRopero` varchar(10) NOT NULL DEFAULT '0',
  `EnGarage` int(10) NOT NULL DEFAULT 0,
  `VIP` int(2) NOT NULL DEFAULT 0,
  `FinDia` int(2) NOT NULL DEFAULT 0,
  `FinMes` int(2) NOT NULL DEFAULT 0,
  `FinAno` int(4) NOT NULL DEFAULT 0,
  `FinDiaL` int(11) NOT NULL,
  `hprecio` int(10) NOT NULL DEFAULT 0,
  `h2precio` int(10) NOT NULL DEFAULT 0,
  `hmoneda` int(1) NOT NULL DEFAULT 0,
  `h2moneda` int(1) NOT NULL DEFAULT 0,
  `CasaID1` int(5) NOT NULL DEFAULT 0,
  `CasaID2` int(5) NOT NULL DEFAULT 0,
  `CasaID3` int(5) NOT NULL,
  `CasaID4` int(5) NOT NULL,
  `WP0` varchar(2) NOT NULL DEFAULT '0',
  `WP1` varchar(2) NOT NULL DEFAULT '0',
  `WP2` varchar(2) NOT NULL DEFAULT '0',
  `WP3` varchar(2) NOT NULL DEFAULT '0',
  `WP4` varchar(2) NOT NULL DEFAULT '0',
  `WP5` varchar(2) NOT NULL DEFAULT '0',
  `WP6` varchar(2) NOT NULL DEFAULT '0',
  `WP7` varchar(2) NOT NULL DEFAULT '0',
  `WP8` varchar(2) NOT NULL DEFAULT '0',
  `WP9` varchar(2) NOT NULL DEFAULT '0',
  `WP10` varchar(2) NOT NULL DEFAULT '0',
  `WP11` varchar(2) NOT NULL DEFAULT '0',
  `WP12` varchar(2) NOT NULL DEFAULT '0',
  `NivelArmero` varchar(3) NOT NULL DEFAULT '8',
  `ExpArmero` varchar(3) NOT NULL DEFAULT '0',
  `NivelMecanico` int(3) NOT NULL DEFAULT 1,
  `ExpMecanico` int(3) NOT NULL DEFAULT 0,
  `NivelCamionero` varchar(3) NOT NULL DEFAULT '1',
  `ExpCamionero` varchar(3) NOT NULL DEFAULT '0',
  `NivelTransportista` int(3) NOT NULL DEFAULT 1,
  `ExpTransportista` int(3) NOT NULL DEFAULT 0,
  `NivelBasurero` int(3) NOT NULL DEFAULT 1,
  `ExpBasurero` int(3) NOT NULL DEFAULT 0,
  `NivelLadron` int(3) NOT NULL DEFAULT 1,
  `ExpLadron` int(3) NOT NULL DEFAULT 0,
  `NivelMedico` int(3) NOT NULL DEFAULT 1,
  `ExpMedico` int(3) NOT NULL DEFAULT 0,
  `RopaBasu` int(2) NOT NULL DEFAULT 0,
  `RopaMedi` int(2) NOT NULL DEFAULT 0,
  `RopaMeca` int(2) DEFAULT 0,
  `RopaMine` int(2) NOT NULL DEFAULT 0,
  `Martillo` int(2) NOT NULL DEFAULT 0,
  `Destornillador` int(2) NOT NULL DEFAULT 0,
  `Barreta` int(2) NOT NULL DEFAULT 0,
  `Balde` int(2) NOT NULL DEFAULT 0,
  `EstacionamientoID` int(5) NOT NULL DEFAULT 0,
  `Estacionado1` int(5) NOT NULL,
  `Estacionado2` int(5) NOT NULL,
  `Estacionado3` int(5) NOT NULL,
  `Estacionado4` int(5) NOT NULL,
  `EnEstacionamiento` int(5) NOT NULL DEFAULT 0,
  `NivelMinero` int(3) NOT NULL DEFAULT 1,
  `ExpMinero` int(3) NOT NULL DEFAULT 0,
  `Muteado` int(11) NOT NULL DEFAULT 0,
  `arrestado` int(10) NOT NULL DEFAULT 0,
  `horasjugadas` int(10) NOT NULL DEFAULT 0,
  `TipoCarcel` varchar(3) NOT NULL DEFAULT '0',
  `SocioHP` varchar(3) NOT NULL DEFAULT '0',
  `Hambre` int(255) NOT NULL DEFAULT 8,
  `Patines` int(2) NOT NULL DEFAULT 0,
  `TieneEmisora` int(2) NOT NULL DEFAULT 0,
  `NombreEmisora` varchar(90) NOT NULL,
  `PuntosCarrera` int(4) NOT NULL DEFAULT 0,
  `Conexion` varchar(90) NOT NULL DEFAULT '1',
  `Semillas` int(5) NOT NULL DEFAULT 0,
  `XE` float NOT NULL,
  `YE` float NOT NULL,
  `ZE` float NOT NULL,
  `Afinidad1` int(11) NOT NULL DEFAULT 0,
  `Afinidad2` int(11) NOT NULL DEFAULT 0,
  `Afinidad3` int(11) NOT NULL DEFAULT 0,
  `Afinidad4` int(11) NOT NULL DEFAULT 0,
  `Afinidad5` int(11) NOT NULL DEFAULT 0,
  `Afinidad6` int(11) NOT NULL DEFAULT 0,
  `vAlarma` int(11) NOT NULL DEFAULT 0,
  `vAAlarma` int(11) NOT NULL DEFAULT 0,
  `v2Alarma` int(11) NOT NULL DEFAULT 0,
  `vAAlarma2` int(11) NOT NULL DEFAULT 0,
  `v3Alarma` int(11) NOT NULL DEFAULT 0,
  `vAAlarma3` int(11) NOT NULL DEFAULT 0,
  `v4Alarma` int(11) NOT NULL DEFAULT 0,
  `vAAlarma4` int(11) NOT NULL DEFAULT 0,
  `BaneosHechos` int(11) NOT NULL DEFAULT 0,
  `BaneosDia` int(11) NOT NULL DEFAULT 0,
  `Bloqueado` int(11) NOT NULL DEFAULT 0,
  `RazonSan` varchar(128) NOT NULL DEFAULT 'Nada',
  `Striptease` int(11) NOT NULL DEFAULT 0,
  `TiempoOffline` int(11) NOT NULL,
  `Acento` int(11) NOT NULL DEFAULT 0,
  `BackPack` int(11) NOT NULL,
  `NivelTrailero` int(11) NOT NULL DEFAULT 1,
  `ExpTrailero` int(11) NOT NULL,
  `Lcoins` int(11) NOT NULL,
  `MILITAR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

CREATE TABLE `vehicles` (
  `ID` int(11) NOT NULL,
  `propietario` varchar(25) NOT NULL,
  `modelo` int(5) NOT NULL,
  `precio` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `a` float NOT NULL,
  `color1` varchar(3) NOT NULL,
  `color2` varchar(3) NOT NULL,
  `comprable` varchar(1) NOT NULL,
  `moneda` int(5) NOT NULL DEFAULT 0,
  `faccion` int(10) NOT NULL DEFAULT 0,
  `trabajo` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehicles`
--

INSERT INTO `vehicles` (`ID`, `propietario`, `modelo`, `precio`, `x`, `y`, `z`, `a`, `color1`, `color2`, `comprable`, `moneda`, `faccion`, `trabajo`) VALUES
(1, 'Gobierno', 596, 0, 1604.21, -1607.02, 13.1746, 87.4326, '0', '1', '0', 0, 0, 0),
(2, 'Gobierno', 596, 0, 1603.85, -1617.49, 13.129, 85.9502, '0', '1', '0', 0, 0, 0),
(3, 'Gobierno', 596, 0, 1603.49, -1623.18, 13.129, 87.0255, '0', '1', '0', 0, 0, 0),
(4, 'Gobierno', 596, 0, 1603.43, -1628.43, 13.2271, 87, '0', '1', '0', 0, 0, 0),
(5, 'Gobierno', 596, 0, 1570, -1606.25, 13.028, 179.513, '0', '1', '0', 0, 0, 0),
(6, 'Gobierno', 596, 0, 1582.3, -1606.19, 13.028, 179.513, '0', '1', '0', 0, 0, 0),
(7, 'Gobierno', 596, 0, 1563.95, -1606.42, 13.028, 179.513, '0', '1', '0', 0, 0, 0),
(8, 'Gobierno', 596, 0, 1576.23, -1606.29, 13.028, 179.513, '0', '1', '0', 0, 0, 0),
(9, 'Gobierno', 596, 0, 1603.99, -1612.1, 13.1746, 87.4326, '0', '1', '0', 0, 0, 0),
(10, 'Gobierno', 596, 0, 1535.83, -1668.24, 13.0436, 359.555, '0', '1', '0', 0, 0, 0),
(11, 'Gobierno', 596, 0, 1535.75, -1678.29, 13.0437, 359.551, '0', '1', '0', 0, 0, 0),
(12, 'Gobierno', 416, 0, 1616.56, 1830.91, 10.9195, 178.945, '1', '3', '0', 0, 0, 0),
(13, 'Gobierno', 416, 0, 1178.3, -1338.5, 14.2, 270, '1', '3', '0', 0, 0, 0),
(14, 'Gobierno', 416, 0, 1179.65, -1308.65, 13.897, 268.682, '1', '3', '0', 0, 0, 0),
(15, 'Gobierno', 416, 0, 1192.11, -1347.71, 13.4992, 180.55, '1', '3', '0', 0, 0, 0),
(16, 'Gobierno', 416, 0, 1209.44, -1348.43, 13.5497, 0.476262, '1', '3', '0', 0, 0, 0),
(17, 'Gobierno', 416, 0, 1209.24, -1318.81, 13.548, 0.4484, '1', '3', '0', 0, 0, 0),
(18, 'Gobierno', 416, 0, 2032.72, -1447.62, 17.2888, 88.6918, '1', '3', '0', 0, 0, 0),
(19, 'Gobierno', 416, 0, 2000.81, -1409.93, 17.1158, 179.339, '1', '3', '0', 0, 0, 0),
(20, 'Gobierno', 416, 0, 1601.15, 1849.37, 10.9196, 178.724, '1', '3', '0', 0, 0, 0),
(21, 'Gobierno', 416, 0, 1611.12, 1839.96, 10.9192, 359.882, '1', '3', '0', 0, 0, 0),
(22, 'Gobierno', 416, 0, 1594.38, 1839.87, 10.9694, 359.98, '1', '3', '0', 0, 0, 0),
(23, 'Gobierno', 416, 0, -2693.72, 624.903, 14.5523, 124.597, '1', '3', '0', 0, 0, 0),
(24, 'Gobierno', 416, 0, -2701.97, 611.621, 14.5533, 163.926, '1', '3', '0', 0, 0, 0),
(25, 'Gobierno', 416, 0, -2698.83, 592.078, 14.5525, 211.119, '1', '3', '0', 0, 0, 0),
(26, 'Gobierno', 416, 0, -2676.72, 630.13, 14.6021, 87.9904, '1', '3', '0', 0, 0, 0),
(27, 'Gobierno', 416, 0, -2648.34, 583.903, 14.6026, 270.434, '1', '3', '0', 0, 0, 0),
(28, 'Gobierno', 532, 0, -373.803, -1534.98, 22.4199, 287.827, '1', '1', '0', 0, 0, 0),
(29, 'Gobierno', 532, 0, -372.074, -1546.07, 22.3238, 277.034, '1', '1', '0', 0, 0, 0),
(30, 'Gobierno', 532, 0, -387.014, -1496.41, 25.9259, 275.834, '1', '1', '0', 0, 0, 0),
(31, 'Gobierno', 532, 0, -383.597, -1508.68, 24.7948, 292.234, '1', '1', '0', 0, 0, 0),
(32, 'Gobierno', 532, 0, -378.054, -1522.55, 23.2702, 291.41, '1', '1', '0', 0, 0, 0),
(33, 'Gobierno', 598, 0, 2277.83, 2442.71, 10.5653, 0.539601, '0', '1', '0', 0, 0, 0),
(34, 'Gobierno', 598, 0, 2269.05, 2442.94, 10.5658, 0.734632, '0', '1', '0', 0, 0, 0),
(35, 'Gobierno', 598, 0, 2256.36, 2442.86, 10.5666, 359.091, '0', '1', '0', 0, 0, 0),
(36, 'Gobierno', 598, 0, 2260.61, 2478.26, 10.5673, 177.463, '0', '1', '0', 0, 0, 0),
(37, 'Gobierno', 598, 0, 2273.19, 2478.21, 10.565, 180.937, '0', '1', '0', 0, 0, 0),
(38, 'Gobierno', 598, 0, 2282.35, 2478.35, 10.5645, 179.952, '0', '1', '0', 0, 0, 0),
(39, 'Gobierno', 598, 0, 2273.54, 2460.66, 10.5684, 181.299, '0', '1', '0', 0, 0, 0),
(40, 'Gobierno', 597, 0, -1634.72, 650.963, 6.95528, 2.03608, '0', '1', '0', 0, 1, 0),
(41, 'Gobierno', 597, 0, -1628.61, 651.29, 6.96142, 0, '0', '1', '0', 0, 1, 0),
(42, 'Gobierno', 597, 0, -1622.04, 651.358, 6.97341, 0, '0', '1', '0', 0, 1, 0),
(43, 'Gobierno', 597, 0, -1615.67, 651.832, 6.91138, 0, '0', '1', '0', 0, 1, 0),
(44, 'Gobierno', 597, 0, -1609.34, 650.495, 6.97994, 0, '0', '1', '0', 0, 1, 0),
(45, 'Gobierno', 597, 0, -1604.17, 651.536, 6.98966, 0, '0', '1', '0', 0, 1, 0),
(46, 'Gobierno', 420, 0, 1803.73, -1904.79, 13.1791, 91.2167, '6', '6', '0', 0, 0, 0),
(47, 'Gobierno', 420, 0, 1804, -1912.51, 13.176, 92.5541, '6', '6', '0', 0, 0, 0),
(48, 'Gobierno', 420, 0, 1804.4, -1921.97, 13.1708, 94.8712, '6', '6', '0', 0, 0, 0),
(49, 'Gobierno', 420, 0, 1794.89, -1932.77, 13.1659, 0, '6', '6', '0', 0, 0, 0),
(50, 'Gobierno', 420, 0, 1787.06, -1932.7, 13.1649, 1.4882, '6', '6', '0', 0, 0, 0),
(51, 'Gobierno', 420, 0, 1775.58, -1913.91, 13.1637, 180.1, '6', '6', '0', 0, 0, 0),
(52, 'Gobierno', 509, 0, 1703.04, -1876.09, 13.0807, 270.348, '1', '1', '0', 0, 0, 0),
(53, 'Gobierno', 509, 0, 1703.31, -1879.1, 13.0807, 269.464, '2', '1', '0', 0, 0, 0),
(54, 'Gobierno', 509, 0, 1703.09, -1881.77, 13.0807, 269.007, '3', '1', '0', 0, 0, 0),
(55, 'Gobierno', 509, 0, 1703.16, -1884.97, 13.0807, 271.961, '4', '1', '0', 0, 0, 0),
(56, 'Gobierno', 509, 0, 1710.91, -1875.39, 13.0807, 178.176, '5', '1', '0', 0, 0, 0),
(57, 'Gobierno', 509, 0, 1718.93, -1875.06, 13.0807, 176.381, '6', '1', '0', 0, 0, 0),
(58, 'Gobierno', 509, 0, 1727.03, -1875.78, 13.0807, 89.5347, '7', '1', '0', 0, 0, 0),
(59, 'Gobierno', 509, 0, 1727.05, -1878.48, 13.0807, 88.3724, '8', '1', '0', 0, 0, 0),
(60, 'Gobierno', 509, 0, 1727.32, -1881.84, 13.0807, 87.3723, '9', '1', '0', 0, 0, 0),
(61, 'Gobierno', 509, 0, 1726.99, -1884.81, 13.0807, 90.4685, '10', '1', '0', 0, 0, 0),
(62, 'Gobierno', 456, 0, -0.633781, -301.214, 5.59914, 89.6779, '1', '1', '0', 0, 0, 4),
(63, 'Gobierno', 456, 0, -0.818442, -308.445, 5.60133, 89.7084, '1', '1', '0', 0, 0, 4),
(64, 'Gobierno', 456, 0, -0.909054, -315.343, 5.60278, 88.5476, '1', '1', '0', 0, 0, 4),
(65, 'Gobierno', 456, 0, -1.01086, -322.073, 5.6028, 90.5201, '1', '1', '0', 0, 0, 4),
(66, 'Gobierno', 456, 0, -0.964925, -329.168, 5.60293, 89.5195, '1', '1', '0', 0, 0, 4),
(67, 'Gobierno', 456, 0, -0.943674, -336.488, 5.60292, 90.1639, '1', '1', '0', 0, 0, 4),
(68, 'Gobierno', 456, 0, -0.991578, -343.484, 5.60294, 91.9161, '1', '1', '0', 0, 0, 4),
(69, 'Gobierno', 456, 0, -0.848885, -350.411, 5.60233, 90.6522, '1', '1', '0', 0, 0, 4),
(70, 'Gobierno', 456, 0, -0.838468, -357.354, 5.60265, 90.6875, '1', '1', '0', 0, 0, 4),
(71, 'Gobierno', 456, 0, -0.867674, -364.771, 5.60298, 90.0443, '1', '1', '0', 0, 0, 4),
(72, 'Gobierno', 609, 0, -69.9897, -378.394, 5.49725, 359.565, '0', '0', '0', 0, 0, 4),
(73, 'Gobierno', 609, 0, -63.3029, -378.359, 5.49973, 0.546819, '0', '0', '0', 0, 0, 4),
(74, 'Gobierno', 609, 0, -56.5266, -378.438, 5.50014, 359.495, '0', '0', '0', 0, 0, 4),
(75, 'Gobierno', 609, 0, -49.8726, -378.432, 5.49867, 359.761, '0', '0', '0', 0, 0, 4),
(76, 'Gobierno', 609, 0, -43.255, -378.535, 5.49874, 358.272, '0', '0', '0', 0, 0, 4),
(77, 'Gobierno', 609, 0, -29.7069, -378.659, 5.4955, 359.426, '0', '0', '0', 0, 0, 4),
(78, 'Gobierno', 609, 0, -36.3503, -378.667, 5.49812, 0.206542, '0', '0', '0', 0, 0, 4),
(79, 'Gobierno', 609, 0, -23.2312, -378.557, 5.49668, 0.485798, '0', '0', '0', 0, 0, 4),
(80, 'Gobierno', 609, 0, -16.3377, -378.56, 5.49848, 357.726, '0', '0', '0', 0, 0, 4),
(81, 'Gobierno', 609, 0, -9.7952, -378.652, 5.4978, 357.958, '0', '0', '0', 0, 0, 4),
(82, 'Gobierno', 609, 0, -3.13783, -378.576, 5.50046, 358.803, '0', '0', '0', 0, 0, 4),
(83, 'Gobierno', 523, 0, 1570.59, -1709.75, 5.4615, 2.0359, '1', '1', '0', 0, 0, 0),
(84, 'Gobierno', 523, 0, 1574.34, -1709.23, 5.4581, 358.051, '1', '1', '0', 0, 0, 0),
(85, 'Gobierno', 523, 0, 1578.79, -1709.33, 5.4587, 2.4554, '1', '1', '0', 0, 0, 0),
(86, 'Gobierno', 523, 0, 1583.58, -1709.6, 5.4615, 0.1382, '1', '1', '0', 0, 0, 0),
(87, 'Gobierno', 523, 0, 1587.66, -1709.85, 5.4616, 358.432, '1', '1', '0', 0, 0, 0),
(88, 'Gobierno', 601, 0, 1530.55, -1646.76, 5.6494, 181.887, '1', '1', '0', 0, 0, 0),
(89, 'Gobierno', 601, 0, 1538.79, -1646.99, 5.6493, 181.301, '1', '1', '0', 0, 0, 0),
(90, 'Gobierno', 528, 0, 1544.64, -1612.51, 13.3795, 268.785, '1', '1', '0', 0, 0, 0),
(91, 'Gobierno', 528, 0, 1545.13, -1605.26, 13.4281, 269.528, '1', '1', '0', 0, 0, 0),
(92, 'Gobierno', 497, 0, -1679.61, 705.844, 30.779, 89.5481, '0', '1', '0', 0, 0, 0),
(93, 'Gobierno', 411, 20, -1959.73, 269.813, 35.2072, 42.6121, '64', '1', '1', 1, 0, 0),
(94, 'Gobierno', 415, 15, 1471.98, -1773.74, 13.6562, 322.616, '40', '1', '1', 1, 0, 0),
(95, 'Gobierno', 451, 15, 1458.65, -1774.39, 13.5936, 13.7521, '125', '125', '1', 1, 0, 0),
(96, 'Gobierno', 604, 3000, 1670.37, -1886.22, 13.2884, 57.7363, '18', '25', '1', 0, 0, 0),
(97, 'Gobierno', 542, 4000, 1631.92, -1900.45, 13.2968, 270.792, '123', '49', '1', 0, 0, 0),
(98, 'Gobierno', 404, 5000, 1668.06, -1899.14, 13.2818, 41.4088, '115', '117', '1', 0, 0, 0),
(99, 'Gobierno', 561, 70000, 1501.68, -1772.28, 13.9387, 43.3255, '8', '17', '1', 0, 0, 0),
(100, 'Gobierno', 479, 3300, 1669.17, -1892.31, 13.342, 51.0409, '101', '78', '1', 0, 0, 0),
(101, 'Gobierno', 500, 45000, 1503.09, -1747.13, 13.6621, 359.295, '3', '1', '1', 0, 0, 0),
(102, 'Gobierno', 589, 42000, 1426.44, -1802.21, 13.5956, 224.17, '31', '31', '1', 0, 0, 0),
(103, 'Gobierno', 602, 38000, 1501.29, -1774.12, 19.3229, 75.3057, '70', '1', '1', 0, 0, 0),
(104, 'Gobierno', 603, 45000, 1456.81, -1794.69, 13.7812, 220.783, '58', '1', '1', 0, 0, 0),
(105, 'Gobierno', 506, 185000, 1457.95, -1779.3, 19.1696, 1.76125, '1', '1', '1', 0, 0, 0),
(106, 'Gobierno', 565, 60000, 1425.27, -1808.91, 13.5666, 240.479, '42', '42', '1', 0, 0, 0),
(107, 'Gobierno', 445, 7000, 1631.71, -1909.92, 13.426, 272.908, '66', '97', '1', 0, 0, 0),
(108, 'Gobierno', 478, 8000, -1992.02, 250.674, 35.1672, 83.9691, '66', '1', '1', 0, 0, 0),
(109, 'Gobierno', 489, 70000, -1991, 256.413, 35.3156, 85.6616, '112', '120', '1', 0, 0, 0),
(110, 'Gobierno', 579, 75000, 1483.47, -1746.47, 13.4818, 359.088, '53', '53', '1', 0, 0, 0),
(111, 'Gobierno', 560, 75000, 523.629, -1290.79, 16.9475, 1.31224, '125', '125', '1', 0, 0, 0),
(112, 'Gobierno', 551, 10000, 519.455, -1290.61, 17.0424, 358.732, '120', '120', '1', 0, 0, 0),
(113, 'Gobierno', 587, 80000, 527.897, -1290.87, 16.97, 359.291, '3', '3', '1', 0, 0, 0),
(114, 'Gobierno', 566, 25000, 532.166, -1290.74, 17.0228, 0, '60', '60', '1', 0, 0, 0),
(115, 'Gobierno', 533, 20000, 538.966, -1290.96, 16.9513, 2.1154, '62', '62', '1', 0, 0, 0),
(116, 'Gobierno', 496, 22500, 548.238, -1291.49, 16.9644, 4.19405, '25', '25', '1', 0, 0, 0),
(117, 'Gobierno', 412, 19000, 555.341, -1290.13, 17.0833, 0.074019, '6', '6', '1', 0, 0, 0),
(118, 'Gobierno', 463, 55000, 2137.76, -1139.8, 24.9366, 119.298, '125', '125', '1', 0, 0, 0),
(119, 'Gobierno', 475, 42000, 2135.88, -1125.79, 25.2924, 83.1302, '30', '96', '1', 0, 0, 0),
(120, 'Gobierno', 545, 33000, 2136.5, -1131.19, 25.4853, 108.837, '66', '66', '1', 0, 0, 0),
(121, 'Gobierno', 491, 32000, 2135.85, -1135.86, 25.4412, 106.868, '25', '25', '1', 0, 0, 0),
(122, 'Gobierno', 567, 70000, 2119.63, -1124.74, 25.2432, 303.711, '93', '64', '1', 0, 0, 0),
(123, 'Gobierno', 534, 60000, 2119.74, -1131.79, 25.0424, 302.697, '37', '37', '1', 0, 0, 0),
(124, 'Gobierno', 535, 35000, 2119.04, -1139.21, 24.7991, 306.113, '3', '1', '1', 0, 0, 0),
(125, 'Gobierno', 554, 42000, 1477.53, -1746.75, 13.6335, 1.2896, '15', '32', '1', 0, 0, 0),
(126, 'Gobierno', 400, 70000, 1472.29, -1746.28, 13.6392, 359.982, '123', '1', '1', 0, 0, 0),
(127, 'Gobierno', 414, 90000, 1460.06, -1746.98, 13.6406, 359.183, '28', '1', '1', 0, 0, 0),
(128, 'Gobierno', 482, 120000, 1508.46, -1747.09, 13.6681, 359.023, '37', '37', '1', 0, 0, 0),
(129, 'Gobierno', 480, 225000, -1957.33, 303.683, 35.2432, 133.499, '12', '12', '1', 0, 0, 0),
(130, 'Gobierno', 578, 230000, -1990.71, 243.865, 35.7954, 84.9635, '1', '1', '1', 0, 0, 0),
(131, 'Gobierno', 477, 250000, -1960.17, 257.467, 35.2273, 43.2015, '121', '1', '1', 0, 0, 0),
(132, 'Gobierno', 409, 1000000, 1467.11, -1747.87, 13.3492, 0.3858, '1', '1', '1', 0, 0, 0),
(133, 'Gobierno', 408, 0, -126.498, -1501.46, 4.21421, 136.448, '1', '1', '0', 0, 0, 6),
(134, 'Gobierno', 408, 0, -120.156, -1508.04, 4.13295, 136.905, '1', '1', '0', 0, 0, 6),
(135, 'Gobierno', 408, 0, -111.604, -1587.82, 3.18897, 122.793, '1', '1', '0', 0, 0, 6),
(136, 'Gobierno', 408, 0, -109.125, -1592.32, 3.10105, 121.934, '1', '1', '0', 0, 0, 6),
(137, 'Gobierno', 408, 0, -105.97, -1597.38, 3.09272, 123.696, '1', '1', '0', 0, 0, 6),
(138, 'Gobierno', 408, 0, -102.576, -1601.98, 3.09469, 122.508, '1', '1', '0', 0, 0, 6),
(139, 'Gobierno', 408, 0, -114.73, -1613.18, 3.19812, 16.9179, '1', '1', '0', 0, 0, 6),
(140, 'Gobierno', 408, 0, -120.712, -1613.97, 3.84595, 13.2772, '1', '1', '0', 0, 0, 6),
(141, 'Gobierno', 408, 0, -186.688, -1555.44, 7.297, 229.635, '1', '1', '0', 0, 0, 6),
(142, 'Gobierno', 408, 0, -189.85, -1560.93, 7.2426, 227.564, '1', '1', '0', 0, 0, 6),
(143, 'Gobierno', 453, 0, 2822.07, -2624.44, -0.0876, 89.6143, '1', '1', '0', 0, 0, 10),
(144, 'Gobierno', 453, 0, 2821.58, -2618.06, -0.2381, 82.3052, '1', '1', '0', 0, 0, 10),
(145, 'Gobierno', 453, 0, 2822.26, -2611.5, -0.7854, 91.6937, '1', '1', '0', 0, 0, 10),
(146, 'Gobierno', 453, 0, 2821.52, -2604.74, -0.1236, 87.5986, '1', '1', '0', 0, 0, 10),
(147, 'Gobierno', 453, 0, 2821.52, -2596.74, -0.3082, 90.4083, '1', '1', '0', 0, 0, 10),
(148, 'Gobierno', 453, 0, 2822.91, -2584.06, -0.3235, 87.4044, '1', '1', '0', 0, 0, 10),
(149, 'Gobierno', 453, 0, 2839.35, -2625.99, 0.2129, 272.277, '1', '1', '0', 0, 0, 10),
(150, 'Gobierno', 453, 0, 2839.33, -2617.7, -0.6352, 273.978, '1', '1', '0', 0, 0, 10),
(151, 'Gobierno', 453, 0, 2839.43, -2608.04, 0.1093, 265.808, '1', '1', '0', 0, 0, 10),
(152, 'Gobierno', 453, 0, 2840.28, -2598.57, 0.1278, 270.083, '1', '1', '0', 0, 0, 10),
(153, 'Gobierno', 453, 0, 2838.01, -2586.62, -0.7477, 273.957, '1', '1', '0', 0, 0, 10),
(154, 'Gobierno', 453, 0, 2838.26, -2576.27, -0.7139, 274.884, '1', '1', '0', 0, 0, 10),
(155, 'Gobierno', 453, 0, 2822.48, -2590.11, 0.068, 88.2848, '1', '1', '0', 0, 0, 10),
(156, 'Gobierno', 453, 0, 2839.15, -2592.76, -0.0994, 264.828, '1', '1', '0', 0, 0, 10),
(157, 'Gobierno', 453, 0, 2801.81, -2583.29, -0.7696, 181.831, '1', '1', '0', 0, 0, 10),
(158, 'Gobierno', 466, 5000, 1659.95, -1901.61, 13.2939, 359.81, '18', '1', '1', 0, 0, 0),
(159, 'Gobierno', 429, 15, -1953.59, 298.972, 35.1484, 142.652, '7', '1', '1', 1, 0, 0),
(160, 'Gobierno', 517, 6500, 1632.2, -1904.55, 13.4067, 269.611, '1', '3', '1', 0, 0, 0),
(161, 'Gobierno', 536, 40000, 2119.9, -1144.58, 24.3798, 299.297, '1', '1', '1', 0, 0, 0),
(162, 'Gobierno', 580, 32000, 2136.3, -1144.72, 24.637, 95.8218, '6', '6', '1', 0, 0, 0),
(163, 'Gobierno', 598, 0, 283.61, 1429.48, 10.3312, 88.203, '0', '1', '0', 0, 0, 0),
(164, 'Gobierno', 598, 0, 283.509, 1433.61, 10.3331, 89.0617, '0', '1', '0', 0, 0, 0),
(165, 'Gobierno', 598, 0, 283.678, 1437.77, 10.3325, 89.1797, '0', '1', '0', 0, 0, 0),
(166, 'Gobierno', 497, 0, 256.253, 1472.07, 12.8248, 90.0708, '0', '1', '0', 0, 0, 0),
(167, 'Gobierno', 532, 0, -31.229, 61.6207, 4.116, 67.7852, '1', '1', '0', 0, 0, 0),
(168, 'Gobierno', 532, 0, -25.6985, 75.0524, 4.0985, 73.7121, '1', '1', '0', 0, 0, 0),
(169, 'Gobierno', 532, 0, -21.0595, 88.5285, 4.1118, 66.7985, '1', '1', '0', 0, 0, 0),
(170, 'Gobierno', 532, 0, -54.3132, 92.1332, 4.1124, 249.363, '1', '1', '0', 0, 0, 0),
(171, 'Gobierno', 532, 0, -57.875, 80.2766, 4.0246, 251.74, '1', '1', '0', 0, 0, 0),
(172, 'Gobierno', 497, 0, 1573.21, -1644.8, 28.5895, 92.4205, '0', '1', '0', 0, 0, 0),
(173, 'Gobierno', 497, 0, 1565.3, -1705.45, 28.5719, 88.2796, '0', '1', '0', 0, 0, 0),
(174, 'Gobierno', 584, 0, -226.155, -191.571, 2.55408, 166.089, '1', '1', '0', 0, 0, 12),
(175, 'Gobierno', 584, 0, -217.844, -193.631, 2.55684, 166.498, '1', '1', '0', 0, 0, 12),
(176, 'Gobierno', 584, 0, -210.735, -195.232, 2.57489, 165.548, '1', '1', '0', 0, 0, 12),
(177, 'Gobierno', 584, 0, -202.923, -197.175, 2.54536, 165.37, '1', '1', '0', 0, 0, 12),
(178, 'Gobierno', 584, 0, -195.173, -199.089, 2.55081, 167.06, '1', '1', '0', 0, 0, 12),
(179, 'Gobierno', 435, 0, -187.747, -200.327, 2.05154, 165.472, '1', '1', '0', 0, 0, 12),
(180, 'Gobierno', 435, 0, -181.66, -201.341, 2.073, 165.662, '1', '1', '0', 0, 0, 12),
(181, 'Gobierno', 435, 0, -176.294, -203.306, 2.05719, 171.012, '1', '1', '0', 0, 0, 12),
(182, 'Gobierno', 435, 0, -170.644, -204.456, 2.06698, 164.767, '1', '1', '0', 0, 0, 12),
(183, 'Gobierno', 435, 0, -164.502, -205.833, 2.05226, 159.042, '1', '1', '0', 0, 0, 12),
(184, 'Gobierno', 510, 0, 1686.59, -2323.81, 12.9909, 87.692, '6', '6', '0', 0, 0, 0),
(185, 'Gobierno', 510, 0, 1695.72, -2324.18, 12.9914, 87.692, '6', '6', '0', 0, 0, 0),
(186, 'Gobierno', 510, 0, 1688.52, -2310.38, 13.155, 182.057, '6', '6', '0', 0, 0, 0),
(187, 'Gobierno', 510, 0, 1677.09, -2310.25, 13.1549, 179.881, '6', '6', '0', 0, 0, 0),
(188, 'Gobierno', 510, 0, 1691.35, -2310.31, 13.1551, 184.031, '6', '6', '0', 0, 0, 0),
(189, 'Gobierno', 510, 0, 1694.23, -2310.27, 13.1549, 179.145, '6', '6', '0', 0, 0, 0),
(190, 'Gobierno', 510, 0, 1696.99, -2310.4, 13.1548, 179.965, '6', '6', '0', 0, 0, 0),
(191, 'Gobierno', 510, 0, 1674.26, -2310.16, 13.1528, 180.408, '6', '6', '0', 0, 0, 0),
(192, 'Gobierno', 510, 0, 1671.39, -2310.3, 13.1558, 178.506, '6', '6', '0', 0, 0, 0),
(193, 'Gobierno', 510, 0, 1668.7, -2310.27, 13.1563, 180.168, '6', '6', '0', 0, 0, 0),
(194, 'Gobierno', 510, 0, 1687.58, -2295.96, 13.1302, 175.068, '6', '6', '0', 0, 0, 0),
(195, 'Gobierno', 510, 0, 1678.22, -2295.99, 13.1442, 179.172, '6', '6', '0', 0, 0, 0),
(207, 'Gobierno', 510, 0, 1687.83, -2302.3, 13.1385, 185.918, '6', '6', '0', 0, 0, 0),
(208, 'Gobierno', 510, 0, 1677.59, -2302.23, 13.1476, 178.571, '6', '6', '0', 0, 0, 0),
(209, 'Gobierno', 510, 0, 1677.53, -2304.91, 13.1472, 178.521, '6', '6', '0', 0, 0, 0),
(210, 'Gobierno', 510, 0, 1687.8, -2304.85, 13.1431, 178.388, '6', '6', '0', 0, 0, 0),
(211, 'Gobierno', 510, 0, 1687.72, -2307.6, 13.1477, 178.388, '6', '6', '0', 0, 0, 0),
(212, 'Gobierno', 510, 0, 1677.86, -2308.31, 13.1486, 178.909, '6', '6', '0', 0, 0, 0),
(213, 'Gobierno', 510, 0, 1695.9, -2314.5, 12.9908, 88.157, '6', '6', '0', 0, 0, 0),
(214, 'Gobierno', 510, 0, 1686.75, -2314.68, 12.9909, 89.723, '6', '6', '0', 0, 0, 0),
(215, 'Gobierno', 510, 0, 1681.77, -2310.9, 13.1556, 179.057, '6', '6', '0', 0, 0, 0),
(216, 'Gobierno', 510, 0, 1684.13, -2310.98, 13.1551, 180.216, '6', '6', '0', 0, 0, 0),
(217, 'Gobierno', 548, 0, -220.538, 2600.12, 64.3968, 180.107, '0', '0', '0', 0, 2, 0),
(218, 'Gobierno', 548, 0, -203.08, 2599.53, 64.3355, 178.239, '0', '0', '0', 0, 2, 0),
(219, 'Gobierno', 548, 0, -279.181, 2602.52, 64.5459, 175.775, '0', '0', '0', 0, 2, 0),
(220, 'Gobierno', 548, 0, -261.197, 2601.83, 64.4697, 179.98, '0', '0', '0', 0, 2, 0),
(221, 'Gobierno', 548, 0, -248.136, 2599.57, 64.4201, 176.414, '0', '0', '0', 0, 2, 0),
(222, 'Gobierno', 548, 0, -233.519, 2599.71, 64.3428, 180.249, '0', '0', '0', 0, 2, 0),
(223, 'Gobierno', 520, 0, -222.002, 2772.9, 63.3985, 178.853, '0', '0', '0', 0, 2, 0),
(224, 'Gobierno', 520, 0, -282.296, 2727.48, 62.9813, 221.279, '0', '0', '0', 0, 2, 0),
(225, 'Gobierno', 520, 0, -205.061, 2669.96, 63.3339, 269.63, '0', '0', '0', 0, 2, 0),
(226, 'Gobierno', 425, 0, -162.792, 2676.77, 64.8893, 269.263, '0', '0', '0', 0, 2, 0),
(227, 'Gobierno', 425, 0, -162.285, 2721.11, 64.9091, 269.298, '0', '0', '0', 0, 2, 0),
(228, 'Gobierno', 470, 0, -236.791, 2682.62, 62.6591, 87.0393, '0', '0', '0', 0, 2, 0),
(229, 'Gobierno', 470, 0, -234.684, 2673.16, 62.6309, 90.4585, '0', '0', '0', 0, 2, 0),
(230, 'Gobierno', 470, 0, -236.204, 2663.93, 62.6422, 92.8123, '0', '0', '0', 0, 2, 0),
(231, 'Gobierno', 470, 0, -236.478, 2656.02, 62.6443, 88.2701, '0', '0', '0', 0, 2, 0),
(232, 'Gobierno', 432, 0, -241.429, 2714.93, 62.6956, 180.522, '0', '0', '0', 0, 2, 0),
(233, 'Gobierno', 432, 0, -240.529, 2737.18, 62.697, 0.332791, '0', '0', '0', 0, 2, 0),
(234, 'Gobierno', 432, 0, -221.977, 2737.7, 62.6959, 1.55746, '0', '0', '0', 0, 2, 0),
(246, 'Gobierno', 520, 0, -331.816, 2674.43, 65.7797, 90.6039, '0', '0', '0', 0, 2, 0),
(247, 'Gobierno', 433, 0, -274.283, 2686.24, 63.1127, 358.828, '1', '1', '0', 0, 2, 0),
(248, 'Gobierno', 433, 0, -279.177, 2685.98, 63.0969, 4.06806, '1', '1', '0', 0, 2, 0),
(250, 'Gobierno', 433, 0, -288.894, 2685.05, 63.0924, 1.65943, '1', '1', '0', 0, 2, 0),
(251, 'Gobierno', 433, 0, -267.284, 2693.01, 63.1104, 272.213, '1', '1', '0', 0, 2, 0),
(252, 'Gobierno', 433, 0, -295.441, 2693.45, 63.1242, 272.685, '1', '1', '0', 0, 2, 0),
(253, 'Gobierno', 433, 0, -284.025, 2685.78, 63.0953, 4.53097, '0', '0', '0', 0, 2, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores_tiendas`
--
ALTER TABLE `actores_tiendas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `aka`
--
ALTER TABLE `aka`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `backpack`
--
ALTER TABLE `backpack`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `curriculum_table`
--
ALTER TABLE `curriculum_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `fabricas`
--
ALTER TABLE `fabricas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `facciones`
--
ALTER TABLE `facciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invitaciones`
--
ALTER TABLE `invitaciones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_ingresos`
--
ALTER TABLE `log_ingresos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_transacciones`
--
ALTER TABLE `log_transacciones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_ventas`
--
ALTER TABLE `log_ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marihuana`
--
ALTER TABLE `marihuana`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`pID`);

--
-- Indices de la tabla `player_book`
--
ALTER TABLE `player_book`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `player_toys`
--
ALTER TABLE `player_toys`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `p_vehicles`
--
ALTER TABLE `p_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `GET` (`Propietario`) USING BTREE;

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros_admin`
--
ALTER TABLE `registros_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `territorios`
--
ALTER TABLE `territorios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tuning_objects`
--
ALTER TABLE `tuning_objects`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores_tiendas`
--
ALTER TABLE `actores_tiendas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `aka`
--
ALTER TABLE `aka`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `backpack`
--
ALTER TABLE `backpack`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curriculum_table`
--
ALTER TABLE `curriculum_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `doors`
--
ALTER TABLE `doors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `fabricas`
--
ALTER TABLE `fabricas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `facciones`
--
ALTER TABLE `facciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `invitaciones`
--
ALTER TABLE `invitaciones`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `log_ingresos`
--
ALTER TABLE `log_ingresos`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_transacciones`
--
ALTER TABLE `log_transacciones`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_ventas`
--
ALTER TABLE `log_ventas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marihuana`
--
ALTER TABLE `marihuana`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `pID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `player_book`
--
ALTER TABLE `player_book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `player_toys`
--
ALTER TABLE `player_toys`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `p_vehicles`
--
ALTER TABLE `p_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros_admin`
--
ALTER TABLE `registros_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `territorios`
--
ALTER TABLE `territorios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT de la tabla `tuning_objects`
--
ALTER TABLE `tuning_objects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
