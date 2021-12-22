-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2021 at 06:54 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoquanlythuvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `issues__5_`
--

CREATE TABLE `issues__5_` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(7) DEFAULT NULL,
  `COL 3` varchar(11) DEFAULT NULL,
  `COL 4` varchar(8) DEFAULT NULL,
  `COL 5` varchar(79) DEFAULT NULL,
  `COL 6` varchar(16) DEFAULT NULL,
  `COL 7` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `issues__5_`
--

INSERT INTO `issues__5_` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`) VALUES
('#', 'Tracker', 'Status', 'Priority', 'Subject', 'Assignee', 'Updated'),
('16', 'Bug', 'In Progress', 'Normal', 'Thông báo kho đăng nhập không thành công', 'Vy Tran', '12/23/2021 01:48 AM'),
('15', 'Bug', 'Done', 'Normal', 'Chức năng liên kết với internet', 'Vy Tran', '12/23/2021 12:17 AM'),
('14', 'Bug', 'Done', 'Normal', 'Chuyển giữa các trang giao diện với nhau', 'Ngo Thuong Admin', '12/23/2021 12:17 AM'),
('13', 'Bug', 'Done', 'Normal', 'Cập nhật đồng hồ hiện thị thời gian ở trang chủ', 'Vy Tran', '12/23/2021 12:17 AM'),
('12', 'Bug', 'Done', 'Normal', 'Hiển thị thông tin từ database', 'Ngo Thuong Admin', '12/23/2021 12:17 AM'),
('11', 'Bug', 'Done', 'Normal', 'Cảnh báo xóa đầu sách', 'Ngo Thuong Admin', '12/23/2021 12:17 AM'),
('10', 'Bug', 'Done', 'Normal', 'Thẻm phiếu mượn sách', 'Vy Tran', '12/23/2021 12:17 AM'),
('9', 'Bug', 'Done', 'Normal', 'Cảnh báo đăng nhập không thành công', 'Ngo Thuong Admin', '12/23/2021 12:17 AM'),
('8', 'Bug', 'In Progress', 'High', 'Lấy thông tin đối tượng từ nhiều trang', 'Vy Tran', '12/22/2021 11:52 PM'),
('7', 'Bug', 'In Progress', 'Normal', 'Xử lý đăng nhập', 'Vy Tran', '12/22/2021 11:52 PM'),
('6', 'Bug', 'In Progress', 'Normal', 'Lấy thông tin đối tượng từ trang Thành viên về trang phiếu mượn sách không được', 'Vy Tran', '12/22/2021 11:57 PM'),
('5', 'Bug', 'In Progress', 'Normal', 'kết nối với database', 'Ngo Thuong Admin', '12/22/2021 11:57 PM');

-- --------------------------------------------------------

--
-- Table structure for table `users__2_`
--

CREATE TABLE `users__2_` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(9) DEFAULT NULL,
  `COL 4` varchar(29) DEFAULT NULL,
  `COL 5` varchar(13) DEFAULT NULL,
  `COL 6` varchar(6) DEFAULT NULL,
  `COL 7` varchar(32) DEFAULT NULL,
  `COL 8` varchar(19) DEFAULT NULL,
  `COL 9` varchar(19) DEFAULT NULL,
  `COL 10` varchar(19) DEFAULT NULL,
  `COL 11` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users__2_`
--

INSERT INTO `users__2_` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`) VALUES
('Login', 'First name', 'Last name', 'Email', 'Administrator', 'Status', 'Two-factor authentication scheme', 'Created', 'Updated', 'Last connection', 'Password last changed'),
('ngothuong', 'Ngo Thuong', 'Admin', 'dh51805715@student.stu.edu.vn', 'Yes', 'active', 'disabled', '12/09/2021 10:07 AM', '12/22/2021 05:38 PM', '12/22/2021 05:38 PM', ''),
('vytrann', 'Vy', 'Tran', 'trankhanhvy7@gmail.com', 'No', 'active', 'disabled', '12/21/2021 11:25 PM', '12/21/2021 11:25 PM', '12/22/2021 05:11 PM', '12/21/2021 11:25 PM');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
