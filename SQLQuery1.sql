use QuanCaPhe
--- tạo khóa chính
alter table QLNuoc
add constraint PK_maNuoc primary key (maNuoc)

alter table QLNV
add constraint PK_maNV primary key (maNV)

-- xem bảng

select * from QLNuoc
select * from QLNV
select * from HoaDon
select * from DatBan

--- them cot ALTER TABLE <tên_bảng> ADD <tên_cột> <kiểu_dữ_liệu> [NULL | NOT NULL] [DEFAULT <giá_trị_mặc_định>]
alter table QLNV add chucVu nvarchar(30) NOT NULL default 'Nhân Viên'

-- INSERT INTO <tên_bảng> (<cột_1>, <cột_2>, ...) VALUES (<giá_trị_1>, <giá_trị_2>, ...)
insert into QLNV (maNV,tenNV,ngaySinh,gioiTinh,sdt,diaChi,taiKhoan,matKhau,chucVu)
values ('QL001','Trần Anh Tuấn','1997-04-02','Nam','093744755','Gia Lai','anhtuan','123456789','Nhan Vien')

delete from QLNV WHERE maNV='m';