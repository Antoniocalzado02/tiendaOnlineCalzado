CREATE DATABASE tiendaOnlineCalzado;
GRANT ALL PRIVILEGES ON tiendaOnlineCalzado.* TO 'calzado'@'%' identified by 'antonio';

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 07-11-2022 a las 15:17:19
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaOnlineCalzado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIO`
--

CREATE TABLE tiendaOnlineCalzado.USUARIO (
  nickname varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  nombre varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  apellidos varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  email varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  contrasena varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  fecha_nac date DEFAULT NULL,
  genero varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  es_admin varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Volcado de datos para la tabla `USUARIO`
--

INSERT INTO tiendaOnlineCalzado.USUARIO (nickname, nombre, apellidos, email, contrasena, fecha_nac, genero, es_admin) VALUES
('antoniolora23', 'Antonio', 'Calzado', 'antonio23@gmail.com', '3e5f2ce4f1d29846c7c2478679be4f3d', '2002-05-02', 'M', '1'),
('javielito', 'Javi', 'Guerras', 'elguerras@noaa.gov', 'abfde839bcd8f4e609b0d6eed93d64b1', '1979-03-08', 'M', '0'),
('sfedder1', 'Sonnie', 'Fedder', 'sfedder1@prnewswire.com', '815236005f54b502953912883a60ab5d', '1996-01-15', 'M', '1'),
('ccovelle2', 'Camila', 'Covelle', 'ccovelle2@seattletimes.com', '253ab4ed52a3089589bec6c804b02e28', '2013-05-07', 'F', '0'),
('rminchella3', 'Rollie', 'Minchella', 'rminchella3@telegraph.co.uk', 'e1ca1a23bed59d68c479d09984f52b42', '2017-09-23', 'M', '1'),
('lrasp4', 'Leroi', 'Rasp', 'lrasp4@yellowbook.com', '6000c9b6f2feed7eefbd75adf16ea788', '2001-08-22', 'M', '1'),
('lmcmoyer5', 'Lyman', 'McMoyer', 'lmcmoyer5@soup.io', 'be055d05f6bbb7374e9cc15975a99699', '2001-12-29', 'M', '1'),
('tlatour6', 'Tibold', 'Latour', 'tlatour6@nba.com', 'a8049398a6c34e7d1229c6393f17e770', '2019-09-03', 'M', '0'),
('sandriulis7', 'Simon', 'Andriulis', 'sandriulis7@icq.com', '765a2805cf6262e1a3a2c81955b9dff0', '2010-12-03', 'M', '1'),
('aswetland8', 'Ancell', 'Swetland', 'aswetland8@jiathis.com', 'd2e9f672b2560c52f2970015e038c132', '1994-09-06', 'M', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;