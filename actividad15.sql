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
