
-- Create database
CREATE DATABASE DB_GRUPO_0;
GO

USE DB_GRUPO_0;
GO

---------------------------------------------------------------------
-- Create Tables
---------------------------------------------------------------------

drop table ASEGURADORA

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

SET NOCOUNT ON;

-- Populate table ASEGURADO
SET IDENTITY_INSERT ASEGURADO ON;

INSERT INTO ASEGURADO(ID_Poliza, ID_Aseguradora, apellidos, nombre, direccion, ciudad, codpostal,
pais, telefono, email)
  VALUES(1008, 1, N'Gómez', N'Ana', 'Castilla, 10',  N'Santander', N'39200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM');

  SET IDENTITY_INSERT ASEGURADO OFF;
  SELECT * FROM ASEGURADO;


-- Populate table ASEGURADORA
SET IDENTITY_INSERT ASEGURADORA ON;

INSERT INTO ASEGURADORA (ID_Cobertura, ciaseguros, nombrecontacto, apellidocontacto, direccion, ciudad,
codpostal, pais, telefono)
  VALUES(1, N'ALLIANZ', N'Alberto', N'Gilbert', N'Palacios 3', N'London', N'39100', N'UK', N'(171) 456-7890');
SET IDENTITY_INSERT ASEGURADORA OFF;

SELECT * FROM ASEGURADORA;


INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(2, N'Supplier VHQZD', N'Hance, Jim', N'Order Administrator', N'P.O. Box 5678', N'New Orleans', N'LA', N'10013', N'USA', N'(100) 555-0111', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(3, N'Supplier STUAZ', N'Parovszky, Alfons', N'Sales Representative', N'1234 Oxford Rd.', N'Ann Arbor', N'MI', N'10026', N'USA', N'(313) 555-0109', N'(313) 555-0112');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(4, N'Supplier QOVFD', N'Balázs, Erzsébet', N'Marketing Manager', N'7890 Sekimai Musashino-shi', N'Tokyo', NULL, N'10011', N'Japan', N'(03) 6789-0123', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(5, N'Supplier EQPNC', N'Holm, Michael', N'Export Administrator', N'Calle del Rosal 4567', N'Oviedo', N'Asturias', N'10029', N'Spain', N'(98) 123 45 67', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(6, N'Supplier QWUSF', N'Popkova, Darya', N'Marketing Representative', N'8901 Setsuko Chuo-ku', N'Osaka', NULL, N'10028', N'Japan', N'(06) 789-0123', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(7, N'Supplier GQRCV', N'Ræbild, Jesper', N'Marketing Manager', N'5678 Rose St. Moonie Ponds', N'Melbourne', N'Victoria', N'10018', N'Australia', N'(03) 123-4567', N'(03) 456-7890');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(8, N'Supplier BWGYE', N'Iallo, Lucio', N'Sales Representative', N'9012 King''s Way', N'Manchester', NULL, N'10021', N'UK', N'(161) 567-8901', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(9, N'Supplier QQYEU', N'Basalik, Evan', N'Sales Agent', N'Kaloadagatan 4567', N'Göteborg', NULL, N'10022', N'Sweden', N'031-345 67 89', N'031-678 90 12');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(10, N'Supplier UNAHG', N'Barnett, Dave', N'Marketing Manager', N'Av. das Americanas 2345', N'Sao Paulo', NULL, N'10034', N'Brazil', N'(11) 345 6789', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(11, N'Supplier ZPYVS', N'Jain, Mukesh', N'Sales Manager', N'Tiergartenstraße 3456', N'Berlin', NULL, N'10016', N'Germany', N'(010) 3456789', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(12, N'Supplier SVIYA', N'Regev, Barak', N'International Marketing Mgr.', N'Bogenallee 9012', N'Frankfurt', NULL, N'10024', N'Germany', N'(069) 234567', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(13, N'Supplier TEGSC', N'Brehm, Peter', N'Coordinator Foreign Markets', N'Frahmredder 3456', N'Cuxhaven', NULL, N'10019', N'Germany', N'(04721) 1234', N'(04721) 2345');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(14, N'Supplier KEREV', N'Keil, Kendall', N'Sales Representative', N'Viale Dante, 6789', N'Ravenna', NULL, N'10015', N'Italy', N'(0544) 56789', N'(0544) 34567');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(15, N'Supplier NZLIF', N'Sałas-Szlejter, Karolina', N'Marketing Manager', N'Hatlevegen 1234', N'Sandvika', NULL, N'10025', N'Norway', N'(0)9-012345', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(16, N'Supplier UHZRG', N'Scholl, Thorsten', N'Regional Account Rep.', N'8901 - 8th Avenue Suite 210', N'Bend', N'OR', N'10035', N'USA', N'(503) 555-0108', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(17, N'Supplier QZGUF', N'Kleinerman, Christian', N'Sales Representative', N'Brovallavägen 0123', N'Stockholm', NULL, N'10033', N'Sweden', N'08-234 56 78', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(18, N'Supplier LVJUA', N'Canel, Fabrice', N'Sales Manager', N'3456, Rue des Francs-Bourgeois', N'Paris', NULL, N'10031', N'France', N'(1) 90.12.34.56', N'(1) 01.23.45.67');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(19, N'Supplier JDNUG', N'Chapman, Greg', N'Wholesale Account Agent', N'Order Processing Dept. 7890 Paul Revere Blvd.', N'Boston', N'MA', N'10027', N'USA', N'(617) 555-0110', N'(617) 555-0113');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(20, N'Supplier CIYNM', N'Köszegi, Emília', N'Owner', N'6789 Serangoon Loop, Suite #402', N'Singapore', NULL, N'10037', N'Singapore', N'012-3456', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(21, N'Supplier XOXZA', N'Shakespear, Paul', N'Sales Manager', N'Lyngbysild Fiskebakken 9012', N'Lyngby', NULL, N'10012', N'Denmark', N'67890123', N'78901234');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(22, N'Supplier FNUXM', N'Skelly, Bonnie L.', N'Accounting Manager', N'Verkoop Rijnweg 8901', N'Zaandam', NULL, N'10014', N'Netherlands', N'(12345) 8901', N'(12345) 5678');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(23, N'Supplier ELCRN', N'LaMee, Brian', N'Product Manager', N'Valtakatu 1234', N'Lappeenranta', NULL, N'10032', N'Finland', N'(953) 78901', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(24, N'Supplier JNNES', N'Clark, Molly', N'Sales Representative', N'6789 Prince Edward Parade Hunter''s Hill', N'Sydney', N'NSW', N'10030', N'Australia', N'(02) 234-5678', N'(02) 567-8901');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(25, N'Supplier ERVYZ', N'Sprenger, Christof', N'Marketing Manager', N'7890 Rue St. Laurent', N'Montréal', N'Québec', N'10017', N'Canada', N'(514) 456-7890', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(26, N'Supplier ZWZDM', N'Cunha, Gonçalo', N'Order Administrator', N'Via dei Gelsomini, 5678', N'Salerno', NULL, N'10020', N'Italy', N'(089) 4567890', N'(089) 4567890');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(27, N'Supplier ZRYDZ', N'Leoni, Alessandro', N'Sales Manager', N'4567, rue H. Voiron', N'Montceau', NULL, N'10036', N'France', N'89.01.23.45', NULL);
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(28, N'Supplier OAVQT', N'Teper, Jeff', N'Sales Representative', N'Bat. B 2345, rue des Alpes', N'Annecy', NULL, N'10010', N'France', N'01.23.45.67', N'89.01.23.45');
INSERT INTO Production.Suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(29, N'Supplier OGLRK', N'Walters, Rob', N'Accounting Manager', N'0123 rue Chasseur', N'Ste-Hyacinthe', N'Québec', N'10009', N'Canada', N'(514) 567-890', N'(514) 678-9012');
SET IDENTITY_INSERT Production.Suppliers OFF;

-- Populate table COBERTURAS
SET IDENTITY_INSERT COBERTURAS ON;

INSERT INTO Coberturas(idcobertura, tipocobertura, descripcion)
  VALUES(1, N'Casa', N'Siniestros en domicilios y edificios');
  INSERT INTO Coberturas(idcobertura, tipocobertura, descripcion)
  VALUES(2, N'Automóvil', N'Siniestros en vehículos particulares');
  INSERT INTO Coberturas(idcobertura, tipocobertura, descripcion)
  VALUES(3, N'Moto', N'Siniestros con motocicletas');
  INSERT INTO Coberturas(idcobertura, tipocobertura, descripcion)
  VALUES(4, N'Vida', N'Seguros de vida');
SET IDENTITY_INSERT Coberturas OFF;

SELECT * FROM COBERTURAS;