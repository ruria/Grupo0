USE [master]
GO
/****** Object:  Database [DB_GRUPO_0]    Script Date: 21/11/2022 12:36:42 ******/
CREATE DATABASE [DB_GRUPO_0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_GRUPO_0', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_GRUPO_0.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_GRUPO_0_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_GRUPO_0_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_GRUPO_0] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_GRUPO_0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_GRUPO_0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_GRUPO_0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_GRUPO_0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_GRUPO_0] SET  MULTI_USER 
GO
ALTER DATABASE [DB_GRUPO_0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_GRUPO_0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_GRUPO_0] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_GRUPO_0] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_GRUPO_0] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_GRUPO_0', N'ON'
GO
ALTER DATABASE [DB_GRUPO_0] SET QUERY_STORE = OFF
GO
USE [DB_GRUPO_0]
GO
/****** Object:  Table [dbo].[ASEGURADO]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO  
CREATE TABLE [dbo].[ASEGURADO](
	[ID_Siniestro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aseguradora] [int] NOT NULL,
--foreign key (ID_Aseguradora) references ASEGURADORA(ID_Aseguradora),
	[apellidos] [nvarchar](30) NOT NULL,
	[nombre] [nvarchar](30) NOT NULL,
	[direccion] [nvarchar](60) NOT NULL,
	[ciudad] [nvarchar](15) NOT NULL,
	[codpostal] [nvarchar](10) NULL,
	[pais] [nvarchar](15) NOT NULL,
	[telefono] [nvarchar](24) NOT NULL,
	[email] [nvarchar](24) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Siniestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASEGURADORA]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASEGURADORA](
	[ID_Aseguradora] [int] NOT NULL,
	[ID_Cobertura] [int] NOT NULL,
	[ciaseguros] [nvarchar](30) NOT NULL,
	[nombrecontacto] [nvarchar](20) NOT NULL,
	[apellidocontacto] [nvarchar](30) NOT NULL,
	[telefono] [nvarchar](30) NOT NULL,
	[direccion] [nvarchar](60) NOT NULL,
	[ciudad] [nvarchar](30) NOT NULL,
	[codpostal] [nvarchar](10) NULL,
	[pais] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Aseguradora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[NIF] [char](20) NULL,
	[Nombre y apellidos] [varchar](64) NULL,
	[Direccion] [varchar](max) NULL,
	[Telefono] [char](20) NULL,
	[E-mail] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COBERTURAS]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COBERTURAS](
	[ID_cobertura] [int] IDENTITY(1,1) NOT NULL,
	[tipocobertura] [nvarchar](40) NOT NULL,
	[descripcion] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Coberturas] PRIMARY KEY CLUSTERED 
(
	[ID_cobertura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Línea de Factura]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles](
	[ID_Factura] [int] NULL,
	[Concepto] [varchar](60) NULL,
	[Total] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[ID_Empleado] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Nombre] [varchar](64) NULL,
	[Apellidos] [char](30) NULL,
	[Telefono] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/* creación tabla póliza */ 
Create table [dbo].[Poliza] (
[ID_Poliza] [int] not null,  
[ID_Cobertura] [int] not null 
); 

