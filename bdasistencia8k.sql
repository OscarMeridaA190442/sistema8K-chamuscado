-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2023 a las 04:28:53
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdasistencia8k`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendahorario`
--

CREATE TABLE `agendahorario` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agendahorario`
--

INSERT INTO `agendahorario` (`id`, `title`, `description`, `start_datetime`, `end_datetime`) VALUES
(7, 'Rigoberto Perez Ovando', 'Practica - Ing software', '2023-05-08 18:00:00', '2023-05-11 19:00:00'),
(8, 'Mtro Hector', 'Examen unidad 3', '2023-05-15 17:00:00', '2023-05-15 19:00:00'),
(9, 'Hector Nuricumbo', 'SI', '2023-09-13 13:10:00', '2023-09-13 15:10:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_admin`
--

CREATE TABLE `registro_admin` (
  `ID` int(11) NOT NULL,
  `matri` varchar(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_admin`
--

INSERT INTO `registro_admin` (`ID`, `matri`, `full_name`, `Username`, `Pass`) VALUES
(1, 'A190443', 'Rigoberto Perez Hernandez', 'rigoberto@unach', '2411'),
(5, 'A190443', 'Luis Armando Guillen', 'luis.guillen78@', '123'),
(10, 'A190442', 'Oscar Eduardo', 'oscarr@unach.mx', 'A190442'),
(11, 'A190454', 'Alexis Hernandez Roblero', 'alexish@unach', '4321'),
(12, 'A1904422', 'PEDRO FEDE', 'pedro@unachfca', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_alum`
--

CREATE TABLE `registro_alum` (
  `id_registro` int(11) NOT NULL,
  `matricula` varchar(15) NOT NULL,
  `full_name` varchar(80) NOT NULL,
  `semestre` int(3) NOT NULL,
  `grupo` varchar(3) NOT NULL,
  `fecha_regis` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `actividad` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `registro_alum`
--

INSERT INTO `registro_alum` (`id_registro`, `matricula`, `full_name`, `semestre`, `grupo`, `fecha_regis`, `hora_entrada`, `hora_salida`, `actividad`) VALUES
(11, 'A190445', 'Luis Armando Guillen Ramos', 9, 'J', '2023-05-06', '19:15:00', '20:15:00', 'Video'),
(12, 'A190443', 'Eduardo Lopez Sanchez', 4, 'H', '2023-05-07', '14:19:00', '15:20:00', 'Examen Final IA'),
(13, 'A190333', 'Alexis', 8, 'K', '2023-05-19', '16:00:00', '18:00:00', 'Actvidad');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendahorario`
--
ALTER TABLE `agendahorario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro_admin`
--
ALTER TABLE `registro_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `registro_alum`
--
ALTER TABLE `registro_alum`
  ADD PRIMARY KEY (`id_registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendahorario`
--
ALTER TABLE `agendahorario`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `registro_admin`
--
ALTER TABLE `registro_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `registro_alum`
--
ALTER TABLE `registro_alum`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
