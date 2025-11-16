-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2025 lúc 11:05 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `book-store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(9, 1, 6, 1),
(10, 1, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `image_name`, `is_active`, `name`) VALUES
(1, 'https://cdn0.f...thanh_ly.jpg', b'1', 'Science Fiction'),
(2, 'https://cdn0.f...1_52.jpg', b'1', 'English Learning'),
(3, 'https://cdn0.f...du-lieu.jpg', b'1', 'Science'),
(4, 'https://cdn0.f...392435.jpg', b'1', 'Technology'),
(5, 'https://cdn0.f...916470.jpg', b'1', 'Education');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_address`
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
-- Đang đổ dữ liệu cho bảng `order_address`
--

INSERT INTO `order_address` (`id`, `address`, `city`, `email`, `first_name`, `last_name`, `mobile_no`, `pincode`, `state`) VALUES
(1, 'Address', 'HCMCity', 'baothong15082003@gmail.com', 'Dang', 'Thong', '1211221121', '111111', 'GVap'),
(2, 'Address', 'HCMCity', 'baothong15082003@gmail.com', 'Dang', 'Thong', '1211221121', '111111', 'GVap'),
(3, 'Address', 'HCMCity', 'baothong15082003@gmail.com', 'Dang', 'Thong', '1211221121', '111111', 'GVap'),
(4, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Admin', '0000000000', '000000', 'Admin State'),
(5, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Admin', '0000000000', '000000', 'Admin State'),
(6, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Thong', '0000000000', '000000', 'Admin State'),
(7, 'Admin Address', 'AdminCity', 'admin@admin.com', 'Admin', 'Thong', '0000000000', '000000', 'Admin State'),
(8, 'User Address 1', 'Hanoi', 'user1@example.com', 'đs', 'dsads', '0123456789', '100000', 'Dong Da'),
(9, 'User Address 1', 'Hanoi', 'user1@example.com', 'đs', 'dsads', '0123456789', '100000', 'Dong Da'),
(10, 'User Address 1', 'Hanoi', 'user1@example.com', 'duong', 'le', '0123456789', '100000', 'Dong Da'),
(11, 'User Address 1', 'Hanoi', 'user1@example.com', 'duong', 'le', '0123456789', '100000', 'Dong Da');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `discount_price` double DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `description`, `discount`, `discount_price`, `image_url`, `is_active`, `price`, `stock`, `title`, `category_id`, `image`) VALUES
(6, 'The term \"artificial intelligence\"...', 10, 539100, 'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', b'1', 599000, 49, 'AI 2041 - For The Future', 4, NULL),
(7, 'Data science is a new artificial ecosystem...', 5, 332500, 'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', b'1', 350000, 19, 'Data Science', 3, NULL),
(20, 'Maya And The Robot', 0, 156600, 'https://cdn0.fahasa.com/media/catalog/product/3/0/30-giay-khoa-hoc_khoa-hoc-du-lieu.jpg', b'1', 156600, 0, 'Maya And The Robot', 1, NULL),
(21, 'vip lắm product', 0, 25000, NULL, b'1', 25000, 66, 'dữ liệu vip', 1, 'Spring-BOOT-1.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_order`
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
-- Đang đổ dữ liệu cho bảng `product_order`
--

INSERT INTO `product_order` (`id`, `order_date`, `order_id`, `payment_type`, `price`, `quantity`, `status`, `order_address_id`, `product_id`, `user_id`) VALUES
(1, '2024-10-28 19:39:56.787062', 'fc4288d1...', 'COD', 332500, 1, 'Delivered', 1, 6, 3),
(2, '2024-11-28 19:39:56.803148', 'd2e9fab1...', 'COD', 285000, 1, 'Delivered', 1, 7, 3),
(3, '2024-10-28 19:40:59.338824', 'be0edd11...', 'COD', 270000, 2, 'Delivered', 1, 6, 2),
(4, '2024-11-28 19:54:46.760824', '51ccfea3...', 'COD', 332500, 1, 'Delivered', 1, 7, 1),
(5, '2024-11-28 19:54:46.779555', 'b17d1599...', 'COD', 170000, 1, 'Delivered', 1, 20, 1),
(6, '2024-11-28 19:55:25.445009', '92c46d40...', 'COD', 280000, 1, 'Order Received', 1, 6, 1),
(7, '2024-11-28 19:55:25.449993', 'd93c575e...', 'COD', 243000, 1, 'Order Received', 1, 7, 1),
(8, '2025-11-16 16:47:32.000000', '5fd6131f-0ef8-445f-a535-2d13e85dec15', 'ONLINE', 156600, 4, 'In Progress', 8, 20, 2),
(9, '2025-11-16 16:47:32.000000', 'ab5f2179-fac3-4801-a69d-c8ccf31b4b77', 'ONLINE', 539100, 1, 'In Progress', 9, 6, 2),
(10, '2025-11-16 16:49:09.000000', '6ba76085-8a11-4cf2-91b1-a85735832cea', 'COD', 332500, 4, 'In Progress', 10, 7, 2),
(11, '2025-11-16 16:56:23.000000', '66d39c0b-163d-48a7-b171-cc3560dd4ec0', 'COD', 156600, 1, 'In Progress', 11, 20, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_dtls`
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
-- Đang đổ dữ liệu cho bảng `user_dtls`
--

INSERT INTO `user_dtls` (`id`, `account_non_locked`, `address`, `city`, `email`, `failed_attempt`, `is_enable`, `lock_time`, `mobile_number`, `name`, `password`, `pincode`, `profile_image`, `reset_token`, `role`, `state`) VALUES
(1, b'1', 'Admin Address', 'AdminCity', 'admin@admin.com', 1, b'1', NULL, '0000000000', 'Administrator', '$2a$10$iSikT1CN8QevmEoucm7lqetr5lYhhSF9BQ.Q1nMmDS/cV0ad/SVpK', '000000', 'default.jpg', NULL, 'ROLE_ADMIN', 'Admin State'),
(2, b'1', 'User Address 1', 'Hanoi', 'user1@example.com', 0, b'1', NULL, '0123456789', 'User One', '$2a$10$iSikT1CN8QevmEoucm7lqetr5lYhhSF9BQ.Q1nMmDS/cV0ad/SVpK', '100000', 'default.jpg', NULL, 'ROLE_USER', 'Dong Da'),
(3, b'1', 'User Address 2', 'Hanoi', 'user2@example.com', 0, b'1', NULL, '0987654321', 'User Two', '$2a$10$iSikT1CN8QevmEoucm7lqetr5lYhhSF9BQ.Q1nMmDS/cV0ad/SVpK', '100000', 'default.jpg', NULL, 'ROLE_USER', 'Ba Dinh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cart_product` (`product_id`),
  ADD KEY `FK_cart_user` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_address`
--
ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_category` (`category_id`);

--
-- Chỉ mục cho bảng `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_order_address` (`order_address_id`),
  ADD KEY `FK_order_product` (`product_id`),
  ADD KEY `FK_order_user` (`user_id`);

--
-- Chỉ mục cho bảng `user_dtls`
--
ALTER TABLE `user_dtls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_address`
--
ALTER TABLE `order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_dtls`
--
ALTER TABLE `user_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_cart_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_cart_user` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `FK_order_address` FOREIGN KEY (`order_address_id`) REFERENCES `order_address` (`id`),
  ADD CONSTRAINT `FK_order_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_order_user` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
