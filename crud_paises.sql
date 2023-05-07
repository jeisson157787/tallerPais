-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2023 a las 21:22:55
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
-- Base de datos: `crud_paises`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departaments`
--

CREATE TABLE `departaments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `pais_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`id`, `name`, `pais_id`) VALUES
(1, 'Amazonas', 1),
(2, 'Antioquia', 1),
(3, 'Arauca', 1),
(4, 'Atlántico', 1),
(5, 'Bolívar', 1),
(6, 'Boyacá', 1),
(7, 'Caldas', 1),
(8, 'Caquetá', 1),
(9, 'Casanare', 1),
(10, 'Cauca', 1),
(11, 'Cesar', 1),
(12, 'Chocó', 1),
(13, 'Córdoba', 1),
(14, 'Cundinamarca', 1),
(15, 'Guainía', 1),
(16, 'Guaviare', 1),
(17, 'Huila', 1),
(18, 'La Guajira', 1),
(19, 'Magdalena', 1),
(20, 'Meta', 1),
(21, 'Aguascalientes', 2),
(22, 'Baja California', 2),
(23, 'Baja California Sur', 2),
(24, 'Campeche', 2),
(25, 'Chiapas', 2),
(26, 'Chihuahua', 2),
(27, 'Coahuila', 2),
(28, 'Colima', 2),
(29, 'Durango', 2),
(30, 'Guanajuato', 2),
(31, 'Guerrero', 2),
(32, 'Hidalgo', 2),
(33, 'Jalisco', 2),
(34, 'México', 2),
(35, 'Michoacán', 2),
(36, 'Morelos', 2),
(37, 'Nayarit', 2),
(38, 'Nuevo León', 2),
(39, 'Oaxaca', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `flag` varchar(45) DEFAULT NULL,
  `capital` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `name`, `flag`, `capital`) VALUES
(1, 'Colombia', 'Amarillo,azul y rojo', 'Bogota'),
(2, 'Mexico', 'test update mexico', 'Ciudad de México D.C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `pais_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `school`
--

