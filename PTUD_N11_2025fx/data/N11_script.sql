USE [master]
GO
/****** Object:  Database [N11_PTUD_DB]    Script Date: 5/27/2025 6:22:17 PM ******/
CREATE DATABASE [N11_PTUD_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'N11_PTUD_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\N11_PTUD_DB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'N11_PTUD_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\N11_PTUD_DB_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [N11_PTUD_DB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [N11_PTUD_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [N11_PTUD_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [N11_PTUD_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [N11_PTUD_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [N11_PTUD_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [N11_PTUD_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [N11_PTUD_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [N11_PTUD_DB] SET  MULTI_USER 
GO
ALTER DATABASE [N11_PTUD_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [N11_PTUD_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [N11_PTUD_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [N11_PTUD_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'N11_PTUD_DB', N'ON'
GO
USE [N11_PTUD_DB]
GO
/****** Object:  Table [dbo].[ChiTietHD_DichVu]    Script Date: 5/27/2025 6:22:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHD_DichVu](
	[IDHoaDon] [varchar](13) NOT NULL,
	[IDDichVu] [varchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietHD_DichVu] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC,
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHD_Phong]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHD_Phong](
	[IDHoaDon] [varchar](13) NOT NULL,
	[IDPhong] [varchar](6) NOT NULL,
	[GioCheckout] [datetime] NOT NULL,
 CONSTRAINT [PK_ChiTietHD_Phong] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC,
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DichVu](
	[IDDichVu] [varchar](5) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [varchar](13) NOT NULL,
	[IDNhanVien] [varchar](10) NOT NULL,
	[IDKhachHang] [varchar](10) NOT NULL,
	[IDKhuyenMai] [varchar](8) NULL,
	[ThoiGianTao] [datetime] NOT NULL,
	[ThoiGianCheckin] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [varchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[SoDienThoai] [varchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[TichDiem] [int] NULL,
	[CCCD] [varchar](12) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[IDKhuyenMai] [varchar](8) NOT NULL,
	[TenKhuyenMai] [nvarchar](50) NOT NULL,
	[ChietKhau] [float] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[IDKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [varchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[SoDienThoai] [varchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NULL,
	[CCCD] [varchar](12) NOT NULL,
	[ChucVu] [int] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuThuePhong]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuThuePhong](
	[IDPhieuThue] [varchar](13) NOT NULL,
	[IDKhachHang] [varchar](10) NOT NULL,
	[IDPhong] [varchar](6) NOT NULL,
	[IDNhanVien] [varchar](10) NOT NULL,
	[ThoiGianNhanPhong] [datetime] NOT NULL,
	[ThoiHanGiaoPhong] [datetime] NOT NULL,
	[HieuLuc] [bit] NULL,
	[IDHoaDon] [varchar](13) NULL,
 CONSTRAINT [PK_PhieuThuePhong] PRIMARY KEY CLUSTERED 
(
	[IDPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phong](
	[IDPhong] [varchar](6) NOT NULL,
	[LoaiPhong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[TieuChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/27/2025 6:22:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTaiKhoan] [varchar](6) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[IDNhanVien] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TaiKhoan_1] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHD_DichVu] ([IDHoaDon], [IDDichVu], [SoLuong]) VALUES (N'HD25030101', N'SP001', 2)
INSERT [dbo].[ChiTietHD_DichVu] ([IDHoaDon], [IDDichVu], [SoLuong]) VALUES (N'HD25052712', N'SP002', 5)
INSERT [dbo].[ChiTietHD_DichVu] ([IDHoaDon], [IDDichVu], [SoLuong]) VALUES (N'HD25052714', N'SP001', 5)
INSERT [dbo].[ChiTietHD_DichVu] ([IDHoaDon], [IDDichVu], [SoLuong]) VALUES (N'HD25052723', N'SP002', 2)
INSERT [dbo].[ChiTietHD_DichVu] ([IDHoaDon], [IDDichVu], [SoLuong]) VALUES (N'HD25052725', N'SP001', 2)
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25030101', N'T01P02', CAST(0x0000B29300C5C100 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052001', N'T02P05', CAST(0x0000B2E300C5C100 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052002', N'T01P04', CAST(0x0000B2E3011826C0 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052101', N'T04P09', CAST(0x0000B2E400EEF3E0 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052201', N'T03P06', CAST(0x0000B2E500DE7920 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052301', N'T01P03', CAST(0x0000B2E6009450C0 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052401', N'T04P09', CAST(0x0000B2E700EEF3E0 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052402', N'T02P09', CAST(0x0000B2E70107AC00 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052501', N'T03P06', CAST(0x0000B2E800DE7920 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052601', N'T01P03', CAST(0x0000B2E900A4CB80 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052602', N'T02P05', CAST(0x0000B2E900C5C100 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052701', N'T01P03', CAST(0x0000B2EA00A4CB80 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052702', N'T02P05', CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052703', N'T03P06', CAST(0x0000B2EA00DE7920 AS DateTime))
INSERT [dbo].[ChiTietHD_Phong] ([IDHoaDon], [IDPhong], [GioCheckout]) VALUES (N'HD25052704', N'T04P09', CAST(0x0000B2EA00EEF3E0 AS DateTime))
INSERT [dbo].[DichVu] ([IDDichVu], [TenSanPham], [SoLuong], [DonGia]) VALUES (N'SP001', N'Nước suối', 220, 10000.0000)
INSERT [dbo].[DichVu] ([IDDichVu], [TenSanPham], [SoLuong], [DonGia]) VALUES (N'SP002', N'Bánh kẹo', 893, 9000.0000)
INSERT [dbo].[DichVu] ([IDDichVu], [TenSanPham], [SoLuong], [DonGia]) VALUES (N'SP003', N'Nước ngọt', 50, 10000.0000)
INSERT [dbo].[DichVu] ([IDDichVu], [TenSanPham], [SoLuong], [DonGia]) VALUES (N'SP004', N'Khăn giấy', 800, 5000.0000)
INSERT [dbo].[DichVu] ([IDDichVu], [TenSanPham], [SoLuong], [DonGia]) VALUES (N'SP005', N'Thức ăn', 88, 7000.0000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25030101', N'NV25030101', N'KH25030101', N'KM250301', CAST(0x0000B29300C5C100 AS DateTime), CAST(0x0000B29300C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052001', N'NV25030102', N'KH25030102', N'KM250503', CAST(0x0000B2E300B54640 AS DateTime), CAST(0x0000B2E300C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052002', N'NV25030101', N'KH25030103', N'KM250501', CAST(0x0000B2E30107AC00 AS DateTime), CAST(0x0000B2E3011826C0 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052101', N'NV25030101', N'KH25032701', N'KM250502', CAST(0x0000B2E400E6B680 AS DateTime), CAST(0x0000B2E400EEF3E0 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052201', N'NV25032401', N'KH25030104', N'KM250501', CAST(0x0000B2E500D63BC0 AS DateTime), CAST(0x0000B2E500DE7920 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052301', N'NV25030101', N'KH25030103', N'KM250503', CAST(0x0000B2E6008C1360 AS DateTime), CAST(0x0000B2E6009450C0 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052401', N'NV25030101', N'KH25032701', N'KM250501', CAST(0x0000B2E700E6B680 AS DateTime), CAST(0x0000B2E700EEF3E0 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052402', N'NV25030102', N'KH25030102', N'KM250502', CAST(0x0000B2E700F73140 AS DateTime), CAST(0x0000B2E70107AC00 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052501', N'NV25032401', N'KH25030104', N'KM250503', CAST(0x0000B2E800D63BC0 AS DateTime), CAST(0x0000B2E800DE7920 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052601', N'NV25030101', N'KH25030102', N'KM250501', CAST(0x0000B2E9009450C0 AS DateTime), CAST(0x0000B2E900A4CB80 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052602', N'NV25030102', N'KH25030103', N'KM250502', CAST(0x0000B2E900B54640 AS DateTime), CAST(0x0000B2E900C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052701', N'NV25030101', N'KH25030102', N'KM250503', CAST(0x0000B2EA009450C0 AS DateTime), CAST(0x0000B2EA00A4CB80 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052702', N'NV25030102', N'KH25030103', N'KM250501', CAST(0x0000B2EA00B54640 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052703', N'NV25032401', N'KH25030104', N'KM250501', CAST(0x0000B2EA00D63BC0 AS DateTime), CAST(0x0000B2EA00DE7920 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052704', N'NV25030101', N'KH25032701', N'KM250502', CAST(0x0000B2EA00E6B680 AS DateTime), CAST(0x0000B2EA00EEF3E0 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052705', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA01042401 AS DateTime), CAST(0x0000B2EA00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052706', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA00C5C100 AS DateTime), CAST(0x0000B2ED00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052707', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA00C5C100 AS DateTime), CAST(0x0000B2F500C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052708', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA010A7156 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052709', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA010C66C1 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052710', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA010D34CC AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052711', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA010E9F2A AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052712', N'NV25030101', N'KH25052701', N'KM250301', CAST(0x0000B2EA00C5C100 AS DateTime), CAST(0x0000B2EE00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052713', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA0120ECA3 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052714', N'NV25030101', N'KH25052701', N'KM250502', CAST(0x0000B2EA00C5C100 AS DateTime), CAST(0x0000B2EE00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052715', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA01239E9B AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052716', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA01255951 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052717', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA012634C3 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052718', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA012716F5 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052719', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA0127CD27 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052720', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA0128C17F AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052721', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA01299DF9 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052722', N'NV25030101', N'KH25052701', NULL, CAST(0x0000B2EA012A48BB AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052723', N'NV25030101', N'KH25052701', N'KM250502', CAST(0x0000B2EA00C5C100 AS DateTime), CAST(0x0000B2ED00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052724', N'NV25030101', N'KH25052704', NULL, CAST(0x0000B2EA012C8946 AS DateTime), CAST(0x0000B2EA00C5C100 AS DateTime))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDNhanVien], [IDKhachHang], [IDKhuyenMai], [ThoiGianTao], [ThoiGianCheckin]) VALUES (N'HD25052725', N'NV25030101', N'KH25052704', N'KM250502', CAST(0x0000B2EA00C5C100 AS DateTime), CAST(0x0000B2EC00C5C100 AS DateTime))
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25030101', N'Hoa Thành An', N'0332060907', CAST(0xC22A0B00 AS Date), 0, N'087200001111')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25030102', N'Huỳnh Nhật Hoàng', N'0783971953', CAST(0xFA2A0B00 AS Date), 0, N'087200002222')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25030103', N'Hồ Minh Hưng', N'0819575845', CAST(0xFA2A0B00 AS Date), 0, N'087200003333')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25030104', N'Nguyễn Hoàng Bảo', N'0962313853', CAST(0xC92A0B00 AS Date), 0, N'087200004444')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25032701', N'Phan Tấn Duy', N'0362553366', CAST(0x19250B00 AS Date), 0, N'087204014444')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25032801', N'Nguyễn Trung Hậu', N'0385412906', CAST(0x122B0B00 AS Date), 0, N'087200003325')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25052701', N'Hoàng', N'0783971953', CAST(0xB52B0B00 AS Date), 30000, N'086204000999')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25052702', N'An', N'0299999999', CAST(0xBB2B0B00 AS Date), 0, N'086204000888')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25052703', N'Việt', N'0288888888', CAST(0xB82A0B00 AS Date), 0, N'086204000777')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenKhachHang], [SoDienThoai], [NgaySinh], [TichDiem], [CCCD]) VALUES (N'KH25052704', N'Tân', N'0266666666', CAST(0x02250B00 AS Date), 20000, N'086204000111')
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [TenKhuyenMai], [ChietKhau]) VALUES (N'KM250301', N'Khuyến mãi 1', 1)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [TenKhuyenMai], [ChietKhau]) VALUES (N'KM250501', N'KM2', 1)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [TenKhuyenMai], [ChietKhau]) VALUES (N'KM250502', N'KM3', 2)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [TenKhuyenMai], [ChietKhau]) VALUES (N'KM250503', N'KM4', 1)
INSERT [dbo].[KhuyenMai] ([IDKhuyenMai], [TenKhuyenMai], [ChietKhau]) VALUES (N'KM250504', N'KM5', 5)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [SoDienThoai], [NgaySinh], [GioiTinh], [CCCD], [ChucVu]) VALUES (N'NV25030101', N'Nguyễn Hoàng Tấn', N'0701234567', CAST(0x0F2B0B00 AS Date), 1, N'087300001111', 1)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [SoDienThoai], [NgaySinh], [GioiTinh], [CCCD], [ChucVu]) VALUES (N'NV25030102', N'Huỳnh Lê Minh Duy', N'0801234765', CAST(0x3F160B00 AS Date), 0, N'087400002222', 2)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [SoDienThoai], [NgaySinh], [GioiTinh], [CCCD], [ChucVu]) VALUES (N'NV25032401', N'Huỳnh Nhật Hoàng', N'0783971953', CAST(0xFA2A0B00 AS Date), 1, N'012345678955', 2)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [SoDienThoai], [NgaySinh], [GioiTinh], [CCCD], [ChucVu]) VALUES (N'NV25052701', N'Hoa Thành An', N'0289898989', CAST(0x3F2A0B00 AS Date), 1, N'087698444555', 1)
INSERT [dbo].[NhanVien] ([IDNhanVien], [TenNhanVien], [SoDienThoai], [NgaySinh], [GioiTinh], [CCCD], [ChucVu]) VALUES (N'NV25052702', N'Lương Minh Tân', N'0275874989', CAST(0xB52B0B00 AS Date), 1, N'098697897879', 2)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250301001', N'KH25030101', N'T01P02', N'NV25030101', CAST(0x0000B29300000000 AS DateTime), CAST(0x0000B29400000000 AS DateTime), 0, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527001', N'KH25052701', N'T02P01', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2ED00000000 AS DateTime), 0, N'HD25052706')
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527002', N'KH25052701', N'T01P07', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2EE00000000 AS DateTime), 0, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527003', N'KH25052701', N'T01P07', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2EE00000000 AS DateTime), 0, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527004', N'KH25052701', N'T01P09', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2F500000000 AS DateTime), 0, N'HD25052707')
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527005', N'KH25052701', N'T01P09', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2F500000000 AS DateTime), 0, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527006', N'KH25052701', N'T01P09', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2FF00000000 AS DateTime), 0, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527007', N'KH25052701', N'T01P07', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2EE00000000 AS DateTime), 0, N'HD25052711')
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527008', N'KH25052701', N'T01P01', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2EE00000000 AS DateTime), 0, N'HD25052712')
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527009', N'KH25052702', N'T01P04', N'NV25030101', CAST(0x0000B2EB00C5C100 AS DateTime), CAST(0x0000B2F100C5C100 AS DateTime), 1, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527010', N'KH25052703', N'T01P04', N'NV25030101', CAST(0x0000B2F200C5C100 AS DateTime), CAST(0x0000B2F500C5C100 AS DateTime), 1, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527011', N'KH25052703', N'T02P02', N'NV25030101', CAST(0x0000B2F200C5C100 AS DateTime), CAST(0x0000B2F500C5C100 AS DateTime), 1, NULL)
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527012', N'KH25052701', N'T01P01', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2EE00000000 AS DateTime), 0, N'HD25052714')
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527013', N'KH25052701', N'T01P01', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2ED00000000 AS DateTime), 0, N'HD25052723')
INSERT [dbo].[PhieuThuePhong] ([IDPhieuThue], [IDKhachHang], [IDPhong], [IDNhanVien], [ThoiGianNhanPhong], [ThoiHanGiaoPhong], [HieuLuc], [IDHoaDon]) VALUES (N'PT250527014', N'KH25052704', N'T01P01', N'NV25030101', CAST(0x0000B2EA00000000 AS DateTime), CAST(0x0000B2EC00000000 AS DateTime), 0, N'HD25052725')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P01', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P02', 1, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P03', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P04', 1, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P05', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P06', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P07', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P08', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P09', 3, 600000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T01P10', 3, 600000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P01', 3, 600000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P02', 3, 600000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P03', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P04', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P05', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P06', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P07', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P08', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P09', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T02P10', 1, 400000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P01', 1, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P02', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P03', 2, 200000.0000, 2, N'View biển')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P04', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P05', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P06', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P07', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P08', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P09', 3, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T03P10', 3, 400000.0000, 3, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P01', 3, 600000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P02', 3, 600000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P03', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P04', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P05', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P06', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P07', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P08', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P09', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T04P10', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P01', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P02', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P03', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P04', 2, 200000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P05', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P06', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P07', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P08', 1, 400000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P09', 3, 600000.0000, 2, N'View thành phố')
INSERT [dbo].[Phong] ([IDPhong], [LoaiPhong], [DonGia], [TrangThai], [TieuChi]) VALUES (N'T05P10', 3, 600000.0000, 2, N'View thành phố')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [TrangThai], [IDNhanVien]) VALUES (N'NV0101', N'123456789', N'Đang đăng nhập', N'NV25030101')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [TrangThai], [IDNhanVien]) VALUES (N'NV0102', N'123456789', N'NULL', N'NV25030102')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [TrangThai], [IDNhanVien]) VALUES (N'QL2401', N'H123456789', N'NULL', N'NV25032401')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [TrangThai], [IDNhanVien]) VALUES (N'QL2702', N'T123456789', N'NULL', N'NV25052702')
ALTER TABLE [dbo].[ChiTietHD_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_DichVu_DichVu] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DichVu] ([IDDichVu])
GO
ALTER TABLE [dbo].[ChiTietHD_DichVu] CHECK CONSTRAINT [FK_ChiTietHD_DichVu_DichVu]
GO
ALTER TABLE [dbo].[ChiTietHD_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_DichVu_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHD_DichVu] CHECK CONSTRAINT [FK_ChiTietHD_DichVu_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD_Phong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Phong_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHD_Phong] CHECK CONSTRAINT [FK_ChiTietHD_Phong_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD_Phong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Phong_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[ChiTietHD_Phong] CHECK CONSTRAINT [FK_ChiTietHD_Phong_Phong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([IDKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([IDKhuyenMai])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_HoaDon]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_KhachHang]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_NhanVien]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_Phong]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [N11_PTUD_DB] SET  READ_WRITE 
GO
