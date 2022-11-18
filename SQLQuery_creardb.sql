---------------------------------------------------------------------
-- Script that creates the sample database DB_GRUPO_0
--
-- Create database
CREATE DATABASE DB_GRUPO_0;
GO

USE DB_GRUPO_0;
GO

Create table Clientes
(
ID_Cliente int Identity (1,1) primary key not null,
NIF char (20),
[Nombre y apellidos] varchar (64),
Direccion varchar (max),
Telefono char (20),
[E-mail] varchar
)

Create table Empleados
(
ID_Empleado int Identity (1,1) primary key not null,
Nombre varchar,
Apellidos char (30),
Telefono char (20)
)

