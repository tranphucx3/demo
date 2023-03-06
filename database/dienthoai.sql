-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 09, 2022 lúc 04:42 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`) VALUES
('21', 'Apple iPhone 13', 2, 18000000, 3, 7),
('21', 'Samsung Galaxy S22+ 5G', 1, 22000000, 3, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 0),
(3, 'Samsung', 1),
(4, 'Apple', 1),
(5, 'Pin dự phòng', 2),
(6, 'Sạc', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(21, 5, 'tranphucx3', '1', 933751684, 'tranphucx3', '2022-08-09', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotro`
--

CREATE TABLE `hotro` (
  `idht` int(11) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaygui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(3, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-05-02', 'nam', 'thanhdat21293@gmail.com', 978164307, 'an thuong', '2022-08-07', 0),
(4, 'Thành Đạt', 'thanhdat21293', '96e79218965eb72c92a549dd5a330112', '1993-12-02', 'nam', 'thanhdat21293@gmail.com', 978164307, 'an thượng', '2022-07-04', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasx`
--

CREATE TABLE `nhasx` (
  `idnsx` int(11) NOT NULL,
  `tennsx` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `madm` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `chitiet`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(1, 'Apple iPhone SE (2022)', '2022080717292920220806080351se2022.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>IPS LCD4.7&quot;Retina HD</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A15 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>2018 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 20, 5, 9000000, 0, '', 4, '2022-08-07', 0),
(2, 'Apple iPhone 13 Pro Max', '2022080717361813promax.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A15 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>4352 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 15, 6, 28000000, 10, '', 4, '2022-08-07', 0),
(3, 'Apple iPhone 13 Pro', '2022080717371713pro.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.1&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A15 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>3095 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 10, 5, 26000000, 10, '', 4, '2022-08-07', 0),
(4, 'Apple iPhone 13', '2022080717392213.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.1&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A15 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>3240 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 15, 10, 20000000, 10, '', 4, '2022-08-07', 0),
(5, 'Apple iPhone 12 Pro Max', '2022080717402212promax.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A14 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>3687 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 15, 2, 19000000, 20, '', 4, '2022-08-07', 0),
(6, 'Apple iPhone 12 Pro', '2022080717411612pro.jpg', '', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.1&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A14 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>2815 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 12, 4, 17000000, 20, '', 4, '2022-08-07', 0),
(7, 'Apple iPhone 12', '2022080717445712.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.1&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A14 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>2815 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 12, 5, 16000000, 0, '', 4, '2022-08-07', 0),
(8, 'Zendure 10,000mAh', '20220807175953zendure1.jpg', '', '<ul>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>USB-C : 5V-3A. 9V-2A, 12V-1.5A<br />\r\n	USB-A : 5V-3A, 9V-2A, 12V-1.5A</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện ra</p>\r\n\r\n	<p>Micro-USB 5V-2A, 9V-2A</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>USB-C</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng Pin</p>\r\n\r\n	<p>10,000mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất</p>\r\n\r\n	<p>18W</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>H&atilde;ng kh&aacute;c</p>\r\n	</li>\r\n</ul>\r\n', 15, 7, 300000, 0, '', 5, '2022-08-07', 0),
(9, 'Xiaomi Redmi 20000mAh', '20220807180206xiaomiredmi.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>550 g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>Micro-USB &amp; Type-C: 5V/2.1A, 9V/2.1A, 12V/1.5A</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất đầu ra</p>\r\n\r\n	<p>18W (Max)</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc v&agrave;o</p>\r\n\r\n	<p>Micro-USB / USB-C</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>2 &times; USB-A</p>\r\n	</li>\r\n	<li>\r\n	<p>L&otilde;i pin</p>\r\n\r\n	<p>Lithium-ion Polymer</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng Pin</p>\r\n\r\n	<p>20000mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất</p>\r\n\r\n	<p>18W</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng kh&aacute;c</p>\r\n\r\n	<p>T&iacute;ch hợp bảo vệ mạch th&ocirc;ng minh<br />\r\n	Chế độ sạc d&ograve;ng điện thấp</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Xiaomi</p>\r\n	</li>\r\n</ul>\r\n', 13, 8, 400000, 0, '', 5, '2022-08-07', 0),
(10, 'Xiaomi Mi 10.000mAh', '20220807180330xiaomi.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>343g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>Micro USB/ Type C: 5V - 2.6A, 9V - 2.1A, 12V - 1.5A (18W MAX)</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất đầu ra</p>\r\n\r\n	<p>18W (Max)</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>2 x USB-A</p>\r\n	</li>\r\n	<li>\r\n	<p>L&otilde;i pin</p>\r\n\r\n	<p>Lithium Polymer</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng Pin</p>\r\n\r\n	<p>10000mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng kh&aacute;c</p>\r\n\r\n	<p>Quick Charge 3.0<br />\r\n	Đ&egrave;n LED b&aacute;o hiệu</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Xiaomi</p>\r\n	</li>\r\n</ul>\r\n', 15, 9, 400000, 0, '', 5, '2022-08-07', 0),
(11, 'Golf Candy 10.000mAh', '20220807180538golfcandy.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>116g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>Micro USB 5V/2.1A</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất đầu ra</p>\r\n\r\n	<p>5V/2.1A</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>2 x USB</p>\r\n	</li>\r\n	<li>\r\n	<p>L&otilde;i pin</p>\r\n\r\n	<p>Lithium Polymer</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng Pin</p>\r\n\r\n	<p>10.000 mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng kh&aacute;c</p>\r\n\r\n	<p>Đ&egrave;n LED hiển thị mức năng lượng</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>H&atilde;ng kh&aacute;c</p>\r\n	</li>\r\n</ul>\r\n', 20, 6, 250000, 0, '', 5, '2022-08-07', 0),
(12, 'Energizer 10.000mAh', '20220807180632energizer1.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>210g &plusmn; 10g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>Micro-USB 5V/2A<br />\r\n	USB-C PD: 5V/2A, 9V/2A</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất đầu ra</p>\r\n\r\n	<p>18W (Max)<br />\r\n	Sạc kh&ocirc;ng d&acirc;y 10W (Max)</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>USB- C, USB-A</p>\r\n	</li>\r\n	<li>\r\n	<p>L&otilde;i pin</p>\r\n\r\n	<p>Lithium Polymer</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng Pin</p>\r\n\r\n	<p>10000mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng kh&aacute;c</p>\r\n\r\n	<p>Auto Voltage Sensing<br />\r\n	Multi Protocol Fast Charging<br />\r\n	Power Delivery<br />\r\n	Quick Charge 3.0<br />\r\n	Sạc kh&ocirc;ng d&acirc;y chuẩn Qi<br />\r\n	Đ&egrave;n LED b&aacute;o hiệu</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Energizer</p>\r\n	</li>\r\n</ul>\r\n', 15, 2, 800000, 0, '', 5, '2022-08-07', 0),
(13, ' Aukey 10.000mAh', '20220807180835aukey.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>174 gram</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>USB-C: DC 5V - 2.4A , 9V - 2A , 12V - 1.5A</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất đầu ra</p>\r\n\r\n	<p>22.5W (Max)</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>USB-C, USB-A</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng Pin</p>\r\n\r\n	<p>10,000mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng kh&aacute;c</p>\r\n\r\n	<p>Chuẩn sạc nhanh PD v&agrave; Quick Charge 3.0<br />\r\n	Đ&egrave;n LED th&ocirc;ng b&aacute;o thời lượng pin<br />\r\n	Bảo vệ qu&aacute; nhiệt, qu&aacute; d&ograve;ng</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Aukey</p>\r\n	</li>\r\n</ul>\r\n', 12, 7, 400000, 0, '', 5, '2022-08-07', 0),
(14, 'Anker 10000mAh', '20220807180934anker1.jpg', '', '<ul>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>Đầu v&agrave;o Micro USB: 5V = 2A</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện ra</p>\r\n\r\n	<p>Đầu ra: 5V = 2.4A mỗi cổng, tối đa 12W nếu sạc c&ugrave;ng l&uacute;c 2 cổng.</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Anker</p>\r\n	</li>\r\n</ul>\r\n', 15, 4, 500000, 0, '', 5, '2022-08-07', 0),
(15, 'ZMI 20W', '20220807181626xiaomi-zmi.jpg', '', '<ul>\r\n	<li>\r\n	<p>Cổng giao tiếp</p>\r\n\r\n	<p>USB-C</p>\r\n	</li>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>42.8g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>100 - 240V</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện ra</p>\r\n\r\n	<p>5V - 3A<br />\r\n	9V - 2.22A<br />\r\n	12V - 1.67A</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>ZMI</p>\r\n	</li>\r\n</ul>\r\n', 15, 0, 200000, 0, '', 6, '2022-08-07', 0),
(16, 'Xiaomi 20W', '20220807181727xiaomi2.jpg', '', '<ul>\r\n	<li>\r\n	<p>Cổng giao tiếp</p>\r\n\r\n	<p>Type C</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>100-240V~50/60Hz 0.5A</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>5V/3A, 9V/2.22A, 12V/1.67A, tối đa 20W</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Xiaomi</p>\r\n	</li>\r\n</ul>\r\n', 15, 0, 200000, 0, '', 6, '2022-08-07', 0),
(17, 'Apple 20W', '20220807181831iphone-20w.jpg', '', '<ul>\r\n	<li>\r\n	<p>Cổng giao tiếp</p>\r\n\r\n	<p>USB-C</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất</p>\r\n\r\n	<p>20W</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Apple Ch&iacute;nh h&atilde;ng</p>\r\n	</li>\r\n</ul>\r\n', 15, 0, 600000, 0, '', 6, '2022-08-07', 0),
(18, 'Baseus Compact 30W', '20220807181925baseus.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>53g</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>1 x Type-C<br />\r\n	2 x USB-A</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất</p>\r\n\r\n	<p>Type-C: 30W<br />\r\n	USB-A1/USB-A2: 18W</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Baseus</p>\r\n	</li>\r\n</ul>\r\n', 12, 0, 400000, 0, '', 6, '2022-08-07', 0),
(19, 'Aukey PA-B3 65W', '20220807182017aukey-pa.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>102g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>AC 100&ndash;240V 50/60Hz 1.5A</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện ra</p>\r\n\r\n	<p>USB-C: DC 5V 3A, 9V 3A, 12V 3A, 15V 3A, 20V 3.25A<br />\r\n	USB-A: DC 5V 2.4A</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất</p>\r\n\r\n	<p>65W</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng kh&aacute;c</p>\r\n\r\n	<p>️ Sử dụng chip OMNIA cho mật độ c&ocirc;ng suất tăng gấp 3 lần, gi&uacute;p tiết kiệm năng lượng hơn 40% ️<br />\r\n	Chống qu&aacute; d&ograve;ng, qu&aacute; nhiệt, qu&aacute; tải, chống tr&agrave;</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Aukey</p>\r\n	</li>\r\n</ul>\r\n', 15, 0, 600000, 0, '', 6, '2022-08-07', 0),
(20, 'Aukey 3 in 1 LC-3A', '20220807182154aukey3.jpg', '', '<ul>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>270 g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>USB c: 5V/3A, 9V/2A</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện ra</p>\r\n\r\n	<p>USB A: 5V/1A<br />\r\n	Đế kh&ocirc;ng d&acirc;y: 10W / 7.5W / 5W</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng suất</p>\r\n\r\n	<p>Tối đa 10W</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng kh&aacute;c</p>\r\n\r\n	<p>Đế sạc kh&ocirc;ng d&acirc;y c&oacute; thể th&aacute;o rời<br />\r\n	Hỗ trợ sạc 3 thiết bị c&ugrave;ng l&uacute;c<br />\r\n	Chuẩn sạc kh&ocirc;ng d&acirc;y Qi<br />\r\n	T&iacute;ch hợp gi&aacute; đỡ cho Apple Watch</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Aukey</p>\r\n	</li>\r\n</ul>\r\n', 15, 0, 800000, 0, '', 6, '2022-08-07', 0),
(21, 'Aukey LC-A1 15W', '20220807182334aukey2.jpg', '', '<ul>\r\n	<li>\r\n	<p>Cổng giao tiếp</p>\r\n\r\n	<p>Kh&ocirc;ng d&acirc;y chuẩn Qi</p>\r\n	</li>\r\n	<li>\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>50g</p>\r\n	</li>\r\n	<li>\r\n	<p>D&ograve;ng điện v&agrave;o</p>\r\n\r\n	<p>5V 2A / 9V 2A / 12V 1.8A</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc ra</p>\r\n\r\n	<p>Sạc kh&ocirc;ng d&acirc;y 15W / 10W / 7.5W / 5W</p>\r\n	</li>\r\n	<li>\r\n	<p>H&atilde;ng sản xuất</p>\r\n\r\n	<p>Aukey</p>\r\n	</li>\r\n</ul>\r\n', 22, 0, 800000, 0, '', 6, '2022-08-07', 0),
(22, 'Samsung Galaxy S22 Ultra 5G', '20220807182815s22ultra.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Dynamic AMOLED 2X6.8&quot;Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 108 MP &amp; Phụ 12 MP, 10 MP, 10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>40 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Snapdragon 8 Gen 1</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>12 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>5000 mAh45 W</p>\r\n	</li>\r\n</ul>\r\n', 21, 0, 29000000, 0, 'Tai nghe', 3, '2022-08-07', 0),
(23, 'Samsung Galaxy S22+ 5G', '20220807182922s22plus.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Dynamic AMOLED 2X6.6&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 50 MP &amp; Phụ 12 MP, 10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Snapdragon 8 Gen 1</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>4500 mAh45 W</p>\r\n	</li>\r\n</ul>\r\n', 20, 1, 22000000, 0, 'tai nghe', 3, '2022-08-07', 0),
(24, 'Samsung Galaxy S22 5G', '20220807183036s22.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Dynamic AMOLED 2X6.1&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 50 MP &amp; Phụ 12 MP, 10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Snapdragon 8 Gen 1</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>3700 mAh25 W</p>\r\n	</li>\r\n</ul>\r\n', 12, 0, 17000000, 0, 'tai nghe', 3, '2022-08-07', 0),
(25, 'Samsung Galaxy Z Fold3 5G', '20220807183201fold3.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Dynamic AMOLED 2XCh&iacute;nh 7.6&quot; &amp; Phụ 6.2&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>10 MP &amp; 4 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Snapdragon 888</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>12 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>4400 mAh25 W</p>\r\n	</li>\r\n</ul>\r\n', 12, 0, 32000000, 10, 'tai nghe', 3, '2022-08-07', 0),
(26, 'Samsung Galaxy Z Flip3 5G', '20220807183301flip3.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Dynamic AMOLED 2XChính 6.7&quot; &amp; Phụ 1.9&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Snapdragon 888</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>3300 mAh15 W</p>\r\n	</li>\r\n</ul>\r\n', 10, 4, 15000000, 10, 'tai nghe', 3, '2022-08-07', 0),
(27, 'Samsung Galaxy M53', '20220807183416m53.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super AMOLED Plus6.7&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 108 MP &amp; Phụ 8 MP, 2 MP, 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>32 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>MediaTek Dimensity 900 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>5000 mAh25 W</p>\r\n	</li>\r\n</ul>\r\n', 10, 3, 8000000, 0, '', 3, '2022-08-07', 0),
(28, 'Samsung Galaxy S20 FE 2022', '20220807183541s20fe.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super AMOLED6.5&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:</p>\r\n\r\n	<p>32 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Snapdragon 865</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:</p>\r\n\r\n	<p>4500 mAh25 W</p>\r\n	</li>\r\n</ul>\r\n', 20, 2, 10000000, 0, '', 3, '2022-08-07', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `matt` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `ndngan` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydangtin` date NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`matt`, `tieude`, `ndngan`, `noidung`, `hinhanh`, `ngaydangtin`, `tacgia`, `trangthai`) VALUES
(8, 'Đánh giá iOS 16 Developer Beta: Bản Beta 3 đã ra mắt', 'iOS 16 Public Beta ra mắt cho công chúng có thể sử dụng', '<h3><strong>iOS 16 Beta 3 c&oacute; g&igrave; mới?</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>M&agrave;n h&igrave;nh kh&oacute;a c&oacute; nhiều bổ sung mới</strong></li>\r\n</ul>\r\n\r\n<p>Với việc iOS 16 cho ph&eacute;p t&ugrave;y biến mạnh mẽ về m&agrave;n h&igrave;nh kh&oacute;a, kh&ocirc;ng kh&oacute; hiểu khi Apple kỳ vọng về sự ho&agrave;n chỉnh của t&iacute;nh năng n&agrave;y. Cụ thể ở h&igrave;nh nền quả địa cầu,&nbsp;Tr&aacute;i Đất sẽ kh&ocirc;ng bị c&aacute;c widget kia che mất nữa, ở bản Beta 2 Apple chưa cải thiện điểm n&agrave;y. Do đ&oacute; m&agrave; Tr&aacute;i Đất từ giờ sẽ &quot;th&ocirc;ng minh&quot; hơn, khi c&oacute; widget sẽ tự động di chuyển một ch&uacute;t xuống dưới m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><img alt=\"Chỉnh sửa hình nền Trái Đất1\" class=\"lazyloaded\" src=\"https://cdn.tgdd.vn/Files/2022/07/07/1445427/chinhsuahinhnentraidat1_1280x1255-800-resize.png\" style=\"border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto\" title=\"Chỉnh sửa hình nền Trái Đất1\" /></p>\r\n\r\n<p>Tr&aacute;i Đất trong giờ sẽ kh&ocirc;ng bị che bởi c&aacute;c widget nữa. Nguồn: MacRumors.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, iOS 16 Beta 3 cũng cập nhật th&ecirc;m ph&ocirc;ng chữ cho m&agrave;n h&igrave;nh kh&oacute;a, n&acirc;ng tổng số ph&ocirc;ng chữ c&oacute; thể chọn l&ecirc;n 12 để người d&ugrave;ng thoả sức thể hiện c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Chỉnh sửa về phông chữ1\" class=\"lazyloaded\" src=\"https://cdn.tgdd.vn/Files/2022/07/07/1445427/chinhsuavephongchu1_1280x1255-800-resize.png\" style=\"border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto\" title=\"Chỉnh sửa về phông chữ1\" /></p>\r\n\r\n<p>iOS 16 Beta 3 cung cấp nhiều t&ugrave;y chọn ph&ocirc;ng chữ ở m&agrave;n h&igrave;nh kh&oacute;a hơn để người d&ugrave;ng thỏa sức s&aacute;ng tạo. Nguồn: MacRumors.</p>\r\n', '2022080717165020220806091338ios.jpg', '2022-08-07', 'thegioididong.com', 1),
(9, 'Tại sao dòng iPhone 14 lại được nhiều người tìm kiếm?', 'Apple là một cái tên quen thuộc trong ngành công nghiệp smartphone, vì vậy thường có rất nhiều rò rỉ và suy đoán về iPhone trước khi chúng xuất hiện.', '<p>Việc d&ograve;ng iPhone 14 sẽ kh&ocirc;ng c&oacute; phi&ecirc;n bản mini trong năm nay kh&ocirc;ng c&ograve;n l&agrave; điều bất ngờ nữa sau khi n&oacute; được khẳng định từ nhiều nguồn tin tức h&agrave;ng đầu kh&aacute;c nhau, bao gồm cả chuỗi cung ứng của Apple. L&yacute; do cho sự ra đi của iPhone mini bắt nguồn từ việc thị trường điện thoại cao cấp m&agrave;n h&igrave;nh nhỏ đang rất ảm đạm. Trong số 4 mẫu iPhone 13 series th&igrave; iPhone 13 l&agrave; phổ biến nhất khi chiếm đến 51%, trong khi iPhone 13 mini chỉ chiếm 5% - một con số rất tồi tệ. B&ecirc;n cạnh xu hướng sử dụng của to&agrave;n ng&agrave;nh, thời lượng pin yếu, thao t&aacute;c game kh&ocirc;ng thuận tiện đ&atilde; khiến iPhone m&agrave;n h&igrave;nh nhỏ trở th&agrave;nh dĩ v&atilde;ng.</p>\r\n\r\n<p><img alt=\"Tại sao dòng iPhone 14 lại được nhiều người tìm kiếm? - 3\" class=\"loaded news-image\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-04/3-1659550973-926-width740height416.jpg\" style=\"border:0px; box-sizing:border-box; cursor:pointer; display:block; font-size:12px; height:416px; margin:0px auto; max-width:100%; padding:0px; transition:all 2s ease-in 0s; vertical-align:middle; width:740px\" /></p>\r\n\r\n<p>Một chi tiết kh&aacute; th&uacute; vị li&ecirc;n quan đến&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/iphone-14-c407e6579.html\" style=\"text-decoration-line: none; font-weight: inherit; padding: 0px; margin: 15px 0px; box-sizing: border-box; transition: all 0.3s ease 0s; line-height: 24px; color: rgb(0, 0, 238);\" title=\"giá bán iPhone 14\">gi&aacute; b&aacute;n iPhone 14</a>&nbsp;series. C&aacute;c th&ocirc;ng tin ban đầu cho biết Apple c&oacute; thể tăng gi&aacute; d&ograve;ng iPhone 14 th&ecirc;m 100 USD để đảm bảo n&oacute; vẫn mang đến doanh thu cao cho iPhone. Vấn đề l&agrave; doanh số b&aacute;n h&agrave;ng smartphone đang giảm trong những năm gần đ&acirc;y khiến kế hoạch tăng&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/iphone-14-c407e6579.html\" style=\"text-decoration-line: none; font-weight: inherit; padding: 0px; margin: 15px 0px; box-sizing: border-box; transition: all 0.3s ease 0s; line-height: 24px; color: rgb(0, 0, 238);\" title=\"giá iPhone 14\">gi&aacute; iPhone 14</a>&nbsp;của Apple ho&agrave;n to&agrave;n c&oacute; thể kh&ocirc;ng th&agrave;nh hiện thực.</p>\r\n\r\n<p>Dĩ nhi&ecirc;n mọi thứ vẫn chỉ l&agrave; tin đồn, v&agrave; Apple sẽ giải quyết c&acirc;u hỏi n&agrave;y th&ocirc;ng tin sự kiện diễn ra v&agrave;o th&aacute;ng sau, c&oacute; khả năng v&agrave;o ng&agrave;y 13/9.</p>\r\n', '2022080717200520220806090331iPhone14.jpg', '2022-08-07', '24h.com.vn', 1),
(10, 'iPhone 14 Pro màu tím hứa hẹn tạo cơn sốt khi ra mắt', 'Apple dự kiến ​​sẽ công bố dòng iPhone 14 mới vào cuối năm nay, và một kênh YouTube đã mang đến cái nhìn đầu tiên về biến thể màu hấp dẫn nhất của iPhone 14 Pro và 14 Pro Max.', '<p>Theo<em>&nbsp;iMore</em>, Apple được cho l&agrave; sẽ mang đến lựa chọn m&agrave;u t&iacute;m độc quyền d&agrave;nh cho bộ đ&ocirc;i iPhone 14 Pro v&agrave; 14 Pro Max sắp ra mắt, b&ecirc;n cạnh c&aacute;c lựa chọn th&ocirc;ng thường l&agrave; bạc, v&agrave;ng v&agrave; x&aacute;m.</p>\r\n\r\n<p><a href=\"https://thanhnien.vn/post-1462622.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(0, 115, 159); text-decoration-line: none; display: inline; outline: 0px; transition: all 0.2s ease-in-out 0s; font-size: 1.8rem !important; line-height: 3rem !important;\" target=\"_blank\">Apple</a>&nbsp;ho&agrave;n to&agrave;n c&oacute; thể sử dụng một c&aacute;i t&ecirc;n kh&aacute;c để m&ocirc; tả m&agrave;u sắc mới, giống như những g&igrave; c&ocirc;ng ty đ&atilde; sử dụng với Sierra Blue v&agrave; Midnight Green trong thời gian gần đ&acirc;y.</p>\r\n\r\n<table align=\"center\" style=\"width:639px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"iPhone 14 Pro màu tím hứa hẹn tạo cơn sốt khi ra mắt - ảnh 1\" class=\"cms-photo\" src=\"https://image.thanhnien.vn/w2048/Uploaded/2022/aybunux/2022_05_27/3509-5199.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; font-size:1.8rem !important; line-height:3rem !important; margin:auto; max-width:100%; vertical-align:middle\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>H&igrave;nh ảnh kết xuất đồ họa được cho l&agrave; của iPhone 14 Pro m&agrave; Apple ra mắt v&agrave;o m&ugrave;a thu năm nay</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '202208071721422022080609092714tim.jpg', '2022-08-07', 'thanhnien.vn', 1),
(11, 'Samsung Galaxy Z Fold 4 có gì mới', 'Điện thoại màn gập bỗng dưng nhận được sự quan tâm trong thời gian gần đây. Và chiếc Samsung Galaxy Z Fold 4 là siêu phẩm được các Samfans vô cùng mong ngóng. Để người dùng làm rõ sự tò mò trước ngày thiết bị trình làng, hãy cùng mình cập nhật tin tức về Samsung Galaxy Z Fold 4 có gì mới trong bài viết hôm nay nhé.', '<h3>Galaxy Z Fold 4 sẽ c&oacute; bộ nhớ trong 1TB</h3>\r\n\r\n<p>V&agrave;o đầu năm nay khi ra mắt chiếc Samsung S22 Ultra, Samsung đ&atilde; tung ra t&ugrave;y chọn 1TB bộ nhớ trong cho d&ograve;ng smartphone n&agrave;y v&agrave; b&acirc;y giờ h&atilde;ng sẽ tiếp tục trang bị cho Galaxy Z Fold 4 t&ugrave;y chọn như trước xu hướng người d&ugrave;ng đang săn t&igrave;m điện thoại c&oacute; bộ nhớ trong lớn.</p>\r\n\r\n<p><img alt=\"galaxy z fold 4 dung luong 1 tb didongviet 4 2\" class=\"wp-image-167551\" src=\"https://didongviet.vn/dchannel/wp-content/uploads/2022/06/galaxy-z-fold-4-dung-luong-1-tb-didongviet-4-2.jpg\" style=\"border-radius:inherit; display:block; height:auto; max-width:100%; vertical-align:bottom; width:780px\" title=\"Samsung Galaxy Z Fold 4 có gì mới: Siêu phẩm điện thoại màn hình gập sẽ ra mắt vào mùa thu (liên tục cập nhật) 31\" /></p>\r\n\r\n<p>Trước đ&acirc;y đ&agrave;n anh Galaxy Z Fold3 5G chỉ c&oacute; bộ nhớ trong tối đa 512GB trong đ&oacute; phi&ecirc;n bản 256GB chủ yếu được người d&ugrave;ng lựa chọn bởi mức gi&aacute; hấp dẫn. Việc c&oacute; th&ecirc;m t&ugrave;y chọn 1TB sẽ gi&uacute;p người d&ugrave;ng c&oacute; th&ecirc;m lựa chọn đa dạng t&ugrave;y nhu cầu, bộ nhớ lưu trữ tăng gấp đ&ocirc;i đồng nghĩa với việc gi&aacute; m&aacute;sy phi&ecirc;n bản cao nhất cũng kh&ocirc;ng hề rẻ, c&oacute; thể l&ecirc;n đến hơn 2000 USD.</p>\r\n', '2022080717240220220806091636galaxy.jpg', '2022-08-07', 'didongviet.vn', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`);

--
-- Chỉ mục cho bảng `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`idht`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Chỉ mục cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`idnsx`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matt`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `hotro`
--
ALTER TABLE `hotro`
  MODIFY `idht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  MODIFY `idnsx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
