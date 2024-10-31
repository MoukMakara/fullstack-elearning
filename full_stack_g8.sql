-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:6306:6306
-- Generation Time: Jun 27, 2024 at 04:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `full_stack_g8`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `Description` text DEFAULT NULL,
  `ParentId` int(11) DEFAULT 0,
  `Image` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Name`, `Description`, `ParentId`, `Image`, `IsActive`, `CreateBy`, `CreateAt`) VALUES
(1, 'Programming', 'Programming', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(2, 'Web', 'Web', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(3, 'Web-Full-Stack', 'Web-Full-Stack', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(4, 'API', 'API', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(5, 'Mobile', 'Mobile', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(6, 'Desktop App', 'Desktop App', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(7, 'Database', 'Database', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(8, 'UX/UI', 'UX/UI', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(9, 'Video Editor', 'Video Editor', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(10, 'Designer', 'Designer', NULL, NULL, 1, NULL, '2024-05-13 14:08:23'),
(11, 'Security', 'Security', NULL, NULL, 1, NULL, '2024-05-13 14:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `Id` int(11) NOT NULL,
  `TeacherId` int(11) DEFAULT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `CourseGeneration` int(5) DEFAULT NULL,
  `Course_Price` decimal(6,2) DEFAULT 0.00 COMMENT 'value from table course',
  `Class_Discount` decimal(6,2) DEFAULT 0.00,
  `Class_Discount_Price` decimal(6,2) DEFAULT 0.00,
  `Class_Price` decimal(6,2) DEFAULT 0.00,
  `LearningType` varchar(120) NOT NULL,
  `ClassStatus` varchar(120) NOT NULL,
  `ClassShiff` varchar(120) NOT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `Note` text DEFAULT 1,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`Id`, `TeacherId`, `CourseId`, `CourseGeneration`, `Course_Price`, `Class_Discount`, `Class_Discount_Price`, `Class_Price`, `LearningType`, `ClassStatus`, `ClassShiff`, `StartTime`, `EndTime`, `StartDate`, `EndDate`, `IsActive`, `Note`, `CreateBy`, `CreateAt`) VALUES
(1, 1, 1, 1, 50.00, 0.00, 0.00, 50.00, 'Online Meeting', 'Pending', 'Weekday Night', '19:00:00', '20:00:00', '2024-06-26 00:00:00', '2024-09-26 00:00:00', 1, 'Monday-Thursday', NULL, '2024-06-20 08:22:06'),
(2, 1, 2, 1, 50.00, 0.00, 0.00, 50.00, 'Online Meeting', 'Pending', 'Weekday Night', '20:00:00', '21:00:00', '2024-06-26 00:00:00', '2024-09-26 00:00:00', 1, 'Monday-Thursday', NULL, '2024-06-20 08:22:06'),
(3, 1, 3, 1, 50.00, 0.00, 0.00, 50.00, 'Online Meeting', 'Pending', 'Weekday Night', '21:00:00', '22:00:00', '2024-06-26 00:00:00', '2024-09-26 00:00:00', 1, 'Monday-Thursday', NULL, '2024-06-20 08:22:06'),
(4, 3, 4, 1, NULL, NULL, NULL, 60.00, 'Online Meeting', 'Pending', 'Weekday (Night)', '20:00:00', '21:00:00', '2024-06-25 00:00:00', '2024-08-25 00:00:00', 1, 'Monday to Thursday', NULL, '2024-06-23 04:00:40'),
(5, 7, 4, 2, NULL, NULL, NULL, 60.00, 'Online Meeting', 'Pending', 'Weekday (Afternoon)', '14:00:00', '15:00:00', '2024-06-24 00:00:00', '2024-08-24 00:00:00', 1, 'Monday to Thursday ', NULL, '2024-06-23 04:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Id` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Name` varchar(120) NOT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `TotalHour` decimal(4,2) DEFAULT 0.00,
  `Price` decimal(4,2) DEFAULT 0.00,
  `IsActive` tinyint(1) DEFAULT 1,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Id`, `CategoryId`, `Name`, `Description`, `Image`, `TotalHour`, `Price`, `IsActive`, `CreateBy`, `CreateAt`) VALUES
