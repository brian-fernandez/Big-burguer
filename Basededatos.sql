USE [master]
GO
/****** Object:  Database [restaurante]    Script Date: 07/04/2021 11:15:32 a. m. ******/
CREATE DATABASE [restaurante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restaurante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\restaurante.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'restaurante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\restaurante_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [restaurante] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restaurante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restaurante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restaurante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restaurante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restaurante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restaurante] SET ARITHABORT OFF 
GO
ALTER DATABASE [restaurante] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [restaurante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restaurante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restaurante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restaurante] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restaurante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restaurante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restaurante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restaurante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restaurante] SET  ENABLE_BROKER 
GO
ALTER DATABASE [restaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restaurante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restaurante] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restaurante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restaurante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restaurante] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restaurante] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restaurante] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [restaurante] SET  MULTI_USER 
GO
ALTER DATABASE [restaurante] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restaurante] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restaurante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restaurante] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [restaurante] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [restaurante] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [restaurante] SET QUERY_STORE = OFF
GO
USE [restaurante]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 07/04/2021 11:15:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[idCargo] [varchar](50) NOT NULL,
	[nombreCargo] [varchar](50) NULL,
	[disponibilidad] [varchar](50) NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/04/2021 11:15:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ci] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoPaterno] [varchar](50) NOT NULL,
	[apellidoMaterno] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[fechaNacimiento] [date] NOT NULL,
	[telefono] [int] NULL,
	[contraseña] [varchar](350) NOT NULL,
	[idVivienda] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle]    Script Date: 07/04/2021 11:15:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idPlato] [int] NOT NULL,
	[idVenta] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[costo] [float] NOT NULL,
 CONSTRAINT [PK_Detalle] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 07/04/2021 11:15:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[idPlato] [int] NOT NULL,
	[nombrePlato] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[costo] [float] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[idPlato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 07/04/2021 11:15:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[ci] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoPaterno] [varchar](50) NOT NULL,
	[apellidoMaterno] [varchar](50) NULL,
	[Contraseña] [varchar](300) NOT NULL,
	[idCargo] [varchar](50) NOT NULL,
	[telefono] [int] NULL,
	[correo] [varchar](60) NULL,
	[estado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[ci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 07/04/2021 11:15:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[costoTotal] [float] NOT NULL,
	[idUsuario] [int] NULL,
	[idCliente] [int] NOT NULL,
	[fechaVenta] [date] NOT NULL,
	[tipoPedido] [varchar](25) NOT NULL,
	[estado] [varchar](25) NOT NULL,
	[descripcion] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vivienda]    Script Date: 07/04/2021 11:15:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vivienda](
	[idVivienda] [int] IDENTITY(1,1) NOT NULL,
	[numeroCasa] [int] NOT NULL,
	[calle] [varchar](100) NOT NULL,
	[descripción] [varchar](400) NOT NULL,
 CONSTRAINT [PK_vivienda] PRIMARY KEY CLUSTERED 
(
	[idVivienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cargo] ([idCargo], [nombreCargo], [disponibilidad]) VALUES (N'0', N'delibery', N'ocupado')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombreCargo], [disponibilidad]) VALUES (N'1', N'Recepcionista', N'ocupado')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombreCargo], [disponibilidad]) VALUES (N'2', N'Administrador', N'ocupado')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombreCargo], [disponibilidad]) VALUES (N'3', N'Recepcionista2', N'disponible')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombreCargo], [disponibilidad]) VALUES (N'4', N'Recepcionista3', N'ocupado')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombreCargo], [disponibilidad]) VALUES (N'5', N'Administrador2', N'ocupado')
