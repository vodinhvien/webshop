-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th7 20, 2020 lúc 10:43 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mlm`
CREATE DATABASE mailweb2;
use mailweb2;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `mailid` int(11) NOT NULL,
  `path` char(100) NOT NULL,
  `mimetype` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`mailid`, `path`, `mimetype`) VALUES
(1, 'anh.png', 'image/png'),
(2, 'hinh.jpg', 'image/jpg'),
(3, 'gif.gif', 'image/gif'),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lists`
--

CREATE TABLE `lists` (
  `listid` int(11) NOT NULL,
  `listname` char(20) NOT NULL,
  `blurb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lists`
--

INSERT INTO `lists` (`listid`, `listname`, `blurb`) VALUES
(1, 'NameA', 'Detail A'),
(2, 'NameB', 'Detail B'),
(3, 'NameC', 'Detail C'),
(4, 'NameD', 'Detail D'),
(5, 'NameE', 'Detail E');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mail`
--

CREATE TABLE `mail` (
  `mailid` int(11) NOT NULL,
  `email` char(100) NOT NULL,
  `subject` char(100) NOT NULL,
  `listid` int(11) NOT NULL,
  `status` char(10) NOT NULL,
  `sent` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `mail`
--

INSERT INTO `mail` (`mailid`, `email`, `subject`, `listid`, `status`, `sent`, `modified`) VALUES
(1, 'A@gmail.com', 'subject A', 1, 'SEND', '2020-06-05 09:15:00', '2020-06-04 04:00:15'),
(2, 'B@gmail.com', 'subject B', 2, 'SEND', '2020-06-05 01:00:00', '2020-06-05 00:00:00'),
(3, 'C@gmail.com', 'subject C', 3, 'SEND', '2020-06-06 00:00:00', '2020-06-05 17:07:00'),
(4, 'D@gmail.com', 'subject D', 4, 'SEND', '2020-06-07 00:22:00', '2020-06-06 22:05:13'),
(5, 'E@gmail.com', 'subject E', 5, 'SEND', '2020-06-08 00:00:44', '2020-06-03 17:02:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribers`
--

CREATE TABLE `subscribers` (
  `email` char(100) NOT NULL,
  `realname` char(100) NOT NULL,
  `mimetype` char(1) NOT NULL,
  `password` char(40) NOT NULL,
  `admin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `subscribers`
--

INSERT INTO `subscribers` (`email`, `realname`, `mimetype`, `password`, `admin`) VALUES
('A@gmail.com', 'Hieu A', 'H', sha1('123456'), 1),
('B@gmail.com', 'Nghia B', 'T', sha1('123456'), 0),
('C@gmail.com', 'Ho C', 'T', sha1('123456'), 0),
('D@gmail.com', 'Hieu D', 'H', sha1('123456'), 0),
('E@gmail.com', 'Huy E', 'H', sha1('123456'), 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_lists`
--

CREATE TABLE `sub_lists` (
  `email` char(100) NOT NULL,
  `listid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD KEY `mailid` (`mailid`);

--
-- Chỉ mục cho bảng `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`listid`);

--
-- Chỉ mục cho bảng `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `email` (`email`),
  ADD KEY `listid` (`listid`);

--
-- Chỉ mục cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `sub_lists`
--
ALTER TABLE `sub_lists`
  ADD PRIMARY KEY (`email`,`listid`),
  ADD KEY `abc` (`listid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `lists`
--
ALTER TABLE `lists`
  MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `mail`
--
ALTER TABLE `mail`
  MODIFY `mailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`mailid`) REFERENCES `mail` (`mailid`);

--
-- Các ràng buộc cho bảng `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_ibfk_1` FOREIGN KEY (`email`) REFERENCES `subscribers` (`email`),
  ADD CONSTRAINT `mail_ibfk_2` FOREIGN KEY (`listid`) REFERENCES `lists` (`listid`);

--
-- Các ràng buộc cho bảng `sub_lists`
--
ALTER TABLE `sub_lists`
  ADD CONSTRAINT `abc` FOREIGN KEY (`listid`) REFERENCES `lists` (`listid`),
  ADD CONSTRAINT `abcd` FOREIGN KEY (`email`) REFERENCES `subscribers` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
