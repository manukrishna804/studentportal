-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 05:00 PM
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
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_name` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `instructor` varchar(20) NOT NULL,
  `course_description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_name`, `code`, `duration`, `department`, `instructor`, `course_description`) VALUES
('db', '12', 12, 'it', 'dd', 'dddd'),
('maths', '20', 1, 'ee', 'ee', 'good'),
('python', 'pyt100', 4, 'ee', 'vinayan', 'dcsdc');

-- --------------------------------------------------------

--
-- Table structure for table `exam_marks`
--

CREATE TABLE `exam_marks` (
  `course` varchar(20) NOT NULL,
  `s_id` varchar(20) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_marks`
--

INSERT INTO `exam_marks` (`course`, `s_id`, `mark`) VALUES
('12', '23', 23),
('20', 'ktu1', 45),
('pyt100', 'ktu1010', 95);

-- --------------------------------------------------------

--
-- Table structure for table `e_register`
--

CREATE TABLE `e_register` (
  `std_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `e_register`
--

INSERT INTO `e_register` (`std_id`, `course_id`) VALUES
('ktu1', '12'),
('ktu1', '20');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `name` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `year_of_experiance` int(11) NOT NULL,
  `f_pass` varchar(20) NOT NULL,
  `f_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `department`, `designation`, `qualification`, `number`, `email`, `year_of_experiance`, `f_pass`, `f_id`) VALUES
('fr', 'it', 'tr', 'mtech', 123, 'm@gmail.com', 9, '345', 'ktu12'),
('de', 'me', 'tr', 'btech', 456, 'ma@gmail.com', 3, '2324', 'ktu22'),
('kiiki', 'it', 'tr', 'mtech', 12, 'ma@gmail.com', 9, '3030kiiki', 'ktu3030');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(50) NOT NULL,
  `age` int(20) NOT NULL,
  `gender` enum('m','f','o') NOT NULL,
  `semester` varchar(20) NOT NULL,
  `number` bigint(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `s_id` varchar(20) NOT NULL,
  `s_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `age`, `gender`, `semester`, `number`, `email`, `department`, `s_id`, `s_pass`) VALUES
('jack', 3, 'm', '8', 9, 'k@gmail.com', 'MECH', 'ktu1', '234'),
('danial', 22, 'm', '2', 234, 'abcd@gmail.com', 'MECH', 'ktu2', '456'),
('abcd', 32, 'm', '2', 90909, 'abc@gmail.com', 'ECE', 'ktu40', 'efgh'),
('fdvdv', 3, 'm', '5', 234, 'mk@gmail.com', 'CIVIL', 'ktu42', '1020'),
('harry', 12, 'm', '4', 343433, 'letosa6583@cybtric.c', 'IT', 'ktu1010', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE `remarks` (
  `std_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`std_id`, `course_id`, `remark`) VALUES
('ktu1010', 'pyt100', 'good'),
('ktu40', '12', 'mk');

-- --------------------------------------------------------

--
-- Table structure for table `s_attendence`
--

CREATE TABLE `s_attendence` (
  `std_id` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `total_class` int(11) NOT NULL,
  `attended_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_attendence`
--

INSERT INTO `s_attendence` (`std_id`, `course`, `total_class`, `attended_class`) VALUES
('ktu1', '12', 50, 25),
('ktu1010', 'pyt100', 100, 90),
('ktu2', '12', 40, 35),
('ktu40', '20', 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `uname` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`uname`, `pname`) VALUES
('tom', 'jerry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `e_register`
--
ALTER TABLE `e_register`
  ADD PRIMARY KEY (`std_id`,`course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`std_id`,`course_id`);

--
-- Indexes for table `s_attendence`
--
ALTER TABLE `s_attendence`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`uname`),
  ADD UNIQUE KEY `uname` (`uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
