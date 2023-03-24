-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_ncc
drop database if exists db_ncc;
CREATE DATABASE [db_ncc];
USE [master]

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'dangkycungcap')
BEGIN
CREATE TABLE dbo.dangkycungcap (
  MaDKCC varchar(7)  NOT NULL,
  MaNhaCC varchar(8) ,
  MaLoaiDV varchar(6) ,
  DongXe varchar(15) ,
  MaMP varchar(5) ,
  NgayBatDauCungCap datetime NOT NULL,
  NgayKetThucCungCap datetime NOT NULL,
  SoLuongXeDangKy int NULL,
  CONSTRAINT PK_dongxe PRIMARY KEY (MaDKCC),
  CONSTRAINT PK_DANGKYCUNGCAP_DongXe FOREIGN KEY (DongXe) REFERENCES dongxe (DongXe),
  CONSTRAINT PK_DANGKYCUNGCAP_MaLoaiDV FOREIGN KEY (MaLoaiDV) REFERENCES loaidichvu (MaLoaiDV),
  CONSTRAINT PK_DANGKYCUNGCAP_MaMP FOREIGN KEY (MaMP) REFERENCES mucphi (MaMP),
  CONSTRAINT PK_DANGKYCUNGCAP_MaNhaCC FOREIGN KEY (MaNhaCC) REFERENCES nhacungcap (MaNhaCC)
)
-- Dumping data for table db_ncc.dangkycungcap: ~17 rows (approximately)
/*!40000 ALTER TABLE `dangkycungcap` DISABLE KEYS */;
INSERT  INTO dbo.dangkycungcap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap, SoLuongXeDangKy) VALUES
	('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015-11-20 00:00:00', '2016-11-20 00:00:00', 4),
	('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015-11-20 00:00:00', '2017-11-20 00:00:00', 3),
	('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017-11-20 00:00:00', '2018-11-20 00:00:00', 5),
	('DK004', 'NCC005', 'DV01', 'Cerato', 'MP04', '2015-11-20 00:00:00', '2019-11-20 00:00:00', 7),
	('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019-11-20 00:00:00', '2020-11-20 00:00:00', 1),
	('DK006', 'NCC004', 'DV03', 'Starex', 'MP04', '2016-11-10 00:00:00', '2021-11-20 00:00:00', 2),
	('DK007', 'NCC005', 'DV01', 'Cerato', 'MP03', '2015-11-30 00:00:00', '2016-01-25 00:00:00', 8),
	('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016-02-28 00:00:00', '2016-08-15 00:00:00', 9),
	('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016-04-27 00:00:00', '2017-04-30 00:00:00', 10),
	('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2016-11-21 00:00:00', '2016-02-22 00:00:00', 4),
	('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016-12-25 00:00:00', '2017-02-20 00:00:00', 5),
	('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016-04-14 00:00:00', '2017-12-20 00:00:00', 6),
	('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015-12-21 00:00:00', '2016-12-21 00:00:00', 8),
	('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016-05-20 00:00:00', '2016-12-30 00:00:00', 1),
	('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018-04-24 00:00:00', '2019-11-20 00:00:00', 6),
	('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016-06-22 00:00:00', '2016-12-21 00:00:00', 8),
	('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016-09-30 00:00:00', '2019-09-30 00:00:00', 4);
/*!40000 ALTER TABLE `dangkycungcap` ENABLE KEYS */;
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'dongxe')
BEGIN
    CREATE TABLE dbo.dongxe (
        DongXe varchar(15) NOT NULL,
        HangXe varchar(10) NOT NULL,
        SoChoNgoi int NOT NULL,
        CONSTRAINT PK_dongxe PRIMARY KEY (DongXe)
    );
    INSERT INTO dbo.dongxe (DongXe, HangXe, SoChoNgoi)
    VALUES
        ('Cerato', 'KIA', 7),
        ('Escape', 'Ford', 5),
        ('Forte', 'KIA', 5),
        ('Grand-i10', 'Huyndai', 7),
        ('Hiace', 'Toyota', 16),
        ('Starex', 'Huyndai', 7),
        ('Vios', 'Toyota', 5);
END


IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'loaidichvu')
BEGIN
CREATE TABLE dbo.loaidichvu (
  MaLoaiDV varchar(6)  NOT NULL,
  TenLoaiDV varchar(50)  NOT NULL,
  CONSTRAINT PK_loaidichvu PRIMARY KEY (MaLoaiDV)
) 

-- Dumping data for table db_ncc.loaidichvu: ~3 rows (approximately)
/*!40000 ALTER TABLE `loaidichvu` DISABLE KEYS */;
INSERT  INTO loaidichvu (MaLoaiDV, TenLoaiDV) VALUES
	('DV01', 'Dịch vụ xe taxi'),
	('DV02', 'Dịch vụ xe buýt công cộng theo tuyến cố định'),
	('DV03', 'Dịch vụ cho thuê xe theo hợp đồng');
/*!40000 ALTER TABLE `loaidichvu` ENABLE KEYS */;
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'mucphi')
BEGIN
CREATE TABLE dbo.mucphi(
  MaMP varchar(5)  NOT NULL,
  DonGia varchar(7)  NOT NULL,
  MoTa varchar(30)  NULL,
  CONSTRAINT PK_MucPhi PRIMARY KEY (MaMP)
) 

-- Dumping data for table db_ncc.mucphi: ~4 rows (approximately)
/*!40000 ALTER TABLE `mucphi` DISABLE KEYS */;
INSERT  INTO mucphi (MaMP, DonGia, MoTa) VALUES
	('MP01', '10000', 'Áp dụng từ ngày 1/2015'),
	('MP02', '15000', 'Áp dụng từ ngày 2/2015'),
	('MP03', '20000', 'Áp dụng từ ngày 1/2010'),
	('MP04', '25000', 'Áp dụng từ ngày 2/2011');
/*!40000 ALTER TABLE `mucphi` ENABLE KEYS */;
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'nhacungcap')
BEGIN
CREATE TABLE  dbo.nhacungcap (
  MaNhaCC varchar(8)  NOT NULL,
  TenNhaCC varchar(50)  NOT NULL,
  DiaChi varchar(30)  NOT NULL,
  SoDT varchar(15)  DEFAULT NULL,
  MaSoThue varchar(15)  NOT NULL,
  CONSTRAINT PK_NhaCungCap PRIMARY KEY (MaNhaCC)
) 

