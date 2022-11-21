
-- Create database
CREATE DATABASE DB_GRUPO_0;
GO

USE DB_GRUPO_0;
GO

---------------------------------------------------------------------
-- Create Tables
---------------------------------------------------------------------
USE DB_GRUPO_0;
drop table ASEGURADORA

CREATE TABLE ASEGURADORA
(
   
  ID_Cobertura		INT          NOT NULL ,
-- FOREIGN KEY COBERTURAS(ID_Cobertura)
  ciaseguros		NVARCHAR(30) NOT NULL,
  nombrecontacto    NVARCHAR(20) NOT NULL,
  apellidocontacto  NVARCHAR(30) NOT NULL,
  telefono         NVARCHAR(30) NOT NULL,
  direccion         NVARCHAR(60) NOT NULL,
  ciudad           NVARCHAR(30) NOT NULL,
  codpostal      NVARCHAR(10) NULL,
  pais         NVARCHAR(15) NOT NULL
  
);
USE DB_GRUPO_0;
drop table ASEGURADO;

CREATE TABLE ASEGURADO
(
  ID_Poliza		INT PRIMARY KEY  IDENTITY        NOT NULL,
  ID_Aseguradora	INT NOT NULL,
--FOREIGN KEY ASEGURADORA(ID_Aseguradora)
  apellidos			NVARCHAR(30) NOT NULL,
  nombre			NVARCHAR(30) NOT NULL,
  direccion			NVARCHAR(60) NOT NULL,
  ciudad			NVARCHAR(15) NOT NULL,
  codpostal			NVARCHAR(10) NULL,
  pais				NVARCHAR(15) NOT NULL,
  telefono			NVARCHAR(24) NOT NULL,
  email				NVARCHAR(24) NULL
);
USE DB_GRUPO_0;
CREATE TABLE COBERTURAS
(
  idcobertura   INT           NOT NULL IDENTITY,
  tipocobertura NVARCHAR(40)  NOT NULL,
  descripcion  NVARCHAR(200) NOT NULL,

  CONSTRAINT PK_Coberturas PRIMARY KEY(idcobertura)
);
---------------------------------------------------------------------
-- Populate Tables
---------------------------------------------------------------------
USE DB_GRUPO_0;
SET NOCOUNT ON;

-- Populate table ASEGURADO

SET IDENTITY_INSERT ASEGURADO ON;

INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1008, 1, N'Gómez', N'Ana', 'Castilla, 10',  N'Santander', N'39200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM');
  INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(2008, 2, N'Ruíz', N'Montse', 'Villa, 10',  N'Marbella', N'29200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM');
   INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(3008, 3, N'Juan', N'Montserrat', 'Sevilla, 10',  N'Sevilla', N'79200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM');
   INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(4008, 2, N'Rodríguez', N'Andrés', 'Maravilla, 10',  N'Málaga', N'49200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM');
  SET IDENTITY_INSERT ASEGURADO OFF;
  SELECT * FROM ASEGURADO;


-- Populate table ASEGURADORA
USE DB_GRUPO_0;
--SET IDENTITY_INSERT ASEGURADORA ON;

INSERT INTO ASEGURADORA (ID_Aseguradora, ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(1,1, N'ALLIANZ', N'Alberto', N'Gilbert', N'Palacios 3', N'London', N'39100', N'UK', N'(171) 456-7890');
  
INSERT INTO ASEGURADORA (ID_Aseguradora, ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(2,2, N'QUALITAS', N'Rocío', N'Alday', N'Alday 3', N'Madrid', N'25391', N'ESPAÑA', N'(91) 456-7890');
  INSERT INTO ASEGURADORA (ID_Aseguradora, ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(3,2, N'OCASO', N'Manolo', N'Puerta', N'Alcalá 200', N'Madrid', N'25391', N'ESPAÑA', N'(91) 456-7890');
  INSERT INTO ASEGURADORA (ID_Aseguradora, ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(4,2, N'ETERNA ASEGURADORA', N'Raúl', N'Barrio Pesquero', N'Capitán 45', N'Valencia', N'45391', N'ESPAÑA', N'(91) 456-7890');
  INSERT INTO ASEGURADORA (ID_Aseguradora, ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(5,2, N'QUALITAS', N'Rocío', N'Alday', N'Alday 3', N'Madrid', N'25391', N'ESPAÑA', N'(91) 456-7890');
--SET IDENTITY_INSERT ASEGURADORA OFF;

SELECT * FROM ASEGURADORA;


-- Populate table COBERTURAS
USE DB_GRUPO_0;
SET IDENTITY_INSERT COBERTURAS ON;

INSERT INTO Coberturas(ID_Cobertura, tipocobertura, descripcion)
  VALUES(1, N'Casa', N'Siniestros en domicilios y edificios');
  INSERT INTO Coberturas(ID_Cobertura, tipocobertura, descripcion)
  VALUES(2, N'Automóvil', N'Siniestros en vehículos particulares');
  INSERT INTO Coberturas(ID_Cobertura, tipocobertura, descripcion)
  VALUES(3, N'Moto', N'Siniestros con motocicletas');
  INSERT INTO Coberturas(ID_Cobertura, tipocobertura, descripcion)
  VALUES(4, N'Vida', N'Seguros de vida');
SET IDENTITY_INSERT Coberturas OFF;

SELECT * FROM COBERTURAS;
USE DB_GRUPO_0;

