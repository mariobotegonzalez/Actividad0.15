-- Eliminar la base de datos si existe
DROP DATABASE IF EXISTS test;

-- Crear la base de datos
CREATE DATABASE test;

-- Usar la base de datos recién creada
USE test;

-- Crear la tabla clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50),
    facturacion DECIMAL(8,2)
);
-- Procedimiento
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_clientes`(IN `v_nombre` VARCHAR(50), IN `v_ciudad` VARCHAR(50), IN `v_facturacion` DECIMAL(8,2))
INSERT INTO `clientes` (`id`, `nombre`, `ciudad`, `facturacion`) VALUES (NULL, v_nombre, v_ciudad, v_facturacion)$$
DELIMITER ;
