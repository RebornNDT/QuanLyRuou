USE [master]
GO
/****** Object:  Database [QLRuou]    Script Date: 11/1/2019 10:05:45 PM ******/
CREATE DATABASE [QLRuou]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLRuou', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLRuou.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLRuou_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLRuou_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLRuou] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLRuou].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLRuou] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLRuou] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLRuou] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLRuou] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLRuou] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLRuou] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLRuou] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLRuou] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLRuou] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLRuou] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLRuou] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLRuou] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLRuou] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLRuou] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLRuou] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLRuou] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLRuou] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLRuou] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLRuou] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLRuou] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLRuou] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLRuou] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLRuou] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLRuou] SET  MULTI_USER 
GO
ALTER DATABASE [QLRuou] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLRuou] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLRuou] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLRuou] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLRuou] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLRuou', N'ON'
GO
ALTER DATABASE [QLRuou] SET QUERY_STORE = OFF
GO
USE [QLRuou]
GO
/****** Object:  Table [dbo].[Chatlieu]    Script Date: 11/1/2019 10:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chatlieu](
	[MaCL] [nvarchar](10) NOT NULL,
	[TenCL] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[HDB] [nvarchar](10) NOT NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [int] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[HDN] [nvarchar](10) NOT NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[GiamGia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK__ChiTietH__C7552E879CDFD905] PRIMARY KEY CLUSTERED 
(
	[HDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Congdung]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congdung](
	[MaCD] [nvarchar](10) NOT NULL,
	[TenCD] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[MaCV] [nvarchar](10) NOT NULL,
	[TenCV] [nvarchar](100) NULL,
	[MucLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DMHangHoa]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMHangHoa](
	[MaHH] [nvarchar](10) NOT NULL,
	[TenHH] [nvarchar](100) NULL,
	[MaDL] [nvarchar](10) NULL,
	[MaCD] [nvarchar](10) NULL,
	[MaCL] [nvarchar](10) NULL,
	[Maloai] [nvarchar](10) NULL,
	[MaHD] [nvarchar](10) NULL,
	[MaDo] [nvarchar](10) NULL,
	[MaMS] [nvarchar](10) NULL,
	[MaNSX] [nvarchar](10) NULL,
	[Soluong] [int] NULL,
	[GiaNhap] [int] NULL,
	[GiaBan] [int] NULL,
	[Anh] [image] NULL,
	[GhiChu] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoRuou]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoRuou](
	[MaDo] [nvarchar](10) NOT NULL,
	[TenDo] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DungLuong]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DungLuong](
	[MaDL] [nvarchar](10) NOT NULL,
	[TenDL] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDBan]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBan](
	[HDB] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[NgayBan] [date] NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDNhap]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDNhap](
	[HDN] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[NgayNhap] [date] NULL,
	[MaNCC] [nvarchar](10) NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hinhdang]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinhdang](
	[MaHD] [nvarchar](10) NOT NULL,
	[TenHD] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[Diachi] [nvarchar](10) NULL,
	[SDT] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[Maloai] [nvarchar](10) NOT NULL,
	[Tenloai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mausac]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mausac](
	[MaMS] [nvarchar](10) NOT NULL,
	[TenMS] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](100) NULL,
	[GioiTinh] [nchar](5) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [varchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MaCV] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NuocSX]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuocSX](
	[MaNSX] [nvarchar](10) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDangNhap](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDangNhap] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNoteDangNhap]    Script Date: 11/1/2019 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNoteDangNhap](
	[NoteTaiKhoan] [nvarchar](50) NULL,
	[NoteMatKhau] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Chatlieu] ([MaCL], [TenCL]) VALUES (N'CL01', N'Nho')
INSERT [dbo].[Chatlieu] ([MaCL], [TenCL]) VALUES (N'CL02', N'Táo')
INSERT [dbo].[Chatlieu] ([MaCL], [TenCL]) VALUES (N'CL03', N'Men')
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB01', N'HH01', 1, NULL, 850000)
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB02', N'HH01', 2, NULL, 1700000)
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB03', N'HH02', 2, NULL, 3200000)
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB04', N'HH03', 1, NULL, 7000000)
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB05', N'HH03', 1, NULL, 7000000)
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB06', N'HH03', 2, NULL, 1000000)
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB08', N'HH03', 10, NULL, 10000000)
INSERT [dbo].[ChiTietHDB] ([HDB], [MaHH], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HDB09', N'HH05', 1, NULL, 2414124)
INSERT [dbo].[ChiTietHDN] ([HDN], [MaHH], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN01', N'HH01', 10, 10000000, NULL, 100000000)
INSERT [dbo].[ChiTietHDN] ([HDN], [MaHH], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN02', N'HH04', 15, 2000000, NULL, 30000000)
INSERT [dbo].[ChiTietHDN] ([HDN], [MaHH], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN03', N'HH05', 10, 3000000, NULL, 30000000)
INSERT [dbo].[ChiTietHDN] ([HDN], [MaHH], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN04', N'HH05', 15, 5000000, NULL, 75000000)
INSERT [dbo].[ChiTietHDN] ([HDN], [MaHH], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN05', N'HH06', 5, 2000000, NULL, 10000000)
INSERT [dbo].[ChiTietHDN] ([HDN], [MaHH], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN06', N'HH04', 5, 5000000, NULL, 25000000)
INSERT [dbo].[ChiTietHDN] ([HDN], [MaHH], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN07', N'HH05', 3, 3000000, NULL, 9000000)
INSERT [dbo].[Congdung] ([MaCD], [TenCD]) VALUES (N'CD01', N'Trang trí')
INSERT [dbo].[Congdung] ([MaCD], [TenCD]) VALUES (N'CD02', N'Tặng quà')
INSERT [dbo].[Congdung] ([MaCD], [TenCD]) VALUES (N'CD03', N'Uống')
INSERT [dbo].[CongViec] ([MaCV], [TenCV], [MucLuong]) VALUES (N'CV01', N'Nhân viên sale', 8000000)
INSERT [dbo].[CongViec] ([MaCV], [TenCV], [MucLuong]) VALUES (N'CV02', N'Nhân viên lễ tân', 8000000)
INSERT [dbo].[CongViec] ([MaCV], [TenCV], [MucLuong]) VALUES (N'CV03', N'Quản lý', 14000000)
INSERT [dbo].[CongViec] ([MaCV], [TenCV], [MucLuong]) VALUES (N'CV04', N'Chủ tiệm', 20000000)
INSERT [dbo].[CongViec] ([MaCV], [TenCV], [MucLuong]) VALUES (N'CV05', N'Nhân viên bán hàng', 8000000)
INSERT [dbo].[DMHangHoa] ([MaHH], [TenHH], [MaDL], [MaCD], [MaCL], [Maloai], [MaHD], [MaDo], [MaMS], [MaNSX], [Soluong], [GiaNhap], [GiaBan], [Anh], [GhiChu]) VALUES (N'HH01', N'RƯỢU VANG APALTAGUA SIGNATURE CABERNET SAUVIGNON', N'DL01', N'CD02', N'CL01', N'L02', N'HD01', N'MD02', N'MS01', N'NSX01', 20, 500000, 850000, NULL, NULL)
INSERT [dbo].[DMHangHoa] ([MaHH], [TenHH], [MaDL], [MaCD], [MaCL], [Maloai], [MaHD], [MaDo], [MaMS], [MaNSX], [Soluong], [GiaNhap], [GiaBan], [Anh], [GhiChu]) VALUES (N'HH02', N'RƯỢU VANG 1865 LIMITED', N'DL01', N'CD01', N'CL01', N'L01', N'HD02', N'MD01', N'MS02', N'NSX01', 15, 1000000, 1600000, NULL, NULL)
INSERT [dbo].[DMHangHoa] ([MaHH], [TenHH], [MaDL], [MaCD], [MaCL], [Maloai], [MaHD], [MaDo], [MaMS], [MaNSX], [Soluong], [GiaNhap], [GiaBan], [Anh], [GhiChu]) VALUES (N'HH03', N'RƯỢU VANG EPSILON HERMITAGE', N'DL02', N'CD02', N'CL01', N'L02', N'HD01', N'MD02', N'MS01', N'NSX02', 20, 5000000, 7000000, NULL, NULL)
INSERT [dbo].[DMHangHoa] ([MaHH], [TenHH], [MaDL], [MaCD], [MaCL], [Maloai], [MaHD], [MaDo], [MaMS], [MaNSX], [Soluong], [GiaNhap], [GiaBan], [Anh], [GhiChu]) VALUES (N'HH04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DMHangHoa] ([MaHH], [TenHH], [MaDL], [MaCD], [MaCL], [Maloai], [MaHD], [MaDo], [MaMS], [MaNSX], [Soluong], [GiaNhap], [GiaBan], [Anh], [GhiChu]) VALUES (N'HH05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DMHangHoa] ([MaHH], [TenHH], [MaDL], [MaCD], [MaCL], [Maloai], [MaHD], [MaDo], [MaMS], [MaNSX], [Soluong], [GiaNhap], [GiaBan], [Anh], [GhiChu]) VALUES (N'HH06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DoRuou] ([MaDo], [TenDo]) VALUES (N'MD01', N'Nhẹ')
INSERT [dbo].[DoRuou] ([MaDo], [TenDo]) VALUES (N'MD02', N'Mạnh')
INSERT [dbo].[DungLuong] ([MaDL], [TenDL]) VALUES (N'DL01', N'1 lít')
INSERT [dbo].[DungLuong] ([MaDL], [TenDL]) VALUES (N'DL02', N'0.5 lít')
INSERT [dbo].[DungLuong] ([MaDL], [TenDL]) VALUES (N'DL03', N'0.75 lít')
INSERT [dbo].[HDBan] ([HDB], [MaNV], [NgayBan], [MaKH], [TongTien]) VALUES (N'HDB01', N'NV02', CAST(N'2019-06-20' AS Date), N'KH01', 850000)
INSERT [dbo].[HDBan] ([HDB], [MaNV], [NgayBan], [MaKH], [TongTien]) VALUES (N'HDB02', N'NV04', CAST(N'2019-07-08' AS Date), N'KH02', 1700000)
INSERT [dbo].[HDBan] ([HDB], [MaNV], [NgayBan], [MaKH], [TongTien]) VALUES (N'HDB03', N'NV07', CAST(N'2019-08-20' AS Date), N'KH03', 3200000)
INSERT [dbo].[HDBan] ([HDB], [MaNV], [NgayBan], [MaKH], [TongTien]) VALUES (N'HDB04', N'NV05', CAST(N'2019-08-22' AS Date), N'KH04', 7000000)
INSERT [dbo].[HDBan] ([HDB], [MaNV], [NgayBan], [MaKH], [TongTien]) VALUES (N'HDB05', N'NV02', CAST(N'2019-09-02' AS Date), N'KH05', 7000000)
INSERT [dbo].[HDBan] ([HDB], [MaNV], [NgayBan], [MaKH], [TongTien]) VALUES (N'HDB06', N'NV04', CAST(N'2019-05-06' AS Date), N'KH03', 1000000)
INSERT [dbo].[HDNhap] ([HDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN01', N'NV01', CAST(N'2019-10-10' AS Date), N'NCC01', 100000000)
INSERT [dbo].[HDNhap] ([HDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN02', N'NV01', CAST(N'2019-08-20' AS Date), N'NCC01', 30000000)
INSERT [dbo].[HDNhap] ([HDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN03', N'NV09', CAST(N'2019-05-06' AS Date), N'NCC02', 30000000)
INSERT [dbo].[HDNhap] ([HDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN04', N'NV09', CAST(N'2019-04-03' AS Date), N'NCC02', 75000000)
INSERT [dbo].[HDNhap] ([HDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN05', N'NV01', CAST(N'2019-02-03' AS Date), N'NCC02', 10000000)
INSERT [dbo].[HDNhap] ([HDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN06', N'NV09', CAST(N'2019-12-12' AS Date), N'NCC03', 25000000)
INSERT [dbo].[HDNhap] ([HDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN07', N'NV01', CAST(N'2019-10-11' AS Date), N'NCC03', 9000000)
INSERT [dbo].[Hinhdang] ([MaHD], [TenHD]) VALUES (N'HD01', N'Trụ')
INSERT [dbo].[Hinhdang] ([MaHD], [TenHD]) VALUES (N'HD02', N'Vuông')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [SDT]) VALUES (N'KH01', N'Nguyễn Công Trứ', N'Hà Nội', N'0362312213')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [SDT]) VALUES (N'KH02', N'Phan Thành Nam', N'Hà Nội', N'0332131232')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [SDT]) VALUES (N'KH03', N'Vũ Tất Bình', N'Hải Phòng', N'0967567342')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [SDT]) VALUES (N'KH04', N'Đăng Tín', N'Hài Nội', N'0945231323')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [SDT]) VALUES (N'KH05', N'Đỗ Hải Yên', N'Nam Định', N'0346457858')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [SDT]) VALUES (N'KH06', N'Bình', N'99 NCT', N'967865765')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'L01', N'Rượu CHIVAS')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'L02', N'Rượu Vang')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'L03', N'Rượu HENNESSY')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'L04', N'Rượu HIBIKI')
INSERT [dbo].[Mausac] ([MaMS], [TenMS]) VALUES (N'MS01', N'Đỏ')
INSERT [dbo].[Mausac] ([MaMS], [TenMS]) VALUES (N'MS02', N'Vàng')
INSERT [dbo].[Mausac] ([MaMS], [TenMS]) VALUES (N'MS03', N'Nâu')
INSERT [dbo].[Mausac] ([MaMS], [TenMS]) VALUES (N'MS04', N'Tím')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC01', N'Rượu Đức Anh', N'Số 412-Cầu Giấy-Hài Nội', N'0986161039')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC02', N'Rượu Ngoại ', N'Số 61-Huỳnh Thúc Kháng- Hài Nội', N'0935235235')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC03', N'Rượu Việt', N'Số 99-Nguyễn Chí Thanh', N'0923523523')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV01', N'Trần Huy ', N'Nam  ', CAST(N'1990-09-11' AS Date), N'0359276161', N'Hà Nội', N'CV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV02', N'Thanh Tâm ', N'Nữ   ', CAST(N'1995-07-05' AS Date), N'0358324532', N'Bắc Ninh', N'CV02')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV03', N'Nguyễn Minh ', N'Nam  ', CAST(N'1993-09-24' AS Date), N'0927372344', N'Hải Dương', N'CV01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV04', N'Phan Cao ', N'Nam  ', CAST(N'1994-10-24' AS Date), N'0346827352', N'Ninh Bình', N'CV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV05', N'Bùi Ngọc', N'Nữ   ', CAST(N'1997-03-29' AS Date), N'0923523523', N'Thái Bình', N'CV02')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV06', N'Nguyễn Hoàng ', N'Nam  ', CAST(N'1996-08-06' AS Date), N'0354344363', N'Nam Định', N'CV01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV07', N'Nguyễn Hải ', N'Nam  ', CAST(N'1997-04-07' AS Date), N'0365645645', N'Hài Nội', N'CV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV08', N'Phan thảo', N'Nữ   ', CAST(N'1998-09-25' AS Date), N'0346464646', N'Hà Nội', N'CV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV09', N'Đỗ Thảo Phương', N'Nữ   ', CAST(N'1998-07-11' AS Date), N'0354235325', N'Hài Nội', N'CV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV10', N'Đỗ Huy Long', N'Nam  ', CAST(N'1990-11-24' AS Date), N'0935325235', N'Nam Định', N'CV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCV]) VALUES (N'NV11', N'Nam', N'Nam  ', CAST(N'2019-10-24' AS Date), N'0344519050', N'Quảng bình', N'CV02')
INSERT [dbo].[NuocSX] ([MaNSX], [TenNSX]) VALUES (N'NSX01', N'CHILE')
INSERT [dbo].[NuocSX] ([MaNSX], [TenNSX]) VALUES (N'NSX02', N'PHÁP')
INSERT [dbo].[NuocSX] ([MaNSX], [TenNSX]) VALUES (N'NSX03', N'Ý')
INSERT [dbo].[NuocSX] ([MaNSX], [TenNSX]) VALUES (N'NSX04', N'MỸ')
INSERT [dbo].[NuocSX] ([MaNSX], [TenNSX]) VALUES (N'NSX05', N'ÚC')
INSERT [dbo].[tblDangNhap] ([TaiKhoan], [MatKhau]) VALUES (N'a', N'a')
INSERT [dbo].[tblDangNhap] ([TaiKhoan], [MatKhau]) VALUES (N'dangtin', N'tin')
INSERT [dbo].[tblDangNhap] ([TaiKhoan], [MatKhau]) VALUES (N'quanliruou', N'1234')
INSERT [dbo].[tblDangNhap] ([TaiKhoan], [MatKhau]) VALUES (N'tin', N'tin')
INSERT [dbo].[tblNoteDangNhap] ([NoteTaiKhoan], [NoteMatKhau]) VALUES (N'a', N'a')
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDB_DMHangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[DMHangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [FK_ChiTietHDB_DMHangHoa]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDN_DMHangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[DMHangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [FK_ChiTietHDN_DMHangHoa]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_Chatlieu] FOREIGN KEY([MaCL])
REFERENCES [dbo].[Chatlieu] ([MaCL])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_Chatlieu]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_Congdung] FOREIGN KEY([MaCD])
REFERENCES [dbo].[Congdung] ([MaCD])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_Congdung]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_DoRuou] FOREIGN KEY([MaDo])
REFERENCES [dbo].[DoRuou] ([MaDo])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_DoRuou]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_DungLuong] FOREIGN KEY([MaDL])
REFERENCES [dbo].[DungLuong] ([MaDL])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_DungLuong]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_Hinhdang] FOREIGN KEY([MaHD])
REFERENCES [dbo].[Hinhdang] ([MaHD])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_Hinhdang]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_Loai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[Loai] ([Maloai])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_Loai]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_Mausac] FOREIGN KEY([MaMS])
REFERENCES [dbo].[Mausac] ([MaMS])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_Mausac]
GO
ALTER TABLE [dbo].[DMHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_DMHangHoa_NuocSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NuocSX] ([MaNSX])
GO
ALTER TABLE [dbo].[DMHangHoa] CHECK CONSTRAINT [FK_DMHangHoa_NuocSX]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HDBan_ChiTietHDB] FOREIGN KEY([HDB])
REFERENCES [dbo].[ChiTietHDB] ([HDB])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HDBan_ChiTietHDB]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HDBan_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HDBan_KhachHang]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HDBan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HDBan_NhanVien]
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD  CONSTRAINT [FK_HDNhap_ChiTietHDN] FOREIGN KEY([HDN])
REFERENCES [dbo].[ChiTietHDN] ([HDN])
GO
ALTER TABLE [dbo].[HDNhap] CHECK CONSTRAINT [FK_HDNhap_ChiTietHDN]
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD  CONSTRAINT [FK_HDNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HDNhap] CHECK CONSTRAINT [FK_HDNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD  CONSTRAINT [FK_HDNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDNhap] CHECK CONSTRAINT [FK_HDNhap_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CongViec] FOREIGN KEY([MaCV])
REFERENCES [dbo].[CongViec] ([MaCV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CongViec]
GO
USE [master]
GO
ALTER DATABASE [QLRuou] SET  READ_WRITE 
GO
