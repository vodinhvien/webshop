-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 22, 2020 lúc 05:17 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mvcphu`
--
CREATE DATABASE IF NOT EXISTS `web_mvcphu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web_mvcphu`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(3, 'dinhvien', 'dinhvien@gmail.com', 'dinhvien', '123456', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsum'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Viettel'),
(13, 'OEM'),
(14, 'TP-Link');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', 'Điện thoại Samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', 'Điện thoại Samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Điện thoại Samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Điện thoại Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'Máy Tính Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Điện thoại Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'Ổ Cứng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - Hàng Nhập Khẩu', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Đổng Hồ Thông Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Đổng Hồ Thông Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Laptop'),
(4, 'Desktop'),
(5, 'Mobile Phones'),
(6, 'Accessories'),
(7, 'Software'),
(15, 'Test'),
(16, 'Đồng Hồ Thông Minh'),
(17, 'Thiết Bị Mạng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'dinhvien', '113 Lạc Long Quân TPHCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', '123'),
(4, 'Nguyễn Văn A', '149 Lũy Bán Bích, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Sin', '149 Lý Thái Tổ TPHCM', 'TPHCM', 'hcm', '700000', '0522525294', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'vien', '273 an duong vuong', 'vsco', 'hcm', '700000', '0987654321', 'dinhvien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
(57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
(58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
(59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22'),
(60, 17, 'Ổ Cứng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - Hàng Nhập Khẩu', 6, 2, '2198000', '785e8d373d.jpg', 0, '2020-06-21 23:21:29'),
(61, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 6, 1, '1240000', '49b106217c.jpg', 0, '2020-06-21 23:21:29'),
(62, 9, 'IPad 2019', 6, 1, '8000000', '7418d9b02e.jpg', 0, '2020-06-22 14:05:12'),
(63, 8, 'Điện Thoại Huawei P30 Pro', 6, 1, '5000000', 'huaweipro.jpg', 0, '2020-06-22 14:05:12'),
(64, 13, 'Garmin Forerunner 235 GPS Running Watch & Activity Tracker Black and Grey', 6, 1, '4690000', '25ebd2d0ff.jpg', 0, '2020-06-22 15:43:47'),
(65, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 6, 1, '2589900', '32942e9470.jpg', 0, '2020-06-22 15:43:47'),
(66, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 6, 1, '2589900', '32942e9470.jpg', 0, '2020-06-22 15:43:47'),
(67, 22, 'ThinkPad T470s', 6, 1, '12900000', 'thinkpad_t470s.jpg', 0, '2020-06-22 16:08:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(6, 'Máy tính Dell E7470', 'MH1122', '50', '0', '50', 3, 10, '<p>Mẫu máy tính doanh nhân cao cấp Dell Latitude E7470 này ghi điểm với người dùng nhờ thiết kế thanh thoát và gọn nhẹ, các chi tiết máy có độ bền cao và độ hoàn thiện vô cùng tốt. Đặc biệt cấu hình của laptop Dell E7470 i5 đủ sức mạnh để đáp ứng tốt mọi công việc dành cho văn phòng. Sau đây là những đánh giá nhanh về laptop Dell Latitude E7470 business ultrabook, mời bạn cùng tham khảo để có được quyết định chính xác cho mình.\r\n• CPU: Intel® Core™ i5 - 6300U (3M Cache), 2.4 Ghz up to 3.0 Ghz\r\n\r\n• RAM: 8GB DDR4 2133MHz\r\n\r\n• Ổ cứng: 256GB SSD\r\n\r\n• Card đồ họa: Intel HD Graphics 520\r\n\r\n• Màn hình: 14 inch anti glare HD ( 1366 x 768 )\r\n\r\n• Bảo hành: 12 tháng</p>', 1, '10000000', 'delle7470.png'),
(7, 'Điện Thoại Samsung S10+', 'MH1123', '60', '0', '60', 5, 6, '<p>Điện Thoại Samsung S10+</p>', 0, '12000000', 'galaxyS10+.jpg'),
(8, 'Điện Thoại Huawei P30 Pro', 'MH1124', '70', '0', '70', 5, 8, '<p>Released 2019, March 26\r\n192g, 8.4mm thickness\r\nAndroid 9.0, up to Android 10, EMUI 10\r\n128GB/256GB/512GB storage, NM</p>', 0, '5000000', 'huaweipro.jpg'),
(9, 'IPad 2019', 'MH1125', '100', '0', '100', 3, 7, '<p>Màn hình	LED backlit LCD, 10.5\"\r\nHệ điều hành	iPadOS 13\r\nCPU	Apple A12 Bionic 6 nhân, 2 nhân 2.5 GHz & 4 nhân 1.6 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	8 MP\r\nCamera trước	7 MP\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G\r\nĐàm thoại	FaceTime\r\nTrọng lượng	456 g</p>', 0, '8000000', '7418d9b02e.jpg'),
(13, 'Garmin Forerunner 235 GPS Running Watch & Activity Tracker Black and Grey', 'MH1126', '30', '0', '30', 16, 13, '<p>KÍCH THƯỚC HIỂN THỊ	Đường kính 1,3” (33.02 mm)\r\nĐỘ PHÂN GIẢI MÀN HÌNH	260 x 260 pixels\r\nLOẠI MÀN HÌNH	công nghệ MIP (bộ nhớ trong từng điểm ảnh) chống chói, có thể nhìn rõ dưới ánh sáng mặt trời\r\nTRỌNG LƯỢNG	61 g\r\nTUỔI THỌ PIN*	Đồng hồ thông minh: Tối đa 14 ngày\r\nCHẾ ĐỘ GPS: LÊN ĐẾN 20 GIỜ\r\nCHỈ SỐ CHỐNG NƯỚC	5 ATM\r\nHIỂN THỊ MÀU SẮC	 \r\nBỘ NHỚ / LỊCH SỬ	1 GB</p>', 1, '4690000', '25ebd2d0ff.jpg'),
(15, 'Phần Mềm Diệt Virus BKAV Profressional 1 PC 12 Tháng', 'MH1127', '20', '0', '20', 7, 9, '<p>Their data being deleted by virus\r\nBeing tracked by spyware\r\nBank account being stolen\r\nPassword being stolen\r\nVirus slowdowning their computers\' performance</p>', 0, '195000', 'bkav.jpg'),
(16, 'TP - Link TL- WN725N - USB Wifi Nano 150Mbps', 'MH1128', '90', '0', '90', 17, 14, '<p>USB thu WIFI thiết kế thu nhỏ và kiểu dáng đẹp sang trọng lịch sự, người dùng có thể kết nối bộ thu WIFI LB-LINK với bất kỳ cổng USB nào của máy tính hoặc laptop.\r\nKhông cần phải lo lắng sẽ ảnh hưởng đến các cổng USB liền kề hoặc bị rơi ra khi di chuyển máy tính xách tay từ vị trí này sang vị trí khác.. vì kích cỡ của usb thu wifi BL\r\nWN725N nhỏ gọn giống như đầu thu của con chuột không dây</p>', 0, '125000', '6c53b185b0.jpg'),
(17, 'Ổ cứng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - Hàng Nhập Khẩu', 'MH1129', '100', '0', '100', 7, 6, '<p>Nhà sản xuất	Samsung\r\nModel	MZ-76E250BW\r\nKích thước	2.5\", 6,8mm\r\nChuần giao tiếp	Sata III 6Gbit/s\r\n Dung lượng	250 GB\r\nTốc độ đọc	550 MB/s\r\nTốc độ ghi	520 MB/s\r\n4k random	98K IOPS Samsung 64-layer 3D TLC V-NAND\r\nTBW	150 TB\r\nBảo hành	5 Năm  (xem thêm chính sách bảo hành tại ĐÂY)\r\n Phầm mềm chuyển hệ điều hành	Samsung Data Migration</p>', 0, '1099000', '785e8d373d.jpg'),
(18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 'MH1130', '120', '0', '120', 3, 10, '<p>Chip: Intel Core i7-8750H (2.2GHz up to 4.1GHz, 9MB)</p>\r\n<p>RAM: 8GB DDR4 2400MHz</p>\r\n<p>Ổ Cứng: HDD 1TB 5400rpm + 128GB SSD M.2</p>\r\n<p>Chipset Đồ Họa: NVIDIA GeForce GTX 1050Ti 4GB GDDR5</p>\r\n<p>Màn Hình: 15.6 inch Full HD (1920 x 1080) IPS, Anti-Glare, LED Backlit Display</p>\r\n<p>Hệ Điều Hành: Windows 10 Home</p>\r\n<p>Pin: 4 Cell 56 Whrs</p>', 0, '2589900', '32942e9470.jpg'),
(19, 'Đồng Hồ Thông Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', 'MH1140', '65', '0', '65', 16, 7, '<p>Công nghệ màn hình:	LTPO OLED display (1000 nits),\r\nKích thước màn hình:	44mm,\r\nThời gian sử dụng pin:	Sử dụng đến 18h\r\nKết nối được với hệ điều hành:	IOS 13\r\nChống nước:	Có, độ sâu dưới 50m\r\nChất liệu mặt:	Ion-X strengthened glass\r\nChất liệu dây:	Nylon\r\nNgôn ngữ:	Tiếng việt\r\nTheo dõi sức khỏe:	Theo dõi giấc ngủ, Đo nhịp tim, Tính lượng Calories tiêu thụ, Đếm số bước chân, Chế độ luyện tập</p>', 0, '9700000', '6d72eb58ae.jpg'),
(20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 'MH1150', '70', '10', '65', 17, 8, '<p>Thương hiệu	Huawei\r\nXuất xứ	Trung Quốc\r\nLoại sản phẩm	Router wifi\r\nTốc độ mạng	300Mbps\r\nKết nối	Ethernet, 4 cổng LAN, 2 cổng USB\r\nSKU	7503150542794\r\nModel	B593S-12</p>', 0, '1240000', '49b106217c.jpg'),
(21, 'Lenovo ThinkPad X395 R7', 'MH1115', '48', '0', '61', 17, 14, '<p>CPU:AMD Ryzen 7 Pro 3700U 2.3Ghz, 4Mb Cache, Upto 4.0Gz\r\nRAM:8GB DDR4 2400Mhz\r\nỔ cứng:256GB SSD NVMe\r\nMàn hình:13.3 inch FHD (1920 x 1080), IPS Anti-Glare\r\nCard màn hình: AMD Vega 10\r\nCổng giao tiếp: 2 x USB 3.1 (Gen 1) 2 x USB-C (1 Thunderbolt™ 3) Khe thẻ MicroSD Khe thẻ Smartcard Khe cắm Micro-SIM Jack cắm tai nghe/ micro HDMI 1.4 RJ45\r\nKích thước: 323 x 217 x 14.95 mm\r\nTrọng lượng: 1.11kg\r\nHệ điều hành: Windows 10</p>', 0, '15000000', 'thinkpadx3953.jpg'),
(22, 'ThinkPad T470s', 'MH1111', '95', '19', '76', 17, 14, '<p>CPU:Intel Core i5-6300U 2.4GHz, 3MB SmartCache Cache, Upto 3.0GHz\r\nRAM:8GB DDR4 2133MHz\r\nỔ cứng:256GB SSD M.2\r\nMàn hình:14 inch 1920 x 1080 (FHD), IPS AntiGlare Led Backlit\r\nCard màn hình: Intel HD Graphics 520 1.76Gb\r\nCổng giao tiếp: RJ45, Mini DisplayPort™ HDMI™, 4-in-1 Card Reader, Headphone / Microphone, Smart Card Reader(Optional), Fingerprint Reader(Optional), WWAN(Optional), WiGig(Optional)\r\nKích thước: 331mm x 226.8mm x (16.9 - 18.8) mm\r\nTrọng lượng: 1.32 Kg\r\nHệ điều hành: Windows 10</p>', 0, '12900000', 'thinkpad_t470s.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 0),
(6, 'slider2', 'ff79579ac7.png', 0),
(7, 'slider3', 'a94222690e.png', 0),
(8, 'slider4', '5b2e64d6ab.jpg', 1),
(9, 'slider5', 'f50b2e4171.png', 1),
(11, 'slider6', '72a159f760.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'Máy Tính Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(5, 6, 6, 'Máy tính Dell E7470', '10000000', 'delle7470.png'),
(6, 6, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
