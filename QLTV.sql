USE [QLTV]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK_Sach_TheLoai]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK_Sach_NgonNgu]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK_Sach_DauSach]
GO
ALTER TABLE [dbo].[PhieuTraSach] DROP CONSTRAINT [FK_PhieuTraSach_PhieuMuonSach]
GO
ALTER TABLE [dbo].[PhieuMuonSach] DROP CONSTRAINT [FK_PhieuMuonSach_ThanhVien]
GO
ALTER TABLE [dbo].[PhieuMuonSach] DROP CONSTRAINT [FK_PhieuMuonSach_Sach]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TheLoai]') AND type in (N'U'))
DROP TABLE [dbo].[TheLoai]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThanhVien]') AND type in (N'U'))
DROP TABLE [dbo].[ThanhVien]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TacGia]') AND type in (N'U'))
DROP TABLE [dbo].[TacGia]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sach]') AND type in (N'U'))
DROP TABLE [dbo].[Sach]
GO
/****** Object:  Table [dbo].[PhieuTraSach]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuTraSach]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuTraSach]
GO
/****** Object:  Table [dbo].[PhieuMuonSach]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuMuonSach]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuMuonSach]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhaXuatBan]') AND type in (N'U'))
DROP TABLE [dbo].[NhaXuatBan]
GO
/****** Object:  Table [dbo].[NgonNgu]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NgonNgu]') AND type in (N'U'))
DROP TABLE [dbo].[NgonNgu]
GO
/****** Object:  Table [dbo].[DauSach]    Script Date: 12/10/2021 6:20:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DauSach]') AND type in (N'U'))
DROP TABLE [dbo].[DauSach]
GO
/****** Object:  Table [dbo].[DauSach]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauSach](
	[mads] [nvarchar](10) NOT NULL,
	[tends] [nvarchar](50) NULL,
 CONSTRAINT [PK_DauSach] PRIMARY KEY CLUSTERED 
(
	[mads] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgonNgu]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgonNgu](
	[mann] [nvarchar](10) NOT NULL,
	[tennn] [nvarchar](50) NULL,
 CONSTRAINT [PK_NgonNgu] PRIMARY KEY CLUSTERED 
(
	[mann] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[tenxb] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [int] NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[tenxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuonSach]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuonSach](
	[maphieumuon] [nvarchar](10) NOT NULL,
	[mathanhvien] [nvarchar](10) NULL,
	[masach] [nvarchar](10) NULL,
	[ngaymuon] [datetime] NULL,
	[ngayhentra] [datetime] NULL,
 CONSTRAINT [PK_PhieuMuonSach] PRIMARY KEY CLUSTERED 
(
	[maphieumuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuTraSach]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuTraSach](
	[maphieutra] [nvarchar](10) NOT NULL,
	[maphieumuon] [nvarchar](10) NULL,
	[ngaytra] [datetime] NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[tienphat] [int] NULL,
 CONSTRAINT [PK_PhieuTraSach] PRIMARY KEY CLUSTERED 
(
	[maphieutra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[masach] [nvarchar](10) NOT NULL,
	[tensach] [nvarchar](50) NULL,
	[dausach] [nvarchar](10) NULL,
	[loaisach] [nvarchar](10) NULL,
	[tacgia] [nvarchar](10) NULL,
	[ngonngu] [nvarchar](10) NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[nhaxuatban] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[matg] [nvarchar](10) NOT NULL,
	[tentg] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[matg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[matv] [nvarchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[gioitinh] [bit] NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[smnd] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[matv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/10/2021 6:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[maloai] [nvarchar](10) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DauSach] ([mads], [tends]) VALUES (N'CN', N'Conan')
INSERT [dbo].[DauSach] ([mads], [tends]) VALUES (N'DM', N'Doremon')
INSERT [dbo].[DauSach] ([mads], [tends]) VALUES (N'HP', N'Harry Potter')
INSERT [dbo].[DauSach] ([mads], [tends]) VALUES (N'SH', N'Sherlock Home')
INSERT [dbo].[DauSach] ([mads], [tends]) VALUES (N'Shin', N'Cậu bé bút chì')
GO
INSERT [dbo].[NgonNgu] ([mann], [tennn]) VALUES (N'Eg', N'Tiếng Anh')
INSERT [dbo].[NgonNgu] ([mann], [tennn]) VALUES (N'Vi', N'Tiếng Việt')
GO
INSERT [dbo].[NhaXuatBan] ([tenxb], [diachi], [sdt]) VALUES (N'Kim Đồng', N'56 Hồng Bàng', 1234569870)
INSERT [dbo].[NhaXuatBan] ([tenxb], [diachi], [sdt]) VALUES (N'Lao Động', N'33 Nguyễn Kim', 2135465331)
INSERT [dbo].[NhaXuatBan] ([tenxb], [diachi], [sdt]) VALUES (N'Phụ Nữ', N'78 Nguyễn Thái Học', 416874166)
INSERT [dbo].[NhaXuatBan] ([tenxb], [diachi], [sdt]) VALUES (N'Thanh Niên', N'6 Nguyễn Bỉnh Kiêm', 111111111)
GO
INSERT [dbo].[PhieuMuonSach] ([maphieumuon], [mathanhvien], [masach], [ngaymuon], [ngayhentra]) VALUES (N'PM01', N'TV01', N'HP2', CAST(N'2021-12-12T00:00:00.000' AS DateTime), CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuMuonSach] ([maphieumuon], [mathanhvien], [masach], [ngaymuon], [ngayhentra]) VALUES (N'PM02', N'TV02', N'CN01', CAST(N'2021-11-29T00:00:00.000' AS DateTime), CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PhieuTraSach] ([maphieutra], [maphieumuon], [ngaytra], [tinhtrang], [tienphat]) VALUES (N'PT01', N'PM02', CAST(N'2021-12-08T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'CN01', N'Thám tử lừng danh Conan tâp 1', N'CN', N'L03', N'AG', N'Vi', NULL, N'Kim Đồng')
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'CN02', N'Thám tử lừng danh Conan tập 2', N'CN', N'L03', N'AG', N'Vi', N'', N'Kim Đồng')
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'HP01', N'Harry Potter và hòn đá phù thủy', N'HP', N'L02', N'JK', N'Vi', NULL, N'Kim Đồng')
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'HP02', N'Harry Potter và phòng chứa bí mật', N'HP', N'L02', N'JK', N'Vi', NULL, N'Kim Đồng')
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'HP03', N'Harry Potter và chiếc cốc lửa', N'HP', N'L02', N'JK', N'Vi', N'', N'Thanh Niên')
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'HP11', N'Harry Potter and The Sorcerer''Stone', N'HP', N'L02', N'JK', N'Eg', NULL, N'Lao Động')
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'HP2', N'Harry Potter và Chiếc cốc lửa', N'HP', N'L02', N'JK', N'Vi', N'', N'Thanh Niên')
INSERT [dbo].[Sach] ([masach], [tensach], [dausach], [loaisach], [tacgia], [ngonngu], [tinhtrang], [nhaxuatban]) VALUES (N'SH01', N'Sherlock Home', N'SH', N'L01', N'CD', N'Vi', NULL, N'Thanh Niên')
GO
INSERT [dbo].[TacGia] ([matg], [tentg]) VALUES (N'AG', N'Aoyama Gosho')
INSERT [dbo].[TacGia] ([matg], [tentg]) VALUES (N'CD', N'Conan Dolye')
INSERT [dbo].[TacGia] ([matg], [tentg]) VALUES (N'JK', N'J.K Rowling')
INSERT [dbo].[TacGia] ([matg], [tentg]) VALUES (N'NA', N'Nguyễn Ngọc Ánh')
GO
INSERT [dbo].[ThanhVien] ([matv], [hoten], [gioitinh], [diachi], [sdt], [smnd], [mail]) VALUES (N'TV01', N'Nguyễn Văn A', 1, N'6 Ngô Quyền', N'1234584321', N'5416460216', N'a@gmailcom')
INSERT [dbo].[ThanhVien] ([matv], [hoten], [gioitinh], [diachi], [sdt], [smnd], [mail]) VALUES (N'TV02', N'Trần Văn B', 0, N'23 Nguyễn Chí Thanh', N'4545321316', N'54634321654', N'b@gmail.com')
INSERT [dbo].[ThanhVien] ([matv], [hoten], [gioitinh], [diachi], [sdt], [smnd], [mail]) VALUES (N'TV04', N'Nguyễn Văn C', 1, N'98 Lê Thánh Tôn', N'1111111111', N'46798423123', N'd@gmail.com')
INSERT [dbo].[ThanhVien] ([matv], [hoten], [gioitinh], [diachi], [sdt], [smnd], [mail]) VALUES (N'TV05', N'Ngô Thị Em', 0, N'17 lê Thánh Tôn', N'541635489', N'4165964', N'e@gmail.com')
INSERT [dbo].[ThanhVien] ([matv], [hoten], [gioitinh], [diachi], [sdt], [smnd], [mail]) VALUES (N'TV06', N'Nguyễn Văn Duy', 1, N'82 Trần Xuân Soạn', N'5674656', N'15465414158', N'')
GO
INSERT [dbo].[TheLoai] ([maloai], [tenloai]) VALUES (N'L01', N'Trinh Thám')
INSERT [dbo].[TheLoai] ([maloai], [tenloai]) VALUES (N'L02', N'Tiểu Thuyết')
INSERT [dbo].[TheLoai] ([maloai], [tenloai]) VALUES (N'L03', N'Truyện Tranh')
INSERT [dbo].[TheLoai] ([maloai], [tenloai]) VALUES (N'L04', N'Lịch Sử')
GO
ALTER TABLE [dbo].[PhieuMuonSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonSach_Sach] FOREIGN KEY([masach])
REFERENCES [dbo].[Sach] ([masach])
GO
ALTER TABLE [dbo].[PhieuMuonSach] CHECK CONSTRAINT [FK_PhieuMuonSach_Sach]
GO
ALTER TABLE [dbo].[PhieuMuonSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonSach_ThanhVien] FOREIGN KEY([mathanhvien])
REFERENCES [dbo].[ThanhVien] ([matv])
GO
ALTER TABLE [dbo].[PhieuMuonSach] CHECK CONSTRAINT [FK_PhieuMuonSach_ThanhVien]
GO
ALTER TABLE [dbo].[PhieuTraSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraSach_PhieuMuonSach] FOREIGN KEY([maphieumuon])
REFERENCES [dbo].[PhieuMuonSach] ([maphieumuon])
GO
ALTER TABLE [dbo].[PhieuTraSach] CHECK CONSTRAINT [FK_PhieuTraSach_PhieuMuonSach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DauSach] FOREIGN KEY([dausach])
REFERENCES [dbo].[DauSach] ([mads])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_DauSach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NgonNgu] FOREIGN KEY([ngonngu])
REFERENCES [dbo].[NgonNgu] ([mann])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NgonNgu]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([nhaxuatban])
REFERENCES [dbo].[NhaXuatBan] ([tenxb])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([tacgia])
REFERENCES [dbo].[TacGia] ([matg])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([loaisach])
REFERENCES [dbo].[TheLoai] ([maloai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
