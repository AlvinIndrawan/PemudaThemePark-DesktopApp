USE [master]
GO
/****** Object:  Database [PemudaThemePark]    Script Date: 9/11/2020 2:47:49 PM ******/
CREATE DATABASE [PemudaThemePark]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PemudaThemePark', FILENAME = N'D:\Coding\Materi LKS IT software aplication\Latihan Bu Desti\1\Database\PemudaThemePark.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PemudaThemePark_log', FILENAME = N'D:\Coding\Materi LKS IT software aplication\Latihan Bu Desti\1\Database\PemudaThemePark_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PemudaThemePark] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PemudaThemePark].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PemudaThemePark] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PemudaThemePark] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PemudaThemePark] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PemudaThemePark] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PemudaThemePark] SET ARITHABORT OFF 
GO
ALTER DATABASE [PemudaThemePark] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PemudaThemePark] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PemudaThemePark] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PemudaThemePark] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PemudaThemePark] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PemudaThemePark] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PemudaThemePark] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PemudaThemePark] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PemudaThemePark] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PemudaThemePark] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PemudaThemePark] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PemudaThemePark] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PemudaThemePark] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PemudaThemePark] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PemudaThemePark] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PemudaThemePark] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PemudaThemePark] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PemudaThemePark] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PemudaThemePark] SET  MULTI_USER 
GO
ALTER DATABASE [PemudaThemePark] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PemudaThemePark] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PemudaThemePark] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PemudaThemePark] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PemudaThemePark] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PemudaThemePark]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceID] [varchar](10) NOT NULL,
	[PegawaiID] [varchar](10) NULL,
	[JadwalID] [varchar](10) NULL,
	[Tanggal] [date] NULL,
	[Kehadiran] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bulanan]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bulanan](
	[BulananID] [varchar](10) NULL,
	[PegawaiID] [varchar](10) NULL,
	[Bulan] [varchar](10) NULL,
	[JumlahAbsent] [int] NULL,
	[JumlahOvertime] [int] NULL,
	[JumlahLate] [int] NULL,
	[JumlahKerja] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gaji]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gaji](
	[GajiID] [varchar](10) NOT NULL,
	[TipeGaji] [varchar](25) NULL,
	[Rate] [int] NULL,
	[Deskripsi] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[GajiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Games]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Games](
	[GamesID] [varchar](10) NOT NULL,
	[NamaGame] [varchar](20) NULL,
	[TglBangun] [date] NULL,
	[Umur] [int] NULL,
	[Kapasitas] [int] NULL,
	[Durasi] [int] NULL,
	[Photo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[GamesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameShift]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameShift](
	[ShiftID] [varchar](10) NOT NULL,
	[GamesID] [varchar](10) NULL,
	[PegawaiID] [varchar](10) NULL,
	[JadwalID] [varchar](10) NULL,
	[Tanggal] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShiftID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jabatan]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jabatan](
	[JabatanID] [varchar](10) NOT NULL,
	[jabatan] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[JabatanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jadwal]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jadwal](
	[JadwalID] [varchar](10) NOT NULL,
	[Shiftt] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[JadwalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JoinMember]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JoinMember](
	[JoinID] [varchar](10) NOT NULL,
	[PlanID] [varchar](10) NULL,
	[MemberID] [varchar](10) NULL,
	[TglGabung] [date] NULL,
	[TglBerhenti] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[JoinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Member]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [varchar](10) NOT NULL,
	[NamaMember] [varchar](30) NULL,
	[Alamat] [text] NULL,
	[Umur] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MembershipPlan]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MembershipPlan](
	[PlanID] [varchar](10) NOT NULL,
	[Periode] [varchar](10) NULL,
	[Harga] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pegawai]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pegawai](
	[PegawaiID] [varchar](10) NOT NULL,
	[NamaPegawai] [varchar](30) NULL,
	[Username] [varchar](20) NULL,
	[Pasword] [varchar](20) NULL,
	[Alamat] [text] NULL,
	[No_HP] [char](12) NULL,
	[Gender] [varchar](10) NULL,
	[JabatanID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PegawaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pembayaran]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pembayaran](
	[PembayaranID] [varchar](10) NOT NULL,
	[TotalDailySalary] [int] NULL,
	[TotalOvertimeSalary] [int] NULL,
	[MonthlyBonus] [int] NULL,
	[TotalLateCharge] [int] NULL,
	[TotalSalary] [int] NULL,
	[BulananID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PembayaranID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RekapGaji]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RekapGaji](
	[RekapID] [int] NOT NULL,
	[Bulan] [varchar](10) NULL,
	[Gaji] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RekapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketID] [varchar](10) NOT NULL,
	[Hari] [varchar](10) NULL,
	[Kategori] [varchar](15) NULL,
	[Harga] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TicketPurchase]    Script Date: 9/11/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TicketPurchase](
	[PurchaseID] [varchar](10) NOT NULL,
	[MemberID] [varchar](10) NULL,
	[PegawaiID] [varchar](10) NULL,
	[Tanggal] [date] NULL,
	[QtyAdult] [int] NULL,
	[QtyChildren] [int] NULL,
	[PriceAdult] [int] NULL,
	[PriceChildren] [int] NULL,
	[Total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'1', N'10', N'1', CAST(N'2019-05-27' AS Date), N'On-Time')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'10', N'10', N'1', CAST(N'2019-06-02' AS Date), N'Late')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'2', N'2', N'2', CAST(N'2019-05-27' AS Date), N'Late')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'3', N'3', N'1', CAST(N'2019-05-28' AS Date), N'On-Time')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'4', N'5', N'2', CAST(N'2019-05-28' AS Date), N'On-Time')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'5', N'9', N'1', CAST(N'2019-05-29' AS Date), N'Absent')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'6', N'9', N'1', CAST(N'2019-05-29' AS Date), N'On-Time')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'7', N'9', N'1', CAST(N'2019-05-29' AS Date), N'Overtime')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'8', N'3', N'1', CAST(N'2019-05-28' AS Date), N'On-Time')
