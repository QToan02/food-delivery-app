-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 01:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foody2`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_address`
--

CREATE TABLE `api_address` (
  `id` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `address_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_address`
--

INSERT INTO `api_address` (`id`, `address`, `lat`, `lon`, `address_type`, `user_id`) VALUES
(4, '537300, Lộc Tiến, Phú Lộc, Thừa Thiên Huế, Vietnam', 16.264655, 107.983755, 'HOME', 2),
(8, 'Google - Android Building, Mountain View, California 94043, United States', 37.421807, -122.083231, 'BUSINESS', 2),
(9, 'Google - Android Building, Mountain View, California 94043, United States', 37.421807, -122.083231, 'HOME', 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_card`
--

CREATE TABLE `api_card` (
  `id` int(11) NOT NULL,
  `number` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `cvv` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_card`
--

INSERT INTO `api_card` (`id`, `number`, `expiry`, `cvv`, `user_id`) VALUES
(2, '123123', '13/12', '112', 2),
(3, '123123', '12/02', '123', 2),
(4, '234234234', '25/03', '222', 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_categories`
--

CREATE TABLE `api_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_driver`
--

CREATE TABLE `api_driver` (
  `id` int(11) NOT NULL,
  `vehicle_type` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_driver`
--

INSERT INTO `api_driver` (`id`, `vehicle_type`, `user_id`) VALUES
(1, 'CAR', 4),
(2, 'BIKE', 7);

-- --------------------------------------------------------

--
-- Table structure for table `api_food`
--

CREATE TABLE `api_food` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `calories` int(11) NOT NULL,
  `cost` double NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_food`
--

INSERT INTO `api_food` (`id`, `name`, `image`, `description`, `calories`, `cost`, `restaurant_id`) VALUES
(1, 'Chicken Biryani', 'https://static.toiimg.com/thumb/53096628.cms?imgsize=104874&width=800&height=800', 'A traditional South Asian dish made with aromatic basmati rice, tender chicken pieces, and a blend of fragrant spices. It\'s usually served with raita, a yogurt-based side dish, and is a popular choice for special occasions.', 12, 12, 1),
(2, 'Caprese Salad', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Pizza-3007395.jpg/800px-Pizza-3007395.jpg', 'A simple yet delicious Italian dish made with fresh, ripe tomatoes, creamy mozzarella cheese, and fragrant basil leaves. It\'s usually drizzled with olive oil and balsamic vinegar and makes for a refreshing appetizer or light lunch.', 123, 14, 1),
(3, 'Burgers', 'https://www.allrecipes.com/thmb/nTxADEGhsHNQyBTUzmtyppeoc5g=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/236679-lamb-burgers-3x4-487-c2045575a34c450fb60fc37ceffe5854.jpg', 'A sandwich made with a beef patty, lettuce, tomato, and other toppings such as cheese, bacon, or pickles. It\'s a popular fast food option in many countries.', 123, 16, 1),
(4, 'Pizza', 'https://www.allrecipes.com/thmb/0xH8n2D4cC97t7mcC7eT2SDZ0aE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6776_Pizza-Dough_ddmfs_2x1_1725-fdaa76496da045b3bdaadcec6d4c5398.jpg', 'A classic Italian dish that has become popular worldwide. It usually consists of a thin crust topped with tomato sauce, cheese, and various toppings such as pepperoni, mushrooms, or vegetables.', 23, 54, 2),
(5, 'Tacos', 'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/04/Carne-Asada-Tacos-main-3.jpg', 'A Mexican dish made with a corn or flour tortilla filled with seasoned meat, vegetables, and salsa. It\'s a popular street food in many countries.', 34, 23, 2),
(6, 'Sushi', 'https://peasandcrayons.com/wp-content/uploads/2012/10/homemade-sushi-tutorial-recipe-peas-and-crayons-1250.jpg', 'A Japanese dish made with vinegared rice and raw or cooked seafood, vegetables, and other ingredients. It\'s popular in many parts of the world and can be found in sushi restaurants or even in some grocery stores.', 34, 45, 2);

-- --------------------------------------------------------

--
-- Table structure for table `api_gpslocation`
--

CREATE TABLE `api_gpslocation` (
  `id` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_gpslocation`
--

INSERT INTO `api_gpslocation` (`id`, `latitude`, `longitude`, `order_id`) VALUES
(1, 37.4173526, -122.0821321, 1),
(2, 37.4173526, -122.0821321, 1),
(3, 37.4173526, -122.0821321, 1),
(4, 16.272521666666666, 107.96569333333333, 1),
(5, 16.272521666666666, 107.96569333333333, 1),
(6, 37.4173526, -122.0821321, 1),
(7, 37.4173526, -122.0821321, 1),
(8, 37.4173526, -122.0821321, 1),
(9, 16.272521666666666, 107.96569333333333, 1),
(10, 16.272521666666666, 107.96569333333333, 1),
(11, 16.272521666666666, 107.96569333333333, 1),
(12, 16.272521666666666, 107.96569333333333, 1),
(13, 16.272521666666666, 107.96569333333333, 1),
(14, 16.272521666666666, 107.96569333333333, 1),
(15, 16.272521666666666, 107.96569333333333, 1),
(16, 16.272521666666666, 107.96569333333333, 1),
(17, 16.272521666666666, 107.96569333333333, 1),
(18, 16.272521666666666, 107.96569333333333, 1),
(19, 37.4173526, -122.0821321, 1),
(20, 37.4173526, -122.0821321, 1),
(21, 37.4173526, -122.0821321, 1),
(22, 37.4173526, -122.0821321, 1),
(23, 16.272521666666666, 107.96569333333333, 1),
(24, 16.272521666666666, 107.96569333333333, 1),
(25, 16.272521666666666, 107.96569333333333, 1),
(26, 16.272521666666666, 107.96569333333333, 1),
(27, 37.4173526, -122.0821321, 1),
(28, 37.4173526, -122.0821321, 1),
(29, 37.4173526, -122.0821321, 1),
(30, 37.4173526, -122.0821321, 1),
(31, 37.4173526, -122.0821321, 1),
(32, 37.4173526, -122.0821321, 1),
(33, 16.272521666666666, 107.96569333333333, 1),
(34, 16.272521666666666, 107.96569333333333, 1),
(35, 16.272521666666666, 107.96569333333333, 1),
(36, 16.272521666666666, 107.96569333333333, 1),
(37, 37.4173526, -122.0821321, 1),
(38, 37.4173526, -122.0821321, 1),
(39, 37.4173526, -122.0821321, 1),
(40, 16.272521666666666, 107.96569333333333, 1),
(41, 39.784191666666665, -121.07917333333333, 1),
(42, 39.784191666666665, -121.07917333333333, 1),
(43, 39.784191666666665, -121.07917333333333, 1),
(44, 39.784191666666665, -121.07917333333333, 1),
(45, 39.784191666666665, -121.07917333333333, 1),
(46, 15.995505, 108.25880333333333, 1),
(47, 15.995505, 108.25880333333333, 1),
(48, 15.995505, 108.25880333333333, 1),
(49, 15.995505, 108.25880333333333, 1),
(50, 15.995505, 108.25880333333333, 1),
(51, 15.995505, 108.25880333333333, 1),
(52, 15.995505, 108.25880333333333, 1),
(53, 15.995505, 108.25880333333333, 1),
(54, 37.4173526, -122.0821321, 2),
(55, 37.4173526, -122.0821321, 2),
(56, 37.4173526, -122.0821321, 2),
(57, 15.995505, 108.25880333333333, 2),
(58, 15.995505, 108.25880333333333, 2),
(59, 15.995505, 108.25880333333333, 2),
(60, 37.4173526, -122.0821321, 1),
(61, 37.4173526, -122.0821321, 1),
(62, 37.4173526, -122.0821321, 1),
(63, 37.4173526, -122.0821321, 3),
(64, 37.4173526, -122.0821321, 3),
(65, 37.4173526, -122.0821321, 3),
(66, 15.995505, 108.25880333333333, 3),
(67, 15.995505, 108.25880333333333, 3),
(68, 37.4173526, -122.0821321, 3),
(69, 37.4173526, -122.0821321, 3),
(70, 37.4173526, -122.0821321, 3),
(71, 15.995505, 108.25880333333333, 3),
(72, 15.995505, 108.25880333333333, 3),
(73, 15.995505, 108.25880333333333, 3),
(74, 15.995505, 108.25880333333333, 3),
(75, 15.995505, 108.25880333333333, 3),
(76, 37.4173526, -122.0821321, 3),
(77, 37.4173526, -122.0821321, 3),
(78, 37.4173526, -122.0821321, 3),
(79, 15.995505, 108.25880333333333, 3),
(80, 15.995505, 108.25880333333333, 3),
(81, 15.995505, 108.25880333333333, 3),
(82, 15.991773333333333, 108.259435, 3),
(83, 37.4173526, -122.0821321, 3),
(84, 37.4173526, -122.0821321, 3),
(85, 37.4173526, -122.0821321, 3),
(86, 15.991773333333333, 108.259435, 3),
(87, 15.991773333333333, 108.259435, 3),
(88, 15.991773333333333, 108.259435, 3),
(89, 15.991773333333333, 108.259435, 3),
(90, 15.99176, 108.25945333333334, 3),
(91, 15.99176, 108.25945333333334, 3),
(92, 15.991791666666666, 108.25946333333333, 3),
(93, 15.99181, 108.25946666666667, 3),
(94, 37.4173526, -122.0821321, 3),
(95, 37.4173526, -122.0821321, 3),
(96, 37.4173526, -122.0821321, 3),
(97, 15.99181, 108.25946666666667, 3),
(98, 15.99181, 108.25946666666667, 3),
(99, 15.99181, 108.25946666666667, 3),
(100, 15.991828333333334, 108.25946333333333, 3),
(101, 15.991796666666668, 108.25946833333333, 3),
(102, 15.991796666666668, 108.25946833333333, 3),
(103, 37.4173526, -122.0821321, 3),
(104, 37.4173526, -122.0821321, 3),
(105, 37.4173526, -122.0821321, 3),
(106, 15.991796666666668, 108.25946833333333, 3),
(107, 15.991796666666668, 108.25946833333333, 3),
(108, 37.4173526, -122.0821321, 2),
(109, 37.4173526, -122.0821321, 2),
(110, 37.4173526, -122.0821321, 2),
(111, 15.991796666666668, 108.25946833333333, 2),
(112, 15.991796666666668, 108.25946833333333, 2),
(113, 15.991796666666668, 108.25946833333333, 2),
(114, 15.991796666666668, 108.25946833333333, 2),
(115, 15.991796666666668, 108.25946833333333, 2),
(116, 37.4173526, -122.0821321, 3),
(117, 37.4173526, -122.0821321, 3),
(118, 37.4173526, -122.0821321, 3),
(119, 37.4216012, -122.0835669, 3),
(120, 37.4173526, -122.0821321, 4),
(121, 37.4173526, -122.0821321, 4),
(122, 37.4173526, -122.0821321, 4),
(123, 37.4216012, -122.0835669, 4),
(124, 37.4216012, -122.0835669, 4),
(125, 37.4216012, -122.0835669, 4),
(126, 37.4216012, -122.0835669, 4),
(127, 37.4173526, -122.0821321, 4),
(128, 37.4173526, -122.0821321, 4),
(129, 37.4173526, -122.0821321, 4),
(130, 37.4173526, -122.0821321, 4),
(131, 37.4173526, -122.0821321, 4),
(132, 37.4173526, -122.0821321, 4),
(133, 37.4173526, -122.0821321, 4),
(134, 37.4173526, -122.0821321, 4),
(135, 37.4173526, -122.0821321, 4),
(136, 37.4216012, -122.0835669, 4),
(137, 37.4216012, -122.0835669, 4),
(138, 37.4216012, -122.0835669, 4),
(139, 37.4216012, -122.0835669, 4),
(140, 37.4216012, -122.0835669, 4),
(141, 37.4216012, -122.0835669, 4),
(142, 37.4173526, -122.0821321, 4),
(143, 37.4173526, -122.0821321, 4),
(144, 37.4173526, -122.0821321, 4),
(145, 37.4216012, -122.0835669, 4),
(146, 37.4216012, -122.0835669, 4),
(147, 37.4216012, -122.0835669, 4),
(148, 37.4216012, -122.0835669, 4),
(149, 37.4216012, -122.0835669, 4),
(150, 37.4216012, -122.0835669, 4),
(151, 37.4216012, -122.0835669, 4),
(152, 37.4216012, -122.0835669, 4),
(153, 37.4216012, -122.0835669, 4),
(154, 37.4216012, -122.0835669, 4),
(155, 37.4216012, -122.0835669, 4),
(156, 37.4216012, -122.0835669, 4),
(157, 37.4216012, -122.0835669, 4),
(158, 37.4216012, -122.0835669, 4),
(159, 37.4216012, -122.0835669, 4),
(160, 37.4216012, -122.0835669, 4),
(161, 37.4216012, -122.0835669, 4),
(162, 37.4216012, -122.0835669, 4),
(163, 37.4216012, -122.0835669, 4),
(164, 37.4216012, -122.0835669, 4),
(165, 37.4216012, -122.0835669, 4),
(166, 37.4216012, -122.0835669, 4),
(167, 37.4216012, -122.0835669, 4),
(168, 37.4216012, -122.0835669, 4),
(169, 37.4216012, -122.0835669, 4),
(170, 37.4216012, -122.0835669, 4),
(171, 37.4216012, -122.0835669, 4),
(172, 37.4216012, -122.0835669, 4),
(173, 37.4216012, -122.0835669, 4),
(174, 37.4216012, -122.0835669, 4),
(175, 37.4216012, -122.0835669, 4),
(176, 37.4216012, -122.0835669, 4),
(177, 37.4216012, -122.0835669, 4),
(178, 37.4216012, -122.0835669, 4),
(179, 37.4216012, -122.0835669, 4),
(180, 37.4216012, -122.0835669, 4),
(181, 37.4216012, -122.0835669, 4),
(182, 37.4216012, -122.0835669, 4),
(183, 37.4216012, -122.0835669, 4),
(184, 37.4216012, -122.0835669, 4),
(185, 37.4216012, -122.0835669, 4),
(186, 37.4216012, -122.0835669, 4),
(187, 37.4216012, -122.0835669, 4),
(188, 37.4216012, -122.0835669, 4),
(189, 37.4216012, -122.0835669, 4),
(190, 37.4216012, -122.0835669, 4),
(191, 37.4216012, -122.0835669, 4),
(192, 37.4173526, -122.0821321, 5),
(193, 37.4173526, -122.0821321, 5),
(194, 37.4173526, -122.0821321, 5),
(195, 37.4216012, -122.0835669, 5),
(196, 37.4173526, -122.0821321, 5),
(197, 37.4173526, -122.0821321, 5),
(198, 37.4173526, -122.0821321, 5),
(199, 37.4173526, -122.0821321, 5),
(200, 37.4173526, -122.0821321, 5),
(201, 37.4173526, -122.0821321, 5),
(202, 37.4173526, -122.0821321, 5),
(203, 37.4173526, -122.0821321, 5),
(204, 37.4173526, -122.0821321, 5),
(205, 37.4173526, -122.0821321, 5),
(206, 37.4173526, -122.0821321, 5),
(207, 37.4173526, -122.0821321, 5),
(208, 37.4173526, -122.0821321, 4),
(209, 37.4173526, -122.0821321, 4),
(210, 37.4173526, -122.0821321, 4),
(211, 37.4173526, -122.0821321, 4),
(212, 37.4173526, -122.0821321, 4),
(213, 37.4173526, -122.0821321, 4),
(214, 37.4173526, -122.0821321, 4),
(215, 37.4173526, -122.0821321, 4),
(216, 37.4173526, -122.0821321, 4);

-- --------------------------------------------------------

--
-- Table structure for table `api_order`
--

CREATE TABLE `api_order` (
  `id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `total_cost` double NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_order`
--

INSERT INTO `api_order` (`id`, `order_number`, `date`, `status`, `total_cost`, `address_id`, `customer_id`, `payment_id`, `restaurant_id`, `driver_id`) VALUES
(1, 862261, '2023-05-01 10:03:50.867000', 'RATED', 12, 4, 2, NULL, 1, 1),
(2, 380210, '2023-05-14 07:59:17.816000', 'DELIVERED', 12, 4, 2, 2, 1, 1),
(3, 650289, '2023-05-14 08:18:26.833000', 'DELIVERED', 38, NULL, 2, 2, 1, 1),
(4, 100255, '2023-05-31 13:46:45.030000', 'IN DELIVERY', 42, 4, 2, 2, 1, 1),
(5, 498501, '2023-05-31 15:38:25.022000', 'IN DELIVERY', 14, 4, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_orderdetails`
--

CREATE TABLE `api_orderdetails` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_orderdetails`
--

INSERT INTO `api_orderdetails` (`id`, `quantity`, `food_id`, `order_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 2, 1, 3),
(4, 1, 2, 3),
(5, 3, 2, 4),
(6, 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `api_profile`
--

CREATE TABLE `api_profile` (
  `id` int(11) NOT NULL,
  `user_type` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_profile`
--

INSERT INTO `api_profile` (`id`, `user_type`, `user_id`) VALUES
(1, 'USER', 2),
(2, 'USER', 3),
(3, 'DRIVER', 4),
(4, 'RESTAURANT', 5),
(5, 'RESTAURANT', 6),
(6, 'DRIVER', 7);

-- --------------------------------------------------------

--
-- Table structure for table `api_rating`
--

CREATE TABLE `api_rating` (
  `id` int(11) NOT NULL,
  `restaurant_star` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_rating`
--

INSERT INTO `api_rating` (`id`, `restaurant_star`, `order_id`, `user_id`, `restaurant_id`) VALUES
(1, 5, 1, 2, 1),
(2, 3, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_restaurant`
--

CREATE TABLE `api_restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `star` double NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `cost` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_restaurant`
--

INSERT INTO `api_restaurant` (`id`, `name`, `image`, `star`, `delivery_time`, `cost`, `address`, `user_id`) VALUES
(1, 'Spice Lane', 'https://upload.wikimedia.org/wikipedia/commons/1/16/Spice_Lane%2C_Near_Goregaon_Mulund_Link_Rd_-_panoramio.jpg', 4, 12, '12', 'Ngu Hanh Son, Da Nang', 5),
(2, 'Walmart', 'https://prod-lippincott.imgix.net/app/uploads/2020/01/02210649/Walmart1_Logo-scaled.jpg?auto=false%2Ccompress&q=90&w=1400', 4.5, 14, '16', 'Ngu Hanh Son, Da Nang', 6);

-- --------------------------------------------------------

--
-- Table structure for table `api_restaurant_categories`
--

CREATE TABLE `api_restaurant_categories` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('46fa4612fcf89ecf92984ae5b14184ea362c5809', '2023-04-30 16:40:46.453908', 5),
('566fab68f008f2bc3295f93749ce8c78c281a05f', '2023-06-01 02:36:47.104857', 6),
('5b5b3ec5b6b46cbe6f16c9972f3f45e8493b5e11', '2023-04-30 15:06:40.889036', 2),
('75c042877178d1be8cc4bba2207266f6897046bd', '2023-05-31 23:42:18.734007', 7),
('d266c29cfb54f0e6c7dcc9bce705939ea9108f35', '2023-04-30 16:38:13.837948', 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add token', 8, 'add_tokenproxy'),
(30, 'Can change token', 8, 'change_tokenproxy'),
(31, 'Can delete token', 8, 'delete_tokenproxy'),
(32, 'Can view token', 8, 'view_tokenproxy'),
(33, 'Can add categories', 9, 'add_categories'),
(34, 'Can change categories', 9, 'change_categories'),
(35, 'Can delete categories', 9, 'delete_categories'),
(36, 'Can view categories', 9, 'view_categories'),
(37, 'Can add restaurant', 10, 'add_restaurant'),
(38, 'Can change restaurant', 10, 'change_restaurant'),
(39, 'Can delete restaurant', 10, 'delete_restaurant'),
(40, 'Can view restaurant', 10, 'view_restaurant'),
(41, 'Can add food', 11, 'add_food'),
(42, 'Can change food', 11, 'change_food'),
(43, 'Can delete food', 11, 'delete_food'),
(44, 'Can view food', 11, 'view_food'),
(45, 'Can add card', 12, 'add_card'),
(46, 'Can change card', 12, 'change_card'),
(47, 'Can delete card', 12, 'delete_card'),
(48, 'Can view card', 12, 'view_card'),
(49, 'Can add address', 13, 'add_address'),
(50, 'Can change address', 13, 'change_address'),
(51, 'Can delete address', 13, 'delete_address'),
(52, 'Can view address', 13, 'view_address'),
(53, 'Can add order', 14, 'add_order'),
(54, 'Can change order', 14, 'change_order'),
(55, 'Can delete order', 14, 'delete_order'),
(56, 'Can view order', 14, 'view_order'),
(57, 'Can add order details', 15, 'add_orderdetails'),
(58, 'Can change order details', 15, 'change_orderdetails'),
(59, 'Can delete order details', 15, 'delete_orderdetails'),
(60, 'Can view order details', 15, 'view_orderdetails'),
(61, 'Can add profile', 16, 'add_profile'),
(62, 'Can change profile', 16, 'change_profile'),
(63, 'Can delete profile', 16, 'delete_profile'),
(64, 'Can view profile', 16, 'view_profile'),
(65, 'Can add driver', 17, 'add_driver'),
(66, 'Can change driver', 17, 'change_driver'),
(67, 'Can delete driver', 17, 'delete_driver'),
(68, 'Can view driver', 17, 'view_driver'),
(69, 'Can add gps location', 18, 'add_gpslocation'),
(70, 'Can change gps location', 18, 'change_gpslocation'),
(71, 'Can delete gps location', 18, 'delete_gpslocation'),
(72, 'Can view gps location', 18, 'view_gpslocation'),
(73, 'Can add rating', 19, 'add_rating'),
(74, 'Can change rating', 19, 'change_rating'),
(75, 'Can delete rating', 19, 'delete_rating'),
(76, 'Can view rating', 19, 'view_rating');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$fuewmOUO4uBcBnR7Xuiqdt$gIyKYfriZmUHAxsP+DnfqDOjwgVHwaE22xnyk+0F4Zs=', '2023-04-30 16:36:14.006694', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-04-30 09:20:43.994894'),
(2, 'pbkdf2_sha256$320000$bbYCJtsKCCPeqjnYg0eJ9M$izIuCctZUeqhaJlvyNZLTd9k+Vm7+UPymMR+BFOZlgo=', NULL, 0, 'danh@gmail.com', 'congdanh', '', '', 1, 1, '2023-04-30 15:06:09.801449'),
(3, 'pbkdf2_sha256$320000$0ImFDvUsGjWJRjmpEuveYw$Z9OT6M4kHNK6LwvWaeqXax8J0LP980m1Ap69j+mvqQM=', NULL, 0, 'minh@gmail.com', 'minh', '', '', 0, 1, '2023-04-30 16:35:08.956472'),
(4, 'pbkdf2_sha256$320000$aJi3F0BF6rYxRmxWGFuJB8$vjews+X4fkdUUL4nMscJNxmRpWUvtBzhjwsgAOIH4qA=', NULL, 0, 'quynh@gmail.com', 'quynh', '', '', 0, 1, '2023-04-30 16:38:01.534934'),
(5, 'pbkdf2_sha256$320000$pWxw8IKtXKxNSOAh87yUqB$YQwmUuGdV91/t3Iv4k/hlpHk1TRmRHjLvEXusMEBE6c=', NULL, 0, 'duong@gmail.com', 'duong', '', '', 0, 1, '2023-04-30 16:39:05.459303'),
(6, 'pbkdf2_sha256$320000$4CUQl76R5lzX1lcIyn90cG$DZ5kyaI7gCM4Spln/CS5WJVvPiVi+KL8/kPkJQTfip8=', NULL, 0, 'toan@gmail.com', 'Walmart', '', '', 0, 1, '2023-05-31 16:07:46.508095'),
(7, 'pbkdf2_sha256$320000$QVXyRIp8a0FvSsc4y56ycn$00N+BeB5nlJgGqnlUVaBi1Ih228EbKzAmvNI9AWFVYw=', NULL, 0, 'tuan@gmail.com', 'Tuan', '', '', 0, 1, '2023-05-31 23:41:32.599056');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(13, 'api', 'address'),
(12, 'api', 'card'),
(9, 'api', 'categories'),
(17, 'api', 'driver'),
(11, 'api', 'food'),
(18, 'api', 'gpslocation'),
(14, 'api', 'order'),
(15, 'api', 'orderdetails'),
(16, 'api', 'profile'),
(19, 'api', 'rating'),
(10, 'api', 'restaurant'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'authtoken', 'token'),
(8, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-30 09:19:37.712559'),
(2, 'auth', '0001_initial', '2023-04-30 09:19:37.982129'),
(3, 'admin', '0001_initial', '2023-04-30 09:19:38.046059'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-30 09:19:38.052087'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-30 09:19:38.058636'),
(6, 'api', '0001_initial', '2023-04-30 09:19:38.073380'),
(7, 'api', '0002_delete_user', '2023-04-30 09:19:38.079077'),
(8, 'api', '0003_profile', '2023-04-30 09:19:38.121464'),
(9, 'api', '0004_categories_restaurant', '2023-04-30 09:19:38.172968'),
(10, 'api', '0005_auto_20201108_1253', '2023-04-30 09:19:38.452988'),
(11, 'api', '0006_food', '2023-04-30 09:19:38.464071'),
(12, 'api', '0007_food_restaurant', '2023-04-30 09:19:38.500716'),
(13, 'api', '0008_card', '2023-04-30 09:19:38.543962'),
(14, 'api', '0009_auto_20201213_1349', '2023-04-30 09:19:38.579058'),
(15, 'api', '0010_auto_20201213_1351', '2023-04-30 09:19:38.665527'),
(16, 'api', '0011_address', '2023-04-30 09:19:38.709714'),
(17, 'api', '0012_order_orderdetails', '2023-04-30 09:19:38.893869'),
(18, 'api', '0013_auto_20201226_1147', '2023-04-30 09:19:38.926074'),
(19, 'api', '0014_remove_orderdetails_cost', '2023-04-30 09:19:38.942105'),
(20, 'api', '0015_delete_profile', '2023-04-30 09:19:38.947158'),
(21, 'api', '0016_profile', '2023-04-30 09:19:38.998022'),
(22, 'api', '0017_restaurant_user', '2023-04-30 09:19:39.037291'),
(23, 'api', '0018_auto_20201230_1917', '2023-04-30 09:19:39.192870'),
(24, 'api', '0019_auto_20201230_1918', '2023-04-30 09:19:39.294747'),
(25, 'api', '0020_auto_20201230_1919', '2023-04-30 09:19:39.395204'),
(26, 'api', '0021_auto_20201231_0749', '2023-04-30 09:19:39.473782'),
(27, 'api', '0022_gpslocation', '2023-04-30 09:19:39.545496'),
(28, 'api', '0023_auto_20210109_1008', '2023-04-30 09:19:39.640649'),
(29, 'api', '0024_auto_20210109_1011', '2023-04-30 09:19:39.740280'),
(30, 'api', '0025_rating', '2023-04-30 09:19:39.809228'),
(31, 'api', '0026_order_is_rated', '2023-04-30 09:19:39.832564'),
(32, 'api', '0027_auto_20210123_0954', '2023-04-30 09:19:39.843341'),
(33, 'api', '0028_remove_order_is_rated', '2023-04-30 09:19:39.860061'),
(34, 'api', '0029_auto_20210123_1102', '2023-04-30 09:19:40.221786'),
(35, 'api', '0030_rating_restaurant', '2023-04-30 09:19:40.285184'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-04-30 09:19:40.325277'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-04-30 09:19:40.359249'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-04-30 09:19:40.395125'),
(39, 'auth', '0004_alter_user_username_opts', '2023-04-30 09:19:40.404779'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-04-30 09:19:40.444809'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-04-30 09:19:40.447810'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-04-30 09:19:40.457965'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-04-30 09:19:40.473579'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-04-30 09:19:40.491189'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-04-30 09:19:40.524744'),
(46, 'auth', '0011_update_proxy_permissions', '2023-04-30 09:19:40.535307'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-04-30 09:19:40.552309'),
(48, 'authtoken', '0001_initial', '2023-04-30 09:19:40.605390'),
(49, 'authtoken', '0002_auto_20160226_1747', '2023-04-30 09:19:40.654505'),
(50, 'authtoken', '0003_tokenproxy', '2023-04-30 09:19:40.659848'),
(51, 'sessions', '0001_initial', '2023-04-30 09:19:40.696895');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2apoqcgtf5lertsw7l3d6ybjfo1tc5vg', '.eJxVjDsOwjAUBO_iGln-JNimpM8ZrOf1Cw4gR4qTCnF3iJQC2p2ZfYlI21ri1niJUxYXocXpd0uEB9cd5DvV2ywx13WZktwVedAmhznz83q4fweFWvnWgb2GYfgeZ2ccwVh0QVn0gQB40wVHJnjHKhml9EijdoC1KgfOKon3B-C9N_o:1ptA22:9OT-Dx_b9e6yLRlGvtGRTiyCfSh-pD3hEv--ZZHLbJw', '2023-05-14 16:36:14.010130');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_address`
--
ALTER TABLE `api_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_address_user_id_19458536_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `api_card`
--
ALTER TABLE `api_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_card_user_id_0ceb1f05_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `api_categories`
--
ALTER TABLE `api_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_driver`
--
ALTER TABLE `api_driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_driver_user_id_15aa6cdd_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `api_food`
--
ALTER TABLE `api_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_food_restaurant_id_72e68751_fk_api_restaurant_id` (`restaurant_id`);

--
-- Indexes for table `api_gpslocation`
--
ALTER TABLE `api_gpslocation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_gpslocation_order_id_8c5d7d3b_fk_api_order_id` (`order_id`);

--
-- Indexes for table `api_order`
--
ALTER TABLE `api_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_order_restaurant_id_87154613_fk_api_restaurant_id` (`restaurant_id`),
  ADD KEY `api_order_driver_id_e3b0eacb_fk_api_driver_id` (`driver_id`),
  ADD KEY `api_order_address_id_089033c4_fk_api_address_id` (`address_id`),
  ADD KEY `api_order_payment_id_c8399f49_fk_api_card_id` (`payment_id`),
  ADD KEY `api_order_customer_id_8cb4e7b7_fk_auth_user_id` (`customer_id`);

--
-- Indexes for table `api_orderdetails`
--
ALTER TABLE `api_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_orderdetails_food_id_cb62fe9b_fk_api_food_id` (`food_id`),
  ADD KEY `api_orderdetails_order_id_1a3c87ba_fk_api_order_id` (`order_id`);

--
-- Indexes for table `api_profile`
--
ALTER TABLE `api_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_profile_user_id_41309820_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `api_rating`
--
ALTER TABLE `api_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_rating_order_id_cfac47f3_fk_api_order_id` (`order_id`),
  ADD KEY `api_rating_user_id_3968cfe8_fk_auth_user_id` (`user_id`),
  ADD KEY `api_rating_restaurant_id_2b3584e9_fk_api_restaurant_id` (`restaurant_id`);

--
-- Indexes for table `api_restaurant`
--
ALTER TABLE `api_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_restaurant_user_id_1a25e805_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `api_restaurant_categories`
--
ALTER TABLE `api_restaurant_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_restaurant_categorie_restaurant_id_categories_c9ef853b_uniq` (`restaurant_id`,`categories_id`),
  ADD KEY `api_restaurant_categ_categories_id_b44b7f40_fk_api_categ` (`categories_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_address`
--
ALTER TABLE `api_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `api_card`
--
ALTER TABLE `api_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `api_categories`
--
ALTER TABLE `api_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_driver`
--
ALTER TABLE `api_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_food`
--
ALTER TABLE `api_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `api_gpslocation`
--
ALTER TABLE `api_gpslocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `api_order`
--
ALTER TABLE `api_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `api_orderdetails`
--
ALTER TABLE `api_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `api_profile`
--
ALTER TABLE `api_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `api_rating`
--
ALTER TABLE `api_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_restaurant`
--
ALTER TABLE `api_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_restaurant_categories`
--
ALTER TABLE `api_restaurant_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_address`
--
ALTER TABLE `api_address`
  ADD CONSTRAINT `api_address_user_id_19458536_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `api_card`
--
ALTER TABLE `api_card`
  ADD CONSTRAINT `api_card_user_id_0ceb1f05_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `api_driver`
--
ALTER TABLE `api_driver`
  ADD CONSTRAINT `api_driver_user_id_15aa6cdd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `api_food`
--
ALTER TABLE `api_food`
  ADD CONSTRAINT `api_food_restaurant_id_72e68751_fk_api_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `api_restaurant` (`id`);

--
-- Constraints for table `api_gpslocation`
--
ALTER TABLE `api_gpslocation`
  ADD CONSTRAINT `api_gpslocation_order_id_8c5d7d3b_fk_api_order_id` FOREIGN KEY (`order_id`) REFERENCES `api_order` (`id`);

--
-- Constraints for table `api_order`
--
ALTER TABLE `api_order`
  ADD CONSTRAINT `api_order_address_id_089033c4_fk_api_address_id` FOREIGN KEY (`address_id`) REFERENCES `api_address` (`id`),
  ADD CONSTRAINT `api_order_customer_id_8cb4e7b7_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `api_order_driver_id_e3b0eacb_fk_api_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `api_driver` (`id`),
  ADD CONSTRAINT `api_order_payment_id_c8399f49_fk_api_card_id` FOREIGN KEY (`payment_id`) REFERENCES `api_card` (`id`),
  ADD CONSTRAINT `api_order_restaurant_id_87154613_fk_api_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `api_restaurant` (`id`);

--
-- Constraints for table `api_orderdetails`
--
ALTER TABLE `api_orderdetails`
  ADD CONSTRAINT `api_orderdetails_food_id_cb62fe9b_fk_api_food_id` FOREIGN KEY (`food_id`) REFERENCES `api_food` (`id`),
  ADD CONSTRAINT `api_orderdetails_order_id_1a3c87ba_fk_api_order_id` FOREIGN KEY (`order_id`) REFERENCES `api_order` (`id`);

--
-- Constraints for table `api_profile`
--
ALTER TABLE `api_profile`
  ADD CONSTRAINT `api_profile_user_id_41309820_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `api_rating`
--
ALTER TABLE `api_rating`
  ADD CONSTRAINT `api_rating_order_id_cfac47f3_fk_api_order_id` FOREIGN KEY (`order_id`) REFERENCES `api_order` (`id`),
  ADD CONSTRAINT `api_rating_restaurant_id_2b3584e9_fk_api_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `api_restaurant` (`id`),
  ADD CONSTRAINT `api_rating_user_id_3968cfe8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `api_restaurant`
--
ALTER TABLE `api_restaurant`
  ADD CONSTRAINT `api_restaurant_user_id_1a25e805_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `api_restaurant_categories`
--
ALTER TABLE `api_restaurant_categories`
  ADD CONSTRAINT `api_restaurant_categ_categories_id_b44b7f40_fk_api_categ` FOREIGN KEY (`categories_id`) REFERENCES `api_categories` (`id`),
  ADD CONSTRAINT `api_restaurant_categ_restaurant_id_82aa4032_fk_api_resta` FOREIGN KEY (`restaurant_id`) REFERENCES `api_restaurant` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
