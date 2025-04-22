-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 01:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `status` enum('in','out') NOT NULL,
  `time_status` enum('morning','afternoon') NOT NULL,
  `semester` tinyint(1) NOT NULL,
  `schoolyear` varchar(10) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `backupid` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `backup_date` datetime NOT NULL,
  `schoolyear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`backupid`, `filename`, `backup_date`, `schoolyear`) VALUES
(1, 'backup-1742272743.zip', '2025-03-18 12:39:04', '2024-2025'),
(2, 'backup-1742313672.zip', '2025-03-19 00:01:13', '2024-2025'),
(3, 'backup-1742445892.zip', '2025-03-20 12:44:52', '2024-2025'),
(4, 'backup-1742533496.zip', '2025-03-21 13:04:56', '2024-2025'),
(5, 'backup-1742830420.zip', '2025-03-24 23:33:41', '2024-2025'),
(6, 'backup-1742905093.zip', '2025-03-25 20:18:14', '2024-2025'),
(7, 'backup-1742918409.zip', '2025-03-26 00:00:10', '2024-2025'),
(8, 'backup-1742918410.zip', '2025-03-26 00:00:11', '2024-2025'),
(9, 'backup-1743045125.zip', '2025-03-27 11:12:06', '2024-2025'),
(10, 'backup-1743256244.zip', '2025-03-29 21:50:44', '2024-2025'),
(11, 'backup-1743830979.zip', '2025-04-05 13:29:40', '2024-2025'),
(12, 'backup-1744200184.zip', '2025-04-09 20:03:05', '2024-2025'),
(13, 'backup-1744301149.zip', '2025-04-11 00:05:49', '2024-2025'),
(14, 'backup-1744422796.zip', '2025-04-12 09:53:17', '2024-2025'),
(15, 'backup-1744791257.zip', '2025-04-16 16:14:18', '2024-2025'),
(16, 'backup-1744859701.zip', '2025-04-17 11:15:01', '2024-2025'),
(17, 'backup-1744946998.zip', '2025-04-18 11:29:58', '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `course_name` varchar(150) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `course_name`, `departmentid`) VALUES
(1, 'BSBA FM', 3),
(2, 'BSP', 1),
(3, 'BPED', 3),
(4, 'BEED', 1),
(5, 'BECED', 1),
(6, 'BSMA', 2),
(7, 'BSED Math', 1),
(8, 'AB Philo', 2),
(9, 'BSED Science', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `department_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `department_name`) VALUES
(1, 'CBA'),
(2, 'CAS'),
(3, 'COED');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(11) NOT NULL,
  `event_name` varchar(150) NOT NULL,
  `event_place` varchar(150) NOT NULL,
  `event_start_date` date NOT NULL,
  `event_end_date` date NOT NULL,
  `event_starttime_am` time NOT NULL,
  `event_endtime_am` time NOT NULL,
  `event_starttime_pm` time NOT NULL,
  `event_endtime_pm` time NOT NULL,
  `event_starttime_am_in` time NOT NULL,
  `event_endtime_am_in` time NOT NULL,
  `event_starttime_am_out` time NOT NULL,
  `event_endtime_am_out` time NOT NULL,
  `event_starttime_pm_in` time NOT NULL,
  `event_endtime_pm_in` time NOT NULL,
  `event_starttime_pm_out` time NOT NULL,
  `event_endtime_pm_out` time NOT NULL,
  `status` enum('wholeday','morning','afternoon') NOT NULL,
  `semester` tinyint(1) NOT NULL,
  `schoolyear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `event_name`, `event_place`, `event_start_date`, `event_end_date`, `event_starttime_am`, `event_endtime_am`, `event_starttime_pm`, `event_endtime_pm`, `event_starttime_am_in`, `event_endtime_am_in`, `event_starttime_am_out`, `event_endtime_am_out`, `event_starttime_pm_in`, `event_endtime_pm_in`, `event_starttime_pm_out`, `event_endtime_pm_out`, `status`, `semester`, `schoolyear`) VALUES
(4, 'Christmas Party', 'Gym', '2025-03-26', '2025-03-26', '07:00:00', '11:00:00', '00:00:00', '00:00:00', '07:00:00', '08:00:00', '10:00:00', '11:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'morning', 2, '2024-2025'),
(5, 'Intramurals', 'Gym', '2025-03-28', '2025-03-28', '00:00:00', '00:00:00', '13:00:00', '16:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '13:00:00', '14:00:00', '15:00:00', '16:00:00', 'afternoon', 2, '2024-2025'),
(6, 'cba', 'Gym', '2025-04-16', '2025-04-16', '07:00:00', '11:00:00', '00:00:00', '00:00:00', '07:00:00', '08:00:00', '10:00:00', '11:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'morning', 2, '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `event_officer`
--

CREATE TABLE `event_officer` (
  `eventid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `days` varchar(100) NOT NULL,
  `status` enum('wholeday','morning','afternoon') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_officer`
--

INSERT INTO `event_officer` (`eventid`, `userid`, `days`, `status`) VALUES
(4, 3, '1', 'morning'),
(5, 3, '1', 'afternoon');

-- --------------------------------------------------------

--
-- Table structure for table `sanction`
--

CREATE TABLE `sanction` (
  `sanction_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `no_of_absences` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanction`
--

INSERT INTO `sanction` (`sanction_id`, `userid`, `item_name`, `no_of_absences`) VALUES
(1, 0, 'Cleaning Room', 2),
(2, 0, 'Cleaning Gym', 3),
(3, 0, 'NORMYN', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENTID` int(11) NOT NULL,
  `FIRSTNAME` varchar(150) NOT NULL,
  `MIDDLENAME` varchar(150) NOT NULL,
  `LASTNAME` varchar(150) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `COURSE` varchar(50) NOT NULL,
  `YEARSECTION` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `DATE_CREATED` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENTID`, `FIRSTNAME`, `MIDDLENAME`, `LASTNAME`, `DEPARTMENT`, `COURSE`, `YEARSECTION`, `USERNAME`, `PASSWORD`, `DATE_CREATED`) VALUES
(1, 'John', 'Smith', 'Doe', 'CBA', 'BSIT', '1A', 'test', 'test', '2025-04-22 18:18:46'),
(2, 'Isabelle', 'Marie', 'Lopez', 'COED', 'BEED', '1A', 'isabel01', '123456', '2025-04-22 18:19:56'),
(3, 'Jerome', 'D.', 'Santos', 'CIT', 'BSIT', '2B', 'jeromes', 'itpass', '2025-04-22 18:19:56'),
(4, 'Fatima', 'Cruz', 'Delos Reyes', 'CBA', 'BSBA', '3C', 'fatimadr', 'fatimabiz', '2025-04-22 18:19:56'),
(5, 'Lucas', 'James', 'Ocampo', 'COED', 'BSED', '1D', 'lucaso', 'bsepass', '2025-04-22 18:19:56'),
(6, 'Emily', 'Rose', 'Tan', 'CIT', 'BSCS', '4A', 'emilyrt', 'rosepass', '2025-04-22 18:19:56'),
(7, 'Daniel', 'Enrique', 'Reyes', 'COED', 'BPED', '2A', 'danreyes', 'p@ssword123', '2025-04-22 18:19:56'),
(8, 'Sofia', 'Mae', 'Garcia', 'CBA', 'BSBA', '3B', 'sofiag', 'bizgirl', '2025-04-22 18:19:56'),
(9, 'Gabriel', 'M.', 'Lim', 'CIT', 'BSIT', '4C', 'gablim', 'g4bl1m', '2025-04-22 18:19:56'),
(10, 'Trisha', 'Ann', 'Villanueva', 'COED', 'BEED', '2D', 'trishv', 'villapass', '2025-04-22 18:19:56'),
(11, 'Enzo', 'Martin', 'De Leon', 'CBA', 'BSBA', '1B', 'enzodl', 'marketpro', '2025-04-22 18:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `student_academic_details`
--

CREATE TABLE `student_academic_details` (
  `studentacademicdetailid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `year` tinyint(1) NOT NULL,
  `section` varchar(5) NOT NULL,
  `schoolyear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_academic_details`
