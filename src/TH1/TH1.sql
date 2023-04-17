create database QuanLyDonHang;

create table DonViDH(
MaDVDH varchar(25) not null primary key,
 TenDVDH varchar(20),
 DiaChi varchar(50),
 SDT varchar(10)
 );
 
 create table DonViKH(
 MaDVKH varchar(25) not null primary key,
 TenDVKH varchar(50),
 DiaChi varchar(50)
 );
 
 create table Hang(
 MaHang varchar(25) not null primary key,
 TenHang varchar(50),
 DonViTinh varchar(20),
 MoTaHang varchar(255)
 );
 
 create table NguoiDat(
 MaSoND varchar(25) not null primary key,
 HoTenND varchar(50)
 );
 
 create table NoiGiao(
 MaSoDDG varchar(25) not null primary key,
 TenNoiGiao varchar(255)
 );
 
 create table NguoiNhan(
 MaSoNN varchar(25) not null primary key,
 HoTenNN varchar(50)
 );
 
 create table NguoiGiao(
 MaSoNG varchar(25) not null primary key,
 HoTenNG varchar(50)
 );
 
 create table DonDatHang(
 SoDH varchar(25) not null primary key,
 TenDVDH varchar(50),
 DiaChi varchar(255),
 DienThoai varchar(10),
 NgayDat datetime,
 TenHang varchar(50),
 MoTa varchar(255),
 DonViTinh varchar(20),
 SoLuong int,
 HoTenND varchar(50),
 
 foreign key (TenDVDH) references DonViDH (TenDVDH),
 foreign key (DonViTinh) references Hang (DonViTinh),
 foreign key (HoTenND) references NguoiDat (HoTenND)  
 );
 
 create table PhieuGH(
 SoDH varchar(25) not null primary key,
 TenDVDH varchar(50),
 DiaChi varchar(255),
 TenNoiGiao varchar(255),
 NgayGiao date,
 TenHang varchar(50),
 DonViTinh varchar(20),
 SoLuong int,
 DonGia int,
 ThanhTien int,
 HoTenNN varchar(50),
 HoTenNG varchar(50),
 
 foreign key (SoDH) references PhieuGH (SoDH),
 foreign key (TenDVDH) references DonViDH (TenDVDH),
 foreign key (TenNoiGiao) references NoiGiao (TenNoiGiao),
 foreign key (DonViTinh) references Hang (DonViTinh),
 foreign key (HoTenNN) references NguoiNhan (HoTenNN),
 foreign key (HoTenNG) references NguoiGiao (HoTenNG)
 );
 
 
 