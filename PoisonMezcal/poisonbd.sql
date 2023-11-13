-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-11-2023 a las 19:21:15
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `poisonbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

DROP TABLE IF EXISTS `compras`;
CREATE TABLE IF NOT EXISTS `compras` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CorreoElectronico` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Direccion` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NumeroTarjeta` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NombreTarjeta` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FechaVencimiento` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Total` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idCompra`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompra`, `Nombre`, `CorreoElectronico`, `Direccion`, `NumeroTarjeta`, `NombreTarjeta`, `FechaVencimiento`, `Total`) VALUES
(1, 'ErikLeo', 'aaaaa@hotmail.com', 'Prados Segunda Seccion', '1234 6789 0113', 'Leo', '23/43', '300');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
