-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2023 lúc 10:21 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `binhluan` (
  `id_comment` int(11) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_pro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(255) NOT NULL,
  `name_blog` varchar(255) NOT NULL,
  `img_blog` varchar(255) NOT NULL,
  `mota_blog` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id_blog`, `name_blog`, `img_blog`, `mota_blog`) VALUES
(11, 'Iphone 15 Promax mới ra', 'yy1.jpg', 'sale 10% mại zô mại zô!!!'),
(24, 'SamSung giảm giá sốc', 'nn1.jpg', 'sale 10% mại zô mại zô!!!'),
(25, 'Oppo ra mẫu mới cực đẹp', 'kk1.jpg', 'sale 10% mại zô mại zô!!!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `name`) VALUES
(1, 'IPHONE'),
(2, 'SamSung'),
(3, 'ViVo'),
(4, 'Oppo'),
(47, 'Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_bill` int(11) NOT NULL,
  `bill_code` varchar(20) NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `tel_user` varchar(10) NOT NULL,
  `adress_user` varchar(255) NOT NULL,
  `name_pr` varchar(50) NOT NULL,
  `amount_pr` varchar(50) NOT NULL,
  `size_pr` varchar(50) NOT NULL,
  `total_bill` varchar(50) NOT NULL,
  `status_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_bill`, `bill_code`, `name_user`, `tel_user`, `adress_user`, `name_pr`, `amount_pr`, `size_pr`, `total_bill`, `status_order`) VALUES
(14, 'XIZ5H0KZBM', 'Nguyen dang duc tai', '0368600129', '555', 'Nước cam', '3', 'L', '334000', 1),
(15, 'XIZ5H0KZBM', 'Nguyen dang duc tai', '0368600129', '555', 'Coca cola', '5', 'XL', '334000', 1),
(16, 'XIZ5H0KZBM', 'Nguyen dang duc tai', '0368600129', '555', 'Bánh cam', '6', 'XL', '334000', 1),
(21, '9NYL24U2JR', 'Nguyen dang duc tai', '0368600129', '435', 'Nước tăng lực Redbull', '1', 'M', '13000', 1),
(22, 'HU2M587BAR', 'Hồng Quân Đỗ', '0338976647', 'Bằng Luân Đoan Hùng Phú Thọ', 'Bánh mì nướng muối ớt', '2', 'M', '60000', 1),
(23, 'EGSRX1L35E', 'Hồng Quân Đỗ', '0338976647', 'Bằng Luân Đoan Hùng Phú Thọ', 'Bánh mì nướng muối ớt', '2', 'M', '95000', 1),
(24, 'EGSRX1L35E', 'Hồng Quân Đỗ', '0338976647', 'Bằng Luân Đoan Hùng Phú Thọ', 'Bánh donut', '1', 'XL', '95000', 1),
(25, 'N2TUN445RH', 'Hồng Quân Đỗ', '0338976647', 'Bằng Luân Đoan Hùng Phú Thọ', 'Nước cam', '1', 'M', '12000', 1),
(26, 'DETB27EVG3', '', '', '', 'Nước cam', '1', 'M', '47000', 1),
(27, 'DETB27EVG3', '', '', '', 'Bánh donut', '1', 'M', '47000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_pro` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(100,4) NOT NULL DEFAULT 0.000,
  `amount` int(255) DEFAULT NULL,
  `size` int(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_pro`, `name`, `price`, `amount`, `size`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(146, 'SamSung', 20000000.000, 100, 1, 'ss1.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 2),
(149, 'ViVo', 18000000.000, 100, 1, 'uu1.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 3),
(152, 'ViVo', 18000000.000, 100, 1, 'uu2.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000 ', 0, 3),
(154, 'SamSung', 20000000.000, 100, 1, 'ss2.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 2),
(155, 'IPHONE ', 30000000.000, 100, 1, 'ip1.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 1),
(156, 'IPHONE ', 30000000.000, 100, 1, 'ip2.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 1),
(158, 'SamSung', 20000000.000, 1, 1, 'ss3.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 2),
(159, 'Xiaomi', 19000000.000, 1000, 1, 'jj1.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 47),
(160, 'Xiaomi', 19000000.000, 1000, 1, 'jj2.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000 ', 0, 47),
(161, 'Oppo', 13900000.000, 100, 1, 'oo1.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 4),
(164, 'Oppo', 13900000.000, 100, 1, 'oo2.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 4),
(165, 'Oppo', 13900000.000, 100, 1, 'oo3.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 4),
(166, 'IPHONE ', 30000000.000, 100, 1, 'ip3.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 1),
(167, 'IPHONE ', 30000000.000, 100, 1, 'ip4.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 1),
(168, 'Xiaomi', 19000000.000, 100, 1, 'jj3.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 47),
(169, 'ViVo ', 18000000.000, 100, 1, 'uu3.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 3),
(170, 'ViVo', 18000000.000, 100, 1, 'uu4.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 3),
(171, 'Xiaomi', 19000000.000, 1000, 1, 'jj4.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 0, 47),
(172, 'Oppo', 13900000.000, 100, 1, 'oo4.jpg', 'giảm giá mỗi sản phẩm giảm 1.000.0000', 100, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id_size` int(255) NOT NULL,
  `name_size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id_size`, `name_size`) VALUES
(1, 'TRẮNG'),
(2, 'ĐEN'),
(3, 'VÀNG GOLD');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status_order` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`id_status`, `status_order`) VALUES
(1, 'Đang xử lí'),
(2, 'Đang vận chuyển'),
(3, 'Đã thanh toán'),
(4, 'Hủy hóa đơn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_user` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id_user`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(34, 'admin', '0000000', 'ductai0201@gmail.com', NULL, NULL, 0),
(36, 'daohung', '123456', 'hung2004@gmailcom', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2022-10-23', 50, '15500000', 25),
(2, '2022-10-22', 55, '25500000', 25),
(3, '2022-11-21', 50, '15600000', 30),
(14, '2021-10-30', 3, '1500000', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `FK_user` (`id_user`),
  ADD KEY `FK_pro` (`id_pro`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `lk_status` (`status_order`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`),
  ADD KEY `lk_szie` (`size`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_user`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `FK_pro` FOREIGN KEY (`id_pro`) REFERENCES `sanpham` (`id_pro`),
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id_user`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `lk_status` FOREIGN KEY (`status_order`) REFERENCES `status` (`id_status`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `lk_szie` FOREIGN KEY (`size`) REFERENCES `size` (`id_size`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
