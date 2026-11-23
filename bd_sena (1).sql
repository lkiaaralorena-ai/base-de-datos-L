-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 22:13:14
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
-- Base de datos: `bd_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administradores`
--

CREATE TABLE `tb_administradores` (
  `id_administrador` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `no_documento` varchar(30) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administradores`
--

INSERT INTO `tb_administradores` (`id_administrador`, `nombre`, `apellidos`, `tipo_documento`, `no_documento`, `correo`, `contrasena`, `telefono`, `estado`, `id_ficha`) VALUES
(1, 'Luis Alberto', 'García Medina', 'CC', '9876543210', 'admin1@sena.edu.co', 'admin123', '3001112233', 'Activo', 1),
(2, 'Diana Marcela', 'Ruiz Salazar', 'CC', '9876543211', 'admin2@sena.edu.co', 'admin456', '3002223344', 'Activo', 2),
(3, 'Ricardo', 'Ortiz Gómez', 'TI', '9876543212', 'admin3@sena.edu.co', 'admin789', '3003334455', 'Activo', 3),
(4, 'Patricia', 'Mora Buitrago', 'CC', '9876543213', 'admin4@sena.edu.co', 'admin012', '3004445566', 'Activo', 4),
(5, 'Fernando', 'Castro Páez', 'CC', '9876543214', 'admin5@sena.edu.co', 'admin345', '3005556677', 'Activo', 5),
(6, 'Carmen Rosa', 'Acosta Londoño', 'TI', '9876543215', 'admin6@sena.edu.co', 'admin678', '3006667788', 'Activo', 6),
(7, 'Héctor', 'Vargas Rojas', 'CC', '9876543216', 'admin7@sena.edu.co', 'admin901', '3007778899', 'Activo', 7),
(8, 'Nidia', 'Patiño Cárdenas', 'CC', '9876543217', 'admin8@sena.edu.co', 'admin234', '3008889900', 'Activo', 8),
(9, 'Edgar', 'Guzmán Tovar', 'TI', '9876543218', 'admin9@sena.edu.co', 'admin567', '3009990011', 'Activo', 9),
(10, 'Marta Lucía', 'Herrera Cruz', 'CC', '9876543219', 'admin10@sena.edu.co', 'admin890', '3000001122', 'Activo', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendiz` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `tipo_documento` varchar(16) DEFAULT NULL,
  `no_documento` varchar(33) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendiz`, `nombre`, `tipo_documento`, `no_documento`, `direccion`, `correo`, `sexo`, `id_ficha`) VALUES
(1, 'Santiago', 'CC', '1001234567', 'Calle 1 #2-34', 'santiago@email.com', 'Masculino', 1),
(2, 'Valentina', 'TI', '1002345678', 'Carrera 5 #10-20', 'valentina@email.com', 'Femenino', 2),
(3, 'Mateo', 'CC', '1003456789', 'Av. 6 #15-45', 'mateo@email.com', 'Masculino', 3),
(4, 'Camila', 'TI', '1004567890', 'Calle 12 #8-30', 'camila@email.com', 'Femenino', 4),
(5, 'Sebastián', 'CC', '1005678901', 'Carrera 3 #20-10', 'sebastian@email.com', 'Masculino', 5),
(6, 'Luciana', 'TI', '1006789012', 'Av. 9 #3-50', 'luciana@email.com', 'Femenino', 6),
(7, 'Alejandro', 'CC', '1007890123', 'Calle 7 #18-25', 'alejandro@email.com', 'Masculino', 7),
(8, 'Sara', 'TI', '1008901234', 'Carrera 10 #5-60', 'sara@email.com', 'Femenino', 8),
(9, 'Daniel', 'CC', '1009012345', 'Av. 2 #12-18', 'daniel@email.com', 'Masculino', 9),
(10, 'Gabriela', 'TI', '1000123456', 'Calle 4 #9-40', 'gabriela@email.com', 'Femenino', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencias`
--

CREATE TABLE `tb_competencias` (
  `id_competencia` int(11) NOT NULL,
  `nombre_competencia` varchar(55) DEFAULT NULL,
  `codigo_competencia` varchar(33) DEFAULT NULL,
  `horas_duracion` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencias`
--

INSERT INTO `tb_competencias` (`id_competencia`, `nombre_competencia`, `codigo_competencia`, `horas_duracion`) VALUES
(1, 'Desarrollar aplicaciones web', 'COMP-001', '180'),
(2, 'Manejar herramientas contables', 'COMP-002', '160'),
(3, 'Configurar redes locales', 'COMP-003', '200'),
(4, 'Crear diseños digitales', 'COMP-004', '150'),
(5, 'Unir materiales por soldadura', 'COMP-005', '220'),
(6, 'Instalar sistemas eléctricos', 'COMP-006', '190'),
(7, 'Gestionar procesos administrativos', 'COMP-007', '170'),
(8, 'Organizar operaciones logísticas', 'COMP-008', '165'),
(9, 'Preparar alimentos y bebidas', 'COMP-009', '185'),
(10, 'Mantener equipos industriales', 'COMP-010', '210');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(11) NOT NULL,
  `nombre_programa` varchar(55) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `jornada` varchar(31) DEFAULT NULL,
  `id_competencia` int(11) DEFAULT NULL,
  `id_instructor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `nombre_programa`, `fecha_inicio`, `estado`, `fecha_fin`, `jornada`, `id_competencia`, `id_instructor`) VALUES
(1, 'Técnico en Programación de Software', '2026-02-01', 'Activa', '2027-02-01', 'Mañana', NULL, NULL),
(2, 'Técnico en Contabilidad', '2026-01-15', 'Activa', '2026-12-15', 'Tarde', NULL, NULL),
(3, 'Técnico en Redes', '2026-03-01', 'Activa', '2027-03-01', 'Noche', NULL, NULL),
(4, 'Técnico en Diseño Gráfico', '2025-08-01', 'Finalizada', '2026-08-01', 'Mañana', NULL, NULL),
(5, 'Técnico en Soldadura', '2026-04-01', 'Activa', '2027-04-01', 'Tarde', NULL, NULL),
(6, 'Técnico en Electricidad', '2026-02-15', 'Activa', '2027-02-15', 'Noche', NULL, NULL),
(7, 'Técnico en Administración', '2025-11-01', 'Finalizada', '2026-11-01', 'Mañana', NULL, NULL),
(8, 'Técnico en Logística', '2026-05-01', 'Activa', '2027-05-01', 'Tarde', NULL, NULL),
(9, 'Técnico en Cocina', '2026-01-01', 'Activa', '2026-12-01', 'Mañana', NULL, NULL),
(10, 'Técnico en Mantenimiento', '2026-06-01', 'Activa', '2027-06-01', 'Noche', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructores`
--

CREATE TABLE `tb_instructores` (
  `id_instructor` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `tipo_documento` varchar(35) DEFAULT NULL,
  `correo` varchar(33) DEFAULT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  `especialidad` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructores`
--

INSERT INTO `tb_instructores` (`id_instructor`, `nombre`, `apellidos`, `tipo_documento`, `correo`, `telefono`, `especialidad`) VALUES
(1, 'Carlos Andrés', 'Pérez Gómez', 'CC', 'cperez@sena.edu.co', '3101234567', 'Desarrollo de Software'),
(2, 'María Fernanda', 'López Ruiz', 'CC', 'mlopez@sena.edu.co', '3112345678', 'Contabilidad'),
(3, 'Juan Diego', 'Martínez Cruz', 'TI', 'jmartinez@sena.edu.co', '3123456789', 'Redes y Telecomunicaciones'),
(4, 'Ana María', 'Gómez Patiño', 'CC', 'agomez@sena.edu.co', '3134567890', 'Diseño Gráfico'),
(5, 'Pedro José', 'Ramírez León', 'CC', 'pramirez@sena.edu.co', '3145678901', 'Soldadura'),
(6, 'Luz Dary', 'Castillo Rojas', 'CC', 'lcastillo@sena.edu.co', '3156789012', 'Electricidad'),
(7, 'Jorge Armando', 'Sánchez Mera', 'TI', 'jsanchez@sena.edu.co', '3167890123', 'Administración'),
(8, 'Sofía Elena', 'Torres Vargas', 'CC', 'storres@sena.edu.co', '3178901234', 'Logística'),
(9, 'Roberto Carlos', 'Mendoza Ríos', 'CC', 'rmendoza@sena.edu.co', '3189012345', 'Cocina'),
(10, 'Claudio Andrés', 'Vega Soto', 'TI', 'cvega@sena.edu.co', '3190123456', 'Mantenimiento Industrial');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administradores`
--
ALTER TABLE `tb_administradores`
  ADD PRIMARY KEY (`id_administrador`),
  ADD KEY `fk_administradores_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `fk_aprendices_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_competencias`
--
ALTER TABLE `tb_competencias`
  ADD PRIMARY KEY (`id_competencia`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `fk_ficha_competencia` (`id_competencia`),
  ADD KEY `fk_ficha_instructor` (`id_instructor`);

--
-- Indices de la tabla `tb_instructores`
--
ALTER TABLE `tb_instructores`
  ADD PRIMARY KEY (`id_instructor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  MODIFY `id_ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_administradores`
--
ALTER TABLE `tb_administradores`
  ADD CONSTRAINT `fk_administradores_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `fk_aprendices_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `fk_ficha_competencia` FOREIGN KEY (`id_competencia`) REFERENCES `tb_competencias` (`id_competencia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_instructor` FOREIGN KEY (`id_instructor`) REFERENCES `tb_instructores` (`id_instructor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
