-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 08:32 AM
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
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'pavan', '79c21071b25cec954b761d67849b5a84866bbecc'),
(4, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 0, 'pavan', 'pavan@gmail.com', '9637418520', 'hello\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'pavan', '9638520741', 'xyz@gmail.com', 'paytm', '202, 2, xyz nagar, rajkot, rajkot, gujrat, india - 360005', 'Fafda jalebi  (50 x 1) - Gujarati Thali (90 x 1) - ', 140, '2024-01-12', 'pending'),
(2, 2, 'pavan', '9637418520', 'pavan@gmail.com', 'paytm', '101, 5, punit nagar, rajkot, rajkot, gondal, india - 360001', 'Oats Upma (40 x 1) - Aloo Paratha (30 x 5) - ', 190, '2024-01-19', 'pending'),
(3, 2, 'pavan', '9637418520', 'pavan@gmail.com', 'cash on delivery', '101, 5, punit nagar, rajkot, rajkot, gondal, india - 360001', 'Oats Upma (40 x 1) - Fafda jalebi  (50 x 1) - ', 90, '2024-01-19', 'pending'),
(4, 2, 'pavan', '9637418520', 'pavan@gmail.com', 'paytm', '101, 5, punit nagar, rajkot, rajkot, gondal, india - 360001', 'Masala chai (15 x 1) - Momos (35 x 1) - Vada Pav (20 x 1) - ', 70, '2024-01-19', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Fafda jalebi ', 'breakfast', 50, 'F1.jpeg'),
(2, 'Gujarati Thali', 'main dish', 90, 'F2.jpg'),
(3, 'kathiyawadi full dish', 'main dish', 100, 'F3 (1).jpg'),
(4, 'Vada Pav', 'fast food', 20, 'B1.jpeg'),
(5, 'Dabeli', 'fast food', 25, 'B2.jpg'),
(6, 'Momos', 'fast food', 35, 'B3.jpg'),
(7, 'Chole Bhature', 'fast food', 30, 'B4.jfif'),
(8, 'Kachori', 'fast food', 40, 'B5.jpg'),
(9, 'Samosa', 'fast food', 25, 'B6.jpg'),
(10, 'Punjabi dish', 'main dish', 120, 'F4.jpg'),
(11, 'South indian dish', 'main dish', 110, 'F5.jpg'),
(12, 'Chaach ', 'drinks', 20, 'D1.jpg'),
(13, 'Doodh pak', 'drinks', 50, 'D2.webp'),
(14, 'Masala chai', 'drinks', 15, 'D3.jpg'),
(15, 'Coca cola', 'drinks', 20, 'D4.webp'),
(16, 'Thums-up', 'drinks', 20, 'D5.webp'),
(17, 'Mango ras', 'drinks', 40, 'D6.jpg'),
(18, 'Cookies', 'desserts', 50, 'De1.jpg'),
(19, 'Jalebi', 'desserts', 40, 'De2.jpg'),
(20, 'Rasgulla ', 'desserts', 60, 'DE3.webp'),
(21, 'Rasmalai', 'desserts', 60, 'De4.webp'),
(22, 'Gulab Jamun', 'desserts', 50, 'dE5.jpg'),
(23, 'Kaju Katli', 'desserts', 70, 'De6.jpg'),
(24, 'Gajar ka halwa', 'desserts', 75, 'De7.jpg'),
(25, 'Kulfi', 'desserts', 20, 'De8.jpg'),
(26, 'Ice Cream Wafflewiches', 'desserts', 65, 'De9.jpg'),
(27, 'Oats Upma', 'breakfast', 40, 'Bf1.jpg'),
(28, 'Aloo Paratha', 'breakfast', 30, 'Bf2.jpg'),
(29, 'Dosa', 'breakfast', 70, 'Bf3.jpg'),
(30, 'Poha', 'breakfast', 40, 'Bf4.webp'),
(31, 'Rava Idli', 'breakfast', 50, 'Bf5.jpg'),
(32, 'Medu Vada', 'breakfast', 30, 'Bf6.jpg'),
(33, 'Idli', 'breakfast', 35, 'Bf7.webp'),
(34, 'Thepla', 'breakfast', 30, 'Bf8.jpg'),
(35, 'Bargar', 'fast food', 40, 'home-img-2.png'),
(36, 'Pizza', 'fast food', 70, 'home-img-1.png'),
(37, 'frankie ', 'fast food', 80, 'F8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'pavan', 'xyz@gmail.com', '9638520741', 'd16fb36f0911f878998c136191af705e', '202, 2, xyz nagar, rajkot, rajkot, gujrat, india - 360005'),
(2, 'pavan', 'pavan@gmail.com', '9637418520', '141bc86dfd5c40e3cc37219c18d471ca', '101, 5, punit nagar, rajkot, rajkot, gondal, india - 360001'),
(4, 'raj', 'raj@gmail.com', '9873690258', 'fc1200c7a7aa52109d762a9f005b149abef01479', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
