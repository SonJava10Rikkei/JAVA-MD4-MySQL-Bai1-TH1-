create database QuanLyDonHang;
use QuanLyDonHang;
-- Các bảng độc lập 
 create table NguoiDat(
 MaSoND int auto_increment primary key,
 HoTenND varchar(50),
 unique (MaSoND)
 );
 
  create table Hang(
 MaHang int auto_increment primary key,
 TenHang varchar(50),
 DonViTinh varchar(20),
 MoTaHang varchar(255),
 unique (MaHang)
 );
 

 
 create table NguoiNhan(
 MaSoNN int auto_increment primary key,
 HoTenNN varchar(50),
 unique (MaSoNN)
 );
 
   create table NoiGiao(
 MaSoDDG int auto_increment primary key,
 TenNoiGiao varchar(255),
 unique (MaSoDDG)
 );
 
 create table NguoiGiao(
 MaSoNG int auto_increment primary key,
 HoTenNG varchar(50),
 unique (MaSoNG)
 );
 
create table DonViDH(
MaDVDH int auto_increment primary key,
 TenDVDH varchar(20),
 DiaChi varchar(50),
 SDT varchar(10),
 unique (MaDVDH),
 unique (TenDVDH)
 );
 
 create table DonViKH(
 MaDVKH int auto_increment primary key,
 TenDVKH varchar(50),
 DiaChi varchar(50),
 unique (MaDVKH)
 );
 
-- Các bảng quan hệ
create table ThuocMot(
MaDVDH int,
MaSoND int,
foreign key (MaDVDH) references DonViDH(MaDVDH),
foreign key (MaSoND) references NguoiDat(MaSoND)
);
create table Dat(
SoDH int auto_increment primary key,
NgayDat date,
SoLuong int,
MaSoND int,
MaHang int,
foreign key (MaHang) references Hang(MaHang),
foreign key (MaSoND) references DonViKH(MaSoND)

);
create table ThuocHai(
MaDVKH int,
MaSoNN int,
foreign key (MaDVKH) references DonViKH(MaDVKH),
foreign key (MaSoNN) references NguoiNhan(MaSoNN)
);

create table Giao(
SoPG int auto_increment primary key,
NgayGiao date,
SoLuong int,
DonGia int,
MaSoNN int,
MaSoDDG int,
MaSoNG int,
MaHang int,
foreign key (MaSoND) references DonViKH(MaSoND),
foreign key (MaSoDDG) references NoiGiao(MaSoDDG),
foreign key (MaSoNG) references NguoiGiao(MaSoNG),
foreign key (MaHang) references Hang(MaHang)
);


--  create table DonDatHang(
--  SoDH int auto_increment primary key,
--  TenDVDH varchar(50),
--  DiaChi varchar(255),
--  SDT varchar(10),
--  NgayDat datetime,
--  TenHang varchar(50),
--  DonViTinh varchar(20),
--  MoTaHang  varchar(255),
--  SoLuong int,
--  HoTenND varchar(50),
--  unique (SoDH) 
--  );
--  
--  create table PhieuGH(
--  SoDH int auto_increment primary key,
--  TenDVKH varchar(50),
--  DiaChi varchar(255),
--  TenNoiGiao varchar(255),
--  NgayGiao date,
--  TenHang varchar(50),
--  DonViTinh varchar(20),
--  SoLuong int,
--  DonGia int,
--  ThanhTien int,
--  HoTenNN varchar(50),
--  HoTenNG varchar(50) 
--  );