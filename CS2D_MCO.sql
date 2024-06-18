-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 04:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `reg_date`) VALUES
(1, 100, 'Jenny Gazmen', 'Jnygzmn', 'Female', 'Sta Cruz, Ilocos Sur', '111-111-1114', 'admin@gmail.com', 'uploads/imagee.png', '2018-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `receiver_index` bigint(11) NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_room`
--

CREATE TABLE `class_room` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_room`
--

INSERT INTO `class_room` (`id`, `name`, `student_count`) VALUES
(24, 'CHED122', 35),
(25, 'CHED123', 35),
(26, 'CHED121', 35),
(27, 'CHED124', 35),
(28, 'CHED125', 35),
(29, 'CORA', 35),
(30, 'CORB', 35),
(31, 'CORC', 35),
(32, 'IR', 35),
(33, 'CAS111', 35);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `grade_id` varchar(255) NOT NULL,
  `create_by` bigint(11) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_category`
--

CREATE TABLE `event_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_category_type`
--

CREATE TABLE `event_category_type` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`) VALUES
(4, 'Term 1'),
(5, 'Term 2'),
(6, 'Term 3');

-- --------------------------------------------------------

--
-- Table structure for table `exam_range_grade`
--

CREATE TABLE `exam_range_grade` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `mark_range` varchar(255) NOT NULL,
  `_from` int(11) NOT NULL,
  `_to` int(11) NOT NULL,
  `mark_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_range_grade`
--

INSERT INTO `exam_range_grade` (`id`, `grade_id`, `mark_range`, `_from`, `_to`, `mark_grade`) VALUES
(51, 11, '0-35', 0, 35, 'F'),
(52, 11, '35-45', 35, 45, 'S'),
(53, 11, '45-55', 45, 55, 'C'),
(54, 11, '55-75', 55, 75, 'B'),
(55, 11, '75-85', 75, 85, 'A'),
(56, 11, '85-100', 85, 100, 'A+'),
(57, 12, '0-35', 0, 35, 'F'),
(58, 12, '35-45', 35, 45, 'S'),
(59, 12, '45-55', 45, 55, 'C'),
(60, 12, '55-75', 55, 75, 'B'),
(61, 12, '75-85', 75, 85, 'A'),
(62, 12, '85-100', 85, 100, 'A+'),
(63, 13, '0-35', 0, 35, 'F'),
(64, 13, '35-45', 35, 45, 'S'),
(65, 13, '45-55', 45, 55, 'C'),
(66, 13, '55-75', 55, 75, 'B'),
(67, 13, '75-85', 75, 85, 'A'),
(68, 13, '85-100', 85, 100, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `exam_timetable`
--

CREATE TABLE `exam_timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admission_fee` double(11,2) NOT NULL,
  `hall_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `name`, `admission_fee`, `hall_charge`) VALUES
(11, 'BSCS 2A', 1000.00, 25),
(12, 'BSCS 2B', 1000.00, 25),
(13, 'BSCS 2C', 1000.00, 25);

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

CREATE TABLE `group_message` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_notifications`
--

CREATE TABLE `main_notifications` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `main_notifications`
--

INSERT INTO `main_notifications` (`id`, `notification_id`, `_status`, `year`, `month`, `date`, `_isread`) VALUES
(1, 1, 'Payments', '2017', 'November', '2017-11-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_friends`
--