/****** Object:  Table [dbo].[Facturas]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[ID_Factura] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Facturado] [date] NULL,
	[ID_Cliente] [int] NOT NULL FOREING KEY NOT NULL,
	[Nombre/Razón Social] [char] (20) not null, 
	[Apellidos] [char] (30) not null, 
	[Dirección de Facturación] [char] (30)not null, 
	[DNI/NIF] [char] (20)not null, 
	[Total] [char] (20)not null,
PRIMARY KEY CLUSTERED 
(
	[ID_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ramo]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ramo](
	[ID_Ramo] [int] IDENTITY(1,1) NOT NULL,
	[Tipo de ramo] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ramo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINIESTRO]    Script Date: 21/11/2022 12:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINIESTRO](
	[ID_Siniestro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Poliza] [int] NOT NULL,
	--foreign key ([ID_Poliza]) references Aseguradoro(ID_Poliza), 
	[ID_Empleado] [int] NOT NULL,
	--foreign key ([ID_Empleado]) references Empleados(ID_Empleado),
	[ID_Cliente] [int] NOT NULL,
	--foreign key ([ID_Cliente]) references Clientes(ID_Cliente),
	[ID_Ramo] [int] NOT NULL,
	--foreign key ([ID_Ramo])  references Ramo(ID_Ramo),
	[fecha_sin] [date] NOT NULL,
	[Recibido] [date] NULL,
	[Revisado] [date] NULL,
	[Asignado] [date] NULL,
	[Visitado] [date] NULL,
	[Cerrado] [date] NULL,
	[Facturado] [date] NULL,
	[Direccion] [varchar](max) NULL,
	[Dictamen_final] [int] NULL,
	[Desplazamiento_del_emp] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Siniestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ASEGURADO] ON 

INSERT [dbo].[ASEGURADO] ([ID_Siniestro], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (1, 1, N'Gómez', N'Ana', N'Castilla, 10', N'Santander', N'39200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
INSERT [dbo].[ASEGURADO] ([ID_Siniestro], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (2, 2, N'Ruíz', N'Montse', N'Villa, 10', N'Marbella', N'29200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
INSERT [dbo].[ASEGURADO] ([ID_Siniestro], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (3, 3, N'Juan', N'Montserrat', N'Sevilla, 10', N'Sevilla', N'79200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
INSERT [dbo].[ASEGURADO] ([ID_Siniestro], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (4, 2, N'Rodríguez', N'Andrés', N'Maravilla, 10', N'Málaga', N'49200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
SET IDENTITY_INSERT [dbo].[ASEGURADO] OFF
GO
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (1, 1, N'ALLIANZ', N'Alberto', N'Gilbert', N'(171) 456-7890', N'Palacios 3', N'London', N'39100', N'UK')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (2, 2, N'QUALITAS', N'Rocío', N'Alday', N'(91) 456-7890', N'Alday 3', N'Madrid', N'25391', N'ESPAÑA')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (3, 2, N'OCASO', N'Manolo', N'Puerta', N'(91) 456-7890', N'Alcalá 200', N'Madrid', N'25391', N'ESPAÑA')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (4, 2, N'ETERNA ASEGURADORA', N'Raúl', N'Barrio Pesquero', N'(91) 456-7890', N'Capitán 45', N'Valencia', N'45391', N'ESPAÑA')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (5, 2, N'QUALITAS', N'Rocío', N'Alday', N'(91) 456-7890', N'Alday 3', N'Madrid', N'25391', N'ESPAÑA')
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ID_Cliente], [NIF], [Nombre y apellidos], [Direccion], [Telefono], [E-mail]) VALUES (1, N'66666661A           ', N'Gómez Ana', N'Castilla, 10', N'942 36 36 36        ', N'EMAIL@MAIL.COM')
INSERT [dbo].[Clientes] ([ID_Cliente], [NIF], [Nombre y apellidos], [Direccion], [Telefono], [E-mail]) VALUES (2, N'86666661A           ', N'AYUNTAMIENTO SANTANDER', N'MAYOR, 10', N'942 36 36 36        ', N'AYUNTAMIENTO@MAIL.COM')
INSERT [dbo].[Clientes] ([ID_Cliente], [NIF], [Nombre y apellidos], [Direccion], [Telefono], [E-mail]) VALUES (3, N'99999961A           ', N'CENTRO FORMACION', N'BARRIO PESQUERO, 10', N'942 36 36 36        ', N'PESQUERO@MAIL.COM')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[COBERTURAS] ON 

INSERT [dbo].[COBERTURAS] ([ID_cobertura], [tipocobertura], [descripcion]) VALUES (1, N'Casa', N'Siniestros en domicilios y edificios')
INSERT [dbo].[COBERTURAS] ([ID_cobertura], [tipocobertura], [descripcion]) VALUES (2, N'Automóvil', N'Siniestros en vehículos particulares')
INSERT [dbo].[COBERTURAS] ([ID_cobertura], [tipocobertura], [descripcion]) VALUES (3, N'Moto', N'Siniestros con motocicletas')
INSERT [dbo].[COBERTURAS] ([ID_cobertura], [tipocobertura], [descripcion]) VALUES (4, N'Vida', N'Seguros de vida')
SET IDENTITY_INSERT [dbo].[COBERTURAS] OFF
GO
INSERT [dbo].[Detalles] ([ID_Factura], [Concepto], [Total]) VALUES (1, N'Primer Siniestro GRUPO0', 100)
INSERT [dbo].[Detalles] ([ID_Factura], [Concepto], [Total]) VALUES (2, N'Siniestro GRUPO0', 200)
INSERT [dbo].[Detalles] ([ID_Factura], [Concepto], [Total]) VALUES (3, N'Siniestro GRUPO0', 300)
INSERT [dbo].[Detalles] ([ID_Factura], [Concepto], [Total]) VALUES (4, N'Siniestro GRUPO0', 400)
INSERT [dbo].[Detalles] ([ID_Factura], [Concepto], [Total]) VALUES (5, N'Siniestro GRUPO0', 500)
INSERT [dbo].[Detalles] ([ID_Factura], [Concepto], [Total]) VALUES (6, N'Siniestro GRUPO0', 600)
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([ID_Empleado], [Nombre], [Apellidos], [Telefono]) VALUES (1, N'Ana', N'Castilla                      ', N'942 36 36 36        ')
INSERT [dbo].[Empleados] ([ID_Empleado], [Nombre], [Apellidos], [Telefono]) VALUES (2, N'Ana', N'Castilla                      ', N'942 36 36 36        ')
INSERT [dbo].[Empleados] ([ID_Empleado], [Nombre], [Apellidos], [Telefono]) VALUES (3, N'Carlos', N'Castilla                      ', N'942 36 36 37        ')
INSERT [dbo].[Empleados] ([ID_Empleado], [Nombre], [Apellidos], [Telefono]) VALUES (4, N'Victor', N'Castilla                      ', N'942 36 36 38        ')
INSERT [dbo].[Empleados] ([ID_Empleado], [Nombre], [Apellidos], [Telefono]) VALUES (5, N'Antonia', N'Castilla                      ', N'942 36 36 39        ')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([ID_Factura], [ID_Cliente], [Facturado], [Detalle], [ID_Siniestro]) VALUES (1, 1, CAST(N'2022-11-21' AS Date), N'Primer Siniestro GRUPO0                 ', 1)
INSERT [dbo].[Facturas] ([ID_Factura], [ID_Cliente], [Facturado], [Detalle], [ID_Siniestro]) VALUES (2, 2, CAST(N'2022-11-21' AS Date), N'Segundo Siniestro GRUPO0                ', 2)
INSERT [dbo].[Facturas] ([ID_Factura], [ID_Cliente], [Facturado], [Detalle], [ID_Siniestro]) VALUES (3, 1, CAST(N'2022-11-21' AS Date), N'Primer Siniestro GRUPO0                 ', 1)
INSERT [dbo].[Facturas] ([ID_Factura], [ID_Cliente], [Facturado], [Detalle], [ID_Siniestro]) VALUES (4, 2, CAST(N'2022-11-21' AS Date), N'Segundo Siniestro GRUPO0                ', 2)
INSERT [dbo].[Facturas] ([ID_Factura], [ID_Cliente], [Facturado], [Detalle], [ID_Siniestro]) VALUES (5, 3, CAST(N'2022-11-21' AS Date), N'Tercer Siniestro GRUPO0                 ', 3)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Ramo] ON 

INSERT [dbo].[Ramo] ([ID_Ramo], [Tipo de ramo]) VALUES (1, N'Agua      ')
INSERT [dbo].[Ramo] ([ID_Ramo], [Tipo de ramo]) VALUES (2, N'Fuego     ')
INSERT [dbo].[Ramo] ([ID_Ramo], [Tipo de ramo]) VALUES (3, N'Robo      ')
INSERT [dbo].[Ramo] ([ID_Ramo], [Tipo de ramo]) VALUES (4, N'Viento    ')
SET IDENTITY_INSERT [dbo].[Ramo] OFF
GO
SET IDENTITY_INSERT [dbo].[SINIESTRO] ON 

INSERT [dbo].[SINIESTRO] ([ID_Siniestro], [ID_Poliza], [ID_Empleado], [ID_Cliente], [ID_Ramo], [fecha_sin], [Recibido], [Revisado], [Asignado], [Visitado], [Cerrado], [Facturado], [Direccion], [Dictamen_final], [Desplazamiento_del_emp]) VALUES (5, 1008, 1, 2, 1, '20220805', CAST(N'2022-11-01' AS Date), CAST(N'2022-11-02' AS Date), CAST(N'2022-11-09' AS Date), CAST(N'2022-11-10' AS Date), CAST(N'2022-11-20' AS Date), CAST(N'2022-11-21' AS Date), N'AYUNTAMIENTO SANTANDER', 2000, 200)
SET IDENTITY_INSERT [dbo].[SINIESTRO] OFF
GO
ALTER TABLE [dbo].[ASEGURADO]  WITH CHECK ADD  CONSTRAINT [FK_ASEGURADO_ASEGURADORA] FOREIGN KEY([ID_Aseguradora])
REFERENCES [dbo].[ASEGURADORA] ([ID_Aseguradora])
GO
ALTER TABLE [dbo].[ASEGURADO] CHECK CONSTRAINT [FK_ASEGURADO_ASEGURADORA]
GO
ALTER TABLE [dbo].[ASEGURADORA]  WITH CHECK ADD  CONSTRAINT [FK_ASEGURADORA_COBERTURAS] FOREIGN KEY([ID_Cobertura])
REFERENCES [dbo].[COBERTURAS] ([ID_cobertura])
GO
ALTER TABLE [dbo].[ASEGURADORA] CHECK CONSTRAINT [FK_ASEGURADORA_COBERTURAS]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Clientes] FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Clientes] ([ID_Cliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Clientes]
GO
USE [master]
GO
ALTER DATABASE [DB_GRUPO_0] SET  READ_WRITE 
GO
