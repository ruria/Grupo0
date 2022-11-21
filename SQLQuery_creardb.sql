---------------------------------------------------------------------
-- Script that creates the sample database DB_GRUPO_0
--
-- Create database
CREATE DATABASE DB_GRUPO_0;
GO

USE DB_GRUPO_0;
GO
---------------------------TABLA SINIESTRO---------------------------

drop table if exists [SINIESTRO]

create table[SINIESTRO]
(
[ID_Siniestro] int identity (1,1) primary key not null,
[ID_Poliza] int not null,
--foreign key ([ID_Poliza]) references Aseguradoro(ID_Poliza),  
[ID_Empleado] int not null,
--foreign key ([ID_Empleado]) references Empleados(ID_Empleado),
[ID_Cliente] int not null,
--foreign key ([ID_Cliente]) references Clientes(ID_Cliente),
[ID_Ramo] int not null,
--foreign key ([ID_Ramo])  references Ramo(ID_Ramo),
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

SELECT * FROM SINIESTRO
-------------------------------------------CLIENTES----------------------------------------------------------
drop table if exists Clientes

Create table Clientes
(
ID_Cliente int Identity (1,1) primary key not null,
NIF char (20),
[Nombre y apellidos] varchar (64),
Direccion varchar (max),
Telefono char (20),
[E-mail] varchar
)
----------------------------------------EMPLEADOS------------------------------------------------------
drop table if exists Empleados

Create table Empleados
(
ID_Empleado int Identity (1,1) primary key not null,
Nombre varchar,
Apellidos char (30),
Telefono char (20)
)
-------------------------------------------FACTURAS---------------------------------------------------------------

drop table if exists Facturas 

CREATE TABLE Facturas 
(
ID_Factura INT IDENTITY (1,1) PRIMARY KEY, 
ID_Cliente int not null,
--foreign key ([ID_Cliente]) references Clientes(ID_Cliente), 
Facturado date,
Detalle char (40), 
ID_Siniestro int not null,
--foreign key ([ID_Siniestro]) references SINIESTRO(ID_Siniestro)
)
------------------------------------------DETALLES DE FACTURAS---------------------------------------------------------
drop table if exists Detalles

CREATE TABLE Detalles
(
ID_Factura int,  
Concepto varchar,
Total int
)
GO

--------------------------------TABLA RAMO--------------------------------------------------------
drop table if exists [Ramo]

create table[Ramo]
(
[ID_Ramo] int identity (1,1) primary key not null,
[Tipo de ramo] char(10) not null
)

INSERT INTO [Ramo]([Tipo de ramo])
  VALUES('Agua');
INSERT INTO [Ramo]([Tipo de ramo])
  VALUES('Fuego');
INSERT INTO [Ramo]([Tipo de ramo])
  VALUES('Robo');
INSERT INTO [Ramo]([Tipo de ramo])
  VALUES('Viento');

select * from Ramo


-------------------------------------------------------------------------------------------------------
---------------------------------TABLA ASEGURADORA
-------------------------------------------------------------------------------------------------------

drop table if exists ASEGURADORA;

CREATE TABLE ASEGURADORA
(
  ID_Aseguradora	INT    IDENTITY(1,1) PRIMARY KEY NOT NULL,
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
SELECT * FROM ASEGURADORA
-------------------------------------------------------------------------------------------------
-----------------------------------TABLA ASEGURADO------------------------
-------------------------------------------------------------------------------------------------

drop table if exists ASEGURADO;

CREATE TABLE ASEGURADO
(
  ID_Poliza		INT PRIMARY KEY   NOT NULL,
  ID_Aseguradora	INT NOT NULL,
--foreign key (ID_Aseguradora) references ASEGURADORA(ID_Aseguradora),
  apellidos			NVARCHAR(30) NOT NULL,
  nombre			NVARCHAR(30) NOT NULL,
  direccion			NVARCHAR(60) NOT NULL,
  ciudad			NVARCHAR(15) NOT NULL,
  codpostal			NVARCHAR(10) NULL,
  pais				NVARCHAR(15) NOT NULL,
  telefono			NVARCHAR(24) NOT NULL,
  email				NVARCHAR(24) NULL
);

SELECT * FROM ASEGURADO
-----------------------------------------------------------------------------------------------------
----------------------------------TABLA COBERTURA-----------------------
-----------------------------------------------------------------------------------------------------

drop table if exists COBERTURAS

CREATE TABLE COBERTURAS
(
  ID_cobertura   INT identity (1,1) NOT NULL ,
  tipocobertura NVARCHAR(40)  NOT NULL,
  descripcion  NVARCHAR(200) NOT NULL,

  CONSTRAINT PK_Coberturas PRIMARY KEY(ID_cobertura)
);
select * from COBERTURAS
--------------------------------------------------------------------------------------------
------------------------- INSERT table ASEGURADO
--------------------------------------------------------------------------------------------

INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1008, 1, N'G�mez', N'Ana', 'Castilla, 10',  N'Santander', N'39200', N'ESPA�A', N'942 36 36 36', N'EMAIL@MAIL.COM');

  INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1009, 2, N'Perez', N'Marta', 'Castilla, 25',  N'Santander', N'39009', N'ESPA�A', N'942 25 32 65', N'marta@MAIL.COM');

   INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1010, 3, N'Rodriguez', N'Oscar', 'Burgos, 12',  N'Santander', N'39008', N'ESPA�A', N'942 61 48 79', N'oscar@gmail.com');

   INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1011, 4, N'Laguna', N'Laura', 'Luis Martinez, 13',  N'Santander', N'39005', N'ESPA�A', N'942 85 21 31', N'laura@gmail.com');

   INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1012, 5, N'Dias', N'Gema', 'Autonomia, 15',  N'Santander', N'39012', N'ESPA�A', N'942 55 84 77 12', N'gema@gmail.com');

   INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1013, 6, N'Burgos', N'Carmen', 'Jean Leon, 8',  N'Santander', N'39001', N'ESPA�A', N'942 35 26 55 33', N'carmen@gmail.com');

 
  SELECT * FROM ASEGURADO;

-------------------------------------------------------------------------------------------
----------------------------------INSERT ASEGURADORA
-------------------------------------------------------------------------------------------

INSERT INTO ASEGURADORA (ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(1, N'ALLIANZ', N'Alberto', N'Gilbert', N'Palacios 3', N'London', N'39100', N'UK', N'(171) 456-7890');

  INSERT INTO ASEGURADORA (ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(2, N'ALLIANZ', N'Pablo', N'Lopez', N'Honduras 30', N'Espa�a', N'39005', N'Espa�a', N'(+34) 652 327 895');

        
  SELECT * FROM ASEGURADORA;
  --------------------------------------------------------------------------------------
--------------------------------- INAERT tabla de cobertura corregida
----------------------------------------------------------------------------------------
	
INSERT INTO Coberturas( tipocobertura, descripcion)
  VALUES( N'Casa', N'Siniestros en domicilios y edificios');

  INSERT INTO Coberturas( tipocobertura, descripcion)
  VALUES(N'Autom�vil', N'Siniestros en veh�culos particulares');

  INSERT INTO Coberturas( tipocobertura, descripcion)
  VALUES(N'Moto', N'Siniestros con motocicletas');

  INSERT INTO Coberturas( tipocobertura, descripcion)
  VALUES(N'Vida', N'Seguros de vida');


SELECT * FROM COBERTURAS;
------------------------------------------------------------------------------------------------