-- Dumping data for table db_ncc.nhacungcap: ~10 rows (approximately)
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT  INTO nhacungcap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue) VALUES
	('NCC001', 'Cty TNHH Toàn Phát', 'Hai Chau', '051133999888', '568941'),
	('NCC002', 'Cty Cổ Phần Đông Du', 'Lien Chieu', '051133999889', '456789'),
	('NCC003', 'Ông Nguyễn Văn A', 'Hoa Thuan', '051133999890', '321456'),
	('NCC004', 'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '05113658945', '513364'),
	('NCC005', 'Cty TNHH AMA', 'Thanh Khe', '051103875466', '546546'),
	('NCC006', 'Bà Trần Thị Bích Vân', 'Lien Chieu', '05113587469', '524545'),
	('NCC007', 'Cty TNHH Phan Thành', 'Thanh Khe', '05113987456', '113021'),
	('NCC008', 'Ông Phan Đình Nam', 'Hoa Thuan', '05113532456', '121230'),
	('NCC009', 'Tập đoàn Đông Nam Á', 'Lien Chieu', '05113987121', '533654'),
	('NCC010', 'Cty Cổ Phần Rạng đông', 'Lien Chieu', '05113569654', '187864');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
END

/*PHẦN I*/
-- câu 1
SELECT * FROM dongxe WHERE SoChoNgoi > 5;
-- câu 2
SELECT DISTINCT nc.MaNhaCC, nc.TenNhaCC, nc.DiaChi, nc.SoDT, nc.MaSoThue
FROM nhacungcap nc
INNER JOIN dangkycungcap dkc ON nc.MaNhaCC = dkc.MaNhaCC
INNER JOIN dongxe dx ON dkc.DongXe = dx.DongXe
INNER JOIN mucphi mp ON dkc.MaMP = mp.MaMP
WHERE (dx.HangXe = 'Toyota' AND mp.DonGia = 15000)
OR (dx.HangXe = 'KIA' AND mp.DonGia = 20000);
-- câu 3
SELECT * FROM nhacungcap ORDER BY TenNhaCC ASC, MaSoThue DESC
-- câu 4
SELECT MaNhaCC, COUNT(*) as SoLanDangKy
FROM dangkycungcap
WHERE NgayBatDauCungCap = '2015-11-20'
GROUP BY MaNhaCC;
-- câu 5
SELECT DISTINCT HangXe
FROM DongXe;
-- câu 6
SELECT dkcc.MaDKCC, ncc.MaNhaCC, ncc.TenNhaCC, ncc.DiaChi, ncc.MaSoThue, dv.TenLoaiDV, mp.DonGia, dx.HangXe, dkcc.NgayBatDauCungCap, dkcc.NgayKetThucCungCap
FROM dangkycungcap AS dkcc
LEFT JOIN nhacungcap AS ncc ON dkcc.MaNhaCC = ncc.MaNhaCC
LEFT JOIN loaidichvu AS dv ON dkcc.MaLoaiDV = dv.MaLoaiDV
LEFT JOIN mucphi AS mp ON dkcc.MaMP = mp.MaMP
LEFT JOIN dongxe AS dx ON dkcc.DongXe = dx.DongXe;

-- câu 7
SELECT dkcc.MaDKCC, ncc.MaNhaCC, ncc.TenNhaCC, ncc.DiaChi, ncc.MaSoThue,
ldv.TenLoaiDV, mp.DonGia, dx.HangXe, dkcc.NgayBatDauCungCap,
dkcc.NgayKetThucCungCap
FROM dangkycungcap dkcc
INNER JOIN nhacungcap ncc ON dkcc.MaNhaCC = ncc.MaNhaCC
INNER JOIN loaidichvu ldv ON dkcc.MaLoaiDV = ldv.MaLoaiDV
INNER JOIN mucphi mp ON dkcc.MaMP = mp.MaMP
INNER JOIN dongxe dx ON dkcc.DongXe = dx.DongXe
WHERE dx.DongXe = 'Hiace' OR dx.DongXe = 'Cerato';

-- câu 8
SELECT MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue
FROM nhacungcap
WHERE NOT EXISTS
(SELECT * FROM dangkycungcap WHERE dangkycungcap.MaNhaCC = nhacungcap.MaNhaCC)


/*PHẦN II */ 
DROP VIEW IF EXISTS ten_view;

-- câu 1 
SELECT * FROM ThongTinDangKy;
-- câu 2
SELECT *FROM View_NhaCungCap_DangKyPhuongTien
-- câu 3
SELECT * FROM v_nhacungcap_haichau
-- câu 4
CREATE  PROCEDURE them_dong_xe 
    @DongXe varchar(15),
    @HangXe varchar(20),
    @SoChoNgoi int
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dongxe (DongXe, HangXe, SoChoNgoi)
    VALUES (@DongXe, @HangXe, @SoChoNgoi);
END;

EXEC them_dong_xe 'xe máy', 'honda', 2;

select *from dongxe


CREATE PROCEDURE them_loai_dich_vu 
    @MaLoaiDV varchar(6), 
    @TenLoaiDV nvarchar(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT * FROM loaidichvu WHERE MaLoaiDV = @MaLoaiDV)
    BEGIN
        INSERT INTO loaidichvu(MaLoaiDV, TenLoaiDV)
        VALUES(@MaLoaiDV, @TenLoaiDV)
    END
END


EXEC them_loai_dich_vu 'DV05',N'Xe tự lái'

select * from loaidichvu

-- câu 5 
EXEC xoa_loai_dich_vu 'DV05'
select *from loaidichvu

EXEC xoa_dong_xe 'xe máy'
select *from dongxe

-- câu 6
CREATE PROCEDURE cap_nhat_dong_xe
    @DongXe varchar(15),
    @HangXe nvarchar(50),
    @SoChoNgoi int
AS
BEGIN
    UPDATE dongxe
    SET HangXe = @HangXe, SoChoNgoi = @SoChoNgoi
    WHERE DongXe = @DongXe;
END
EXECUTE cap_nhat_dong_xe'xe máy', N'Honda', 3


CREATE PROCEDURE cap_nhat_loai_dich_vu
    @MaLoaiDV varchar(6),
    @TenLoaiDV nvarchar(50)
AS
BEGIN
    UPDATE loaidichvu
    SET TenLoaiDV = @TenLoaiDV
    WHERE MaLoaiDV = @MaLoaiDV;
END
EXECUTE cap_nhat_loai_dich_vu 'DV04', N'Dịch vụ cho thuê xe'

-- câu 7
CREATE PROCEDURE sp_ThemCapNhatXoaNhaCungCapDongXe
@type INT,
@MaNCC VARCHAR(8),
@TenNCC NVARCHAR(50),
@DiaChi NVARCHAR(100),
@MaSoThue VARCHAR(10),
@typeDongXe INT,
@DongXe NVARCHAR(50),
@HangXe NVARCHAR(50),
@SoChoNgoi INT
AS
BEGIN
IF @type = 1 -- Thêm nhà cung cấp mới
BEGIN
INSERT INTO nhacungcap (MaNhaCC, TenNhaCC, DiaChi, MaSoThue)
VALUES (@MaNCC, @TenNCC, @DiaChi, @MaSoThue)
END
ELSE IF @type = 2 -- Cập nhật thông tin nhà cung cấp
BEGIN
UPDATE nhacungcap
SET TenNhaCC = @TenNCC,
DiaChi = @DiaChi,
MaSoThue = @MaSoThue
WHERE MaNhaCC = @MaNCC
END
ELSE IF @type = 3 -- Xóa nhà cung cấp
BEGIN
DELETE FROM nhacungcap
WHERE MaNhaCC = @MaNCC
END
IF @typeDongXe = 1 -- Thêm dòng xe mới cho nhà cung cấp
BEGIN
	INSERT INTO dongxe (DongXe, HangXe, SoChoNgoi)
	VALUES (@DongXe, @HangXe, @SoChoNgoi)
	
	INSERT INTO dangkycungcap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap, SoLuongXeDangKy)
	VALUES (NEWID(), @MaNCC, NULL, @DongXe, NULL, GETDATE(), NULL, 0)
