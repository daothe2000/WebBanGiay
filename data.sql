USE [master]
GO
/****** Object:  Database [dbShoesStore123]    Script Date: 10/13/2022 5:13:26 PM ******/
CREATE DATABASE [dbShoesStore123]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbShoesStore123', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbShoesStore123.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbShoesStore123_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbShoesStore123_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbShoesStore123] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbShoesStore123].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbShoesStore123] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbShoesStore123] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbShoesStore123] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbShoesStore123] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbShoesStore123] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbShoesStore123] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbShoesStore123] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbShoesStore123] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbShoesStore123] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbShoesStore123] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbShoesStore123] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbShoesStore123] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbShoesStore123] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbShoesStore123] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbShoesStore123] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbShoesStore123] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbShoesStore123] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbShoesStore123] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbShoesStore123] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbShoesStore123] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbShoesStore123] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbShoesStore123] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbShoesStore123] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbShoesStore123] SET  MULTI_USER 
GO
ALTER DATABASE [dbShoesStore123] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbShoesStore123] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbShoesStore123] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbShoesStore123] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbShoesStore123] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dbShoesStore123]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[MaBanner] [int] IDENTITY(1,1) NOT NULL,
	[AnhBanner] [nvarchar](100) NULL,
	[ViTri] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [int] NOT NULL,
	[IdChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [float] NULL,
	[ThanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietKhuyenMai]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhuyenMai](
	[MaKhuyenMai] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[IdChiTietSP] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaSize] [int] NULL,
	[MaMau] [int] NULL,
	[NgayTao] [nvarchar](50) NULL,
	[status] [bit] NOT NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [float] NULL,
	[AnhChinh] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[SoDT] [char](12) NULL,
	[DiaChiGiaoHang] [nvarchar](200) NULL,
	[TinhTrang] [int] NULL,
	[NgayLap] [date] NULL,
	[tongTien] [float] NULL,
	[MaKhachHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Cmnd] [nvarchar](20) NULL,
	[SoDT] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[TenKhuyenMai] [nvarchar](200) NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[MoTa] [nvarchar](max) NULL,
	[GiaGiam] [int] NULL,
	[status] [bit] NULL,
	[kmtheo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MauSanPham]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MauSanPham](
	[MaMau] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](50) NULL,
	[HexCode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanHang]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanHang](
	[MaNhanHang] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanHang] [nvarchar](100) NULL,
	[HinhNhanHang] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Cmnd] [nvarchar](20) NULL,
	[SoDT] [varchar](12) NULL,
	[MaChucVu] [int] NULL,
	[Email] [varchar](50) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NOT NULL,
	[MaDanhMuc] [int] NULL,
	[MaNhanHang] [int] NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SizeSanPham]    Script Date: 10/13/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeSanPham](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[Size] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([MaBanner], [AnhBanner], [ViTri]) VALUES (1, N'300796181_1312138355986687_7532673981817936454_n.png', 1)
INSERT [dbo].[Banner] ([MaBanner], [AnhBanner], [ViTri]) VALUES (2, N'298257792_789947695478706_2655741774339251661_n.png', 1)
INSERT [dbo].[Banner] ([MaBanner], [AnhBanner], [ViTri]) VALUES (3, N'301455984_1274572690020370_4377149936615121199_n.jpg', 2)
INSERT [dbo].[Banner] ([MaBanner], [AnhBanner], [ViTri]) VALUES (4, N'300226561_2979423065536593_6931730013514242367_n.jpg', 2)
SET IDENTITY_INSERT [dbo].[Banner] OFF
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [IdChiTietSP], [SoLuong], [GiaTien], [ThanhTien]) VALUES (1, 5, 4, 250000, 1000000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [IdChiTietSP], [SoLuong], [GiaTien], [ThanhTien]) VALUES (2, 5, 2, 250000, 500000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [IdChiTietSP], [SoLuong], [GiaTien], [ThanhTien]) VALUES (3, 1, 5, 200000, 1000000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [IdChiTietSP], [SoLuong], [GiaTien], [ThanhTien]) VALUES (3, 2, 2, 200000, 400000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [IdChiTietSP], [SoLuong], [GiaTien], [ThanhTien]) VALUES (3, 3, 1, 200000, 200000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [IdChiTietSP], [SoLuong], [GiaTien], [ThanhTien]) VALUES (3, 4, 1, 200000, 200000)
SET IDENTITY_INSERT [dbo].[ChiTietSanPham] ON 

INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (1, 1, 2, 2, N'08/10/2022', 1, 15, 200000, N'287acb2f-5b46-437c-ab90-0d9b79725545.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (2, 1, 4, 2, N'08/10/2022', 1, 13, 200000, N'46a8985d-c228-4e83-8240-24909739b763.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (3, 1, 2, 3, N'08/10/2022', 1, 14, 200000, N'936826a2-850c-4de3-89f3-eaa4c1f16976.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (4, 1, 4, 3, N'08/10/2022', 1, 24, 200000, N'98251085-9645-42df-9f8d-c740657150e7.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (5, 2, 1, 1, N'08/10/2022', 1, 14, 250000, N'98251085-9645-42df-9f8d-c740657150e7.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (6, 2, 2, 1, N'08/10/2022', 1, 15, 250000, N'air-max-flyknit-racer-shoes-rVNTNl.jfif')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (7, 2, 1, 2, N'08/10/2022', 1, 20, 300000, N'287acb2f-5b46-437c-ab90-0d9b79725545.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (8, 2, 2, 2, N'08/10/2022', 1, 30, 300000, NULL)
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (9, 2, 1, 4, N'08/10/2022', 1, 15, 250000, N'e777c881-5b62-4250-92a6-362967f54cca.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (10, 2, 2, 4, N'08/10/2022', 0, 0, 0, NULL)
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (11, 3, 1, 2, N'08/10/2022', 1, 20, 500000, N'46a8985d-c228-4e83-8240-24909739b763.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (12, 3, 2, 2, N'08/10/2022', 1, 20, 500000, NULL)
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (13, 3, 1, 6, N'08/10/2022', 1, 20, 500000, N'f146ebe7-25c8-499a-aa31-389c6b895ba9.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (14, 3, 2, 6, N'08/10/2022', 1, 20, 500000, NULL)
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (15, 4, 1, 1, N'08/10/2022', 1, 20, 250000, N'air-max-flyknit-racer-shoes-rVNTNl.jfif')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (16, 4, 1, 2, N'08/10/2022', 1, 20, 260000, N'5f78e28d-43e4-4a95-8bd9-7dfb8cfc3d7f.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (17, 4, 1, 5, N'08/10/2022', 1, 20, 250000, N'46a8985d-c228-4e83-8240-24909739b763.jpg')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (18, 5, 1, 1, N'08/10/2022', 1, 20, 260000, N'air-max-flyknit-racer-shoes-rVNTNl.jfif')
INSERT [dbo].[ChiTietSanPham] ([IdChiTietSP], [MaSanPham], [MaSize], [MaMau], [NgayTao], [status], [SoLuong], [GiaTien], [AnhChinh]) VALUES (19, 5, 1, 5, N'08/10/2022', 1, 25, 260000, N'e777c881-5b62-4250-92a6-362967f54cca.jpg')
SET IDENTITY_INSERT [dbo].[ChiTietSanPham] OFF
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (1, N'admin')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (2, N'nhanvien')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Giày Sneaker')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Giày bóng rổ')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'giày lười nam')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N' Giày chạy')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc]) VALUES (6, N'Giày Tennis')
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SoDT], [DiaChiGiaoHang], [TinhTrang], [NgayLap], [tongTien], [MaKhachHang]) VALUES (1, N'Đào Văn thế', N'0398332697  ', N'bắc giang', 2, CAST(N'2022-10-08' AS Date), 1000000, 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SoDT], [DiaChiGiaoHang], [TinhTrang], [NgayLap], [tongTien], [MaKhachHang]) VALUES (2, N'Đào Văn thế', N'0398332697  ', N'bắc giang', 3, CAST(N'2022-10-08' AS Date), 500000, 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SoDT], [DiaChiGiaoHang], [TinhTrang], [NgayLap], [tongTien], [MaKhachHang]) VALUES (3, N'Đào Văn thế', N'0398332697  ', N'bắc giang', 2, CAST(N'2022-10-08' AS Date), 1800000, 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiaChi], [GioiTinh], [Cmnd], [SoDT], [Email], [TenDangNhap], [MatKhau], [status]) VALUES (1, N'Đào Văn thế', N'bắc giang', NULL, NULL, N'0398332697', N'anhtungagg@gmail.com', N'tuanh', N'anh', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[MauSanPham] ON 

INSERT [dbo].[MauSanPham] ([MaMau], [TenMau], [HexCode]) VALUES (1, N'đen', N'#000000')
INSERT [dbo].[MauSanPham] ([MaMau], [TenMau], [HexCode]) VALUES (2, N'đỏ', N'#ec0909')
INSERT [dbo].[MauSanPham] ([MaMau], [TenMau], [HexCode]) VALUES (3, N'vàng', N'#e6f609')
INSERT [dbo].[MauSanPham] ([MaMau], [TenMau], [HexCode]) VALUES (4, N'trắng', N'#ffffff')
INSERT [dbo].[MauSanPham] ([MaMau], [TenMau], [HexCode]) VALUES (5, N'xanh', N'#0a11e6')
INSERT [dbo].[MauSanPham] ([MaMau], [TenMau], [HexCode]) VALUES (6, N'xanh lá', N'#2cf005')
SET IDENTITY_INSERT [dbo].[MauSanPham] OFF
SET IDENTITY_INSERT [dbo].[NhanHang] ON 

INSERT [dbo].[NhanHang] ([MaNhanHang], [TenNhanHang], [HinhNhanHang]) VALUES (1, N'Adjdat', N'ajdat.png')
INSERT [dbo].[NhanHang] ([MaNhanHang], [TenNhanHang], [HinhNhanHang]) VALUES (2, N'Nike', N'nike.png')
INSERT [dbo].[NhanHang] ([MaNhanHang], [TenNhanHang], [HinhNhanHang]) VALUES (3, N'AirJordan', N'AirJordan.jpg')
SET IDENTITY_INSERT [dbo].[NhanHang] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [GioiTinh], [Cmnd], [SoDT], [MaChucVu], [Email], [TenDangNhap], [MatKhau], [status]) VALUES (1, N'Đào Văn Thế', N'Bắc Giang', N'Nam', NULL, N'0398332692', 1, N'anhtungagg@gmail.com', N'admin', N'admin', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [GioiTinh], [Cmnd], [SoDT], [MaChucVu], [Email], [TenDangNhap], [MatKhau], [status]) VALUES (2, N'Lê Trung Đức', N'Hà Nội', N'nam', N'', N'0396362933', 2, N'ducle123@gmail.com', N'ducle', N'anh', 0)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [GioiTinh], [Cmnd], [SoDT], [MaChucVu], [Email], [TenDangNhap], [MatKhau], [status]) VALUES (3, N'Bá Hợp', N'bắc giang', N'nam', N'', N'0398332698', 2, N'bahop134@gmail.com', N'bahop', N'anh', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [GioiTinh], [Cmnd], [SoDT], [MaChucVu], [Email], [TenDangNhap], [MatKhau], [status]) VALUES (4, N'Đỗ Văn Tân', N'Hà Nội', N'nam', N'', N'0365565656', 2, N'tando11@gmail.com', N'tando', N'anh', 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [MaNhanHang], [TenSanPham], [MoTa]) VALUES (1, 4, 1, N'Giày Nike Go Flyease', N'<h3>Hệ thống cửa h&agrave;ng</h3>

<p>* Authentic Shoes HCM : 561 Nguyễn Đ&igrave;nh Chiểu P.2, Q.3, 0786665444<br />
* Authentic Shoes HN : 72 T&acirc;y Sơn, Q.Đống Đa, 0785499555</p>

<h3>Cam kết kh&aacute;ch h&agrave;ng</h3>

<p>* Authentic Shoes cam kết chỉ ph&acirc;n phối c&aacute;c sản phẩm 100% ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc từ Mỹ, H&agrave;n, Nhật v&agrave; c&aacute;c nước Ch&acirc;u &Acirc;u.<br />
* Authentic Shoes cam kết ho&agrave;n tiền 500% cho tất cả kh&aacute;ch h&agrave;ng nếu sản phẩm b&aacute;n ra kh&ocirc;ng ch&iacute;nh h&atilde;ng v&agrave; kh&ocirc;ng đảm bảo chất lượng.<br />
* Authentic Shoes cam hết mọi sản phẩm đều ở t&igrave;nh trạng mới 100% với bao b&igrave; đi k&egrave;m của nh&agrave; sản xuất<br />
* Miễn ph&iacute; đổi Size v&agrave; mẫu nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng<br />
* Bảo h&agrave;nh sản phẩm 365 ng&agrave;y đối với c&aacute;c lỗi của nh&agrave; sản xuất<br />
* &Aacute;p dụng chương tr&igrave;nh vệ sinh gi&agrave;y 0đ đối với mỗi kh&aacute;ch h&agrave;ng của Authentic Shoes<br />
* Sẵn s&agrave;ng trả lời mọi thắc mắc, y&ecirc;u cầu hỗ trợ từ qu&yacute; kh&aacute;ch 24/7</p>

<h3>Ch&iacute;nh s&aacute;ch đổi trả, bảo h&agrave;nh</h3>

<p>QUY ĐỊNH ĐỔI TRẢ H&Agrave;NG TẠI AUTHENTIC SHOES<br />
* Sản phẩm &aacute;p dụng: Tất cả sản phẩm được giao dịch tr&ecirc;n Authentic shoes, c&oacute; chương tr&igrave;nh khuyến m&atilde;i kh&ocirc;ng qu&aacute; 30%.<br />
* Sản phẩm kh&ocirc;ng &aacute;p dụng:<br />
- Đồ l&oacute;t, đồ bơi, Phụ kiện: Vớ, khăn, trang sức, m&oacute;c kh&oacute;a, ốp lưng, Shoecare, nước hoa,....<br />
- C&aacute;c sản phẩm đ&atilde; qua sử dụng<br />
* Đối tượng kh&aacute;ch h&agrave;ng: Tất cả kh&aacute;ch h&agrave;ng sử dụng dịch vụ tại Authentic-Shoes.com<br />
* Thời gian đổi trả h&agrave;ng:<br />
- Đổi h&agrave;ng: Trong v&ograve;ng 07 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
- Trả h&agrave;ng: Trong v&ograve;ng 03 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
Tham khảo th&ecirc;m th&ocirc;ng tin tại Ch&iacute;nh s&aacute;ch đổi trả.</p>

<h3>Ch&iacute;nh s&aacute;ch vận chuyển</h3>

<p>* Chất lượng sản phẩm được đảm bảo<br />
- Đ&oacute;ng g&oacute;i tỉ mỉ với 2 lớp hộp v&agrave; một lớp xốp chống sốc<br />
- Hợp t&aacute;c với c&aacute;c đơn vị vận chuyển uy t&iacute;n nhất tại Việt Nam<br />
- Giao h&agrave;ng hỏa tốc kh&ocirc;ng mất th&ecirc;m phụ ph&iacute;<br />
&quot;* Thời gian giao h&agrave;ng<br />
- Giao h&agrave;ng trong v&ograve;ng 24h đối với c&aacute;c đơn h&agrave;ng nội th&agrave;nh<br />
- Giao h&agrave;ng trong v&ograve;ng 3 - 5 ng&agrave;y đối với c&aacute;c đợn h&agrave;ng ngoại tỉnh hoặc đặt h&agrave;ng dưới dạng đặt trước, vận chuyển từ kho</p>

<h3>Phương thức thanh to&aacute;n</h3>

<p>* Thanh to&aacute;n online: bằng chuyển khoản hoặc quẹt thẻ online ( &aacute;p dụng cho to&agrave;n bộ 49 ng&acirc;n h&agrave;ng tại Việt Nam )<br />
* Thanh to&aacute;n quốc tế qua Paypal<br />
* Thanh to&aacute;n trả g&oacute;p online qua thẻ t&iacute;n dụng ( Visa, Mastercard...)<br />
* Thanh to&aacute;n khi nhận h&agrave;ng (COD)</p>
')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [MaNhanHang], [TenSanPham], [MoTa]) VALUES (2, 5, 1, N'Giày Nike Air Max 90 Terrascape', N'<p>TH&Ecirc;M V&Agrave;O GIỎ&nbsp;MUA NGAYGIAO TẬN NƠI - NHẬN TẠI SHOP</p>

<h3>Hệ thống cửa h&agrave;ng</h3>

<p>* Authentic Shoes HCM : 561 Nguyễn Đ&igrave;nh Chiểu P.2, Q.3, 0786665444<br />
* Authentic Shoes HN : 72 T&acirc;y Sơn, Q.Đống Đa, 0785499555</p>

<h3>Cam kết kh&aacute;ch h&agrave;ng</h3>

<p>* Authentic Shoes cam kết chỉ ph&acirc;n phối c&aacute;c sản phẩm 100% ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc từ Mỹ, H&agrave;n, Nhật v&agrave; c&aacute;c nước Ch&acirc;u &Acirc;u.<br />
* Authentic Shoes cam kết ho&agrave;n tiền 500% cho tất cả kh&aacute;ch h&agrave;ng nếu sản phẩm b&aacute;n ra kh&ocirc;ng ch&iacute;nh h&atilde;ng v&agrave; kh&ocirc;ng đảm bảo chất lượng.<br />
* Authentic Shoes cam hết mọi sản phẩm đều ở t&igrave;nh trạng mới 100% với bao b&igrave; đi k&egrave;m của nh&agrave; sản xuất<br />
* Miễn ph&iacute; đổi Size v&agrave; mẫu nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng<br />
* Bảo h&agrave;nh sản phẩm 365 ng&agrave;y đối với c&aacute;c lỗi của nh&agrave; sản xuất<br />
* &Aacute;p dụng chương tr&igrave;nh vệ sinh gi&agrave;y 0đ đối với mỗi kh&aacute;ch h&agrave;ng của Authentic Shoes<br />
* Sẵn s&agrave;ng trả lời mọi thắc mắc, y&ecirc;u cầu hỗ trợ từ qu&yacute; kh&aacute;ch 24/7</p>

<h3>Ch&iacute;nh s&aacute;ch đổi trả, bảo h&agrave;nh</h3>

<p>QUY ĐỊNH ĐỔI TRẢ H&Agrave;NG TẠI AUTHENTIC SHOES<br />
* Sản phẩm &aacute;p dụng: Tất cả sản phẩm được giao dịch tr&ecirc;n Authentic shoes, c&oacute; chương tr&igrave;nh khuyến m&atilde;i kh&ocirc;ng qu&aacute; 30%.<br />
* Sản phẩm kh&ocirc;ng &aacute;p dụng:<br />
- Đồ l&oacute;t, đồ bơi, Phụ kiện: Vớ, khăn, trang sức, m&oacute;c kh&oacute;a, ốp lưng, Shoecare, nước hoa,....<br />
- C&aacute;c sản phẩm đ&atilde; qua sử dụng<br />
* Đối tượng kh&aacute;ch h&agrave;ng: Tất cả kh&aacute;ch h&agrave;ng sử dụng dịch vụ tại Authentic-Shoes.com<br />
* Thời gian đổi trả h&agrave;ng:<br />
- Đổi h&agrave;ng: Trong v&ograve;ng 07 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
- Trả h&agrave;ng: Trong v&ograve;ng 03 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
Tham khảo th&ecirc;m th&ocirc;ng tin tại Ch&iacute;nh s&aacute;ch đổi trả.</p>

<h3>Ch&iacute;nh s&aacute;ch vận chuyển</h3>

<p>* Chất lượng sản phẩm được đảm bảo<br />
- Đ&oacute;ng g&oacute;i tỉ mỉ với 2 lớp hộp v&agrave; một lớp xốp chống sốc<br />
- Hợp t&aacute;c với c&aacute;c đơn vị vận chuyển uy t&iacute;n nhất tại Việt Nam<br />
- Giao h&agrave;ng hỏa tốc kh&ocirc;ng mất th&ecirc;m phụ ph&iacute;<br />
&quot;* Thời gian giao h&agrave;ng<br />
- Giao h&agrave;ng trong v&ograve;ng 24h đối với c&aacute;c đơn h&agrave;ng nội th&agrave;nh<br />
- Giao h&agrave;ng trong v&ograve;ng 3 - 5 ng&agrave;y đối với c&aacute;c đợn h&agrave;ng ngoại tỉnh hoặc đặt h&agrave;ng dưới dạng đặt trước, vận chuyển từ kho</p>

<h3>Phương thức thanh to&aacute;n</h3>

<p>* Thanh to&aacute;n online: bằng chuyển khoản hoặc quẹt thẻ online ( &aacute;p dụng cho to&agrave;n bộ 49 ng&acirc;n h&agrave;ng tại Việt Nam )<br />
* Thanh to&aacute;n quốc tế qua Paypal<br />
* Thanh to&aacute;n trả g&oacute;p online qua thẻ t&iacute;n dụng ( Visa, Mastercard...)<br />
* Thanh to&aacute;n khi nhận h&agrave;ng (COD)</p>
')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [MaNhanHang], [TenSanPham], [MoTa]) VALUES (3, 1, 2, N'Giày Nike Kyrie 8 Infinity', N'<p>TH&Ecirc;M V&Agrave;O GIỎ&nbsp;MUA NGAYGIAO TẬN NƠI - NHẬN TẠI SHOP</p>

<h3>Hệ thống cửa h&agrave;ng</h3>

<p>* Authentic Shoes HCM : 561 Nguyễn Đ&igrave;nh Chiểu P.2, Q.3, 0786665444<br />
* Authentic Shoes HN : 72 T&acirc;y Sơn, Q.Đống Đa, 0785499555</p>

<h3>Cam kết kh&aacute;ch h&agrave;ng</h3>

<p>* Authentic Shoes cam kết chỉ ph&acirc;n phối c&aacute;c sản phẩm 100% ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc từ Mỹ, H&agrave;n, Nhật v&agrave; c&aacute;c nước Ch&acirc;u &Acirc;u.<br />
* Authentic Shoes cam kết ho&agrave;n tiền 500% cho tất cả kh&aacute;ch h&agrave;ng nếu sản phẩm b&aacute;n ra kh&ocirc;ng ch&iacute;nh h&atilde;ng v&agrave; kh&ocirc;ng đảm bảo chất lượng.<br />
* Authentic Shoes cam hết mọi sản phẩm đều ở t&igrave;nh trạng mới 100% với bao b&igrave; đi k&egrave;m của nh&agrave; sản xuất<br />
* Miễn ph&iacute; đổi Size v&agrave; mẫu nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng<br />
* Bảo h&agrave;nh sản phẩm 365 ng&agrave;y đối với c&aacute;c lỗi của nh&agrave; sản xuất<br />
* &Aacute;p dụng chương tr&igrave;nh vệ sinh gi&agrave;y 0đ đối với mỗi kh&aacute;ch h&agrave;ng của Authentic Shoes<br />
* Sẵn s&agrave;ng trả lời mọi thắc mắc, y&ecirc;u cầu hỗ trợ từ qu&yacute; kh&aacute;ch 24/7</p>

<h3>Ch&iacute;nh s&aacute;ch đổi trả, bảo h&agrave;nh</h3>

<p>QUY ĐỊNH ĐỔI TRẢ H&Agrave;NG TẠI AUTHENTIC SHOES<br />
* Sản phẩm &aacute;p dụng: Tất cả sản phẩm được giao dịch tr&ecirc;n Authentic shoes, c&oacute; chương tr&igrave;nh khuyến m&atilde;i kh&ocirc;ng qu&aacute; 30%.<br />
* Sản phẩm kh&ocirc;ng &aacute;p dụng:<br />
- Đồ l&oacute;t, đồ bơi, Phụ kiện: Vớ, khăn, trang sức, m&oacute;c kh&oacute;a, ốp lưng, Shoecare, nước hoa,....<br />
- C&aacute;c sản phẩm đ&atilde; qua sử dụng<br />
* Đối tượng kh&aacute;ch h&agrave;ng: Tất cả kh&aacute;ch h&agrave;ng sử dụng dịch vụ tại Authentic-Shoes.com<br />
* Thời gian đổi trả h&agrave;ng:<br />
- Đổi h&agrave;ng: Trong v&ograve;ng 07 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
- Trả h&agrave;ng: Trong v&ograve;ng 03 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
Tham khảo th&ecirc;m th&ocirc;ng tin tại Ch&iacute;nh s&aacute;ch đổi trả.</p>
')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [MaNhanHang], [TenSanPham], [MoTa]) VALUES (4, 2, 3, N'Giày Nike Air Jordan Zoom 92', N'<h3>Hệ thống cửa h&agrave;ng</h3>

<p>* Authentic Shoes HCM : 561 Nguyễn Đ&igrave;nh Chiểu P.2, Q.3, 0786665444<br />
* Authentic Shoes HN : 72 T&acirc;y Sơn, Q.Đống Đa, 0785499555</p>

<h3>Cam kết kh&aacute;ch h&agrave;ng</h3>

<p>* Authentic Shoes cam kết chỉ ph&acirc;n phối c&aacute;c sản phẩm 100% ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc từ Mỹ, H&agrave;n, Nhật v&agrave; c&aacute;c nước Ch&acirc;u &Acirc;u.<br />
* Authentic Shoes cam kết ho&agrave;n tiền 500% cho tất cả kh&aacute;ch h&agrave;ng nếu sản phẩm b&aacute;n ra kh&ocirc;ng ch&iacute;nh h&atilde;ng v&agrave; kh&ocirc;ng đảm bảo chất lượng.<br />
* Authentic Shoes cam hết mọi sản phẩm đều ở t&igrave;nh trạng mới 100% với bao b&igrave; đi k&egrave;m của nh&agrave; sản xuất<br />
* Miễn ph&iacute; đổi Size v&agrave; mẫu nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng<br />
* Bảo h&agrave;nh sản phẩm 365 ng&agrave;y đối với c&aacute;c lỗi của nh&agrave; sản xuất<br />
* &Aacute;p dụng chương tr&igrave;nh vệ sinh gi&agrave;y 0đ đối với mỗi kh&aacute;ch h&agrave;ng của Authentic Shoes<br />
* Sẵn s&agrave;ng trả lời mọi thắc mắc, y&ecirc;u cầu hỗ trợ từ qu&yacute; kh&aacute;ch 24/7</p>

<h3>Ch&iacute;nh s&aacute;ch đổi trả, bảo h&agrave;nh</h3>

<p>QUY ĐỊNH ĐỔI TRẢ H&Agrave;NG TẠI AUTHENTIC SHOES<br />
* Sản phẩm &aacute;p dụng: Tất cả sản phẩm được giao dịch tr&ecirc;n Authentic shoes, c&oacute; chương tr&igrave;nh khuyến m&atilde;i kh&ocirc;ng qu&aacute; 30%.<br />
* Sản phẩm kh&ocirc;ng &aacute;p dụng:<br />
- Đồ l&oacute;t, đồ bơi, Phụ kiện: Vớ, khăn, trang sức, m&oacute;c kh&oacute;a, ốp lưng, Shoecare, nước hoa,....<br />
- C&aacute;c sản phẩm đ&atilde; qua sử dụng<br />
* Đối tượng kh&aacute;ch h&agrave;ng: Tất cả kh&aacute;ch h&agrave;ng sử dụng dịch vụ tại Authentic-Shoes.com<br />
* Thời gian đổi trả h&agrave;ng:<br />
- Đổi h&agrave;ng: Trong v&ograve;ng 07 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
- Trả h&agrave;ng: Trong v&ograve;ng 03 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
Tham khảo th&ecirc;m th&ocirc;ng tin tại Ch&iacute;nh s&aacute;ch đổi trả.</p>
')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [MaNhanHang], [TenSanPham], [MoTa]) VALUES (5, 5, 3, N'Giày Nike Air Jordan Jumpman', N'<h3>Hệ thống cửa h&agrave;ng</h3>

<p>* Authentic Shoes HCM : 561 Nguyễn Đ&igrave;nh Chiểu P.2, Q.3, 0786665444<br />
* Authentic Shoes HN : 72 T&acirc;y Sơn, Q.Đống Đa, 0785499555</p>

<h3>Cam kết kh&aacute;ch h&agrave;ng</h3>

<p>* Authentic Shoes cam kết chỉ ph&acirc;n phối c&aacute;c sản phẩm 100% ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc từ Mỹ, H&agrave;n, Nhật v&agrave; c&aacute;c nước Ch&acirc;u &Acirc;u.<br />
* Authentic Shoes cam kết ho&agrave;n tiền 500% cho tất cả kh&aacute;ch h&agrave;ng nếu sản phẩm b&aacute;n ra kh&ocirc;ng ch&iacute;nh h&atilde;ng v&agrave; kh&ocirc;ng đảm bảo chất lượng.<br />
* Authentic Shoes cam hết mọi sản phẩm đều ở t&igrave;nh trạng mới 100% với bao b&igrave; đi k&egrave;m của nh&agrave; sản xuất<br />
* Miễn ph&iacute; đổi Size v&agrave; mẫu nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng<br />
* Bảo h&agrave;nh sản phẩm 365 ng&agrave;y đối với c&aacute;c lỗi của nh&agrave; sản xuất<br />
* &Aacute;p dụng chương tr&igrave;nh vệ sinh gi&agrave;y 0đ đối với mỗi kh&aacute;ch h&agrave;ng của Authentic Shoes<br />
* Sẵn s&agrave;ng trả lời mọi thắc mắc, y&ecirc;u cầu hỗ trợ từ qu&yacute; kh&aacute;ch 24/7</p>

<h3>Ch&iacute;nh s&aacute;ch đổi trả, bảo h&agrave;nh</h3>

<p>QUY ĐỊNH ĐỔI TRẢ H&Agrave;NG TẠI AUTHENTIC SHOES<br />
* Sản phẩm &aacute;p dụng: Tất cả sản phẩm được giao dịch tr&ecirc;n Authentic shoes, c&oacute; chương tr&igrave;nh khuyến m&atilde;i kh&ocirc;ng qu&aacute; 30%.<br />
* Sản phẩm kh&ocirc;ng &aacute;p dụng:<br />
- Đồ l&oacute;t, đồ bơi, Phụ kiện: Vớ, khăn, trang sức, m&oacute;c kh&oacute;a, ốp lưng, Shoecare, nước hoa,....<br />
- C&aacute;c sản phẩm đ&atilde; qua sử dụng<br />
* Đối tượng kh&aacute;ch h&agrave;ng: Tất cả kh&aacute;ch h&agrave;ng sử dụng dịch vụ tại Authentic-Shoes.com<br />
* Thời gian đổi trả h&agrave;ng:<br />
- Đổi h&agrave;ng: Trong v&ograve;ng 07 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
- Trả h&agrave;ng: Trong v&ograve;ng 03 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch h&agrave;ng nhận được sản phẩm.<br />
Tham khảo th&ecirc;m th&ocirc;ng tin tại Ch&iacute;nh s&aacute;ch đổi trả.</p>
')
SET IDENTITY_INSERT [dbo].[SizeSanPham] ON 

INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (1, N'35')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (2, N'36')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (3, N'37')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (4, N'38')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (5, N'39')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (6, N'40')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (7, N'41')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (8, N'42')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (9, N'43')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (10, N'44')
INSERT [dbo].[SizeSanPham] ([MaSize], [Size]) VALUES (11, N'45')
SET IDENTITY_INSERT [dbo].[SizeSanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_SanPham] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSanPham] ([IdChiTietSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietSanPham_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_CTKM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_CTKM]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_CTKM1] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([MaKhuyenMai])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_CTKM1]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CHITET_MauSp] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSanPham] ([MaMau])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_CHITET_MauSp]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CHITET_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_CHITET_SanPham]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_Size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[SizeSanPham] ([MaSize])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTiet_Size]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_KhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_ChucVu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMucSanPham] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhanHang] FOREIGN KEY([MaNhanHang])
REFERENCES [dbo].[NhanHang] ([MaNhanHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhanHang]
GO
USE [master]
GO
ALTER DATABASE [dbShoesStore123] SET  READ_WRITE 
GO
