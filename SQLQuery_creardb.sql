---------------------------------------------------------------------
-- Script that creates the sample database DB_GRUPO_0
--
-- Create database
CREATE DATABASE DB_GRUPO_0;
GO

USE DB_GRUPO_0;
GO

CREATE TABLE Facturas 
(
ID_Factura INT IDENTITY (1,1) PRIMARY KEY, 
ID_Cliente int not null, 
Facturado date,
Detalle char (40), 
ID_Siniestro int not null
)

CREATE TABLE Detalles
(
ID_Factura int,  
Concepto varchar,
Total int
)
GO



