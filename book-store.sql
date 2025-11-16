-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2025 at 12:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(4, 1, 18, 4),
(9, 1, 7, 1),
(10, 1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `image_name`, `is_active`, `name`) VALUES
(1, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', b'1', 'Science Fiction'),
(2, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_244718_1_52.jpg', b'1', 'English Learning'),
(3, 'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', b'1', 'Science'),
(4, 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786040392435.jpg', b'1', 'Technology'),
(5, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280916470.jpg', b'1', 'Education');

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

CREATE TABLE `order_address` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `address`, `city`, `email`, `first_name`, `last_name`, `mobile_no`, `pincode`, `state`) VALUES
(1, 'Address', 'HCMCity', 'baothong15082003@gmail.com', 'Dang', 'Thong', '1211221121', '111111', 'GoVap'),
(2, 'Address', 'HCMCity', 'baothong15082003@gmail.com', 'Dang', 'Thong', '1211221121', '111111', 'GoVap'),
(3, 'Address', 'HCMCity', 'baothong15082003@gmail.com', 'Dang', 'Thong', '1211221121', '111111', 'GoVap'),
(4, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Admin', '0000000000', '000000', 'Admin State'),
(5, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Admin', '0000000000', '000000', 'Admin State'),
(6, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Thong', '0000000000', '000000', 'Admin State'),
(7, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Thong', '0000000000', '000000', 'Admin State');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `discount_price` double DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `description`, `discount`, `discount_price`, `image`, `is_active`, `price`, `stock`, `title`, `category_id`) VALUES
(6, 'The term \"artificial intelligence\" was proposed much earlier than we know - in the summer of 1956, by computer scientist John McCarthy at the Dartmouth Conference.', 10, 539100, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', b'1', 599000, 50, 'AI 2041 - For The Future', 4),
(7, 'Data science is a new artificial ecosystem in the modern information age, ranging from crime detection to disease prediction. But did you know it\'s not just about the massive amount of information collected by computers, smartphones, and credit cards?', 5, 332500, 'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', b'1', 350000, 23, 'Data Science', 3),
(8, 'Dive into the fascinating world of quantum mechanics with this easy-to-understand book.', 10, 269100, 'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', b'1', 299000, 20, 'Quantum Physics Explained', 3),
(9, 'Understand the fundamentals of artificial intelligence and its applications in real-world problems.', 12, 351120, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', b'1', 399000, 35, 'Learning AI Basics', 4),
(10, 'A comprehensive guide to start learning English effectively, with plenty of examples and exercises.', 15, 170000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_244718_1_52.jpg', b'1', 200000, 49, 'English for Beginners', 2),
(11, 'This book covers advanced concepts in electronics technology for engineering students.', 18, 451000, 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786040392435.jpg', b'1', 550000, 30, 'Advanced Electronics', 4),
(12, 'An excellent resource for educators to improve their teaching methods.', 5, 285000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280916470.jpg', b'1', 300000, 39, 'Teaching Strategies', 5),
(13, 'Explore the mysteries of the cosmos with this thrilling science book.', 8, 386400, 'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', b'1', 420000, 25, 'Physics of the Universe', 3),
(14, 'Discover how AI is transforming industries and creating new possibilities.', 10, 441000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935244866957_thanh_ly.jpg', b'1', 490000, 20, 'Innovating with AI', 4),
(15, 'Improve your English communication skills for daily conversations.', 12, 158400, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_244718_1_52.jpg', b'1', 180000, 45, 'Practical English Skills', 2),
(16, 'A beginner-friendly introduction to designing electrical circuits.', 20, 280000, 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786040392435.jpg', b'1', 350000, 29, 'Basic Circuits Design', 4),
(17, 'A look at modern trends and challenges in education today.', 10, 243000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280916470.jpg', b'1', 270000, 54, 'Modern Education Trends', 5),
(18, 'Destination B1 - Grammar And Vocabulary With Answer Key', 0, 270000, 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935246945001.jpg', b'1', 270000, 997, 'Destination B1 - Grammar And Vocabulary With Answer Key', 2),
(19, 'The Witches', 0, 191700, 'https://cdn0.fahasa.com/media/catalog/product/9/7/9780241677667.jpg', b'1', 191700, 5, 'The Witches', 1),
(20, 'Maya And The Robot', 0, 156600, 'https://cdn0.fahasa.com/media/catalog/product/9/7/9781984814654.jpg', b'1', 156600, 5, 'Maya And The Robot', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_address_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `order_date`, `order_id`, `payment_type`, `price`, `quantity`, `status`, `order_address_id`, `product_id`, `user_id`) VALUES
(1, '2024-10-28 19:39:56.000000', 'fc4288d1-5f8a-4878-a055-d8d10604bc89', 'COD', 332500, 1, 'Delivered', 1, 7, 4),
(2, '2024-11-28 19:39:56.000000', 'd2e9fab1-f1f8-420d-a0ca-7c8a6cbd34c6', 'COD', 285000, 1, 'Delivered', 2, 12, 4),
(3, '2024-10-28 19:40:59.000000', 'be0edd11-f100-4e8e-9e72-8b065f3ac897', 'COD', 270000, 2, 'Delivered', 3, 18, 4),
(4, '2024-11-28 19:54:46.000000', '51ccfea3-ac59-4edd-884f-638c6a7e9202', 'COD', 332500, 1, 'Delivered', 4, 7, 1),
(5, '2024-11-28 19:54:46.000000', 'b17d1599-536b-4eb0-aa86-fcf34fbe9b52', 'COD', 170000, 1, 'Delivered', 5, 10, 1),
(6, '2024-11-28 19:55:25.000000', '92c46d40-f085-4bb8-9662-e97e50c1dac3', 'COD', 280000, 1, 'Order Received', 6, 16, 1),
(7, '2024-11-28 19:55:25.000000', 'd93c575e-7968-4c22-a3ae-65424f999f39', 'COD', 243000, 1, 'Order Received', 7, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_dtls`
--

CREATE TABLE `user_dtls` (
  `id` int(11) NOT NULL,
  `account_non_locked` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `failed_attempt` int(11) DEFAULT NULL,
  `is_enable` bit(1) DEFAULT NULL,
  `lock_time` datetime(6) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_dtls`
--

INSERT INTO `user_dtls` (`id`, `account_non_locked`, `address`, `city`, `email`, `failed_attempt`, `is_enable`, `lock_time`, `mobile_number`, `name`, `password`, `pincode`, `profile_image`, `reset_token`, `role`, `state`) VALUES
(1, b'1', 'Admin Address', 'AdminCity', 'admin@example.com', 2, b'1', NULL, '0000000000', 'Administrator', '$2a$10$iSikT1CN8QevmEoucm7lqetr5lYhhSF9BQ.Q1nMmDS/cV0ad/SVpK', '000000', 'default.jpg', NULL, 'ROLE_ADMIN', 'Admin State'),
(2, b'1', 'User Address 1', 'Hanoi', 'user@example.com', 0, b'1', NULL, '0123456789', 'User One', '$2a$10$iSikT1CN8QevmEoucm7lqetr5lYhhSF9BQ.Q1nMmDS/cV0ad/SVpK', '100000', 'default.jpg', NULL, 'ROLE_USER', 'Dong Da'),
(3, b'1', 'User Address 2', 'Hanoi', 'user2@example.com', 0, b'1', NULL, '0987654321', 'User Two', '$2a$10$iSikT1CN8QevmEoucm7lqetr5lYhhSF9BQ.Q1nMmDS/cV0ad/SVpK', '100000', 'default.jpg', NULL, 'ROLE_USER', 'Ba Dinh'),
(4, b'1', 'Address', 'HCMCity', 'baothong15082003@gmail.com', 0, b'1', NULL, '1211221121', 'BaoThong', '$2a$10$iSikT1CN8QevmEoucm7lqetr5lYhhSF9BQ.Q1nMmDS/cV0ad/SVpK', '111111', 'Java-programming.png', NULL, 'ROLE_USER', 'GoVap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3d704slv66tw6x5hmbm6p2x3u` (`product_id`),
  ADD KEY `FK9x4wn098i53ikun1ynxet2ynj` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_address`
--
ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_qcdbxaeuc7c5gahwh0dutg04r` (`order_address_id`),
  ADD KEY `FKh73acsd9s5wp6l0e55td6jr1m` (`product_id`),
  ADD KEY `FK4f2ycr32kigtux5ag3tv0xu5m` (`user_id`);

--
-- Indexes for table `user_dtls`
--
ALTER TABLE `user_dtls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_address`
--
ALTER TABLE `order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_dtls`
--
ALTER TABLE `user_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK3d704slv66tw6x5hmbm6p2x3u` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK9x4wn098i53ikun1ynxet2ynj` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `FK4f2ycr32kigtux5ag3tv0xu5m` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`),
  ADD CONSTRAINT `FK8frxalwc79tpxo7hgqp3hsjck` FOREIGN KEY (`order_address_id`) REFERENCES `order_address` (`id`),
  ADD CONSTRAINT `FKh73acsd9s5wp6l0e55td6jr1m` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