END
End

-- câu 8
CREATE PROCEDURE sp_ThemCapNhatXoaDangKyCungCap 
@type INT, -- Loại thao tác (1 - Thêm, 2 - Cập nhật, 3 - Xóa)
@MaDKCC INT, -- Mã đăng ký cung cấp (nếu có)
@MaNhaCC VARCHAR(8), -- Mã nhà cung cấp
@MaLoaiDV VARCHAR(8), -- Mã loại dịch vụ
@MaMP VARCHAR(8), -- Mã mức phí
@DongXe VARCHAR(30), -- Dòng xe
@SoLuong INT, -- Số lượng
@NgayBatDauCungCap DATE, -- Ngày bắt đầu cung cấp
@NgayKetThucCungCap DATE -- Ngày kết thúc cung cấp
AS
BEGIN
    IF @type = 1 -- Thêm mới
    BEGIN
        INSERT INTO DANGKYCUNGCAP (MaNhaCC, MaLoaiDV, MaMP, DongXe, SoLuong, NgayBatDauCungCap, NgayKetThucCungCap)
        VALUES (@MaNhaCC, @MaLoaiDV, @MaMP, @DongXe, @SoLuong, @NgayBatDauCungCap, @NgayKetThucCungCap)
    END
    ELSE IF @type = 2 -- Cập nhật
    BEGIN
        UPDATE DANGKYCUNGCAP
        SET MaNhaCC = @MaNhaCC, MaLoaiDV = @MaLoaiDV, MaMP = @MaMP, DongXe = @DongXe, SoLuong = @SoLuong, NgayBatDauCungCap = @NgayBatDauCungCap, NgayKetThucCungCap = @NgayKetThucCungCap
        WHERE MaDKCC = @MaDKCC
    END
    ELSE IF @type = 3 -- Xóa
    BEGIN
        DELETE FROM DANGKYCUNGCAP
        WHERE MaDKCC = @MaDKCC
    END
END



