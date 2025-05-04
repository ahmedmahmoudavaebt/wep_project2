-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 مايو 2025 الساعة 02:00
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_database_edoc`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------

--
-- بنية الجدول `ambulance_requests`
--

CREATE TABLE `ambulance_requests` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `emergency_type` text NOT NULL,
  `request_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `ambulance_requests`
--

INSERT INTO `ambulance_requests` (`id`, `user_email`, `patient_name`, `phone`, `address`, `location`, `emergency_type`, `request_time`) VALUES
(1, 'patient@edoc.com', 'mostfa hatem', '01014106072', 'alzarka', '', 'تعبان', '2025-03-22 09:12:37'),
(2, 'patient@edoc.com', 'mostfa hatem', '01014106072', 'alzarka', '', 'عيان', '2025-03-22 09:15:22'),
(3, 'patient@edoc.com', 'mostfa hatem', '01014106072', 'alzarka', '', 'عيان', '2025-03-22 10:42:03');

-- --------------------------------------------------------

--
-- بنية الجدول `appointment`
--

CREATE TABLE `appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL,
  `status` enum('pending','done') DEFAULT 'pending',
  `report` text DEFAULT NULL,
  `type` enum('doctor','radiology') NOT NULL DEFAULT 'doctor',
  `report_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `report_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `diagnosis` varchar(255) DEFAULT NULL,
  `treatment` text DEFAULT NULL,
  `followup_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`, `status`, `report`, `type`, `report_created_at`, `report_updated_at`, `diagnosis`, `treatment`, `followup_date`) VALUES
(4, 1, 2, 1, '2024-12-21', 'done', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(3, 1, 1, 1, '2024-12-19', 'done', 'mostfa', 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:03:58', NULL, NULL, NULL),
(10, 1, 5, 1, '2025-02-27', 'done', 'wdc', 'doctor', '2025-04-28 00:01:59', '2025-04-28 18:25:25', 'bard', 'wo', '2025-04-01'),
(6, 1, 4, 1, '2024-12-24', 'done', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(30, 1, 23, 1, '2025-04-15', 'done', 'csc', 'doctor', '2025-04-28 00:01:59', '2025-04-28 18:23:29', 'bard', 'mas', '2025-04-01'),
(15, 15, 10, 1, '2025-02-28', 'done', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(16, 15, 11, 1, '2025-02-28', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(18, 15, 13, 1, '2025-02-28', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(19, 15, 14, 1, '2025-02-28', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(20, 15, 15, 1, '2025-02-28', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(22, 15, 17, 1, '2025-02-28', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(23, 15, 18, 1, '2025-02-28', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(24, 15, 19, 1, '2025-02-28', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(25, 1, 20, 1, '2025-03-05', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(26, 1, 20, 1, '2025-03-05', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(27, 1, 22, 1, '2025-03-06', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(28, 1, 23, 1, '2025-03-22', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(32, 1, 25, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(33, 1, 25, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(34, 1, 27, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(35, 1, 28, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(36, 1, 29, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(37, 1, 30, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(38, 14, 31, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(39, 15, 32, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(40, 16, 33, 1, '2025-04-15', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(41, 16, 34, 1, '2025-04-16', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(42, 16, 1, 1, '2025-04-16', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(43, 16, 1, 2, '2025-04-16', 'pending', NULL, 'doctor', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(44, 16, 1, 1, '2025-04-16', 'pending', NULL, 'radiology', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(45, 16, 1, 2, '2025-04-16', 'pending', NULL, 'radiology', '2025-04-28 00:01:59', '2025-04-28 00:01:59', NULL, NULL, NULL),
(47, 1, 30, 1, '2025-05-02', 'pending', NULL, 'doctor', '2025-05-02 14:46:00', '2025-05-02 14:46:00', NULL, NULL, NULL),
(48, 1, 30, 1, '2025-05-02', 'pending', NULL, 'doctor', '2025-05-02 14:46:36', '2025-05-02 14:46:36', NULL, NULL, NULL),
(49, 1, 32, 1, '2025-05-02', 'pending', NULL, 'doctor', '2025-05-02 14:54:27', '2025-05-02 14:54:27', NULL, NULL, NULL),
(50, 1, 33, 1, '2025-05-02', 'pending', NULL, 'doctor', '2025-05-02 14:57:24', '2025-05-02 14:57:24', NULL, NULL, NULL),
(51, 1, 34, 1, '2025-05-02', 'pending', NULL, 'doctor', '2025-05-02 15:43:36', '2025-05-02 15:43:36', NULL, NULL, NULL),
(52, 1, 35, 1, '2025-05-02', 'pending', NULL, 'doctor', '2025-05-02 15:44:24', '2025-05-02 15:44:24', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(1, 'doctor@edoc.com', 'Test Doctor', '123', '000000000', '0110000000', 1),
(2, 'doctor1@edoc.com', 'mohamed ', '123', '443322', '01060283920', 5),
(3, 'doctor2@edoc.com', 'mostfa', '123', '443322', '01060283920', 6),
(4, 'doctor3@edoc.com', 'hatem', '123', '11223344', '01060283921', 29);

-- --------------------------------------------------------

--
-- بنية الجدول `lab_appointments`
--

CREATE TABLE `lab_appointments` (
  `appoid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `apponum` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `appodate` date NOT NULL,
  `status` enum('Pending','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `type` enum('doctor','radiology','lab') DEFAULT 'lab'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `lab_appointments`
--

INSERT INTO `lab_appointments` (`appoid`, `pid`, `apponum`, `schedule_id`, `appodate`, `status`, `type`) VALUES
(3, 16, 1, 1, '2025-04-18', 'Pending', 'lab'),
(4, 16, 2, 1, '2025-04-18', 'Pending', 'lab'),
(5, 16, 1, 3, '2025-04-18', 'Pending', 'lab'),
(6, 16, 1, 2, '2025-04-18', 'Pending', 'lab'),
(7, 16, 3, 1, '2025-04-19', 'Pending', 'lab'),
(8, 16, 3, 1, '2025-04-19', 'Pending', 'lab'),
(9, 16, 2, 2, '2025-04-19', 'Pending', 'lab');

-- --------------------------------------------------------

--
-- بنية الجدول `lab_schedule`
--

CREATE TABLE `lab_schedule` (
  `schedule_id` int(11) NOT NULL,
  `lab_type_id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `available_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `max_appointments` int(11) DEFAULT 10,
  `booked_appointments` int(11) DEFAULT 0,
  `is_available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `lab_schedule`
--

INSERT INTO `lab_schedule` (`schedule_id`, `lab_type_id`, `technician_id`, `available_date`, `start_time`, `end_time`, `max_appointments`, `booked_appointments`, `is_available`) VALUES
(1, 1, 1, '2025-04-20', '09:00:00', '12:00:00', 20, 0, 1),
(2, 1, 1, '2025-04-20', '13:00:00', '16:00:00', 20, 0, 1),
(3, 2, 2, '2025-04-21', '10:00:00', '14:00:00', 15, 0, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `lab_technicians`
--

CREATE TABLE `lab_technicians` (
  `technician_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `lab_technicians`
--

INSERT INTO `lab_technicians` (`technician_id`, `full_name`, `email`, `phone`, `specialization`, `is_active`) VALUES
(1, 'أحمد محمد', 'tech1@lab.com', '01012345678', 'تحاليل الدم', 1),
(2, 'مريم علي', 'tech2@lab.com', '01023456789', 'الأشعة', 1),
(3, 'خالد محمود', 'tech3@lab.com', '01034567890', 'الفحوصات العامة', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `lab_types`
--

CREATE TABLE `lab_types` (
  `lab_type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `preparation_instructions` text DEFAULT NULL,
  `estimated_duration` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `lab_types`
--

INSERT INTO `lab_types` (`lab_type_id`, `name`, `description`, `preparation_instructions`, `estimated_duration`, `price`, `is_active`) VALUES
(1, 'تحليل الدم الكامل', 'فحص شامل لمكونات الدم', 'الصيام لمدة 8 ساعات', 15, 150.00, 1),
(2, 'أشعة سينية للصدر', 'فحص الرئتين والعظام', 'لا يوجد تحضير خاص', 30, 250.00, 1),
(3, 'تحليل السكر', 'قياس مستوى الجلوكوز', 'الصيام لمدة 12 ساعة', 10, 80.00, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `medication`
--

CREATE TABLE `medication` (
  `medid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `medname` varchar(255) DEFAULT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `intake_time` time DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `daily_doses` int(11) DEFAULT 1,
  `appoid` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('ongoing','completed','paused') DEFAULT 'ongoing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `medication`
--

INSERT INTO `medication` (`medid`, `pid`, `medname`, `dosage`, `intake_time`, `start_date`, `end_date`, `daily_doses`, `appoid`, `notes`, `status`) VALUES
(1, 1, 'باراسيتامول', '500 مجم', '08:00:00', '2024-11-23', '2024-12-23', 3, NULL, 'تناول الدواء بعد الوجبات', 'ongoing'),
(2, 2, 'أموكسيسيلين', '250 مجم', '10:00:00', '2024-11-22', '2024-11-29', 2, NULL, 'إتمام الدورة كاملة', 'ongoing'),
(3, 3, 'ميتوبرولول', '50 مجم', '12:00:00', '2024-11-15', '2024-12-15', 1, NULL, 'يجب تناوله صباحاً قبل الطعام', 'ongoing'),
(4, 2, 'إيبوبروفين', '200 مجم', '16:00:00', '2024-11-20', '2024-12-01', 2, NULL, 'للصداع والألم العضلي', 'ongoing'),
(5, 1, 'كولشيسين', '0.5 مجم', '20:00:00', '2024-11-23', '2024-12-01', 1, NULL, 'لمدة 10 أيام', 'completed');

-- --------------------------------------------------------

--
-- بنية الجدول `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `emergency_name` varchar(255) DEFAULT NULL,
  `emergency_phone` varchar(15) DEFAULT NULL,
  `emergency_relationship` varchar(255) DEFAULT NULL,
  `insurance_provider` varchar(255) DEFAULT NULL,
  `policy_number` varchar(255) DEFAULT NULL,
  `group_number` varchar(255) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `blood_type` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') DEFAULT NULL,
  `allergies` mediumtext DEFAULT NULL,
  `medications` mediumtext DEFAULT NULL,
  `chronic_conditions` mediumtext DEFAULT NULL,
  `medical_history` mediumtext DEFAULT NULL,
  `family_history` mediumtext DEFAULT NULL,
  `symptoms` mediumtext DEFAULT NULL,
  `smoking` enum('yes','no') DEFAULT NULL,
  `alcohol` enum('yes','no') DEFAULT NULL,
  `exercise` enum('daily','weekly','monthly','rarely') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`, `gender`, `emergency_name`, `emergency_phone`, `emergency_relationship`, `insurance_provider`, `policy_number`, `group_number`, `height`, `weight`, `blood_type`, `allergies`, `medications`, `chronic_conditions`, `medical_history`, `family_history`, `symptoms`, `smoking`, `alcohol`, `exercise`) VALUES
(1, 'patient@edoc.com', 'Test Patient', '123', 'Sri Lanka', '0000000000', '2000-01-01', '0120000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'emhashenudara@gmail.com', 'Hashen Udara', '123', 'Sri Lanka', '0110000000', '2022-06-03', '0700000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'patient2@edoc.com', 'mostfa hatem', '123', 'alzarka', '443322', '2025-02-07', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'patient3@edoc.com', 'mostfa hatem', '123', 'alzarka', '443322', '2025-02-02', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'patient4@edoc.com', 'mostfa hatem', '123', 'alzarka', '443322', '2025-02-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'patient8@edoc.com', 'mostfa hatem', '123', 'alzarka', '443322', '2025-02-02', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'patient9@edoc.com', 'mostfa hatem', '123', 'alzarka', '443322', '2025-02-02', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'patient10@edoc.com', 'mostfa hatem', '123', 'alzarka', '443322', NULL, NULL, 'male', 'mostfa', '01014106072', 'mostfa', 'mostfa', '010', '111', 180, 79, 'A+', 'mostfa', 'mostfa', 'yes', 'nmae', 'yes', 'yes', 'yes', 'yes', 'daily'),
(9, 'patient77@edoc.com', 'mostfa hatem', '123', 'alzarka', '11223344', '2025-02-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'patientiv@edoc.com', 'mostfa hatem', '123', 'alzarka', '11223344', '2025-02-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'patient7776@edoc.com', 'mostfa hatem', '123', 'alzarka', '11223344', '2025-02-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'patient8i84@edoc.com', 'mostfa hatem', '123', 'alzarka', '11223344', '2025-02-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'patigent@edoc.com', 'mostfa hatem', '123', 'alzarka', '11223344', '2025-02-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Mostfa221100488@nmu.edu.eg', 'mostfa ha', 'mostfahatem12', 'zarka', '123456', '2025-02-03', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'mostfahatem669@edoc.com', 'mostfa hatem', '123 ', 'alzarka', '11223344', NULL, NULL, 'male', 'mostfa', '01014106072', 'mostfa', 'mostfa', '010', '111', 180, 79, 'A+', '', '', '', '', '', 'm', 'yes', 'yes', 'daily'),
(16, 'mostfahatem668@gmail.com', 'mostfa hatem', '123', 'zarka', '123456', NULL, NULL, 'male', 'm', '1', '1', '1', '1', '1', 1, 1, 'A+', '1', '1', '1', '1', '1', '1', 'yes', 'yes', 'daily');

-- --------------------------------------------------------

--
-- بنية الجدول `radiology_appointment`
--

CREATE TABLE `radiology_appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `apponum` int(11) NOT NULL,
  `scheduleid` int(11) NOT NULL,
  `appodate` date NOT NULL,
  `status` enum('Pending','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `type` enum('doctor','radiology','lab') DEFAULT 'radiology'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `radiology_appointment`
--

INSERT INTO `radiology_appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`, `status`, `type`) VALUES
(44, 0, 0, 1, '0000-00-00', 'Pending', 'radiology'),
(45, 0, 0, 2, '0000-00-00', 'Pending', 'radiology'),
(46, 0, 0, 1, '0000-00-00', 'Pending', 'radiology');

-- --------------------------------------------------------

--
-- بنية الجدول `radiology_schedule`
--

CREATE TABLE `radiology_schedule` (
  `scheduleid` int(11) NOT NULL,
  `techid` varchar(255) DEFAULT NULL COMMENT 'ID of Radiology Technician',
  `title` varchar(255) DEFAULT NULL COMMENT 'Session title (X-ray, CT, MRI)',
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL COMMENT 'Number of patients',
  `session_type` enum('xray','ct','mri') NOT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'Duration in minutes',
  `preparation_instructions` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `radiology_schedule`
--

INSERT INTO `radiology_schedule` (`scheduleid`, `techid`, `title`, `scheduledate`, `scheduletime`, `nop`, `session_type`, `duration`, `preparation_instructions`) VALUES
(1, 'RT1', 'X-ray Session', '2025-04-20', '09:00:00', 15, 'xray', 30, 'No special preparation needed'),
(2, 'RT2', 'CT Scan Session', '2025-04-20', '10:00:00', 10, 'ct', 60, 'Fasting required for 4 hours before'),
(3, 'RT3', 'MRI Session', '2025-04-21', '11:00:00', 8, 'mri', 90, 'Remove all metal objects');

-- --------------------------------------------------------

--
-- بنية الجدول `radiology_technicians`
--

CREATE TABLE `radiology_technicians` (
  `techid` varchar(255) NOT NULL,
  `techname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tele` varchar(20) DEFAULT NULL,
  `specialization` enum('xray','ct','mri','all') NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `radiology_technicians`
--

INSERT INTO `radiology_technicians` (`techid`, `techname`, `email`, `tele`, `specialization`) VALUES
('RT1', 'Ahmed Mohamed', 'rt1@clinic.com', '01012345678', 'xray'),
('RT2', 'Fatma Ali', 'rt2@clinic.com', '01023456789', 'ct'),
('RT3', 'Mahmoud Hassan', 'rt3@clinic.com', '01034567890', 'mri'),
('RT4', 'Aisha Samir', 'rt4@clinic.com', '01045678901', 'all');

-- --------------------------------------------------------

--
-- بنية الجدول `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `service_rating` varchar(50) DEFAULT NULL,
  `need_support` varchar(50) DEFAULT NULL,
  `overall_experience` int(11) DEFAULT NULL,
  `wait_time` int(11) DEFAULT NULL,
  `staff_courtesy` int(11) DEFAULT NULL,
  `facilities_rating` int(11) DEFAULT NULL,
  `would_recommend` varchar(50) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `prediction` varchar(50) DEFAULT NULL,
  `confidence` float DEFAULT NULL,
  `doctor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `results`
--

INSERT INTO `results` (`id`, `patient_id`, `service_rating`, `need_support`, `overall_experience`, `wait_time`, `staff_courtesy`, `facilities_rating`, `would_recommend`, `feedback`, `prediction`, `confidence`, `doctor`) VALUES
(15, 1, 'Excellent', 'Yes', 0, 0, 0, 0, 'Yes', 'gooood', 'neutral', 0.492817, 'Test Doctor'),
(16, 1, 'Excellent', 'Yes', 0, 0, 0, 0, 'Yes', 'goood', 'neutral', 0.470273, 'Test Doctor');

-- --------------------------------------------------------

--
-- بنية الجدول `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(1, '1', 'Test Session', '2050-01-01', '18:00:00', 50),
(2, '1', '1', '2022-06-10', '20:36:00', 1),
(3, '1', '12', '2022-06-10', '20:33:00', 1),
(4, '1', '1', '2022-06-10', '12:32:00', 1),
(5, '1', '1', '2022-06-10', '20:35:00', 1),
(6, '1', '12', '2022-06-10', '20:35:00', 1),
(7, '1', '1', '2022-06-24', '20:36:00', 1),
(8, '1', '12', '2022-06-10', '13:33:00', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `specialties`
--

CREATE TABLE `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');

-- --------------------------------------------------------

--
-- بنية الجدول `webuser`
--

CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@edoc.com', 'a'),
('doctor@edoc.com', 'd'),
('patient@edoc.com', 'p'),
('emhashenudara@gmail.com', 'p'),
('doctor1@edoc.com', 'd'),
('doctor2@edoc.com', 'd'),
('doctor3@edoc.com', 'd'),
('patient2@edoc.com', 'p'),
('patient3@edoc.com', 'p'),
('patient4@edoc.com', 'p'),
('patient8@edoc.com', 'p'),
('patient9@edoc.com', 'p'),
('patient10@edoc.com', 'p'),
('patient77@edoc.com', 'p'),
('patientiv@edoc.com', 'p'),
('patient7776@edoc.com', 'p'),
('patient8i84@edoc.com', 'p'),
('patigent@edoc.com', 'p'),
('Mostfa221100488@nmu.edu.eg', 'p'),
('mostfahatem669@edoc.com', 'p'),
('mostfahatem668@gmail.com', 'p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aemail`);

--
-- Indexes for table `ambulance_requests`
--
ALTER TABLE `ambulance_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `specialties` (`specialties`);

--
-- Indexes for table `lab_appointments`
--
ALTER TABLE `lab_appointments`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `lab_schedule`
--
ALTER TABLE `lab_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `lab_type_id` (`lab_type_id`),
  ADD KEY `technician_id` (`technician_id`);

--
-- Indexes for table `lab_technicians`
--
ALTER TABLE `lab_technicians`
  ADD PRIMARY KEY (`technician_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `lab_types`
--
ALTER TABLE `lab_types`
  ADD PRIMARY KEY (`lab_type_id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`medid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `radiology_appointment`
--
ALTER TABLE `radiology_appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `radiology_schedule`
--
ALTER TABLE `radiology_schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `techid` (`techid`);

--
-- Indexes for table `radiology_technicians`
--
ALTER TABLE `radiology_technicians`
  ADD PRIMARY KEY (`techid`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulance_requests`
--
ALTER TABLE `ambulance_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lab_appointments`
--
ALTER TABLE `lab_appointments`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lab_schedule`
--
ALTER TABLE `lab_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lab_technicians`
--
ALTER TABLE `lab_technicians`
  MODIFY `technician_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lab_types`
--
ALTER TABLE `lab_types`
  MODIFY `lab_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `medid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `radiology_appointment`
--
ALTER TABLE `radiology_appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `radiology_schedule`
--
ALTER TABLE `radiology_schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `lab_appointments`
--
ALTER TABLE `lab_appointments`
  ADD CONSTRAINT `lab_appointments_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`),
  ADD CONSTRAINT `lab_appointments_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `lab_schedule` (`schedule_id`);

--
-- قيود الجداول `lab_schedule`
--
ALTER TABLE `lab_schedule`
  ADD CONSTRAINT `lab_schedule_ibfk_1` FOREIGN KEY (`lab_type_id`) REFERENCES `lab_types` (`lab_type_id`),
  ADD CONSTRAINT `lab_schedule_ibfk_2` FOREIGN KEY (`technician_id`) REFERENCES `lab_technicians` (`technician_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
