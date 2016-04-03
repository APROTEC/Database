USE [master]
GO
/****** Object:  Database [aprotecBD]    Script Date: 03/04/2016 14:53:46 ******/
CREATE DATABASE [aprotecBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aprotecBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\aprotecBD.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'aprotecBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\aprotecBD_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [aprotecBD] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aprotecBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aprotecBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aprotecBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aprotecBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aprotecBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aprotecBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [aprotecBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aprotecBD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [aprotecBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aprotecBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aprotecBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aprotecBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aprotecBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aprotecBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aprotecBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aprotecBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aprotecBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aprotecBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aprotecBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aprotecBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aprotecBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aprotecBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aprotecBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [aprotecBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aprotecBD] SET RECOVERY FULL 
GO
ALTER DATABASE [aprotecBD] SET  MULTI_USER 
GO
ALTER DATABASE [aprotecBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aprotecBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aprotecBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aprotecBD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'aprotecBD', N'ON'
GO
USE [aprotecBD]
GO
/****** Object:  User [ld]    Script Date: 03/04/2016 14:53:46 ******/
CREATE USER [ld] FOR LOGIN [ld] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Acompanantes_Usuarios]    Script Date: 03/04/2016 14:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acompanantes_Usuarios](
	[codigo_usuario] [int] NOT NULL,
	[codigo_evento] [int] NOT NULL,
	[codigo_opcion_acompanante] [int] NOT NULL,
	[numero_acompanantes] [int] NOT NULL,
 CONSTRAINT [PK_Acompanantes_Usuarios] PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC,
	[codigo_evento] ASC,
	[codigo_opcion_acompanante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[codigo_administrador] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cargo_junta_directiva] [int] NULL,
 CONSTRAINT [PK_Administradores] PRIMARY KEY CLUSTERED 
(
	[codigo_administrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cantones]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cantones](
	[codigo_canton] [numeric](2, 0) IDENTITY(1,1) NOT NULL,
	[codigo_provincia] [numeric](1, 0) NULL,
	[nombre_canton] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Cantones] PRIMARY KEY CLUSTERED 
(
	[codigo_canton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cargos_Junta_Directiva]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cargos_Junta_Directiva](
	[codigo_cargo_junta_directiva] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_cargo] [varchar](max) NULL,
	[nombre_cargo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cargos_Junta_Directiva] PRIMARY KEY CLUSTERED 
(
	[codigo_cargo_junta_directiva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comentarios](
	[codigo_comentario] [int] IDENTITY(1,1) NOT NULL,
	[codigo_usuario] [int] NOT NULL,
	[comentario] [varchar](max) NOT NULL,
	[codigo_evento] [int] NOT NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[codigo_comentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[codigo_departamento] [int] IDENTITY(1,1) NOT NULL,
	[nombre_departamento] [varchar](100) NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[codigo_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detalles_Actividades_Eventos]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Detalles_Actividades_Eventos](
	[codigo_detalle_actividad] [int] NOT NULL,
	[codigo_evento] [int] NOT NULL,
	[descripcion_actividad] [varchar](100) NOT NULL,
	[precio] [money] NOT NULL,
	[contacto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Detalles_Actividades_Eventos] PRIMARY KEY CLUSTERED 
(
	[codigo_detalle_actividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evento_Opciones_Acompanante]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento_Opciones_Acompanante](
	[codigo_evento] [int] NOT NULL,
	[codigo_opcion_acompanante] [int] NOT NULL,
	[precio] [money] NOT NULL,
 CONSTRAINT [PK_Evento_Opciones_Acompanante] PRIMARY KEY CLUSTERED 
(
	[codigo_evento] ASC,
	[codigo_opcion_acompanante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Eventos](
	[codigo_evento] [int] IDENTITY(1,1) NOT NULL,
	[lugar] [varchar](500) NOT NULL,
	[fecha_hora] [datetime] NOT NULL,
	[numero_maximo_acompanantes] [int] NOT NULL,
	[descripcion] [varchar](500) NOT NULL,
	[documento] [image] NULL,
	[codigo_tipo_evento] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[codigo_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Eventos_Responsables]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Eventos_Responsables](
	[codigo_evento] [int] NOT NULL,
	[codigo_responsable] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[descripcion_responsabilidad] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Eventos_Responsables_1] PRIMARY KEY CLUSTERED 
(
	[codigo_responsable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grados_Academicos]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grados_Academicos](
	[codigo_grado_academico] [int] IDENTITY(1,1) NOT NULL,
	[nivel_especializacion] [varchar](50) NOT NULL,
	[campo_estudio] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Grados_Academicos] PRIMARY KEY CLUSTERED 
(
	[codigo_grado_academico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grados_Academicos_Personas]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grados_Academicos_Personas](
	[codigo_grado_academico] [int] NOT NULL,
	[codigo_informacion_persona] [int] NOT NULL,
 CONSTRAINT [PK_Grados_Academicos_Personas] PRIMARY KEY CLUSTERED 
(
	[codigo_grado_academico] ASC,
	[codigo_informacion_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grupos]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupos](
	[codigo_grupo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_grupo] [varchar](400) NOT NULL,
 CONSTRAINT [PK_Grupos] PRIMARY KEY CLUSTERED 
(
	[codigo_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hobbies]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hobbies](
	[codigo_hobby] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_hobby] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Hobbies] PRIMARY KEY CLUSTERED 
(
	[codigo_hobby] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hobbies_Personas]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hobbies_Personas](
	[codigo_informacion_persona] [int] NOT NULL,
	[codigo_hobby] [int] NOT NULL,
 CONSTRAINT [PK_Hobbies_Personas] PRIMARY KEY CLUSTERED 
(
	[codigo_informacion_persona] ASC,
	[codigo_hobby] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Informacion_Personas]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_Personas](
	[codigo_informacion_persona] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[foto] [image] NULL,
	[correo_personal] [varchar](500) NULL,
	[codigo_talla_camisa] [varchar](5) NULL,
	[cargo_jefatura] [bit] NULL,
	[vegetariano] [bit] NULL,
	[codigo_sede] [int] NULL,
	[codigo_canton] [numeric](2, 0) NULL,
	[codigo_sub_departamento] [int] NULL,
	[cedula] [varchar](9) NULL,
	[correo_institucional] [varchar](100) NULL,
	[telefono_trabajo] [varchar](100) NULL,
	[numero_extension] [varchar](10) NULL,
 CONSTRAINT [PK_Informacion_Personas] PRIMARY KEY CLUSTERED 
(
	[codigo_informacion_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Miembros_Grupo]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Miembros_Grupo](
	[codigo_usuario] [int] NOT NULL,
	[codigo_grupo] [int] NOT NULL,
 CONSTRAINT [PK_Miembros_Grupo] PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC,
	[codigo_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Opciones_Acomponante]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Opciones_Acomponante](
	[codigo_opcion_acompanante] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Opciones_Acomponante] PRIMARY KEY CLUSTERED 
(
	[codigo_opcion_acompanante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincias](
	[codigo_provincia] [numeric](1, 0) IDENTITY(1,1) NOT NULL,
	[nombre_provincia] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[codigo_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sedes]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sedes](
	[codigo_sede] [int] IDENTITY(1,1) NOT NULL,
	[nombre_sede] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sedes] PRIMARY KEY CLUSTERED 
(
	[codigo_sede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sub_Departamentos]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sub_Departamentos](
	[codigo_sub_departamento] [int] IDENTITY(1,1) NOT NULL,
	[codigo_departamento] [int] NOT NULL,
	[nombre_sub_departamento] [varchar](300) NOT NULL,
 CONSTRAINT [PK_Sub_Departamentos] PRIMARY KEY CLUSTERED 
(
	[codigo_sub_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tallas_Camisas]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tallas_Camisas](
	[codigo_talla_camisa] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Tallas_Camisas] PRIMARY KEY CLUSTERED 
(
	[codigo_talla_camisa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipos_Eventos]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipos_Eventos](
	[codigo_tipo_evento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipos_Eventos] PRIMARY KEY CLUSTERED 
(
	[codigo_tipo_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipos_Usuarios]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipos_Usuarios](
	[codigo_tipo_usuario] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Tipos_Usuarios] PRIMARY KEY CLUSTERED 
(
	[codigo_tipo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[codigo_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario] [nvarchar](50) NOT NULL,
	[contrasena] [varchar](50) NOT NULL,
	[codigo_tipo_usuario] [varchar](1) NOT NULL,
	[codigo_informacion_persona] [int] NULL,
	[codigo_administrador] [int] NULL,
	[fecha_ingreso] [date] NOT NULL,
	[fecha_salida] [date] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios_Invitados]    Script Date: 03/04/2016 14:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios_Invitados](
	[codigo_usuario] [int] NOT NULL,
	[codigo_evento] [int] NOT NULL,
	[confirmado] [bit] NOT NULL,
	[precio_entradas] [int] NULL,
 CONSTRAINT [PK_Usuarios_Invitados] PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC,
	[codigo_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Usuarios]    Script Date: 03/04/2016 14:53:47 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Usuarios] ON [dbo].[Usuarios]
(
	[nombre_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Acompanantes_Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Acompanantes_Usuarios_Evento_Opciones_Acompanante] FOREIGN KEY([codigo_evento], [codigo_opcion_acompanante])
REFERENCES [dbo].[Evento_Opciones_Acompanante] ([codigo_evento], [codigo_opcion_acompanante])
GO
ALTER TABLE [dbo].[Acompanantes_Usuarios] CHECK CONSTRAINT [FK_Acompanantes_Usuarios_Evento_Opciones_Acompanante]
GO
ALTER TABLE [dbo].[Acompanantes_Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Acompanantes_Usuarios_Usuarios_Invitados] FOREIGN KEY([codigo_usuario], [codigo_evento])
REFERENCES [dbo].[Usuarios_Invitados] ([codigo_usuario], [codigo_evento])
GO
ALTER TABLE [dbo].[Acompanantes_Usuarios] CHECK CONSTRAINT [FK_Acompanantes_Usuarios_Usuarios_Invitados]
GO
ALTER TABLE [dbo].[Administradores]  WITH CHECK ADD  CONSTRAINT [FK_Administradores_Cargos_Junta_Directiva] FOREIGN KEY([codigo_cargo_junta_directiva])
REFERENCES [dbo].[Cargos_Junta_Directiva] ([codigo_cargo_junta_directiva])
GO
ALTER TABLE [dbo].[Administradores] CHECK CONSTRAINT [FK_Administradores_Cargos_Junta_Directiva]
GO
ALTER TABLE [dbo].[Cantones]  WITH CHECK ADD  CONSTRAINT [FK_Cantones_Provincias] FOREIGN KEY([codigo_provincia])
REFERENCES [dbo].[Provincias] ([codigo_provincia])
GO
ALTER TABLE [dbo].[Cantones] CHECK CONSTRAINT [FK_Cantones_Provincias]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Eventos] FOREIGN KEY([codigo_evento])
REFERENCES [dbo].[Eventos] ([codigo_evento])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Eventos]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Usuarios] FOREIGN KEY([codigo_usuario])
REFERENCES [dbo].[Usuarios] ([codigo_usuario])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Usuarios]
GO
ALTER TABLE [dbo].[Detalles_Actividades_Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Detalles_Actividades_Eventos_Eventos] FOREIGN KEY([codigo_evento])
REFERENCES [dbo].[Eventos] ([codigo_evento])
GO
ALTER TABLE [dbo].[Detalles_Actividades_Eventos] CHECK CONSTRAINT [FK_Detalles_Actividades_Eventos_Eventos]
GO
ALTER TABLE [dbo].[Evento_Opciones_Acompanante]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Opciones_Acompanante_Eventos] FOREIGN KEY([codigo_evento])
REFERENCES [dbo].[Eventos] ([codigo_evento])
GO
ALTER TABLE [dbo].[Evento_Opciones_Acompanante] CHECK CONSTRAINT [FK_Evento_Opciones_Acompanante_Eventos]
GO
ALTER TABLE [dbo].[Evento_Opciones_Acompanante]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Opciones_Acompanante_Opciones_Acomponante] FOREIGN KEY([codigo_opcion_acompanante])
REFERENCES [dbo].[Opciones_Acomponante] ([codigo_opcion_acompanante])
GO
ALTER TABLE [dbo].[Evento_Opciones_Acompanante] CHECK CONSTRAINT [FK_Evento_Opciones_Acompanante_Opciones_Acomponante]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_Tipos_Eventos] FOREIGN KEY([codigo_tipo_evento])
REFERENCES [dbo].[Tipos_Eventos] ([codigo_tipo_evento])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_Tipos_Eventos]
GO
ALTER TABLE [dbo].[Eventos_Responsables]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_Responsables_Eventos] FOREIGN KEY([codigo_evento])
REFERENCES [dbo].[Eventos] ([codigo_evento])
GO
ALTER TABLE [dbo].[Eventos_Responsables] CHECK CONSTRAINT [FK_Eventos_Responsables_Eventos]
GO
ALTER TABLE [dbo].[Grados_Academicos_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Grados_Academicos_Personas_Grados_Academicos] FOREIGN KEY([codigo_grado_academico])
REFERENCES [dbo].[Grados_Academicos] ([codigo_grado_academico])
GO
ALTER TABLE [dbo].[Grados_Academicos_Personas] CHECK CONSTRAINT [FK_Grados_Academicos_Personas_Grados_Academicos]
GO
ALTER TABLE [dbo].[Grados_Academicos_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Grados_Academicos_Personas_Informacion_Personas] FOREIGN KEY([codigo_informacion_persona])
REFERENCES [dbo].[Informacion_Personas] ([codigo_informacion_persona])
GO
ALTER TABLE [dbo].[Grados_Academicos_Personas] CHECK CONSTRAINT [FK_Grados_Academicos_Personas_Informacion_Personas]
GO
ALTER TABLE [dbo].[Hobbies_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Hobbies_Personas_Hobbies] FOREIGN KEY([codigo_hobby])
REFERENCES [dbo].[Hobbies] ([codigo_hobby])
GO
ALTER TABLE [dbo].[Hobbies_Personas] CHECK CONSTRAINT [FK_Hobbies_Personas_Hobbies]
GO
ALTER TABLE [dbo].[Hobbies_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Hobbies_Personas_Informacion_Personas] FOREIGN KEY([codigo_informacion_persona])
REFERENCES [dbo].[Informacion_Personas] ([codigo_informacion_persona])
GO
ALTER TABLE [dbo].[Hobbies_Personas] CHECK CONSTRAINT [FK_Hobbies_Personas_Informacion_Personas]
GO
ALTER TABLE [dbo].[Informacion_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Personas_Cantones] FOREIGN KEY([codigo_canton])
REFERENCES [dbo].[Cantones] ([codigo_canton])
GO
ALTER TABLE [dbo].[Informacion_Personas] CHECK CONSTRAINT [FK_Informacion_Personas_Cantones]
GO
ALTER TABLE [dbo].[Informacion_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Personas_Sedes] FOREIGN KEY([codigo_sede])
REFERENCES [dbo].[Sedes] ([codigo_sede])
GO
ALTER TABLE [dbo].[Informacion_Personas] CHECK CONSTRAINT [FK_Informacion_Personas_Sedes]
GO
ALTER TABLE [dbo].[Informacion_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Personas_Sub_Departamentos] FOREIGN KEY([codigo_sub_departamento])
REFERENCES [dbo].[Sub_Departamentos] ([codigo_sub_departamento])
GO
ALTER TABLE [dbo].[Informacion_Personas] CHECK CONSTRAINT [FK_Informacion_Personas_Sub_Departamentos]
GO
ALTER TABLE [dbo].[Informacion_Personas]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Personas_Tallas_Camisas] FOREIGN KEY([codigo_talla_camisa])
REFERENCES [dbo].[Tallas_Camisas] ([codigo_talla_camisa])
GO
ALTER TABLE [dbo].[Informacion_Personas] CHECK CONSTRAINT [FK_Informacion_Personas_Tallas_Camisas]
GO
ALTER TABLE [dbo].[Miembros_Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Miembros_Grupo_Grupos] FOREIGN KEY([codigo_grupo])
REFERENCES [dbo].[Grupos] ([codigo_grupo])
GO
ALTER TABLE [dbo].[Miembros_Grupo] CHECK CONSTRAINT [FK_Miembros_Grupo_Grupos]
GO
ALTER TABLE [dbo].[Miembros_Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Miembros_Grupo_Usuarios] FOREIGN KEY([codigo_usuario])
REFERENCES [dbo].[Usuarios] ([codigo_usuario])
GO
ALTER TABLE [dbo].[Miembros_Grupo] CHECK CONSTRAINT [FK_Miembros_Grupo_Usuarios]
GO
ALTER TABLE [dbo].[Sub_Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_Sub_Departamentos_Departamentos] FOREIGN KEY([codigo_departamento])
REFERENCES [dbo].[Departamentos] ([codigo_departamento])
GO
ALTER TABLE [dbo].[Sub_Departamentos] CHECK CONSTRAINT [FK_Sub_Departamentos_Departamentos]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Administradores] FOREIGN KEY([codigo_administrador])
REFERENCES [dbo].[Administradores] ([codigo_administrador])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Administradores]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Informacion_Personas] FOREIGN KEY([codigo_informacion_persona])
REFERENCES [dbo].[Informacion_Personas] ([codigo_informacion_persona])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Informacion_Personas]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Tipos_Usuarios1] FOREIGN KEY([codigo_tipo_usuario])
REFERENCES [dbo].[Tipos_Usuarios] ([codigo_tipo_usuario])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Tipos_Usuarios1]
GO
ALTER TABLE [dbo].[Usuarios_Invitados]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Invitados_Eventos] FOREIGN KEY([codigo_evento])
REFERENCES [dbo].[Eventos] ([codigo_evento])
GO
ALTER TABLE [dbo].[Usuarios_Invitados] CHECK CONSTRAINT [FK_Usuarios_Invitados_Eventos]
GO
ALTER TABLE [dbo].[Usuarios_Invitados]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Invitados_Usuarios] FOREIGN KEY([codigo_usuario])
REFERENCES [dbo].[Usuarios] ([codigo_usuario])
GO
ALTER TABLE [dbo].[Usuarios_Invitados] CHECK CONSTRAINT [FK_Usuarios_Invitados_Usuarios]
GO
USE [master]
GO
ALTER DATABASE [aprotecBD] SET  READ_WRITE 
GO