INSERT INTO `school` (`id`, `name`, `address`, `phone`, `pais_id`) VALUES
(1, 'colegio miguel de cervantes', 'carrera 5 #4545', '486173658', 1),
(2, 'Instituto Educativo Distrital La Aurora', 'Carrera 9 # 71-27', '311 555 4567', 1),
(3, 'Colegio Integrado Nacional Oriente', 'Calle 55 # 29-25', '317 555 1234', 1),
(4, 'Colegio José Joaquín Casas', 'Carrera 1 # 32-45', '318 555 0987', 1),
(5, 'Institución Educativa Distrital de Fontibón', 'Carrera 100 # 21-35', '315 555 4321', 1),
(6, 'Colegio Distrital Carlos Alban Holguín', 'Calle 54 # 20-45', '320 555 8765', 1),
(7, 'Colegio Distrital San Felipe Neri', 'Carrera 7 # 56-67', '319 555 2109', 1),
(8, 'Colegio Montessori de Bogotá', 'Calle 100 # 19-54', '314 555 6543', 1),
(9, 'Colegio Nuestra Señora del Rosario', 'Carrera 11 # 34-21', '312 555 9876', 1),
(10, 'Institución Educativa Técnica', 'Calle 22 # 47-31', '316 555 3210', 1),
(11, 'Instituto Tecnológico Autónomo de México', 'Río Hondo 1, Ciudad de México, CDMX', '+52 55 56 28 40 00', 2),
(12, 'Universidad Nacional Autónoma de México', 'Ciudad Universitaria', '+52 55 56 22 22 22', 2),
(13, 'Instituto Politécnico Nacional', 'Av. Wilfrido Massieu', '+52 55 57 29 60 00', 2),
(14, 'Universidad Anáhuac México', 'Av. Universidad Anáhuac 46', '+52 55 53 60 22 00', 2),
(15, 'Instituto Tecnológico Superiores de Monterrey', 'Av. Eugenio Garza Sada .', '+52 81 81 29 40 00', 2),
(16, 'Universidad Iberoamericana Ciudad de México', 'Prolongación Paseo de la Reforma 880', '+52 55 56 23 00 00', 2),
(17, 'Tecnológico de Monterrey', 'Av. Lomas Verdes 8585', '+52 55 58 00 80 00', 2),
(18, 'Universidad Panamericana', 'Augusto Rodin 498', '+52 55 53 98 52 00', 2),
(19, 'Universidad del Valle de México', 'Av. Coyoacán 293', '+52 55 36 42 11 00', 2),
(20, 'Universidad La Salle Ciudad de México', 'Av. Benjamín Franklin 47', '+52 55 91 71 60 00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `date_birth` varchar(45) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `departaments_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `date_birth`, `school_id`, `departaments_id`) VALUES
(2, 'Julia', 'Martinez', 'julia2@gmail.com', 'julia123', '23 abril 1999', 1, 2),
(3, 'Sofia', 'García', 'sofia@gmail.com', 'contraseña123', '22 de mayo de 1998', 1, 3),
(4, 'María', 'Hernández', 'mariahernandez@gmail.com', 'contraseña123', '30 de enero de 1996', 3, 4),
(5, 'Carlos', 'González', 'carlosgonzalez@gmail.com', 'contraseña123', '9 de julio de 1999', 4, 5),
(6, 'Ana', 'Sánchez', 'anasanchez@gmail.com', 'contraseña123', '5 de noviembre de 1997', 5, 6),
(7, 'David', 'Gómez', 'davidgomez@gmail.com', 'contraseña123', '18 de abril de 1994', 6, 7),
(8, 'Isabel', 'Martínez', 'isabelmartinez@gmail.com', 'contraseña123', '2 de diciembre de 1993', 7, 8),
(9, 'Jorge', 'Díaz', 'jorgediaz@gmail.com', 'contraseña123', '12 de septiembre de 1998', 8, 9),
(10, 'Laura', 'López', 'lauralopez@gmail.com', 'contraseña123', '8 de junio de 1995', 9, 10),
(11, 'Sophia', 'Garcia', 'sophia.garcia@gmail.com', 'password123', '03-09-1999', 3, 11),
(12, 'Benjamin', 'Lopez', 'benjamin.lopez@gmail.com', 'password123', '12-03-2000', 2, 12),
(13, 'Emma', 'Flores', 'emma.flores@gmail.com', 'password123', '08-11-1997', 1, 13),
(14, 'Daniel', 'Castro', 'daniel.castro@gmail.com', 'password123', '02-05-1995', 5, 14),
(15, 'Olivia', 'Vega', 'olivia.vega@gmail.com', 'password123', '11-02-2002', 4, 15),
(16, 'Ethan', 'Romero', 'ethan.romero@gmail.com', 'password123', '07-06-1996', 11, 15),
(17, 'Isabella', 'Jimenez', 'isabella.jimenez@gmail.com', 'password123', '06-01-1998', 12, 16),
(18, 'Alexander', 'Torres', 'alexander.torres@gmail.com', 'password123', '10-12-2001', 13, 17),
(19, 'Sofia', 'Gutierrez', 'sofia.gutierrez@gmail.com', 'password123', '05-04-1999', 14, 18),
(20, 'Samantha', 'Smith', 'samantha.smith31@gmail.com', '123456', '1995-05-15', 15, 19),
(21, 'Oliver', 'Jones', 'oliver.jones32@gmail.com', 'password123', '1990-10-12', 16, 20),
(22, 'Isabella', 'Garcia', 'isabella.garcia33@gmail.com', 'abc123', '1997-01-23', 17, 21),
(23, 'Gabriel', 'Flores', 'gabriel.flores34@gmail.com', 'qwerty123', '1994-03-20', 18, 22),
(24, 'Emma', 'Taylor', 'emma.taylor35@gmail.com', 'iloveyou', '1999-07-02', 19, 23),
(25, 'Aiden', 'Wilson', 'aiden.wilson36@gmail.com', 'hello123', '2000-09-08', 20, 24),
(26, 'Madison', 'Miller', 'madison.miller37@gmail.com', 'pass123', '1996-02-01', 19, 25),
(27, 'Noah', 'Martinez', 'noah.martinez38@gmail.com', 'password1', '1993-11-18', 18, 26),
(29, 'Stiven', 'Diaz', 'diaz39@gmail.com', 'p@ssw0rd', '2001-04-07', 17, 28),
(30, 'jissson', 'Martinez', 'Martinez@gmail.com', 'p@sdfdgdfg', '2001-04-07', 16, 29);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_departaments_pais1_idx` (`pais_id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_school_pais1_idx` (`pais_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_school1_idx` (`school_id`),
  ADD KEY `fk_users_departaments1_idx` (`departaments_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD CONSTRAINT `fk_departaments_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `fk_school_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_departaments1` FOREIGN KEY (`departaments_id`) REFERENCES `departaments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_school1` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
