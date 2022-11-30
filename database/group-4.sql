-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 01:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coding_master`
--
CREATE DATABASE IF NOT EXISTS `coding_master` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `coding_master`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `about_image` varchar(200) NOT NULL,
  `no_students` int(11) NOT NULL,
  `no_courses` int(11) NOT NULL,
  `no_trainers` int(11) NOT NULL,
  `no_events` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `about_image`, `no_students`, `no_courses`, `no_trainers`, `no_events`) VALUES
(12, 'This is About CODING MASTER11', '        1111                                                                                               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit.\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate                                                                                                                                                                    ', 'Chrysanthemum.jpg', 200, 30, 40, 200);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `course_fee` int(11) NOT NULL,
  `course_image` varchar(250) NOT NULL,
  `trainer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `description`, `course_fee`, `course_image`, `trainer_id`) VALUES
(4, 'PHP step by step Updated', '                                                                                                \r\n           PHP       updated                                            \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                  \r\n           PHP                                                                          ', 10000, 'Penguins.jpg', 1),
(8, 'Python step step(2020)', '                                                                                                                                                                                                                                                                                                \r\n                         python    this is complete course                                                                                                                                                                                                                                 ', 13000, 'Tulips.jpg', 3),
(9, 'Master Javascript', '                                                     Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                                                                          Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                                                                          Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                                                                          Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                                                                          Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                                                                          Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                                                                          Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                                                                          Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                              Javascript                                     ', 9000, 'Koala.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `about_trainer` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `tainer_image` varchar(200) NOT NULL,
  `domain` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `about_trainer`, `course_id`, `tainer_image`, `domain`) VALUES
(1, 'john', 'php Trainer 12yrs. experience', 0, '', 'php'),
(2, 'Smith', 'php Trainer', 0, '', 'php'),
(3, 'Albert', 'python Trainer 10 yr. experience', 0, '', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT '1' COMMENT '1=guest, 2=registered, 9=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '9'),
(2, 'guest ', 'guest@gmail.com', '35675e68f4b5af7b995d9205ad0fc43842f16450', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `cohort3`
--
CREATE DATABASE IF NOT EXISTS `cohort3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cohort3`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `User_Type` text NOT NULL,
  `SessionID` varchar(100) NOT NULL,
  `UserID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Email`, `Password`, `User_Type`, `SessionID`, `UserID`) VALUES
(1, 'daniel', 'dm@gmail.com', '$2y$10$n1JpJsWipKXHCICmKEm1i.0JOgkeJFIpDSE2hVLRMNM1q0aGAYfeq', 'user', '', ''),
(2, 'blogs', 'de@gmx.com', '$2y$10$XhcglVISDKVtmLZDBqY5w.ZjDkEx4mbfCy9jB7lVuro0nlwJ5C3Qu', 'user', 'jguZyTDhEm', 'nqXV4obk');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` int(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- Database: `dbattendance`
--
CREATE DATABASE IF NOT EXISTS `dbattendance` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbattendance`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `status` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_status` enum('morning','afternoon') COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` tinyint(1) NOT NULL,
  `schoolyear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `backupid` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `backup_date` datetime NOT NULL,
  `schoolyear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`backupid`, `filename`, `backup_date`, `schoolyear`) VALUES
(1, 'backup-1666170169.zip', '2022-10-19 17:02:50', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `course_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `course_name`, `departmentid`) VALUES
(1, 'BSED', 3),
(2, 'BSIS', 1),
(3, 'BEED', 3),
(4, 'BSCE', 1),
(5, 'BSIT', 1),
(6, 'AB Social Science', 2),
(7, 'BSHRM', 1),
(8, 'AB English', 2),
(9, 'BS Psychology', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `department_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `department_name`) VALUES
(1, 'CIT'),
(2, 'CAS'),
(3, 'COED');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(11) NOT NULL,
  `event_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_place` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `status` enum('wholeday','morning','afternoon') COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` tinyint(1) NOT NULL,
  `schoolyear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `event_name`, `event_place`, `event_start_date`, `event_end_date`, `event_starttime_am`, `event_endtime_am`, `event_starttime_pm`, `event_endtime_pm`, `event_starttime_am_in`, `event_endtime_am_in`, `event_starttime_am_out`, `event_endtime_am_out`, `event_starttime_pm_in`, `event_endtime_pm_in`, `event_starttime_pm_out`, `event_endtime_pm_out`, `status`, `semester`, `schoolyear`) VALUES