CREATE TABLE `my_friends` (
  `id` int(11) NOT NULL,
  `my_index` bigint(11) NOT NULL,
  `friend_index` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `my_type` varchar(255) NOT NULL,
  `friend_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_history`
--

CREATE TABLE `notification_history` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_chat`
--

CREATE TABLE `online_chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_index` bigint(11) NOT NULL,
  `msg` longtext NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `index_number` varchar(255) NOT NULL,
  `my_son_index` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `reg_date` date NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `index_number`, `my_son_index`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `reg_date`, `reg_year`, `reg_month`, `_status`) VALUES
(16, 'G-1234', 1234, 'Justino Dela Cruz12', 'JDelaCruz', 'Male', 'Vigan, Ilocos Sur', '362-272-2828', 'Jdela123678Cruz@gmail.com', 'uploads/20240617080624.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(17, 'G-2', 2, 'Mark Tudayan', 'MTudayan', 'Male', 'Galimuyod', '222-222-2222', 'mark@gmail.com', 'uploads/20240617102158.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(18, 'G-3', 3, 'Albert Ragasa', 'Al Ragasa', 'Male', 'Candon, Ilocos Sur', '435-765-9665', 'albert@gmail.com', 'uploads/20240617023407.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(19, 'G-4', 4, 'Maria Pascual', 'Maria', 'Female', 'Sta Lucia, Ilocos Sur', '345-876-8754', 'maria03@gmail.com', 'uploads/20240617024201.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(20, 'G-5', 5, 'Anne Alviento', 'Anne', 'Female', 'Candon City, Ilocos Sur', '345-436-8765', 'anne@gmail.com', 'uploads/20240617025022.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(21, 'G-6', 6, 'Manuel Alupani', 'Manuel', 'Male', 'Tagudin, Ilocos Sur', '345-765-8754', 'manuel@gmail.com', 'uploads/20240617025746.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(22, 'G-7', 7, 'Pablo Bayle', 'PB', 'Male', 'Candon City, Ilocos Sur', '123-345-6788', 'Pablo@gmail.com', 'uploads/20240617030039.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(23, 'G-8', 8, 'Anne Balantic', 'Anne B', 'Female', 'Del Pilar, Ilocos Sur', '234-765-9876', 'Anne1@gmail.com', 'uploads/20240617030314.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(24, 'G-9', 9, 'Mae Rendon', 'M.Rendon', 'Female', 'Candon City, Ilocos Sur', '123-765-8765', 'mae@gmail.com', 'uploads/20240617030537.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(25, 'G-10', 10, 'Erick Reyes', 'E.Reyes', 'Male', 'Candon City, Ilocos Sur', '456-765-2345', 'erick@gmail.com', 'uploads/20240617030749.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(26, 'G-11', 11, 'Rosie  Consolasion', 'R. Consolasion', 'Female', 'Quirino, Ilocos Sur', '456-876-1234', 'rosiec@gmail.com', 'uploads/20240617031049.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(27, 'G-12', 12, 'Jennifer Manzano', 'Jennifer', 'Female', 'Candon City, Ilocos Sur', '674-876-2567', 'jennifer@gmail.com', 'uploads/20240617031251.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(28, 'G-13', 13, 'John Felipe', 'J.Felipe', 'Male', 'Candon City, Ilocos Sur', '456-876-1234', 'jfelipe@gmail.com', 'uploads/20240617031454.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(29, 'G-14', 14, 'Maria Publico', 'M.Publico', 'Female', 'Sta Lucia, Ilocos Sur', '234-876-1234', 'mp@gmail.com', 'uploads/20240617031656.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(30, 'G-15', 15, 'Jean Galace', 'J.Galace', 'Female', 'Candon City, Ilocos Sur', '123-654-1234', 'jean@gmail.com', 'uploads/20240617031912.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(31, 'G-16', 16, 'Myrna Dela Rosa', 'M.Dela Rosa', 'Female', 'Sta Lucia, Ilocos Sur', '222-111-9999', 'mdr@gmail.com', 'uploads/20240617032107.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(32, 'G-17', 17, 'Gardo Gasatan', 'G.Gasatan', 'Male', 'Candon City, Ilocos Sur', '111-111-1111', 'GG@gmail.com', 'uploads/20240617032313.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(33, 'G-18', 18, 'Popoy Villalobos', 'P.V', 'Male', 'Candon City, Ilocos Sur', '222-222-2222', 'PV@gmail.com', 'uploads/20240617032516.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(34, 'G-19', 19, 'Anna Esperanza', 'A.E', 'Female', 'San Esteban, Ilocos Sur', '222-111-8888', 'AE@gmail.com', 'uploads/20240617032711.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(35, 'G-20', 20, 'Myleen Garcia', 'M.Ga', 'Female', 'Sta Cruz, Ilocos Sur', '234-987-4444', 'mgarcia@gmail.com', 'uploads/20240617032853.jpg', '0000-00-00', '2024-06-17', '2024', 'June', ''),
(36, 'G-22', 22, 'chester Manzano', 'chstr', 'Male', 'sta. cruz, ilocos sur', '091-534-2345', 'chester@gmail.com', 'uploads/20240618063216.jpg', '0000-00-00', '2024-06-18', '2024', 'June', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_notifications`
--

CREATE TABLE `payment_notifications` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_notifications`
--

INSERT INTO `payment_notifications` (`id`, `index_number`, `year`, `month`, `date`, `_status`) VALUES
(1, 11, '2017', 'November', '2017-11-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash`
--

CREATE TABLE `petty_cash` (
  `id` int(11) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `paid` double(11,2) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_history`
--

CREATE TABLE `petty_cash_history` (
  `id` int(11) NOT NULL,
  `_desc` varchar(255) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount` double(11,2) NOT NULL,
  `total_paid` double(11,2) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `_status` varchar(255) NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `_status`, `reg_year`, `reg_month`, `reg_date`) VALUES
(26, 1, 'John Doe ', 'JD', 'Male', 'Candon, Ilocos Sur', '123-345-5746', 'jdoe@gmail.com', 'uploads/20240617092947.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(27, 2, 'Maria Tudayan', 'MTudayan', 'Female', 'Galimuyod', '222-222-2222', 'maria@gmail.com', 'uploads/20240617102157.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(28, 3, 'Marc Dion Ragasa', 'MD.Ragasa', 'Male', 'Candon, Ilocos Sur', '234-567-8665', 'marcragasa@gmail.com', 'uploads/20240617023406.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(29, 4, 'Jheran Pascual', 'Jpascual', 'Female', 'Sta Lucia, Ilocos Sur', '345-765-9875', 'jpascual@gmail.com', 'uploads/20240617024200.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(30, 5, 'Janice Alviento', 'Janice', 'Female', 'Candon City, Ilocos Sur', '345-876-0987', 'janice@gmail.com', 'uploads/20240617025021.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(31, 6, 'Tricia Alupani', 'Tricia', 'Female', 'Tagudin, Ilocos Sur', '234-567-9875', 'TAlupani@gmail.com', 'uploads/20240617025745.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(32, 7, 'Carylle Bayle', 'CB', 'Female', 'Candon City, Ilocos Sur', '345-987-0987', 'bayle@gmail.com', 'uploads/20240617030038.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(33, 8, 'Paulo Balantic', 'Paulo B.', 'Male', 'Del Pilar, Ilocos Sur', '345-546-2343', 'paulobalantic@gmail.com', 'uploads/20240617030313.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(34, 9, 'Darlyn Rendon', 'D.Rendon', 'Female', 'Candon City, Ilocos Sur', '345-123-4567', 'darlenerendon@gmail.com', 'uploads/20240617030536.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(35, 10, 'Aya Reyes', 'A.Reyes', 'Female', 'Candon City, Ilocos Sur', '234-987-4567', 'ayareyes@gmail.com', 'uploads/20240617030748.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(36, 11, 'John Consolasion', 'J.Consolasion', 'Male', 'Quirino, Ilocos Sur', '123-098-2345', 'jconsolasion@gmail.com', 'uploads/20240617031048.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(37, 12, 'Genesis Manzano', 'G.Manzano', 'Male', 'Candon City, Ilocos Sur', '456-654-2348', 'manzanogen@gmail.com', 'uploads/20240617031250.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(38, 13, 'Kentdrick Felipe', 'K.Felipe', 'Male', 'Candon City, Ilocos Sur', '095-345-7653', 'Kentfelipe@gmail.com', 'uploads/20240617031453.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(39, 14, 'Hezekaiah Publico', 'H.Publico', 'Male', 'Sta Lucia, Ilocos Sur', '345-675-8765', 'hpublico@gmail.com', 'uploads/20240617031655.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(40, 15, 'Sean Galace', 'S.Galace', 'Male', 'Candon City, Ilocos Sur', '345-123-9876', 'Sean@gmail.com', 'uploads/20240617031911.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(41, 16, 'Izza Dela Rosa', 'I.DR', 'Female', 'Sta Lucia, Ilocos Sur', '123-222-3333', 'izzadr@gmail.com', 'uploads/20240617032106.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(42, 17, 'Sharmaine Gasatan', 'S.Gasatan', 'Female', 'Candon City, Ilocos Sur', '666-555-8888', 'sharmaine@gmail.com', 'uploads/20240617032312.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(43, 18, 'Angel Villalobos', 'A.V', 'Female', 'Candon City, Ilocos Sur', '345-888-0000', 'angelv@gmail.com', 'uploads/20240617032515.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(44, 19, 'Mark Chester Ezperanza', 'M.C.E', 'Male', 'San Esteban, Ilocos Sur', '111-444-5555', 'mark1@gmail.com', 'uploads/20240617032710.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(45, 20, 'Marife Garcia', 'M.G', 'Female', 'Sta Cruz, Ilocos Sur', '345-987-0987', 'marife@gmail.com', 'uploads/20240617032852.jpg', '0000-00-00', '', '2024', 'June', '2024-06-17'),
(46, 21, 'Marife Garcia II', 'M.G', 'Female', 'Sta Cruz, Ilocos Sur', '345-987-0987', 'marife1@gmail.com', 'uploads/20240618032042.jpg', '0000-00-00', '', '2024', 'June', '2024-06-18'),
(47, 22, 'jennylea manzano', 'jnnylm', 'Female', 'sta. cruz, ilocos sur', '121-024-2222', 'jnnylee@gmail.com', 'uploads/20240618063215.jpg', '0000-00-00', '', '2024', 'June', '2024-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(1, 11, '2017-11-25', 'November', '2017', '11:30:59', 'intime', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_exam`
--

INSERT INTO `student_exam` (`id`, `index_number`, `grade_id`, `exam_id`, `subject_id`, `marks`, `year`, `date`) VALUES
(37, 11, 11, 4, 15, '45', '2017', '2017-11-26'),
(38, 11, 11, 4, 16, '60', '2017', '2017-11-26'),
(39, 11, 11, 4, 17, '95', '2017', '2017-11-26'),
(40, 11, 11, 4, 18, '65', '2017', '2017-11-26'),
(41, 11, 11, 4, 19, '60', '2017', '2017-11-26'),
(42, 11, 11, 4, 20, '90', '2017', '2017-11-26'),
(43, 11, 11, 5, 15, '75', '2017', '2017-11-26'),
(44, 11, 11, 5, 16, '95', '2017', '2017-11-26'),
(45, 11, 11, 5, 17, '65', '2017', '2017-11-26'),
(46, 11, 11, 5, 18, '85', '2017', '2017-11-26'),
(47, 11, 11, 5, 19, '92', '2017', '2017-11-26'),
(48, 11, 11, 5, 20, '98', '2017', '2017-11-26'),
(49, 11, 11, 6, 15, '75', '2017', '2017-11-26'),
(50, 11, 11, 6, 16, '94', '2017', '2017-11-26'),
(51, 11, 11, 6, 17, '70', '2017', '2017-11-26'),
(52, 11, 11, 6, 18, '97', '2017', '2017-11-26'),
(53, 11, 11, 6, 19, '82', '2017', '2017-11-26'),
(54, 11, 11, 6, 20, '97', '2017', '2017-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`id`, `index_number`, `grade_id`, `year`) VALUES
(81, 11, 11, '2017'),
(82, 12, 11, '2017'),
(83, 13, 11, '2017'),
(86, 14, 11, '2017'),
(87, 25252525, 11, '2018'),
(88, 1, 11, '2024'),
(89, 11, 11, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `student_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `index_number`, `year`, `month`, `date`, `paid`, `_status`, `student_status`) VALUES
(225, 11, '2017', 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(226, 11, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(227, 12, '2017', 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(228, 12, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(229, 13, '2017', 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(230, 13, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(234, 14, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(235, 25252525, '2018', 'February', '2018-02-04', 1000.00, 'Admission Fee', ''),
(236, 25252525, '2018', 'February', '2018-02-04', 1500.00, 'Monthly Fee1', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment_history`
--

CREATE TABLE `student_payment_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_payment_history`
--

INSERT INTO `student_payment_history` (`id`, `index_number`, `grade_id`, `subject_id`, `teacher_id`, `subject_fee`, `subtotal`, `_status`, `month`, `year`, `date`, `invoice_number`) VALUES
(582, 11, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(583, 11, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(584, 11, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(585, 11, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(586, 11, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(587, 11, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(588, 12, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(589, 12, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(590, 12, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(591, 12, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(592, 12, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(593, 12, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(594, 13, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(595, 13, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(596, 13, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(597, 13, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(598, 13, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(599, 13, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(612, 14, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(613, 14, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(614, 14, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(615, 14, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(616, 14, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(617, 14, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(618, 25252525, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(619, 25252525, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(620, 25252525, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(621, 25252525, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(622, 25252525, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(623, 25252525, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235);

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `sr_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `reg_month` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `index_number`, `_status`, `sr_id`, `year`, `reg_month`) VALUES
(201, 11, '', 17, 2017, ''),
(202, 11, '', 18, 2017, ''),
(203, 11, '', 19, 2017, ''),
(204, 11, '', 20, 2017, ''),
(205, 11, '', 21, 2017, ''),
(206, 11, '', 22, 2017, ''),
(207, 12, '', 17, 2017, ''),
(208, 12, '', 18, 2017, ''),
(209, 12, '', 19, 2017, ''),
(210, 12, '', 20, 2017, ''),
(211, 12, '', 21, 2017, ''),
(212, 12, '', 22, 2017, ''),
(213, 13, '', 17, 2017, ''),
(214, 13, '', 18, 2017, ''),
(215, 13, '', 19, 2017, ''),
(216, 13, '', 20, 2017, ''),
(217, 13, '', 21, 2017, ''),
(218, 13, '', 22, 2017, ''),
(231, 14, '', 17, 2017, ''),
(232, 14, '', 18, 2017, ''),
(233, 14, '', 19, 2017, ''),
(234, 14, '', 20, 2017, ''),
(235, 14, '', 21, 2017, ''),
(236, 14, '', 22, 2017, ''),
(237, 25252525, '', 17, 2018, ''),
(238, 25252525, '', 18, 2018, ''),
(239, 25252525, '', 19, 2018, ''),
(240, 25252525, '', 20, 2018, ''),
(241, 25252525, '', 21, 2018, ''),
(242, 25252525, '', 22, 2018, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(21, 'Application Development'),
(22, 'Information Management'),
(23, 'ETHICS'),
(24, 'Pathfit 2'),
(25, 'Introduction to Computing'),
(26, 'System Fundamentals'),
(27, 'Human Computer Interaction'),
(28, 'Art Appreciation'),
(29, 'Purposive Communication'),
(30, 'Philippine Pop Culture'),
(31, 'Web Development'),
(32, 'Fundamentals of Programming'),
(33, 'Intermediate Programming'),
(34, 'Data Structure and Algorithms'),
(35, 'NSTP'),
(36, 'Mathematics in the Modern World'),
(37, 'Parallel and Distributive Computing'),
(38, 'Object-Oriented Programming'),
(39, 'Networks and Communication'),
(40, 'Operating Systems'),
(41, 'PathFit1');

-- --------------------------------------------------------

--
-- Table structure for table `subject_routing`
--

CREATE TABLE `subject_routing` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fee` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject_routing`
--

INSERT INTO `subject_routing` (`id`, `grade_id`, `subject_id`, `teacher_id`, `fee`) VALUES
(17, 11, 15, 10, 250.00),
(18, 11, 16, 11, 250.00),
(19, 11, 17, 12, 250.00),
(20, 11, 18, 13, 250.00),
(21, 11, 19, 14, 250.00),
(22, 11, 20, 15, 250.00),
(23, 12, 15, 10, 350.00),
(24, 12, 16, 11, 350.00),
(25, 12, 17, 12, 350.00),
(26, 12, 18, 13, 350.00),
(27, 12, 19, 14, 350.00),
(28, 12, 20, 15, 350.00),
(29, 13, 15, 10, 400.00),
(30, 13, 16, 11, 400.00),
(31, 13, 17, 12, 400.00),
(32, 13, 18, 13, 400.00),
(33, 13, 19, 14, 400.00),
(34, 13, 20, 15, 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `index_number`, `reg_date`) VALUES
(16, 'Michael Gem Marquez ', 'M.G Marquez', 'Male', 'Sta. Cruz, Ilocos Sur', '157-575-3748', 'MG@gmail.com', 'uploads/20240617070152.jpg', 1, '2024-06-17'),
(17, 'Cliff Owen Pascua', 'CPO Pascua', 'Male', 'Candon, Ilocos Sur', '647-836-3738', 'Copascua@gmail.com', 'uploads/20240617070256.jpg', 2, '2024-06-17'),
(18, 'Ronald Gacusan', 'R.Gacusan', 'Male', 'Candon, Ilocos Sur', '765-832-6378', 'rgacusan@gmail.com', 'uploads/20240617070427.jpg', 3, '2024-06-17'),
(19, 'Clarisee Sunio', 'C.Sunio', 'Female', 'Sta. Lucia, Ilocos Sur', '746-372-4223', 'clarisse@gmail.com', 'uploads/20240617070556.jpg', 4, '2024-06-17'),
(20, 'Lesly Agbulos', 'L.Agbulos', 'Female', 'Candon, Ilocos Sur', '327-176-8373', 'lesagbulos@gmail.com', 'uploads/20240617070701.jpg', 5, '2024-06-17'),
(21, 'maria lee', 'mrl', 'Female', 'paypayad, candon city', '111-222-3377', 'marial@gmail.com', 'uploads/20240618062752.jpg', 6, '2024-06-18'),
(22, '<h1> Ay Nalaing </h1>', 'A.N', 'Male', 'Candon City, Ilocos Sur', '098-674-8887', 'an@gmail.com', 'uploads/20240618064602.jpg', 7, '2024-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary`
--

CREATE TABLE `teacher_salary` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_history`
--

CREATE TABLE `teacher_salary_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `student_count` int(11) NOT NULL,
  `hall_charge` int(11) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `grade_id`, `day`, `subject_id`, `teacher_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(42, 11, 'Sunday', 15, 10, 18, 7.00, 8.00),
(43, 11, 'Monday', 15, 10, 18, 7.00, 8.00),
(44, 11, 'Tuesday', 15, 10, 18, 7.00, 8.00),
(45, 11, 'Wednesday', 15, 10, 18, 7.00, 8.00),
(46, 11, 'Thursday', 15, 10, 18, 7.00, 8.00),
(47, 11, 'Friday', 15, 10, 18, 7.00, 8.00),
(48, 11, 'Sunday', 16, 11, 18, 8.00, 9.00),
(49, 11, 'Monday', 16, 11, 18, 8.00, 9.00),
(50, 11, 'Tuesday', 16, 11, 18, 8.00, 9.00),
(51, 11, 'Wednesday', 16, 11, 18, 8.00, 9.00),
(52, 11, 'Thursday', 16, 11, 19, 8.00, 9.00),
(53, 11, 'Friday', 16, 11, 18, 8.00, 9.00),
(54, 11, 'Sunday', 17, 12, 18, 9.00, 10.00),
(55, 11, 'Monday', 17, 12, 18, 9.00, 10.00),
(56, 11, 'Tuesday', 17, 12, 18, 9.00, 10.00),
(57, 11, 'Wednesday', 17, 12, 18, 9.00, 10.00),
(58, 11, 'Thursday', 17, 12, 18, 9.00, 10.00),
(59, 11, 'Friday', 17, 12, 18, 9.00, 10.00),
(60, 11, 'Sunday', 18, 13, 18, 10.00, 11.00),
(61, 11, 'Monday', 18, 13, 18, 10.00, 11.00),
(62, 11, 'Tuesday', 18, 13, 18, 10.00, 11.00),
(63, 11, 'Wednesday', 18, 13, 18, 10.00, 11.00),
(64, 11, 'Thursday', 18, 13, 18, 10.00, 11.00),
(65, 11, 'Friday', 18, 13, 18, 10.00, 11.00),
(69, 11, 'Sunday', 19, 14, 18, 12.00, 13.00),
(70, 11, 'Monday', 19, 14, 18, 12.00, 13.00),
(71, 11, 'Tuesday', 19, 14, 18, 12.00, 13.00),
(72, 11, 'Wednesday', 19, 14, 18, 12.00, 13.00),
(73, 11, 'Thursday', 19, 14, 18, 12.00, 13.00),
(74, 11, 'Friday', 19, 14, 18, 12.00, 13.00),
(75, 11, 'Sunday', 20, 15, 18, 13.00, 14.00),
(76, 11, 'Monday', 20, 15, 18, 13.00, 14.00),
(77, 11, 'Tuesday', 20, 15, 18, 13.00, 14.00),
(78, 11, 'Wednesday', 20, 15, 18, 13.00, 14.00),
(79, 11, 'Thursday', 20, 15, 18, 13.00, 14.00),
(80, 11, 'Friday', 20, 15, 18, 13.00, 14.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`) VALUES
(29, 'admin@gmail.com', '12345', 'Admin'),
(71, 'MG@gmail.com', '12345', 'Teacher'),
(72, 'Copascua@gmail.com', '12345', 'Teacher'),
(73, 'rgacusan@gmail.com', '12345', 'Teacher'),
(74, 'clarisse@gmail.com', '12345', 'Teacher'),
(75, 'lesagbulos@gmail.com', '12345', 'Teacher'),
(84, 'jdoe@gmail.com', '12345', 'Student'),
(85, 'maria@gmail.com', '12345', 'Student'),
(86, 'mark@gmail.com', '12345', 'Parents'),
(87, 'marcragasa@gmail.com', '12345', 'Student'),
(88, 'albert@gmail.com', '12345', 'Parents'),
(89, 'jpascual@gmail.com', '12345', 'Student'),
(90, 'maria03@gmail.com', '12345', 'Parents'),
(91, 'janice@gmail.com', '12345', 'Student'),
(92, 'anne@gmail.com', '12345', 'Parents'),
(93, 'TAlupani@gmail.com', '12345', 'Student'),
(94, 'manuel@gmail.com', '12345', 'Parents'),
(95, 'bayle@gmail.com', '12345', 'Student'),
(96, 'Pablo@gmail.com', '12345', 'Parents'),
(97, 'paulobalantic@gmail.com', '12345', 'Student'),
(98, 'Anne1@gmail.com', '12345', 'Parents'),
(99, 'darlenerendon@gmail.com', '12345', 'Student'),
(100, 'mae@gmail.com', '12345', 'Parents'),
(101, 'ayareyes@gmail.com', '12345', 'Student'),
(102, 'erick@gmail.com', '12345', 'Parents'),
(103, 'jconsolasion@gmail.com', '12345', 'Student'),
(104, 'rosiec@gmail.com', '12345', 'Parents'),
(105, 'manzanogen@gmail.com', '12345', 'Student'),
(106, 'jennifer@gmail.com', '12345', 'Parents'),
(107, 'Kentfelipe@gmail.com', '12345', 'Student'),
(108, 'jfelipe@gmail.com', '12345', 'Parents'),
(109, 'hpublico@gmail.com', '12345', 'Student'),
(110, 'mp@gmail.com', '12345', 'Parents'),
(111, 'Sean@gmail.com', '12345', 'Student'),
(112, 'jean@gmail.com', '12345', 'Parents'),
(113, 'izzadr@gmail.com', '12345', 'Student'),
(114, 'mdr@gmail.com', '12345', 'Parents'),
(115, 'sharmaine@gmail.com', '12345', 'Student'),
(116, 'GG@gmail.com', '12345', 'Parents'),
(117, 'angelv@gmail.com', '12345', 'Student'),
(118, 'PV@gmail.com', '12345', 'Parents'),
(119, 'mark@gmail.com', '12345', 'Student'),
(120, 'AE@gmail.com', '12345', 'Parents'),
(121, 'marife@gmail.com', '12345', 'Student'),
(122, 'mgarcia@gmail.com', '12345', 'Parents'),
(123, 'marife1@gmail.com', '12345', 'Student'),
(124, 'marial@gmail.com', '12345', 'Teacher'),
(125, 'jnnylee@gmail.com', '12345', 'Student'),
(126, 'chester@gmail.com', '12345', 'Parents'),
(127, 'an@gmail.com', '12345', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_room`
--
ALTER TABLE `class_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_category`
--
ALTER TABLE `event_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_category_type`
--
ALTER TABLE `event_category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_timetable`
--
ALTER TABLE `exam_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_notifications`
--
ALTER TABLE `main_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_friends`
--
ALTER TABLE `my_friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_history`
--
ALTER TABLE `notification_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_chat`
--
ALTER TABLE `online_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_notifications`
--
ALTER TABLE `payment_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_routing`
--
ALTER TABLE `subject_routing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_room`
--
ALTER TABLE `class_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_category`
--
ALTER TABLE `event_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_category_type`
--
ALTER TABLE `event_category_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `exam_timetable`
--
ALTER TABLE `exam_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `group_message`
--
ALTER TABLE `group_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_notifications`
--
ALTER TABLE `main_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_friends`
--
ALTER TABLE `my_friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_history`
--
ALTER TABLE `notification_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_chat`
--
ALTER TABLE `online_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payment_notifications`
--
ALTER TABLE `payment_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `petty_cash`
--
ALTER TABLE `petty_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=624;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `subject_routing`
--
ALTER TABLE `subject_routing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