INSERT [dbo].[Attendance] ([AttendanceID], [PegawaiID], [JadwalID], [Tanggal], [Kehadiran]) VALUES (N'9', N'3', N'1', CAST(N'2019-05-28' AS Date), N'Overtime')
INSERT [dbo].[Bulanan] ([BulananID], [PegawaiID], [Bulan], [JumlahAbsent], [JumlahOvertime], [JumlahLate], [JumlahKerja]) VALUES (N'1', N'9', N'Mei', 1, 1, 0, 15)
INSERT [dbo].[Bulanan] ([BulananID], [PegawaiID], [Bulan], [JumlahAbsent], [JumlahOvertime], [JumlahLate], [JumlahKerja]) VALUES (N'2', N'5', N'Mei', 1, 0, 0, 10)
INSERT [dbo].[Bulanan] ([BulananID], [PegawaiID], [Bulan], [JumlahAbsent], [JumlahOvertime], [JumlahLate], [JumlahKerja]) VALUES (N'3', N'2', N'Mei', 0, 0, 1, 15)
INSERT [dbo].[Bulanan] ([BulananID], [PegawaiID], [Bulan], [JumlahAbsent], [JumlahOvertime], [JumlahLate], [JumlahKerja]) VALUES (N'4', N'10', N'Mei', 0, 0, 0, 5)
INSERT [dbo].[Bulanan] ([BulananID], [PegawaiID], [Bulan], [JumlahAbsent], [JumlahOvertime], [JumlahLate], [JumlahKerja]) VALUES (N'5', N'10', N'Juni', 0, 0, 1, 15)
INSERT [dbo].[Bulanan] ([BulananID], [PegawaiID], [Bulan], [JumlahAbsent], [JumlahOvertime], [JumlahLate], [JumlahKerja]) VALUES (N'6', N'5', N'Juni', 0, 0, 0, 25)
INSERT [dbo].[Gaji] ([GajiID], [TipeGaji], [Rate], [Deskripsi]) VALUES (N'1', N'Daily Salary', 200000, N'Per one day full working hours')
INSERT [dbo].[Gaji] ([GajiID], [TipeGaji], [Rate], [Deskripsi]) VALUES (N'2', N'Overtime Salary', 200000, N'Per overtime')
INSERT [dbo].[Gaji] ([GajiID], [TipeGaji], [Rate], [Deskripsi]) VALUES (N'3', N'Monthly Bonus', 300000, N'Per one mounth full of attendance (full working days/mounth)')
INSERT [dbo].[Gaji] ([GajiID], [TipeGaji], [Rate], [Deskripsi]) VALUES (N'4', N'Late charge', 5000, N'Per late clock-in attendance/day')
INSERT [dbo].[Games] ([GamesID], [NamaGame], [TglBangun], [Umur], [Kapasitas], [Durasi], [Photo]) VALUES (N'1', N'Halilintar', CAST(N'2012-03-23' AS Date), 7, 24, 7, N'E:\Foto Restoran SMK Nusantara\Nasi Putih.jpg')
INSERT [dbo].[Games] ([GamesID], [NamaGame], [TglBangun], [Umur], [Kapasitas], [Durasi], [Photo]) VALUES (N'2', N'Arung Jeram', CAST(N'2016-05-23' AS Date), 3, 8, 10, N'E:\Foto Restoran SMK Nusantara\Nasi goreng.jpg')
INSERT [dbo].[GameShift] ([ShiftID], [GamesID], [PegawaiID], [JadwalID], [Tanggal]) VALUES (N'1', N'1', N'10', N'1', CAST(N'2019-05-27' AS Date))
INSERT [dbo].[GameShift] ([ShiftID], [GamesID], [PegawaiID], [JadwalID], [Tanggal]) VALUES (N'2', N'2', N'2', N'2', CAST(N'2019-05-27' AS Date))
INSERT [dbo].[GameShift] ([ShiftID], [GamesID], [PegawaiID], [JadwalID], [Tanggal]) VALUES (N'3', N'1', N'3', N'1', CAST(N'2019-05-28' AS Date))
INSERT [dbo].[GameShift] ([ShiftID], [GamesID], [PegawaiID], [JadwalID], [Tanggal]) VALUES (N'4', N'2', N'5', N'2', CAST(N'2019-05-28' AS Date))
INSERT [dbo].[GameShift] ([ShiftID], [GamesID], [PegawaiID], [JadwalID], [Tanggal]) VALUES (N'5', N'1', N'9', N'1', CAST(N'2019-05-29' AS Date))
INSERT [dbo].[GameShift] ([ShiftID], [GamesID], [PegawaiID], [JadwalID], [Tanggal]) VALUES (N'6', N'1', N'10', N'1', CAST(N'2019-06-02' AS Date))
INSERT [dbo].[Jabatan] ([JabatanID], [jabatan]) VALUES (N'1', N'Admin')
INSERT [dbo].[Jabatan] ([JabatanID], [jabatan]) VALUES (N'2', N'Pegawai')
INSERT [dbo].[Jadwal] ([JadwalID], [Shiftt]) VALUES (N'1', N'Pagi')
INSERT [dbo].[Jadwal] ([JadwalID], [Shiftt]) VALUES (N'2', N'Malam')
INSERT [dbo].[JoinMember] ([JoinID], [PlanID], [MemberID], [TglGabung], [TglBerhenti]) VALUES (N'1', N'3', N'1', CAST(N'2019-05-02' AS Date), CAST(N'2020-05-02' AS Date))
INSERT [dbo].[JoinMember] ([JoinID], [PlanID], [MemberID], [TglGabung], [TglBerhenti]) VALUES (N'2', N'1', N'2', CAST(N'2019-05-03' AS Date), CAST(N'2019-08-03' AS Date))
INSERT [dbo].[JoinMember] ([JoinID], [PlanID], [MemberID], [TglGabung], [TglBerhenti]) VALUES (N'3', N'2', N'3', CAST(N'2019-05-20' AS Date), CAST(N'2019-11-20' AS Date))
INSERT [dbo].[JoinMember] ([JoinID], [PlanID], [MemberID], [TglGabung], [TglBerhenti]) VALUES (N'4', N'1', N'4', CAST(N'2019-05-20' AS Date), CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Member] ([MemberID], [NamaMember], [Alamat], [Umur]) VALUES (N'1', N'Alvin Indrawan', N'Jl.sisingamangaraja Parit 1 Kuday Sungailiat Bangka', 16)
INSERT [dbo].[Member] ([MemberID], [NamaMember], [Alamat], [Umur]) VALUES (N'2', N'Alvin Tok', N'Sigambir', 16)
INSERT [dbo].[Member] ([MemberID], [NamaMember], [Alamat], [Umur]) VALUES (N'3', N'hengky', N'sungailiat', 17)
INSERT [dbo].[Member] ([MemberID], [NamaMember], [Alamat], [Umur]) VALUES (N'4', N'Andi', N'sungailiat', 20)
INSERT [dbo].[MembershipPlan] ([PlanID], [Periode], [Harga]) VALUES (N'1', N'3', 200000)
INSERT [dbo].[MembershipPlan] ([PlanID], [Periode], [Harga]) VALUES (N'2', N'6', 300000)
INSERT [dbo].[MembershipPlan] ([PlanID], [Periode], [Harga]) VALUES (N'3', N'12', 500000)
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'1', N'Alvin', N'Alvinn', N'Alvin123', N'Sungailiat,Bangka', N'085287450121', N'Laki-laki', N'1')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'10', N'fandy', N'fandyy', N'fandy123', N'sungailiat, bangka', N'082332127753', N'Laki-laki', N'2')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'2', N'Udin', N'Udinn', N'Udin123', N'Sungailiat,Bangka', N'081271324595', N'Laki-laki', N'2')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'3', N'Fanny', N'Fannyy', N'Fanny123', N'Sungaliat, Bangka', N'081275459218', N'Perempuan', N'2')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'5', N'Alucard', N'Alucardd', N'Alucard123', N'Land of dawn', N'085253371297', N'Laki-laki', N'2')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'6', N'adsdasd', N'desty', N'1234', N'asdasd', N'asdasdasd   ', N'Perempuan', N'1')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'7', N'', N'desty', N'1234', N'sdfsdf', N'sdfsdfs     ', N'Perempuan', N'2')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'8', N'', N'ani', N'1234', N'', N'            ', N'', N'2')
INSERT [dbo].[Pegawai] ([PegawaiID], [NamaPegawai], [Username], [Pasword], [Alamat], [No_HP], [Gender], [JabatanID]) VALUES (N'9', N'dede', N'dedee', N'dede123', N'sungailiat, bangka', N'082376875523', N'Laki-laki', N'2')
INSERT [dbo].[Pembayaran] ([PembayaranID], [TotalDailySalary], [TotalOvertimeSalary], [MonthlyBonus], [TotalLateCharge], [TotalSalary], [BulananID]) VALUES (N'1', 2800000, 200000, 150000, 0, 3150000, N'1')
INSERT [dbo].[Pembayaran] ([PembayaranID], [TotalDailySalary], [TotalOvertimeSalary], [MonthlyBonus], [TotalLateCharge], [TotalSalary], [BulananID]) VALUES (N'2', 1800000, 0, 100000, 0, 1900000, N'2')
INSERT [dbo].[Pembayaran] ([PembayaranID], [TotalDailySalary], [TotalOvertimeSalary], [MonthlyBonus], [TotalLateCharge], [TotalSalary], [BulananID]) VALUES (N'3', 3000000, 0, 100000, 5000, 3095000, N'3')
INSERT [dbo].[Pembayaran] ([PembayaranID], [TotalDailySalary], [TotalOvertimeSalary], [MonthlyBonus], [TotalLateCharge], [TotalSalary], [BulananID]) VALUES (N'4', 1000000, 0, 50000, 0, 1050000, N'4')
INSERT [dbo].[Pembayaran] ([PembayaranID], [TotalDailySalary], [TotalOvertimeSalary], [MonthlyBonus], [TotalLateCharge], [TotalSalary], [BulananID]) VALUES (N'5', 3000000, 0, 150000, 5000, 3145000, N'5')
INSERT [dbo].[Pembayaran] ([PembayaranID], [TotalDailySalary], [TotalOvertimeSalary], [MonthlyBonus], [TotalLateCharge], [TotalSalary], [BulananID]) VALUES (N'6', 5000000, 0, 15000, 0, 5015000, N'6')
INSERT [dbo].[RekapGaji] ([RekapID], [Bulan], [Gaji]) VALUES (5, N'Mei', 9195000)
INSERT [dbo].[RekapGaji] ([RekapID], [Bulan], [Gaji]) VALUES (6, N'Juni', 8160000)
INSERT [dbo].[Ticket] ([TicketID], [Hari], [Kategori], [Harga]) VALUES (N'1', N'Weekday', N'Children', 40000)
INSERT [dbo].[Ticket] ([TicketID], [Hari], [Kategori], [Harga]) VALUES (N'2', N'Weekday', N'Adult', 50000)
INSERT [dbo].[Ticket] ([TicketID], [Hari], [Kategori], [Harga]) VALUES (N'3', N'Weekend', N'Children', 60000)
INSERT [dbo].[Ticket] ([TicketID], [Hari], [Kategori], [Harga]) VALUES (N'4', N'Weekend', N'Adult', 80000)
INSERT [dbo].[TicketPurchase] ([PurchaseID], [MemberID], [PegawaiID], [Tanggal], [QtyAdult], [QtyChildren], [PriceAdult], [PriceChildren], [Total]) VALUES (N'1', N'1', N'2', CAST(N'2019-05-25' AS Date), 0, 1, 0, 0, 0)
INSERT [dbo].[TicketPurchase] ([PurchaseID], [MemberID], [PegawaiID], [Tanggal], [QtyAdult], [QtyChildren], [PriceAdult], [PriceChildren], [Total]) VALUES (N'2', N'1', N'2', CAST(N'2019-05-25' AS Date), 1, 3, 80000, 120000, 200000)
INSERT [dbo].[TicketPurchase] ([PurchaseID], [MemberID], [PegawaiID], [Tanggal], [QtyAdult], [QtyChildren], [PriceAdult], [PriceChildren], [Total]) VALUES (N'3', N'2', N'2', CAST(N'2019-05-25' AS Date), 2, 2, 160000, 60000, 220000)
INSERT [dbo].[TicketPurchase] ([PurchaseID], [MemberID], [PegawaiID], [Tanggal], [QtyAdult], [QtyChildren], [PriceAdult], [PriceChildren], [Total]) VALUES (N'4', NULL, N'2', CAST(N'2019-05-25' AS Date), 1, 1, 80000, 60000, 140000)
INSERT [dbo].[TicketPurchase] ([PurchaseID], [MemberID], [PegawaiID], [Tanggal], [QtyAdult], [QtyChildren], [PriceAdult], [PriceChildren], [Total]) VALUES (N'5', N'3', N'2', CAST(N'2019-05-30' AS Date), 1, 0, 0, 0, 0)
INSERT [dbo].[TicketPurchase] ([PurchaseID], [MemberID], [PegawaiID], [Tanggal], [QtyAdult], [QtyChildren], [PriceAdult], [PriceChildren], [Total]) VALUES (N'6', N'1', N'2', CAST(N'2019-06-02' AS Date), 1, 2, 80000, 60000, 140000)
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([JadwalID])
REFERENCES [dbo].[Jadwal] ([JadwalID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([PegawaiID])
REFERENCES [dbo].[Pegawai] ([PegawaiID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bulanan]  WITH CHECK ADD FOREIGN KEY([PegawaiID])
REFERENCES [dbo].[Pegawai] ([PegawaiID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GameShift]  WITH CHECK ADD FOREIGN KEY([GamesID])
REFERENCES [dbo].[Games] ([GamesID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GameShift]  WITH CHECK ADD FOREIGN KEY([JadwalID])
REFERENCES [dbo].[Jadwal] ([JadwalID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GameShift]  WITH CHECK ADD FOREIGN KEY([PegawaiID])
REFERENCES [dbo].[Pegawai] ([PegawaiID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JoinMember]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JoinMember]  WITH CHECK ADD FOREIGN KEY([PlanID])
REFERENCES [dbo].[MembershipPlan] ([PlanID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pegawai]  WITH CHECK ADD FOREIGN KEY([JabatanID])
REFERENCES [dbo].[Jabatan] ([JabatanID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pembayaran]  WITH CHECK ADD  CONSTRAINT [BulananID] FOREIGN KEY([PembayaranID])
REFERENCES [dbo].[Pembayaran] ([PembayaranID])
GO
ALTER TABLE [dbo].[Pembayaran] CHECK CONSTRAINT [BulananID]
GO
ALTER TABLE [dbo].[TicketPurchase]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TicketPurchase]  WITH CHECK ADD FOREIGN KEY([PegawaiID])
REFERENCES [dbo].[Pegawai] ([PegawaiID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [PemudaThemePark] SET  READ_WRITE 
GO