(1, 1, 'C Programming', 'C Programming', NULL, 40.00, 50.00, 1, NULL, '2024-05-13 14:10:54'),
(2, 1, 'C++/C++ OOP', 'C++/C++ OOP', 'ImageUpload-1718893223738-32587458.png', 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(3, 1, 'Basic Python', 'Basic Python', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(4, 1, 'Basic C#', 'Basic C#', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(5, 1, 'Basic Java', 'Basic Java', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(6, 2, 'HTML/CSS', 'HTML/CSS', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(7, 2, 'JavaScript', 'JavaScript', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(8, 2, 'ReactJs', 'ReactJs', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(9, 2, 'NextJs', 'NextJs', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(10, 2, 'VueJs', 'VueJs', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(11, 2, 'AngularJs', 'AngularJs', NULL, 40.00, 60.00, 1, NULL, '2024-05-13 14:10:54'),
(12, 2, 'PHP', 'PHP', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(13, 2, 'Laravel', 'Laravel', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(14, 3, 'React-Node-MySQL', 'React-Node-MySQL', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(15, 3, 'React-JavaSpring-MySQL', 'React-JavaSpring-MySQL', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(16, 3, 'React-Laravel-MySQL', 'React-Laravel-MySQL', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(17, 4, 'Laravel-MySQL', 'Laravel-MySQL', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(18, 4, 'Node/Express-MySQL', 'Node/Express-MySQL', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(19, 4, 'NestJs-MySQL', 'NestJs-MySQL', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(20, 4, 'JavaSpring-MySQL', 'JavaSpring-MySQL', NULL, 40.00, 70.00, 1, NULL, '2024-05-13 14:10:54'),
(21, 2, 'ReactNative', 'Build cross ....', NULL, 60.00, 10.00, 1, NULL, '2024-06-13 14:22:15'),
(22, 1, 'C Programing test101', 'C Programing test101', NULL, 50.00, 12.00, 1, NULL, '2024-06-19 14:12:19'),
(23, 1, 'C Programing test102', 'C Programing test101', 'ImageUpload-1718806451015-811285334', 34.00, 12.00, 1, NULL, '2024-06-19 14:14:11'),
(24, 1, 'C test 103', 'C test 103', NULL, 12.00, 12.00, 1, NULL, '2024-06-19 14:16:30'),
(25, 1, 'test104', 'test104', 'ImageUpload-1718806743669-558274519.undefined', 12.00, 12.00, 1, NULL, '2024-06-19 14:19:03'),
(26, 1, 'Testin102', 'undefined', 'ImageUpload-1718806793034-720831673.undefined', 12.00, 12.00, 1, NULL, '2024-06-19 14:19:53'),
(27, 1, 'aa', 'undefined', 'ImageUpload-1718806843539-418879926.png', 12.00, 12.00, 1, NULL, '2024-06-19 14:20:43'),
(28, 4, 'NestJS', 'NestJS', 'ImageUpload-1719240433336-696083736.png', 59.00, 59.00, 1, NULL, '2024-06-19 23:41:28'),
(29, 2, 'Testin1099', '12', NULL, 12.00, 12.00, 1, NULL, '2024-06-19 23:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `Code` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Id`, `Name`, `Code`) VALUES
(1, 'Admin', 'admin'),
(2, 'Teacher', 'teacher'),
(3, 'Student', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(120) NOT NULL,
  `LastName` varchar(120) NOT NULL,
  `Gender` tinyint(1) DEFAULT 1,
  `Dob` datetime DEFAULT NULL,
  `Tel` varchar(18) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Current_Address` text DEFAULT NULL,
  `Note` text DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `FirstName`, `LastName`, `Gender`, `Dob`, `Tel`, `Image`, `Email`, `Current_Address`, `Note`, `IsActive`, `CreateBy`, `CreateAt`) VALUES
(1, 'So', 'Somnang', 1, '1999-11-22 00:00:00', '096111222', '', 'somnang@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, NULL, '2024-05-13 13:45:22'),
(2, 'So', 'Dara', 1, '1999-11-22 00:00:00', '096111223', NULL, 'daraso@gmail.com', '#123 St12 SanSok Phnom Penh', NULL, NULL, NULL, '2024-05-13 13:46:10'),
(3, 'Chan', 'Sokna', NULL, '1991-02-08 00:00:00', '0998888111', NULL, 'soknachan@gmail.com', '#23 st44 PP', NULL, NULL, NULL, '2024-06-13 13:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `studentpayment`
--

CREATE TABLE `studentpayment` (
  `Id` int(11) NOT NULL,
  `ClassRoomId` int(11) DEFAULT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `Payment` decimal(6,2) DEFAULT 0.00,
  `PaymentMethod` varchar(120) NOT NULL,
  `PaymentDate` datetime NOT NULL,
  `ImageRef` varchar(255) DEFAULT NULL,
  `Note` text DEFAULT NULL,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `studentpayment`
--

INSERT INTO `studentpayment` (`Id`, `ClassRoomId`, `StudentId`, `Payment`, `PaymentMethod`, `PaymentDate`, `ImageRef`, `Note`, `CreateBy`, `CreateAt`) VALUES
(1, 1, 1, 20.00, 'ABA', '2024-06-20 15:35:47', NULL, NULL, 'Dara', '2024-06-20 08:35:47'),
(2, 1, 2, 30.00, 'ABA', '2024-06-20 15:35:47', NULL, NULL, 'Dara', '2024-06-20 08:35:47'),
(3, 1, 3, 50.00, 'ABA', '2024-06-20 15:35:47', NULL, NULL, 'Dara', '2024-06-20 08:35:47'),
(4, 3, 3, 50.00, 'ABA', '2024-06-23 00:00:00', NULL, NULL, NULL, '2024-06-23 09:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `studentregister`
--

CREATE TABLE `studentregister` (
  `ClassRoomId` int(11) NOT NULL,
  `StudentId` int(11) NOT NULL,
  `Discount` decimal(6,2) DEFAULT 0.00,
  `Discount_Price` decimal(6,2) DEFAULT 0.00,
  `TotalToPay` decimal(6,2) DEFAULT 0.00,
  `IsCompletedPaid` tinyint(1) DEFAULT 0,
  `Note` text DEFAULT NULL,
  `RegisterAt` datetime DEFAULT NULL,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `studentregister`
--

INSERT INTO `studentregister` (`ClassRoomId`, `StudentId`, `Discount`, `Discount_Price`, `TotalToPay`, `IsCompletedPaid`, `Note`, `RegisterAt`, `CreateBy`, `CreateAt`) VALUES
(1, 1, 0.00, 0.00, 50.00, 1, NULL, NULL, 'Dara', '2024-06-20 08:33:10'),
(1, 2, 0.00, 0.00, 50.00, 1, NULL, NULL, 'Dara', '2024-06-20 08:33:10'),
(1, 3, 0.00, 0.00, 50.00, 1, NULL, NULL, 'Dara', '2024-06-20 08:33:10'),
(2, 1, 0.00, 0.00, 50.00, 1, NULL, '0000-00-00 00:00:00', 'Dara', '2024-06-20 08:57:12'),
(2, 2, 0.00, 0.00, 50.00, 1, NULL, '0000-00-00 00:00:00', 'Dara', '2024-06-20 08:57:12'),
(3, 3, NULL, NULL, 50.00, NULL, NULL, '0000-00-00 00:00:00', NULL, '2024-06-23 09:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(120) NOT NULL,
  `LastName` varchar(120) NOT NULL,
  `Gender` tinyint(1) DEFAULT 1,
  `Dob` datetime DEFAULT NULL,
  `Tel` varchar(18) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Current_Address` text DEFAULT NULL,
  `Note` text DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Id`, `FirstName`, `LastName`, `Gender`, `Dob`, `Tel`, `Image`, `Email`, `Current_Address`, `Note`, `IsActive`, `CreateBy`, `CreateAt`) VALUES
(1, 'Sum', 'Kimsong', 1, '1999-12-22 00:00:00', '096111122', '', 'kimsongsum@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, NULL, '2024-01-02 14:24:22'),
(2, 'Pun', 'Daro', 1, '1999-11-22 00:00:00', '096111123', '', 'daropun@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin101', '2024-02-02 14:29:58'),
(3, 'So', 'Somnang', 1, '1999-11-22 00:00:00', '096111124', '', 'Somnang@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin106', '2024-03-02 14:31:14'),
(5, 'So', 'Daren', 0, '1999-11-22 00:00:00', '096111126', '', 'daren@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin106', '2024-05-02 14:41:03'),
(6, 'Porn', 'Sokha', 1, '1999-12-22 00:00:00', '096111132', '', 'pornsokha@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, NULL, '2024-05-02 07:24:22'),
(7, 'Porn', 'Panet', 1, '1999-11-22 00:00:00', '096111143', '', 'phornpanet@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin101', '2024-05-02 07:29:58'),
(8, 'Ty', 'Sotey', 1, '1999-11-22 00:00:00', '096111154', '', 'tysotey@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin106', '2024-05-02 07:31:14'),
(9, 'Ty', 'Soma', 0, '1999-11-22 00:00:00', '096111166', '', 'tysoma@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin106', '2024-05-02 07:41:03'),
(10, 'Tha', 'Sokha', 1, '1999-12-22 00:00:00', '096111138', '', 'thasokha@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, NULL, '2024-05-02 07:24:22'),
(11, 'Tha', 'Panet', 1, '1999-11-22 00:00:00', '096111148', '', 'thanpanet@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin101', '2024-05-02 07:29:58'),
(12, 'Sok', 'Sotey', 1, '1999-11-22 00:00:00', '096111158', '', 'soksotey@gmail.com', '#123 St12 SanSok Phnom Penh', '', 1, 'Admin106', '2024-05-02 07:31:14'),
(18, 'Dara', 'Kok', 1, '2010-02-11 00:00:00', '09988881111', NULL, 'dara@gmailcom', NULL, NULL, 0, NULL, '2024-06-05 14:19:41'),
(19, 'Dara', 'Ko', 1, '2006-02-01 00:00:00', '09988881112', NULL, 'darako@gmailcom', '#223 st 222 PPP', NULL, 0, NULL, '2024-06-05 14:21:53'),
(20, 'Sok', 'Sreyna', 0, '1999-02-18 00:00:00', '0998888113', NULL, 'sreyna@gmail.com', '#1234 St455 PP', NULL, 0, NULL, '2024-06-05 14:26:12'),
(23, 'Chan', 'Dara', 1, '2024-06-10 00:00:00', '0998888111', NULL, 'chandara@gmail.com', '#123 st2323', NULL, 0, NULL, '2024-06-10 13:41:48'),
(24, 'Chan', 'Sokna', 0, '2024-06-02 00:00:00', '0998888114', NULL, 'chansoka@gmail.com', '#2222 st45 Battam Bong', NULL, 0, NULL, '2024-06-10 13:51:41'),
(27, 'Chan', 'Darom', 0, '1990-01-01 00:00:00', '0998888118', NULL, 'chandaro1990@gmail.com', '#123 St334 PP', NULL, 0, NULL, '2024-06-10 15:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `Username` varchar(120) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `CreateBy` varchar(120) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `RoleId`, `Username`, `Password`, `IsActive`, `CreateBy`, `CreateAt`) VALUES
(2, 1, 'Admin101', '$2b$10$TYlFceXPuDJb.1kcycjeTezU4HrBR4QHi85PVZnxBPrrPAUZVXZ.K', 1, NULL, '2024-04-25 14:00:42'),
(3, 2, 'Admin102', '$2b$10$TYlFceXPuDJb.1kcycjeTezU4HrBR4QHi85PVZnxBPrrPAUZVXZ.K', NULL, NULL, '2024-04-29 14:16:22'),
(6, 3, 'Admin103', '$2b$10$TYlFceXPuDJb.1kcycjeTezU4HrBR4QHi85PVZnxBPrrPAUZVXZ.K', NULL, NULL, '2024-04-29 14:22:01'),
(7, 2, 'Admin104', '$2b$10$TYlFceXPuDJb.1kcycjeTezU4HrBR4QHi85PVZnxBPrrPAUZVXZ.K', NULL, NULL, '2024-04-29 14:24:40'),
(9, 2, 'Admin105', '$2b$10$TYlFceXPuDJb.1kcycjeTezU4HrBR4QHi85PVZnxBPrrPAUZVXZ.K', NULL, NULL, '2024-04-29 14:28:06'),
(10, 2, 'Admin106', '$2b$10$TYlFceXPuDJb.1kcycjeTezU4HrBR4QHi85PVZnxBPrrPAUZVXZ.K', NULL, NULL, '2024-04-30 13:48:47'),
(11, 2, 'Admin107', '$2b$10$TYlFceXPuDJb.1kcycjeTezU4HrBR4QHi85PVZnxBPrrPAUZVXZ.K', NULL, NULL, '2024-04-30 13:58:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `TeacherId` (`TeacherId`),
  ADD KEY `CourseId` (`CourseId`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Tel` (`Tel`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `studentpayment`
--
ALTER TABLE `studentpayment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ClassRoomId` (`ClassRoomId`),
  ADD KEY `StudentId` (`StudentId`);

--
-- Indexes for table `studentregister`
--
ALTER TABLE `studentregister`
  ADD PRIMARY KEY (`ClassRoomId`,`StudentId`),
  ADD KEY `StudentId` (`StudentId`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Tel` (`Tel`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `RoleId` (`RoleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentpayment`
--
ALTER TABLE `studentpayment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`TeacherId`) REFERENCES `teacher` (`Id`),
  ADD CONSTRAINT `classroom_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`Id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`);

--
-- Constraints for table `studentpayment`
--
ALTER TABLE `studentpayment`
  ADD CONSTRAINT `studentpayment_ibfk_1` FOREIGN KEY (`ClassRoomId`) REFERENCES `classroom` (`Id`),
  ADD CONSTRAINT `studentpayment_ibfk_2` FOREIGN KEY (`StudentId`) REFERENCES `student` (`Id`);

--
-- Constraints for table `studentregister`
--
ALTER TABLE `studentregister`
  ADD CONSTRAINT `studentregister_ibfk_1` FOREIGN KEY (`ClassRoomId`) REFERENCES `classroom` (`Id`),
  ADD CONSTRAINT `studentregister_ibfk_2` FOREIGN KEY (`StudentId`) REFERENCES `student` (`Id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
