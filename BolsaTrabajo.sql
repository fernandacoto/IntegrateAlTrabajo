USE [master]
GO
/****** Object:  Database [BolsaTrabajo]    Script Date: 08/27/2013 13:46:30 ******/
/****** Prueba ******/
CREATE DATABASE [BolsaTrabajo] ON  PRIMARY 
( NAME = N'BolsaTrabajo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BolsaTrabajo.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BolsaTrabajo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BolsaTrabajo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BolsaTrabajo] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BolsaTrabajo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ARITHABORT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BolsaTrabajo] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BolsaTrabajo] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BolsaTrabajo] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BolsaTrabajo] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BolsaTrabajo] SET  DISABLE_BROKER
GO
ALTER DATABASE [BolsaTrabajo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BolsaTrabajo] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BolsaTrabajo] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BolsaTrabajo] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BolsaTrabajo] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BolsaTrabajo] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BolsaTrabajo] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BolsaTrabajo] SET  READ_WRITE
GO
ALTER DATABASE [BolsaTrabajo] SET RECOVERY FULL
GO
ALTER DATABASE [BolsaTrabajo] SET  MULTI_USER
GO
ALTER DATABASE [BolsaTrabajo] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BolsaTrabajo] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BolsaTrabajo', N'ON'
GO
USE [BolsaTrabajo]
GO
/****** Object:  Table [dbo].[IATTipoUsuario]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoUsuario](
	[Id_TipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoUsuario] [varchar](15) NOT NULL,
 CONSTRAINT [PK_IATTipoUsuario] PRIMARY KEY CLUSTERED 
(
	[Id_TipoUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATTipoTrabajo]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoTrabajo](
	[Id_TipoTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoTrabajo] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TipoServicio] PRIMARY KEY CLUSTERED 
(
	[Id_TipoTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATTipoGuiaUso]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoGuiaUso](
	[Id_TipoGuiaUso] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoGuiaUso] [varchar](20) NOT NULL,
 CONSTRAINT [PK_IATTipoGuiaUso] PRIMARY KEY CLUSTERED 
(
	[Id_TipoGuiaUso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATTipoContacto]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATTipoContacto](
	[Id_TipoContacto] [int] IDENTITY(1,1) NOT NULL,
	[Nom_TipoContacto] [varchar](15) NOT NULL,
 CONSTRAINT [PK_IATTipoContacto] PRIMARY KEY CLUSTERED 
(
	[Id_TipoContacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATProvincia]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATProvincia](
	[Id_Provincia] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Provincia] [varchar](15) NOT NULL,
 CONSTRAINT [PK_IATProvincia] PRIMARY KEY CLUSTERED 
(
	[Id_Provincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATCategoriaTrabajo]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATCategoriaTrabajo](
	[Id_CategoriaTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[Nom_CategoriaTrabajo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CategoriaServicio] PRIMARY KEY CLUSTERED 
(
	[Id_CategoriaTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATNoticia]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATNoticia](
	[Id_Noticia] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Dsc_Noticia] [varchar](500) NOT NULL,
 CONSTRAINT [PK_IATNoticia] PRIMARY KEY CLUSTERED 
(
	[Id_Noticia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATArticulo]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATArticulo](
	[Id_Articulo] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[RutaArticulo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_IATArticulo] PRIMARY KEY CLUSTERED 
(
	[Id_Articulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATIdioma]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATIdioma](
	[Id_Idioma] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Idioma] [varchar](15) NOT NULL,
 CONSTRAINT [PK_IATIdioma] PRIMARY KEY CLUSTERED 
(
	[Id_Idioma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATUsuario]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATUsuario](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Usuario] [varchar](30) NOT NULL,
	[Contrasenna] [binary](128) NOT NULL,
	[Indicio_Contrasenna] [varchar](50) NOT NULL,
	[FK_IdTipoUsuario] [int] NOT NULL,
 CONSTRAINT [PK_IATUsuario] PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATGuiaUso]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATGuiaUso](
	[Id_GuiaUso] [int] IDENTITY(1,1) NOT NULL,
	[RutaGuia] [varchar](100) NOT NULL,
	[FK_IdTipoGuiaUso] [int] NOT NULL,
 CONSTRAINT [PK_IATGuiaUso] PRIMARY KEY CLUSTERED 
(
	[Id_GuiaUso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATCanton]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATCanton](
	[Id_Canton] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Canton] [varchar](15) NOT NULL,
	[FK_IdProvincia] [int] NOT NULL,
 CONSTRAINT [PK_IATCanton] PRIMARY KEY CLUSTERED 
(
	[Id_Canton] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATEmpresa]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATEmpresa](
	[Id_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Empresa] [varchar](50) NOT NULL,
	[Num_CedulaJuridica] [varchar](30) NOT NULL,
	[Dsc_Empresa] [varchar](300) NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_IATEmpresa] PRIMARY KEY CLUSTERED 
(
	[Id_Empresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATDistrito]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATDistrito](
	[Id_Distrito] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Distrito] [varchar](15) NOT NULL,
	[FK_IdCanton] [int] NOT NULL,
 CONSTRAINT [PK_IATDistrito] PRIMARY KEY CLUSTERED 
(
	[Id_Distrito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATContacto]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATContacto](
	[Id_Contacto] [int] IDENTITY(1,1) NOT NULL,
	[Detalle] [varchar](50) NOT NULL,
	[FK_IdTipoContacto] [int] NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_IATContacto] PRIMARY KEY CLUSTERED 
(
	[Id_Contacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATOpinion]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATOpinion](
	[Id_Opinion] [int] IDENTITY(1,1) NOT NULL,
	[Detalle] [varchar](400) NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_IATOpinion] PRIMARY KEY CLUSTERED 
(
	[Id_Opinion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATOfertaTrabajo]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATOfertaTrabajo](
	[Id_OfertaTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Puesto] [varchar](50) NOT NULL,
	[Dsc_OfertaTrabajo] [varchar](200) NOT NULL,
	[Txt_Requisitos] [varchar](500) NOT NULL,
	[InformacionAdicional] [varchar](200) NOT NULL,
	[Ind_Activa] [bit] NOT NULL,
	[FK_IdCategoriaOfertaTrabajo] [int] NOT NULL,
	[FK_IdTipoOfertaTrabajo] [int] NOT NULL,
	[FK_IdEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_IATOfertaTrabajo] PRIMARY KEY CLUSTERED 
(
	[Id_OfertaTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATPersona]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATPersona](
	[Id_Persona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido1] [varchar](30) NOT NULL,
	[Apellido2] [varchar](30) NOT NULL,
	[Num_Cedula] [varchar](20) NOT NULL,
	[Fec_Nacimiento] [date] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[Pasatiempos] [varchar](300) NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
	[FK_IdDistrito] [int] NOT NULL,
 CONSTRAINT [PK_IATPersona] PRIMARY KEY CLUSTERED 
(
	[Id_Persona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATServicio]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATServicio](
	[Id_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Servicio] [varchar](30) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[FK_IdCategoriaServicio] [int] NOT NULL,
	[FK_IdTipoServicio] [int] NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATServicio] PRIMARY KEY CLUSTERED 
(
	[Id_Servicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATIdiomaXPersona]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IATIdiomaXPersona](
	[Id_IdiomaXPersona] [int] IDENTITY(1,1) NOT NULL,
	[FK_IdIdioma] [int] NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATIdiomaXPersona] PRIMARY KEY CLUSTERED 
(
	[Id_IdiomaXPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IATExperienciaLaboral]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATExperienciaLaboral](
	[Id_ExperienciaLaboral] [int] IDENTITY(1,1) NOT NULL,
	[AnnoInicial] [int] NOT NULL,
	[AnnoFinal] [int] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATExperienciaLaboral] PRIMARY KEY CLUSTERED 
(
	[Id_ExperienciaLaboral] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATEstudio]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATEstudio](
	[Id_Estudio] [int] IDENTITY(1,1) NOT NULL,
	[AnnoInicial] [int] NOT NULL,
	[AnnoFinal] [int] NOT NULL,
	[Institucion] [varchar](50) NOT NULL,
	[Titulo] [nchar](50) NOT NULL,
	[FK_IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_IATEstudio] PRIMARY KEY CLUSTERED 
(
	[Id_Estudio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATCalificacionEmpresa]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATCalificacionEmpresa](
	[Id_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Puntaje] [tinyint] NOT NULL,
	[Comentario] [varchar](300) NOT NULL,
	[FK_idPersona] [int] NOT NULL,
	[FK_idEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_IATCalificacionEmpresa] PRIMARY KEY CLUSTERED 
(
	[Id_Empresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IATDiaServicio]    Script Date: 08/27/2013 13:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IATDiaServicio](
	[Id_DiaServicio] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Dia] [char](1) NOT NULL,
	[Can_Horas] [tinyint] NOT NULL,
	[FK_IdServicio] [int] NOT NULL,
 CONSTRAINT [PK_DiaServicio] PRIMARY KEY CLUSTERED 
(
	[Id_DiaServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_IATUsuario_IATTipoUsuario]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATUsuario]  WITH CHECK ADD  CONSTRAINT [FK_IATUsuario_IATTipoUsuario] FOREIGN KEY([FK_IdTipoUsuario])
REFERENCES [dbo].[IATTipoUsuario] ([Id_TipoUsuario])
GO
ALTER TABLE [dbo].[IATUsuario] CHECK CONSTRAINT [FK_IATUsuario_IATTipoUsuario]
GO
/****** Object:  ForeignKey [FK_IATGuiaUso_IATTipoGuiaUso]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATGuiaUso]  WITH CHECK ADD  CONSTRAINT [FK_IATGuiaUso_IATTipoGuiaUso] FOREIGN KEY([FK_IdTipoGuiaUso])
REFERENCES [dbo].[IATTipoGuiaUso] ([Id_TipoGuiaUso])
GO
ALTER TABLE [dbo].[IATGuiaUso] CHECK CONSTRAINT [FK_IATGuiaUso_IATTipoGuiaUso]
GO
/****** Object:  ForeignKey [FK_IATCanton_IATProvincia]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATCanton]  WITH CHECK ADD  CONSTRAINT [FK_IATCanton_IATProvincia] FOREIGN KEY([FK_IdProvincia])
REFERENCES [dbo].[IATProvincia] ([Id_Provincia])
GO
ALTER TABLE [dbo].[IATCanton] CHECK CONSTRAINT [FK_IATCanton_IATProvincia]
GO
/****** Object:  ForeignKey [FK_IATEmpresa_IATUsuario]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_IATEmpresa_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATEmpresa] CHECK CONSTRAINT [FK_IATEmpresa_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATDistrito_IATCanton]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATDistrito]  WITH CHECK ADD  CONSTRAINT [FK_IATDistrito_IATCanton] FOREIGN KEY([FK_IdCanton])
REFERENCES [dbo].[IATCanton] ([Id_Canton])
GO
ALTER TABLE [dbo].[IATDistrito] CHECK CONSTRAINT [FK_IATDistrito_IATCanton]
GO
/****** Object:  ForeignKey [FK_IATContacto_IATTipoContacto1]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATContacto]  WITH CHECK ADD  CONSTRAINT [FK_IATContacto_IATTipoContacto1] FOREIGN KEY([FK_IdTipoContacto])
REFERENCES [dbo].[IATTipoContacto] ([Id_TipoContacto])
GO
ALTER TABLE [dbo].[IATContacto] CHECK CONSTRAINT [FK_IATContacto_IATTipoContacto1]
GO
/****** Object:  ForeignKey [FK_IATContacto_IATUsuario]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATContacto]  WITH CHECK ADD  CONSTRAINT [FK_IATContacto_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATContacto] CHECK CONSTRAINT [FK_IATContacto_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATOpinion_IATUsuario]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATOpinion]  WITH CHECK ADD  CONSTRAINT [FK_IATOpinion_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATOpinion] CHECK CONSTRAINT [FK_IATOpinion_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATOfertaTrabajo_IATCategoriaTrabajo]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATOfertaTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_IATOfertaTrabajo_IATCategoriaTrabajo] FOREIGN KEY([FK_IdCategoriaOfertaTrabajo])
REFERENCES [dbo].[IATCategoriaTrabajo] ([Id_CategoriaTrabajo])
GO
ALTER TABLE [dbo].[IATOfertaTrabajo] CHECK CONSTRAINT [FK_IATOfertaTrabajo_IATCategoriaTrabajo]
GO
/****** Object:  ForeignKey [FK_IATOfertaTrabajo_IATEmpresa]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATOfertaTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_IATOfertaTrabajo_IATEmpresa] FOREIGN KEY([FK_IdEmpresa])
REFERENCES [dbo].[IATEmpresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[IATOfertaTrabajo] CHECK CONSTRAINT [FK_IATOfertaTrabajo_IATEmpresa]
GO
/****** Object:  ForeignKey [FK_IATOfertaTrabajo_IATTipoTrabajo]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATOfertaTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_IATOfertaTrabajo_IATTipoTrabajo] FOREIGN KEY([FK_IdTipoOfertaTrabajo])
REFERENCES [dbo].[IATTipoTrabajo] ([Id_TipoTrabajo])
GO
ALTER TABLE [dbo].[IATOfertaTrabajo] CHECK CONSTRAINT [FK_IATOfertaTrabajo_IATTipoTrabajo]
GO
/****** Object:  ForeignKey [FK_IATPersona_IATDistrito]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATPersona_IATDistrito] FOREIGN KEY([FK_IdDistrito])
REFERENCES [dbo].[IATDistrito] ([Id_Distrito])
GO
ALTER TABLE [dbo].[IATPersona] CHECK CONSTRAINT [FK_IATPersona_IATDistrito]
GO
/****** Object:  ForeignKey [FK_IATPersona_IATUsuario]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATPersona_IATUsuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[IATUsuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[IATPersona] CHECK CONSTRAINT [FK_IATPersona_IATUsuario]
GO
/****** Object:  ForeignKey [FK_IATServicio_IATCategoriaTrabajo]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATServicio_IATCategoriaTrabajo] FOREIGN KEY([FK_IdCategoriaServicio])
REFERENCES [dbo].[IATCategoriaTrabajo] ([Id_CategoriaTrabajo])
GO
ALTER TABLE [dbo].[IATServicio] CHECK CONSTRAINT [FK_IATServicio_IATCategoriaTrabajo]
GO
/****** Object:  ForeignKey [FK_IATServicio_IATPersona]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATServicio_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATServicio] CHECK CONSTRAINT [FK_IATServicio_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATServicio_IATTipoTrabajo]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATServicio_IATTipoTrabajo] FOREIGN KEY([FK_IdTipoServicio])
REFERENCES [dbo].[IATTipoTrabajo] ([Id_TipoTrabajo])
GO
ALTER TABLE [dbo].[IATServicio] CHECK CONSTRAINT [FK_IATServicio_IATTipoTrabajo]
GO
/****** Object:  ForeignKey [FK_IATIdiomaXPersona_IATIdioma]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATIdiomaXPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATIdiomaXPersona_IATIdioma] FOREIGN KEY([FK_IdIdioma])
REFERENCES [dbo].[IATIdioma] ([Id_Idioma])
GO
ALTER TABLE [dbo].[IATIdiomaXPersona] CHECK CONSTRAINT [FK_IATIdiomaXPersona_IATIdioma]
GO
/****** Object:  ForeignKey [FK_IATIdiomaXPersona_IATPersona]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATIdiomaXPersona]  WITH CHECK ADD  CONSTRAINT [FK_IATIdiomaXPersona_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATIdiomaXPersona] CHECK CONSTRAINT [FK_IATIdiomaXPersona_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATExperienciaLaboral_IATPersona]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATExperienciaLaboral]  WITH CHECK ADD  CONSTRAINT [FK_IATExperienciaLaboral_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATExperienciaLaboral] CHECK CONSTRAINT [FK_IATExperienciaLaboral_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATEstudio_IATPersona]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATEstudio]  WITH CHECK ADD  CONSTRAINT [FK_IATEstudio_IATPersona] FOREIGN KEY([FK_IdPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATEstudio] CHECK CONSTRAINT [FK_IATEstudio_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATCalificacionEmpresa_IATEmpresa]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATCalificacionEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_IATCalificacionEmpresa_IATEmpresa] FOREIGN KEY([FK_idEmpresa])
REFERENCES [dbo].[IATEmpresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[IATCalificacionEmpresa] CHECK CONSTRAINT [FK_IATCalificacionEmpresa_IATEmpresa]
GO
/****** Object:  ForeignKey [FK_IATCalificacionEmpresa_IATPersona]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATCalificacionEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_IATCalificacionEmpresa_IATPersona] FOREIGN KEY([FK_idPersona])
REFERENCES [dbo].[IATPersona] ([Id_Persona])
GO
ALTER TABLE [dbo].[IATCalificacionEmpresa] CHECK CONSTRAINT [FK_IATCalificacionEmpresa_IATPersona]
GO
/****** Object:  ForeignKey [FK_IATDiaServicio_IATServicio]    Script Date: 08/27/2013 13:46:35 ******/
ALTER TABLE [dbo].[IATDiaServicio]  WITH CHECK ADD  CONSTRAINT [FK_IATDiaServicio_IATServicio] FOREIGN KEY([FK_IdServicio])
REFERENCES [dbo].[IATServicio] ([Id_Servicio])
GO
ALTER TABLE [dbo].[IATDiaServicio] CHECK CONSTRAINT [FK_IATDiaServicio_IATServicio]
GO