GO
INSERT [dbo].[Cliente] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [correo], [fechaNacimiento], [telefono], [contraseña], [idVivienda]) VALUES (9403422, N'pepa', N'armando', N'Alvarez', N'pepa@gmail.com', CAST(N'1999-11-11' AS Date), 42312543, N'12345', 1)
GO
INSERT [dbo].[Cliente] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [correo], [fechaNacimiento], [telefono], [contraseña], [idVivienda]) VALUES (12345678, N'Carlos', N'Medina', N'Torrez', N'carl@gmail.com', CAST(N'1998-03-06' AS Date), 7654321, N'123456', 2)
GO
INSERT [dbo].[Cliente] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [correo], [fechaNacimiento], [telefono], [contraseña], [idVivienda]) VALUES (87654321, N'Carlos', N'Torrez', N'Torrez', N'carlos@gmail.com', CAST(N'2021-04-01' AS Date), 7777777, N'6666', 2)
GO
INSERT [dbo].[Cliente] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [correo], [fechaNacimiento], [telefono], [contraseña], [idVivienda]) VALUES (534563456, N'carlos', N'inturias ', N'demon', N'carlos@gmail.com', CAST(N'1999-11-12' AS Date), 3124324, N'carid5', 47)
GO
SET IDENTITY_INSERT [dbo].[Detalle] ON 
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (2, 2, 6, 1, 8)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (3, 3, 6, 1, 10)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (4, 2, 7, 1, 8)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (5, 4, 7, 1, 15)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (6, 1, 7, 2, 20)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (7, 2, 8, 1, 8)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (8, 1, 16, 3, 30)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (9, 1, 17, 3, 30)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (10, 2, 17, 1, 8)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (11, 4, 18, 1, 15)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (12, 1, 19, 1, 10)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (13, 1, 20, 1, 10)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (14, 1, 21, 1, 10)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (15, 1, 22, 1, 10)
GO
INSERT [dbo].[Detalle] ([idDetalle], [idPlato], [idVenta], [cantidad], [costo]) VALUES (16, 1, 23, 2, 20)
GO
SET IDENTITY_INSERT [dbo].[Detalle] OFF
GO
INSERT [dbo].[Menu] ([idPlato], [nombrePlato], [estado], [costo]) VALUES (1, N'Hamburguesa', N'stock', 10)
GO
INSERT [dbo].[Menu] ([idPlato], [nombrePlato], [estado], [costo]) VALUES (2, N'Tacos', N'stock', 8)
GO
INSERT [dbo].[Menu] ([idPlato], [nombrePlato], [estado], [costo]) VALUES (3, N'Pollo Parrilla', N'stock', 10)
GO
INSERT [dbo].[Menu] ([idPlato], [nombrePlato], [estado], [costo]) VALUES (4, N'Pique', N'stock', 15)
GO
INSERT [dbo].[Personal] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [Contraseña], [idCargo], [telefono], [correo], [estado]) VALUES (14696249, N'brian ', N'Fernandez', N'Mercado', N'12345', N'2', 69489025, N'brian@gmail.com', N'habilitado')
GO
INSERT [dbo].[Personal] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [Contraseña], [idCargo], [telefono], [correo], [estado]) VALUES (32412345, N'asdfasd', N'sdawef', N'asdf', N'123', N'5', 2141234231, N'pedro@gmail.com', N'habilitado')
GO
INSERT [dbo].[Personal] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [Contraseña], [idCargo], [telefono], [correo], [estado]) VALUES (43215678, N'felix', N'mamani', NULL, N'123', N'4', 54761324, N'felix@gmail.com', N'inhabilitado')
GO
INSERT [dbo].[Personal] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [Contraseña], [idCargo], [telefono], [correo], [estado]) VALUES (69489025, N'kevin', N'Campero', N'Alavarez', N'666', N'1', 12345678, N'kevin@gmail.com', N'habilitado')
GO
INSERT [dbo].[Personal] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [Contraseña], [idCargo], [telefono], [correo], [estado]) VALUES (87651234, N'alejandro', N'mollo', NULL, N'123', N'3', 87654321, N'ale@gmail.com', N'inhabilitado')
GO
INSERT [dbo].[Personal] ([ci], [nombre], [apellidoPaterno], [apellidoMaterno], [Contraseña], [idCargo], [telefono], [correo], [estado]) VALUES (123123123, N'pepee', N'asdf', N'ertwe', N'123', N'5', 12345678, N'jorge@gmail.com', N'inhabilitado')
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (6, 18, 0, 9403422, CAST(N'2021-05-04' AS Date), N'Delivery', N'Atendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (7, 43, 0, 9403422, CAST(N'2021-05-04' AS Date), N'Delivery', N'Atendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (8, 8, 0, 87654321, CAST(N'2021-06-04' AS Date), N'Delivery', N'Desatendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (16, 30, 0, 12345678, CAST(N'2021-06-04' AS Date), N'Delivery', N'Desatendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (17, 38, 0, 12345678, CAST(N'2021-06-04' AS Date), N'Delivery', N'Desatendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (18, 15, 14696249, 9403422, CAST(N'2021-07-04' AS Date), N'Personal', N'Atendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (19, 10, 0, 9403422, CAST(N'2021-07-04' AS Date), N'Delivery', N'Atendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (20, 10, 14696249, 9403422, CAST(N'2021-07-04' AS Date), N'Personal', N'Atendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (21, 10, 14696249, 9403422, CAST(N'2021-04-07' AS Date), N'Personal', N'Atendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (22, 10, 14696249, 9403422, CAST(N'2021-04-07' AS Date), N'Personal', N'Atendido', N'')
GO
INSERT [dbo].[Venta] ([id], [costoTotal], [idUsuario], [idCliente], [fechaVenta], [tipoPedido], [estado], [descripcion]) VALUES (23, 20, 0, 9403422, CAST(N'2021-04-07' AS Date), N'Delivery', N'Desatendido', N'')
GO
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
SET IDENTITY_INSERT [dbo].[vivienda] ON 
GO
INSERT [dbo].[vivienda] ([idVivienda], [numeroCasa], [calle], [descripción]) VALUES (1, 2020, N'Moto Mendez', N'Puerta Roja')
GO
INSERT [dbo].[vivienda] ([idVivienda], [numeroCasa], [calle], [descripción]) VALUES (2, 1015, N'Las cuadras', N'edificio negro 1er piso')
GO
INSERT [dbo].[vivienda] ([idVivienda], [numeroCasa], [calle], [descripción]) VALUES (47, 100, N'piedras blancas', N'avenida petrolera')
GO
SET IDENTITY_INSERT [dbo].[vivienda] OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_vivienda] FOREIGN KEY([idVivienda])
REFERENCES [dbo].[vivienda] ([idVivienda])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_vivienda]
GO
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Menu] FOREIGN KEY([idPlato])
REFERENCES [dbo].[Menu] ([idPlato])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Menu]
GO
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([id])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Venta]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Cargo] FOREIGN KEY([idCargo])
REFERENCES [dbo].[Cargo] ([idCargo])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Cargo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([ci])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
USE [master]
GO
ALTER DATABASE [restaurante] SET  READ_WRITE 
GO
