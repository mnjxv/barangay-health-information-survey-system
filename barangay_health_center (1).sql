-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2026 at 12:55 PM
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
-- Database: `barangay_health_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `child_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `child_name` varchar(150) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `login_id` int(11) NOT NULL,
  `role` enum('staff','member') NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`login_id`, `role`, `user_id`, `username`, `ip_address`, `created_at`) VALUES
(1, 'staff', 1, 'admin', '::1', '2026-08-14 10:07:09'),
(2, 'staff', 1, 'admin', '::1', '2026-08-14 10:07:21'),
(3, 'member', 33, '2026-0002', '::1', '2026-08-14 10:08:55'),
(4, 'staff', 1, 'admin', '::1', '2026-08-14 10:09:48'),
(5, 'member', 33, '2026-0002', '::1', '2026-08-14 10:10:03'),
(6, 'staff', 1, 'admin', '::1', '2026-08-14 10:10:27'),
(7, 'member', 32, '2026-0001', '::1', '2026-08-14 10:12:11'),
(8, 'member', 36, '2026-0005', '::1', '2026-08-14 10:12:11'),
(9, 'member', 41, '2026-0010', '::1', '2026-08-14 10:12:11'),
(10, 'member', 36, '2026-0005', '::1', '2026-08-14 10:12:27'),
(11, 'staff', 1, 'admin', '::1', '2026-08-14 10:13:08'),
(12, 'staff', 1, 'admin', '::1', '2026-08-14 10:14:05'),
(13, 'member', 36, '2026-0005', '::1', '2026-08-14 10:14:33'),
(14, 'staff', 1, 'admin', '::1', '2026-08-14 10:14:54'),
(15, 'member', 37, '2026-0006', '::1', '2026-08-14 10:15:10'),
(16, 'staff', 1, 'admin', '::1', '2026-08-14 10:15:45'),
(17, 'staff', 1, 'admin', '::1', '2026-08-14 10:16:32'),
(18, 'staff', 1, 'admin', '::1', '2026-08-14 10:18:41'),
(19, 'staff', 1, 'admin', '::1', '2026-08-14 10:19:44'),
(20, 'staff', 1, 'admin', '::1', '2026-08-14 10:19:48'),
(21, 'member', 34, '2026-0003', '::1', '2026-08-14 10:20:15'),
(22, 'staff', 1, 'admin', '::1', '2026-08-14 10:22:11'),
(23, 'staff', 1, 'admin', '::1', '2026-08-14 10:24:16'),
(24, 'staff', 1, 'admin', '::1', '2026-08-14 10:28:04'),
(25, 'staff', 2, 'nurse.maria', '::1', '2026-08-14 10:28:09'),
(26, 'staff', 2, 'nurse.maria', '::1', '2026-08-14 10:28:14'),
(27, 'staff', 1, 'admin', '::1', '2026-08-14 10:28:31'),
(28, 'member', 36, '2026-0005', '::1', '2026-08-14 10:28:31'),
(29, 'member', 36, '2026-0005', '::1', '2026-08-14 10:28:31'),
(30, 'member', 36, '2026-0005', '::1', '2026-08-14 10:28:31'),
(31, 'staff', 1, 'admin', '::1', '2026-08-14 10:28:40'),
(32, 'member', 36, '2026-0005', '::1', '2026-08-14 10:28:40'),
(33, 'staff', 1, 'admin', '::1', '2026-08-14 10:28:46'),
(34, 'staff', 1, 'admin', '::1', '2026-08-14 10:35:51'),
(35, 'member', 45, '2026-0014', '::1', '2026-08-14 10:42:10'),
(36, 'staff', 1, 'admin', '::1', '2026-08-14 10:43:05'),
(37, 'staff', 1, 'admin', '::1', '2026-08-14 10:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `must_change_password` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `extension_name` varchar(20) DEFAULT NULL,
  `civil_status` enum('Single','Married','Widowed','Separated','Divorced') DEFAULT 'Single',
  `gender` enum('Male','Female') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_household` varchar(100) DEFAULT NULL,
  `address_barangay` varchar(150) DEFAULT NULL,
  `address_municipality` varchar(150) DEFAULT NULL,
  `address_province` varchar(100) DEFAULT NULL,
  `address_postal` varchar(10) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `purok` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `hotline` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `employer` varchar(150) DEFAULT NULL,
  `employer_address` varchar(255) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `reference1_name` varchar(150) DEFAULT NULL,
  `reference1_relationship` varchar(50) DEFAULT NULL,
  `reference1_contact` varchar(20) DEFAULT NULL,
  `reference1_address` varchar(255) DEFAULT NULL,
  `reference2_name` varchar(150) DEFAULT NULL,
  `reference2_relationship` varchar(50) DEFAULT NULL,
  `reference2_contact` varchar(20) DEFAULT NULL,
  `reference2_address` varchar(255) DEFAULT NULL,
  `emergency_contact_name` varchar(150) DEFAULT NULL,
  `emergency_contact_relationship` varchar(50) DEFAULT NULL,
  `emergency_contact_number` varchar(20) DEFAULT NULL,
  `signature_path` varchar(255) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `account_number`, `password`, `must_change_password`, `is_active`, `last_name`, `first_name`, `middle_name`, `extension_name`, `civil_status`, `gender`, `address`, `address_household`, `address_barangay`, `address_municipality`, `address_province`, `address_postal`, `address_country`, `purok`, `email`, `contact_number`, `hotline`, `birthday`, `age`, `occupation`, `employer`, `employer_address`, `father_name`, `mother_name`, `reference1_name`, `reference1_relationship`, `reference1_contact`, `reference1_address`, `reference2_name`, `reference2_relationship`, `reference2_contact`, `reference2_address`, `emergency_contact_name`, `emergency_contact_relationship`, `emergency_contact_number`, `signature_path`, `photo_path`, `created_at`, `updated_at`) VALUES
(32, '2026-0001', '$2y$10$2gjHyJd1/f6OQ7hDh/v.1OtiQS.Gy.hlQY31tHy3UN/enDc9sG./e', 1, 1, 'Dela Cruz', 'Juan', 'C.', NULL, 'Married', 'Male', 'Barangay San Jose, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 1', 'juan.delacruz0@email.com', '09123456701', NULL, '1985-03-15', 41, 'Teacher', 'DepEd', 'City Center, Bulacan', 'Juan C. Dela Cruz', NULL, 'Reference Person A-0', 'Friend', '09123456001', 'Barangay San Jose, Bulacan, Philippines', 'Reference Person B-0', 'Neighbor', '09123456001', 'Barangay San Jose, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-07-20 03:12:11', '2026-08-14 10:12:06'),
(33, '2026-0002', '$2y$10$Ic9xcBmhmfqfIGZM8TnnJ.Kf8KCd/qRw4Zlgik518Md31kaO3f/KS', 1, 1, 'Santos', 'Maria', 'D.', NULL, 'Single', 'Female', 'Barangay Santo Niño, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 2', 'maria.santos1@email.com', '09123456702', NULL, '1998-07-22', 28, 'Engineer', 'Private Company', 'Municipal Hall, Nueva Ecija', NULL, 'Maria D. Santos', 'Reference Person A-1', 'Coworker', '09123456002', 'Barangay Santo Niño, Nueva Ecija, Philippines', 'Reference Person B-1', 'Former Classmate', '09123456002', 'Barangay Santo Niño, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-06-15 03:12:11', '2026-08-14 10:12:06'),
(34, '2026-0003', '$2y$10$9FQZ5mynU2NWWaWIwAicxeRATOcQDQiQxKSWyQpBgdLuGbxLsLvrG', 0, 1, 'Reyes', 'Jose', 'E.', 'Jr.', 'Married', 'Male', 'Barangay Poblacion, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 3', 'jose.reyes2@email.com', '09123456703', NULL, '1979-11-08', 47, 'Nurse', 'Hospital', 'City Center, Bulacan', 'Jose E. Reyes', NULL, 'Reference Person A-2', 'Church Member', '09123456003', 'Barangay Poblacion, Bulacan, Philippines', 'Reference Person B-2', 'Friend', '09123456003', 'Barangay Poblacion, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-04-01 03:12:11', '2026-08-14 10:20:25'),
(35, '2026-0004', '$2y$10$45PnC5//zPiYfvgJ9taGHOQvZb3l.66n1ZQBIqQO4S1YUqxWWkbey', 1, 1, 'Gonzales', 'Ana', 'F.', NULL, 'Single', 'Female', 'Barangay San Isidro, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 4', 'ana.gonzales3@email.com', '09123456704', NULL, '2002-01-30', 24, 'Student', NULL, NULL, NULL, 'Ana F. Gonzales', 'Reference Person A-3', 'Neighbor', '09123456004', 'Barangay San Isidro, Nueva Ecija, Philippines', 'Reference Person B-3', 'Coworker', '09123456004', 'Barangay San Isidro, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-05-31 03:12:11', '2026-08-14 10:12:06'),
(36, '2026-0005', '$2y$10$EhEId7F6uFyg/D4Kzn3Snu9GRtd0xtnt0iRuSVQmdSchkZB2PaMje', 0, 1, 'Bautista', 'Pedro', 'G.', 'III', 'Married', 'Male', 'Barangay Bagong Silang, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 5', 'pedro.bautista4@email.com', '09123456705', NULL, '1970-05-12', 56, 'Farmer', 'Self-Employed', 'City Center, Bulacan', 'Pedro G. Bautista', NULL, 'Reference Person A-4', 'Former Classmate', '09123456005', 'Barangay Bagong Silang, Bulacan, Philippines', 'Reference Person B-4', 'Friend', '09123456005', 'Barangay Bagong Silang, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-01-11 03:12:11', '2026-08-14 10:28:40'),
(37, '2026-0006', '$2y$10$rROc.OzgAR5IceGxBNBcke2qUL.9XFqeF3UL4tcXojajlGF.GSzSC', 0, 1, 'Villanueva', 'Rosa', 'C.', NULL, 'Single', 'Female', 'Barangay Mabuhay, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 6', 'rosa.villanueva5@email.com', '09123456706', NULL, '1995-09-18', 31, 'Housewife', NULL, NULL, NULL, 'Rosa C. Villanueva', 'Reference Person A-5', 'Church Member', '09123456006', 'Barangay Mabuhay, Nueva Ecija, Philippines', 'Reference Person B-5', 'Coworker', '09123456006', 'Barangay Mabuhay, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-07-15 03:12:11', '2026-08-14 10:15:17'),
(38, '2026-0007', '$2y$10$1b7YI6NRw1K3mycBGV5bHus2rak6Q2xVlEXIhOz2ivS3I1lx.BX/K', 1, 1, 'Fernandez', 'Carlos', 'D.', NULL, 'Widowed', 'Male', 'Barangay Maligaya, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 7', 'carlos.fernandez6@email.com', '09123456707', NULL, '1988-12-25', 37, 'Driver', 'Private Company', 'Municipal Hall, Nueva Ecija', 'Carlos D. Fernandez', NULL, 'Reference Person A-6', 'Friend', '09123456007', 'Barangay Maligaya, Bulacan, Philippines', 'Reference Person B-6', 'Neighbor', '09123456007', 'Barangay Maligaya, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-05-01 03:12:11', '2026-08-14 10:12:06'),
(39, '2026-0008', '$2y$10$qJkqNBclwNNOkWBTrzX7Fu38eWYXIDw.hcvBJam9HpR327i.BmORG', 1, 1, 'Mendoza', 'Elena', 'E.', NULL, 'Married', 'Female', 'Barangay San Roque, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 8', 'elena.mendoza7@email.com', '09123456708', NULL, '1982-06-05', 44, 'Vendor', 'Market Vendor', 'City Center, Bulacan', NULL, 'Elena E. Mendoza', 'Reference Person A-7', 'Coworker', '09123456008', 'Barangay San Roque, Nueva Ecija, Philippines', 'Reference Person B-7', 'Friend', '09123456008', 'Barangay San Roque, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-06-30 03:12:11', '2026-08-14 10:12:06'),
(40, '2026-0009', '$2y$10$w0hekQi3hrbOr7Qf69PnF.Gp.i6BmX0.eSBLZ8xFUOZlxoBRO7TKS', 1, 1, 'Lopez', 'Miguel', 'F.', NULL, 'Single', 'Male', 'Barangay San Juan, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 1', 'miguel.lopez8@email.com', '09123456709', NULL, '2000-04-20', 26, 'Clerk', 'LGU', 'Municipal Hall, Nueva Ecija', 'Miguel F. Lopez', NULL, 'Reference Person A-8', 'Neighbor', '09123456009', 'Barangay San Juan, Bulacan, Philippines', 'Reference Person B-8', 'Church Member', '09123456009', 'Barangay San Juan, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-05-16 03:12:11', '2026-08-14 10:12:06'),
(41, '2026-0010', '$2y$10$WpYI0506CsS9.hcckDK3KOyxFeROln4IKtBzFH1gPA70rODnKgtA.', 1, 1, 'Garcia', 'Sofia', 'G.', NULL, 'Married', 'Female', 'Barangay San Pedro, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 2', 'sofia.garcia9@email.com', '09123456710', NULL, '1991-08-14', 35, 'Government Employee', 'Government Agency', 'City Center, Bulacan', NULL, 'Sofia G. Garcia', 'Reference Person A-9', 'Former Classmate', '09123456010', 'Barangay San Pedro, Nueva Ecija, Philippines', 'Reference Person B-9', 'Coworker', '09123456010', 'Barangay San Pedro, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-03-02 03:12:11', '2026-08-14 10:12:06'),
(42, '2026-0011', '$2y$10$rdIw4hHcXFg0EtlyQcz4rehbgH.z2BOaNTbuIVQLBETBHV.l/kYoi', 1, 1, 'Martinez', 'Antonio', 'C.', 'Jr.', 'Single', 'Male', 'Barangay San Jose, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 3', 'antonio.martinez10@email.com', '09123456711', NULL, '1993-02-28', 33, 'Carpenter', 'Construction Firm', 'Municipal Hall, Nueva Ecija', 'Antonio C. Martinez', NULL, 'Reference Person A-10', 'Coworker', '09123456011', 'Barangay San Jose, Bulacan, Philippines', 'Reference Person B-10', 'Neighbor', '09123456011', 'Barangay San Jose, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-06-05 03:12:11', '2026-08-14 10:12:06'),
(43, '2026-0012', '$2y$10$YS9XHdDqcAk.hDehy0oVt.4u8pud1KTBgQ1xcC99XZwlBvb5RrwoO', 1, 1, 'Rodriguez', 'Luisa', 'D.', NULL, 'Married', 'Female', 'Barangay Santo Niño, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 4', 'luisa.rodriguez11@email.com', '09123456712', NULL, '1987-10-03', 39, 'OFW', 'Private Company', 'City Center, Bulacan', NULL, 'Luisa D. Rodriguez', 'Reference Person A-11', 'Friend', '09123456012', 'Barangay Santo Niño, Nueva Ecija, Philippines', 'Reference Person B-11', 'Church Member', '09123456012', 'Barangay Santo Niño, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-01-31 03:12:11', '2026-08-14 10:12:06'),
(44, '2026-0013', '$2y$10$/OgQw.8oQC3VNxvPw84W6eSCrAlKTsqO1ess0qDKgcdyas925eUu2', 1, 1, 'Cruz', 'Ramon', 'E.', NULL, 'Single', 'Male', 'Barangay Poblacion, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 5', 'ramon.cruz12@email.com', '09123456713', NULL, '1990-07-07', 36, 'Business Owner', 'Self-Employed', 'Municipal Hall, Nueva Ecija', 'Ramon E. Cruz', NULL, 'Reference Person A-12', 'Neighbor', '09123456013', 'Barangay Poblacion, Bulacan, Philippines', 'Reference Person B-12', 'Former Classmate', '09123456013', 'Barangay Poblacion, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-06-20 03:12:11', '2026-08-14 10:12:07'),
(45, '2026-0014', '$2y$10$o1FL3AsXCgg0MFJUKqEdTOqJXoqg0LO8ixQkpBks/SW0xlGpQgf7K', 0, 1, 'Aquino', 'Carmen', 'F.', NULL, 'Married', 'Female', 'Barangay San Isidro, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 6', 'carmen.aquino13@email.com', '09123456714', NULL, '1975-09-01', 51, 'Teacher', 'DepEd', 'City Center, Bulacan', NULL, 'Carmen F. Aquino', 'Reference Person A-13', 'Coworker', '09123456014', 'Barangay San Isidro, Nueva Ecija, Philippines', 'Reference Person B-13', 'Friend', '09123456014', 'Barangay San Isidro, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-04-21 03:12:11', '2026-08-14 10:42:16'),
(46, '2026-0015', '$2y$10$jhu/mCmaHNntPegQA9B5aeLUNiHwQL4sCMakhbwta42um9BlSfOfy', 1, 1, 'Castillo', 'Gregorio', 'G.', NULL, 'Single', 'Male', 'Barangay Bagong Silang, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 7', 'gregorio.castillo14@email.com', '09123456715', NULL, '1996-12-19', 29, 'Security Guard', 'Private Company', 'Municipal Hall, Nueva Ecija', 'Gregorio G. Castillo', NULL, 'Reference Person A-14', 'Church Member', '09123456015', 'Barangay Bagong Silang, Bulacan, Philippines', 'Reference Person B-14', 'Neighbor', '09123456015', 'Barangay Bagong Silang, Bulacan, Philippines', NULL, NULL, NULL, NULL, NULL, '2026-05-06 03:12:11', '2026-08-14 10:12:07'),
(47, '2026-0016', '$2y$10$iEuv5kvY3IZcGBC1Q2zkmOhWg8SPtwxb00TFZhN4T3PyJ3hDBH8hC', 0, 1, 'Suavero', 'Costa', 'L', 'Sr', 'Married', 'Male', 'Barangay San Isidro, Nueva Ecija, Philippines', NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 6', 'franzjuris@yahoo.com', '09764703228', NULL, '1993-03-03', 33, 'Security Guard', 'Hospital', 'Municipal Hall, Nueva Ecijaa', 'sdsds', 'sdsd', 'dsds', 'Friend', '09764703228', 'dsd', 'Juris Aduna', 'Friend', '09764703228', 'dsds', 'sdsds', 'ddsds', '09764826345', NULL, 'uploads/photos/member_1785381759_446.jpeg', '2026-07-30 03:22:39', '2026-07-30 03:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `member_id`, `staff_id`, `type`, `title`, `message`, `is_read`, `created_at`) VALUES
(1, NULL, 1, 'success', 'New Resident Created', 'Costa Suavero (Resident #2026-0016) has been registered.', 1, '2026-07-30 03:22:39'),
(2, 47, NULL, 'info', 'Welcome!', 'Your account has been created. Your default password is your Resident Number. Please change it on first login.', 0, '2026-07-30 03:22:39'),
(3, 47, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-07-30 03:22:59'),
(4, 47, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-07-30 03:47:01'),
(5, 47, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-07-30 03:47:55'),
(6, 32, NULL, 'success', 'Password Reset', 'Your password was reset successfully. Please sign in with your new password.', 0, '2026-08-13 09:26:53'),
(7, 32, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-13 09:27:45'),
(8, 32, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-13 09:29:08'),
(9, 32, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-13 09:37:41'),
(10, 32, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-13 09:37:44'),
(11, 32, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-13 09:37:48'),
(12, 32, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-13 09:37:51'),
(13, 32, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-13 09:37:51'),
(14, 32, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-13 09:41:10'),
(15, 32, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-13 09:41:10'),
(16, 33, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:08:55'),
(17, 33, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-14 10:09:13'),
(18, 33, NULL, 'success', 'Survey Submitted', 'Thank you for answering \"Health Services Satisfaction Survey\".', 0, '2026-08-14 10:10:15'),
(19, 32, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:12:11'),
(20, 36, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:12:11'),
(21, 41, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:12:11'),
(22, 36, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:12:27'),
(23, 36, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-14 10:12:36'),
(24, 37, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:15:10'),
(25, 37, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-14 10:15:17'),
(26, 34, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:20:15'),
(27, 34, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-14 10:20:25'),
(28, 34, NULL, 'success', 'Survey Submitted', 'Thank you for answering \"Barangay Health Services Survey\".', 0, '2026-08-14 10:21:05'),
(29, NULL, 1, 'info', 'Staff Account Created', 'A new staff account \'nurse.maria\' was created.', 1, '2026-08-14 10:28:04'),
(30, NULL, 2, 'warning', 'Password Reset', 'Your staff account password was reset by an administrator.', 0, '2026-08-14 10:28:14'),
(31, 45, NULL, 'warning', 'Password Change Required', 'Please change your default password for security.', 0, '2026-08-14 10:42:10'),
(32, 45, NULL, 'success', 'Password Changed', 'Your password has been changed successfully.', 0, '2026-08-14 10:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `token_hash` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `member_id`, `token_hash`, `expires_at`, `used`, `created_at`) VALUES
(1, 32, 'ce21e3122c4eae9098b116187ec689eec2460392d1d3b1cac1b77eaf2bf923ec', '2026-08-13 17:56:38', 1, '2026-08-13 09:26:38'),
(2, 32, '5eb126d97e545ab8dd2be40c017a1d850b49c4b723738ee78909cb425c329d5e', '2026-08-13 17:56:53', 1, '2026-08-13 09:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `spouse_info`
--

CREATE TABLE `spouse_info` (
  `spouse_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `spouse_name` varchar(150) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `employer` varchar(150) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spouse_info`
--

INSERT INTO `spouse_info` (`spouse_id`, `member_id`, `spouse_name`, `occupation`, `employer`, `updated_at`) VALUES
(1, 47, 'Uy', 'Teacher', 'School', '2026-07-30 03:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `username`, `password`, `full_name`, `email`, `is_active`, `created_at`) VALUES
(1, 'admin', '$2y$10$w3kFwAV6PcNo5PGdArc9SuP4L7TZoqRvIsvc90bNVGJV5gYQoMH0m', 'System Administrator', 'admin@coop.local', 1, '2026-07-30 03:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `survey_answers`
--

CREATE TABLE `survey_answers` (
  `answer_id` int(11) NOT NULL,
  `response_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `choice_id` int(11) DEFAULT NULL,
  `rating_value` tinyint(4) DEFAULT NULL,
  `answer_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_answers`
--

INSERT INTO `survey_answers` (`answer_id`, `response_id`, `question_id`, `choice_id`, `rating_value`, `answer_text`) VALUES
(58, 15, 13, NULL, 5, NULL),
(59, 15, 14, NULL, NULL, NULL),
(60, 15, 15, NULL, NULL, NULL),
(61, 15, 16, NULL, NULL, NULL),
(62, 15, 17, NULL, NULL, 'Please add more staff during peak hours.'),
(72, 18, 13, NULL, 5, NULL),
(73, 18, 14, NULL, NULL, NULL),
(74, 18, 15, NULL, NULL, NULL),
(75, 18, 16, NULL, NULL, NULL),
(76, 18, 17, NULL, NULL, 'Keep up the good work!'),
(77, 19, 13, NULL, 4, NULL),
(78, 19, 14, NULL, NULL, NULL),
(79, 19, 15, NULL, NULL, NULL),
(80, 19, 16, NULL, NULL, NULL),
(81, 20, 13, NULL, 2, NULL),
(82, 20, 14, NULL, NULL, NULL),
(83, 20, 15, NULL, NULL, NULL),
(84, 20, 16, NULL, NULL, NULL),
(85, 20, 17, NULL, NULL, 'Longer operating hours please.'),
(86, 21, 13, NULL, 4, NULL),
(87, 21, 14, NULL, NULL, NULL),
(88, 21, 15, NULL, NULL, NULL),
(89, 21, 16, NULL, NULL, NULL),
(90, 22, 13, NULL, 5, NULL),
(91, 22, 14, NULL, NULL, NULL),
(92, 22, 15, NULL, NULL, NULL),
(93, 22, 16, NULL, NULL, NULL),
(94, 22, 17, NULL, NULL, 'Clean and fast service.'),
(95, 23, 13, NULL, 3, NULL),
(96, 23, 14, NULL, NULL, NULL),
(97, 23, 15, NULL, NULL, NULL),
(98, 23, 16, NULL, NULL, NULL),
(99, 23, 17, NULL, NULL, 'More waiting chairs needed.'),
(100, 24, 13, NULL, 4, NULL),
(101, 24, 14, NULL, NULL, NULL),
(102, 24, 15, NULL, NULL, NULL),
(103, 24, 16, NULL, NULL, NULL),
(104, 24, 17, NULL, NULL, 'Satisfied with the free vaccination.'),
(105, 25, 13, NULL, 1, NULL),
(106, 25, 14, NULL, NULL, NULL),
(107, 25, 15, NULL, NULL, NULL),
(108, 25, 16, NULL, NULL, NULL),
(109, 25, 17, NULL, NULL, 'sdsds');

-- --------------------------------------------------------

--
-- Table structure for table `survey_choices`
--

CREATE TABLE `survey_choices` (
  `choice_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `choice_text` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_choices`
--

INSERT INTO `survey_choices` (`choice_id`, `question_id`, `choice_text`, `sort_order`) VALUES
(30, 14, 'Monthly', 0),
(31, 14, 'Quarterly', 1),
(32, 14, 'Rarely', 2),
(33, 14, 'First time', 3),
(34, 15, 'Yes', 0),
(35, 15, 'No', 1),
(36, 16, 'Consultation', 0),
(37, 16, 'Vaccination', 1),
(38, 16, 'Maternal / Child Care', 2),
(39, 16, 'Dental', 3),
(40, 16, 'Laboratory', 4);

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `question_type` enum('multiple_choice','yes_no','rating','short_answer') NOT NULL DEFAULT 'multiple_choice',
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`question_id`, `survey_id`, `question_text`, `question_type`, `is_required`, `sort_order`) VALUES
(13, 4, 'How would you rate the overall service of the Barangay Health Center?', 'rating', 1, 0),
(14, 4, 'How often do you visit the health center?', 'multiple_choice', 1, 1),
(15, 4, 'Were you satisfied with the waiting time during your visit?', 'yes_no', 1, 2),
(16, 4, 'Which of our services have you used?', 'multiple_choice', 1, 3),
(17, 4, 'Any suggestions to improve our health center?', 'short_answer', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE `survey_responses` (
  `response_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_responses`
--

INSERT INTO `survey_responses` (`response_id`, `survey_id`, `member_id`, `submitted_at`) VALUES
(15, 4, 32, '2026-07-30 10:13:56'),
(18, 4, 35, '2026-07-26 10:13:56'),
(19, 4, 36, '2026-07-27 10:13:56'),
(20, 4, 37, '2026-07-28 10:13:56'),
(21, 4, 38, '2026-07-26 10:13:56'),
(22, 4, 39, '2026-08-09 10:13:56'),
(23, 4, 40, '2026-08-07 10:13:56'),
(24, 4, 41, '2026-07-31 10:13:56'),
(25, 4, 34, '2026-08-14 10:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `survey_results`
--

CREATE TABLE `survey_results` (
  `result_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `choice_id` int(11) DEFAULT NULL,
  `rating_value` tinyint(4) DEFAULT NULL,
  `response_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_results`
--

INSERT INTO `survey_results` (`result_id`, `survey_id`, `question_id`, `choice_id`, `rating_value`, `response_count`) VALUES
(318, 4, 13, NULL, 1, 1),
(319, 4, 13, NULL, 2, 1),
(320, 4, 13, NULL, 3, 1),
(321, 4, 13, NULL, 4, 3),
(322, 4, 13, NULL, 5, 3),
(323, 4, 14, NULL, NULL, 9),
(324, 4, 15, NULL, NULL, 9),
(325, 4, 16, NULL, NULL, 9),
(326, 4, 17, NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `survey_surveys`
--

CREATE TABLE `survey_surveys` (
  `survey_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `starts_at` date DEFAULT NULL,
  `ends_at` date DEFAULT NULL,
  `status` enum('draft','active','closed') NOT NULL DEFAULT 'draft',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_surveys`
--

INSERT INTO `survey_surveys` (`survey_id`, `title`, `description`, `starts_at`, `ends_at`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Barangay Health Services Surveyy', 'Help us improve the Barangay Health Center by sharing your experience with our services. Your answers are confidential and anonymous.', '2026-08-01', '2026-12-31', 'active', NULL, '2026-08-14 10:13:56', '2026-08-14 10:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `update_logs`
--

CREATE TABLE `update_logs` (
  `log_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `updated_by` enum('Member','Staff') NOT NULL,
  `updated_by_name` varchar(150) DEFAULT NULL,
  `section` varchar(100) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `update_logs`
--

INSERT INTO `update_logs` (`log_id`, `member_id`, `updated_by`, `updated_by_name`, `section`, `remarks`, `updated_at`) VALUES
(1, 47, 'Staff', 'System Administrator', 'Resident Account Created', 'New resident registered by staff.', '2026-07-30 03:22:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`child_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `account_number` (`account_number`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `spouse_info`
--
ALTER TABLE `spouse_info`
  ADD PRIMARY KEY (`spouse_id`),
  ADD UNIQUE KEY `member_id` (`member_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `response_id` (`response_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `choice_id` (`choice_id`);

--
-- Indexes for table `survey_choices`
--
ALTER TABLE `survey_choices`
  ADD PRIMARY KEY (`choice_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`response_id`),
  ADD UNIQUE KEY `uq_survey_response` (`survey_id`,`member_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `survey_results`
--
ALTER TABLE `survey_results`
  ADD PRIMARY KEY (`result_id`),
  ADD UNIQUE KEY `uq_survey_result` (`survey_id`,`question_id`,`choice_id`,`rating_value`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `choice_id` (`choice_id`);

--
-- Indexes for table `survey_surveys`
--
ALTER TABLE `survey_surveys`
  ADD PRIMARY KEY (`survey_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `update_logs`
--
ALTER TABLE `update_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `children`
--
ALTER TABLE `children`
  MODIFY `child_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spouse_info`
--
ALTER TABLE `spouse_info`
  MODIFY `spouse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survey_answers`
--
ALTER TABLE `survey_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `survey_choices`
--
ALTER TABLE `survey_choices`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `survey_results`
--
ALTER TABLE `survey_results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `survey_surveys`
--
ALTER TABLE `survey_surveys`
  MODIFY `survey_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `update_logs`
--
ALTER TABLE `update_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `children_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE;

--
-- Constraints for table `spouse_info`
--
ALTER TABLE `spouse_info`
  ADD CONSTRAINT `spouse_info_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD CONSTRAINT `survey_answers_ibfk_1` FOREIGN KEY (`response_id`) REFERENCES `survey_responses` (`response_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `survey_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`question_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `survey_answers_ibfk_3` FOREIGN KEY (`choice_id`) REFERENCES `survey_choices` (`choice_id`) ON DELETE SET NULL;

--
-- Constraints for table `survey_choices`
--
ALTER TABLE `survey_choices`
  ADD CONSTRAINT `survey_choices_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`question_id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD CONSTRAINT `survey_questions_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey_surveys` (`survey_id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD CONSTRAINT `survey_responses_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey_surveys` (`survey_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `survey_responses_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_results`
--
ALTER TABLE `survey_results`
  ADD CONSTRAINT `survey_results_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey_surveys` (`survey_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `survey_results_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`question_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `survey_results_ibfk_3` FOREIGN KEY (`choice_id`) REFERENCES `survey_choices` (`choice_id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_surveys`
--
ALTER TABLE `survey_surveys`
  ADD CONSTRAINT `survey_surveys_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`staff_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