--

INSERT INTO `student_academic_details` (`studentacademicdetailid`, `studentid`, `courseid`, `year`, `section`, `schoolyear`) VALUES
(1, 1, 2, 4, 'A', '2018-2019'),
(2, 2, 2, 4, 'A', '2018-2019'),
(3, 3, 2, 4, 'A', '2018-2019'),
(4, 4, 2, 4, 'A', '2018-2019'),
(5, 5, 2, 4, 'A', '2018-2019'),
(6, 6, 2, 4, 'A', '2018-2019'),
(7, 7, 2, 4, 'A', '2018-2019'),
(8, 8, 2, 4, 'A', '2018-2019'),
(9, 9, 2, 4, 'A', '2018-2019'),
(10, 10, 2, 4, 'A', '2018-2019'),
(11, 11, 2, 4, 'A', '2018-2019'),
(12, 12, 2, 4, 'A', '2018-2019'),
(13, 13, 2, 4, 'A', '2018-2019'),
(14, 14, 2, 4, 'A', '2018-2019'),
(15, 15, 2, 4, 'A', '2018-2019'),
(16, 16, 2, 4, 'A', '2018-2019'),
(17, 17, 2, 4, 'A', '2018-2019'),
(18, 18, 2, 4, 'A', '2018-2019'),
(19, 19, 2, 4, 'A', '2018-2019'),
(20, 20, 2, 4, 'A', '2018-2019'),
(21, 21, 7, 1, 'A', '2024-2025'),
(22, 22, 4, 1, 'A', '2024-2025'),
(23, 23, 4, 3, 'A', '2024-2025'),
(24, 24, 4, 1, 'A', '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `student_barcode`
--

CREATE TABLE `student_barcode` (
  `studentid` int(11) NOT NULL,
  `barcode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_barcode`
--

INSERT INTO `student_barcode` (`studentid`, `barcode`) VALUES
(1, '27000001'),
(2, '27000002'),
(3, '27000003'),
(4, '27000004'),
(5, '27000005'),
(6, '27000006'),
(7, '27000007'),
(8, '27000008'),
(9, '27000009'),
(10, '27000010'),
(11, '27000011'),
(12, '27000012'),
(13, '27000013'),
(14, '27000014'),
(15, '27000015'),
(16, '27000016'),
(17, '27000017'),
(18, '27000018'),
(19, '27000019'),
(20, '27000020'),
(21, '56789383'),
(22, '12345678'),
(23, '12345677'),
(24, '27000099');

-- --------------------------------------------------------

--
-- Table structure for table `student_yearlevel_update`
--

CREATE TABLE `student_yearlevel_update` (
  `studentyearlevelupdateid` int(11) NOT NULL,
  `schoolyear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_yearlevel_update`
--

INSERT INTO `student_yearlevel_update` (`studentyearlevelupdateid`, `schoolyear`) VALUES
(1, '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `middlename` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `image` varchar(70) NOT NULL,
  `position` enum('admin','officer') NOT NULL DEFAULT 'officer',
  `position_description` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `isdeleted` tinyint(1) NOT NULL,
  `semester` tinyint(1) NOT NULL,
  `schoolyear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `firstname`, `middlename`, `lastname`, `mobile`, `image`, `position`, `position_description`, `created_at`, `isdeleted`, `semester`, `schoolyear`) VALUES
(1, 'admin', '8ead58753335bb936bac6033b400c7f6f61f36ebc10660883de78ce070efe75a', 'Admin', 'Admin', 'Admin', '1234567890', '6ca9adb48926f04929b1b351a9f7275c.jpeg', 'admin', 'System Administrator', '2018-02-07 21:41:16', 0, 0, ''),
(2, 'test', '4c74c99afe579d5de34e75ffedbb5870f418ff37c5b55f02581b5b7df14c2911', 'Test', 'Test', 'Test', '9258692275', '94866f1d0444a3818c77747b4374a5b6.jpeg', 'officer', 'Senator', '2018-07-29 19:32:49', 0, 1, '2018-2019'),
(3, 'normyn123', '1c752909f14008b32de9d0602468f2eaf485d711c2bc5fc63bad1f28963fe77e', 'NORMYN', 'OBLIGADO', 'MAMAR', '0987654321', '', 'officer', 'Mayor', '2025-03-18 23:53:36', 0, 2, '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `userlogid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `datelog` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`userlogid`, `userid`, `description`, `datelog`) VALUES
(1, 2, 'Logged Out', '2018-08-01 11:51:00'),
(2, 1, 'Logged In', '2018-08-01 12:16:42'),
(3, 1, 'Logged In', '2018-08-05 15:08:24'),
(4, 1, 'Logged In', '2018-08-05 18:31:45'),
(5, 1, 'Logged Out', '2018-08-05 18:34:36'),
(6, 1, 'Logged Out', '2018-08-06 19:20:05'),
(7, 1, 'Logged In', '2018-08-06 19:20:07'),
(8, 1, 'Logged Out', '2018-08-06 19:45:12'),
(9, 1, 'Logged In', '2018-08-08 09:23:50'),
(10, 1, 'Logged Out', '2018-08-08 09:27:17'),
(11, 1, 'Logged In', '2025-03-18 12:39:19'),
(12, 1, 'Logged In', '2025-03-18 22:52:37'),
(13, 1, 'Logged Out', '2025-03-18 23:22:05'),
(14, 1, 'Logged In', '2025-03-18 23:25:09'),
(15, 1, 'Logged Out', '2025-03-18 23:32:29'),
(16, 1, 'Logged In', '2025-03-18 23:32:31'),
(17, 1, 'Logged In', '2025-03-18 23:32:31'),
(18, 1, 'Logged Out', '2025-03-18 23:37:07'),
(19, 1, 'Logged In', '2025-03-18 23:37:08'),
(20, 1, 'Logged Out', '2025-03-19 00:01:33'),
(21, 1, 'Logged In', '2025-03-19 00:01:35'),
(22, 1, 'Logged Out', '2025-03-19 00:05:36'),
(23, 1, 'Logged In', '2025-03-19 00:05:38'),
(24, 1, 'Logged Out', '2025-03-19 00:15:00'),
(25, 1, 'Logged In', '2025-03-19 00:15:01'),
(26, 1, 'Logged Out', '2025-03-19 00:22:45'),
(27, 1, 'Logged In', '2025-03-19 00:22:46'),
(28, 1, 'Logged In', '2025-03-19 00:22:58'),
(29, 1, 'Logged Out', '2025-03-19 00:30:25'),
(30, 1, 'Logged Out', '2025-03-19 00:30:32'),
(31, 1, 'Logged In', '2025-03-19 00:30:34'),
(32, 1, 'Logged In', '2025-03-20 12:45:25'),
(33, 1, 'Logged In', '2025-03-20 21:18:33'),
(34, 1, 'Logged Out', '2025-03-20 21:30:11'),
(35, 1, 'Logged In', '2025-03-20 21:30:12'),
(36, 1, 'Logged In', '2025-03-20 21:47:20'),
(37, 1, 'Logged Out', '2025-03-20 22:08:55'),
(38, 1, 'Logged In', '2025-03-20 22:08:57'),
(39, 1, 'Logged Out', '2025-03-20 22:59:52'),
(40, 1, 'Logged In', '2025-03-20 22:59:53'),
(41, 1, 'Logged In', '2025-03-21 13:04:59'),
(42, 1, 'Logged Out', '2025-03-21 13:31:15'),
(43, 1, 'Logged In', '2025-03-21 13:45:27'),
(44, 1, 'Logged Out', '2025-03-21 16:00:49'),
(45, 1, 'Logged In', '2025-03-21 16:00:58'),
(46, 1, 'Logged Out', '2025-03-21 16:10:59'),
(47, 1, 'Logged In', '2025-03-21 16:11:01'),
(48, 1, 'Logged Out', '2025-03-21 17:05:10'),
(49, 1, 'Logged In', '2025-03-21 17:05:11'),
(50, 1, 'Logged Out', '2025-03-21 17:14:18'),
(51, 1, 'Logged In', '2025-03-21 17:14:21'),
(52, 1, 'Logged Out', '2025-03-21 17:28:42'),
(53, 1, 'Logged In', '2025-03-21 17:31:25'),
(54, 1, 'Logged Out', '2025-03-21 17:34:06'),
(55, 1, 'Logged In', '2025-03-21 17:34:14'),
(56, 1, 'Logged Out', '2025-03-21 17:48:44'),
(57, 1, 'Logged In', '2025-03-21 17:48:45'),
(58, 1, 'Logged In', '2025-03-24 23:34:15'),
(59, 1, 'Logged Out', '2025-03-24 23:34:55'),
(60, 1, 'Logged In', '2025-03-24 23:35:23'),
(61, 1, 'Logged In', '2025-03-24 23:45:33'),
(62, 1, 'Logged In', '2025-03-25 20:18:22'),
(63, 1, 'Logged Out', '2025-03-25 21:02:13'),
(64, 1, 'Logged In', '2025-03-25 21:02:22'),
(65, 1, 'Logged Out', '2025-03-25 23:42:10'),
(66, 1, 'Logged In', '2025-03-25 23:54:15'),
(67, 1, 'Logged Out', '2025-03-25 23:54:23'),
(68, 1, 'Logged In', '2025-03-25 23:58:08'),
(69, 1, 'Logged Out', '2025-03-25 23:58:13'),
(70, 1, 'Logged In', '2025-03-26 00:15:37'),
(71, 1, 'Logged Out', '2025-03-26 00:35:16'),
(72, 1, 'Logged In', '2025-03-26 00:35:25'),
(73, 1, 'Logged Out', '2025-03-26 00:40:42'),
(74, 1, 'Logged In', '2025-03-26 00:40:51'),
(75, 1, 'Logged Out', '2025-03-26 00:52:20'),
(76, 1, 'Logged In', '2025-03-26 00:52:32'),
(77, 1, 'Logged Out', '2025-03-26 01:11:16'),
(78, 1, 'Logged In', '2025-03-26 01:11:24'),
(79, 1, 'Logged Out', '2025-03-26 01:28:26'),
(80, 1, 'Logged In', '2025-03-26 01:28:34'),
(81, 1, 'Logged Out', '2025-03-26 01:32:41'),
(82, 1, 'Logged In', '2025-03-26 01:32:49'),
(83, 1, 'Logged Out', '2025-03-26 01:33:18'),
(84, 1, 'Logged In', '2025-03-26 01:33:49'),
(85, 1, 'Logged Out', '2025-03-26 01:36:05'),
(86, 1, 'Logged In', '2025-03-26 01:36:16'),
(87, 1, 'Logged Out', '2025-03-26 01:36:42'),
(88, 1, 'Logged In', '2025-03-27 11:12:31'),
(89, 1, 'Logged Out', '2025-03-27 11:22:46'),
(90, 1, 'Logged In', '2025-03-27 11:23:02'),
(91, 1, 'Logged Out', '2025-03-27 11:24:08'),
(92, 1, 'Logged In', '2025-03-27 11:25:47'),
(93, 1, 'Logged In', '2025-03-29 21:56:25'),
(94, 1, 'Logged In', '2025-04-05 13:29:56'),
(95, 1, 'Logged In', '2025-04-09 20:03:13'),
(96, 1, 'Logged Out', '2025-04-11 01:22:35'),
(97, 1, 'Logged In', '2025-04-11 01:28:26'),
(98, 1, 'Logged In', '2025-04-12 09:53:25'),
(99, 1, 'Logged Out', '2025-04-12 12:16:29'),
(100, 1, 'Logged In', '2025-04-12 12:16:39'),
(101, 1, 'Logged Out', '2025-04-16 16:17:17'),
(102, 1, 'Logged In', '2025-04-16 16:17:44'),
(103, 1, 'Logged Out', '2025-04-17 11:15:10'),
(104, 1, 'Logged In', '2025-04-17 11:23:09'),
(105, 1, 'Logged Out', '2025-04-17 11:24:23'),
(106, 1, 'Logged In', '2025-04-17 12:08:35'),
(107, 1, 'Logged Out', '2025-04-17 12:13:52'),
(108, 1, 'Logged In', '2025-04-17 12:40:41'),
(109, 1, 'Logged Out', '2025-04-17 12:57:32'),
(110, 1, 'Logged In', '2025-04-17 12:57:50'),
(111, 1, 'Logged Out', '2025-04-17 13:06:09'),
(112, 1, 'Logged In', '2025-04-17 13:06:29'),
(113, 1, 'Logged Out', '2025-04-17 13:07:22'),
(114, 1, 'Logged In', '2025-04-17 15:01:33'),
(115, 1, 'Logged Out', '2025-04-17 15:02:18'),
(116, 1, 'Logged In', '2025-04-17 15:02:39'),
(117, 1, 'Logged Out', '2025-04-17 15:04:13'),
(118, 1, 'Logged In', '2025-04-17 15:56:36'),
(119, 1, 'Logged Out', '2025-04-17 16:01:10'),
(120, 1, 'Logged In', '2025-04-17 16:04:17'),
(121, 1, 'Logged Out', '2025-04-17 16:06:14'),
(122, 1, 'Logged In', '2025-04-18 11:29:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceid`);

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`backupid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `sanction`
--
ALTER TABLE `sanction`
  ADD PRIMARY KEY (`sanction_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENTID`);

--
-- Indexes for table `student_academic_details`
--
ALTER TABLE `student_academic_details`
  ADD PRIMARY KEY (`studentacademicdetailid`);

--
-- Indexes for table `student_yearlevel_update`
--
ALTER TABLE `student_yearlevel_update`
  ADD PRIMARY KEY (`studentyearlevelupdateid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`userlogid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `backupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sanction`
--
ALTER TABLE `sanction`
  MODIFY `sanction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `STUDENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_academic_details`
--
ALTER TABLE `student_academic_details`
  MODIFY `studentacademicdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student_yearlevel_update`
--
ALTER TABLE `student_yearlevel_update`
  MODIFY `studentyearlevelupdateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `userlogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
