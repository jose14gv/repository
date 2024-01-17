-- Crear la base de datos
CREATE DATABASE salon_peluqueria;

-- Conectarse a la base de datos
\c salon_peluqueria;

-- Crear la tabla de clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Crear la tabla de peluqueros
CREATE TABLE peluqueros (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    servicios TEXT[] NOT NULL
);

-- Crear la tabla de citas
CREATE TABLE citas (
    id SERIAL PRIMARY KEY,
    id_cliente INTEGER REFERENCES clientes(id),
    id_peluquero INTEGER REFERENCES peluqueros(id),
    servicio VARCHAR(100) NOT NULL,
    fecha TIMESTAMP NOT NULL
);

ALTER TABLE citas
ADD COLUMN completada BOOLEAN DEFAULT FALSE;

select*
from citas;

select*
from clientes;

select*
from peluqueros;



