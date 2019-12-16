
CREATE DATABASE project_shop;
USE project_shop;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `carts` (
  `cart_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `cart_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `cart_items` (
  `cart_item_id` int(10) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cart_items` (`cart_item_id`, `product_id`, `quantity`, `cart_id`) VALUES
(148, 12, 1, 73),
(149, 13, 2, 73),
(150, 17, 1, 73),
(151, 12, 1, 74),
(152, 13, 1, 74),
(153, 14, 1, 74),
(154, 17, 1, 74),
(155, 26, 1, 74),
(156, 18, 1, 74),
(157, 20, 1, 74),
(158, 21, 3, 74),
(159, 12, 1, 75),
(160, 12, 2, 76),
(161, 12, 1, 77),
(162, 13, 1, 78),
(163, 12, 1, 79),
(164, 12, 1, 80),
(165, 12, 1, 81),
(166, 12, 1, 82),
(170, 12, 1, 85),
(171, 12, 1, 86),
(172, 13, 1, 86),
(253, 12, 1, 104),
(254, 13, 1, 104),
(260, 12, 1, 107),
(261, 13, 1, 107),
(262, 14, 1, 107),
(264, 12, 1, 109),
(266, 12, 1, 111),
(267, 12, 1, 112),
(268, 13, 1, 112),
(269, 12, 2, 113),
(270, 13, 1, 113),
(273, 12, 1, 115),
(274, 13, 1, 115);


CREATE TABLE `categorys` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `categorys` (`category_id`, `category_name`) VALUES
(1, 'Computers'),
(2, 'Smartphones'),
(3, 'Televisions'),
(4, 'Accessories');


CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `received_city` varchar(20) NOT NULL,
  `received_adress` varchar(40) NOT NULL,
  `received_date` date NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `credit_card` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `orders` (`order_id`, `user_id`, `cart_id`, `total_price`, `received_city`, `received_adress`, `received_date`, `order_date`, `credit_card`) VALUES
(50, 336145925, 73, '6665.60', 'jerusalem', 'Hanurit 204', '2019-11-26', '2019-11-22 00:27:22', 4444),
(51, 336145925, 74, '19915.60', 'jerusalem', 'Hanurit 204', '2019-11-27', '2019-11-24 19:05:53', 4444),
(52, 336145925, 75, '1747.90', 'jerusalem', 'Hanurit 204', '2019-11-27', '2019-11-24 19:07:04', 4444),
(53, 336145925, 76, '3495.80', 'jerusalem', 'Hanurit 204', '2019-11-29', '2019-11-24 19:07:39', 4444),
(54, 336145925, 77, '1747.90', 'jerusalem', 'Hanurit 204', '2019-11-27', '2019-11-24 19:08:16', 4444),
(55, 336145925, 78, '1158.90', 'jerusalem', 'Hanurit 204', '2019-11-26', '2019-11-24 19:08:48', 4444),
(56, 336145925, 79, '1747.90', 'jerusalem', 'Hanurit 204', '2019-11-26', '2019-11-24 21:41:59', 4444),
(57, 336145925, 80, '1747.90', 'jerusalem', 'Hanurit 204', '2019-11-28', '2019-11-24 22:54:44', 4444),
(58, 336145925, 81, '1747.90', 'jerusalem', 'Hanurit 204', '2019-11-28', '2019-11-24 23:32:07', 4444),
(59, 336145925, 82, '1747.90', 'jerusalem', 'Hanurit 204', '2019-11-28', '2019-11-24 23:33:31', 4444),
(60, 336645552, 85, '1747.90', 'ashdod', 'blah 102', '2019-11-29', '2019-11-25 14:08:24', 4444),
(61, 336645552, 86, '2906.80', 'ashdod', 'blah 102', '2019-11-29', '2019-11-25 14:31:19', 4444),
(62, 336145925, 104, '2906.80', 'jerusalem', 'Hanurit 204', '2019-11-30', '2019-11-25 16:10:04', 4444),
(63, 555555555, 107, '7474.70', 'ashdod', 'blah 8', '2019-11-30', '2019-11-25 17:25:36', 7777),
(64, 336145925, 109, '1747.90', 'jerusalem', 'Hanurit 204', '2019-11-30', '2019-11-26 15:44:57', 4444),
(65, 336145925, 111, '1747.90', 'jerusalem', 'Hanurit 204', '2019-12-01', '2019-11-27 12:58:11', 4444),
(66, 336145925, 112, '2906.80', 'jerusalem', 'Hanurit 204', '2019-12-01', '2019-11-27 13:09:40', 4444),
(67, 336068219, 113, '4654.70', 'jerusalem', 'Hanurit 204', '2019-12-01', '2019-11-28 21:37:23', 4444),
(68, 336145925, 115, '2906.80', 'jerusalem', 'Hanurit 204', '2019-12-11', '2019-12-04 11:34:49', 4444);



CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(80) NOT NULL,
  `category_id` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `price`, `img`) VALUES
(12, 'Accer Aspire 5 15\" i5 8GB', 1, '1747.90', 'img-accerAspire5(2).jpg'),
(13, 'Lenova Chromebook 2-in-1', 1, '1158.90', 'img-lenovocb.jpg'),
(14, 'computer Samsung Blah', 1, '4567.90', 'img-bg-tech3.jpg'),
(17, 'samsung galaxy s9', 2, '2599.90', 'no-img.png'),
(18, 'tt1', 3, '2.00', 'img-bg-tech.jpg'),
(19, 'tt2+', 3, '10.00', 'no-img.png'),
(20, 'tt3', 3, '4.00', 'no-img.png'),
(21, 'tt4', 3, '5.00', 'no-img.png'),
(22, 'tt5', 3, '6.00', 'no-img.png'),
(23, 'tt6', 3, '7.00', 'no-img.png'),
(24, 'tt7', 3, '8.00', 'no-img.png'),
(25, 'tt8', 3, '9.00', 'no-img.png'),
(26, 'smartBlah', 2, '8900.00', 'no-img.png'),
(27, 'blah blah', 4, '123.00', 'no-img.png'),
(28, 'bloh bloh', 4, '234.00', 'no-img.png'),
(29, 'blah', 3, '20.00', 'no-img.png'),
(30, 'blah8', 3, '18.00', 'no-img.png'),
(31, 'blah9', 4, '82.00', 'no-img.png'),
(32, 'blah11', 2, '123.00', 'no-img.png');

-- --------------------------------------------------------

--
-- Structure of table `users`
--

CREATE TABLE `users` (
  `t_z` int(9) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `password_hach` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `adress` varchar(40) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`t_z`, `first_name`, `last_name`, `mail`, `password_hach`, `city`, `adress`, `admin`) VALUES
(131313131, 'aa', 'bb', 'aa@gmail.com', '$2a$10$UZ56MvuGoaXSevBVP3hn.efp9nJNmAkE/QB0SWIOU//VRH33nRj0i', 'jerusalem', '160 hanurit', 0),


ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`);


ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_item_id`);


ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`);


ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`t_z`);


ALTER TABLE `carts`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;


ALTER TABLE `cart_items`
  MODIFY `cart_item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;


ALTER TABLE `categorys`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;


ALTER TABLE `users`
  MODIFY `t_z` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=963852742;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
