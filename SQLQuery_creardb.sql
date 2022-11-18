---------------------------------------------------------------------
-- Script that creates the sample database DB_GRUPO_0
--
-- Create database
CREATE DATABASE DB_GRUPO_0;
GO

USE DB_GRUPO_0;
GO
---------------------------TABLA SINIESTRO---------------------------
create table[SINIESTRO]
(
[ID_Siniestro] int identity (1,1) primary key not null,
[ID_Poliza] int not null,
--foreign key Aseguradora(ID_Poliza) 
[ID_Empleado] int not null,
--foreign key Empleado(ID_Empleado) 
[fecha_sin] date,
[Recibido] date,
[Revisado] date,
[Asignado]date,
[Visitado]date,
[Cerrado]date,
[Facturado]date,
[Direccion]varchar(max),
[Dictamen_final] int ,
[Desplazamiento_del_emp] smallint
)

--------------------------------TABLA RAMO--------------------------------------------------------
create table[Ramo]
(
[ID_Ramo] int identity (1,1) primary key not null,
[Fuego]char(6) not null,
[Viento]char(6) not null,
[Agua]char(6) not null,
[Robo]char(6) not null

)

-------------------------------------------------------------------------------------------------------