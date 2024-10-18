-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2022 at 07:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mz2`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int NOT NULL,
  `ism` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `yoshi` int NOT NULL,
  `muammo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `kun` date NOT NULL,
  `therapists_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `ism`, `yoshi`, `muammo`, `kun`, `therapists_id`) VALUES
(2, 'Aziza', 3, 'Juda kop muammolarim bor', '2019-12-02', 1),
(3, 'Ruxshona', 2, 'Zooor manda hammasi muammo yoq Men baxtliman', '2028-12-03', 2),
(4, 'umida', 14, 'boshim yomon', '2022-12-16', 2),
(6, 'umida', 13, 'hahaa', '2022-12-01', 1),
(8, 'zilola', 16, 'гкффффф', '2022-12-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `therapists`
--

CREATE TABLE `therapists` (
  `id` int NOT NULL,
  `ism` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `about` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tajriba` int NOT NULL,
  `img` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `clients_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `therapists`
--

INSERT INTO `therapists` (`id`, `ism`, `about`, `tajriba`, `img`, `clients_id`) VALUES
(1, 'Zulayxo Madirimova', 'Juda zor. Bemor bilan gaplashaoladigan ajoyib psixolog. Ushbu psixologning ishi mijoz bilan muammolarni muhokama qilish, u bilan kommunikativ aloqani o\'rnatishdan iborat;', 10, '1.jpg', 2),
(2, 'Maftuna Abdullayeva', 'Bu psixolog-aqliy, ma\'naviy, ijodiy qobiliyatlarni rivojlantirish uchun individual texnikani tanlash orqali muammolarni hal qilishga yordam beradigan mutaxassis.', 6, '3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_c`
--

CREATE TABLE `t_c` (
  `id` int NOT NULL,
  `therapist_id` int NOT NULL,
  `client_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_c`
--

INSERT INTO `t_c` (`id`, `therapist_id`, `client_id`) VALUES
(1, 2, 4),
(2, 2, 2),
(3, 1, 3),
(4, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapists`
--
ALTER TABLE `therapists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `t_c`
--
ALTER TABLE `t_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `therapist_id` (`therapist_id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `therapists`
--
ALTER TABLE `therapists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_c`
--
ALTER TABLE `t_c`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
