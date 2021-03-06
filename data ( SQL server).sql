USE [master]
GO
/****** Object:  Database [ThuVien]    Script Date: 6/28/2021 10:44:58 PM ******/
CREATE DATABASE [ThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ThuVien] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [ThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ThuVien] SET QUERY_STORE = OFF
GO
USE [ThuVien]
GO
/****** Object:  Table [dbo].[ChiTietMuon]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietMuon](
	[soPMT] [char](10) NOT NULL,
	[maCS] [char](10) NOT NULL,
	[tienCoc] [money] NULL,
	[tienTToan] [money] NULL,
 CONSTRAINT [PK_ChiTietMuon] PRIMARY KEY CLUSTERED 
(
	[soPMT] ASC,
	[maCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhap]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhap](
	[soPN] [char](10) NOT NULL,
	[maTS] [char](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietNhap] PRIMARY KEY CLUSTERED 
(
	[soPN] ASC,
	[maTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuonSach]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuonSach](
	[maCS] [char](10) NOT NULL,
	[trangThai] [nvarchar](4) NOT NULL,
	[maTS] [char](10) NOT NULL,
 CONSTRAINT [PK_CuonSach] PRIMARY KEY CLUSTERED 
(
	[maCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[maDG] [char](10) NOT NULL,
	[tenDG] [nvarchar](30) NOT NULL,
	[gioiTinh] [nvarchar](3) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[loaiDG] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[maDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[maNCC] [char](10) NOT NULL,
	[tenNCC] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[email] [char](50) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[maNXB] [char](10) NOT NULL,
	[tenNXB] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[email] [char](50) NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[maNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuonTra]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuonTra](
	[soPMT] [char](10) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[ngayHTra] [date] NOT NULL,
	[ngayTra] [date] NULL,
	[maDG] [char](10) NOT NULL,
	[maTT] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuMuonTra] PRIMARY KEY CLUSTERED 
(
	[soPMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[soPN] [char](10) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[maTT] [char](10) NOT NULL,
	[maNCC] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[soPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuPhat]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuPhat](
	[soPP] [char](10) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[loiVP] [nvarchar](8) NOT NULL,
	[tienPhat] [money] NOT NULL,
	[tenSach] [nvarchar](50) NOT NULL,
	[soPMT] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuPhat] PRIMARY KEY CLUSTERED 
(
	[soPP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SachCN]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SachCN](
	[tenSach] [char](10) NOT NULL,
	[tacGia] [ntext] NOT NULL,
	[theLoai] [nvarchar](20) NULL,
	[loaiHinhNhap] [nvarchar](9) NOT NULL,
	[maTT] [char](10) NOT NULL,
	[maNCC] [char](10) NULL,
 CONSTRAINT [PK_SachCN] PRIMARY KEY CLUSTERED 
(
	[tenSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[maTG] [char](10) NOT NULL,
	[tenTG] [nvarchar](30) NOT NULL,
	[gioiTinh] [nvarchar](3) NOT NULL,
	[ngaySinh] [date] NULL,
	[queQuan] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[maTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[maTL] [char](10) NOT NULL,
	[tenTL] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[maTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuThu]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuThu](
	[maTT] [char](10) NOT NULL,
	[tenTT] [nvarchar](30) NOT NULL,
	[gioiTinh] [nvarchar](3) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [char](13) NOT NULL,
	[capBac] [nvarchar](30) NULL,
 CONSTRAINT [PK_ThuThu] PRIMARY KEY CLUSTERED 
(
	[maTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TS_TL]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_TL](
	[maTS] [char](10) NOT NULL,
	[maTL] [char](10) NOT NULL,
 CONSTRAINT [PK_TS_TL] PRIMARY KEY CLUSTERED 
(
	[maTS] ASC,
	[maTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuaSach]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuaSach](
	[maTS] [char](10) NOT NULL,
	[tenTS] [nvarchar](50) NOT NULL,
	[namXB] [int] NULL,
	[Gia] [smallmoney] NULL,
	[viTri] [char](8) NOT NULL,
	[noiDungTT] [ntext] NULL,
	[nnChinh] [nvarchar](20) NULL,
	[maNXB] [char](10) NOT NULL,
 CONSTRAINT [PK_TuaSach] PRIMARY KEY CLUSTERED 
(
	[maTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viet]    Script Date: 6/28/2021 10:44:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viet](
	[maTS] [char](10) NOT NULL,
	[maTG] [char](10) NOT NULL,
 CONSTRAINT [PK_Viet] PRIMARY KEY CLUSTERED 
(
	[maTS] ASC,
	[maTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000001', N'0000000011', 5000.0000, 27000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000013', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000023', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000033', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000003', N'0000000043', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000004', N'0000000034', 50000.0000, 2000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000004', N'0000000044', 50000.0000, 2000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000025', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000035', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000005', N'0000000045', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000006', N'0000000036', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000006', N'0000000046', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000027', 50000.0000, 1000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000037', 50000.0000, 1000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000007', N'0000000047', 50000.0000, 1000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000018', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000028', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000038', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000008', N'0000000048', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000009', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000019', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000029', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000039', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000009', N'0000000049', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000010', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000020', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000030', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000040', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000010', N'0000000050', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000011', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000021', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000031', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000011', N'0000000041', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000002', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000012', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000022', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000032', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000012', N'0000000042', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000013', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000023', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000033', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000013', N'0000000043', 50000.0000, NULL)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000014', N'0000000034', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000014', N'0000000044', 50000.0000, 15000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000025', 50000.0000, -30000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000035', 50000.0000, -30000.0000)
INSERT [dbo].[ChiTietMuon] ([soPMT], [maCS], [tienCoc], [tienTToan]) VALUES (N'0000000015', N'0000000045', 50000.0000, -30000.0000)
GO
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000001', N'0000000001', 10, 12000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000002', N'0000000002', 10, 13000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000003', N'0000000003', 10, 14000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000004', N'0000000004', 10, 15000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000005', N'0000000005', 10, 16000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000006', N'0000000006', 10, 17000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000007', N'0000000007', 10, 18000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000008', N'0000000008', 10, 19000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000009', N'0000000009', 10, 20000.0000)
INSERT [dbo].[ChiTietNhap] ([soPN], [maTS], [soLuong], [donGia]) VALUES (N'0000000010', N'0000000010', 9, 21000.0000)
GO
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000002', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000009', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000010', N'Tốt', N'0000000001')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000011', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000012', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000013', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000018', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000019', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000020', N'Tốt', N'0000000002')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000021', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000022', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000023', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000025', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000027', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000028', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000029', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000030', N'Tốt', N'0000000003')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000031', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000032', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000033', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000034', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000035', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000036', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000037', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000038', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000039', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000040', N'Tốt', N'0000000004')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000041', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000042', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000043', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000044', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000045', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000046', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000047', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000048', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000049', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000050', N'Tốt', N'0000000005')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000051', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000052', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000053', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000054', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000055', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000056', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000057', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000058', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000059', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000060', N'Tốt', N'0000000006')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000061', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000062', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000063', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000064', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000065', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000066', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000068', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000069', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000070', N'Tốt', N'0000000007')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000071', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000072', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000073', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000074', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000075', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000076', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000077', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000078', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000079', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000080', N'Tốt', N'0000000008')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000081', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000082', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000083', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000084', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000085', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000086', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000087', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000088', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000089', N'Tốt', N'0000000009')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000091', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000092', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000093', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000095', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000096', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000097', N'Tốt', N'0000000010')
INSERT [dbo].[CuonSach] ([maCS], [trangThai], [maTS]) VALUES (N'0000000098', N'Tốt', N'0000000010')
GO
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000001', N'Trịnh Việt Thành', N'Nam', CAST(N'2000-10-09' AS Date), N'Gia Lâm - Hà Nội', N'01627998425  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000002', N'Nguyễn Văn Minh', N'Nam', CAST(N'2000-06-07' AS Date), N'Quế Võ-Bắc Ninh', N'00886555645  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000003', N'Nguyễn Thanh Tuyển', N'Nam', CAST(N'2000-09-08' AS Date), N'Nghệ An', N'01656748321  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000004', N'Nguyễn Tùng Lâm', N'Nam', CAST(N'1996-01-19' AS Date), N'Gia Lâm-Hà Nội', N'01698218728  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000005', N'Phạm Thu Hà', N'Nữ', CAST(N'1998-08-12' AS Date), N'Lương Tài-Bắc Ninh', N'01623453453  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000006', N'Phan Châu Cường', N'Nam', CAST(N'1999-04-19' AS Date), N'Lập Thạch-Vĩnh Phúc', N'01628765212  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000007', N'Ngô Thùy Dung', N'Nữ', CAST(N'1993-01-28' AS Date), N'Nghị Lộc-Thanh Hóa', N'01659876253  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000008', N'Nguyễn Thị Lan Anh', N'Nữ', CAST(N'1996-04-19' AS Date), N'Khoái Châu-Hưng Yên', N'01623657382  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000009', N'Nguyễn Đức Thiện', N'Nam', CAST(N'1990-03-20' AS Date), N'SaPa-Lào Cai', N'01637165234  ', N'Mượn/Đọc')
INSERT [dbo].[DocGia] ([maDG], [tenDG], [gioiTinh], [ngaySinh], [diaChi], [SDT], [loaiDG]) VALUES (N'0000000010', N'Nguyễn Đức Mạnh', N'Nam', CAST(N'1996-01-29' AS Date), N'Nghi Xuân-Thanh Hóa', N'01672132131  ', N'Mượn/Đọc')
GO
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000001', N'Hồng Hà', NULL, N'0419972837   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000002', N'Thanh Long', NULL, N'02418765433  ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000003', N'Bạch Hổ', NULL, N'0435682121   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000004', N'Chu Tước', NULL, N'0497453234   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000005', N'Huyền Vũ', NULL, N'0412312392   ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000006', N'Thiên Long', NULL, N'02418721532  ', NULL)
INSERT [dbo].[NCC] ([maNCC], [tenNCC], [diaChi], [SDT], [email]) VALUES (N'0000000007', N'Nam Hồng', NULL, N'04218549632  ', NULL)
GO
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000001', N'NXB Chính trị', NULL, N'0111222111   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000002', N'NXB Kim Đồng', NULL, N'0111222222   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000003', N'NXB Giáo dục', NULL, N'0111222333   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000004', N'NXB Tri thức', NULL, N'0111222444   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000005', N'NXB Trẻ', NULL, N'0111222555   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000006', N'NXB Khoa học kĩ thuật', NULL, N'0111222666   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000007', N'NXB Đại học sư phạm', NULL, N'0111222777   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000008', N'NXB Học viện kĩ thuật quân sự', NULL, N'0111222888   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000009', N'NXB Đại học bách khoa', NULL, N'0111222999   ', NULL)
INSERT [dbo].[NXB] ([maNXB], [tenNXB], [diaChi], [SDT], [email]) VALUES (N'0000000010', N'NXB Đại học nông nghiệp', NULL, N'0111333000   ', NULL)
GO
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000001', CAST(N'2021-06-01' AS Date), CAST(N'2021-07-14' AS Date), CAST(N'2021-06-28' AS Date), N'0000000001', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000003', CAST(N'2016-10-01' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000002', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000004', CAST(N'2016-10-01' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2021-06-28' AS Date), N'0000000002', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000005', CAST(N'2016-10-01' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000003', N'0000000002')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000006', CAST(N'2016-10-02' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000005', N'0000000003')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000007', CAST(N'2016-10-02' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2021-06-28' AS Date), N'0000000002', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000008', CAST(N'2016-10-02' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000006', N'0000000004')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000009', CAST(N'2016-10-01' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000002', N'0000000002')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000010', CAST(N'2016-10-02' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000003', N'0000000004')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000011', CAST(N'2016-10-20' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000010', N'0000000002')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000012', CAST(N'2016-10-10' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000008', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000013', CAST(N'2016-10-15' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000005', N'0000000003')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000014', CAST(N'2016-10-22' AS Date), CAST(N'2016-10-03' AS Date), NULL, N'0000000004', N'0000000001')
INSERT [dbo].[PhieuMuonTra] ([soPMT], [ngayLap], [ngayHTra], [ngayTra], [maDG], [maTT]) VALUES (N'0000000015', CAST(N'2016-11-02' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2021-06-28' AS Date), N'0000000003', N'0000000002')
GO
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000001', CAST(N'2016-04-12' AS Date), N'0000000001', N'0000000001')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000002', CAST(N'2016-07-02' AS Date), N'0000000002', N'0000000002')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000003', CAST(N'2016-10-20' AS Date), N'0000000003', N'0000000003')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000004', CAST(N'2016-03-15' AS Date), N'0000000004', N'0000000004')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000005', CAST(N'2016-12-11' AS Date), N'0000000005', N'0000000005')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000006', CAST(N'2016-03-05' AS Date), N'0000000005', N'0000000006')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000007', CAST(N'2016-08-25' AS Date), N'0000000004', N'0000000005')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000008', CAST(N'2016-09-02' AS Date), N'0000000003', N'0000000004')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000009', CAST(N'2016-10-27' AS Date), N'0000000002', N'0000000003')
INSERT [dbo].[PhieuNhap] ([soPN], [ngayLap], [maTT], [maNCC]) VALUES (N'0000000010', CAST(N'2016-01-29' AS Date), N'0000000001', N'0000000002')
GO
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000001', N'Xuân Diệu', N'Nam', CAST(N'1953-12-09' AS Date), N'Cẩm Giàng-Hải Dương')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000002', N'Xuân Mai', N'Nữ', CAST(N'1963-11-09' AS Date), N'Quế Võ-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000003', N'Nguyễn Đình Phúc', N'Nam', CAST(N'1945-10-19' AS Date), N'Lương Tài-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000004', N'Văn Cao', N'Nam', CAST(N'1953-12-09' AS Date), N'Thọ Xuân-Thanh Hóa')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000005', N'Chế Lan Viên', N'Nam', CAST(N'1934-04-18' AS Date), N'Khoái Châu-Hưng Yên')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000006', N'Võ Trọng Phụng', N'Nam', CAST(N'1935-03-03' AS Date), N'Yên Phong-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000007', N'Thành Vũ', N'Nam', CAST(N'1927-12-12' AS Date), N'Từ Sơn-Bắc Ninh')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000008', N'Thành Nam', N'Nam', CAST(N'1913-12-10' AS Date), N'Vĩnh Yên-Vĩnh Phúc')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000009', N'Xuân Quỳnh', N'Nữ', CAST(N'1943-12-11' AS Date), N'Lập Thạch-Vĩnh Phúc')
INSERT [dbo].[TacGia] ([maTG], [tenTG], [gioiTinh], [ngaySinh], [queQuan]) VALUES (N'0000000010', N'Quang Lân', N'Nam', CAST(N'1953-12-12' AS Date), N'Nghị Lộc -Thanh Hóa')
GO
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000001', N'Giáo trình')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000002', N'Thơ')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000003', N'Truyện ngắn')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000004', N'Truyện vừa')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000005', N'Tiểu thuyết')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000006', N'Ngôn tình')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000007', N'Khoa học-Kĩ thuật')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000008', N'Chính trị')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000009', N'Truyện cười')
INSERT [dbo].[TheLoai] ([maTL], [tenTL]) VALUES (N'0000000010', N'Kinh doanh')
GO
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000001', N'Nguyễn Minh Triết', N'Nam', CAST(N'1982-12-12' AS Date), NULL, N'012156123213 ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000002', N'Nguyễn Thị Na', N'Nữ', CAST(N'1971-08-18' AS Date), NULL, N'01624531234  ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000003', N'Ngô Thị Lan', N'Nữ', CAST(N'1985-04-19' AS Date), NULL, N'01234567891  ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000004', N'Nguyễn Thành Long', N'Nam', CAST(N'1985-03-28' AS Date), NULL, N'01237651234  ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000005', N'Nguyễn Hà My', N'Nữ', CAST(N'1980-11-10' AS Date), NULL, N'01652123131  ', NULL)
INSERT [dbo].[ThuThu] ([maTT], [tenTT], [gioiTinh], [ngaySinh], [diaChi], [SDT], [capBac]) VALUES (N'0000000006', N'Phạm Quốc Việt', N'Nam', CAST(N'1998-11-21' AS Date), NULL, N'1321321654   ', NULL)
GO
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000001')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000002')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000003')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000001', N'0000000007')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000002', N'0000000001')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000002', N'0000000002')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000003', N'0000000003')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000004', N'0000000002')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000004', N'0000000005')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000006', N'0000000005')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000006', N'0000000006')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000007', N'0000000010')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000008', N'0000000001')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000008', N'0000000007')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000009', N'0000000008')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000009', N'0000000009')
INSERT [dbo].[TS_TL] ([maTS], [maTL]) VALUES (N'0000000009', N'0000000010')
GO
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000001', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 1969, 69000.0000, N'01-01-01', NULL, N'Tiếng Việt', N'0000000001')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000002', N'Vẫn Cứ Thích Em', 1976, 50000.0000, N'01-01-02', NULL, N'Tiếng Việt', N'0000000002')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000003', N'Yêu Em Từ Cái Nhìn Đầu Tiên', 1945, 60000.0000, N'01-01-03', NULL, N'Tiếng Việt', N'0000000003')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000004', N'Tắt Đèn', 1974, 39000.0000, N'01-01-04', NULL, N'Tiếng Việt', N'0000000004')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000005', N'Cô Gái Năm Âý Chúng Ta Cùng Theo Đuổi', 1979, 45000.0000, N'01-01-05', NULL, N'Tiếng Việt', N'0000000005')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000006', N'Chàng Trai Năm Âý', 2006, 70000.0000, N'01-01-06', NULL, N'Tiếng Việt', N'0000000006')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000007', N'Ngày Trôi Về Phía Cũ', 1978, 96000.0000, N'01-01-07', NULL, N'Tiếng Việt', N'0000000007')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000008', N'Chiêc Lá Cuối Cùng', 1993, 60000.0000, N'01-01-08', NULL, N'Tiếng Việt', N'0000000008')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000009', N'Chí Phèo', 1948, 45000.0000, N'01-01-09', NULL, N'Tiếng Việt', N'0000000009')
INSERT [dbo].[TuaSach] ([maTS], [tenTS], [namXB], [Gia], [viTri], [noiDungTT], [nnChinh], [maNXB]) VALUES (N'0000000010', N'Lão Hạc', 1954, 39000.0000, N'01-01-10', NULL, N'Tiếng Việt', N'0000000010')
GO
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000001', N'0000000001')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000002', N'0000000002')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000003', N'0000000003')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000004', N'0000000004')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000005', N'0000000005')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000006', N'0000000006')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000007', N'0000000007')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000008', N'0000000008')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000009', N'0000000009')
INSERT [dbo].[Viet] ([maTS], [maTG]) VALUES (N'0000000010', N'0000000010')
GO
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMuon_CuonSach_maCS] FOREIGN KEY([maCS])
REFERENCES [dbo].[CuonSach] ([maCS])
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [FK_ChiTietMuon_CuonSach_maCS]
GO
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMuon_PhieuMuonTra_soPMT] FOREIGN KEY([soPMT])
REFERENCES [dbo].[PhieuMuonTra] ([soPMT])
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [FK_ChiTietMuon_PhieuMuonTra_soPMT]
GO
ALTER TABLE [dbo].[ChiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhap_PhieuNhap_soPN] FOREIGN KEY([soPN])
REFERENCES [dbo].[PhieuNhap] ([soPN])
GO
ALTER TABLE [dbo].[ChiTietNhap] CHECK CONSTRAINT [FK_ChiTietNhap_PhieuNhap_soPN]
GO
ALTER TABLE [dbo].[ChiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhap_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[ChiTietNhap] CHECK CONSTRAINT [FK_ChiTietNhap_TuaSach_maTS]
GO
ALTER TABLE [dbo].[CuonSach]  WITH CHECK ADD  CONSTRAINT [FK_CuonSach_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[CuonSach] CHECK CONSTRAINT [FK_CuonSach_TuaSach_maTS]
GO
ALTER TABLE [dbo].[PhieuMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonTra_DocGia_maDG] FOREIGN KEY([maDG])
REFERENCES [dbo].[DocGia] ([maDG])
GO
ALTER TABLE [dbo].[PhieuMuonTra] CHECK CONSTRAINT [FK_PhieuMuonTra_DocGia_maDG]
GO
ALTER TABLE [dbo].[PhieuMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonTra_TheLoai_maTT] FOREIGN KEY([maTT])
REFERENCES [dbo].[ThuThu] ([maTT])
GO
ALTER TABLE [dbo].[PhieuMuonTra] CHECK CONSTRAINT [FK_PhieuMuonTra_TheLoai_maTT]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NCC_maNCC] FOREIGN KEY([maNCC])
REFERENCES [dbo].[NCC] ([maNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NCC_maNCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_ThuThu_maTT] FOREIGN KEY([maTT])
REFERENCES [dbo].[ThuThu] ([maTT])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_ThuThu_maTT]
GO
ALTER TABLE [dbo].[PhieuPhat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhat_PhieuMuonTra_soPMT] FOREIGN KEY([soPMT])
REFERENCES [dbo].[PhieuMuonTra] ([soPMT])
GO
ALTER TABLE [dbo].[PhieuPhat] CHECK CONSTRAINT [FK_PhieuPhat_PhieuMuonTra_soPMT]
GO
ALTER TABLE [dbo].[SachCN]  WITH CHECK ADD  CONSTRAINT [FK_SachCN_NCC_maNCC] FOREIGN KEY([maNCC])
REFERENCES [dbo].[NCC] ([maNCC])
GO
ALTER TABLE [dbo].[SachCN] CHECK CONSTRAINT [FK_SachCN_NCC_maNCC]
GO
ALTER TABLE [dbo].[SachCN]  WITH CHECK ADD  CONSTRAINT [FK_SachCN_ThuThu_maTT] FOREIGN KEY([maTT])
REFERENCES [dbo].[ThuThu] ([maTT])
GO
ALTER TABLE [dbo].[SachCN] CHECK CONSTRAINT [FK_SachCN_ThuThu_maTT]
GO
ALTER TABLE [dbo].[TS_TL]  WITH CHECK ADD  CONSTRAINT [FK_TS_TL_TheLoai_maTL] FOREIGN KEY([maTL])
REFERENCES [dbo].[TheLoai] ([maTL])
GO
ALTER TABLE [dbo].[TS_TL] CHECK CONSTRAINT [FK_TS_TL_TheLoai_maTL]
GO
ALTER TABLE [dbo].[TS_TL]  WITH CHECK ADD  CONSTRAINT [FK_TS_TL_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[TS_TL] CHECK CONSTRAINT [FK_TS_TL_TuaSach_maTS]
GO
ALTER TABLE [dbo].[TuaSach]  WITH CHECK ADD  CONSTRAINT [FK_TuaSach_NXB_maNXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[NXB] ([maNXB])
GO
ALTER TABLE [dbo].[TuaSach] CHECK CONSTRAINT [FK_TuaSach_NXB_maNXB]
GO
ALTER TABLE [dbo].[Viet]  WITH CHECK ADD  CONSTRAINT [FK_Viet_TuaSach_maTG] FOREIGN KEY([maTG])
REFERENCES [dbo].[TacGia] ([maTG])
GO
ALTER TABLE [dbo].[Viet] CHECK CONSTRAINT [FK_Viet_TuaSach_maTG]
GO
ALTER TABLE [dbo].[Viet]  WITH CHECK ADD  CONSTRAINT [FK_Viet_TuaSach_maTS] FOREIGN KEY([maTS])
REFERENCES [dbo].[TuaSach] ([maTS])
GO
ALTER TABLE [dbo].[Viet] CHECK CONSTRAINT [FK_Viet_TuaSach_maTS]
GO
ALTER TABLE [dbo].[CuonSach]  WITH CHECK ADD  CONSTRAINT [CK_CuonSach_trangThai] CHECK  (([trangThai]=N'Mất' OR [trangThai]=N'Hỏng' OR [trangThai]=N'Cũ' OR [trangThai]=N'Tốt'))
GO
ALTER TABLE [dbo].[CuonSach] CHECK CONSTRAINT [CK_CuonSach_trangThai]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [CK_DocGia_gioiTinh] CHECK  (([gioiTinh]=N'Nữ' OR [gioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [CK_DocGia_gioiTinh]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [CK_DocGia_loaiDG] CHECK  (([loaiDG]=N'Mượn/Đọc' OR [loaiDG]=N'Đọc'))
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [CK_DocGia_loaiDG]
GO
ALTER TABLE [dbo].[PhieuPhat]  WITH CHECK ADD  CONSTRAINT [CK_PhieuPhat_loiVP] CHECK  (([loiVP]=N'Trả muộn' OR [loiVP]=N'Làm hỏng' OR [loiVP]=N'Làm mất'))
GO
ALTER TABLE [dbo].[PhieuPhat] CHECK CONSTRAINT [CK_PhieuPhat_loiVP]
GO
ALTER TABLE [dbo].[SachCN]  WITH CHECK ADD  CONSTRAINT [CK_SachCN_loaiHinhNhap] CHECK  (([loaiHinhNhap]=N'Nhập thêm' OR [loaiHinhNhap]=N'Nhập mới'))
GO
ALTER TABLE [dbo].[SachCN] CHECK CONSTRAINT [CK_SachCN_loaiHinhNhap]
GO
ALTER TABLE [dbo].[TacGia]  WITH CHECK ADD  CONSTRAINT [CK_TacGia_gioiTinh] CHECK  (([gioiTinh]=N'Nữ' OR [gioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[TacGia] CHECK CONSTRAINT [CK_TacGia_gioiTinh]
GO
ALTER TABLE [dbo].[ThuThu]  WITH CHECK ADD  CONSTRAINT [CK_gioiTinh] CHECK  (([gioiTinh]=N'Nữ' OR [gioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[ThuThu] CHECK CONSTRAINT [CK_gioiTinh]
GO
/****** Object:  StoredProcedure [dbo].[get_CS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--3.Cuon Sach
create proc [dbo].[get_CS]
as
begin
	select maCS as [Mã CS], trangThai as [Trạng thái], maTS as [Mã TS] from CuonSach
end

GO
/****** Object:  StoredProcedure [dbo].[get_CTM]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_CTM]
as
begin
select soPMT as [Số PMT], maCS as [Mã cuốn sách],  tienCoc as [Tiền cọc], tienTToan as [Tiền thanh toán] from ChiTietMuon
end

GO
/****** Object:  StoredProcedure [dbo].[get_CTMcuaPM]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--17. ...

create proc [dbo].[get_CTMcuaPM](@soPMT char(10))
as
begin
	select ChiTietMuon.maCS as [Mã cuốn sách],  tenTS as [Tên Sách], tienCoc as [Tiền cọc], tienTToan as [Tiền thanh toán]
	from CuonSach	join ChiTietMuon
				on CuonSach.maCS=ChiTietMuon.maCS
					join TuaSach
				on CuonSach.maTS=TuaSach.maTS
	where soPMT=@soPMT
end

GO
/****** Object:  StoredProcedure [dbo].[get_CTN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--2.Chi Tiet Nhap
create proc [dbo].[get_CTN]
as
begin
	select soPN as [Số PN], maTS as [Mã tựa sách], soLuong as [Số lượng], donGia as [Đơn giá] from ChiTietNhap
end

GO
/****** Object:  StoredProcedure [dbo].[get_CTNcuaPN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_CTNcuaPN](@soPN char(10))
as
begin
	select soPN as [Số PN], maTS as [Mã tựa sách], soLuong as [Số lượng], donGia as [Đơn giá]
	from ChiTietNhap
	where soPN=@soPN
end

GO
/****** Object:  StoredProcedure [dbo].[get_DG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_DG]
as
begin
	select maDG as [Mã ĐG], tenDG as [Tên ĐG], gioiTinh as [Giới tính], ngaySinh as [Ngày sinh], diaChi as [Địa chỉ], SDT as [SĐT], loaiDG as [Loại ĐG] from DocGia
end

GO
/****** Object:  StoredProcedure [dbo].[get_DGcoMa]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_DGcoMa](@maDG char(10))
as
begin
	select maDG as [Mã ĐG], tenDG as [Tên ĐG], gioiTinh as [Giới tính], ngaySinh as [Ngày sinh], diaChi as [Địa chỉ], SDT as [SĐT], loaiDG as [Loại ĐG]
	from DocGia
	where maDG=@maDG
end

GO
/****** Object:  StoredProcedure [dbo].[get_maDG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_maDG] as
begin
select maDG from DocGia
end
GO
/****** Object:  StoredProcedure [dbo].[get_maTT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_maTT] as
begin
select maTT from ThuThu 
end
GO
/****** Object:  StoredProcedure [dbo].[get_NCC]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--5.NCC
create proc [dbo].[get_NCC]
as
begin
	select maNCC as [Mã NCC], tenNCC as [Tên NCC], diaChi as [Địa chỉ], SDT as [SĐT], email as [Email] from NCC
end									

GO
/****** Object:  StoredProcedure [dbo].[get_NXB]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--6.NXB
create proc [dbo].[get_NXB]
as
begin
	select maNXB as [Mã NXB], tenNXB as [Tên NXB], diaChi as [Địa chỉ], SDT as [SĐT], email as [Email] from NXB
end

GO
/****** Object:  StoredProcedure [dbo].[get_PMT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_PMT]
as
begin
	select soPMT as [Số PMT], ngayLap as [Ngày lập],ngayHTra as [Ngày hẹn trả], ngayTra as [Ngày trả], maDG as [Mã độc giả], maTT as [Mã thủ thư] from PhieuMuonTra
end

GO
/****** Object:  StoredProcedure [dbo].[get_PMTcuaDG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_PMTcuaDG](@maDG char(10))
as
begin
	select soPMT as [Số PMT], ngayLap as [Ngày lập],ngayHTra as [Ngày hẹn trả], ngayTra as [Ngày trả], maDG as [Mã độc giả], maTT as [Mã thủ thư]
	from PhieuMuonTra
	where maDG=@maDG
end

GO
/****** Object:  StoredProcedure [dbo].[get_PN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--8.Phieu Nhap
create proc [dbo].[get_PN]
as
begin
	select soPN as [Số PN], ngayLap as [Ngày lập], maTT as [Mã thủ thư], maNCC as [Mã NCC] from PhieuNhap
end

GO
/****** Object:  StoredProcedure [dbo].[get_PP]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_PP]
as
begin
	select soPP as [Số PP], ngayLap as [Ngày lập], loiVP as [Lỗi VP], tienPhat as [Tiền phạt], tenSach as [Tên sách], soPMT as [Số PMT] from PhieuPhat
end

GO
/****** Object:  StoredProcedure [dbo].[get_SCN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--10.Sach Can Nhap
create proc [dbo].[get_SCN]
as
begin
	select tenSach as [Tên sách], tacGia as [Tác giả], theLoai as [Thể loại], loaiHinhNhap as [Loại hình nhập], maTT as [Mã thủ thư], maNCC as [Mã NCC] from SachCN
end          

GO
/****** Object:  StoredProcedure [dbo].[get_TenSach]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_TenSach](@maCS char(10))
as
begin
	select tenTS from CuonSach join TuaSach on CuonSach.maTS=TuaSach.maTS
	where maCS=@maCS
end

GO
/****** Object:  StoredProcedure [dbo].[get_TG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--11.Tac Gia
create proc [dbo].[get_TG]
as
begin
	select maTG as [Mã TG], tenTG as [Tên TG], gioiTinh as [Giới tính], ngaySinh as [Ngày sinh], queQuan as [Quê quán] from TacGia
end

GO
/****** Object:  StoredProcedure [dbo].[get_TGcuaTS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_TGcuaTS](@maTS char(10))
as
begin
	select maTG as [Mã TG], tenTG as [Tên TG], gioiTinh as [Giới tính], ngaySinh as [Ngày sinh], queQuan as [Quê quán]
	from TacGia where maTG in (select maTG from Viet where maTS = @maTS)
end

GO
/****** Object:  StoredProcedure [dbo].[get_tien]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_tien](@soPN char(10), @tongtien money output)
as
begin
	select @tongtien= SUM(soLuong*donGia) from ChiTietNhap where soPN=@soPN
end

GO
/****** Object:  StoredProcedure [dbo].[get_TL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--12.The Loai
create proc [dbo].[get_TL]
as
begin
	select maTL as [Mã TL], tenTL as [Tên TL] from TheLoai
end

GO
/****** Object:  StoredProcedure [dbo].[get_TLcuaTS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_TLcuaTS](@maTS char(10))
as
begin
	select maTL as [Mã TL], tenTL as [Tên TL]
	from TheLoai where maTL in (select maTL from TS_TL where maTS = @maTS)
end

GO
/****** Object:  StoredProcedure [dbo].[get_TS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--15.TuaSach
create proc [dbo].[get_TS]
as
begin
	select maTS as [Mã TS], tenTS as [Tên TS], namXB as [Năm XB], Gia as [Giá], viTri as [Vị trí], noiDungTT as [Nội dung TT], nnChinh as [Ngôn ngữ chính], maNXB as [Mã NXB] from TuaSach
end

GO
/****** Object:  StoredProcedure [dbo].[get_TSTL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--14.TS_TL
create proc [dbo].[get_TSTL]
as
begin
	select maTS as [Mã TS], maTL as [Mã TL] from TS_TL
end

GO
/****** Object:  StoredProcedure [dbo].[get_TT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_TT]
as
begin
	select maTT as [Mã TT], tenTT as [Tên TT], gioiTinh as [Giới tính], ngaySinh as [Ngày sinh], diaChi as [Địa chỉ], SDT as [SĐT], capBac as [Cấp bậc] from ThuThu
end

GO
/****** Object:  StoredProcedure [dbo].[get_V]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--16.Viet
create proc [dbo].[get_V]
as
begin
	select maTS as [Mã TS], maTG as [Mã TG] from Viet
end		

GO
/****** Object:  StoredProcedure [dbo].[kiemtra_CS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[kiemtra_CS](@maCS char(10))
as
begin
	if exists (select maCS from CuonSach where maCS=@maCS and trangThai in (N'Tốt',N'Cũ'))
	select * from ChiTietMuon join PhieuMuonTra on ChiTietMuon.soPMT=PhieuMuonTra.soPMT
	where ngayTra is null and maCS=@maCS
end

GO
/****** Object:  StoredProcedure [dbo].[search]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------Thongke tim kiem
create proc [dbo].[search](@tenTS nvarchar(50),@nn nvarchar(20),@maTL char(10),@maTG char(10))
as
begin
	declare @tb1 table(maTS char(10), tenTS nvarchar(50),namXB int,Gia money,viTri char(10))
	declare @tb2 table(maTS char(10), tenTS nvarchar(50),namXB int,Gia money,viTri char(10))
	declare @tb3 table(maTS char(10), tenTS nvarchar(50),namXB int,Gia money,viTri char(10))
	declare @tb4 table(maTS char(10), tenTS nvarchar(50),namXB int,Gia money,viTri char(10))
	if(@tenTS ='')
		insert into @tb1
		select maTS,tenTS,namXB,Gia,viTri
		from TuaSach
	else
		insert into @tb1
		select maTS,tenTS,namXB,Gia,viTri
		from TuaSach
		where tenTS like @tenTS+'%'

	if(@nn ='')
		insert	into @tb2
		select TuaSach.maTS,tenTS,namXB,Gia,viTri
		from TuaSach
	else
		insert	into @tb2
		select TuaSach.maTS,tenTS,namXB,Gia,viTri
		from TuaSach
		where nnChinh like @nn+'%'
		
			
	if(@maTL ='')
		insert into @tb3
		select TuaSach.maTS,tenTS,namXB,Gia,viTri
		from TuaSach 
	
	else	
		insert into @tb3
		select TuaSach.maTS,tenTS,namXB,Gia,viTri
		from TuaSach ,TS_TL
		where TuaSach.maTS = TS_TL.maTS and maTL=@maTL
	if(@maTG ='')
		insert into @tb4
		select TuaSach.maTS,tenTS,namXB,Gia,viTri
		from TuaSach
	
	else
		insert into @tb4
		select TuaSach.maTS,tenTS,namXB,Gia,viTri
		from TuaSach ,Viet
		where TuaSach.maTS = Viet.maTS and maTG=@maTG

	select maTS as[Mã Tựa Sách],tenTS as[Tên Tựa Sách],namXB as[Năm Xuất Bản],Gia as[Giá],viTri as[Vị Trí] from @tb1
	intersect
	select maTS as[Mã Tựa Sách],tenTS as[Tên Tựa Sách],namXB as[Năm Xuất Bản],Gia as[Giá],viTri as[Vị Trí] from @tb2
	intersect
	select maTS as[Mã Tựa Sách],tenTS as[Tên Tựa Sách],namXB as[Năm Xuất Bản],Gia as[Giá],viTri as[Vị Trí] from @tb3
	intersect
	select maTS as[Mã Tựa Sách],tenTS as[Tên Tựa Sách],namXB as[Năm Xuất Bản],Gia as[Giá],viTri as[Vị Trí] from @tb4
end

GO
/****** Object:  StoredProcedure [dbo].[sua_CS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_CS](@macs char(10),@trangthai nvarchar(4),@mats char(10))
as
begin
	update CuonSach
	set trangThai=@trangthai,
		maTS=@mats
	where maCS=@macs
end

GO
/****** Object:  StoredProcedure [dbo].[sua_CTM]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_CTM](@sopmt char(10),@macs char(10),@ngayhtra date,@ngaytra date,@tiencoc money,@tienttoan money,@ttm nvarchar(4))
as
begin
	update ChiTietMuon
	set 
		tienCoc=@tiencoc,
		tienTToan=@tienttoan
	where soPMT=@sopmt and maCS=@macs
end

GO
/****** Object:  StoredProcedure [dbo].[sua_CTN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_CTN](@sopn char(10),@mats char(10),@soluong int,@dongia money)
as
begin
	update ChiTietNhap
	set	maTS=@mats,
		soLuong=@soluong,
		donGia=@dongia
	where soPN=@sopn
end

GO
/****** Object:  StoredProcedure [dbo].[sua_DG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_DG](@madg char(10),@tendg nvarchar(30),@gioitinhdg nvarchar(3),@ngaysinhdg date,@diachidg nvarchar(50), @sdtdg char(13), @loaidg nvarchar(8))
as
begin
	update DocGia
	set tenDG=@tendg,
		gioiTinh=@gioitinhdg,
		ngaySinh=@ngaysinhdg,
		diaChi=@diachidg,
		SDT=@sdtdg,
		loaiDG=@loaidg
	where maDG=@madg
end

GO
/****** Object:  StoredProcedure [dbo].[sua_mdg]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sua_mdg] (@maDG char(10))
as
begin
select maDG from DocGIa
end
GO
/****** Object:  StoredProcedure [dbo].[sua_NCC]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_NCC](@mancc char(10),@tenncc nvarchar(50),@diachincc nvarchar(50),@sdtncc char(13),@emailncc char(50))
as
begin 
	update NCC
	set tenNCC=@tenncc,
	diaChi=@diachincc,
	SDT=@sdtncc,
	email=@emailncc
	where maNCC=@mancc
end		

GO
/****** Object:  StoredProcedure [dbo].[sua_NXB]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_NXB](@manxb char(10),@tennxb nvarchar(50),@diachinxb nvarchar(30),@sdtnxb char(13),@emailnxb char(50))
as
begin
	update NXB
	set tenNXB=@tennxb,
		diaChi=@diachinxb,
		SDT=@sdtnxb,
		email=@emailnxb
	where maNXB=@manxb
end

GO
/****** Object:  StoredProcedure [dbo].[sua_PMT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_PMT](@sopmt char(10),@ngaylappmt date,@ngayhtra date,@ngaytra date,@madg char(10),@matt char(10))
as
begin
	update PhieuMuonTra
	set ngayLap=@ngaylappmt,
		ngayHTra=@ngayhtra,
		ngayTra=@ngaytra,
		maDG=@madg,
		maTT=@matt
	where soPMT=@sopmt
end

GO
/****** Object:  StoredProcedure [dbo].[sua_PN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_PN](@sopn char(10),@ngaylap date,@matt char(10),@mancc char(10))
as
begin
	update PhieuNhap
	set ngayLap=@ngaylap,
	maTT=@matt,
	maNCC=@mancc
	where soPN=@sopn
end		

GO
/****** Object:  StoredProcedure [dbo].[sua_PP]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_PP](@sopp char(10),@ngaylap date,@loivp nvarchar(8),@tienphat money, @tensach nvarchar(50),@sopmt char(10))
as
begin
	update PhieuPhat
	set ngayLap=@ngaylap,
		loiVP=@loivp,
		tienPhat=@tienphat,
		tenSach=@tensach,
		soPMT=@sopmt
	where soPP=@sopp
end

GO
/****** Object:  StoredProcedure [dbo].[sua_SCN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_SCN](@tensach nvarchar(50),@tacgia ntext,@theloai nvarchar(20),@loainhap nvarchar(9),@matt char(10),@mancc char(10))
as
begin
	update SachCN
	set tacGia=@tacgia,
		theLoai=@theloai,
		loaiHinhNhap=@loainhap,
		maTT=@matt,
		maNCC=@mancc
	where tenSach=@tensach
end	   

GO
/****** Object:  StoredProcedure [dbo].[sua_TG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_TG](@matg char(10),@tentg nvarchar(50),@gioitinhtg nvarchar(3),@ngaysinhtg date,@quequantg nvarchar(50))
as
begin
	update TacGia
	set tenTG=@tentg,
	gioiTinh=@gioitinhtg,
	ngaySinh=@ngaysinhtg,
	queQuan=@quequantg
	where maTG=@matg
end

GO
/****** Object:  StoredProcedure [dbo].[sua_TL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_TL](@matl char(10),@tentl nvarchar(50))
as
begin 
	update TheLoai
	set tenTL=@tentl
	where maTL=@matl
end

GO
/****** Object:  StoredProcedure [dbo].[sua_TrangThaiCS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_TrangThaiCS](@maCS char(10), @trangthai nvarchar(4))
as
begin
	update CuonSach
	set trangThai=@trangthai
	where maCS=@maCS
end

GO
/****** Object:  StoredProcedure [dbo].[sua_TS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_TS](@mats char(10),@tents nvarchar(50),@namxb int,@gia smallmoney,@vitri char(8),@noidung ntext,@nnchinh nvarchar(20),@manxb char(10))
as
begin
	update TuaSach
	set tenTS=@tents,
		namXB=@namxb,
		Gia=@gia,
		viTri=@vitri,
		noiDungTT=@noidung,
		nnChinh=@nnchinh,
		maNXB=@manxb
	where maTS=@mats
end

GO
/****** Object:  StoredProcedure [dbo].[sua_TSTL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_TSTL](@mats char(10),@matl char(10))
as
begin
	update TS_TL
	set maTL=@matl
	where maTS=@mats
end

GO
/****** Object:  StoredProcedure [dbo].[sua_TT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sua_TT](@matt char(10),@tentt nvarchar(30),@gioitinhtt nvarchar(3),@ngaysinhtt date,@diachitt nvarchar(50),@sdttt char(13),@capbac nvarchar(30))
as
begin
	update ThuThu
	set tenTT=@tentt,
		gioiTinh=@gioitinhtt,
		ngaySinh=@ngaysinhtt,
		diaChi=@diachitt,
		SDT=@sdttt,
		capBac=@capbac
	where maTT=@matt
end

GO
/****** Object:  StoredProcedure [dbo].[them_CS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_CS](@macs char(10),@trangthai nvarchar(4),@mats char(10))
as
begin
	insert into CuonSach values(@macs,@trangthai,@mats)
end

GO
/****** Object:  StoredProcedure [dbo].[them_CTM]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--1.Chi Tiet Muon
create proc [dbo].[them_CTM](@sopmt char(10),@macs char(10),@tiencoc money,@tienttoan money)
as
begin
	insert into ChiTietMuon values(@sopmt,@macs,@tiencoc,@tienttoan)
end

GO
/****** Object:  StoredProcedure [dbo].[them_CTN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_CTN](@sopn char(10),@mats char(10),@soluong int,@dongia money)
as
begin
	insert into ChiTietNhap values(@sopn,@mats,@soluong,@dongia)
end

GO
/****** Object:  StoredProcedure [dbo].[them_DG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--4.Doc Gia
create proc [dbo].[them_DG](@madg char(10),@tendg nvarchar(30),@gioitinhdg nvarchar(3),@ngaysinhdg date,@diachidg nvarchar(50), @sdtdg char(13), @loaidg nvarchar(8))
as
begin
	insert into DocGia values (@madg,@tendg,@gioitinhdg,@ngaysinhdg,@diachidg,@sdtdg,@loaidg)
end

GO
/****** Object:  StoredProcedure [dbo].[them_NCC]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_NCC](@mancc char(10),@tenncc nvarchar(50),@diachincc nvarchar(50),@sdtncc char(13),@emailncc char(50))
as
begin
	insert into NCC values (@mancc,@tenncc,@diachincc,@sdtncc,@emailncc)
end

GO
/****** Object:  StoredProcedure [dbo].[them_NXB]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_NXB](@manxb char(10),@tennxb nvarchar(50),@diachinxb nvarchar(30),@sdtnxb char(13),@emailnxb char(50))
as
begin
	insert into NXB(maNXB,tenNXB,diaChi,SDT,email) values(@manxb,@tennxb,@diachinxb,@sdtnxb,@emailnxb)
end

GO
/****** Object:  StoredProcedure [dbo].[them_PMT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--7.Phieu Muon Tra
create proc [dbo].[them_PMT](@sopmt char(10),@ngaylappmt date,@ngayhtra date,@ngaytra date,@madg char(10),@matt char(10))
as
begin
	insert into PhieuMuonTra values(@soPMT,@ngaylappmt,@ngayhtra,@ngaytra,@madg,@matt)
end

GO
/****** Object:  StoredProcedure [dbo].[them_PN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_PN](@sopn char(10),@ngaylap date,@matt char(10),@mancc char(10))
as
begin
	insert into PhieuNhap values(@sopn,@ngaylap,@matt,@mancc)
end		

GO
/****** Object:  StoredProcedure [dbo].[them_PP]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--9.Phieu Phat
create proc [dbo].[them_PP](@sopp char(10),@ngaylap date,@loivp nvarchar(8),@tienphat money, @tensach nvarchar(50),@sopmt char(10))
as
begin
	insert into PhieuPhat values(@sopp,@ngaylap,@loivp,@tienphat,@tensach,@sopmt)
end

GO
/****** Object:  StoredProcedure [dbo].[them_SCN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_SCN](@tensach nvarchar(50),@tacgia ntext,@theloai nvarchar(20),@loainhap nvarchar(9),@matt char(10),@mancc char(10))
as
begin
	insert into SachCN values(@tensach,@tacgia,@theloai,@loainhap,@matt,@mancc)
end  

GO
/****** Object:  StoredProcedure [dbo].[them_TG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_TG](@matg char(10),@tentg nvarchar(50),@gioitinhtg nvarchar(3),@ngaysinhtg date,@quequantg nvarchar(50))
as
begin
	insert into TacGia(maTG,tenTG,gioiTinh,ngaySinh,queQuan) values(@matg,@tentg,@gioitinhtg,@ngaysinhtg,@quequantg)
end

GO
/****** Object:  StoredProcedure [dbo].[them_TL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_TL](@matl char(10),@tentl nvarchar(50))
as
begin
	insert into TheLoai(maTL,tenTL) values(@matl,@tentl)
end

GO
/****** Object:  StoredProcedure [dbo].[them_TS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_TS](@mats char(10),@tents nvarchar(50),@namxb int,@gia smallmoney,@vitri char(8),@noidung ntext,@nnchinh nvarchar(20),@manxb char(10))
as
begin
	insert into TuaSach values(@mats,@tents,@namxb,@gia,@vitri,@noidung,@nnchinh,@manxb)
end

GO
/****** Object:  StoredProcedure [dbo].[them_TSTL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
								
create proc [dbo].[them_TSTL](@mats char(10),@matl char(10))
as
begin
	insert into TS_TL(maTS,maTL) values(@mats,@matl)
end 

GO
/****** Object:  StoredProcedure [dbo].[them_TT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--13.Thu Thu
create proc [dbo].[them_TT](@matt char(10),@tentt nvarchar(30),@gioitinhtt nvarchar(3),@ngaysinhtt date,@diachitt nvarchar(50),@sdttt char(13),@capbac nvarchar(30))
as
begin
	insert into ThuThu values(@matt,@tentt,@gioitinhtt,@ngaysinhtt,@diachitt,@sdttt,@capbac)
end

GO
/****** Object:  StoredProcedure [dbo].[them_V]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[them_V](@mats char(10),@matg char(10))
as
begin
	insert into Viet values(@mats,@matg)
end

GO
/****** Object:  StoredProcedure [dbo].[tinhTien_PMT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
create proc [dbo].[tinhTien_PMT](@soPMT char(10))
as
begin
	declare @dateLap char(10), @dateTra char(10), @dateHtra char(10)
	if exists (select * from PhieuMuonTra where soPMT=@soPMT)
		begin
			select @dateLap=ngayLap, @dateHtra=ngayHTra, @dateTra=ngayTra
			from PhieuMuonTra
			where soPMT=@soPMT
			if @dateTra is null 
				update ChiTietMuon
				set tienTToan=null
				where soPMT=@soPMT
			else if DATEDIFF(DD,@dateHtra,@dateTra)>=0
				update ChiTietMuon
				set tienTToan= DATEDIFF(DD,@dateLap,@dateHtra)*1000
				where soPMT=@soPMT
			else
				update ChiTietMuon
				set tienTToan= DATEDIFF(DD,@dateLap,@dateTra)*1000
				where soPMT=@soPMT
		end
end

GO
/****** Object:  StoredProcedure [dbo].[tkmuon]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---------------------thong ke nhung doc gia muon sach------------------------
create proc [dbo].[tkmuon]
as
begin
select maDG as [Mã ĐG], tenDG as [Tên ĐG], gioiTinh as [Giới tính], ngaySinh as [Ngày sinh], diaChi as [Địa chỉ], SDT as [SĐT]
from DocGia
where maDG in(select maDG from PhieuMuonTra where ngayTra is null)
end

GO
/****** Object:  StoredProcedure [dbo].[tkmuontrongngay]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---thong ke sach duoc muon tttron ngay
create proc [dbo].[tkmuontrongngay](@date date)
as
begin
	declare @tb table([Ngày] date,[Số Lượng Sách Được Mượn] int)
	if(@date='')
	insert into @tb
	select ngayLap,count (ChiTietMuon.soPMT)
	from PhieuMuonTra,ChiTietMuon
	where PhieuMuonTra.soPMT=ChiTietMuon.soPMT
	group by ngayLap
	else
	insert into @tb
	select ngayLap,count (ChiTietMuon.soPMT)
	from PhieuMuonTra,ChiTietMuon
	where PhieuMuonTra.soPMT=ChiTietMuon.soPMT and ngayLap=@date
	group by ngayLap

	select *from @tb
end

GO
/****** Object:  StoredProcedure [dbo].[tksachdangmuon]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------------------thong ke so luong sach dang duoc muon theo ten sach
create proc [dbo].[tksachdangmuon]
as
begin
select TuaSach.maTS as[Mã Tựa Sách],tenTS as[Tên Tựa Sách],count(CuonSach.maCS) as[Số Lượng Đang Được Mượn]
from TuaSach,CuonSach,ChiTietMuon,PhieuMuonTra
where TuaSach.maTS=CuonSach.maTS and CuonSach.maCS=ChiTietMuon.maCS and ChiTietMuon.soPMT=PhieuMuonTra.soPMT and PhieuMuonTra.ngayTra is null
group by TuaSach.maTS,tenTS
end

GO
/****** Object:  StoredProcedure [dbo].[tkvipham]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------thong ke doc gia khong tra sach dung han

create proc [dbo].[tkvipham]
as
begin
select DocGia.maDG as [Mã ĐG], tenDG as [Tên ĐG], gioiTinh as [Giới tính], ngaySinh as [Ngày sinh], diaChi as [Địa chỉ], SDT as [SĐT],soPMT as[Số Phiếu Mượn Trả]
from DocGia,PhieuMuonTra
where DocGia.maDG=PhieuMuonTra.maDG and (select DATEDIFF(day,ngayHTra,getdate()))>1 and ngayTra is null
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_CS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_CS](@macs char(10))
as
begin
	delete ChiTietMuon
	where maCS=@macs

	delete CuonSach
	where maCS=@macs
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_CTM]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_CTM](@sopmt char(10),@macs char(10))
as
begin
	delete ChiTietMuon
	where soPMT=@sopmt and maCS=@macs
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_CTN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_CTN](@sopn char(10))
as
begin
	delete ChiTietNhap
	where soPN=@sopn
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_DG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_DG](@madg char(10))
as
begin
	declare @tb table(soPMT char(10))
	insert @tb select soPMT from PhieuMuonTra where maDG=@madg
	delete ChiTietMuon
	where soPMT in (select soPMT from @tb)

	delete PhieuMuonTra
	where maDG=@madg

	delete DocGia
	where maDG=@madg
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_NCC]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_NCC](@mancc char(10))
as
begin
	delete ChiTietNhap
	where soPN in (select soPN from PhieuNhap where maNCC=@mancc)

	delete PhieuNhap
	where maNCC=@mancc

	update SachCN
	set maNCC=null
	where maNCC=@mancc

	delete NCC
	where maNCC=@mancc
end		

GO
/****** Object:  StoredProcedure [dbo].[xoa_NXB]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_NXB](@manxb char(10))
as
begin
	delete TuaSach
	where maNXB=@manxb

	delete NXB
	where maNXB=@manxb
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_PMT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_PMT](@sopmt char(10))
as
begin
	delete ChiTietMuon
	where soPMT=@sopmt

	delete PhieuPhat
	where soPMT=@sopmt

	delete PhieuMuonTra
	where soPMT=@sopmt
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_PN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_PN](@sopn char(10))
as
begin
	delete ChiTietNhap
	where soPN=@sopn

	delete PhieuNhap
	where soPN=@sopn
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_PP]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_PP](@sopp char(10))
as
begin
	delete PhieuPhat
	where soPP=@sopp
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_SCN]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_SCN](@tensach nvarchar(50))
as
begin
	delete SachCN
	where tenSach=@tensach
end        	

GO
/****** Object:  StoredProcedure [dbo].[xoa_TG]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_TG](@matg char(10))
as
begin
	delete Viet
	where maTG=@matg

	delete TacGia
	where maTG=@matg
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_TL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_TL](@matl char(10))
as
begin
	delete TS_TL
	where maTL=@matl

	delete TheLoai
	where maTL=@matl
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_TS]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_TS](@mats char(10))
as
begin
	delete TS_TL
	where maTS=@mats

	delete Viet
	where maTS=@mats

	delete CuonSach
	where maTS=@mats

	delete ChiTietNhap
	where maTS=@mats

	delete TuaSach
	where maTS=@mats
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_TSTL]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_TSTL](@mats char(10),@matl char(10))
as
begin
	delete TS_TL
	where maTS=@mats and maTL=@matl
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_TT]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_TT](@matt char(10))
as
begin
	delete PhieuMuonTra
	where maTT=@matt

	delete PhieuNhap
	where maTT=@matt

	delete ThuThu
	where maTT=@matt
end

GO
/****** Object:  StoredProcedure [dbo].[xoa_V]    Script Date: 6/28/2021 10:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoa_V](@mats char(10),@matg char(10))
as
begin
	delete Viet
	where maTS=@mats and maTG=@matg
end

GO
USE [master]
GO
ALTER DATABASE [ThuVien] SET  READ_WRITE 
GO