(1, 'Test Wedding', 'SILAY CITY', '2018-08-05', '2018-08-05', '07:00:00', '11:00:00', '13:00:00', '16:00:00', '07:00:00', '08:00:00', '10:00:00', '11:00:00', '13:00:00', '14:00:00', '15:00:00', '16:00:00', 'wholeday', 1, '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `event_officer`
--

CREATE TABLE `event_officer` (
  `eventid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `days` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('wholeday','morning','afternoon') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanction`
--

CREATE TABLE `sanction` (
  `sanction_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_absences` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `firstname` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `firstname`, `middlename`, `lastname`, `mobile`, `image`, `created_at`) VALUES
(1, 'Firstname 1', 'Middlename 1', 'Lastname 1', '9258692271', '', '2018-08-05 15:50:52'),
(2, 'Firstname 2', 'Middlename 2', 'Lastname 2', '9258692272', '', '2018-08-05 15:50:52'),
(3, 'Firstname 3', 'Middlename 3', 'Lastname 3', '9258692273', '', '2018-08-05 15:50:52'),
(4, 'Firstname 4', 'Middlename 4', 'Lastname 4', '9258692274', '', '2018-08-05 15:50:53'),
(5, 'Firstname 5', 'Middlename 5', 'Lastname 5', '9258692275', '', '2018-08-05 15:50:53'),
(6, 'Firstname 6', 'Middlename 6', 'Lastname 6', '9258692276', '', '2018-08-05 15:50:53'),
(7, 'Firstname 7', 'Middlename 7', 'Lastname 7', '9258692277', '', '2018-08-05 15:50:53'),
(8, 'Firstname 8', 'Middlename 8', 'Lastname 8', '9258692278', '', '2018-08-05 15:50:53'),
(9, 'Firstname 9', 'Middlename 9', 'Lastname 9', '9258692279', '', '2018-08-05 15:50:53'),
(10, 'Firstname 10', 'Middlename 10', 'Lastname 10', '9258692280', '', '2018-08-05 15:50:53'),
(11, 'Firstname 11', 'Middlename 11', 'Lastname 11', '9258692281', '', '2018-08-05 15:50:54'),
(12, 'Firstname 12', 'Middlename 12', 'Lastname 12', '9258692282', '', '2018-08-05 15:50:54'),
(13, 'Firstname 13', 'Middlename 13', 'Lastname 13', '9258692283', '', '2018-08-05 15:50:54'),
(14, 'Firstname 14', 'Middlename 14', 'Lastname 14', '9258692284', '', '2018-08-05 15:50:54'),
(15, 'Firstname 15', 'Middlename 15', 'Lastname 15', '9258692285', '', '2018-08-05 15:50:54'),
(16, 'Firstname 16', 'Middlename 16', 'Lastname 16', '9258692286', '', '2018-08-05 15:50:54'),
(17, 'Firstname 17', 'Middlename 17', 'Lastname 17', '9258692287', '', '2018-08-05 15:50:54'),
(18, 'Firstname 18', 'Middlename 18', 'Lastname 18', '9258692288', '', '2018-08-05 15:50:54'),
(19, 'Firstname 19', 'Middlename 19', 'Lastname 19', '9258692289', '', '2018-08-05 15:50:54'),
(20, 'Firstname 20', 'Middlename 20', 'Lastname 20', '9258692290', '', '2018-08-05 15:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `student_academic_details`
--

CREATE TABLE `student_academic_details` (
  `studentacademicdetailid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `year` tinyint(1) NOT NULL,
  `section` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schoolyear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
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
(20, 20, 2, 4, 'A', '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `student_barcode`
--

CREATE TABLE `student_barcode` (
  `studentid` int(11) NOT NULL,
  `barcode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
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
(20, '27000020');

-- --------------------------------------------------------

--
-- Table structure for table `student_yearlevel_update`
--

CREATE TABLE `student_yearlevel_update` (
  `studentyearlevelupdateid` int(11) NOT NULL,
  `schoolyear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_yearlevel_update`
--

INSERT INTO `student_yearlevel_update` (`studentyearlevelupdateid`, `schoolyear`) VALUES
(1, '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` enum('admin','officer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'officer',
  `position_description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `isdeleted` tinyint(1) NOT NULL,
  `semester` tinyint(1) NOT NULL,
  `schoolyear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `firstname`, `middlename`, `lastname`, `mobile`, `image`, `position`, `position_description`, `created_at`, `isdeleted`, `semester`, `schoolyear`) VALUES
(1, 'admin', '8ead58753335bb936bac6033b400c7f6f61f36ebc10660883de78ce070efe75a', 'Admin', 'Admin', 'Admin', '1234567890', '6ca9adb48926f04929b1b351a9f7275c.jpeg', 'admin', 'System Administrator', '2018-02-07 21:41:16', 0, 0, ''),
(2, 'test', '4c74c99afe579d5de34e75ffedbb5870f418ff37c5b55f02581b5b7df14c2911', 'Test', 'Test', 'Test', '9258692275', '94866f1d0444a3818c77747b4374a5b6.jpeg', 'officer', 'Senator', '2018-07-29 19:32:49', 0, 1, '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `userlogid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(10, 1, 'Logged Out', '2018-08-08 09:27:17');

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
  ADD PRIMARY KEY (`studentid`);

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
  MODIFY `backupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanction`
--
ALTER TABLE `sanction`
  MODIFY `sanction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_academic_details`
--
ALTER TABLE `student_academic_details`
  MODIFY `studentacademicdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_yearlevel_update`
--
ALTER TABLE `student_yearlevel_update`
  MODIFY `studentyearlevelupdateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `userlogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `event_db`
--
CREATE DATABASE IF NOT EXISTS `event_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `event_db`;

-- --------------------------------------------------------

--
-- Table structure for table `event_audience`
--

CREATE TABLE `event_audience` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_audience`
--

INSERT INTO `event_audience` (`id`, `event_id`, `name`, `contact`, `email`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'Claire Blake', '09123456789', 'cblake@sample.com', '09123456789', 0, '2021-07-26 11:59:02', NULL),
(3, 1, 'Mike Williams', '09123456789', 'mwilliams@sample.com', 'Sample', 0, '2021-07-26 15:33:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_list`
--

CREATE TABLE `event_list` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `venue` text NOT NULL,
  `limit_registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Don''t Close, 1= entry has timeout',
  `datetime_start` datetime NOT NULL,
  `datetime_end` datetime NOT NULL,
  `limit_time` float DEFAULT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_list`
--

INSERT INTO `event_list` (`id`, `title`, `description`, `venue`, `limit_registration`, `datetime_start`, `datetime_end`, `limit_time`, `user_id`, `date_created`, `date_update`) VALUES
(1, 'Sample 101', 'Sample Event Only', 'Venue 101', 0, '2021-07-26 13:00:00', '2021-07-26 17:00:00', 0, 3, '2021-07-26 11:10:12', '2021-07-26 11:29:25'),
(3, 'Sample 102', 'Sample only', 'Venue 102', 1, '2021-07-26 15:00:00', '2021-07-26 17:30:00', 30, 3, '2021-07-26 13:36:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration_history`
--

CREATE TABLE `registration_history` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `audience_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration_history`
--

INSERT INTO `registration_history` (`id`, `event_id`, `audience_id`, `user_id`, `date_created`) VALUES
(1, 1, 3, 3, '2021-07-26 15:35:33'),
(2, 1, 1, 3, '2021-07-26 15:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Event Registration System with QR Code - PHP'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(5, 'fb_page', 'https://www.facebook.com/myPageName'),
(6, 'short_name', 'D.M.M'),
(9, 'logo', 'uploads/1666080900_cert.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2=Registrar',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1666081140_20220716_101456.jpg', NULL, 1, '2021-01-20 14:02:37', '2022-10-18 11:19:34'),
(3, 'John', 'Smith', 'jsmith', '39ce7e2a8573b41ce73b5ba41617f8f7', 'uploads/1627264800_avatar.png', NULL, 2, '2021-07-26 10:00:18', '2021-07-26 10:04:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_audience`
--
ALTER TABLE `event_audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_list`
--
ALTER TABLE `event_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_history`
--
ALTER TABLE `registration_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_audience`
--
ALTER TABLE `event_audience`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_list`
--
ALTER TABLE `event_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registration_history`
--
ALTER TABLE `registration_history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `group4`
--
CREATE DATABASE IF NOT EXISTS `group4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `group4`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `c_password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `a_role` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `email`, `password`, `c_password`, `image`, `a_role`) VALUES
(23, '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `c_instructor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `e_id` int(100) NOT NULL,
  `e_name` varchar(100) NOT NULL,
  `e_type` varchar(100) NOT NULL,
  `e_class` varchar(100) NOT NULL,
  `e_section` varchar(100) NOT NULL,
  `e_time` varchar(100) NOT NULL,
  `e_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`e_id`, `e_name`, `e_type`, `e_class`, `e_section`, `e_time`, `e_date`) VALUES
(14, 'Final Paper', 'mathematic', 'play', 'A', '08.00 am - 09.00 am', '2021-07-14'),
(15, 'Final Paper', 'english', 'nursery', 'A', '09.00 am - 11.00 am', '2021-07-15'),
(16, 'Final Paper', 'english', 'one', 'C', '	08.00 am - 09.00 am', '2021-07-14'),
(17, 'Final Paper', 'economic', 'one', 'C', '	08.00 am - 09.00 am', '2021-07-15'),
(18, 'Final Paper', 'urdu', 'two', 'D', '	08.00 am - 09.00 am', '2021-07-16'),
(19, 'Final Paper', 'pak study', 'two', 'E', '	08.00 am - 09.00 am', '2021-07-16'),
(20, 'Final', 'pak study', 'three', 'E', '	08.00 am - 09.00 am', '2021-07-17'),
(21, 'Final Paper', 'mathematic', 'two', 'D', '	08.00 am - 09.00 am', '2021-07-18'),
(22, 'Final Paper', 'english', 'play', 'C', '	08.00 am - 09.00 am', '2021-07-18'),
(23, 'Final Paper', 'economic', 'nursery', 'B', '	08.00 am - 09.00 am', '2021-07-19'),
(24, 'Final Paper', 'economic', 'one', 'C', '	08.00 am - 09.00 am', '2021-07-20'),
(25, 'Final Paper', 'economic', 'one', 'C', '	08.00 am - 09.00 am', '2021-07-20'),
(26, 'Final Paper', 'economic', 'one', 'D', '	08.00 am - 09.00 am', '2021-07-21'),
(27, 'Final Paper', 'urdu', 'one', 'C', '	08.00 am - 09.00 am', '2021-07-21'),
(28, 'Final Paper', 'urdu', 'one', 'D', '	08.00 am - 09.00 am', '2021-07-22'),
(29, 'Final Paper', 'economic', 'three', '', '	08.00 am - 09.00 am', '2021-07-22'),
(30, 'Test', 'economic', 'play', 'B', '12.00 am - 02.00 pm', '2021-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(100) NOT NULL,
  `ex_name` varchar(100) NOT NULL,
  `ex_type` varchar(100) NOT NULL,
  `ex_amount` varchar(100) NOT NULL,
  `ex_status` varchar(100) NOT NULL,
  `ex_phone` varchar(100) NOT NULL,
  `ex_email` varchar(100) NOT NULL,
  `ex_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `ex_name`, `ex_type`, `ex_amount`, `ex_status`, `ex_phone`, `ex_email`, `ex_date`) VALUES
(2, 'Ashiq', 'salary', '$1000', 'paid', '12345678', 'ashiq@gmail.com', '12/6/2021'),
(3, 'Muhammad Adil Khan', 'salary', '$2000', 'due', '+39394943', 'adil@yahoo.comk', '12/7/2021');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `amount` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(100) NOT NULL,
  `hostel_name` varchar(100) NOT NULL,
  `room_number` varchar(100) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `no_of_bed` int(100) NOT NULL,
  `cost_per_bed` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `l_id` int(30) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `writer` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `publish` varchar(30) NOT NULL,
  `creating_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`l_id`, `book_name`, `subject`, `writer`, `class`, `publish`, `creating_date`) VALUES
(1, 'English Grammer', 'English', 'David Morgan', '5', '2019', '20.1.2021'),
(2, 'English Grammer', 'English', 'David Morgan', '5', '2019', '20.12021'),
(3, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(4, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(5, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(6, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(7, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(8, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(9, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(10, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(11, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(12, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(13, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(14, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(15, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(16, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(17, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(18, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(19, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(20, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015'),
(21, 'English Grammer', 'English', 'David Malan', '6', '2019', '20.20.2015');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `resetToken` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `resetComplete` varchar(3) COLLATE utf8mb4_bin DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `username`, `password`, `email`, `active`, `resetToken`, `resetComplete`) VALUES
(1, 'Daniel', '$2y$10$20MXBfhoMGAmx1xV/B3HRuuPPz8nDsq/5so2972VBq3VEQ/qvpwMq', 'danielmwithui@gmail.com', 'f1e5c4d4ddeae9a1355bf997d37eae42', NULL, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `n_id` int(100) NOT NULL,
  `n_title` varchar(100) NOT NULL,
  `n_posted_by` varchar(100) NOT NULL,
  `n_details` text NOT NULL,
  `n_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`n_id`, `n_title`, `n_posted_by`, `n_details`, `n_date`) VALUES
(9, 'Covid-19 vacation', 'Zohaib Saeed', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?', '2021-07-14 20:53:51'),
(10, 'Spring Festival', 'Muzammil Ali', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus', '2021-07-14 20:59:59'),
(18, 'Summer Vacation', 'Ashiq Ullah', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus nostrum molestias ut officiis commodi aspernatur eligendi cum tempora, facilis tempore accusamus vel maiores. Provident, itaque tenetur?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rerum quas odit, ad natus', '2021-07-14 23:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(30) NOT NULL,
  `p_photo` varchar(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_gender` varchar(30) NOT NULL,
  `p_occupation` varchar(30) NOT NULL,
  `p_address` varchar(100) NOT NULL,
  `p_phone` varchar(50) NOT NULL,
  `p_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `p_photo`, `p_name`, `p_gender`, `p_occupation`, `p_address`, `p_phone`, `p_email`) VALUES
(6, 'images/images (1).jpg', 'Shah Raza', 'male', 'App Developer', 'Kohat', '0039394943', 'SShah@yahoo.com'),
(7, 'images/images (3).jpg', 'Zohaib Saeed', 'male', 'Data Analyst ', 'Charsada', '+39394943', 'Szohaib93@gmail.com'),
(8, 'images/images (4).jpg', 'Naina Said', 'female', 'AI ', 'Peshawar', '+39394943', 'SNaina@yahoo.com'),
(9, 'images/images (5).jpg', 'Hamza Kamal', 'male', 'Web Developer', 'Lower Dir', '+39394943', 'Shamza90@gmail.com'),
(10, 'images/images (6).jpg', 'Ali', 'male', 'Data Analyst ', 'Abbotabad', '+39394943', 'Sali@yahoo.com'),
(11, 'images/images (7).jpg', 'Salma', 'male', 'House Wife', 'peshawar', '+39394943', 'Ssalma$outlook.com'),
(12, 'images/images.jpg', 'Shahid', 'male', 'AI ', 'Peshawar, Hayatabad', '+39394943', 'Sshahid@gmail.com'),
(13, 'images/images (8).jpg', 'Salman Sarwar', 'male', 'Web Developer', 'waziristan ', '0039394943', 'Ssalman@yahoo.com'),
(14, 'images/images (9).jpg', 'Zakir', 'male', 'Electrical Engineer', 'peshawar', '+39394943', 'Szakir@yahoo.com'),
(15, 'images/images (12).jpg', 'Kinza', 'male', 'Data Analyst ', 'Karachi', '+39394943', 'Skinza@yahoo.com'),
(16, 'images/images (13).jpg', 'Haseeb', 'male', 'Web Developer', 'Peshawar', '+39394943', 'haseeb@yahoo.com'),
(172, 'images/images (20).jpg', 'khushdil', 'male', 'AI ', 'waziristan', '0039394943', 'salman@yahoo.co'),
(175, 'images/images (10).jpg', 'Zohaib', 'male', 'Data Analyst ', 'waziristan', '0039394943', 'zohaib@gmail.com'),
(176, 'images/images (18).jpg', 'Muhammad Adil Khan', 'male', 'Data Analyst ', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', '+39394943', 'salman@yahoo.co'),
(178, 'images/images (11).jpg', 'salman', 'male', 'AI ', 'waziristan golona', '0039394943', 'salman@yahoo.co'),
(185, 'images/images (16).jpg', 'Muhammad Adil Khan', 'male', 'Data Analyst ', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', '+39394943', 'salman@yahoo.co'),
(186, 'images/download.png', 'Abdullah', 'male', 'businessman', 'Muree', '+39394943', 'abdullah@yahoo.com'),
(187, 'images/download.jpg', 'John Doe', 'male', 'Web Developer', 'waziristan golona', '0039394943', 'salman@yahoo.com'),
(190, 'images/images (21).jpg', 'Muhammad Adil Khan', 'male', 'Web Developer', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', '+39394943', 'salman@yahoo.co'),
(191, 'images/pulse.png', 'Muhammad Adil Khan', 'male', 'Web Developer', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', '+39394943', 'salman@yahoo.co'),
(192, 'images/images (14).jpg', 'Muhammad Adil Khan', 'other', 'Web Developer', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', '+39394943', 'salman@yahoo.co');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `enroll_year` varchar(30) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `class` varchar(15) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `academic_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `image`, `fname`, `lname`, `father_name`, `enroll_year`, `dob`, `class`, `gender`, `academic_year`) VALUES
(178, 'images/adil.jpg', 'Adil', 'khan', 'munawar khan', '2011', '1999', '6', 'male', 2021),
(185, 'images/content_user-profile-design-15.jpg', 'Ashiq', 'Khan marwat', 'sarwar jan', '2011', '1999', '6', 'male', 2021),
(186, 'images/news2.jpg', 'Ayan', 'Khan marwat', 'Ashiq Ullah', '2011', '1999', '6', 'male', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `fname`, `lname`, `address`, `qualification`, `city`, `state`, `zip`, `phone`, `email`, `gender`) VALUES
(111, 'Muhammad', 'Khan', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', 'web', 'Peshawar', 'Khyber Pakhtunkhwa', '25000', '+39394943', 'salman@yahoo.co', 'male'),
(112, 'Muhammad', 'Khan', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', 'web', 'Peshawar', 'Khyber Pakhtunkhwa', '25000', '+39394943', 'salman@yahoo.com', 'male'),
(113, 'Muhammad', 'Khan', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', 'web', 'Peshawar', 'Khyber Pakhtunkhwa', '25000', '+39394943', 'salman@yahoo.co', 'male'),
(114, 'Muhammad', 'Khan', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', 'web', 'Peshawar', 'Khyber Pakhtunkhwa', '25000', '+39394943', 'salman@yahoo.co', 'male'),
(115, 'Muhammad', 'Khan', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', 'web', 'Peshawar', 'Khyber Pakhtunkhwa', '25000', '+39394943', 'salman@yahoo.co', 'male'),
(116, 'Muhammad', 'Khan', 'Peshawar, Hayatabad, Phase 5, Sector C3,Street 1, House No D106.', 'web', 'Peshawar', 'Khyber Pakhtunkhwa', '25000', '+39394943', 'salman@yahoo.co', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(100) NOT NULL,
  `route_name` varchar(100) NOT NULL,
  `vehicle_no` varchar(50) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `driver_license` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `route_name`, `vehicle_no`, `driver_name`, `driver_license`, `contact_number`) VALUES
(1, 'University road', 'MT988800', 'Johnathan John', 'DLNC025936', '+889562365846'),
(2, 'University Road', 'MT988800', 'Johnathan John', 'DLNC025936', '+889562365846'),
(3, 'University Road', 'MT988800', 'Johnathan John', 'DLNC025936', '+889562365846'),
(4, 'University Road', 'MT988800', 'Johnathan John', 'DLNC025936', '+889562365846'),
(5, 'University Road', 'MT988800', 'Johnathan John', 'DLNC025936', '+889562365846');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `e_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `l_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `n_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Database: `mksu`
--
CREATE DATABASE IF NOT EXISTS `mksu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mksu`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `userid` int(11) NOT NULL,
  `uname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`userid`, `uname`) VALUES
(1, 'daniel'),
(2, 'joy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'student_data', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"coding_master\",\"cohort3\",\"dbattendance\",\"event_db\",\"group4\",\"mksu\",\"phpmyadmin\",\"school\",\"student_data\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"student_data\",\"table\":\"tbladmin\"},{\"db\":\"mksu\",\"table\":\"student\"},{\"db\":\"group4\",\"table\":\"teacher\"},{\"db\":\"group4\",\"table\":\"admin\"},{\"db\":\"school\",\"table\":\"admin\"},{\"db\":\"coding_master\",\"table\":\"users\"},{\"db\":\"school\",\"table\":\"staff\"},{\"db\":\"school\",\"table\":\"class\"},{\"db\":\"dbattendance\",\"table\":\"student\"},{\"db\":\"dbattendance\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dbattendance', 'student', '{\"sorted_col\":\"`student`.`studentid` ASC\"}', '2022-10-18 19:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-07 12:55:00', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CSEC` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(1, 'VIII', 'B'),
(2, 'III', 'C'),
(5, 'V', 'A'),
(6, 'III', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EID` int(11) NOT NULL,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(1, 'Term Exam', 'II-Term', '14-08-2018', 'FN', 'VIII', 'Tamil'),
(3, 'Term Exam', 'II-Term', '10-09-2018', 'FN', 'III', 'English'),
(4, 'Term Exam', 'II-Term', '18-09-2018', 'AN', 'V', 'Maths'),
(5, 'Term Exam', 'III-Term', '19-11-2018', 'FN', 'VIII', 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `hclass`
--

CREATE TABLE `hclass` (
  `HID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `CLA` varchar(150) NOT NULL,
  `SEC` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hclass`
--

INSERT INTO `hclass` (`HID`, `TID`, `CLA`, `SEC`, `SUB`) VALUES
(1, 1, 'VIII', 'A', 'English'),
(4, 4, 'III', 'B', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `MID` int(11) NOT NULL,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`MID`, `REGNO`, `SUB`, `MARK`, `TERM`, `CLASS`) VALUES
(1, 'S101', 'Tamil', '95', 'I-Term', 'III'),
(2, 'S101', 'English', '65', 'II-Term', 'III');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `TID` int(11) NOT NULL,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(150) NOT NULL,
  `SAL` varchar(150) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(3, 'ram', '1234', 'MCA', '15000', '9875641230', 'ram@gmail.com', 'Salem', 'staff/2.jpg'),
(4, 'Sam', '123', 'MBA', '15000', '9874561230', 'sam@gmail.com', 'salem', 'staff/3.jpg'),
(5, 'Kumar', '1234', 'MCA', '20000', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(150) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` text NOT NULL,
  `SCLASS` varchar(150) NOT NULL,
  `SSEC` varchar(150) NOT NULL,
  `SIMG` varchar(150) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(1, 'S101', 'Anitha', 'Ram', '17-10-2003', 'Female', '9874561230', 'ram@gmail.com', 'Salem', 'III', 'C', 'student/4.jpg', 1),
(3, 'S102', 'Kavya', 'Ram', '19-11-2002', 'Female', '8529634710', 'ram@gmail.com', 'Salem', 'VIII', 'A', 'student/3.jpg', 4),
(4, 'S103', 'Kishor', 'Ravi', '17-03-2005', 'Male', '8794561230', 'ravi@gmail.com', 'Salem', 'V', 'C', 'student/3.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(1, 'Tamil'),
(2, 'English'),
(3, 'Maths'),
(5, 'Social Science'),
(6, 'Hindi'),
(7, 'science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `hclass`
--
ALTER TABLE `hclass`
  ADD PRIMARY KEY (`HID`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hclass`
--
ALTER TABLE `hclass`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `student_data`
--
CREATE DATABASE IF NOT EXISTS `student_data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_data`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmapplications`
--

CREATE TABLE `tbladmapplications` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) NOT NULL,
  `CourseApplied` varchar(120) DEFAULT NULL,
  `FatherName` varchar(120) DEFAULT NULL,
  `MotherName` varchar(120) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Nationality` varchar(120) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `CorrespondenceAdd` varchar(350) NOT NULL,
  `PermanentAdd` varchar(350) NOT NULL,
  `SecondaryBoard` varchar(120) DEFAULT NULL,
  `SecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SecondaryBoardper` varchar(120) DEFAULT NULL,
  `SecondaryBoardstream` varchar(120) DEFAULT NULL,
  `SSecondaryBoard` varchar(120) DEFAULT NULL,
  `SSecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SSecondaryBoardper` varchar(120) DEFAULT NULL,
  `SSecondaryBoardstream` varchar(120) DEFAULT NULL,
  `GraUni` varchar(120) DEFAULT NULL,
  `GraUniyop` varchar(120) DEFAULT NULL,
  `GraUnidper` varchar(120) DEFAULT NULL,
  `GraUnistream` varchar(120) DEFAULT NULL,
  `PGUni` varchar(120) DEFAULT NULL,
  `PGUniyop` varchar(120) DEFAULT NULL,
  `PGUniper` varchar(120) DEFAULT NULL,
  `PGUnistream` varchar(120) DEFAULT NULL,
  `Declaration` varchar(120) DEFAULT NULL,
  `Signature` varchar(120) DEFAULT NULL,
  `CourseApplieddate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` varchar(255) DEFAULT NULL,
  `AdminStatus` varchar(20) DEFAULT NULL,
  `AdminRemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `UserPic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmapplications`
--

INSERT INTO `tbladmapplications` (`ID`, `UserId`, `CourseApplied`, `FatherName`, `MotherName`, `DOB`, `Nationality`, `Gender`, `Category`, `CorrespondenceAdd`, `PermanentAdd`, `SecondaryBoard`, `SecondaryBoardyop`, `SecondaryBoardper`, `SecondaryBoardstream`, `SSecondaryBoard`, `SSecondaryBoardyop`, `SSecondaryBoardper`, `SSecondaryBoardstream`, `GraUni`, `GraUniyop`, `GraUnidper`, `GraUnistream`, `PGUni`, `PGUniyop`, `PGUniper`, `PGUnistream`, `Declaration`, `Signature`, `CourseApplieddate`, `AdminRemark`, `AdminStatus`, `AdminRemarkDate`, `UserPic`) VALUES
(3, '7', 'BSC', 'FathersName', 'MothersName', '2000-08-15', 'Kenyan', 'Male', 'General', 'someaddress', 'otheraddress', 'somesec', '2018', '80', 'k', 'juniot', '2015', '80', 'a', 'none', '2000', '90', 'b', 'none', '6563', '78', 'z', NULL, 'anythin', '2022-11-07 12:43:58', 'appproved', '1', '2022-11-07 12:45:42', '5c9266b89fedc3386992748ff9da8c25.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'group 4', 'group4', 1234567897, 'group4@gmail.com', 'baf5d52135cbcd978e0083939e9f3071', '2021-05-18 04:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(11) NOT NULL,
  `CourseName` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`ID`, `CourseName`) VALUES
(1, 'B.Tech'),
(2, 'Agriculture'),
(3, 'MCA'),
(4, 'MSC'),
(5, 'B.COM'),
(6, 'BSC'),
(7, 'MCOM'),
(9, 'CA'),
(11, 'PHD'),
(12, 'BCA'),
(13, 'Computer Science '),
(14, 'DCA');

-- --------------------------------------------------------

--
-- Table structure for table `tbldocument`
--

CREATE TABLE `tbldocument` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TransferCertificate` varchar(120) DEFAULT NULL,
  `TenMarksheeet` varchar(120) DEFAULT NULL,
  `TwelveMarksheet` varchar(120) DEFAULT NULL,
  `GraduationCertificate` varchar(120) DEFAULT NULL,
  `PostgraduationCertificate` varchar(120) DEFAULT NULL,
  `UploadDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(11) NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Decription` text DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `Title`, `Decription`, `CreationDate`) VALUES
(3, 'Admission Notice for  January intake', 'This is to notify you that the January intake commences on Nov 4th', '2021-10-26 06:36:07'),
(5, 'The  8th graduation ceremony', 'graduation', '2022-11-07 09:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `PostingDate`) VALUES
(5, 'Coding', 'Cush', 9905860878, 'codingcush@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2021-12-16 17:57:23'),
(6, 'student', 'std', 71234567, 'student@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-11-07 09:25:54'),
(7, 'Name1', 'Name2', 123456789, 'someemail@company.com', '4112ebf8802c881e43af2133840503d1', '2022-11-07 12:38:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmapplications`
--
ALTER TABLE `tbladmapplications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldocument`
--
ALTER TABLE `tbldocument`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmapplications`
--
ALTER TABLE `tbladmapplications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbldocument`
--
ALTER TABLE `tbldocument`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
