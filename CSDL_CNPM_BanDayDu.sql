USE [master]
GO
/****** Object:  Database [QLCH_BanDienThoai]    Script Date: 31-05-2019 11:57:54 AM ******/
CREATE DATABASE [QLCH_BanDienThoai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCH_BanDienThoai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HAUMTA\MSSQL\DATA\QLCH_BanDienThoai.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLCH_BanDienThoai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HAUMTA\MSSQL\DATA\QLCH_BanDienThoai_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLCH_BanDienThoai] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCH_BanDienThoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCH_BanDienThoai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET  MULTI_USER 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCH_BanDienThoai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLCH_BanDienThoai] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLCH_BanDienThoai]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhap]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhap](
	[MaHDN] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHoaDonXuat]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonXuat](
	[MaHDX] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaHDX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHDN] [char](10) NOT NULL,
	[MaNCC] [char](10) NULL,
	[MaNV] [char](10) NULL,
	[NgayNhap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonXuat]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonXuat](
	[MaHDX] [char](10) NOT NULL,
	[MaKH] [char](10) NULL,
	[MaNV] [char](10) NULL,
	[NgayBan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](15) NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [char](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [char](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi_NCC] [nvarchar](100) NULL,
	[SDT_NCC] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[TienLuong] [float] NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [char](10) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[NuocSX] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [char](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaNSX] [char](10) NULL,
	[GiaBan] [float] NULL,
	[ThongSoKT] [nvarchar](100) NULL,
	[TGBH] [nvarchar](50) NULL,
	[MaNCC] [char](10) NULL,
	[MaLoai] [char](10) NULL,
	[SoLuongTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 31-05-2019 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoan] [char](20) NOT NULL,
	[MaNV] [char](10) NULL,
	[MatKhau] [varchar](20) NULL,
	[PhanQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHoaDonNhap] ([MaHDN], [MaSP], [SoLuong], [GiaNhap]) VALUES (N'HDN01     ', N'SP01      ', 50, 14000000)
INSERT [dbo].[ChiTietHoaDonNhap] ([MaHDN], [MaSP], [SoLuong], [GiaNhap]) VALUES (N'HDN02     ', N'SP03      ', 80, 17000000)
INSERT [dbo].[ChiTietHoaDonNhap] ([MaHDN], [MaSP], [SoLuong], [GiaNhap]) VALUES (N'HDN03     ', N'SP05      ', 100, 11000000)
INSERT [dbo].[ChiTietHoaDonNhap] ([MaHDN], [MaSP], [SoLuong], [GiaNhap]) VALUES (N'HDN04     ', N'SP10      ', 60, 15000000)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaHDX], [MaSP], [SoLuong], [GiaBan]) VALUES (N'HDX01     ', N'SP01      ', 2, 15000000)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaHDX], [MaSP], [SoLuong], [GiaBan]) VALUES (N'HDX02     ', N'SP05      ', 1, 14000000)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaHDX], [MaSP], [SoLuong], [GiaBan]) VALUES (N'HDX03     ', N'SP07      ', 3, 5000000)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaHDX], [MaSP], [SoLuong], [GiaBan]) VALUES (N'HDX04     ', N'SP08      ', 1, 7000000)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaHDX], [MaSP], [SoLuong], [GiaBan]) VALUES (N'HDX05     ', N'SP10      ', 2, 17000000)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaHDX], [MaSP], [SoLuong], [GiaBan]) VALUES (N'HDX06     ', N'SP15      ', 2, 4000000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'HDN01     ', N'NCC01     ', N'NV05      ', CAST(N'2019-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'HDN02     ', N'NCC02     ', N'NV05      ', CAST(N'2019-04-02 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'HDN03     ', N'NCC04     ', N'NV06      ', CAST(N'2019-04-20 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'HDN04     ', N'NCC03     ', N'NV06      ', CAST(N'2019-05-01 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX01     ', N'KH01      ', N'NV02      ', CAST(N'2019-05-20 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX02     ', N'KH02      ', N'NV02      ', CAST(N'2019-05-20 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX03     ', N'KH03      ', N'NV04      ', CAST(N'2019-05-20 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX04     ', N'KH04      ', N'NV04      ', CAST(N'2019-05-21 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX05     ', N'KH05      ', N'NV04      ', CAST(N'2019-05-21 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX06     ', N'KH06      ', N'NV04      ', CAST(N'2019-05-21 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX07     ', N'KH07      ', N'NV02      ', CAST(N'2019-05-21 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX08     ', N'KH08      ', N'NV07      ', CAST(N'2019-05-22 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX09     ', N'KH09      ', N'NV07      ', CAST(N'2019-05-22 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonXuat] ([MaHDX], [MaKH], [MaNV], [NgayBan]) VALUES (N'HDX10     ', N'KH10      ', N'NV07      ', CAST(N'2019-05-22 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH01      ', N'Trần Thị Hồng', N'Nam Định', N'03348260165', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH02      ', N'Hoàng Thị Hạnh', N'Thanh Hóa', N'0356 477 777', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH03      ', N'Nguyễn Quang Linh', N'Hà Nội', N'0384 827 824', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH04      ', N'Vũ Quang Linh', N'Hà Nội', N'096 381 381', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH05      ', N'Đỗ Hồng Nhị', N'Hà Nội', N'0382 183 313', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH06      ', N'Nguyễn Văn Duy', N'Nam Định', N'0934 341 454', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH07      ', N'Nguyễn Thị Mai Dung', N'Vĩnh Phúc', N'0343 459 562', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH08      ', N'Trần Thu Trang', N'Hải Phòng', N'0962 935 666', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH09      ', N'Nguyễn Văn Thịnh', N'Hải Dương', N'0673 934 111', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GhiChu]) VALUES (N'KH10      ', N'Đào Quang Trọng', N'Hà Nội', N'0393 696 969', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'LSP01     ', N'IPHONE')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'LSP02     ', N'SAMSUNG')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'LSP03     ', N'HUAWEI')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'LSP04     ', N'OPPO')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'LSP05     ', N'BPHONE')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC01     ', N'Thế giới di động', N'236 Hoàng Quốc Việt', N'0911 686 868')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC02     ', N'Anh Phát', N'307 Phạm Văn Đồng', N'0234 567 890')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC03     ', N'Hoàng Long', N'87 Nguyễ Chí Thanh', N'0898 989 898')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi_NCC], [SDT_NCC]) VALUES (N'NCC04     ', N'Phong Vũ', N'257 Phạm Ngọc Thạch', N'0989 989 999')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV01      ', N'Đinh Đức Thịnh', N'Nhân viên kỹ thuật', N'Nam', CAST(N'1991-05-09' AS Date), N'Thái Bình', N'0984 737 382', N'thinhtb@gmail.com', 15000000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV02      ', N'Triệu Thị Mỹ Hạnh', N'Nhân viên bán hàng', N'Nữ', CAST(N'1992-01-27' AS Date), N'Nam Định', N'0934 879 345', N'hanh123@gmail.com', 10000000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV03      ', N'Chu Hải Đăng', N'Nhân viên kỹ thuật', N'Nam', CAST(N'1990-02-03' AS Date), N'Hà Nội', N'0332 567 543', N'hau90@gmail.com', 15000000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV04      ', N'Hoàng Thị Chung', N'Nhân viên bán hàng', N'Nữ', CAST(N'1995-09-08' AS Date), N'Hà Nội', N'0932 123 987', N'chunghoang@gmail.com', 10000000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV05      ', N'Dương Viết Trọng', N'Nhân viên kho', N'Nam', CAST(N'1994-01-21' AS Date), N'Hà Nam', N'0912 875 739', N'duongtrong@gmail.com', 11000000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV06      ', N'Trần Hồng Dương', N'Nhân viên kho', N'Nam', CAST(N'1997-12-12' AS Date), N'Vĩnh Phúc', N'0983 999 999', N'duongtran97@gmail.com', 11000000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV07      ', N'Vũ Văn Hữu', N'Nhân viên bán hàng', N'Nam', CAST(N'1996-11-20' AS Date), N'Hà Nội', N'0335 982 199', N'huu96@gmail.com', 10000000, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [Email], [TienLuong], [GhiChu]) VALUES (N'NV08      ', N'Vũ Hải Hậu', N'Quản lý cửa hàng', N'Nam', CAST(N'1973-09-25' AS Date), N'Hà Nội', N'0985983590', N'trachanhsp2@gmail.com', 50000000, NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [NuocSX]) VALUES (N'NSX01     ', N'Apple', N'Mỹ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [NuocSX]) VALUES (N'NSX02     ', N'Oppo', N'Trung Quốc')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [NuocSX]) VALUES (N'NSX03     ', N'Sam Sung', N'Hàn Quốc')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [NuocSX]) VALUES (N'NSX04     ', N'Bkav', N'Việt Nam')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [NuocSX]) VALUES (N'NSX05     ', N'Huawei', N'Trung Quốc')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP01      ', N'IPhone 7 Plus', N'NSX01     ', 15000000, N'Bộ nhớ 64G, Camera trước 12MP ,Camera sau 27MP, Màn hình 6,5 inch', N'12 tháng', N'NCC01     ', N'LSP01     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP02      ', N'IPhone X', N'NSX01     ', 25000000, N'Bộ nhớ 128G', N'12 tháng', N'NCC02     ', N'LSP01     ', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP03      ', N'SamSung note 10', N'NSX03     ', 19000000, N'Bộ nhớ 64G', N'12 tháng', N'NCC03     ', N'LSP02     ', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP04      ', N'SamSung S9', N'NSX03     ', 14000000, N'', N'12 tháng', N'NCC04     ', N'LSP02     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP05      ', N'Huawei P30 pro', N'NSX05     ', 14000000, N'', N'12 tháng', N'NCC03     ', N'LSP03     ', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP06      ', N'Huawei P30 Lite', N'NSX05     ', 6000000, N'', N'12 tháng', N'NCC01     ', N'LSP03     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP07      ', N'BPhone 1', N'NSX04     ', 5000000, N'', N'12 tháng', N'NCC01     ', N'LSP05     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP08      ', N'Bphone 3', N'NSX04     ', 7000000, N'', N'12 tháng', N'NCC02     ', N'LSP05     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP09      ', N'IPhone 6s', N'NSX01     ', 10000000, N'Bộ nhớ 64G', N'12 tháng', N'NCC03     ', N'LSP01     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP10      ', N'Iphone 8', N'NSX01     ', 17000000, N'', N'12 tháng', N'NCC03     ', N'LSP01     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP11      ', N'Iphone 8', N'NSX01     ', 17000000, N'', N'12 tháng', N'NCC03     ', N'LSP01     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP12      ', N'SamSung J7 pro', N'NSX03     ', 9000000, N'', N'12 tháng', N'NCC04     ', N'LSP02     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP13      ', N'SamSung J2 Prime', N'NSX03     ', 4000000, N'', N'12 tháng', N'NCC04     ', N'LSP02     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP14      ', N'SamSung S7 ', N'NSX03     ', 8000000, N'', N'12 tháng', N'NCC02     ', N'LSP02     ', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaNSX], [GiaBan], [ThongSoKT], [TGBH], [MaNCC], [MaLoai], [SoLuongTon]) VALUES (N'SP15      ', N'Huawei Y9', N'NSX05     ', 4000000, N'', N'12 tháng', N'NCC03     ', N'LSP03     ', 5)
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MaNV], [MatKhau], [PhanQuyen]) VALUES (N'chung               ', N'NV04      ', N'123456', N'Admin')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MaNV], [MatKhau], [PhanQuyen]) VALUES (N'duong               ', N'NV06      ', N'123456', N'Admin')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MaNV], [MatKhau], [PhanQuyen]) VALUES (N'hanh                ', N'NV02      ', N'123456', N'Admin')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MaNV], [MatKhau], [PhanQuyen]) VALUES (N'hau                 ', N'NV08      ', N'123456', N'Admin quản lý')
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaHDN])
REFERENCES [dbo].[HoaDonNhap] ([MaHDN])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat]  WITH CHECK ADD FOREIGN KEY([MaHDX])
REFERENCES [dbo].[HoaDonXuat] ([MaHDX])
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]='Nam'))
GO
USE [master]
GO
ALTER DATABASE [QLCH_BanDienThoai] SET  READ_WRITE 
GO
