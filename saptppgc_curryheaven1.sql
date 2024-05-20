-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2024 at 10:32 AM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saptppgc_curryheaven1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`_id`, `username`, `password`, `inserted`, `updated`) VALUES
('6dabebc90a8a0e55a08099a488b550', 'admin', '$2b$10$4E6.FiJNg9LIhbZEmrFHyOGPGPnuz9Dd94klWRo8jlNv646hGNtU6', '2024-03-24 09:48:51.850419', '2024-03-24 09:48:51.850419');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `_id` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`_id`, `description`, `title`, `image`, `inserted`, `updated`) VALUES
('8c7419f194f17cf0f9c8437ab13e3a', '<p>Spice up your dining experience at The Curry Heaven, where every bite tells a story of tradition, flavor, and passion. Nestled in the heart of Stavanger\'s Østervågkaien 15, our restaurant is a haven for food enthusiasts seeking the authentic tastes of India and Nepal. </p><p><br></p><p>From the moment you enter The Curry Heaven, you\'ll be greeted by the tantalizing aroma of spices and the warm hospitality of our team. Our menu showcases a tantalizing array of dishes, from classic Indian curries bursting with fragrant spices to Nepalese specialties like momos - delicate dumplings filled with savory fillings. </p><p><br></p><p>But what sets The Curry Heaven apart is not just our delicious food, but our unwavering commitment to quality and service. Whether you\'re dining in with us or opting for our convenient food delivery service, expect nothing but the best. </p><p><br></p><p>Join us at The Curry Heaven and embark on a culinary journey that will tantalize your taste buds and leave you craving for more.</p>', 'Savor the Spice: Exploring the Delights of Indian and Nepalese Cuisine at The Curry Heaven', 'image-1715339889424-499208871.jpg', '2024-03-26 01:41:45.269420', '2024-05-10 07:18:09.000000'),
('90ee917b80a018c109aeb88003a6fe', '<p>In the heart of Stavanger\'s Østervågkaien 15, lies a culinary gem that transports you to the vibrant streets of India and Nepal - The Curry Heaven. As you step into our cozy restaurant, prepare to embark on a gastronomic journey like no other. </p><p><br></p><p>At The Curry Heaven, we pride ourselves on offering a diverse menu that celebrates the rich flavors and spices of Indian and Nepalese cuisine. From aromatic curries to mouthwatering momos and crispy samosas, each dish is crafted with care and authenticity, ensuring a truly unforgettable dining experience. </p><p><br></p><p>But our commitment to excellence doesn\'t stop there. In today\'s fast-paced world, convenience is key. That\'s why we also offer hassle-free food delivery services, bringing the flavors of The Curry Heaven directly to your doorstep. Whether you\'re craving a comforting bowl of curry after a long day or hosting a gathering with friends, we\'ve got you covered. </p><p><br></p><p>Join us at The Curry Heaven and indulge in the irresistible flavors of India and Nepal, right here in Stavanger, Norway. Your culinary adventure awaits! <br><br></p>', 'Discover the Culinary Magic of The Curry Heaven: A Taste of India and Nepal in Stavanger, Norway', 'image-1715339970233-816305246.jpg', '2024-03-26 01:40:28.160441', '2024-05-10 07:19:30.000000'),
('c6a44cbc1222b27e0073f986d944e2', '<p>Calling all food lovers! If you\'re on the hunt for an unforgettable dining experience, look no further than The Curry Heaven. Situated in the vibrant city of Stavanger at Østervågkaien 15, our restaurant is a culinary oasis offering a fusion of Indian and Nepalese flavors. </p><p><br></p><p>At The Curry Heaven, we believe that food should be more than just sustenance - it should be an experience. That\'s why our team of talented chefs meticulously crafts each dish using authentic recipes and the finest ingredients, ensuring a symphony of flavors with every bite. </p><p><br></p><p>Whether you\'re a fan of fiery curries, aromatic biryanis, or crave the comfort of Nepalese momos, our menu has something for everyone. And for those days when you\'d rather dine in the comfort of your own home, our food delivery service brings the taste of The Curry Heaven straight to your doorstep. </p><p><br></p><p>Join us at The Curry Heaven and discover why we\'re the ultimate foodie destination in Stavanger, Norway. Prepare your taste buds for a culinary adventure like no other!</p>', 'The Ultimate Foodie Destination: Experience The Curry Heaven\'s Indian and Nepalese Delights in Stavanger, Norway', 'image-1715339915179-93994110.jpg', '2024-03-26 01:43:19.948416', '2024-05-10 07:18:35.000000');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `_id` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `foodId` varchar(100) DEFAULT NULL,
  `userId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`_id`, `quantity`, `price`, `inserted`, `updated`, `foodId`, `userId`) VALUES
('000982c1b6004ee3a903c9ab5f43fd', 1, 39, '2024-04-30 11:37:04.260664', '2024-04-30 11:37:04.260664', 'dfbcd7401403faef2a132901686165', '00f43d82ae87f0b8ca51edf5313154'),
('0067169a77b373e3ad8523781e553a', 2, 238, '2024-05-14 13:18:16.428786', '2024-05-14 13:18:26.949527', '49377abbb03a77d8ccb416c13e0676', '9c31d29d7623369ec062e475c67c57'),
('05f77a8e5296571699de27d6f24700', 1, 199, '2024-05-04 10:28:27.468760', '2024-05-04 10:28:27.468760', '556742cb3b1021a60e865b6e780b36', '5c1461434bbf8aa4b59daa897da727'),
('08f7ad23b739bf37af546640b48ecd', 1, 99, '2024-04-29 22:11:52.250420', '2024-04-29 22:11:52.250420', '7077c42b6fa822846c670e024bcbc1', 'd951f657f719b98b4e15d6aa567400'),
('099ddbb0b95ae135e7fb7ac2e650f0', 1, 99, '2024-04-30 23:46:12.629011', '2024-04-30 23:46:12.629011', '7077c42b6fa822846c670e024bcbc1', '5d6f0ea56f4f3c20b0d10dba36d6e6'),
('0abbeff3daa070a98ef45f5d44a574', 1, 99, '2024-03-27 12:06:54.305935', '2024-03-27 12:06:54.305935', '2df7cfbc062fa8927ea562b01fb6c1', 'c6d1dbe7716e4c31c5bfd6ca0648a3'),
('0aeb14793c29a717839041f29ecf34', 1, 259, '2024-05-08 12:34:59.904470', '2024-05-08 12:34:59.904470', '49bdc284378c0ca05b99055fa07eb9', 'a3bc5a8c7c79c4530bc37fa4d7340c'),
('0bec8e547a45f70d33c627aa07ad99', 1, 99, '2024-05-04 14:29:32.406388', '2024-05-04 14:29:32.406388', '2df7cfbc062fa8927ea562b01fb6c1', '5f3351ebce118c35c772408c014b75'),
('0e0f70147d33bad18b1a00ebd8ac2e', 1, 239, '2024-05-13 09:58:46.960652', '2024-05-13 09:58:46.960652', 'dc38c659949610e8e879af89168c01', '2c8ba81c662ee8a4994124b2d3a552'),
('0f7b06bc38ed6b582137910ccc897e', 1, 49, '2024-05-08 12:35:54.798360', '2024-05-08 12:35:54.798360', '7961f845b364f1e32853472bd85ca5', 'a3bc5a8c7c79c4530bc37fa4d7340c'),
('13c0ec3e581a840efbcec72c750ba3', 1, 239, '2024-05-04 14:31:42.113333', '2024-05-04 14:31:42.113333', '2df46183a00f0c189f9c9c7fddc551', '5f3351ebce118c35c772408c014b75'),
('2226b1998f1cb3752a944c696eb912', 1, 119, '2024-05-05 15:45:21.826757', '2024-05-05 15:45:21.826757', '49377abbb03a77d8ccb416c13e0676', 'c21c79c7f481d6d41183d30a73160e'),
('23b93bce9c2bddf9e97967a9d1a1ad', 1, 139, '2024-05-05 07:32:10.161092', '2024-05-05 07:32:10.161092', '06d1325f5183afe028e65ba9a3d265', 'e463cf45b2df79b4395ddd83dec032'),
('244e78392ddc7e5860d6c6698d297e', 1, 199, '2024-04-30 23:48:40.520333', '2024-04-30 23:48:40.520333', '8e05e289fbeb8d46bdbef71b425dbc', '5d6f0ea56f4f3c20b0d10dba36d6e6'),
('28ebf30d7f4cfda0301a82af7fc3d8', 1, 259, '2024-05-04 14:32:19.877871', '2024-05-04 14:32:19.877871', '49bdc284378c0ca05b99055fa07eb9', '5f3351ebce118c35c772408c014b75'),
('292ecc8911278e83bbf3f06d2f8e30', 1, 119, '2024-05-12 01:44:06.416152', '2024-05-12 01:44:06.416152', '49377abbb03a77d8ccb416c13e0676', 'b59f2f732648744ce326814f595197'),
('2975ccb2e81ef870e4f9c320a7ff07', 1, 99, '2024-05-08 04:25:11.931765', '2024-05-08 04:25:11.931765', '2df7cfbc062fa8927ea562b01fb6c1', 'c19acdfd3361caf95bcda822a41de8'),
('2a6101abf01f1f8a2b9b26f4051b9f', 1, 199, '2024-04-27 11:39:41.674841', '2024-04-27 11:39:41.674841', '8e05e289fbeb8d46bdbef71b425dbc', 'bf57924dcf6957e6267fa30d4c05bc'),
('2ae0884a378e9bf9775db0a5271fbd', 1, 99, '2024-04-26 03:14:14.008830', '2024-04-26 03:14:14.008830', '2df7cfbc062fa8927ea562b01fb6c1', '9fdbd52f4d86ecd63d8a5f7ca25c70'),
('2c48fab5cf4b9f8c5a1d56f32b5233', 1, 269, '2024-03-26 18:39:47.964010', '2024-03-26 18:39:47.964010', '3f724f930776c53d2c3fefbe6ff166', 'be76ccf4a7a9b8d18b356f94118a5d'),
('2f5fcae14ea0a9ca8fba54c4328efd', 1, 99, '2024-04-28 03:58:00.111701', '2024-04-28 03:58:00.111701', '7077c42b6fa822846c670e024bcbc1', '3c1dceb9567868ae00d730b5055b98'),
('3526b8acbfb14273723cb6614ca9a4', 1, 49, '2024-04-20 14:05:07.618613', '2024-04-20 14:05:07.618613', '7961f845b364f1e32853472bd85ca5', '0aaa004e8c70835e74aaf999eac31e'),
('37527d0fefe5348935310a18a3466c', 1, 99, '2024-03-26 18:39:20.924295', '2024-03-26 18:39:20.924295', '7077c42b6fa822846c670e024bcbc1', 'be76ccf4a7a9b8d18b356f94118a5d'),
('37fcdf24ed2c19dad9af184f7874b1', 1, 59, '2024-05-13 10:47:53.192623', '2024-05-13 10:47:53.192623', '04976c3994d4832efa03974081d721', '04b712878e0246f192dd65c4a13fa6'),
('38262581c3e1ed8a6a2aea7fa42db9', 1, 59, '2024-04-30 04:58:57.679490', '2024-04-30 04:58:57.679490', '04976c3994d4832efa03974081d721', '00f43d82ae87f0b8ca51edf5313154'),
('3e921263084fc5696761ea665b8c6f', 1, 59, '2024-04-30 11:37:01.836196', '2024-04-30 11:37:01.836196', '4d300299655f25a0d62f35829693e4', '00f43d82ae87f0b8ca51edf5313154'),
('3eb50dd59aee5cfa3b164bfa92d50d', 1, 99, '2024-04-25 11:52:02.071814', '2024-04-25 11:52:02.071814', '2df7cfbc062fa8927ea562b01fb6c1', '622cf9543b74e9e9f1e59f711809df'),
('4126381d97921b20bd7b57ef6aab61', 1, 239, '2024-05-12 12:30:10.446143', '2024-05-12 12:30:10.446143', '404c12fb809a4aacef7d1c9d4a9636', 'de22b4696842e7c827e06f42e6ab39'),
('469a9312cef247c8ca59907035bbc6', 1, 99, '2024-04-26 07:16:32.079987', '2024-04-26 07:16:32.079987', '2df7cfbc062fa8927ea562b01fb6c1', 'dad13e8488da91159afbe313695bcc'),
('48bafa8491117741a18b8eed25a170', 1, 49, '2024-04-13 13:13:16.128539', '2024-04-13 13:13:16.128539', '047d900b91c01913a31760dc1f2b9d', 'd7eeb7f802f48d6b20418092980b03'),
('4b3334ae9776e70186bae54b3389b9', 1, 99, '2024-03-27 12:07:01.277997', '2024-03-27 12:07:01.277997', '7077c42b6fa822846c670e024bcbc1', 'c6d1dbe7716e4c31c5bfd6ca0648a3'),
('5218600bcef93378ed3df6f42a2989', 1, 99, '2024-04-29 05:18:35.638605', '2024-04-29 05:18:35.638605', '2df7cfbc062fa8927ea562b01fb6c1', 'df908bcd0f92d44f861a49015cb590'),
('5301e0ff4c0185a11886ff10192809', 1, 239, '2024-04-20 14:03:19.665864', '2024-04-20 14:03:19.665864', 'df31dfeb23409c3bb5de08559fcdc3', '0aaa004e8c70835e74aaf999eac31e'),
('5386d3e41d9f2b3cbac498bfaa8b34', 1, 59, '2024-05-05 07:33:16.623151', '2024-05-05 07:33:16.623151', '4d300299655f25a0d62f35829693e4', 'e463cf45b2df79b4395ddd83dec032'),
('5420ba13d3a21e08de9f7c2b314d8b', 1, 99, '2024-04-20 13:39:43.324376', '2024-04-20 13:39:43.324376', '2df7cfbc062fa8927ea562b01fb6c1', 'ca17ce9f5d6f6abb0ed998a489cf8b'),
('572f6bec00d887dedda0408f9bccb6', 1, 99, '2024-04-27 23:30:45.756918', '2024-04-29 21:55:54.563919', '2df7cfbc062fa8927ea562b01fb6c1', '160ef25d73bff3c149fe76b55c7f4c'),
('57ca827501f0c3546f8f8c07d8a041', 1, 99, '2024-04-11 23:08:54.326642', '2024-04-11 23:08:54.326642', '2df7cfbc062fa8927ea562b01fb6c1', '9ae1073fc591569fe1ad951ca71c0e'),
('5812d07ddd80dff5e26e6fe5876aff', 1, 119, '2024-05-04 15:03:17.340913', '2024-05-04 15:03:17.340913', '49377abbb03a77d8ccb416c13e0676', '74978b1b0b85f006f290999c69eaec'),
('586e22801a2edab7e6793b8aeb927d', 3, 297, '2024-04-29 21:51:01.685325', '2024-04-30 05:42:28.021068', '2df7cfbc062fa8927ea562b01fb6c1', 'd951f657f719b98b4e15d6aa567400'),
('586f0e770b23d84104dfce4f485cd4', 1, 119, '2024-04-11 12:50:29.779796', '2024-04-11 12:50:29.779796', '49377abbb03a77d8ccb416c13e0676', '24d564847141a04ba25ae852c92343'),
('58abaefa42cfddae88d938bb71f5de', 1, 119, '2024-04-11 11:42:40.822884', '2024-04-11 11:42:40.822884', '49377abbb03a77d8ccb416c13e0676', '65e61528fc82a4e907762046fbba8c'),
('59bc92980520947241042d25a7134e', 1, 239, '2024-04-13 13:14:29.675959', '2024-04-13 13:14:29.675959', '126e87e3d84827e732890ac40ebec8', 'd7eeb7f802f48d6b20418092980b03'),
('5b803eeea971948913d5ef27b8bb20', 1, 149, '2024-05-05 07:32:19.583997', '2024-05-05 07:32:19.583997', 'a08ded8e8217e0cde9d24cca5c47c1', 'e463cf45b2df79b4395ddd83dec032'),
('60be447e3cfb6cc67503144aff849b', 1, 89, '2024-04-26 03:12:52.255951', '2024-04-26 03:12:52.255951', '9b8cb92a40a6156a92eb25a8957fff', '6633e080e2b9a1ba93c42f23d63767'),
('620c5ca941ec68e4865527851cf867', 1, 99, '2024-05-11 10:57:12.817097', '2024-05-11 10:57:12.817097', '2df7cfbc062fa8927ea562b01fb6c1', '3a2d63fe28f85f705d4225e971492e'),
('66eb9a1c025c080ba54a6665228f7c', 2, 198, '2024-05-12 09:46:51.664691', '2024-05-12 09:46:56.058030', '2df7cfbc062fa8927ea562b01fb6c1', '48ff7f08a1039f6d5e8c0e0a4c23cf'),
('6760ac96e5f73b0abaecc1610ae8f4', 1, 139, '2024-05-14 17:45:35.531946', '2024-05-14 17:45:35.531946', '06d1325f5183afe028e65ba9a3d265', '61e64eebe502f504ca873b4e142b6b'),
('6b29114de8b4904e79301ef0fbd210', 0, 0, '2024-04-30 15:37:46.731299', '2024-04-30 15:37:52.972005', '7077c42b6fa822846c670e024bcbc1', 'df908bcd0f92d44f861a49015cb590'),
('727f55d4f34f6ecc1c0c654277381a', 1, 99, '2024-04-29 11:04:37.403565', '2024-04-29 11:04:37.403565', '2df7cfbc062fa8927ea562b01fb6c1', '74978b1b0b85f006f290999c69eaec'),
('77d973ebfc1dbc184b7f9925fd8db2', 1, 299, '2024-03-26 18:39:42.454218', '2024-03-26 18:39:42.454218', '462448f73c44a406ff66bbe4f4f7a6', 'be76ccf4a7a9b8d18b356f94118a5d'),
('79974b68e19b99492ec59cd920e5a7', 1, 99, '2024-04-20 22:23:16.009488', '2024-04-20 22:23:16.009488', '7077c42b6fa822846c670e024bcbc1', '5100cac8064214bb99fe8962a315b7'),
('7cb6c522b08ecda34aa1fdf3c38e96', 1, 249, '2024-05-13 10:47:28.733777', '2024-05-13 10:47:28.733777', '0fb25c0f74abc8283b5632b9804b34', 'c76e14ac85d5c8361789e26fa7ad26'),
('80befda412f90fc876ba72725cd073', 1, 89, '2024-04-27 05:50:51.283367', '2024-04-27 05:50:51.283367', '9b8cb92a40a6156a92eb25a8957fff', '3c1dceb9567868ae00d730b5055b98'),
('84017ec304402610ff530b8580324a', 1, 99, '2024-05-01 00:07:31.393212', '2024-05-01 00:07:31.393212', '2df7cfbc062fa8927ea562b01fb6c1', '00f43d82ae87f0b8ca51edf5313154'),
('86b94bd962077857ba046d0be0718c', 1, 39, '2024-05-04 10:28:55.627704', '2024-05-04 10:28:55.627704', 'dfbcd7401403faef2a132901686165', '5c1461434bbf8aa4b59daa897da727'),
('86bbb1da0a4a7cb6e77effaac67e2b', 1, 25, '2024-05-05 07:33:02.813939', '2024-05-05 07:33:02.813939', 'a38ae053572e16a610edf1caeb1822', 'e463cf45b2df79b4395ddd83dec032'),
('891ecb0f2505973fe36c5ba743eb75', 1, 99, '2024-04-20 13:28:51.699111', '2024-04-20 13:28:51.699111', '2df7cfbc062fa8927ea562b01fb6c1', '56c2d208e0f61cc5f05f536c7c7470'),
('892d2dc646864d32ccbbdc0cfc53b2', 2, 118, '2024-05-09 04:08:47.277156', '2024-05-10 13:38:16.357842', '4d300299655f25a0d62f35829693e4', 'c76e14ac85d5c8361789e26fa7ad26'),
('8992b58bcfa49dc9005baa5f632a83', 1, 99, '2024-05-05 15:45:26.236076', '2024-05-05 15:45:26.236076', '7077c42b6fa822846c670e024bcbc1', 'c21c79c7f481d6d41183d30a73160e'),
('8b1954e3808722362b1822c2962f08', 1, 239, '2024-04-13 13:14:04.621991', '2024-04-13 13:14:04.621991', '2df46183a00f0c189f9c9c7fddc551', 'd7eeb7f802f48d6b20418092980b03'),
('8bb5dca3ab0a3524bcd928469afea8', 1, 99, '2024-04-24 07:17:08.148301', '2024-04-24 07:17:08.148301', '2df7cfbc062fa8927ea562b01fb6c1', '8d3e91d835bd84b788727f636ed0d1'),
('8c730706cecc32efdc0553b379fd4c', 2, 398, '2024-05-07 10:13:26.992862', '2024-05-07 10:13:45.980875', '8e05e289fbeb8d46bdbef71b425dbc', 'd700693c809408a83d48f45a9f71d7'),
('8f13a1a66dab670e5509a5325708ea', 1, 89, '2024-05-13 07:44:18.845513', '2024-05-13 07:44:18.845513', '9b8cb92a40a6156a92eb25a8957fff', '04b712878e0246f192dd65c4a13fa6'),
('914fcbbe2457fb0901858692fea684', 1, 99, '2024-05-14 21:39:29.009089', '2024-05-14 21:39:29.009089', '2df7cfbc062fa8927ea562b01fb6c1', '2198cfae7d79090b8d4d5145acdf1b'),
('91e42d4df392f5f8617bfe7434327b', 1, 239, '2024-05-08 12:35:22.024067', '2024-05-08 12:35:22.024067', '2df46183a00f0c189f9c9c7fddc551', 'a3bc5a8c7c79c4530bc37fa4d7340c'),
('935ac78a1592707374a67d8f291f7c', 1, 139, '2024-05-07 10:14:02.567939', '2024-05-07 10:14:02.567939', '06d1325f5183afe028e65ba9a3d265', 'd700693c809408a83d48f45a9f71d7'),
('9494101fdfe61af62fe0c14a69aa70', 3, 567, '2024-05-10 13:38:30.371892', '2024-05-13 10:49:32.170854', '46224bb22d2acccb5e2cb566756b58', 'c76e14ac85d5c8361789e26fa7ad26'),
('95bf2acf4c64989938f2d4c367a31a', 1, 99, '2024-05-14 00:50:10.575464', '2024-05-14 00:50:10.575464', '2df7cfbc062fa8927ea562b01fb6c1', '123863f14d0e4087f44502c1a4f0bb'),
('9638e509575c82a634c123c6cb34d8', 1, 189, '2024-05-12 19:12:51.260011', '2024-05-12 19:12:51.260011', '46224bb22d2acccb5e2cb566756b58', '61e64eebe502f504ca873b4e142b6b'),
('989e652f3167f8d6e22eb1cb9c1237', 1, 39, '2024-05-07 10:14:27.400132', '2024-05-07 10:14:27.400132', 'dfbcd7401403faef2a132901686165', 'd700693c809408a83d48f45a9f71d7'),
('998e80204d15e03ae37c1a1ec1f4b2', 1, 239, '2024-05-09 10:33:24.518087', '2024-05-09 10:33:24.518087', '2df46183a00f0c189f9c9c7fddc551', 'e265ac8ecac1f9ea60c516371f0903'),
('9c195d53d17b9531194c63929df318', 1, 99, '2024-04-30 12:10:59.393431', '2024-04-30 12:10:59.393431', '7077c42b6fa822846c670e024bcbc1', '00f43d82ae87f0b8ca51edf5313154'),
('a28c6c65178e78a571c16ce378d35c', 1, 99, '2024-04-23 09:29:09.434534', '2024-04-23 09:29:09.434534', '2df7cfbc062fa8927ea562b01fb6c1', '0067900c92266bd7268d1d150b6f2e'),
('a8f6a799c74f5a4645dc9fdddfff41', 1, 99, '2024-05-11 06:02:39.118958', '2024-05-11 06:02:39.118958', '2df7cfbc062fa8927ea562b01fb6c1', 'daed105e43458268dcce4a2da325b3'),
('ac943a2c054b423e83757cc6318650', 1, 119, '2024-03-26 18:39:17.379688', '2024-03-26 18:39:17.379688', '49377abbb03a77d8ccb416c13e0676', 'be76ccf4a7a9b8d18b356f94118a5d'),
('ac9bd95bf8825d085f769442a2dc02', 1, 189, '2024-04-30 23:48:32.743862', '2024-04-30 23:48:32.743862', '46224bb22d2acccb5e2cb566756b58', '5d6f0ea56f4f3c20b0d10dba36d6e6'),
('acc74f6dfac6a00e2f8532b2e94e17', 1, 119, '2024-03-26 18:39:17.668809', '2024-03-26 18:39:17.668809', '49377abbb03a77d8ccb416c13e0676', 'be76ccf4a7a9b8d18b356f94118a5d'),
('adde68b69e210560e39195ac0c59e5', 1, 249, '2024-05-13 10:52:14.062998', '2024-05-13 10:52:14.062998', '212529fcdf650bf6e87ce7ec44282f', '16d9158b72a142c11c9138dd3e79c6'),
('afe274325cb80133226e405ee5dfdd', 1, 99, '2024-03-27 12:27:38.742151', '2024-03-27 12:27:38.742151', '2df7cfbc062fa8927ea562b01fb6c1', 'f75fc1d6ad462e493dcf224ffd8d6e'),
('b4aa94af9532feca3384306c89e4ad', 1, 249, '2024-05-04 10:28:17.545160', '2024-05-04 10:28:17.545160', '0fb25c0f74abc8283b5632b9804b34', '5c1461434bbf8aa4b59daa897da727'),
('b4c9aa7f6d9e4afae31753b47f8d63', 1, 25, '2024-05-05 07:32:46.510618', '2024-05-05 07:32:46.510618', '8e9459723067f334ae22629ea099e6', 'e463cf45b2df79b4395ddd83dec032'),
('b6f9262c720667a85e0f02f0a7c904', 1, 199, '2024-04-27 11:40:40.722026', '2024-04-27 11:40:40.722026', '556742cb3b1021a60e865b6e780b36', 'bf57924dcf6957e6267fa30d4c05bc'),
('bcc1f9eac44f8c1fbc8380e1dff575', 1, 49, '2024-04-30 11:36:59.487203', '2024-04-30 11:36:59.487203', '047d900b91c01913a31760dc1f2b9d', '00f43d82ae87f0b8ca51edf5313154'),
('bd0e9e3bc0a1c6c9b5062bbe8f00d2', 2, 458, '2024-04-25 16:42:33.960151', '2024-04-25 16:42:33.960151', 'c390b0aa86841f52e366a087adf976', 'b3e9266de6213a7a60607b6a9d2a25'),
('c0e5da0c92184d801bd64bdf29de64', 5, 495, '2024-04-23 04:17:52.076530', '2024-04-23 04:17:52.076530', '2df7cfbc062fa8927ea562b01fb6c1', '3c03c1634e7e2f4783dfedc3eb35a0'),
('c6ce9658533dcb2609a0beaccff41a', 1, 49, '2024-04-13 13:13:21.287007', '2024-04-13 13:13:21.287007', '7961f845b364f1e32853472bd85ca5', 'd7eeb7f802f48d6b20418092980b03'),
('ca8590b0cc162393643ba6067f86be', 1, 99, '2024-04-11 12:29:40.738184', '2024-04-11 12:29:40.738184', '7077c42b6fa822846c670e024bcbc1', '6813e79331f9af5b49f0c81284270c'),
('cc2fa68740e60124c1636c37dc6571', 2, 198, '2024-04-26 12:18:54.512496', '2024-04-26 12:18:54.512496', '7077c42b6fa822846c670e024bcbc1', '8711b520ac407e2e8ca5f4139d27f0'),
('ce3b8eeec51b79de41df2aeed22360', 1, 119, '2024-05-11 06:02:43.911362', '2024-05-11 06:02:43.911362', '49377abbb03a77d8ccb416c13e0676', 'daed105e43458268dcce4a2da325b3'),
('d064af0e65857b34e371d5ba261bb4', 1, 25, '2024-05-05 07:32:52.427477', '2024-05-05 07:32:52.427477', 'b65e77f6c4fa0138bd64670a853267', 'e463cf45b2df79b4395ddd83dec032'),
('d1e9ae2f0480e9abfb8c0d6f9bc53c', 1, 119, '2024-05-14 00:55:45.728336', '2024-05-14 00:55:45.728336', '49377abbb03a77d8ccb416c13e0676', '123863f14d0e4087f44502c1a4f0bb'),
('d4f85f36bca5515caf4a707c3fdf18', 1, 119, '2024-04-28 04:46:39.546958', '2024-04-28 04:46:39.546958', '49377abbb03a77d8ccb416c13e0676', '6dda855396db826ca3068e065224fb'),
('d59f9d39d6151b7330a2aa20340b60', 1, 119, '2024-04-30 23:46:58.713859', '2024-04-30 23:46:58.713859', '49377abbb03a77d8ccb416c13e0676', '5d6f0ea56f4f3c20b0d10dba36d6e6'),
('db371cb7e558665ae642ec4c67acdf', 1, 119, '2024-04-26 00:08:51.035421', '2024-04-26 00:08:51.035421', '49377abbb03a77d8ccb416c13e0676', '7eb1b3b73d2412b21974d699feaa11'),
('dc55dccd7a5a1a33ce42fabad9ecde', 3, 357, '2024-04-29 20:53:15.557516', '2024-04-29 20:53:23.877991', '49377abbb03a77d8ccb416c13e0676', '4a3d2d82eba498414f737878ff26c4'),
('dfc97d4d0a524766ed4e7a5c54a258', 1, 119, '2024-03-27 12:27:42.265275', '2024-03-27 12:27:42.265275', '49377abbb03a77d8ccb416c13e0676', 'f75fc1d6ad462e493dcf224ffd8d6e'),
('e0316b6dcd7e70282c6031503a949b', 1, 119, '2024-04-29 22:07:09.058608', '2024-04-29 22:07:09.058608', '49377abbb03a77d8ccb416c13e0676', 'd951f657f719b98b4e15d6aa567400'),
('e09842698e42cbe99ea3d7d8d333a1', 1, 99, '2024-05-13 09:36:28.839365', '2024-05-13 09:36:28.839365', '2df7cfbc062fa8927ea562b01fb6c1', '04b712878e0246f192dd65c4a13fa6'),
('e164edda9c01257cc1adb5f90b429f', 1, 99, '2024-04-20 13:31:18.378847', '2024-04-20 13:31:18.378847', '2df7cfbc062fa8927ea562b01fb6c1', '0002dcc574daa3096f701406e063d1'),
('e4f8ed30e926d42f48383a0145bdeb', 1, 99, '2024-04-27 04:55:06.869046', '2024-04-27 04:55:06.869046', '2df7cfbc062fa8927ea562b01fb6c1', '5bc50666c6d69d6038350a87cf4597'),
('e5b30b69b3dfe0188209dab1920527', 1, 239, '2024-04-20 14:03:06.971224', '2024-04-20 14:03:06.971224', 'cae37c7d38fa395598dc751774366b', '0aaa004e8c70835e74aaf999eac31e'),
('e7f97a120e373c0c6962fbb6735817', 1, 39, '2024-04-27 11:40:19.825002', '2024-04-27 11:40:19.825002', 'dfbcd7401403faef2a132901686165', 'bf57924dcf6957e6267fa30d4c05bc'),
('eb4bf46abe5344202261aeaaf28f83', 1, 119, '2024-03-27 12:06:57.191940', '2024-03-27 12:06:57.191940', '49377abbb03a77d8ccb416c13e0676', 'c6d1dbe7716e4c31c5bfd6ca0648a3'),
('f099c837f7ef0bd8a1857b70b5ee23', 3, 297, '2024-04-29 20:28:02.426075', '2024-04-29 20:45:15.872170', '2df7cfbc062fa8927ea562b01fb6c1', '4a3d2d82eba498414f737878ff26c4'),
('f2445e40ca2a2832ccb27f0e524941', 1, 29, '2024-05-04 10:28:58.879658', '2024-05-04 10:28:58.879658', '8cc77c0bd5349b27df7f2bc307321f', '5c1461434bbf8aa4b59daa897da727'),
('f25a23822d591fe203e992138edc19', 1, 269, '2024-03-26 18:39:51.540623', '2024-03-26 18:39:51.540623', 'd3f95813e8fd3b29eca6bb97100cee', 'be76ccf4a7a9b8d18b356f94118a5d'),
('f4cfb301eb46bb4fba44b7dead06d3', 1, 59, '2024-04-26 03:13:02.187268', '2024-04-26 03:13:02.187268', '04976c3994d4832efa03974081d721', '6633e080e2b9a1ba93c42f23d63767'),
('f50a066477e05d0f9cbb0a5b2479b0', 1, 89, '2024-04-30 15:38:39.081091', '2024-04-30 15:38:39.081091', '9b8cb92a40a6156a92eb25a8957fff', 'df908bcd0f92d44f861a49015cb590'),
('fad04180e45bf33102d5157e85385b', 1, 99, '2024-03-27 12:27:45.612761', '2024-03-27 12:27:45.612761', '7077c42b6fa822846c670e024bcbc1', 'f75fc1d6ad462e493dcf224ffd8d6e'),
('fc0814c2f2ffdf512af3d813cbdfc5', 1, 99, '2024-04-30 23:48:16.248450', '2024-04-30 23:48:16.248450', '2df7cfbc062fa8927ea562b01fb6c1', '5d6f0ea56f4f3c20b0d10dba36d6e6'),
('fcebc33b233f0146947bb969e63ff7', 1, 199, '2024-05-04 10:17:21.533861', '2024-05-04 10:17:21.533861', '556742cb3b1021a60e865b6e780b36', 'bcf7cb75348834eea9b3a9f7a5e1ce');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `_id` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `order` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`_id`, `slug`, `name`, `image`, `inserted`, `updated`, `order`) VALUES
('008d140e8f6cf8d3ae94e638072080', 'drikker', 'DRIKKER', NULL, '2024-03-25 10:17:21.229698', '2024-03-25 10:17:21.229698', ''),
('943ddf6f88104afb81654eb9235538', 'food-menu', 'FOOD MENU', NULL, '2024-03-25 09:56:55.982875', '2024-03-25 12:10:24.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `_id` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `isBlocked` tinyint(4) NOT NULL DEFAULT 0,
  `blockedMessage` varchar(1000) DEFAULT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isNewGuest` tinyint(4) NOT NULL DEFAULT 0,
  `type` enum('google','facebook','normal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`_id`, `fullName`, `email`, `password`, `image`, `address`, `phoneNumber`, `verified`, `isBlocked`, `blockedMessage`, `inserted`, `updated`, `isNewGuest`, `type`) VALUES
('0002dcc574daa3096f701406e063d1', 'DHURBA JOSHI', 'joshidhurba@gmail.com', '$2b$10$C01NthiaFFqhBJVi8OPrbu8ayu1kTltyiadX.SHztoi6DcMEN.9UG', 'image-1712711054583-724790757.jpg', 'kathmandu', NULL, 0, 0, NULL, '2024-03-25 22:36:24.482512', '2024-04-09 21:04:14.000000', 0, NULL),
('0067900c92266bd7268d1d150b6f2e', 'Guest', '', '$2b$10$h74qLlaOg4k4fgBTVliFH.Go0mHYf6e/HmQjGoAphNjlG0xzIXblC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 09:28:44.933544', '2024-04-23 09:28:44.933544', 1, NULL),
('00f43d82ae87f0b8ca51edf5313154', 'Guest', '', '$2b$10$X1k/QOUgmz9vljts0h17nOpZg3HYAy7uizclNfuNZ3xLlB7DBCX4u', NULL, NULL, NULL, 0, 0, NULL, '2024-04-24 07:12:55.394009', '2024-04-24 07:12:55.394009', 1, NULL),
('04b712878e0246f192dd65c4a13fa6', 'Guest', '', '$2b$10$9l16VYU38LRllXg3vN0twuBOqC60U5mkp3wMtf3c1MMC1L6B53rUe', NULL, NULL, NULL, 0, 0, NULL, '2024-05-13 07:44:03.712102', '2024-05-13 07:44:03.712102', 1, NULL),
('0944ebd561b12e3effdfa9b3c8d828', 'VIKAS ', 'vikasasr94@gmail.com', '$2b$10$gY0KTuIBs3ZrwgJC8OZAiOL8YT4wZy96FXtfCFWE7qT6OfpunER4u', NULL, NULL, NULL, 0, 0, NULL, '2024-03-26 18:38:35.646951', '2024-03-26 18:38:35.646951', 0, NULL),
('0aaa004e8c70835e74aaf999eac31e', 'Guest', '', '$2b$10$1FBbxVHFUJ8ykBnSK/mX/eQHiixbdFNK8NNBKClJ8l9QdRyq6OPMq', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 13:59:11.517057', '2024-04-20 13:59:11.517057', 1, NULL),
('10ae26764a63284f88e016dc5e17fb', 'admin2', 'new@gmail.com', '$2b$10$b0MhAov9Nk5Wr9/CG5YUF.N6.1xT9gPrbgKBaivWW0u2Nepq9sGF.', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 00:10:32.190191', '2024-04-26 00:10:32.190191', 0, NULL),
('123863f14d0e4087f44502c1a4f0bb', 'Narayan', 'narayan@gmail.com', '$2b$10$qHmQ9XUUottsU9Q43s/yYejAntFRYJ.cRvLnuFR3kOBV3wVWIiN9G', NULL, NULL, NULL, 0, 0, NULL, '2024-05-13 07:48:06.803072', '2024-05-13 07:48:06.803072', 0, NULL),
('15883054cafd95509ceac044aa2618', 'Guest', '', '$2b$10$lfrPQrKVj938349W9Ct/fOZF7LGNaZz/YoDtQBwRBB5Xl8jNJ6f/.', NULL, NULL, NULL, 0, 0, NULL, '2024-04-27 00:56:18.960206', '2024-04-27 00:56:18.960206', 1, NULL),
('160ef25d73bff3c149fe76b55c7f4c', 'Guest', '', '$2b$10$fIyeYt.Wd3ySd2pqzWDfauBKOPAH1Cx0fAPRQBwVR6wa49w2ktLjW', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 13:00:09.312096', '2024-04-20 13:00:09.312096', 1, NULL),
('16d9158b72a142c11c9138dd3e79c6', 'Guest', '', '$2b$10$.m.JgWGr65BjfbFI/yllB.YnfR0s4v6l7flf.My12a1EpbSZw7mtK', NULL, NULL, NULL, 0, 0, NULL, '2024-05-13 10:52:01.336811', '2024-05-13 10:52:01.336811', 1, NULL),
('19089abd0608bf6fbbbe8278e6566c', 'Guest', '', '$2b$10$0J3qOEitncdgnv6hAgoxNuGpS1KuZBf7FaLyRhetDVQPtwtRWSrpe', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 12:18:53.992249', '2024-04-20 12:18:53.992249', 1, NULL),
('1a887d71c839a1171fa2e9fd37edab', 'Guest', '', '$2b$10$ssRGp4tfo5JkO0d/IZkckO5zP/9CO1T8O5VEGOI4PZBJLUqqHScAy', NULL, NULL, NULL, 0, 0, NULL, '2024-04-19 12:49:12.280190', '2024-04-19 12:49:12.280190', 1, NULL),
('2198cfae7d79090b8d4d5145acdf1b', 'Guest', '', '$2b$10$5cYejtTHqAUuRRjZB58UPOa/yOmaVWini.q1G3xuAPknAHjOmPi5y', NULL, NULL, NULL, 0, 0, NULL, '2024-05-13 07:45:36.557526', '2024-05-13 07:45:36.557526', 1, NULL),
('24d564847141a04ba25ae852c92343', 'DHURBA JOSHI', 'info@supremeitsolutions.com', '$2b$10$TC7.9x0tuGbfyhcfMVQA7u2lJLmMGnSNLysS41.DbaNNg2f79i.Iu', NULL, NULL, NULL, 0, 0, NULL, '2024-04-11 12:49:35.878883', '2024-04-11 12:49:35.878883', 0, NULL),
('2a69ab092a86144a0abf933dc9b5b6', 'DHURBA JOSHI', 'admin@supremeitsolutions.com', '$2b$10$1DC021Xbpfu1Qu2IH1ng5O5t1vJiYaWeT8E6UeL8Rc1dC/rQoL6SG', NULL, NULL, NULL, 0, 0, NULL, '2024-04-11 12:46:40.202637', '2024-04-11 12:46:40.202637', 0, NULL),
('2b8de409a21ac45a20d4f2ae724c39', 'joney', 'jony@gmail.com', '$2b$10$L.DtFYDN3CjRuwoL73LMEOS41Ou9fpWCz/oBCPJBRYqDbx3lErGm2', NULL, NULL, NULL, 0, 0, NULL, '2024-05-14 07:17:27.272685', '2024-05-14 07:17:27.272685', 0, NULL),
('2c8ba81c662ee8a4994124b2d3a552', 'Guest', '', '$2b$10$1Z3bd1i55TUNCQJPygKvt.5CmC9y8mfH/GCgS0w4.fXRu1FEbfzSi', NULL, NULL, NULL, 0, 0, NULL, '2024-04-27 04:10:20.329445', '2024-04-27 04:10:20.329445', 1, NULL),
('32e63ad0f206b1307f6c2e18f9548a', 'nb chand', 'undp_123@yahoo.com', '$2b$10$kP89OcD1YHeph38RRYqAourufycPsHdPRkfGkSF7vfWjP5xgo3nMC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-11 23:02:20.039762', '2024-04-11 23:02:20.039762', 0, NULL),
('32f511bb56a46659adbb56fecd1c65', 'john Doe', 'jon@gmail.com', '$2b$10$Zmsfu/yOEgeisirBceQ5.e5W8Ht1M1/uPLfcMO7LBa/i1/tvF3tVC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 00:12:27.338955', '2024-04-26 00:12:27.338955', 0, NULL),
('3a2d63fe28f85f705d4225e971492e', 'Guest', '', '$2b$10$wUuM1gg/2jrgdiXbbN0s.ubJ/HcYzB/3xezSyo3jXytcbg7qvh1CW', NULL, NULL, NULL, 0, 0, NULL, '2024-05-11 10:57:02.569697', '2024-05-11 10:57:02.569697', 1, NULL),
('3c03c1634e7e2f4783dfedc3eb35a0', 'Guest', '', '$2b$10$hfvc0fG8dpzI3BMhwPG9POiDYFBiyXOeanWBkIrSMTkh3la3/jiKC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 04:16:52.657429', '2024-04-23 04:16:52.657429', 1, NULL),
('3c1dceb9567868ae00d730b5055b98', 'Guest', '', '$2b$10$r16Jp/VMA95pGQwjqrX47uNu5KWU7VbhBjuEXVfYtZRPLtyWBW/3C', NULL, NULL, NULL, 0, 0, NULL, '2024-04-27 05:02:55.887790', '2024-04-27 05:02:55.887790', 1, NULL),
('3f0a02d51a592ec941e605b674d7c1', 'Anil Shrestha', 'anilcrest2400@gmail.com', '$2b$10$JEnTn0XKZQ0y5a/Bamp4l.2zeHjJdn.DIZoF09aTfmE3wq2TAQ.ji', NULL, NULL, NULL, 0, 0, NULL, '2024-04-11 11:44:38.367100', '2024-04-11 11:44:38.367100', 0, NULL),
('4280ba1dde8556ba6291b8fc9e4ab6', 'Guest', '', '$2b$10$GR8fxWgokoo8fFaezpEDfOcHyQizEbcxB5E7p8fFuAo3cGB0TGRMG', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 05:05:43.023052', '2024-04-23 05:05:43.023052', 1, NULL),
('48ff7f08a1039f6d5e8c0e0a4c23cf', 'Guest', '', '$2b$10$vgtMU8ZSkKQy6wZkvL9LTOadXujrfECvRpMY0E35.YRQhsynqzhX6', NULL, NULL, NULL, 0, 0, NULL, '2024-05-12 09:46:23.073034', '2024-05-12 09:46:23.073034', 1, NULL),
('4a3d2d82eba498414f737878ff26c4', 'Ram Lal', 'ram@gmail.com', '$2b$10$6cbJV01pAxuFi.lGzFg53uPzQFsqDKdt05fypdMSBYq1GhQEVrCqm', 'image-1712626364379-5378248.jpg', 'Hi hello k chha', NULL, 0, 0, NULL, '2024-03-25 16:26:54.476612', '2024-04-08 21:35:44.000000', 0, NULL),
('4bd0ecf413e0e450900fd6e2193038', 'Guest', '', '$2b$10$UOVnP2Q.JxJ.6R5In7sDUuRYXEb.AxeJ9LIy5weYPCFJHlEJSCR3m', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 12:57:49.018007', '2024-04-20 12:57:49.018007', 1, NULL),
('5100cac8064214bb99fe8962a315b7', 'Guest', '', '$2b$10$YlUVf1kfOSAC0gC6aPjGIudzN4yUFkI2CWNai4Z3BevLenYfMM1Ma', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 12:54:15.259487', '2024-04-20 12:54:15.259487', 1, NULL),
('56c2d208e0f61cc5f05f536c7c7470', 'Guest', '', '$2b$10$yxDF9XJAWzLhBH1cDu2Jt.MbJOCWMXf3nAsAAS4aIxKoGDBvx5hnW', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 13:28:36.145971', '2024-04-20 13:28:36.145971', 1, NULL),
('57cfcea9ec1a98a813c08e866411c1', 'Guest', '', '$2b$10$BMt9Z1Y.bt79DNFDlplqN.NgzJGjlo2807pnAUBbGO/GJSoCiIa/G', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 01:47:02.864036', '2024-04-20 01:47:02.864036', 1, NULL),
('5b64a398ec6f8c8c3fcbd145643824', 'Tone Leirsti ', 'tone_leirsti@hotmail.com', '$2b$10$RfE7znGjWO353OFD0Gp9Ruls1srPiyrqNLWZ.5nIuL3qbEK79wm8S', NULL, NULL, NULL, 0, 0, NULL, '2024-04-12 13:34:03.155692', '2024-04-12 13:34:03.155692', 0, NULL),
('5bc50666c6d69d6038350a87cf4597', 'Guest', '', '$2b$10$fe.pLJsIEplvdY1KBU5QzOI7HSK7OFE.rAU/JgqwFt6eVI9Pzldya', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 23:41:21.016846', '2024-04-20 23:41:21.016846', 1, NULL),
('5c1461434bbf8aa4b59daa897da727', 'Guest', '', '$2b$10$82p7JVpwb8/LPBFZBZ75nuCbheerIpoD1b8syfj7R42I/hoKdWuie', NULL, NULL, NULL, 0, 0, NULL, '2024-05-04 10:27:43.487650', '2024-05-04 10:27:43.487650', 1, NULL),
('5d6f0ea56f4f3c20b0d10dba36d6e6', 'new', 'newnew@gmail.com', '$2b$10$6SH6RvR.EDVdJ36MUR.3W.COE8l7spnU.uIi8z3oFVNfUKs/mJADi', NULL, NULL, NULL, 0, 0, NULL, '2024-04-30 23:45:38.877477', '2024-04-30 23:45:38.877477', 0, NULL),
('5f3351ebce118c35c772408c014b75', 'Guest', '', '$2b$10$z4d2rG9etGy.8wfbZru9hO2mJpjNf1ZNGbtjQs9/qO2/7iuThHcmC', NULL, NULL, NULL, 0, 0, NULL, '2024-05-04 14:28:59.143645', '2024-05-04 14:28:59.143645', 1, NULL),
('6053594b43b52e951fba1ec8b7d145', 'Prabin Cholekhwa', 'prabincholex@gmail.com', '$2b$10$V/rPoMyL9H/19878PWapn.GBdznDZNyBAEEnnvRVcyVi4rAJFsCNG', NULL, NULL, NULL, 0, 0, NULL, '2024-04-06 05:39:38.221055', '2024-04-06 05:39:38.221055', 0, NULL),
('61e64eebe502f504ca873b4e142b6b', 'Guest', '', '$2b$10$AZ9PAH7GiuCfIL4CBcXWMOU/ddfbWx/nZqIC95s8cZW8P36rrgZZq', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 12:34:34.852788', '2024-04-26 12:34:34.852788', 1, NULL),
('622cf9543b74e9e9f1e59f711809df', 'admin', 'admin@gmail.com', '$2b$10$EjYRpyrZoMg3VpgaBLiLJeCg1FZ84gxls3h7UO17oQr/yec9xKzuK', NULL, NULL, NULL, 0, 0, NULL, '2024-04-25 11:50:57.740029', '2024-04-25 11:50:57.740029', 0, NULL),
('64875400132f5d2ecf008aba81030b', 'Bikky kc', 'bharathkc013@gmail.com', '$2b$10$oy..tH8Ghbh0BPqVYMLR2uAXjfSzMLuq2m4GzFmwGpoxs1uXhh/Ry', 'image-1712836222310-384472354.jpg', 'Kupondole,Nepal', NULL, 0, 0, NULL, '2024-03-28 12:07:43.746499', '2024-04-11 07:50:39.000000', 0, NULL),
('65961cce63291918a985c8ce9904f1', 'Guest', '', '$2b$10$JZmSApCWCtx00HBlJ9.Q/eroYfWPtGkm1Cnjyl3Rcscx01WWQG4za', NULL, NULL, NULL, 0, 0, NULL, '2024-05-10 02:11:23.709201', '2024-05-10 02:11:23.709201', 1, NULL),
('65e61528fc82a4e907762046fbba8c', 'DHURBA JOSHI', 'doransoft@gmail.com', '$2b$10$PTp5kxZMWtqb.SuWYMVGyOtwRLjaYgTv1zWYQ1FFQU4OJv7dqzcru', NULL, NULL, NULL, 0, 0, NULL, '2024-04-11 10:44:13.593415', '2024-04-11 10:44:13.593415', 0, NULL),
('6633e080e2b9a1ba93c42f23d63767', 'Guest', '', '$2b$10$Ynak2hhT50xmFOcW4U/vbeoi62dh.TmI6yYRsMGagdiquuOQTt5fS', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 03:12:42.134049', '2024-04-26 03:12:42.134049', 1, NULL),
('66c20384930fd3704852df1669e33d', 'Guest', '', '$2b$10$Lw9BE0faQ9/.imjO/0bLXO/ufy6xOwzAAz4VralK57ySKdk2ZOrJ.', NULL, NULL, NULL, 0, 0, NULL, '2024-05-14 08:33:20.204094', '2024-05-14 08:33:20.204094', 1, NULL),
('6813e79331f9af5b49f0c81284270c', 'DHURBA JOSHI', 'joshi.dhurba@gmail.com', '$2b$10$5QHtsfgK7DHtvjyiAB613.OE2bnU6AWckFmaVhp7DF.8XOwRnIsVC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-11 11:45:06.439251', '2024-04-11 11:45:06.439251', 0, NULL),
('6bd217fb25cf979e470892ae9c992e', 'Guest', '', '$2b$10$vJ2UTZUmHdMCPq8MCfvFJ.KZchidxzS36rdAsyN67hLxfHVi6jLDC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 13:38:57.887669', '2024-04-20 13:38:57.887669', 1, NULL),
('6dda855396db826ca3068e065224fb', 'Guest', '', '$2b$10$.QFIs6j4tPkMVXnzdLJAx.BjbfuysRInRc8EMm2xyZcejNZrAmGHW', NULL, NULL, NULL, 0, 0, NULL, '2024-04-28 04:46:11.813253', '2024-04-28 04:46:11.813253', 1, NULL),
('74978b1b0b85f006f290999c69eaec', 'Guest', '', '$2b$10$cxNBDv5tLSconnVxCVJGh.bxS4lNvpjfbknzZwDYzo2kB2bElgJay', NULL, NULL, NULL, 0, 0, NULL, '2024-04-24 07:10:09.937864', '2024-04-24 07:10:09.937864', 1, NULL),
('7eb1b3b73d2412b21974d699feaa11', 'Guest', '', '$2b$10$p/UNGhyyBBLY27Mvxfbp1e6hUWCfLx73WrvozPmPFkAVdgtydxHMa', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 00:08:44.318040', '2024-04-26 00:08:44.318040', 1, NULL),
('8711b520ac407e2e8ca5f4139d27f0', 'Guest', '', '$2b$10$/Ojj2zzB.MTz58tWqLYnb.MDjg15DPw2tP.DJ8srMeEE9kBsxVYqC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 12:18:35.737602', '2024-04-26 12:18:35.737602', 1, NULL),
('8d3e91d835bd84b788727f636ed0d1', 'Guest', '', '$2b$10$UgwKA3wZy4R.btw2DJFrSenPberkJ40610bOC.ug2D6ZwRa0BpeOS', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 04:11:04.490729', '2024-04-23 04:11:04.490729', 1, NULL),
('8ee50f96f1746c1f186c11ed2f9dac', 'Anil Shrestha', 'anilcrest24000@gmail.com', '$2b$10$hf9eCrupOO1Z6zKiuVm73eI5RgHmmEWe/QrXb4rl..gm2rPUGvmGi', NULL, NULL, NULL, 0, 0, NULL, '2024-04-19 13:16:18.946829', '2024-04-19 13:16:18.946829', 0, NULL),
('90f214de9f7918a99cdc40a4f16e33', 'Guest', '', '$2b$10$jfkjtB59YMTv8WqR/ip9xuC4ReVS47QLzgLk.HueLdZmOtsJWxSNO', NULL, NULL, NULL, 0, 0, NULL, '2024-05-05 10:52:09.212673', '2024-05-05 10:52:09.212673', 1, NULL),
('95dcfe8a2744e02752340807cba96d', 'Guest', '', '$2b$10$ZPr1bIJxg4wnDKrt9cVlWererVEj1F4zDdmffYGGxQHcOpoz/1XwO', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 04:55:33.104955', '2024-04-26 04:55:33.104955', 1, NULL),
('9ae1073fc591569fe1ad951ca71c0e', 'NCB', 'nbchand8@gmail.com', '$2b$10$ZWOwasOOyaODfKIEgyLFH.wU6TOSH2/Ct5QX3TH6PWQfMmGf/hrPu', NULL, NULL, NULL, 0, 0, NULL, '2024-04-11 22:43:28.940133', '2024-04-11 22:43:28.940133', 0, NULL),
('9c31d29d7623369ec062e475c67c57', 'Guest', '', '$2b$10$hAQAxW1dw5lfIAthJoIfAuIIPDNma2OrhuiCFoF0eKvTtn5PFMNOK', NULL, NULL, NULL, 0, 0, NULL, '2024-05-12 12:02:47.182135', '2024-05-12 12:02:47.182135', 1, NULL),
('9faaa54d4930b3bc474f6ad07279e4', 'Guest', '', '$2b$10$Cbw2kO2nR84HxvuxWGUwTOfef5HQfa4I43QMcduKyqQk22LumOxUq', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 04:55:48.090804', '2024-04-26 04:55:48.090804', 1, NULL),
('9fdbd52f4d86ecd63d8a5f7ca25c70', 'Guest', '', '$2b$10$M5B0dOB9NRsh.NK6E2uSm.L3raJ48iS7jdI2.qNNBPHjSLZf61oD.', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 03:14:06.587804', '2024-04-26 03:14:06.587804', 1, NULL),
('a3bc5a8c7c79c4530bc37fa4d7340c', 'Guest', '', '$2b$10$D3ZU.OuwvXBDEW3VhlF3aO.U4W.3RYVqPJaf/7Xnzt3TLQUeu9WmC', NULL, NULL, NULL, 0, 0, NULL, '2024-05-08 12:34:40.327539', '2024-05-08 12:34:40.327539', 1, NULL),
('b26ca1de550829fbcca07bf18461a5', 'Guest', '', '$2b$10$cZ1iOxY/A.T3Gd1/FLQgreo..MJQy2Lt4UQDAcyDsFgMUNteSFq4C', NULL, NULL, NULL, 0, 0, NULL, '2024-05-11 05:24:56.683751', '2024-05-11 05:24:56.683751', 1, NULL),
('b3e9266de6213a7a60607b6a9d2a25', 'Guest', '', '$2b$10$FdGm9k1yU7RDU7klLWmBXenG46qlkGxjaU2WUZSm1mHN5/EFKBvLC', NULL, NULL, NULL, 0, 0, NULL, '2024-04-25 16:40:47.346242', '2024-04-25 16:40:47.346242', 1, NULL),
('b59f2f732648744ce326814f595197', 'Guest', '', '$2b$10$ScusCjNJfBVfHLQ5FTsDD.cruZ69AnnsqD4geDqED/7wsnn.3xrlm', NULL, NULL, NULL, 0, 0, NULL, '2024-05-12 01:43:54.790709', '2024-05-12 01:43:54.790709', 1, NULL),
('bcbb4d3db4c1d698d2e97680043fd8', 'Guest', '', '$2b$10$v4VkrcK88XLlo/2Y6JBfHuOjudJsISAmAOnmZwG3NIGstIJ0y5afu', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 09:25:08.949532', '2024-04-23 09:25:08.949532', 1, NULL),
('bcf7cb75348834eea9b3a9f7a5e1ce', 'Guest', '', '$2b$10$FwdURkvgUHqmFzcDQOWGjefJgnJPsmjNWl.OdkxR6rd56GZX9zbqq', NULL, NULL, NULL, 0, 0, NULL, '2024-05-04 10:16:54.940230', '2024-05-04 10:16:54.940230', 1, NULL),
('be76ccf4a7a9b8d18b356f94118a5d', 'VIKAS ', 'Curryheaven2024@gmail.com', '$2b$10$ctB3CRXyLBSzmpWPer0SUethd6N6CfqRoXRqQNs/yA7Xb2lH4ddFW', NULL, NULL, NULL, 0, 0, NULL, '2024-03-26 18:37:46.981633', '2024-03-26 18:37:46.981633', 0, NULL),
('bf57924dcf6957e6267fa30d4c05bc', 'Guest', '', '$2b$10$MfnlKGRJnLRKuD4ju/vY6ucHlKLhZAm1bUouuqtgp4sFKLUR1Jb3W', NULL, NULL, NULL, 0, 0, NULL, '2024-04-27 11:39:26.752632', '2024-04-27 11:39:26.752632', 1, NULL),
('c19acdfd3361caf95bcda822a41de8', 'Guest', '', '$2b$10$SjlEEon1nKuIs7JTwvBgR.vPdizbyyteKZlG438ze6zjcHo1gSNfS', NULL, NULL, NULL, 0, 0, NULL, '2024-05-08 04:23:26.950372', '2024-05-08 04:23:26.950372', 1, NULL),
('c21c79c7f481d6d41183d30a73160e', 'Guest', '', '$2b$10$I4WmaKkW4Mtu8yVdo28LzOBQjg9tR1uuR2NhrgH9zjqq0fGiaK.56', NULL, NULL, NULL, 0, 0, NULL, '2024-05-02 17:53:39.784259', '2024-05-02 17:53:39.784259', 1, NULL),
('c415eaa6f8af92c12a85d49aaf4f12', 'Guest', '', '$2b$10$Tnt6//DqoWF82ryuWSgwx.dN32h/EntPl6TRwz3sUrboDw28eeEc6', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 04:08:17.777707', '2024-04-23 04:08:17.777707', 1, NULL),
('c6d1dbe7716e4c31c5bfd6ca0648a3', 'DHURBA JOSHI', 'supremeitonline@gmail.com', '$2b$10$2BM2uonDzOYt1Y91lN5q2ONKzTEq4hIFOjoqt.cTpm76TE7rGlAia', NULL, NULL, NULL, 0, 0, NULL, '2024-03-27 12:06:31.782559', '2024-03-27 12:06:31.782559', 0, NULL),
('c76e14ac85d5c8361789e26fa7ad26', 'supreme', 'supreme@gmail.com', '$2b$10$SWlyu20a8Tfrw.8PbcRNz.QeckGJd.dGk3PZNsR.DKookdhl9.WCS', NULL, NULL, NULL, 0, 0, NULL, '2024-04-27 02:33:14.577191', '2024-04-27 02:33:14.577191', 0, NULL),
('ca17ce9f5d6f6abb0ed998a489cf8b', 'Guest', '', '$2b$10$88ruiJfOq.RzyGo5urudVeQe/lquejFcJIZWEthl9.6pDrc0GEEd.', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 13:39:13.154446', '2024-04-20 13:39:13.154446', 1, NULL),
('d700693c809408a83d48f45a9f71d7', 'Guest', '', '$2b$10$/24h3uX7gYP9rBQrqTJRoOCief9mg4MgHPG.QoZSdIpV99Fr9JLiG', NULL, NULL, NULL, 0, 0, NULL, '2024-05-07 10:12:13.269386', '2024-05-07 10:12:13.269386', 1, NULL),
('d7eeb7f802f48d6b20418092980b03', 'jasmin espedal', 'jasminespedal@gmail.com', '$2b$10$NhbCdqPuB.mKTw7j6DrphOgfXUZKkpXwqplNN1MTignrjouOJJiS2', NULL, NULL, NULL, 0, 0, NULL, '2024-03-26 16:32:29.825401', '2024-03-26 16:32:29.825401', 0, NULL),
('d951f657f719b98b4e15d6aa567400', 'Guest', '', '$2b$10$FXOMkVE9PTAwv6/2LsHkQeNyRaB7ui2j0gYy8Q6bxwek9loCRLHQW', NULL, NULL, NULL, 0, 0, NULL, '2024-04-27 23:35:42.016305', '2024-04-27 23:35:42.016305', 1, NULL),
('daca5aba94b42d9dff41ff979e50a9', 'Guest', '', '$2b$10$WsntNNk3REY3gbaeGdgbt.vD8p.uy0M0kqbVGI/Rlu2w/BqJDQJSq', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 09:30:45.633451', '2024-04-23 09:30:45.633451', 1, NULL),
('dad13e8488da91159afbe313695bcc', 'Guest', '', '$2b$10$StY2Z/o10iK.sTtuWacDiOKCZ5xgmx4NCFh95SzZJS81dMq/cCLb.', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 07:05:44.906933', '2024-04-26 07:05:44.906933', 1, NULL),
('daed105e43458268dcce4a2da325b3', 'adminnew', 'Admin123@gmail.com', '$2b$10$ZheCqdZKseSrJ.yr8ZIKquYgf0THrMH1UWRnOgn93jRaWkJnpJyJm', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 02:32:44.293188', '2024-04-26 02:32:44.293188', 0, NULL),
('dca3befb1c31b97b27511de0039ee6', 'Guest', '', '$2b$10$c6Wzc2SVWpflXj/Zqu5QnuSzRPep.LjZPA9ACMbkFjpKKPza9dO0q', NULL, NULL, NULL, 0, 0, NULL, '2024-04-20 13:33:52.826924', '2024-04-20 13:33:52.826924', 1, NULL),
('de22b4696842e7c827e06f42e6ab39', 'Guest', '', '$2b$10$bHAtZLs3fd6aV1aaNM4BY.VyzzZpSsVOcFQMHL7pFvceEnL3rgJbe', NULL, NULL, NULL, 0, 0, NULL, '2024-05-12 12:29:13.202995', '2024-05-12 12:29:13.202995', 1, NULL),
('df908bcd0f92d44f861a49015cb590', 'Guest', '', '$2b$10$uAfJGUNSBYyu6/fIku4.2.zsGXayaHhrG1kt2Hj7UXyp4Wx/tSHha', NULL, NULL, NULL, 0, 0, NULL, '2024-04-29 05:11:36.878693', '2024-04-29 05:11:36.878693', 1, NULL),
('e265ac8ecac1f9ea60c516371f0903', 'Guest', '', '$2b$10$Oz7lj.gjG9ntvwu2gzk5ROLhtdw/9ViqqEOSTc5GDhlk.mnGNrot2', NULL, NULL, NULL, 0, 0, NULL, '2024-05-09 10:32:55.754231', '2024-05-09 10:32:55.754231', 1, NULL),
('e463cf45b2df79b4395ddd83dec032', 'Guest', '', '$2b$10$DfcaCQC3ciWTsR6uYYiEduqC6s5eiNuIlAOPWnVzbxzZ.CfcIN8uC', NULL, NULL, NULL, 0, 0, NULL, '2024-05-05 07:31:18.140310', '2024-05-05 07:31:18.140310', 1, NULL),
('e998497b59161556747f999510cc90', 'Guest', '', '$2b$10$HPdcQxW3X8B.nprnSmiVleYyobX.jSdSyXZpdGD.bSbBurEfRwJfK', NULL, NULL, NULL, 0, 0, NULL, '2024-05-04 10:16:54.268600', '2024-05-04 10:16:54.268600', 1, NULL),
('f28782604bd4431ebe325c46849418', 'Guest', '', '$2b$10$gBC.QWswRw5egaabRnHOlO.TrWfNfvJzDT5a3jpP5EcEbKwr86Hsy', NULL, NULL, NULL, 0, 0, NULL, '2024-04-26 06:58:51.602929', '2024-04-26 06:58:51.602929', 1, NULL),
('f6fe7ad65cc2cb48bd4f0bd61d9c85', 'Guest', '', '$2b$10$A/EWEpFTC2u7FK40vxYM2.3pyc/1sbXdG8U0YtjS/KFuR/tIZyPbm', NULL, NULL, NULL, 0, 0, NULL, '2024-05-04 15:05:32.056757', '2024-05-04 15:05:32.056757', 1, NULL),
('f75fc1d6ad462e493dcf224ffd8d6e', 'john', 'doe@gmail.com', '$2b$10$IbE/soQzH8A7tHyh4fyWH.iY6gZBtb5GWg9cIGrGsr8AakehuaIhi', NULL, NULL, NULL, 0, 0, NULL, '2024-03-26 08:27:17.227587', '2024-03-26 08:27:17.227587', 0, NULL),
('fa755b6a688e32f47907469179f2e4', 'Guest', '', '$2b$10$EtAotfQq8lz48Z3u.Iqui.98YRzHQaSINbUpLKGvtsQ9xQn2PLLEy', NULL, NULL, NULL, 0, 0, NULL, '2024-05-08 16:12:37.204244', '2024-05-08 16:12:37.204244', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `_id` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `deliveryLocation` varchar(1000) NOT NULL,
  `addressTitle` varchar(1000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `number` varchar(100) NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `userId` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`_id`, `fullName`, `deliveryLocation`, `addressTitle`, `description`, `number`, `inserted`, `updated`, `userId`, `email`) VALUES
('14ae0a7d8269edf3052e950b2b11b5', 'Rune undheim', 'Pickup', 'home', 'Pickup', '98071815', '2024-05-05 10:57:15.102347', '2024-05-05 10:57:15.122305', '90f214de9f7918a99cdc40a4f16e33', ''),
('18c2bb504a5f902642d9d28d28f8b4', 'Santosh', 'Heiå 1', 'home', 'Randaberg', '46337192', '2024-05-05 14:59:01.761574', '2024-05-05 14:59:01.781923', 'c21c79c7f481d6d41183d30a73160e', ''),
('3d82976d49c6371d2fa7269a160bb8', 'gg', 'fff', 'home', 'ff', '989999999', '2024-05-13 10:07:59.730919', '2024-05-13 10:07:59.740624', '123863f14d0e4087f44502c1a4f0bb', ''),
('44b4ebe10f3e58e4f99223167320a6', 'vikas', 'villaveien 5', 'home', 'hytfsr', '94712904', '2024-05-04 15:03:48.846592', '2024-05-04 15:03:48.868513', '74978b1b0b85f006f290999c69eaec', ''),
('53ee2073657f3af7179fcb117c616b', 'Hikmat', 'Stavanger', 'home', 'Hhhj', '40183484', '2024-05-12 19:14:01.398882', '2024-05-12 19:14:01.419858', '61e64eebe502f504ca873b4e142b6b', ''),
('6183cc274418ad327abe1680b3975d', 'Harald Sund', 'Johan Thorsens gate 33, 4010 Stavanger', 'home', 'Yellow house', '91670004', '2024-05-04 10:31:24.051903', '2024-05-04 10:31:24.080494', '5c1461434bbf8aa4b59daa897da727', ''),
('8ac44b22d5fef48cd98e59a58ef0c1', 'a', 'd', 'home', 'd', '9899999999', '2024-05-15 03:32:00.477630', '2024-05-15 03:32:00.499725', '123863f14d0e4087f44502c1a4f0bb', ''),
('8ead4c9eaee60759ec7d001df4873a', 'ww', '33', 'home', '33', '9812442333', '2024-05-02 02:26:52.764852', '2024-05-02 02:26:52.801701', 'daed105e43458268dcce4a2da325b3', ''),
('acd2bce6e015f764c257975e23d892', 'vikas', 'villaveien 5', 'home', 'hytfsr', '94712904', '2024-05-04 15:03:49.324753', '2024-05-04 15:03:49.342855', '74978b1b0b85f006f290999c69eaec', ''),
('b15f64d5f65cd4ab6a4e52bc2bae92', 'Anil Shrestha', 'Thimi, Bhaktapur', 'home', 'ok ok ok ok', '9876543210', '2024-05-14 11:14:09.665911', '2024-05-14 11:14:17.000000', '9c31d29d7623369ec062e475c67c57', ''),
('bfc4042612cfb0ac5c99d639262e8a', 'Santosh', 'Heiå 1', 'home', 'No', '46337192', '2024-05-10 02:12:19.549909', '2024-05-10 02:12:19.564293', '65961cce63291918a985c8ce9904f1', ''),
('cce6e91295450d5a135aaa16ddd77e', 'Ashok', 'I will come to collect at Curry heaven', 'home', 'I will come to pickup at Curry Heaven my order', '96739701', '2024-05-07 10:16:40.002705', '2024-05-07 10:16:40.019965', 'd700693c809408a83d48f45a9f71d7', ''),
('dff4f98c9bf6a35bf53f811db1dc46', 'gg', 'fff', 'home', 'ff', '989999999', '2024-05-13 10:07:57.835296', '2024-05-13 10:07:57.849807', '123863f14d0e4087f44502c1a4f0bb', ''),
('e84397876859c00b353eac596b3a34', 'Rune undheim', 'Pickup', 'home', 'Pickup', '98071815', '2024-05-05 10:57:15.072894', '2024-05-05 10:57:15.100650', '90f214de9f7918a99cdc40a4f16e33', ''),
('fd57a91cfb8f5d6f97bf82e7a6f9e3', 'Vikas', 'Villaveien 5', 'office', 'At home', '94712904', '2024-05-04 15:07:19.175016', '2024-05-04 15:07:19.194988', 'f6fe7ad65cc2cb48bd4f0bd61d9c85', ''),
('ffba3606f36e55f4778579a494954c', 'Bharat Khatri Chhetri', 'Kathmandu', 'office', 'In front of NightAngle Nursing collage', '9765228814', '2024-05-09 06:10:16.190186', '2024-05-09 06:10:16.212371', '64875400132f5d2ecf008aba81030b', '');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `_id` varchar(255) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` text NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`_id`, `question`, `answer`, `inserted`, `updated`) VALUES
('462cd0bc9b8686ac2afc3af7eff2f9', 'Where is The Curry Heaven located?', '<p>The Curry Heaven is located at Østervågkaien 15, Stavanger, Norway.<br><br></p>', '2024-03-26 01:34:13.024333', '2024-03-26 01:34:13.024333'),
('71dfd0042ef9c589ff6e5de4e0c911', 'Does The Curry Heaven accept online orders?', '<p>Yes, we accept online orders through our website at curryheaven.do. Simply visit our website, browse our menu, and place your order conveniently from your device.<br><br></p>', '2024-03-26 01:34:51.593575', '2024-03-26 01:34:51.593575'),
('770b09abab4b5c5330b00a73b81a21', 'Does The Curry Heaven accommodate special dietary requirements?', '<p>Absolutely! We understand that some customers may have special dietary requirements or allergies. Please inform us when placing your order, and we will do our best to accommodate your needs.<br><br></p>', '2024-03-26 01:37:15.207001', '2024-03-26 01:37:15.207001'),
('7b5b3d180f787e516e8827a84daa7c', 'What are the opening hours of The Curry Heaven?', '<p>The kitchen is open from 11:00 to 22:00 on Monday to Wednesday. Our opening hours may vary, so please check our website or contact us directly for the most up-to-date information.<br><br></p>', '2024-03-26 01:34:35.769662', '2024-03-26 01:34:35.769662'),
('8b20d76099672d56ed76eed260054e', 'Can I make reservations at The Curry Heaven?', '<p>Yes, reservations are recommended, especially during peak hours. You can make a reservation by calling us directly or through our website.<br><br></p>', '2024-03-26 01:35:57.528176', '2024-03-26 01:35:57.528176'),
('a6c7bed768276b679695df961cebab', 'Does The Curry Heaven offer catering services for events?', '<p>Yes, we offer catering services for events of all sizes. Please contact us in advance to discuss your catering needs.<br><br></p>', '2024-03-26 01:36:12.933774', '2024-03-26 01:36:12.933774'),
('c1ae3e369a943b61caf7661ab43e56', 'What type of cuisine does The Curry Heaven offer?', '<p>The Curry Heaven specializes in authentic Indian cuisine, offering a wide range of flavorful dishes.</p>', '2024-03-26 01:33:42.299079', '2024-03-26 01:33:42.299079'),
('d46cfd9e071a1733488d6c113d29b5', 'Is The Curry Heaven suitable for vegetarians and vegans?', '<p>Absolutely! We have a variety of vegetarian and vegan options on our menu to cater to different dietary preferences.<br><br></p>', '2024-03-26 01:35:34.129945', '2024-03-26 01:35:34.129945'),
('dae05117d2613d4d23ed308e5d00d8', 'Does The Curry Heaven offer delivery services?', '<p>Yes, we offer delivery services within our local area. Please check our website or contact us directly for more information.<br><br></p>', '2024-03-26 01:35:13.368779', '2024-03-26 01:35:13.368779'),
('f52ebeda6991bf51af2980f25eed97', 'Are there parking facilities near The Curry Heaven?', '<p>Yes, there are parking facilities available nearby. However, availability may vary depending on the time of day.<br><br></p>', '2024-03-26 01:36:48.955389', '2024-03-26 01:36:48.955389');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `_id` varchar(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `isFeatured` tinyint(4) NOT NULL DEFAULT 0,
  `quantity` int(11) DEFAULT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `categoryId` varchar(100) DEFAULT NULL,
  `subCategoryId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`_id`, `name`, `image`, `price`, `discount`, `slug`, `duration`, `description`, `isFeatured`, `quantity`, `inserted`, `updated`, `categoryId`, `subCategoryId`) VALUES
('047d900b91c01913a31760dc1f2b9d', 'K E E M A N A A N', '', 49, 0, 'k-e-e-m-a-n-a-a-n', '30', '<p>Naan fylt med hjemmelaget ost og krydder. bakt i tandoori ovn.\r\n(Naan filled with homemade cheese and spices. baked in tandoori\r\noven.) Inneholder alleregen: Melk, egg og glutrn fra hvete</p>', 0, 100, '2024-03-25 16:12:40.479934', '2024-03-25 16:12:40.479934', '943ddf6f88104afb81654eb9235538', 'c0e76494ec5de90c23da6e944fe213'),
('04976c3994d4832efa03974081d721', 'C H I C K E N M O M O', '', 59, 0, 'c-h-i-c-k-e-n-m-o-m-o', '30', '<p>3 stk. dampende dumplings fylt med\r\nkryddert deg. Serveres med dipping-saus.\r\nallergien: gluten</p>', 0, 100, '2024-03-25 11:48:04.477385', '2024-03-25 11:48:04.477385', '943ddf6f88104afb81654eb9235538', '9cec91aa339d07e4a38594cee0768c'),
('06d1325f5183afe028e65ba9a3d265', 'D A L M A K H A N I', '', 139, 0, 'd-a-l-m-a-k-h-a-n-i', '30', '<p>Linser kokti fløtesaus med hvitløk,ingefær og krydder. (Lentils\r\ncooked in cream with garlic, ginger and spices).\r\nInneholder alleregan: melk</p>', 0, 100, '2024-03-25 15:02:05.225314', '2024-03-25 15:02:05.225314', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('0cff7a1d4c8d450c52db0001e4b7c7', 'C H A N A M A S A L A', '', 129, 0, 'c-h-a-n-a-m-a-s-a-l-a', '30', '<p>Kikerter stekt i panne med løk, tomater, koriander og krydder.\r\n(Chickpeas cooked with onion, tomatoes, coriander and spices)</p>', 0, 100, '2024-03-25 15:03:57.748306', '2024-03-25 15:03:57.748306', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('0fb25c0f74abc8283b5632b9804b34', 'G A R L I C C H I C K E N T I K K A', '', 249, 0, 'g-a-r-l-i-c-c-h-i-c-k-e-n-t-i-k-k-a', '30', '<p>Kylling marinert i hvitløk, grønn chili, urter, fersk koriander og\r\nforskjellige indiske krydder.(marinated chicken mixked in garlic,\r\ngreen chilli, fresh coriander and various Indian spices.)</p>', 0, 100, '2024-03-25 15:17:06.979959', '2024-03-25 15:32:46.000000', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('0ff2c5a6c743a12328e7d0f4cd56f6', 'L A M B K A R A H I', '', 259, 0, 'l-a-m-b-k-a-r-a-h-i', '30', '<p>Lam tilberedt med løk, ingefær, hvitløk, svart pepper og paprika.\r\n(Lam prepared with onion, ginger, garlic, black pepper.)\r\nInneholder allergen: melk</p>', 0, 100, '2024-03-25 15:14:32.720016', '2024-03-25 15:14:32.720016', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('126e87e3d84827e732890ac40ebec8', 'M A N G O C H I C K E N', '', 239, 0, 'm-a-n-g-o-c-h-i-c-k-e-n-1', '30', '<p>Kokt kylling tilbredt med mango saus, fløte, kokosmelk og indiske\r\nkrydder. (Cooked chicken with mango sauce, cream, coconut milk\r\nand Indian spices) Alleregan: melk og cashewnøtter</p>', 0, 100, '2024-03-25 15:07:59.487860', '2024-03-25 15:07:59.487860', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('15b7415a02e76b154a18cae61f5492', 'L A M V I N D A L O O', '', 259, 0, 'l-a-m-v-i-n-d-a-l-o-o', '30', '<p>Kokt lam i en svært sterk saus laget etter en tradisjonell indisk\r\noppskrift. meget sterkt krydret. (Lamb in a strong sauce made after\r\na traditional indian recipe, extra hot)</p>', 0, 100, '2024-03-25 15:12:13.249887', '2024-03-25 15:12:13.249887', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('212529fcdf650bf6e87ce7ec44282f', 'R E K E R V I N D A L O O', '', 249, 0, 'r-e-k-e-r-v-i-n-d-a-l-o-o', '30', '<p>Kongereker tilberedt med en sterk saus fra et tradisjonelt indisk\r\noppskrift. (Shrimps prepared in a strong sauce from a traditional\r\nindian recipe.) Inneholder alleregen: Skylldyr</p>', 0, 100, '2024-03-25 15:49:04.969751', '2024-03-25 15:49:04.969751', '943ddf6f88104afb81654eb9235538', 'ae64e5397d990fee842814d18da8ff'),
('22df850b93233cb7bef7e436be91ec', 'C H I C K E N T I K K A', '', 249, 0, 'c-h-i-c-k-e-n-t-i-k-k-a-2', '30', '<p>Kylling marinert i en blanding av yoghurt og ulike krydder, grillet i\r\ntandoori ovn. (Chicken marinated in a mix of yoghart and various\r\nspices, grilled in tandoori oven.) Inneholder allergen: milk</p>', 0, 100, '2024-03-25 15:16:32.476787', '2024-03-25 15:32:10.000000', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('2bc886445ae8304f31bdc9eab06867', 'R E K E R K A R A H I', '', 239, 0, 'r-e-k-e-r-k-a-r-a-h-i', '30', '<p>Kongereker tilberedt med hvitløk, urter og krydder. (Shrimps\r\nprepared with garlic, herbs and spices.) Inneholder allergen: Melk og\r\nskylldyr</p>', 0, 100, '2024-03-25 15:48:17.721930', '2024-03-25 15:48:17.721930', '943ddf6f88104afb81654eb9235538', 'ae64e5397d990fee842814d18da8ff'),
('2bfd696451c3311af1ff34b7e7af02', 'P E P P E R C H I K E N', '', 239, 0, 'p-e-p-p-e-r-c-h-i-k-e-n', '40', '<p>Grillet kyllingfilet kokt med fløtesaus, pepper og indiske krydder\r\n(Grilled chicken fillet cooked with cream sauce, black pepper and\r\nindian spices). Inneholder allergen: melk</p>', 0, 100, '2024-03-25 15:11:29.993484', '2024-03-25 15:11:29.993484', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('2df46183a00f0c189f9c9c7fddc551', 'B U T T E R C H I C K E N', '', 239, 0, 'b-u-t-t-e-r-c-h-i-c-k-e-n-1', '30', '<p>Tandoori stekt kylling tilberedt i en mild saus laget av tomater, nøtter\r\nog krydder. (Tandoori roasted chicken prepared in a mild sauce of\r\ntomatoes,nuts and spices) allergen: melk og cashewnøtter</p>', 0, 100, '2024-03-25 15:07:22.475166', '2024-03-25 15:07:22.475166', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('2df7cfbc062fa8927ea562b01fb6c1', 'G A R L I C C H I K E N K E B A B', '', 99, 0, 'g-a-r-l-i-c-c-h-i-k-e-n-k-e-b-a-b', '20', '<p>kylling marinert med hvitløk, grønn chili og krydder. Allergi:\r\nGluten,melk og egg</p>', 0, 100, '2024-03-25 16:21:29.731882', '2024-03-25 16:21:29.731882', '943ddf6f88104afb81654eb9235538', '138b260627fc3069e7d4c44a15dfd8'),
('31f503200483afec539d39e1e08e63', 'C H I C K E N K O R M A', '', 239, 0, 'c-h-i-c-k-e-n-k-o-r-m-a-1', '40', '<p>Kokt lam eller Kyllingfilet tilberedt i en spesiell saus av kremfløte\r\nog malte cashewnøtter. (Chicken fillet in a special sause of cream\r\nand ground cashews) Alleregan: melk og cashewnøtter</p>', 0, 100, '2024-03-25 15:08:37.997205', '2024-03-25 15:08:37.997205', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('3987d8fa7a6bc899c43aed512c1cb2', 'O N I O N P A K O R A', '', 59, 0, 'o-n-i-o-n-p-a-k-o-r-a', '30', '<p>Løkringer dyppet i krydret kikertmelrøre,\r\nfrityrstekt til gyllen perfeksjon. Serveres\r\nmed mintsaus. Glutenfri.</p>', 0, 100, '2024-03-25 11:46:14.494303', '2024-03-25 11:46:14.494303', '943ddf6f88104afb81654eb9235538', '9cec91aa339d07e4a38594cee0768c'),
('3f724f930776c53d2c3fefbe6ff166', 'L A M T I K K A', '', 269, 0, 'l-a-m-t-i-k-k-a', '30', '<p>Indrefilet av lam marinert i utvalgte indiske krydder og grillet i\r\ntandoori ovn. (Tenderolin og lamb marinated in selected Indian\r\nspices and grilled in tandoori oven.)\r\nInneholder allergen: melk</p>', 0, 100, '2024-03-25 15:34:06.981847', '2024-03-25 15:34:06.981847', '943ddf6f88104afb81654eb9235538', 'ab7114e05811916743892145045b24'),
('404c12fb809a4aacef7d1c9d4a9636', 'C H I C K E N K A R A H I', '', 239, 0, 'c-h-i-c-k-e-n-k-a-r-a-h-i', '30', '<p>Kyllingfilet tilberedt med en rik saus, paprika og løk.\r\n(Chicken filet prepared in a rich sauce of spices, capsicum and\r\nonion)</p>', 0, 100, '2024-03-25 15:10:41.740620', '2024-03-25 15:10:41.740620', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('46224bb22d2acccb5e2cb566756b58', 'C H A N A M A S A L A', '', 189, 0, 'c-h-a-n-a-m-a-s-a-l-a-1', '30', '<p>Kikerter stekt i panne med løk, tomater, koriander og krydder.\r\n(Chickpeas cooked with onion, tomatoes, coriander and spices)</p>', 0, 100, '2024-03-25 15:41:23.996486', '2024-03-25 15:41:23.996486', '943ddf6f88104afb81654eb9235538', 'dd20acd0ce9cd5a12c8ec07c9bb0a5'),
('462448f73c44a406ff66bbe4f4f7a6', 'M I X G R I L L', '', 299, 0, 'm-i-x-g-r-i-l-l', '30', '<p>En spennende blanding av våre mest populære tandoori retter,\r\nkylling, lam,sikh kebab og rekere. marinert og grillet i tandoori ovn.\r\n(An exciting mix of our most popular tandoori dishes, chicken, lamb,\r\nsikh kebab and shrimps. Marinated and grilled in the tandoori.)</p>', 0, 100, '2024-03-25 15:35:47.737229', '2024-03-25 15:35:47.737229', '943ddf6f88104afb81654eb9235538', 'ab7114e05811916743892145045b24'),
('483d4831702c270c501d04b4d504ce', 'R A I T A', '', 39, 0, 'r-a-i-t-a', '30', '<p>Yoghurt med hakket agruk, tomat og løk. lett krydret. (Yoghurt with\r\nchopped cucumber, tomato and onion. Lightly seasoned.)</p>', 0, 100, '2024-03-25 15:51:52.972919', '2024-03-25 15:51:52.972919', '943ddf6f88104afb81654eb9235538', 'fb596d35551a1c233bf0ab7688ffe2'),
('49377abbb03a77d8ccb416c13e0676', 'L A M S E E K H K E B A B', '', 119, 0, 'l-a-m-s-e-e-k-h-k-e-b-a-b', '20', '<p>Mykt og saftig lamkjøttdeig blandet med hvitløk og krydder.\r\nAllergi: Gluten, melk og egg</p>', 0, 100, '2024-03-25 16:22:57.247088', '2024-03-25 16:22:57.247088', '943ddf6f88104afb81654eb9235538', '138b260627fc3069e7d4c44a15dfd8'),
('49bdc284378c0ca05b99055fa07eb9', 'L A M B C O R M A', '', 259, 0, 'l-a-m-b-c-o-r-m-a', '30', '<p>Lam tilberedt i en meget spesiell saus av kremfløte og malte\r\ncashewnøtter. (Lam cooked in a very special sauce of cream and\r\nground cashews.)</p>', 0, 100, '2024-03-25 15:15:21.484132', '2024-03-25 15:15:21.484132', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('4d300299655f25a0d62f35829693e4', 'P E S H A W A R I N A A N', '', 59, 0, 'p-e-s-h-a-w-a-r-i-n-a-a-n', '20', '<p>Naan fylt med torket frukt og notter. Bakt i tandoori ovn.\r\n(Naan filled with dry fruit and nuts. Baked in tandoori oven.)\r\nInneholder alleregen: Melk, egg, cashewnøtter og glutrn fra hvete</p>', 0, 100, '2024-03-25 16:10:46.975467', '2024-03-25 16:10:46.975467', '943ddf6f88104afb81654eb9235538', 'c0e76494ec5de90c23da6e944fe213'),
('4d30925aa11f938711ef17b985d3cb', 'L A M S P I N A T', '', 259, 0, 'l-a-m-s-p-i-n-a-t', '30', '<p>Lam tilberedt med spinat, hvitløk, urter og krydder. (lam cooked with\r\nspinach, garlic, herbs and spices.)</p>', 0, 100, '2024-03-25 15:15:56.472101', '2024-03-25 15:15:56.472101', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('556742cb3b1021a60e865b6e780b36', 'P A N E E R T I K K A M A S A L A', '', 199, 0, 'p-a-n-e-e-r-t-i-k-k-a-m-a-s-a-l-a', '30', '<p>Hjemmelaget ost tilbredt med løk, hvitløk, tomatsaus og krydder.\r\n(Homemade cheese prepared with onions sauce, garlic, capsicum\r\nand spices). Inneholder alleregen: Melk)</p>', 0, 100, '2024-03-25 15:43:01.971089', '2024-03-25 15:43:01.971089', '943ddf6f88104afb81654eb9235538', 'dd20acd0ce9cd5a12c8ec07c9bb0a5'),
('56b1c254357e9ab161f72cdcfb3acf', 'S P I N A T P R A W N S', '', 249, 0, 's-p-i-n-a-t-p-r-a-w-n-s', '30', '<p>Kongereker tilberedt med spinat, hvitløk, urter og krydder. (Shrimps\r\nprepared with spinach, garlic, herbs and spices.)\r\nInneholder allergen: melk, skylldyr</p>', 0, 100, '2024-03-25 15:49:38.224775', '2024-03-25 15:49:38.224775', '943ddf6f88104afb81654eb9235538', 'ae64e5397d990fee842814d18da8ff'),
('5cf82a3cfa89fba42a08d5bc4303b6', 'C H I C K E N P A K O R A', '', 85, 0, 'c-h-i-c-k-e-n-p-a-k-o-r-a', '30', '<p>En deilig forrett og bestselgeren. Saftige\r\nbiter av kyllingfilet, marinert i kikertmel.\r\nspisskumen og sesamfro, frityrstekt.\r\nServeres med mintsaus . Glutenfri</p>', 0, 100, '2024-03-25 11:45:29.980884', '2024-03-25 11:45:29.980884', '943ddf6f88104afb81654eb9235538', '9cec91aa339d07e4a38594cee0768c'),
('70654db6cc25d3da96ab31527e6ec6', 'L A M C U R R Y', '', 259, 0, 'l-a-m-c-u-r-r-y', '30', '<p>Lam tilberedt i en tykk saus med frisk løk og urter.\r\n(Lamb prepared with fresh onion and herbs)\r\nInneholder allergen: melk</p>', 0, 100, '2024-03-25 15:14:00.476656', '2024-03-25 15:14:00.476656', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('7077c42b6fa822846c670e024bcbc1', 'K Y L L I N G K E B A B', '', 99, 0, 'k-y-l-l-i-n-g-k-e-b-a-b', '20', '<p>lagt med kylling,salat og nanbrød. Allergi: Gluten,melk og egg</p>', 0, 100, '2024-03-25 16:20:09.225828', '2024-03-25 16:20:09.225828', '943ddf6f88104afb81654eb9235538', '138b260627fc3069e7d4c44a15dfd8'),
('7961f845b364f1e32853472bd85ca5', 'C H E E S / G A R L I C N A A N', '', 49, 0, 'c-h-e-e-s-g-a-r-l-i-c-n-a-a-n', '20', '<p>Naan fylt med hjemmelaget ost, krydder og garlic. bakt i tandoori\r\novn.\r\n(Naan filled with homemade cheese, spices and garlic. baked in\r\ntandoori oven.) Inneholder alleregen: Melk, egg og glutrn fra hvete</p>', 0, 100, '2024-03-25 16:12:04.720961', '2024-03-25 16:12:04.720961', '943ddf6f88104afb81654eb9235538', 'c0e76494ec5de90c23da6e944fe213'),
('7e29afae420aeecb1fea66405500e3', 'C H I C K E N V I N D A L O 0', '', 239, 0, 'c-h-i-c-k-e-n-v-i-n-d-a-l-o-0', '30', '<p>kyllingfilet i en svært sterk karrisaus og indiske krydder. (Cooked\r\nchicken filet in a strong sauce and Indian spices).</p>', 0, 100, '2024-03-25 15:09:17.719812', '2024-03-25 15:09:17.719812', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('8cc77c0bd5349b27df7f2bc307321f', 'P L A I N N A A N', '', 29, 0, 'p-l-a-i-n-n-a-a-n', '20', '<p>Gjæret hvetebrød. (Fermented wheat bread.) Allergen: Melk, Gluten</p>', 0, 100, '2024-03-25 16:09:11.232916', '2024-03-25 16:09:11.232916', '943ddf6f88104afb81654eb9235538', 'c0e76494ec5de90c23da6e944fe213'),
('8e05e289fbeb8d46bdbef71b425dbc', 'P A L A K P A N E E R', '', 199, 0, 'p-a-l-a-k-p-a-n-e-e-r', '30', '<p>Hjemmelaget ost tilberedt med spinat, hvitløk og urter. (Homemade\r\ncheese prepared with spinach garlic and spices.)\r\nInneholder alleregen: Melk</p>', 0, 100, '2024-03-25 15:46:02.224772', '2024-03-25 15:46:02.224772', '943ddf6f88104afb81654eb9235538', 'dd20acd0ce9cd5a12c8ec07c9bb0a5'),
('8e9459723067f334ae22629ea099e6', 'M I N T S A U C E', '', 25, 0, 'm-i-n-t-s-a-u-c-e', '20', '<p>M I N T S A U C E</p>', 0, 100, '2024-03-25 15:54:59.494648', '2024-03-25 15:54:59.494648', '943ddf6f88104afb81654eb9235538', 'fb596d35551a1c233bf0ab7688ffe2'),
('979da1ecf59cd7dfef75a9b0594acd', 'M A L A I T I K K A', '', 249, 0, 'm-a-l-a-i-t-i-k-k-a', '30', '<p>Kylling marinert med fløte, cashewnøtter og tandoori krydder.\r\nGrillet i stein ovn. Serveres med salat og tandoori saus.\r\n(Chicken marinated with cream, cashews and tandoori spices.\r\nGrilled in clay oven. Served with tandoori sauce.)\r\nInneholder allergen: melk og cashewnøtter</p>', 0, 100, '2024-03-25 15:17:34.483706', '2024-03-25 15:33:11.000000', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('9b8cb92a40a6156a92eb25a8957fff', 'G U L A B J A M U N', '', 89, 0, 'g-u-l-a-b-j-a-m-u-n', '20', '<p>Små søte deigballer fritert i sukkersyrup. Serveres med iskrem.\r\nAllergener: melk og hvete</p>', 0, 100, '2024-03-25 16:34:04.999512', '2024-03-25 16:34:04.999512', '943ddf6f88104afb81654eb9235538', '7e3eb9f32ce7f624d2ff7ebd78e03d'),
('a08ded8e8217e0cde9d24cca5c47c1', 'B U T T E R C H I C K E N', '', 149, 0, 'b-u-t-t-e-r-c-h-i-c-k-e-n', '30', '<p>Tandoori stekt kylling tilberedt i en mild saus laget av tomater, nøtter\r\nog krydder. (Tandoori roasted chicken prepared in a mild sauce of\r\ntomatoes,nuts and spices). allergen: melk og cashewnøtter</p>', 0, 100, '2024-03-25 14:59:49.976232', '2024-03-25 14:59:49.976232', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('a38ae053572e16a610edf1caeb1822', 'M I X E D P I C K L E S', '', 25, 0, 'm-i-x-e-d-p-i-c-k-l-e-s', '20', '<p>M I X E D P I C K L E S</p>', 0, 100, '2024-03-25 15:53:39.978271', '2024-03-25 15:53:39.978271', '943ddf6f88104afb81654eb9235538', 'fb596d35551a1c233bf0ab7688ffe2'),
('a9afab7999f80ec5f96f7bc332ce50', 'C H I C K E N T I K K A M A S A L A', '', 149, 0, 'c-h-i-c-k-e-n-t-i-k-k-a-m-a-s-a-l-a', '30', '<p>kyllingfilet tilberedt i en hjemmelaget krydret saus med løk,\r\nkoriander og ingefær. (Chicken fillet cooked in a homemade spicy\r\nsauce with onions, coriander and ginger). Alleregan: melk</p>', 0, 100, '2024-03-25 11:52:47.495003', '2024-03-25 11:52:47.495003', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('b47cf9e304309d6507d3105d462b89', 'M I N T S A U C E', '', 29, 0, 'm-i-n-t-s-a-u-c-e-1', '20', '<p>M I N T S A U C E</p>', 0, 100, '2024-03-25 15:55:28.734848', '2024-03-25 15:55:28.734848', '943ddf6f88104afb81654eb9235538', 'fb596d35551a1c233bf0ab7688ffe2'),
('b65e77f6c4fa0138bd64670a853267', 'M A N G O C H A T N I', '', 25, 0, 'm-a-n-g-o-c-h-a-t-n-i', '20', '<p>M A N G O C H A T N I</p>', 0, 100, '2024-03-25 15:54:15.498631', '2024-03-25 15:54:15.498631', '943ddf6f88104afb81654eb9235538', 'fb596d35551a1c233bf0ab7688ffe2'),
('be0e0a519922a96eddeedcf24cff84', 'B U T T E R C H I C K E N', '', 129, 0, 'b-u-t-t-e-r-c-h-i-c-k-e-n-2', '30', '<p>Tandoori stekt kylling tilberedt i en mild saus laget av tomater,\r\nnøtter og krydder. Serveres med ris og nanbrød. (Tandoori roasted\r\nchicken prepared in a mild sauce of tomatoes, nuts and spices.\r\nserved with rice and nanbred.) allergen: melk og cashewnøtter</p>', 0, 100, '2024-03-25 15:51:02.484353', '2024-03-25 15:51:02.484353', '943ddf6f88104afb81654eb9235538', 'ae64e5397d990fee842814d18da8ff'),
('c2fca865658b98afe731f97f918c5a', 'C H I C K E N C U R R Y', '', 149, 0, 'c-h-i-c-k-e-n-c-u-r-r-y', '30', '<p>Kylling kokt sammen med ingefær og krydder. (Chicken cooked with\r\nginger and spices).</p>', 0, 100, '2024-03-25 11:51:51.977310', '2024-03-25 11:51:51.977310', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('c390b0aa86841f52e366a087adf976', 'L A M / C H I C K E N / R E K E R', '', 229, 0, 'l-a-m-c-h-i-c-k-e-n-r-e-k-e-r', '30', '<p>Bashmati ris kokt sammen med enten lam/kylling eller reker.\r\nPyntet med cashewnøtter og korriander. (Bashmati rice cooked with\r\nlam/chicken or prawns. Granished with cashewnuts and coriander.)</p>', 0, 100, '2024-03-25 15:47:45.236665', '2024-03-25 15:47:45.236665', '943ddf6f88104afb81654eb9235538', 'dd20acd0ce9cd5a12c8ec07c9bb0a5'),
('c9a9cb70efdf580fe417a0d37e721a', ' S A M O S A V E G E T A R', '', 59, 0, 's-a-m-o-s-a-v-e-g-e-t-a-r', '30', '<p>En frityrstekt pai med deiling og\r\nvelsmakende potet,løk og ertefyll.\r\nserveres med myntechutney.\r\nAllergien: hvete</p>', 0, 100, '2024-03-25 11:49:50.737157', '2024-03-25 11:49:50.737157', '943ddf6f88104afb81654eb9235538', '9cec91aa339d07e4a38594cee0768c'),
('cae37c7d38fa395598dc751774366b', 'C H I C K E N C U R R Y', '', 239, 0, 'c-h-i-c-k-e-n-c-u-r-r-y-1', '30', '<p>Kylling kokt sammen med ingefær og krydder. (Chicken cooked with\r\nginger and spices)</p>', 0, 100, '2024-03-25 15:05:36.983684', '2024-03-25 15:05:36.983684', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('cfd119fc0083eec11d88300dc3dd45', 'P A N E E R T I K K A M A S A L', '', 139, 0, 'p-a-n-e-e-r-t-i-k-k-a-m-a-s-a-l', '30', '<p>Hjemmelaget ost tilbredt med løk, hvitløk, tomatsaus og krydder.\r\n(Homemade cheese prepared with onions sauce, garlic, capsicum\r\nand spices). Inneholder alleregen: melk</p>', 0, 100, '2024-03-25 15:02:45.232649', '2024-03-25 15:02:45.232649', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('d3f95813e8fd3b29eca6bb97100cee', 'S E E K H K E B A B L A M', '', 269, 0, 's-e-e-k-h-k-e-b-a-b-l-a-m', '30', '<p>Kebab av røkt lamkjøttdeig med urter og krydder. Serveres med\r\nsaus. (kebab of smoked lam with herbs and spices.)</p>', 0, 100, '2024-03-25 15:36:33.735532', '2024-03-25 15:36:33.735532', '943ddf6f88104afb81654eb9235538', 'ab7114e05811916743892145045b24'),
('dc38c659949610e8e879af89168c01', 'C H I C K E N C U R R Y', 'image-1714533770496-571546593.jpg', 239, 0, 'c-h-i-c-k-e-n-c-u-r-r-y-2', '30', '<p>Kylling kokt sammen med ingefær og krydder. (Chicken cooked with\r\nginger and spices)</p>', 0, 100, '2024-04-30 23:22:50.625654', '2024-04-30 23:22:50.625654', '943ddf6f88104afb81654eb9235538', '55c8bcb7faf9c49fc07ea3644ade36'),
('ddfe844c62914b90caa42f91916572', 'V E G E T A R', '', 219, 0, 'v-e-g-e-t-a-r', '30', '<p>Ris kokt sammen med grønnsaker. Pyntet med cashewnøtter og\r\nkorriander. (rice cooked with vegetables. Granished with\r\ncashewnuts and coriander.)</p>', 0, 100, '2024-03-25 15:46:59.999446', '2024-03-25 15:46:59.999446', '943ddf6f88104afb81654eb9235538', 'dd20acd0ce9cd5a12c8ec07c9bb0a5'),
('df31dfeb23409c3bb5de08559fcdc3', 'C H I C K E N T I K K A M A S A L A', '', 239, 0, 'c-h-i-c-k-e-n-t-i-k-k-a-m-a-s-a-l-a-1', '30', '<p>kyllingfilet tilberedt i en hjemmelaget krydret saus med løk,\r\nkoriander og ingefær. (lamb or chicken fillet cooked in a homemade\r\nspicy sauce with onions, coriander and ginger). Alleregan: melk</p>', 0, 100, '2024-03-25 15:06:45.735449', '2024-03-25 15:06:45.735449', '943ddf6f88104afb81654eb9235538', 'fcf11c22d4b463d40474cec7283644'),
('dfbcd7401403faef2a132901686165', 'G A R L I C N A A N', '', 39, 0, 'g-a-r-l-i-c-n-a-a-n', '20', '<p>Naan fylt med fresk hvitløk og fresk korriander. (Naan with garlic\r\nand fresh coriander.)\r\nInneholder alleregen: Melk, egg og glutrn fra hvete</p>', 0, 100, '2024-03-25 16:10:08.246305', '2024-03-25 16:10:08.246305', '943ddf6f88104afb81654eb9235538', 'c0e76494ec5de90c23da6e944fe213'),
('e5b103d4eb6bb7857624657ba32e54', 'K I N G P R A W N T A W A', '', 95, 0, 'k-i-n-g-p-r-a-w-n-t-a-w-a', '40', '<p>Smakfull smärett av hvitløk og chili\r\nmarinerte kongereker grillet i tandoor\r\novn. Serveres med frisk salat. Glutenfri.</p>', 0, 100, '2024-03-25 11:48:54.499489', '2024-03-25 11:48:54.499489', '943ddf6f88104afb81654eb9235538', '9cec91aa339d07e4a38594cee0768c'),
('efdee887902f90cd2df0bc23fc7dd4', 'C H I C K E N K O R M A', '', 149, 0, 'c-h-i-c-k-e-n-k-o-r-m-a', '30', '<p>Kyllingfilet tilberedt i en spesiell saus av kremfløte og malte\r\ncashewnøtter. (Chicken fillet in a special sause of cream and ground\r\ncashews). Alleregan: melk og cashewnøtter</p>', 0, 100, '2024-03-25 15:01:28.720978', '2024-03-25 15:01:28.720978', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('f595d1d2eea8b5ab72420966508c85', 'C H E E S E N A A N', '', 59, 0, 'c-h-e-e-s-e-n-a-a-n', '20', '<p>Naan fylt med hjemmelaget ost og krydder. bakt i tandoori ovn.\r\n(Naan filled with homemade cheese and spices. baked in tandoori\r\noven.) Inneholder alleregen: Melk, egg og glutrn fra hvete</p>', 0, 100, '2024-03-25 16:11:22.978116', '2024-03-25 16:11:22.978116', '943ddf6f88104afb81654eb9235538', 'c0e76494ec5de90c23da6e944fe213'),
('f72706643908845be3c882df75a9ad', 'T E A / C O F F E E', '', 39, 0, 't-e-a-c-o-f-f-e-e', '30', '<p>T E A / C O F F E E</p>', 0, 100, '2024-03-25 15:53:09.983033', '2024-03-25 15:53:09.983033', '943ddf6f88104afb81654eb9235538', 'fb596d35551a1c233bf0ab7688ffe2'),
('fa33eaec455488d26eef68f89fd45a', 'D A L M A K H A N I', '', 199, 199, 'd-a-l-m-a-k-h-a-n-i-1', '40', '<p>Linser kokti fløtesaus med hvitløk,ingefær og krydder. (Lentils\r\ncooked in cream with garlic, ginger and spices).\r\nInneholder alleregan: Melk</p>', 0, 100, '2024-03-25 15:42:17.478891', '2024-03-25 15:42:17.478891', '943ddf6f88104afb81654eb9235538', 'dd20acd0ce9cd5a12c8ec07c9bb0a5'),
('fb0d31152eaaaa287aa0a6e4f95e51', 'M A N G O C H I C K E N', '', 149, 0, 'm-a-n-g-o-c-h-i-c-k-e-n', '30', '<p>Kokt kylling tilbredt med mango saus, fløte, kokosmelk og indiske\r\nkrydder. (Cooked chicken with mango sauce, cream, coconut milk\r\nand Indian spices). Alleregan: melk og cashewnøtter</p>', 0, 100, '2024-03-25 15:00:42.471394', '2024-03-25 15:00:42.471394', '943ddf6f88104afb81654eb9235538', 'd65a63c2b8fa1a28f6d1729981fd0c'),
('ff83c73151ae5aa5356fc5db0a210a', 'C H I C K E N N U G G E T S', '', 114, 0, 'c-h-i-c-k-e-n-n-u-g-g-e-t-s', '30', '<p>6 stk kylling nuggets med pommes frites. Allergener: Hvite</p>', 0, 100, '2024-03-25 15:50:16.747946', '2024-03-25 15:50:16.747946', '943ddf6f88104afb81654eb9235538', 'ae64e5397d990fee842814d18da8ff');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`_id`, `name`, `email`, `message`, `inserted`, `updated`) VALUES
('43258057724664f66d6e9b3d5c0b08', 'Frank Robert Sagsveen ', 'frank_robert_sagsveen@hotmail.com', 'Hei!\nHar dere bord for 12 personer fredag den 3.mai kl.20.30\n\nMvh\nFrank Robert\n', '2024-04-29 17:36:22.200480', '2024-04-29 17:36:22.200480'),
('b5bd5129a19e4b9e54735b8982dd80', 'Asbjørn', 'asbjorn2121@gmail.com', 'Confirming my phone call: 2 people Saturday 13. April at 2000. \nLooking forward to it. ', '2024-04-10 08:21:00.907849', '2024-04-10 08:21:00.907849');

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `timestamp`, `name`) VALUES
(1, 1692703581634, 'Init1692703581634');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `_id` varchar(255) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `orderMethod` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `deliveryStatus` enum('placed','confirmed','processed','ready','delivered') DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(1000) DEFAULT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `pickUpDate` varchar(255) DEFAULT NULL,
  `pickUpTime` varchar(255) DEFAULT NULL,
  `isPickUp` tinyint(4) NOT NULL DEFAULT 0,
  `pickUpId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`_id`, `orderId`, `orderMethod`, `status`, `userId`, `deliveryStatus`, `remarks`, `phoneNumber`, `inserted`, `updated`, `pickUpDate`, `pickUpTime`, `isPickUp`, `pickUpId`) VALUES
('202405142810', '', '', '', '', 'ready', NULL, NULL, '2024-05-14 13:37:55.300554', '2024-05-14 13:37:55.300554', NULL, NULL, 0, NULL),
('22a35c21d75e6a8526b6d57e81c2b0', '202405142217', 'Offline', 'Pending', '9c31d29d7623369ec062e475c67c57', 'placed', NULL, NULL, '2024-05-14 12:30:56.162852', '2024-05-14 12:30:56.187702', '2024-05-15', '23:15', 1, '7b5ee1e161c10fff1a39a3aeb0fbb1'),
('3643cbbcc14ad7c6c1f7de4b452fdd', '202405143799', 'Offline', 'Pending', '9c31d29d7623369ec062e475c67c57', 'placed', NULL, NULL, '2024-05-14 12:29:08.294471', '2024-05-14 12:29:08.318569', NULL, NULL, 0, '031996054d55da499fbc3a52cee5ca'),
('75bd5a21f26c2381da51751ed7a68c', '202405149182', 'Offline', 'Pending', '9c8a23f4242b83a9f537f91d0765d2', 'placed', NULL, NULL, '2024-05-14 09:12:08.135198', '2024-05-14 09:12:08.141070', '1234', '2222', 1, 'cb26b69581fbcea41e4d2f55504d78'),
('d90a40fb39340b062c6ac7b735b5d8', '202405145096', 'Offline', 'Pending', '2198cfae7d79090b8d4d5145acdf1b', 'placed', NULL, NULL, '2024-05-14 21:18:59.845698', '2024-05-14 21:18:59.871806', '2024-05-15', '19:08', 1, '92861fa91d77c848d3fe9de43c0deb'),
('ded37dfc99a8769ec4c442390871ab', '202405142266', 'Offline', 'Pending', '9c31d29d7623369ec062e475c67c57', 'placed', NULL, NULL, '2024-05-14 12:28:17.903947', '2024-05-14 12:28:17.914119', '2024-05-15', '20:41', 1, '7dbb1ad25d9c6c6ae6fa4e3ce34e46'),
('f09fe77932bd19b23a5ae038566551', '202405142810', 'Offline', 'Pending', '9c31d29d7623369ec062e475c67c57', 'placed', NULL, NULL, '2024-05-14 12:43:53.007386', '2024-05-14 12:43:53.021323', NULL, NULL, 0, '031996054d55da499fbc3a52cee5ca');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `_id` varchar(255) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `sessionId` varchar(1000) DEFAULT NULL,
  `paymentStatus` varchar(255) NOT NULL DEFAULT 'Pending',
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `foodId` varchar(100) DEFAULT NULL,
  `deliveryId` varchar(255) DEFAULT NULL,
  `userId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`_id`, `orderId`, `sessionId`, `paymentStatus`, `date`, `time`, `quantity`, `price`, `paymentMethod`, `inserted`, `updated`, `foodId`, `deliveryId`, `userId`) VALUES
('004dd034032286b631e5e4521910ca', '42a5d3d966288c8207e6b0d711d95f', 'cs_test_a1yIFhCbnkORsdJWIpqugAKdgpJ3ShJWcrHsR4HMcq7UZqhyfLoj80ZUPF', 'Pending', '2024-04-23', '06:55', '1', '99', 'Stripe', '2024-04-27 05:20:06.132006', '2024-04-27 05:20:06.132006', '2df7cfbc062fa8927ea562b01fb6c1', '49a5e96328d31f06feadee085b7059', '3c1dceb9567868ae00d730b5055b98'),
('00f4a7f71574a7f0c327ea96393148', '12770c2f423185c8a72ccf4380b5b1', NULL, 'Pending', '2024-04-22', '08:14', '1', '119', 'cod', '2024-04-20 21:29:51.252780', '2024-04-20 21:29:51.252780', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('027d52b176eeddc0a90e01131bca03', '08aeb015eae9499edac8a8f4003b30', 'cs_test_a14uwC6U2XpjTcSE6BIb0kxYtTzQskXct6vOfN85K1D90t63DjO87O44Rj', 'Pending', '2024-04-22', '07:46', '1', '99', 'Stripe', '2024-04-20 22:00:20.945283', '2024-04-20 22:00:20.945283', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('04b4b60b439b97535573c1ae567dec', '5196460bb13e34c49c495ffef12e69', NULL, 'Pending', '2024-04-27', '10:45', '1', '119', 'cod', '2024-04-27 04:41:20.181227', '2024-04-27 04:41:20.181227', '49377abbb03a77d8ccb416c13e0676', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('054edd11e996e37c7317290dd7c1a2', 'cebe53f0a1d859fb6d5b4409d6c83b', 'cs_test_a1RcC1DvvBZLNVz1XuoBczMJic0zSHN7fKEQS2Ts1qCbGGgF5Do4IeUTqz', 'Pending', '2024-04-22', '08:09', '1', '119', 'Stripe', '2024-04-20 21:24:33.996028', '2024-04-20 21:24:33.996028', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('073117780d7e86a68683f75dd91343', '3fa3bb68d2582cefdd56e315e63992', NULL, 'Pending', '2024-05-10', '20:37', '1', '119', 'cod', '2024-04-11 10:48:06.337660', '2024-04-11 10:48:06.337660', '49377abbb03a77d8ccb416c13e0676', '9c772ae5c9b0f310341aa5a3158ce1', '65e61528fc82a4e907762046fbba8c'),
('077a87098e72cf05397968c1189faa', '0c19b3417abb0ff92e98de191a8f16', NULL, 'Pending', '2024-04-21', '22:45', '1', '119', 'cod', '2024-04-20 12:59:06.022787', '2024-04-20 12:59:06.022787', '49377abbb03a77d8ccb416c13e0676', 'deb3ac8cf17026dceca55e94c7639c', '4bd0ecf413e0e450900fd6e2193038'),
('080207da5d6aac872761bcbbda09bd', '9432921fe8a91c2f082b2e1eddbe74', 'cs_test_a1eZiIxp5urb07jf1pBrTyVBB7DDa64WCKdg919OMqUBeXdqpkmaZSPLMx', 'Pending', '2024-04-24', '19:27', '1', '99', 'Stripe', '2024-04-23 08:44:52.390864', '2024-04-23 08:44:52.390864', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('0892e0553958ffbae1968acb724b91', 'a6d459ec7abbaa2d381f437be2d493', 'cs_test_a1ab03I89aZW54CTfpqbH5mtxmTL2pBCXpv29muhoOvx00xgw7jMlOJ3F2', 'Pending', '2024-04-22', '08:24', '1', '99', 'Stripe', '2024-04-20 22:38:39.119937', '2024-04-20 22:38:39.119937', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('08b928e7e3c0c103fd818bcd9f87e5', 'c57902f326540f2df32ab41a976778', 'cs_test_a1pGTTE1KxXUPX2KlxLZfmVAibqGFMQ9zy4jWqKoDwsJbvxRsFvQcEYj3d', 'Pending', '2024-04-22', '07:50', '1', '99', 'Stripe', '2024-04-20 21:05:53.317618', '2024-04-20 21:05:53.317618', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('08e7bcc2069ea7e1c83743a8d734c9', '3f16c83c36b8200d228b8c228f2ac7', 'cs_test_a1GZCMgDgjtf3RhyxTqOvSGcTINuJbZX91Ev5GVk1GldGSMpGD12hy4Vt1', 'Pending', '2024-04-12', '20:30', '2', '98', 'Stripe', '2024-04-12 14:04:25.516059', '2024-04-12 14:04:25.516059', '7961f845b364f1e32853472bd85ca5', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('09ebcec734524f7920735a48acbda3', '5bd3be719b3c2259b2d7a883eca08f', NULL, 'Paid', '2024-04-10', '08:37', '2', 'NaN', 'cod', '2024-04-08 21:52:18.040076', '2024-04-11 10:26:54.000000', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('0b312833147d4c77c6615e66b27bb2', '7503a9086c3ef175f2a5d5eba4d34d', 'cs_test_a1HF8TOBXem1ZobopA2lDsgzXda9by9NklrabbEjKjuAweR0rI5Pw86HVk', 'Pending', '2024-04-24', '17:24', '1', '99', 'Stripe', '2024-04-23 07:37:21.893171', '2024-04-23 07:37:21.893171', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('0b4219008b0362c90821d122225a2f', '8ba41e2425aba837b6429ce2634fed', 'cs_test_a1DAde8fmwJguzGhd6OpREoBfyoAnojBLKRnzZZjr9dHIBg7NMou6k4O6e', 'Pending', '2024-04-22', '08:27', '1', '99', 'Stripe', '2024-04-20 22:42:21.966544', '2024-04-20 22:42:21.966544', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('0cf5e7c2f76748f213dcc4ab6ead43', '001155fda490a575e3f017ad4b2c86', 'cs_test_a1Ajz62OoBnQX7nKF1vtt2QB7s38GVKR3TMPbLszIzNc02962zDKUL4jHc', 'Pending', '2024-04-22', '08:16', '1', '99', 'Stripe', '2024-04-20 22:30:44.813936', '2024-04-20 22:30:44.813936', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('0d09c7102c7acae270116ddee02967', '9698d06ebd02436561005655de21da', NULL, 'Pending', '2024-03-27', '07:36', '5', '495', 'cod', '2024-03-26 01:51:00.264002', '2024-03-26 01:51:00.264002', '7077c42b6fa822846c670e024bcbc1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('0e2b7343ecb33ffb50d1785594e17c', '65ebdb7aeec93b0f79849a624bff2f', NULL, 'Pending', '2024-04-12', '21:56', '1', 'NaN', 'cod', '2024-04-09 12:09:54.844539', '2024-04-09 12:09:54.844539', '2df7cfbc062fa8927ea562b01fb6c1', 'b28ce2f8a177da371be70334a3bf54', '64875400132f5d2ecf008aba81030b'),
('0edc0c653faef5085605168d35cb5d', '1885a1f530c076805e8252169730a8', 'cs_test_a1e8N4mUrRzQqjjpMsrI5djuIebGmGWFeRzrKMctLhaCDhRPgQi6yZtgTm', 'Pending', '2024-04-24', '18:19', '1', '99', 'Stripe', '2024-04-23 08:34:51.409854', '2024-04-23 08:34:51.409854', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('0ef8828e793abde34eb2643ed3026d', 'b730c1bd16d70ae70c695f095e8794', NULL, 'Pending', '2024-04-27', '10:45', '1', '99', 'cod', '2024-04-27 04:45:43.029514', '2024-04-27 04:45:43.029514', '2df7cfbc062fa8927ea562b01fb6c1', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('0f6141d251c8209831f9adfb415428', 'b5e96db6c138027f32079f6933c649', NULL, 'Pending', '2024-05-13', '21:52', '1', '239', 'cod', '2024-05-13 15:53:39.288410', '2024-05-13 15:53:39.288410', 'dc38c659949610e8e879af89168c01', 'bfc4042612cfb0ac5c99d639262e8a', '65961cce63291918a985c8ce9904f1'),
('115b17d4554cbab704cffdedcdeac2', 'cc631ed96b5b032fdd94d0e2d4a812', 'cs_test_a1Gq2beOLw1JQpqFud6RxMPEoJ0ZIJLr5Bdhn2WB2GEb0dLSwP3dsO6WQt', 'Pending', '2024-04-25', '16:41', '1', '99', 'Stripe', '2024-04-23 06:55:04.230478', '2024-04-23 06:55:04.230478', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('142b83e3d117796e93c3e8d81c479e', 'aad6e50eb1ef4fdd65adc6277584df', NULL, 'Pending', '2024-05-05', '16:26', '1', '49', 'cod', '2024-05-05 10:57:47.852414', '2024-05-05 10:57:47.852414', '7961f845b364f1e32853472bd85ca5', '14ae0a7d8269edf3052e950b2b11b5', '90f214de9f7918a99cdc40a4f16e33'),
('150be59e6b856375f27b1da74d25b9', '3f7a9dad4479d135144f4c410da078', 'cs_test_a1yiHKwWF6PmZinOBdEEfymQWsMbzAGVsabY0w0CNsMsBgSRZ5dfA5BW6X', 'Pending', '2024-04-22', '08:04', '1', '99', 'Stripe', '2024-04-20 22:16:09.620323', '2024-04-20 22:16:09.620323', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('150d9371636e3965dbf97a58a74fd1', 'd944f977880e2ac717513ae3ce869b', 'cs_test_a1q8Bu8FskMUaOAbLlgxnsP6CnsyGMYvLb70LxWB3c27iUjsYHHLaqqZLt', 'Pending', '2024-03-27', '17:55', '1', '119', 'Stripe', '2024-03-27 12:08:02.130312', '2024-03-27 12:08:02.130312', '49377abbb03a77d8ccb416c13e0676', '2bb1accd676983f34703949a709f6e', 'c6d1dbe7716e4c31c5bfd6ca0648a3'),
('1567d6e455ee0ebb11b63e2b95558d', 'fddd094734a7dc7dde4ff788168ac3', 'cs_test_a1qkfrkydZRZqacM07T9jDnhFRzcPkXjMDEpWcK4bTN2H26K5Pj4nIi6rL', 'Pending', '2024-04-22', '08:08', '1', '119', 'Stripe', '2024-04-20 21:23:48.218643', '2024-04-20 21:23:48.218643', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('15cbeb52cb6948e705b3a126c70094', '3f16c83c36b8200d228b8c228f2ac7', 'cs_test_a1GZCMgDgjtf3RhyxTqOvSGcTINuJbZX91Ev5GVk1GldGSMpGD12hy4Vt1', 'Pending', '2024-04-12', '20:30', '1', '39', 'Stripe', '2024-04-12 14:04:25.491792', '2024-04-12 14:04:25.491792', '483d4831702c270c501d04b4d504ce', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('15ef6ffefedd325c7d8793bc71ebaa', 'da836f8f2566b075b13f9a699e9de8', NULL, 'Pending', '2024-04-24', '16:45', '1', '99', 'cod', '2024-04-23 06:59:08.685746', '2024-04-23 06:59:08.685746', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('17d3119a0c5123de40bd89cdc01cca', '2838622adb56dea9b52b10d4c8528f', 'cs_test_a18Dva4NebP7vIV7Jv4jQNqj2ZQYeCWEusayRS6z9l0Aw5iweMKI4GTlOL', 'Pending', '2024-04-25', '17:23', '1', '99', 'Stripe', '2024-04-23 07:36:30.534594', '2024-04-23 07:36:30.534594', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('183cde5c0ff46046ae1ad50bbbcc3b', '1fc6c27bc02984f69ac903fe94fe4d', 'cs_test_a1pSy7870bAO78IKdfZsa428Jq7h1kGsazqP2F6GE8dYp0c8631PhaifgO', 'Pending', '2024-05-10', '17:12', '1', '99', 'Stripe', '2024-05-10 02:13:50.633358', '2024-05-10 02:13:50.633358', '7077c42b6fa822846c670e024bcbc1', 'bfc4042612cfb0ac5c99d639262e8a', '65961cce63291918a985c8ce9904f1'),
('1874f67a8a2dab680fd977e36776fe', 'e5ec8c750c5c70d0b339c8d6b17d0f', 'cs_test_a1FV7WRzLpEds1K2W4KM1RZfVo8SSfQKxldhGt9d0HaMZ9RcwDBq7uy3y5', 'Pending', '2024-04-22', '08:18', '1', '99', 'Stripe', '2024-04-20 22:32:46.131876', '2024-04-20 22:32:46.131876', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('19238659ae8f74c3031d53bcc3128d', '12f7411b0e39cdb0d000c8b76375bc', 'cs_test_a1HMRFEaeQJM9Jky4KrXv8NIT0elRhJdt4LP7jwlBVLeBxe0C8Ki4k17n2', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:30:26.262246', '2024-04-20 22:30:26.262246', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('197260c19a327b26447350868fdc74', '50348373f79b066b8d4e885fbb3353', 'cs_test_a1qoafiQYyDTx2zweZ7FV9hbSrZ3uN5cBzVXdPRrKtbwPUh6i5RHArxKgw', 'Pending', '2024-04-24', '18:06', '1', '99', 'Stripe', '2024-04-23 08:19:56.337830', '2024-04-23 08:19:56.337830', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('1a97f17776d82779991b8929583973', '9df918b4b8893bf4efdc1836a366b5', NULL, 'Pending', '2024-04-22', '07:47', '1', '99', 'cod', '2024-04-20 22:01:09.212606', '2024-04-20 22:01:09.212606', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('1c1662fc2bea8d89b758d65bd41120', '202405145096', NULL, 'Pending', '2024-05-15', '19:08', '3', '297', 'cod', '2024-05-14 21:18:59.748798', '2024-05-14 21:18:59.748798', '2df7cfbc062fa8927ea562b01fb6c1', NULL, '2198cfae7d79090b8d4d5145acdf1b'),
('1e39e4a6814cc4f5118ac4ce565844', '3cade62058429ffe6b7bff8bda07e8', 'cs_test_a1XWc7lOh0Awaa1xRstRKfOHSyC7xzYAevO9YJYRzb4Y3dblNGQPsWDO0c', 'Pending', '2024-04-25', '17:20', '1', '99', 'Stripe', '2024-04-23 07:30:04.201521', '2024-04-23 07:30:04.201521', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('262ffdefee721c9b860fc83ea3405e', '4796eaed8cd556e27369ee9740f2e3', 'cs_test_a1Mrz02vZk251N9h2UgMTdVQ7tFDh9rGxapu9ktKmHsCWQSlYLIT2ZiEa5', 'Pending', '2024-04-22', '06:57', '1', '99', 'Stripe', '2024-04-20 21:11:06.004247', '2024-04-20 21:11:06.004247', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('2639d813768f2be71664ff86a0b65e', '202405145145', NULL, 'Pending', '2024-05-15', '20:41', '2', '198', 'cod', '2024-05-14 12:13:20.841006', '2024-05-14 12:13:20.841006', '2df7cfbc062fa8927ea562b01fb6c1', '14ae0a7d8269edf3052e950b2b11b5', '9c31d29d7623369ec062e475c67c57'),
('271a4d44f7e76bc92b3e7315f6adb2', '46407ccece14516318720d319bd4c3', 'cs_test_a1dAoNhbUOqbUnWD5wVknHYmjYV4n7dy6uh1S41jFEZ1VL6NP64xVcKZI2', 'Pending', '2024-04-25', '18:03', '1', '99', 'Stripe', '2024-04-23 08:16:32.538275', '2024-04-23 08:16:32.538275', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('278172af8c923238e6fd505e9fac9b', '202405143799', NULL, 'Pending', '', '', '2', '198', 'cod', '2024-05-14 12:29:08.268003', '2024-05-14 12:29:08.268003', '2df7cfbc062fa8927ea562b01fb6c1', 'b15f64d5f65cd4ab6a4e52bc2bae92', '9c31d29d7623369ec062e475c67c57'),
('29155c1b7f9cb4d7279ef6eb2aeeb0', 'b7f2208f73cf7c700dca7433348a0f', 'cs_test_a1eqVd9QNg4u18fczVZBR0gYMBYk176pVuMOz7FoN2lSboGO0se5Cvv272', 'Pending', '2024-04-22', '07:23', '1', '99', 'Stripe', '2024-04-20 21:37:30.853489', '2024-04-20 21:37:30.853489', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('2a2c00384d193b2b8e43ebf4ba669e', 'ddb2e5aa2ba677c73437b1693a13ea', 'cs_test_a1SI43O4C1s2WZAR2LyLgis36bgAaLInEn2uKXf4hyXEBPtvCwaJrNnY3U', 'Pending', '2024-04-12', '20:15', '1', '39', 'Stripe', '2024-04-12 13:56:07.570423', '2024-04-12 13:56:07.570423', '483d4831702c270c501d04b4d504ce', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('2c6392cc3571e1d03faaa49e8859f7', '5ecc2f978ee4b7391004be799a060d', 'cs_test_a1BEK3Nk09tTAUgfEB4mXbGEHtF4q4fRCvrGliH8l2hM2K8yqFHNMKjfRd', 'Pending', '2024-04-22', '08:07', '1', '119', 'Stripe', '2024-04-20 22:21:41.790256', '2024-04-20 22:21:41.790256', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('2d53c861dc9eeb08e76538c80a2aed', 'ba5c7abe3c74f8924bbefc789e4524', 'cs_test_a1JMR21gM2GTwHsnH45EzIz62ednOD3ODhDDVxSyf0OLd9YQ09DbIyOMKP', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:48:02.293404', '2024-04-23 08:48:02.293404', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('2d642ad90e0d820e848f33587c335b', '9fb14305943c42775106a1d5a77686', 'cs_test_a1PHx2QEOfeuaaleF07um0XC5QoliFf0UDPCI90HDusnWFPHv0nJMgjFFV', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:46:43.753206', '2024-04-23 08:46:43.753206', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('2e3c3be1079f40d744f394752c4fb2', '5aa2ec95b34a3b56e99f205b5ec763', NULL, 'Pending', '2024-04-11', '08:28', '1', 'NaN', 'cod', '2024-04-09 22:40:36.661189', '2024-04-09 22:40:36.661189', '2df7cfbc062fa8927ea562b01fb6c1', '9b65178bd9c0311105ff54815da81d', '0002dcc574daa3096f701406e063d1'),
('2efe6bb779cd183d9025d679cf90ce', 'd88e9f1da6f969b8e0a135e0b5742c', 'cs_test_a1Lzovej3rjmYMjUN31nQGMv60TuFHiaFo5Id50oCxpiD5jieCMduwXevQ', 'Pending', '2024-04-22', '07:05', '1', '99', 'Stripe', '2024-04-20 21:19:15.328500', '2024-04-20 21:19:15.328500', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('2fc560091c6d50faecd6540fe0ad44', 'e91db1fa4fc7044765da4b560527e2', 'cs_test_a1CZZasAvHI4cZaosRKhr4UBeVrPMvHuyWLkxRtRikU0vpVTSpfGd7qjt9', 'Pending', '2024-04-22', '07:22', '1', '119', 'Stripe', '2024-04-20 21:35:30.148339', '2024-04-20 21:35:30.148339', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('2fea6168c84b841ba8a6c76b77ba63', 'e34af3fd510c9e06c71c4a8614ed38', 'cs_test_a17o23yhy3WicIzjrJBv4WMi8IhUvI9201eGizzJMt78M01PdhL8oBRiQo', 'Pending', '2024-04-25', '17:20', '1', '99', 'Stripe', '2024-04-23 07:32:49.019505', '2024-04-23 07:32:49.019505', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('314f46f6270af14b19c380ac8fa66d', '35d252023c08e583ba1ff72d7102be', 'cs_test_a1EFX9NVB0HGhix5Ina5w1714QBxvl93nsydh3MkmGDdbZ8DxtAbCSPjkm', 'Pending', '2024-04-23', '06:55', '3', '357', 'Stripe', '2024-04-27 05:14:15.771424', '2024-04-27 05:14:15.771424', '49377abbb03a77d8ccb416c13e0676', 'e42f2773c2420255af798b2542853f', '3c1dceb9567868ae00d730b5055b98'),
('33130742f8fabd77232d3500d5ee4c', '42a5d3d966288c8207e6b0d711d95f', 'cs_test_a1yIFhCbnkORsdJWIpqugAKdgpJ3ShJWcrHsR4HMcq7UZqhyfLoj80ZUPF', 'Pending', '2024-04-23', '06:55', '1', '249', 'Stripe', '2024-04-27 05:20:06.073324', '2024-04-27 05:20:06.073324', '56b1c254357e9ab161f72cdcfb3acf', '49a5e96328d31f06feadee085b7059', '3c1dceb9567868ae00d730b5055b98'),
('3395cad694c9be29453a5da5c04cc9', 'a1bed0ea650a541b40e0a75feea9c1', 'cs_test_a1wWFZl7EOzjOG1B9EYkfXZOA9MJbFelqlFcicEolTTu6bMwsC9jnNoFCr', 'Pending', '2024-05-15', '23:05', '2', '238', 'Stripe', '2024-05-14 13:19:16.542383', '2024-05-14 13:19:16.542383', '49377abbb03a77d8ccb416c13e0676', NULL, '9c31d29d7623369ec062e475c67c57'),
('34e4b91e6582dcda8a18a8574f39f6', '5c412f5d210a61c6ba04a495675234', NULL, 'Pending', '2024-03-13', '11:04', '1', '119', 'cod', '2024-03-26 08:30:31.574632', '2024-03-26 08:30:31.574632', '49377abbb03a77d8ccb416c13e0676', 'cd453038007a8882b4fbc868bc5608', 'f75fc1d6ad462e493dcf224ffd8d6e'),
('35785a491c5a40b62cc0fb41500a6d', 'ef8e0e9767e7485529b7a0ff8daeea', 'cs_test_a1B3XXhw5mIOPnTECWnkCf9XarnKgC9kf3swuKQlNCFV9h1NNKlpMwtDpT', 'Pending', '2024-04-09', '21:28', '1', '99', 'Stripe', '2024-04-08 10:44:08.680240', '2024-04-08 10:44:08.680240', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('35bad3d6540e8032ad51452d51e35e', 'a6d0614b17f3ef5ca8949469f2e83b', NULL, 'Pending', '2024-04-23', '16:52', '1', '99', 'cod', '2024-04-23 05:08:47.585681', '2024-04-23 05:08:47.585681', '2df7cfbc062fa8927ea562b01fb6c1', '186a315c7684661fe5b20001ca3ba3', '4280ba1dde8556ba6291b8fc9e4ab6'),
('3697c282abbe98e6999221b1ce6e40', 'c3ca63feb78b61d161db8b4e404381', 'cs_test_a1QeMbwj53cnz5gcUwKfb10WNeyomWB7BhYwZlCA7MT8UNGFLrLMlH5pTd', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:29:22.525303', '2024-04-20 22:29:22.525303', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('37519b32554ad8b71391f8a84867fb', '353afd4a6f510ad2a5d195f9ad1d23', 'cs_test_a1ZVup5zSyNHakqWUhBJEcSDShewFMU9A8zNvdvKeLYBweEOBoc3NdNRRy', 'Pending', '2024-04-22', '08:16', '1', '119', 'Stripe', '2024-04-20 21:31:27.543431', '2024-04-20 21:31:27.543431', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('3936dac7a26fb31060c800f84d6978', 'aad6e50eb1ef4fdd65adc6277584df', NULL, 'Pending', '2024-05-05', '16:26', '1', '239', 'cod', '2024-05-05 10:57:47.989286', '2024-05-05 10:57:47.989286', 'cae37c7d38fa395598dc751774366b', '14ae0a7d8269edf3052e950b2b11b5', '90f214de9f7918a99cdc40a4f16e33'),
('393d1960be601836bcd716c5d248aa', '599a7e7f9ddb1bf4d4ecaf85b372c3', 'cs_test_a1I1b25c2HToM715Ac5XUf6R17CBeqMAXG5Z0oHNEgtq8xhqZ9Q98PpraK', 'Pending', '2024-04-22', '08:08', '1', '119', 'Stripe', '2024-04-20 22:22:09.098974', '2024-04-20 22:22:09.098974', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('3a1f7998a9f13389924d940109a1ad', 'f5982960921fcf2c76e76233505e29', 'cs_test_a11BDwzbAkRUG6o61jbA7qWweMuxo7sOG61a4INK9U4IchIlcK8HTdFlHu', 'Pending', '2024-04-22', '09:39', '1', '99', 'Stripe', '2024-04-20 21:52:30.611238', '2024-04-20 21:52:30.611238', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('3aa22c1c66a03ee6e654779ac8131f', '160441ec1ef901309e8821cc547cd4', 'cs_test_a1ISuxt2PZ0oXAOSlwmoO8Ph4JbKLRNV7jdWw1BjhAlEvSY061vuEyOt8w', 'Pending', '2024-04-27', '10:45', '1', '89', 'Stripe', '2024-04-27 04:41:11.389189', '2024-04-27 04:41:11.389189', '9b8cb92a40a6156a92eb25a8957fff', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('3ae3353274c9c23e0b3cdc8ce71f46', '411b67ab80a67e9319683b6472dc20', NULL, 'Pending', '2024-04-24', '17:17', '1', '99', 'cod', '2024-04-23 07:30:37.703678', '2024-04-23 07:30:37.703678', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('3c2525ea0a10017f5ada9f79e0a58b', 'aad6e50eb1ef4fdd65adc6277584df', NULL, 'Pending', '2024-05-05', '16:26', '1', '59', 'cod', '2024-05-05 10:57:47.950063', '2024-05-05 10:57:47.950063', '04976c3994d4832efa03974081d721', '14ae0a7d8269edf3052e950b2b11b5', '90f214de9f7918a99cdc40a4f16e33'),
('3c3a1234d947d59c4464211520bcd1', '35d252023c08e583ba1ff72d7102be', 'cs_test_a1EFX9NVB0HGhix5Ina5w1714QBxvl93nsydh3MkmGDdbZ8DxtAbCSPjkm', 'Pending', '2024-04-23', '06:55', '1', '99', 'Stripe', '2024-04-27 05:14:15.794842', '2024-04-27 05:14:15.794842', '2df7cfbc062fa8927ea562b01fb6c1', 'e42f2773c2420255af798b2542853f', '3c1dceb9567868ae00d730b5055b98'),
('3f3b80b2e71ff813e2eb7a41d725bd', '0b4c78ac8dd6f1d321e39a73769110', 'cs_test_a1Qr9DwUG2VHZEXo9BHy0TkCr8YPVxnrtPJs3LJuI7MC33kJXT5cG1lGFr', 'Pending', '2024-04-22', '07:54', '1', '99', 'Stripe', '2024-04-20 22:08:39.554555', '2024-04-20 22:08:39.554555', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('3f57df3cf523e98bf0db0faab10ca7', '7a62be618496daa91493ae86c23b49', 'cs_test_a1IWpZWWnVxeSSTCZ4hGPD0Ya8idLMr1pHf5PX2Rh39zkTVzaS9kM6jzyq', 'Pending', '2024-04-24', '17:26', '1', '99', 'Stripe', '2024-04-23 07:40:08.522190', '2024-04-23 07:40:08.522190', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('3f7bb9898deaa3bf899fa6876f38b2', '4670fc8404a9ab7a2f4c78c0be67df', NULL, 'Pending', '2024-04-24', '18:39', '1', '99', 'cod', '2024-04-23 08:52:16.502513', '2024-04-23 08:52:16.502513', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('4135e47ee76c5580d65f5537b9a548', 'b3f951d8b7101ebf45ba70b40f1582', 'cs_test_a1XhPJK8rHtPGqznKPOkjpr2xkUjBSR0eth0s6FmE0ztIXOTLZEUVakO3T', 'Pending', '2024-04-22', '07:49', '1', '99', 'Stripe', '2024-04-20 22:03:36.036048', '2024-04-20 22:03:36.036048', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('41d42992676702a94c11e09bfbec5c', 'a19d8f9996aa36864e2f68c3861c11', 'cs_test_a1asteezTwdJgC2ex6bVpisDfVDFD4VH3VsqOSgb7JQWZFsMvpEB555FXG', 'Pending', '2024-04-22', '07:22', '1', '119', 'Stripe', '2024-04-20 21:35:34.338278', '2024-04-20 21:35:34.338278', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('42efbcc93bc2ec02a6ca12cb19798c', '5c870d5dab75b80ac2e7fea37d422d', 'cs_test_a1Gun2TTmFgtapEhvrFTp6vbsjLkv0pKCMa7wjJ0LBX9gDRsoY9jeogamH', 'Pending', '2024-04-24', '18:08', '1', '99', 'Stripe', '2024-04-23 08:23:00.708938', '2024-04-23 08:23:00.708938', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('4402f7240775395934f1d36af55a3b', '3e50fefb9c9a970eedeffacb5b1569', 'cs_test_a1Erxb4g9Jn9jJRzzwlvBa47rHaLa4GL2UZsjmqIbPWPbLtHToOa2cPBP2', 'Pending', '2024-04-17', '23:35', '1', '99', 'Stripe', '2024-04-08 10:48:23.193685', '2024-04-08 10:48:23.193685', '2df7cfbc062fa8927ea562b01fb6c1', 'b28ce2f8a177da371be70334a3bf54', '64875400132f5d2ecf008aba81030b'),
('45a7902182bac35e87e2b1e167c807', '2cd73f17b2f4df8fd45a4386ed7074', 'cs_test_a1UFhoMDg5BkHkwFNXsLDePefAeGczPKVE5sQ25Z06Uhj2QYBdc3f6CDlu', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:45:10.541146', '2024-04-23 08:45:10.541146', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('47b26569b0295bcf1d9f8a45bac7a3', 'dada4f59471dbde39f96afd0df8845', 'cs_test_a15eS8365Fz9GCsx10bbnYZY4Xl0KD9bELXbKygAIDVa3w8b1dQy3CzjwE', 'Pending', '2024-05-05', '21:03', '1', '99', 'Stripe', '2024-05-05 14:59:55.705858', '2024-05-05 14:59:55.705858', '2df7cfbc062fa8927ea562b01fb6c1', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('4889da5edcfa85ed9186fb2f71b024', '5f4578e01c9de593b00702fcb39832', 'cs_test_a1ePzX0hfzBwrWsEZ6FsIHuaSRwHUqg0h8KlqTvfZStg7vNXTRIfRGs3R3', 'Pending', '2024-04-22', '06:56', '1', '99', 'Stripe', '2024-04-20 21:10:06.893372', '2024-04-20 21:10:06.893372', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('4954ca7af31ad94449da26da808adb', '7de5ecaedbcfbd5715ba9818e09aa0', 'cs_test_a1EeYH6IeSH55GjDMawgsUEhu5llwLf7yeCVKjmJ3V9344dAtMdFFVpADd', 'Pending', '2024-04-24', '18:07', '1', '99', 'Stripe', '2024-04-23 08:17:31.080308', '2024-04-23 08:17:31.080308', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('49e98c67ca1f0b05cfba42cd8387f5', '8147af7a44f1a222128e7b4b728d72', 'cs_test_a1crPPZTrQSAGvKtWaGuGwItE6d2QVM8uUiYl6t0i3idmx2lKJVSpIPGS8', 'Pending', '2024-04-22', '07:23', '1', '99', 'Stripe', '2024-04-20 21:37:25.067579', '2024-04-20 21:37:25.067579', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('4a95b398d3d63c0afb84f1cccc85cb', '5557c6b38fe754311e8068ad880e7e', 'cs_test_a1THZR6Zu6qb31tRSIxc5W02TRHb5D4UEL1ZWFFLrjMPN3E4F8F7fpbP9x', 'Pending', '2024-05-05', '21:48', '1', '99', 'Stripe', '2024-05-05 15:44:35.945501', '2024-05-05 15:44:35.945501', '2df7cfbc062fa8927ea562b01fb6c1', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('4cdde5d14e3f28a1473977a3d6f17b', 'a0d7a9b5d86c917ed9c97d8bd8eaab', 'cs_test_a13rC97UV3I8MN5o8NUP6D2aa95VReNX6R8EhpzxM5Iz9qfaAgYmbtuFbC', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:47:26.830627', '2024-04-23 08:47:26.830627', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('4ee565dfa14bc59fa03ad3ec980624', '890a8e74a8c2b11c48377dead11070', 'cs_test_a18207YiCFrDRndpHDaLSbcKa0NTVk137lZFD5vcG93bZHR7utIYCiAS6E', 'Pending', '2024-05-04', '00:45', '1', '119', 'Stripe', '2024-05-04 15:09:10.620882', '2024-05-04 15:09:10.620882', '49377abbb03a77d8ccb416c13e0676', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('503128cd83638db405bc22408c2714', '6f52d013664eaea557634d624c9ac5', 'cs_test_a1sS2UrWNujKSdjNUNdeiCum67NsoQyR50Cv7BFtaCyIIeYXRSDtXrGet6', 'Pending', '2024-04-24', '17:21', '1', '99', 'Stripe', '2024-04-23 07:35:14.210477', '2024-04-23 07:35:14.210477', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('5075d969a67197460db6b382ef92bf', '69127b7b83ec7fb5461cc22bbcde36', NULL, 'Pending', '2024-04-22', '09:07', '1', '119', 'cod', '2024-04-20 22:22:56.329458', '2024-04-20 22:22:56.329458', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('53580073519edb943a620594e5cdee', '77ac29d999d493c587fe72244b36f8', 'cs_test_a1a43EOYcXXqLaoxjOsHt07foQU6bdf2rx4UT9adJ9uMskVlYTqvdlAdjQ', 'Pending', '2024-04-24', '18:19', '1', '99', 'Stripe', '2024-04-23 08:37:07.615057', '2024-04-23 08:37:07.615057', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('556fe31fe005cb70d932056c2c985c', '303a1f179ccfb656e7705aa7996a0e', 'cs_test_a1QZrGLVFjtds6Psxhm51wwozS4awn3Zs3pjySGZrlr5NhoWS4u7UdZT6e', 'Pending', '2024-05-10', '17:12', '1', '99', 'Stripe', '2024-05-10 02:13:33.292620', '2024-05-10 02:13:33.292620', '7077c42b6fa822846c670e024bcbc1', 'bfc4042612cfb0ac5c99d639262e8a', '65961cce63291918a985c8ce9904f1'),
('580b0c6d5be600b5fb0e6ea6ab1e74', '004c35b2d9c8a74a91a7d447541b96', NULL, 'Pending', '2024-04-24', '19:13', '8', '792', 'cod', '2024-04-23 09:26:51.341329', '2024-04-23 09:26:51.341329', '2df7cfbc062fa8927ea562b01fb6c1', '4d053794248b99788f8a7a384467fa', 'bcbb4d3db4c1d698d2e97680043fd8'),
('58c11d4d342d5bd007e10a6a9ff458', 'd44740781d93873d39f343ea8097ef', 'cs_test_a1qilcx2pMVIuIALKF2L0EZCV4fWPrIGiiugklAgVI1FlU2qKAelIO8kpT', 'Pending', '2024-05-04', '00:45', '1', '119', 'Stripe', '2024-05-04 15:07:44.738455', '2024-05-04 15:07:44.738455', '49377abbb03a77d8ccb416c13e0676', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('58f5ec20cedef33fed0ed4f60046b0', '9508556889c6e202a005a5dd8bb13f', 'cs_test_a1S8H3JxkqK9sTDe5njLt7C4Nb8TkdGoaisGO14aio10B3ifbd53pAKndx', 'Pending', '2024-04-09', '20:30', '1', '99', 'Stripe', '2024-04-08 10:45:05.407101', '2024-04-08 10:45:05.407101', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('5b01d51e8254eebcd2b9846c5e19ee', '202405145096', NULL, 'Pending', '2024-05-15', '19:08', '1', '119', 'cod', '2024-05-14 21:18:59.576558', '2024-05-14 21:18:59.576558', '49377abbb03a77d8ccb416c13e0676', NULL, '2198cfae7d79090b8d4d5145acdf1b'),
('5ccf0c23e4938f7a2a596f893aed67', '890a8e74a8c2b11c48377dead11070', 'cs_test_a18207YiCFrDRndpHDaLSbcKa0NTVk137lZFD5vcG93bZHR7utIYCiAS6E', 'Pending', '2024-05-04', '00:45', '1', '99', 'Stripe', '2024-05-04 15:09:10.579034', '2024-05-04 15:09:10.579034', '2df7cfbc062fa8927ea562b01fb6c1', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('5cda4dc5058028600a3b9bcfdf2754', 'aef6c80e0f3363a4851f4c8c6a3b04', NULL, 'Pending', '2024-04-29', '09:09', '1', '99', 'cod', '2024-04-27 23:24:03.226918', '2024-04-27 23:24:03.226918', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('5fddf5c17b005b85fcb488399f477b', '0c19b3417abb0ff92e98de191a8f16', NULL, 'Pending', '2024-04-21', '22:45', '1', '99', 'cod', '2024-04-20 12:59:06.043357', '2024-04-20 12:59:06.043357', '2df7cfbc062fa8927ea562b01fb6c1', 'deb3ac8cf17026dceca55e94c7639c', '4bd0ecf413e0e450900fd6e2193038'),
('600d3a2e78bae0d2e7cf9b36eb2df8', '3c846b63a7b6446d59d0e277e887e1', 'cs_test_a1nAU60cb9Z1NnX1fvwiOTOdxQig1Jmi5lanr5mg0TJVQWfcAEIAsGanEK', 'Pending', '2024-05-04', '00:45', '1', '119', 'Stripe', '2024-05-04 15:07:52.406990', '2024-05-04 15:07:52.406990', '49377abbb03a77d8ccb416c13e0676', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('605ed57a2943b63af4de07e5a897b1', 'e8274cc40b677f4f2b7053728d8d98', 'cs_test_a1wy7EDS2D02UVEQLFTTBvAoyZSFlWaadLlrNs0cQ3MncVZgtvQpLO1S8B', 'Pending', '2024-04-22', '07:48', '1', '99', 'Stripe', '2024-04-20 21:04:09.160837', '2024-04-20 21:04:09.160837', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('650b148869c81f03407ff53d406c48', '04e0c115541cc3c2b0277e50455020', 'cs_test_a13sVJICmkqio4U1ouCHHI3KMMWLUcNvRAoBOP3zplnV8zQW4COYEOxJ5V', 'Pending', '2024-04-24', '17:58', '1', '99', 'Stripe', '2024-04-23 08:11:27.123589', '2024-04-23 08:11:27.123589', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('65d3f84d73d1efdff735dfa612fc8c', '3f16c83c36b8200d228b8c228f2ac7', 'cs_test_a1GZCMgDgjtf3RhyxTqOvSGcTINuJbZX91Ev5GVk1GldGSMpGD12hy4Vt1', 'Pending', '2024-04-12', '20:30', '1', '59', 'Stripe', '2024-04-12 14:04:25.428639', '2024-04-12 14:04:25.428639', '04976c3994d4832efa03974081d721', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('65e2292679a548aa62849deee31c4f', '249fe38d99a434c6cfb3da3aaade96', 'cs_test_a15yFMgBTWaaoGDYyIWIu4KKAH41PXuuEXokEH3rdGMxC6uFZbUqb8rr1l', 'Pending', '2024-04-22', '06:58', '1', '99', 'Stripe', '2024-04-20 21:12:58.758850', '2024-04-20 21:12:58.758850', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('663013b25aa4cdfc952cccde6cc78e', '1c7e776473b0f98b8743bbc9938080', 'cs_test_a1rKFPyjsUak75w81HP3aBQ9QVEMOriSfwa6oCwpudJEIBs7VQVeZUP4Ix', 'Pending', '2024-04-02', '20:51', '2', '198', 'Stripe', '2024-04-08 11:05:39.887085', '2024-04-08 11:05:39.887085', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('6636bf77516209e00d00f2552b2979', '485f69cc80870761d7d99702ded3a7', 'cs_test_a1yD9Y1lnfraFVca2puJNKEjDbKOW1oanI4VbfGzv9l9RaBQSfYX4ZwurY', 'Pending', '2024-04-22', '07:40', '1', '99', 'Stripe', '2024-04-20 21:54:26.558896', '2024-04-20 21:54:26.558896', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('69487bc659552c28372ab692f541b0', 'c080e7d7c675b174be3472c2b4aa3c', 'cs_test_a1ZoddIv8GDVBoyMHo36usi03Q6sfk7FkH5bFEZQrWos9BVwQbW31Ld7AR', 'Pending', '2024-04-22', '07:13', '1', '119', 'Stripe', '2024-04-20 21:27:39.928904', '2024-04-20 21:27:39.928904', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('69a7151aba8387289eeea8cd2bd138', '37d94a6951497a64b4168fc88e3880', 'cs_test_a1EXmDMy5cayIA4OCbtkkEHZ08jth2liNgNjsPZqtrXU2KqgujjR0eo4iv', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:27:36.872269', '2024-04-20 22:27:36.872269', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('72f13cf5ebff32c7671fbf0725e103', '7ea2a6aa44f86e41632ca6c2be9000', 'cs_test_a1GRADznS03OUavnu6d6Ivn5lbgJikm8fJputLCLx31m0Ksz3TDpfqwjKj', 'Pending', '2024-04-22', '07:48', '1', '99', 'Stripe', '2024-04-20 22:02:32.889173', '2024-04-20 22:02:32.889173', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('73005e0a87979ee1b306e7ce494851', 'ba6fce3516c9441d7554687bf75017', 'cs_test_a1dt2tzv0kTlWkBMRse9h72bubl7aVrf8ycM2k0mOPUJmuFEbcVrtUIM6E', 'Pending', '2024-05-05', '21:03', '1', '99', 'Stripe', '2024-05-05 15:00:10.184756', '2024-05-05 15:00:10.184756', '2df7cfbc062fa8927ea562b01fb6c1', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('74027b8f2747899c3e197b6703299a', 'e873b772fdbdd25e3223adfdf19697', 'cs_test_a1thvSru6dqPz7kqCESp2wYbgAyau3SajbEfU1Gt9h3n0TVDgSOdv7GGWr', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:27:31.175510', '2024-04-20 22:27:31.175510', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('752df351ce6887290512da85c8b61c', 'f7ee66b7b5b06b5680882c2899d695', 'cs_test_a12O8mpjS7474WQaxgonhhfTLoBJlbyROlaTwyP1YuDcOzTCXh6wrayXsX', 'Pending', '2024-04-22', '06:56', '1', '99', 'Stripe', '2024-04-20 21:09:15.224578', '2024-04-20 21:09:15.224578', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('756a237f1e55434a1004840772f423', '13f5d02f055ee4e4237097fc87cf39', 'cs_test_a1OkUmC99JD4VYCnh9HMbQidn6B0JHhitPNINPHU6Iir08GpZu54gldcFH', 'Pending', '2024-04-22', '06:47', '1', '99', 'Stripe', '2024-04-20 21:01:52.439245', '2024-04-20 21:01:52.439245', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('75be5ecdebeaa236851ce8ef04eaf5', 'b85c00339d10914a5f9ea49d70c544', NULL, 'Pending', '2024-04-22', '08:04', '1', '99', 'cod', '2024-04-20 22:17:03.157579', '2024-04-20 22:17:03.157579', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('769c85bf36a5b044a624c092f47f1f', '97f64b13a356c77ef947b389b086f0', 'cs_test_a1aPb8DB7FNXHZO7xqOkZAwDykd3Mj34f4cQn85ndZKdD7gG2HL7sDPQaS', 'Pending', '2024-04-22', '07:54', '1', '99', 'Stripe', '2024-04-20 22:12:53.918120', '2024-04-20 22:12:53.918120', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('774e691dd0a39f4f090953db18454b', '2c834a9822ce8cbc707868742d3155', 'cs_test_a1cUcNaMePwS4SchOGgWOLa1P28Mbaw1QyfELDmXwwC1XsVjfvPm3I0wO4', 'Pending', '2024-04-23', '07:27', '1', '99', 'Stripe', '2024-04-20 21:41:20.344857', '2024-04-20 21:41:20.344857', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('78d9e06a95bd2b3f55a552dbe0dbb1', '42a5d3d966288c8207e6b0d711d95f', 'cs_test_a1yIFhCbnkORsdJWIpqugAKdgpJ3ShJWcrHsR4HMcq7UZqhyfLoj80ZUPF', 'Pending', '2024-04-23', '06:55', '3', '357', 'Stripe', '2024-04-27 05:20:06.107098', '2024-04-27 05:20:06.107098', '49377abbb03a77d8ccb416c13e0676', '49a5e96328d31f06feadee085b7059', '3c1dceb9567868ae00d730b5055b98'),
('79cb0ce0ccf8fc752b166c972c563c', 'aad6e50eb1ef4fdd65adc6277584df', NULL, 'Pending', '2024-05-05', '16:26', '1', '239', 'cod', '2024-05-05 10:57:48.035379', '2024-05-05 10:57:48.035379', '2df46183a00f0c189f9c9c7fddc551', '14ae0a7d8269edf3052e950b2b11b5', '90f214de9f7918a99cdc40a4f16e33'),
('7b1ff8b5f4c30e0c0d6cc9b8cb078c', '913c552ecabc15b99268b652733e15', 'cs_test_a1IcqZQynFZJixLkcq7PWfQQHy5EMVb2rIWW4FNyklbvjMCN5Zo0X7mfzs', 'Pending', '2024-04-22', '07:28', '1', '99', 'Stripe', '2024-04-20 21:42:15.807438', '2024-04-20 21:42:15.807438', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('7b8a551e8844eae5441b7c4134b9f5', 'a90c682dd7e687aabcfdfd5eab2f2e', 'cs_test_a1RtVIbYchYW6I1tk3ZgSYXA2vi7BzqBB2KKFsNJynPoYgvyWvR1qknRik', 'Pending', '2024-04-21', '13:25', '1', '99', 'Stripe', '2024-04-20 13:40:27.086317', '2024-04-20 13:40:27.086317', '2df7cfbc062fa8927ea562b01fb6c1', '50d872cdfa88ae7bebd8663c966add', 'ca17ce9f5d6f6abb0ed998a489cf8b'),
('7bbc925b548b5111c1ead4a2f14252', '25c829f0e3578fdd84e560f27a3883', 'cs_test_a1HtTB6f2VDvHWJm7pu4XcPxvn5tJ3hMTFQq42xRYpmGVEOfth0sPAP1cm', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:47:41.938444', '2024-04-23 08:47:41.938444', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('804df424d1e8b33da2d4e019c0bba6', 'd46ac62312e6d0b60f349dd30b9379', 'cs_test_a16zP9hTqIK6qFFwGMsOgffjNtgPocsF4b3wvmhCbzjZdsf5bf0cerK98g', 'Pending', '2024-04-22', '08:18', '1', '99', 'Stripe', '2024-04-20 22:34:16.728956', '2024-04-20 22:34:16.728956', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('80d52b68aca896ea7ad3e578cbd07a', '6319437759156e9312a65f646dd2f2', 'cs_test_a1waBLZXqAaUXMgeSWQHWMWUCsvmgd9MsPnODwOvAPSP40QfKjcW9l80Hc', 'Pending', '2024-04-22', '07:40', '1', '99', 'Stripe', '2024-04-20 21:57:21.617241', '2024-04-20 21:57:21.617241', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('81c018a5a016f65b48730654676ad7', 'd9c8aee17688d5909b0c9e02d0d54a', 'cs_test_a1LvoCP2DnHVzLL8MdHCI5EHjG7yBZ9tTcdrnOVeOcvb4g5LdGshs7o4up', 'Pending', '2024-05-04', '21:04', '1', '119', 'Stripe', '2024-05-04 15:04:21.162755', '2024-05-04 15:04:21.162755', '49377abbb03a77d8ccb416c13e0676', '44b4ebe10f3e58e4f99223167320a6', '74978b1b0b85f006f290999c69eaec'),
('81de34c4596212865e667557983ed2', 'acbd596460fc7a265eb4c2ff76d80f', NULL, 'Pending', '2024-04-21', '23:41', '1', '99', 'cod', '2024-04-20 12:56:22.150932', '2024-04-20 12:56:22.150932', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('8215c44ceb205c729c042296189dcc', '91ca7a7058f41c937f09c6b71b76a4', 'cs_test_a1UERrBoFs4JQ67tEHzduitr4nFvz7ZshWRm7TW2MfziD3vtOFoflNqJ6l', 'Pending', '2024-04-22', '08:16', '1', '99', 'Stripe', '2024-04-20 22:32:16.044134', '2024-04-20 22:32:16.044134', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('826040e538238a359b693741a49623', 'd9c8aee17688d5909b0c9e02d0d54a', 'cs_test_a1LvoCP2DnHVzLL8MdHCI5EHjG7yBZ9tTcdrnOVeOcvb4g5LdGshs7o4up', 'Pending', '2024-05-04', '21:04', '1', '99', 'Stripe', '2024-05-04 15:04:21.186329', '2024-05-04 15:04:21.186329', '2df7cfbc062fa8927ea562b01fb6c1', '44b4ebe10f3e58e4f99223167320a6', '74978b1b0b85f006f290999c69eaec'),
('843035bde1a68dfd668994838b4de2', 'ddb2e5aa2ba677c73437b1693a13ea', 'cs_test_a1SI43O4C1s2WZAR2LyLgis36bgAaLInEn2uKXf4hyXEBPtvCwaJrNnY3U', 'Pending', '2024-04-12', '20:15', '1', '299', 'Stripe', '2024-04-12 13:56:07.600609', '2024-04-12 13:56:07.600609', '462448f73c44a406ff66bbe4f4f7a6', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('8529c5614f799f336a56968727cb00', 'f6f9a37fed97e63584c103073c2fcf', 'cs_test_a1mPBk2VB3OXohcrFG8Z15OJjzX9ZwG6PzfOfcYvfljXveHxz7gnIWIf2K', 'Pending', '2024-04-22', '09:24', '1', '99', 'Stripe', '2024-04-20 22:40:00.141214', '2024-04-20 22:40:00.141214', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('853acc5b19cc77576829a5624bdcb2', 'cf5070186c6ca474698de99d53ebb6', 'cs_test_a1sPhyLUwwRy04bWs9fq4qmwiGZ0wRYwwaD4nejIZj1T109anfrwuHBaGi', 'Pending', '2024-05-03', '22:37', '1', '129', 'Stripe', '2024-04-11 07:52:31.688713', '2024-04-11 07:52:31.688713', '0cff7a1d4c8d450c52db0001e4b7c7', 'b28ce2f8a177da371be70334a3bf54', '64875400132f5d2ecf008aba81030b'),
('8577ec38c123785058c5f79b8f7ea5', '8e0550b00d8544f04df64ffd9a52a8', NULL, 'Pending', '2024-04-22', '10:06', '1', '99', 'cod', '2024-04-20 21:21:06.519978', '2024-04-20 21:21:06.519978', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('85f098f0cfc0939a8c55058534a941', '138dcec442684e81ab0ef3dbe4caeb', 'cs_test_a1QkJRKRaMBEtxawUG2M3DIyYH3NcKntJlPb6R6FZpaJxqENh9XDzpjLJy', 'Pending', '2024-05-02', '16:45', '1', '99', 'Stripe', '2024-04-23 06:55:52.658215', '2024-04-23 06:55:52.658215', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('8685b7be84486634ec49c63567e5bd', '277080dbbeb4a0a85bf4b410ef5154', 'cs_test_a1BIzvM0wBAXjCwblEG3SmnRl2UkCbYYLJRdVRfhzjfjMQh3sxp59C313i', 'Pending', '2024-04-22', '07:02', '1', '99', 'Stripe', '2024-04-20 21:16:21.551866', '2024-04-20 21:16:21.551866', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('894832d659563752397eeb84c55d57', '29645df5e8e5a8f215e002aad1df7b', 'cs_test_a12h37DGBjDhqZmu5ULPQsrqIa1QeXCpi2heq0KkNj0wrRpMAsVujuaBvX', 'Pending', '2024-05-10', '17:12', '1', '99', 'Stripe', '2024-05-10 02:12:59.517214', '2024-05-10 02:12:59.517214', '7077c42b6fa822846c670e024bcbc1', 'bfc4042612cfb0ac5c99d639262e8a', '65961cce63291918a985c8ce9904f1'),
('8a044765c3e8e99db6fa81d0c6c5c7', 'd855b0895e0a3f6d5debb34f033cf5', 'cs_test_a1F6FhZQj9fSMD3HEG24skS0hrOtFqQnt8wRpgVXyCBuQYAKnRDF5D3BdW', 'Pending', '2024-04-22', '08:05', '1', '119', 'Stripe', '2024-04-20 22:19:55.889196', '2024-04-20 22:19:55.889196', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('8c8fe60ca7bcdddfe4dbb5a02fbe0a', '58c019f704800e998006e2071b0aeb', 'cs_test_a1po68SQDXiXHKPgp1jtbEEXcFkw2T9sLJje0fq6edQ3PiiunoZ6gzcBJo', 'Pending', '2024-04-22', '08:13', '1', '119', 'Stripe', '2024-04-20 21:29:03.062158', '2024-04-20 21:29:03.062158', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('8d09003e13e1cad86fca29cb1bc6d3', 'ddb2e5aa2ba677c73437b1693a13ea', 'cs_test_a1SI43O4C1s2WZAR2LyLgis36bgAaLInEn2uKXf4hyXEBPtvCwaJrNnY3U', 'Pending', '2024-04-12', '20:15', '1', '29', 'Stripe', '2024-04-12 13:56:07.553473', '2024-04-12 13:56:07.553473', 'b47cf9e304309d6507d3105d462b89', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('8e02b6d06a6e6f6cfb781880191eec', 'e7051f51eec83e4207d5d7187672f9', 'cs_test_a12uUDNzrNUu3i1ZbfNidCibnZUoROa5fSNwpoOPTobr7oQuJZRSWBUsPe', 'Pending', '2024-04-23', '09:28', '1', '99', 'Stripe', '2024-04-20 21:43:46.273175', '2024-04-20 21:43:46.273175', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('90009a0b5881ebdd1d015512fac1b8', '7bd91620022f800fb437ce78759572', 'cs_test_a1fwVOTW7Zoe8Uc8tdX4FBCQysHFvFS3X9VaF5mkyAfN7ivS9PrBuwalI7', 'Pending', '2024-04-22', '08:08', '1', '119', 'Stripe', '2024-04-20 21:23:54.997698', '2024-04-20 21:23:54.997698', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('939064b5673e87281a13a37d7b19c9', '52cd09e5303dc6aa1a3b5b179ab735', 'cs_test_a1SAvtPozzUci73WNNhKe2hcVMrc5cpVmhwYek3Mr71LIR4MvfzFSXbGu4', 'Pending', '2024-05-05', '21:48', '1', '99', 'Stripe', '2024-05-05 15:45:54.742044', '2024-05-05 15:45:54.742044', '7077c42b6fa822846c670e024bcbc1', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('94cb46b0d30bc42815052716e90ff6', '5196460bb13e34c49c495ffef12e69', NULL, 'Pending', '2024-04-27', '10:45', '1', '89', 'cod', '2024-04-27 04:41:20.088281', '2024-04-27 04:41:20.088281', '9b8cb92a40a6156a92eb25a8957fff', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('961d769105ba58c843c6d552d31cc1', 'd397e5d6e28a677b54070bd23bfc1f', NULL, 'Pending', '2024-05-04', '00:45', '1', '99', 'cod', '2024-05-04 15:09:12.902628', '2024-05-04 15:09:12.902628', '2df7cfbc062fa8927ea562b01fb6c1', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('972034afd441014ce10445eaa5d1e4', '35d252023c08e583ba1ff72d7102be', 'cs_test_a1EFX9NVB0HGhix5Ina5w1714QBxvl93nsydh3MkmGDdbZ8DxtAbCSPjkm', 'Pending', '2024-04-23', '06:55', '1', '249', 'Stripe', '2024-04-27 05:14:15.744670', '2024-04-27 05:14:15.744670', '56b1c254357e9ab161f72cdcfb3acf', 'e42f2773c2420255af798b2542853f', '3c1dceb9567868ae00d730b5055b98'),
('97db73ae7c2145f83d0bdde2ea576a', 'bb5a9227818f058fea7decbbe1b93b', 'cs_test_a1zMwZQOpOvzZxsA34cN1btRdY7YDrLcNUgSjUNX7yHDjuRJiO68xoNyzY', 'Pending', '2024-04-22', '07:49', '1', '99', 'Stripe', '2024-04-20 22:03:33.106730', '2024-04-20 22:03:33.106730', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('9efcd693e86d4049da72fdf28ef5fe', 'b444e4e11ec0bdf9cdc58a96bd2f83', NULL, 'Paid', '2024-04-18', '23:29', '1', '99', 'cod', '2024-04-11 01:40:08.971559', '2024-04-11 12:58:08.000000', '2df7cfbc062fa8927ea562b01fb6c1', 'b28ce2f8a177da371be70334a3bf54', '64875400132f5d2ecf008aba81030b'),
('a0b232a34290d68bb0e1edbf7a8696', '160441ec1ef901309e8821cc547cd4', 'cs_test_a1ISuxt2PZ0oXAOSlwmoO8Ph4JbKLRNV7jdWw1BjhAlEvSY061vuEyOt8w', 'Pending', '2024-04-27', '10:45', '1', '119', 'Stripe', '2024-04-27 04:41:11.474964', '2024-04-27 04:41:11.474964', '49377abbb03a77d8ccb416c13e0676', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('a0f7ec01f70c725464e52c80d27dee', '29826a503598a26bf46d1a5e10b0af', 'cs_test_a1JtRvTLi32EOeLgRyTLH2s8PdW5lvts2L2JH5oFoIV0sLWapNqbq0kAIc', 'Pending', '2024-04-22', '07:35', '1', '99', 'Stripe', '2024-04-20 21:47:29.832582', '2024-04-20 21:47:29.832582', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('a108bcb5a35cc97f1978ee96da8196', '3fa3bb68d2582cefdd56e315e63992', NULL, 'Pending', '2024-05-10', '20:37', '1', '99', 'cod', '2024-04-11 10:48:06.361782', '2024-04-11 10:48:06.361782', '7077c42b6fa822846c670e024bcbc1', '9c772ae5c9b0f310341aa5a3158ce1', '65e61528fc82a4e907762046fbba8c'),
('a119b4ad29c98259f9a0f8abc57c7b', 'd397e5d6e28a677b54070bd23bfc1f', NULL, 'Pending', '2024-05-04', '00:45', '1', '119', 'cod', '2024-05-04 15:09:12.949776', '2024-05-04 15:09:12.949776', '49377abbb03a77d8ccb416c13e0676', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('a16e3aca835a966bee373b8b434b49', '5c412f5d210a61c6ba04a495675234', NULL, 'Pending', '2024-03-13', '11:04', '1', '99', 'cod', '2024-03-26 08:30:31.583473', '2024-03-26 08:30:31.583473', '2df7cfbc062fa8927ea562b01fb6c1', 'cd453038007a8882b4fbc868bc5608', 'f75fc1d6ad462e493dcf224ffd8d6e'),
('a2d3b052c42e5641b693ac5d05c021', '5c412f5d210a61c6ba04a495675234', NULL, 'Pending', '2024-03-13', '11:04', '3', '267', 'cod', '2024-03-26 08:30:31.579776', '2024-03-26 08:30:31.579776', '9b8cb92a40a6156a92eb25a8957fff', 'cd453038007a8882b4fbc868bc5608', 'f75fc1d6ad462e493dcf224ffd8d6e'),
('a48ffd41f249b4a9115dfcc1220229', 'ea8a8b9a1875c37673879f8aa681c9', 'cs_test_a1UTEDDbXwC0M5smMwqRaiwgp2Q7K2xtTIBirP9HvijtW5Qkc8WkL8AKrK', 'Pending', '2024-04-22', '09:39', '1', '99', 'Stripe', '2024-04-20 21:52:54.041798', '2024-04-20 21:52:54.041798', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('a49f637e007e29a4bb21e5c1157311', 'b5e96db6c138027f32079f6933c649', NULL, 'Pending', '2024-05-13', '21:52', '1', '99', 'cod', '2024-05-13 15:53:39.194295', '2024-05-13 15:53:39.194295', '7077c42b6fa822846c670e024bcbc1', 'bfc4042612cfb0ac5c99d639262e8a', '65961cce63291918a985c8ce9904f1'),
('a4f0bc02ff0749598ec1762e637225', 'ebd1756b90460782d9fea779734fda', 'cs_test_a17gUVoZ5oYyvcL62gOP4MmLwB66jM8w7rF0KCrmNeDnr4E2LBlO415RDP', 'Pending', '2024-04-22', '07:40', '1', '99', 'Stripe', '2024-04-20 21:57:09.735966', '2024-04-20 21:57:09.735966', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('a55c289d96d1872806602af6d7b88d', 'c6e7cadf1bc0da70f96051968e9ad4', 'cs_test_a1bkRzmBGQIwJSvc5jaDo03DJfxrCeiKf24lIVzi0xUdP5QsIZMFgotN77', 'Pending', '2024-04-25', '18:25', '1', '99', 'Stripe', '2024-04-23 08:39:34.798681', '2024-04-23 08:39:34.798681', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('a570dfac4c937133f5a82209ee0cb9', 'b730c1bd16d70ae70c695f095e8794', NULL, 'Pending', '2024-04-27', '10:45', '1', '99', 'cod', '2024-04-27 04:45:43.048214', '2024-04-27 04:45:43.048214', '7077c42b6fa822846c670e024bcbc1', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('a5c9293c04108bf2c6e76c80a12634', 'd944f977880e2ac717513ae3ce869b', 'cs_test_a1q8Bu8FskMUaOAbLlgxnsP6CnsyGMYvLb70LxWB3c27iUjsYHHLaqqZLt', 'Pending', '2024-03-27', '17:55', '1', '99', 'Stripe', '2024-03-27 12:08:02.127742', '2024-03-27 12:08:02.127742', '7077c42b6fa822846c670e024bcbc1', '2bb1accd676983f34703949a709f6e', 'c6d1dbe7716e4c31c5bfd6ca0648a3'),
('a6f216f01a482a6b67ddc3c1071fd2', 'aec6290bd2b8248de4b05c15714685', 'cs_test_a17ocNjP7CeJ7HOp8sg5pz2L0G1wAghBHBEsjGSExRHjI3UgwseJohQexi', 'Pending', '2024-04-24', '19:27', '1', '99', 'Stripe', '2024-04-23 08:42:53.813891', '2024-04-23 08:42:53.813891', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4');
INSERT INTO `order_items` (`_id`, `orderId`, `sessionId`, `paymentStatus`, `date`, `time`, `quantity`, `price`, `paymentMethod`, `inserted`, `updated`, `foodId`, `deliveryId`, `userId`) VALUES
('a718d02028dd4fec2bacfca3b47af0', '5196460bb13e34c49c495ffef12e69', NULL, 'Pending', '2024-04-27', '10:45', '1', '99', 'cod', '2024-04-27 04:41:20.115186', '2024-04-27 04:41:20.115186', '2df7cfbc062fa8927ea562b01fb6c1', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('a8b91565ccdfd0763255dbcb404f53', '52f9eafd6ccf80d91b43bef28b53d7', 'cs_test_a1cDFQGcJ1tttqKheflpK02Cy5ZR78GwvCmQEUiOwuTryK1kfxYVEWxuI6', 'Pending', '2024-04-25', '23:22', '1', '99', 'Stripe', '2024-04-20 13:33:06.328816', '2024-04-20 13:33:06.328816', '2df7cfbc062fa8927ea562b01fb6c1', '9b65178bd9c0311105ff54815da81d', '0002dcc574daa3096f701406e063d1'),
('a8e6da28a62aa46ca96a2c91b7a32f', '75b2cbb00854a71215e6396a83165f', 'cs_test_a14Vk9rPuWX17xQYhf7OFeiPFPJJgOIT8NkyQj9oWzmnV0sGM6eo7j7ONl', 'Pending', '2024-04-22', '08:04', '1', '99', 'Stripe', '2024-04-20 22:16:40.045259', '2024-04-20 22:16:40.045259', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('a926061616547d569d33ae15b19221', '94c7e5035b9d3462805ec853d1181a', 'cs_test_a1rLJ7sCRWPnCrpXRajcxPLoQr48ZVmlDgKidVEVrTFBhy67oDRMBvhHsV', 'Pending', '2024-04-22', '08:04', '1', '99', 'Stripe', '2024-04-20 22:15:22.854278', '2024-04-20 22:15:22.854278', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('aa8eacbf066664c5e2217aecf60e06', 'dafa28fb0162d24cbd1be14ac75cc9', NULL, 'Pending', '2024-05-09', '15:54', '1', '99', 'cod', '2024-05-09 06:10:21.501011', '2024-05-09 06:10:21.501011', '2df7cfbc062fa8927ea562b01fb6c1', 'ffba3606f36e55f4778579a494954c', '64875400132f5d2ecf008aba81030b'),
('aab1ad38f683bc664f305a41600c43', '8372e13ae12d3649ab517cf8265101', NULL, 'Pending', '2024-04-26', '23:23', '1', '119', 'cod', '2024-04-20 13:35:12.265033', '2024-04-20 13:35:12.265033', '49377abbb03a77d8ccb416c13e0676', '47583e84eefab97789bb06508e6d98', 'dca3befb1c31b97b27511de0039ee6'),
('ab3fe8ed159ef3c4439db218786601', '8bc95a2ed26717014fff48fda97e56', 'cs_test_a1yI25ag9PZus9SLA2tj8VgciLPlazTaFM1Dd0C6whSOCb1vQxdZneFktD', 'Pending', '2024-04-22', '08:24', '1', '99', 'Stripe', '2024-04-20 22:38:32.012130', '2024-04-20 22:38:32.012130', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('ac291f42a80c70c8ab32a66e96e64c', '8083bb5534b7e8b605307fbee3cffb', NULL, 'Pending', '2024-04-24', '16:36', '1', '99', 'cod', '2024-04-23 06:50:16.606072', '2024-04-23 06:50:16.606072', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('ac4112a9ba2358a195c9ec733fe040', 'd6350730b8fc7d815ea7fc09be20dd', 'cs_test_a1JI7feEH8zZK3NbUS2er3tAJnNrpLjd5XVwSdGN6YOOmj4HJsZ1yHX2cS', 'Pending', '', '', '2', '238', 'Stripe', '2024-05-14 13:19:37.833475', '2024-05-14 13:19:37.833475', '49377abbb03a77d8ccb416c13e0676', 'b15f64d5f65cd4ab6a4e52bc2bae92', '9c31d29d7623369ec062e475c67c57'),
('ac8d21da3a8b585745c35c5d6591f5', 'ddb2e5aa2ba677c73437b1693a13ea', 'cs_test_a1SI43O4C1s2WZAR2LyLgis36bgAaLInEn2uKXf4hyXEBPtvCwaJrNnY3U', 'Pending', '2024-04-12', '20:15', '2', '98', 'Stripe', '2024-04-12 13:56:07.614913', '2024-04-12 13:56:07.614913', '7961f845b364f1e32853472bd85ca5', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('ac90b0d622061fc8825f89adfd94da', '9ae4ea9e5ed5c6732ee422efaaf19a', NULL, 'Pending', '2024-04-24', '16:39', '1', '119', 'cod', '2024-04-23 06:53:04.781452', '2024-04-23 06:53:04.781452', '49377abbb03a77d8ccb416c13e0676', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('ad38c4663e4ac9553db3ab80bb80cb', 'd44740781d93873d39f343ea8097ef', 'cs_test_a1qilcx2pMVIuIALKF2L0EZCV4fWPrIGiiugklAgVI1FlU2qKAelIO8kpT', 'Pending', '2024-05-04', '00:45', '1', '99', 'Stripe', '2024-05-04 15:07:44.666341', '2024-05-04 15:07:44.666341', '2df7cfbc062fa8927ea562b01fb6c1', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('af9db8813368f1e3eeb7927ddde317', '3f16c83c36b8200d228b8c228f2ac7', 'cs_test_a1GZCMgDgjtf3RhyxTqOvSGcTINuJbZX91Ev5GVk1GldGSMpGD12hy4Vt1', 'Pending', '2024-04-12', '20:30', '1', '299', 'Stripe', '2024-04-12 14:04:25.505476', '2024-04-12 14:04:25.505476', '462448f73c44a406ff66bbe4f4f7a6', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('afe9623811c38c3b9b92e196b0717b', 'f985b262124e793534a99b3106fb5a', 'cs_test_a1R9gMqGZADTWgiB4SQ4npbOTbFukhHdds4T934JTjF9VG3YLGow8HnoPH', 'Pending', '2024-04-24', '18:19', '1', '99', 'Stripe', '2024-04-23 08:33:08.654151', '2024-04-23 08:33:08.654151', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('b113f2589129da57c1a64b0b877cb2', '46b4c00426162deae0496b9535762e', NULL, 'Pending', '2024-04-24', '16:52', '1', '99', 'cod', '2024-04-23 07:02:23.120615', '2024-04-23 07:02:23.120615', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('b1abe9a01c0cb4f9c07ca37e70b8d7', 'c8fb9e297a46f5ff7b7f993209e038', 'cs_test_a19ELjU42gejv5SbzCtt9aKd71FZnA9J1w2n3KJgGGOCEl7utZHTq8YJ96', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:30:20.370812', '2024-04-20 22:30:20.370812', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('b2a0739a304f38377118caceab8eea', 'dd274e330d2504d86ad34e00e6fb2c', NULL, 'Pending', '2024-04-29', '09:06', '3', '297', 'cod', '2024-04-27 23:20:20.231395', '2024-04-27 23:20:20.231395', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('b3034c8dd7105a0dbeaba9bec2b94d', 'b730c6886cdccdc3816aa36d1ca722', 'cs_test_a1ufQ4owev5jNBtfUcKU2l0jvaSlnhSerogF6QdX1EqGMKOcxaBdVOx9Ja', 'Pending', '2024-04-24', '18:35', '1', '99', 'Stripe', '2024-04-23 08:48:41.268189', '2024-04-23 08:48:41.268189', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('b3a7d74dcdcd4e90f5e98a9a697cb5', '4efd02b4c43db991f41ad8504a2e57', 'cs_test_a1nzJIvsznjVZjfOEuTQ9lPwIkxIiXNCJwWTPzmoEMyTgFd6kAuzyiszpe', 'Pending', '2024-05-05', '21:03', '1', '99', 'Stripe', '2024-05-05 14:59:48.844480', '2024-05-05 14:59:48.844480', '2df7cfbc062fa8927ea562b01fb6c1', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('b5ab8c6b88e7ea21595b289acd90cb', '7926682047b834cc685eda23fb31d3', 'cs_test_a1Xlte8tU77PmarU7sT40vC5aonbgpq7GhU3ku4tGXK4KQWckeTa38cNSv', 'Pending', '2024-04-22', '07:54', '1', '99', 'Stripe', '2024-04-20 22:09:18.098281', '2024-04-20 22:09:18.098281', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('b5c9ba56e90782d4f18c0031d1b610', 'b8bcc27ee31e1544ce23ba477c85db', 'cs_test_a1lTK4QMr7zc4079UzDReNS97VaiPIyY8FhTqLidgbLW9vn25qfup5Cqdh', 'Pending', '2024-04-22', '10:21', '1', '99', 'Stripe', '2024-04-20 22:36:40.993991', '2024-04-20 22:36:40.993991', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('b5e333267f27d44650fe2342695c82', '202405142266', NULL, 'Pending', '2024-05-15', '20:41', '2', '198', 'cod', '2024-05-14 12:28:17.861352', '2024-05-14 12:28:17.861352', '2df7cfbc062fa8927ea562b01fb6c1', NULL, '9c31d29d7623369ec062e475c67c57'),
('b6ad33f1d5eb0063d8d61519ca101d', '4b82345839fb8e787aeac2e095004e', 'cs_test_a1I6C8MEkQPYDrhGDaN5UD4UTPkSgQetcuagjdHeujMxjRRfSj9w6o4jot', 'Pending', '2024-04-24', '17:04', '1', '99', 'Stripe', '2024-04-23 08:14:54.725873', '2024-04-23 08:14:54.725873', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('b6c4730b7f002734008947cb9bd4a8', 'e08ec07a56dc919c6b0567cf5731c5', 'cs_test_a1tM8Oh2lS09HAiHvRibjowRJUZLJXH6VgsR1PEbrpOcJ7Nb5QVU3MZJgi', 'Pending', '2024-04-24', '07:30', '1', '99', 'Stripe', '2024-04-20 21:44:21.290644', '2024-04-20 21:44:21.290644', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('ba649ae77f159868bbc701b4c15ee2', '160441ec1ef901309e8821cc547cd4', 'cs_test_a1ISuxt2PZ0oXAOSlwmoO8Ph4JbKLRNV7jdWw1BjhAlEvSY061vuEyOt8w', 'Pending', '2024-04-27', '10:45', '1', '99', 'Stripe', '2024-04-27 04:41:11.448636', '2024-04-27 04:41:11.448636', '7077c42b6fa822846c670e024bcbc1', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('ba7d6c35cf5fad6e467b98f5d1d240', '240fee4804e9db24fcb88f3d42712a', 'cs_test_a1tIV5mAasC0p8WvyMJEbnwVByrWJxepqALM9e81JIKouyKOAkH0eFM7UR', 'Pending', '2024-04-22', '08:04', '1', '99', 'Stripe', '2024-04-20 22:16:37.663400', '2024-04-20 22:16:37.663400', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('babd9c59b6e48a649e8feda6adc592', '6b56d7cf5c331983ae3a08fcd46d48', 'cs_test_a1SNAV9muBTcwktQnW9lsZFAEj5uQ7xKDLgjeJTciku55DoJexC90YLYaR', 'Pending', '2024-04-22', '08:04', '1', '99', 'Stripe', '2024-04-20 22:16:42.369242', '2024-04-20 22:16:42.369242', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('bca8431710a4353d40c618c0945a50', '3c846b63a7b6446d59d0e277e887e1', 'cs_test_a1nAU60cb9Z1NnX1fvwiOTOdxQig1Jmi5lanr5mg0TJVQWfcAEIAsGanEK', 'Pending', '2024-05-04', '00:45', '1', '99', 'Stripe', '2024-05-04 15:07:52.347281', '2024-05-04 15:07:52.347281', '2df7cfbc062fa8927ea562b01fb6c1', 'fd57a91cfb8f5d6f97bf82e7a6f9e3', 'f6fe7ad65cc2cb48bd4f0bd61d9c85'),
('bcceb9557ed1ac8a61bcfbc3de93bd', '908fa87445d008259c13367223e5c6', 'cs_test_a16vFIOxmgn3zJmjdx2x3OBOJgssktFwVGleAyMoAhuvQvx2OVPAPP0l2v', 'Pending', '2024-05-10', '17:12', '1', '99', 'Stripe', '2024-05-10 02:12:47.395095', '2024-05-10 02:12:47.395095', '7077c42b6fa822846c670e024bcbc1', 'bfc4042612cfb0ac5c99d639262e8a', '65961cce63291918a985c8ce9904f1'),
('be32901748eeb99da36e59456151d0', '5aa2ec95b34a3b56e99f205b5ec763', NULL, 'Pending', '2024-04-11', '08:28', '1', 'NaN', 'cod', '2024-04-09 22:40:36.678037', '2024-04-09 22:40:36.678037', '49377abbb03a77d8ccb416c13e0676', '9b65178bd9c0311105ff54815da81d', '0002dcc574daa3096f701406e063d1'),
('beacf6dcfa9ecccd425b10b0a8bf0e', '75e4ff2c5e7490a39f567cf6930993', 'cs_test_a18EMn9oXRi5VxI5KBNEwKdrHWOdeonAPvyEkHxTfFbk6txh2fKl87BrMM', 'Pending', '2024-04-22', '07:48', '1', '99', 'Stripe', '2024-04-20 22:03:04.512160', '2024-04-20 22:03:04.512160', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('bec2dee4a31f7e1e147d0eae370fec', 'bde72aae552b38c602162beea3e8a6', NULL, 'Pending', '2024-04-09', '21:01', '1', '119', 'cod', '2024-04-08 11:15:26.210135', '2024-04-08 11:15:26.210135', '49377abbb03a77d8ccb416c13e0676', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('c16468a67c2a13ddf4bc794113459f', '80f894ca4173759a2b2a793e76d1e5', 'cs_test_a1rwJgPrNJf0yU5UnxCRjDFqwKQX8TOBtXYdYXJzDsWQq4cvIrUkivzCx9', 'Pending', '2024-04-22', '07:00', '1', '99', 'Stripe', '2024-04-20 22:14:46.389345', '2024-04-20 22:14:46.389345', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('c1adc789c387f408f948b90c36dba0', 'f92cdc2e1dbcbbfa0e8a139b674c6e', NULL, 'Pending', '2024-04-24', '14:17', '4', '396', 'cod', '2024-04-23 04:29:52.091641', '2024-04-23 04:29:52.091641', '2df7cfbc062fa8927ea562b01fb6c1', '58800957265fe8710ae0725ad09b89', '5bc50666c6d69d6038350a87cf4597'),
('c495499bebe93520376c0ff3363ac8', '2f1cce5f9aad981fe9c7347ca9c3dc', 'cs_test_a1k5HBzaBALo6lenadNaDL2hx12lyzFS6Esrhm3n4ddPZp97hvoFGFgST5', 'Pending', '2024-04-22', '09:39', '1', '99', 'Stripe', '2024-04-20 21:52:42.653525', '2024-04-20 21:52:42.653525', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('c5592c87b8cd9c39abdaac202e6df0', 'b2387c353421403c18ed1468c855d3', 'cs_test_a1dyv34Xs4rkQ6VbEb5rTf1YpdYcwXQ6hzq9svU2baiLurl2I4vXGpLsbS', 'Pending', '2024-04-22', '06:57', '1', '99', 'Stripe', '2024-04-20 21:08:18.573980', '2024-04-20 21:08:18.573980', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('c583571a5323b79d5700e23ed0631d', '762d0480429802e413733c1e55d928', 'cs_test_a1K82oemiUgf15mfzNTxZ8vSaEbkjm4ucXfv2F0i5DJADTDrRDi160tTgZ', 'Pending', '2024-04-24', '19:27', '1', '99', 'Stripe', '2024-04-23 08:42:38.921176', '2024-04-23 08:42:38.921176', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('c9376aa490b6d7c757822d72f934fc', '091b6bccf050221b5e4a3aa1054b64', 'cs_test_a1xhylNv4mfi3kcLQZYUb4xe39OylTRiQoZBSV4RyOZtWpgQ2hfjGfV5ZG', 'Pending', '2024-04-24', '07:30', '1', '99', 'Stripe', '2024-04-20 21:44:18.642396', '2024-04-20 21:44:18.642396', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('c9f1a88005f2be04b7b362771983f4', 'dd274e330d2504d86ad34e00e6fb2c', NULL, 'Pending', '2024-04-29', '09:06', '3', '357', 'cod', '2024-04-27 23:20:20.205936', '2024-04-27 23:20:20.205936', '49377abbb03a77d8ccb416c13e0676', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('ca4a8db53dd8ace56ff4ea3b5bcece', 'c6ba983efe25cc6fde735e4c5829cb', 'cs_test_a1ojg3QncaGKQSIRJGkdX9ivNhmWGA5K4HRCGnWwfvbsFaZcS566Ycdnea', 'Pending', '2024-04-22', '08:12', '1', '99', 'Stripe', '2024-04-20 22:26:49.993578', '2024-04-20 22:26:49.993578', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('cb820da44a36d1d67bdbbb85586c40', '8e4d95983cb2af4f91cad84d450b6a', 'cs_test_a1LkGFC4tYeCQ7peeGtGJbTZOcLDOYnJ4PyCJ90q7rDMG3f7jYEvZrvpQQ', 'Pending', '2024-04-25', '18:27', '1', '99', 'Stripe', '2024-04-23 08:38:41.197595', '2024-04-23 08:38:41.197595', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('cb93f35500e0733f51054eeff0ffc1', '6b881a62af0ce34bb5a051c5449d72', 'cs_test_a1XMfwlBkZEM4r1yPSb6XVOHyuHW40JNYd2zDrujTROuxmeXyAliQ4p0en', 'Pending', '2024-04-22', '09:24', '1', '99', 'Stripe', '2024-04-20 22:41:02.019440', '2024-04-20 22:41:02.019440', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('cc930fac84bf3c79f2fa08551d44f9', '4b7230c2ba87d6963586402d4701b3', 'cs_test_a1vYNLh0EfCOFAx5qa23rcdmaxid8To4tIUWeHBKtjWgzRQxbVXV4ImRbD', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:26:06.524283', '2024-04-20 22:26:06.524283', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('ce8aef38b0704811ab2c1a4d500433', 'd2e68bc81905dd969618aa158dcb61', 'cs_test_a1Nu43fdShstH8QRT5bBWACiBhdTdcb7ZrDLGO3FbB0LPDiLFlGHZNerVL', 'Pending', '2024-04-23', '07:27', '1', '99', 'Stripe', '2024-04-20 21:41:26.618820', '2024-04-20 21:41:26.618820', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('cfd27b03f90435c5a6bde5d62f9325', '44c8bf0eed00e47edc4798bbb28998', NULL, 'Pending', '2024-04-22', '08:21', '1', '119', 'cod', '2024-04-20 21:36:19.391191', '2024-04-20 21:36:19.391191', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('d02802d76af145d5fe5ee48d27a434', '202405142810', NULL, 'Pending', '', '', '2', '198', 'cod', '2024-05-14 12:43:52.966884', '2024-05-14 12:43:52.966884', '2df7cfbc062fa8927ea562b01fb6c1', 'b15f64d5f65cd4ab6a4e52bc2bae92', '9c31d29d7623369ec062e475c67c57'),
('d19da8008b23e3ddebca3ac1f96369', 'bd9376435757e367f2d11101d69ebc', 'cs_test_a1hgzhOJg26hbn292d82SqkBHhO6KGLmW3bH8og6IIM9GfhhdV1zrVdonn', 'Pending', '2024-04-24', '18:04', '1', '99', 'Stripe', '2024-04-23 08:15:43.388216', '2024-04-23 08:15:43.388216', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('d1b8c649104750acf2ddce7f21c51e', 'c667eb5210865a2ed4645e15ee6cf6', 'cs_test_a1EpOBJ7ndLuW9TGYx9ndsi1BxmLqZfyvEjEc2DAFiqAvXPVO0S936LnN4', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:47:49.792819', '2024-04-23 08:47:49.792819', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('d1dfbd622d3b81064d55c0ae846d04', '5a1d2cab7cdfb3dd904e4c5a5e0c19', 'cs_test_a1QZ3MxOspsyN48TzsJ5xWRI6YxqxvqDvF1PS5BKhdyzpF6MWYVEBipO9A', 'Pending', '2024-04-10', '19:45', '1', '99', 'Stripe', '2024-04-08 09:57:34.772958', '2024-04-08 09:57:34.772958', '2df7cfbc062fa8927ea562b01fb6c1', '9b65178bd9c0311105ff54815da81d', '0002dcc574daa3096f701406e063d1'),
('d32b020a6d55dc1dfe1b95216c82cf', 'a9cac10aacf47f770992ebdb087141', 'cs_test_a1bp2ZMCgereXExlUQ6Ri5bIYklpsgj80gBdJL2rV6yfx1wLLpgoiNyv3K', 'Pending', '2024-04-22', '08:21', '1', '99', 'Stripe', '2024-04-20 22:34:41.867831', '2024-04-20 22:34:41.867831', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('d4be57b15ac5cd236f585dd79cb684', 'aa39697252832d274280904d4550b7', 'cs_test_a1DhktUhKBxAexdsTliNgBgxy4Vk2Plkla2UzJQ7zmDodmYKWHXy2sYZzl', 'Pending', '2024-04-24', '16:39', '1', '99', 'Stripe', '2024-04-23 06:53:38.888027', '2024-04-23 06:53:38.888027', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('d7ebf5dbcc8e5b0c28b660c0816859', '202405144131', NULL, 'Pending', '2024-05-15', '20:41', '2', '198', 'cod', '2024-05-14 12:16:28.445848', '2024-05-14 12:16:28.445848', '2df7cfbc062fa8927ea562b01fb6c1', NULL, '9c31d29d7623369ec062e475c67c57'),
('d9954178076b6d077af4cceb06210b', '6975c7f53b6971a3d424735bc62df0', 'cs_test_a1K45Na0Nbi77aJtdCTzXcPNB91b7PCLeu4fiqH95X6T9Li4rykM4rEBcw', 'Pending', '2024-04-22', '08:27', '1', '99', 'Stripe', '2024-04-20 22:37:09.986106', '2024-04-20 22:37:09.986106', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('da48bc7afd8c039a9c45142d095dd5', '5196460bb13e34c49c495ffef12e69', NULL, 'Pending', '2024-04-27', '10:45', '1', '99', 'cod', '2024-04-27 04:41:20.139194', '2024-04-27 04:41:20.139194', '7077c42b6fa822846c670e024bcbc1', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('da90dc36eb43cbc29ddf118ba122cd', '91441f4ae2dc3c41e074ffbec399ce', 'cs_test_a1iSSwp7MWaN6u9DUWV2dGyuvE71JLaSXO82v8O2nUDhgXjfmvkIDkO6tR', 'Pending', '2024-04-22', '07:54', '1', '99', 'Stripe', '2024-04-20 22:12:56.837680', '2024-04-20 22:12:56.837680', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('daefe784135610c7fe080e94f8eefb', '0f92b729d16206b56ac7033c185609', 'cs_test_a1kXOLfkEaW4ii16GZ7M2PS1y0S1Dbn6mheAyYhVyff9cYrvtXV4PUmrQL', 'Paid', '2024-04-09', '20:49', '2', '198', 'Stripe', '2024-04-08 11:03:37.143731', '2024-04-08 11:09:25.000000', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('db9dcddd7ca7daf09d1fdcbc080b1d', 'ce875f526beb731531297281c14284', 'cs_test_a1AkJXOmd0Xne50aVwezXlwUY3u3uhoOEOwsFEXBdcwOMeEvLotbpIqnap', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:29:19.863581', '2024-04-20 22:29:19.863581', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('dcb096cb26ac6d8d4b8fb0108aea97', '160441ec1ef901309e8821cc547cd4', 'cs_test_a1ISuxt2PZ0oXAOSlwmoO8Ph4JbKLRNV7jdWw1BjhAlEvSY061vuEyOt8w', 'Pending', '2024-04-27', '10:45', '1', '99', 'Stripe', '2024-04-27 04:41:11.425728', '2024-04-27 04:41:11.425728', '2df7cfbc062fa8927ea562b01fb6c1', '8f82e9e5914517242e2b513c2b15bd', '74978b1b0b85f006f290999c69eaec'),
('de0537286511fbdf539b3da0d60940', '92e2e0531ce07e38832a565880c81f', 'cs_test_a1JpNOtlnpgs9j0F69P1BPTuHkQbMrXZDNLDbmCfSwiO2FyZV1GuUj8iJ5', 'Pending', '2024-04-24', '18:37', '1', '99', 'Stripe', '2024-04-23 08:51:59.874008', '2024-04-23 08:51:59.874008', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('de408e766d0148ded312d67c2dff25', '0d5cd250e6fa8ebf77e8e9d4c1bd0c', 'cs_test_a1ozZMVsqKmBby65TUENVzgMXREPEyon8vRebTfLp9xpr3O4Au6Jh2smLD', 'Pending', '2024-04-22', '07:46', '1', '99', 'Stripe', '2024-04-20 22:00:17.656818', '2024-04-20 22:00:17.656818', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('de66f1de2a05510edd73b8a9077992', '31e90ba9aa212abe347c796d85840a', NULL, 'Pending', '2024-04-12', '21:43', '2', '198', 'cod', '2024-04-11 11:57:14.839796', '2024-04-11 11:57:14.839796', '2df7cfbc062fa8927ea562b01fb6c1', '55f52a0e6046205b104b42023276df', '3f0a02d51a592ec941e605b674d7c1'),
('deb7111f63c3e19b15cf63f1979834', 'b68a9e15c9b6bdc85ab1f8a39383b4', 'cs_test_a1sHBKUnz6WP48nXtkN2C8dFJvv1Ta8bPeqPMyI4VK3iAqRAqeRdO9bDBq', 'Pending', '2024-05-10', '17:12', '1', '99', 'Stripe', '2024-05-10 02:13:25.204297', '2024-05-10 02:13:25.204297', '7077c42b6fa822846c670e024bcbc1', 'bfc4042612cfb0ac5c99d639262e8a', '65961cce63291918a985c8ce9904f1'),
('e107d76d71ce9f0175de374aa6a3e4', 'ccc17687818924464a70b831489a2c', 'cs_test_a1G6Mi6ZHZUlRmddorPmiU9of8SgFYHUHbCA20VyTEOFRJo8ATjxymnNXy', 'Pending', '2024-04-24', '07:30', '1', '99', 'Stripe', '2024-04-20 21:44:24.666746', '2024-04-20 21:44:24.666746', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('e2578436028079121fd3079153386a', '52cd09e5303dc6aa1a3b5b179ab735', 'cs_test_a1SAvtPozzUci73WNNhKe2hcVMrc5cpVmhwYek3Mr71LIR4MvfzFSXbGu4', 'Pending', '2024-05-05', '21:48', '1', '119', 'Stripe', '2024-05-05 15:45:54.725571', '2024-05-05 15:45:54.725571', '49377abbb03a77d8ccb416c13e0676', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('e2965f9f7a6e86eaf2c9d9108f6552', '58e6445f77ab644d570be13e07398a', 'cs_test_a1pro4RQEXXWiEIqbm19VihT3X4NzYRbkobOWAC0PXmeYaTCddB48ldpCc', 'Pending', '2024-04-24', '17:21', '1', '99', 'Stripe', '2024-04-23 07:36:01.900734', '2024-04-23 07:36:01.900734', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('e632bff92c2eafa0fc6e4f601824c3', '202405142217', NULL, 'Pending', '2024-05-15', '23:15', '2', '198', 'cod', '2024-05-14 12:30:56.099039', '2024-05-14 12:30:56.099039', '2df7cfbc062fa8927ea562b01fb6c1', NULL, '9c31d29d7623369ec062e475c67c57'),
('e6536e6e2222a90c866f46e01cba4a', '01208a86149bd6c6a745a72ad4ff64', 'cs_test_a1eVjsvsRGWCc8Wka0JTg5qeKKtysf83bPKVeRByGt1nnoJ3HAVsGyCSPJ', 'Pending', '2024-04-22', '09:39', '1', '99', 'Stripe', '2024-04-20 21:52:38.702429', '2024-04-20 21:52:38.702429', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('e7934e84037eed31d45f83b13df2da', 'f2dda6aa6ee560971f804b7fc4ff19', 'cs_test_a1owFO97uiPN3Zqn3zFXhEMdirIGy6QeyM6ayXbP5xE2QoiIAwhwxWlRIL', 'Pending', '2024-05-05', '21:03', '1', '99', 'Stripe', '2024-05-05 15:00:02.323752', '2024-05-05 15:00:02.323752', '2df7cfbc062fa8927ea562b01fb6c1', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('e878c740424562d8e3664afb798a31', '1fdd9f7665a31a9c85df2e81b01470', 'cs_test_a1Hf4hkiLTzDT1myLwk8PvKpIauqxiMhPuszcBsITF6HraOrshy9DquRKE', 'Pending', '2024-04-24', '17:26', '1', '99', 'Stripe', '2024-04-23 07:38:01.135082', '2024-04-23 07:38:01.135082', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('e880d86585b165da184a13a1f81863', '3d44bc0b115db101905ec4a9f5466d', 'cs_test_a1FU3A4hCCk8owo0BP4jtysEe0X0h2JrepJedUI7YY7RIIdmfjBH9YvbL3', 'Pending', '2024-04-24', '17:15', '1', '99', 'Stripe', '2024-04-23 07:29:21.104991', '2024-04-23 07:29:21.104991', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('e8dd871cc27b4319a9d237b4ec647b', '28228f8b33fe437998d8c4330f9561', 'cs_test_a17Ztx5v9dfEe1SlklUKy8xmupo2nacSykNmTM9Uj3RHLtmy1Bm42f1U4Z', 'Pending', '2024-04-22', '07:20', '1', '119', 'Stripe', '2024-04-20 21:34:25.778097', '2024-04-20 21:34:25.778097', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('e93cc96662cac1d30ceb55a9cc9e7c', '6bfdf131c1a1ebc6516aa17bb691be', 'cs_test_a1Oh4BtSzx8XPXMsivf4jBoNQXwfJPuxveTHJtGz0Ddyz2z2iT4me1Aar6', 'Pending', '2024-04-22', '08:08', '1', '119', 'Stripe', '2024-04-20 22:22:13.886792', '2024-04-20 22:22:13.886792', '49377abbb03a77d8ccb416c13e0676', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('eac1882c58453f9c906f6075b458e8', '5c412f5d210a61c6ba04a495675234', NULL, 'Pending', '2024-03-13', '11:04', '1', '99', 'cod', '2024-03-26 08:30:31.570553', '2024-03-26 08:30:31.570553', '7077c42b6fa822846c670e024bcbc1', 'cd453038007a8882b4fbc868bc5608', 'f75fc1d6ad462e493dcf224ffd8d6e'),
('ec74e5d97b46d3b371c2e387c09cb7', 'bda88b23f4434b114451e0f1f8ef03', 'cs_test_a1MPpApXsKsRZ9t83Fu0UF67Tdm6fJEj8302GOqqI7RBZL4ZfNgZtG2zvF', 'Pending', '2024-04-24', '19:27', '1', '99', 'Stripe', '2024-04-23 08:42:44.659001', '2024-04-23 08:42:44.659001', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('eed7277df4d77a0110364cccc1ad5d', 'cde365029469592f8aecba22970659', 'cs_test_a1t5ihRWlsiEgJhcJuncB2vpeY71C4aWm6moWVBL5LGOd4jP8nqRq9HZ7j', 'Pending', '2024-04-22', '08:13', '1', '99', 'Stripe', '2024-04-20 22:27:34.189632', '2024-04-20 22:27:34.189632', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('f06c8a3a5517a1f52d17b55693d3c3', '0fa437f27dda914eeccf84fea7e275', NULL, 'Paid', '2024-03-27', '04:27', '1', '119', 'cod', '2024-03-25 22:40:04.753672', '2024-03-26 01:47:44.000000', '49377abbb03a77d8ccb416c13e0676', '9b65178bd9c0311105ff54815da81d', '0002dcc574daa3096f701406e063d1'),
('f0992f8194912d69228fbc851873a7', '47b5dca8a83b56e1ecbbfb23980056', 'cs_test_a1whdYaedq8rC0nPScTVi0WpFoHCMLptmUY1jEoWlXPzGgN69JkbdkTc8p', 'Pending', '2024-04-22', '08:27', '1', '99', 'Stripe', '2024-04-20 22:41:34.478137', '2024-04-20 22:41:34.478137', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('f10f0341003be8956cac12929d59d0', 'a29af8f5095635d0c1365ddb4e057d', NULL, 'Pending', '2024-04-24', '16:50', '1', '99', 'cod', '2024-04-23 07:00:39.010076', '2024-04-23 07:00:39.010076', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('f2b3accd14d07e4c28b56d52a505b4', 'e5262a0be50a2435fef3945a72bd10', 'cs_test_a1d4glZQsdxX35tpezTTytxtFf53mTwPz78X8AvuW7dsN0pjlGYDa1KAvQ', 'Pending', '2024-04-22', '07:34', '1', '99', 'Stripe', '2024-04-20 21:48:28.690726', '2024-04-20 21:48:28.690726', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('f30c09905093c23ed093ca9547169c', 'b7a32891ff2b73d1e09825eee63ddb', 'cs_test_a1dokxm14Nc0upAIrN71pEneLcx2mf9d1PLRybYje7AL5w1ezgZNocP39x', 'Pending', '2024-04-09', '20:34', '1', '99', 'Stripe', '2024-04-08 10:49:17.234807', '2024-04-08 10:49:17.234807', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('f35c1eee4150c21be8da1f46d7af88', '3f16c83c36b8200d228b8c228f2ac7', 'cs_test_a1GZCMgDgjtf3RhyxTqOvSGcTINuJbZX91Ev5GVk1GldGSMpGD12hy4Vt1', 'Pending', '2024-04-12', '20:30', '1', '29', 'Stripe', '2024-04-12 14:04:25.460791', '2024-04-12 14:04:25.460791', 'b47cf9e304309d6507d3105d462b89', '752afb6c4158adf8e314d31f843c86', '5b64a398ec6f8c8c3fcbd145643824'),
('f4474a174c77f1eff5780a03cdd33f', 'f148cbca54ffde03994d179b59ecc5', 'cs_test_a1rxkncGhdUtgOb2q7gFXrRdAZljywF1G6uVzpRTMRWbSD2ZGwZFRm59XY', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:46:04.646699', '2024-04-23 08:46:04.646699', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('f45a2545a0ef23b60ed84a352c7e40', '0fa437f27dda914eeccf84fea7e275', NULL, 'Paid', '2024-03-27', '04:27', '1', '99', 'cod', '2024-03-25 22:40:04.745414', '2024-03-26 01:47:44.000000', '2df7cfbc062fa8927ea562b01fb6c1', '9b65178bd9c0311105ff54815da81d', '0002dcc574daa3096f701406e063d1'),
('f4d2f365a5b40d533f38c62ea448d9', 'a1be2a2a15191cf5aeb789d0a0d12e', 'cs_test_a1kKJDwfl5HLnjUzOHoRaT6TAQB1Q435CdZk0EL9KppRBXuZ5yVRAbMj8j', 'Pending', '2024-04-24', '18:06', '1', '99', 'Stripe', '2024-04-23 08:20:26.784174', '2024-04-23 08:20:26.784174', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('f4f1b8baf5da7f4cd3b1c47da3e282', '542045fd757580bf67349f1ed6d46b', 'cs_test_a1lGaQ9wvesnEPvqCWZghCRHT7GxTI8gp9ZgjbnBkCrTFhBNRs27YzNrO4', 'Pending', '2024-04-22', '08:16', '1', '99', 'Stripe', '2024-04-20 22:32:25.555632', '2024-04-20 22:32:25.555632', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('f50c9251e328f109bcc6e5aefbff65', 'e217da928f93d695f1b10c8c65d63e', 'cs_test_a1G8ZL5QkSmegeIeMkddeTfDBnbZLFf0hEekqCI2EMq3zCG184EIUjm4uY', 'Pending', '2024-04-22', '10:21', '1', '99', 'Stripe', '2024-04-20 22:36:33.978184', '2024-04-20 22:36:33.978184', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('f87a33cc0f13546d92bab1f3d654e7', 'daff0f90c23fd402df5e52204bd7de', 'cs_test_a1WwoBw9pJySWZTBnUIxNWsrOUZoKTkdeuHrJPCqEfdZwllqrhlf8h782F', 'Pending', '2024-04-22', '07:00', '1', '99', 'Stripe', '2024-04-20 22:14:55.386690', '2024-04-20 22:14:55.386690', '2df7cfbc062fa8927ea562b01fb6c1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('f96e7571b79259915cbe10d5955bb7', 'c4fb5dd9a127d2f6b16aa4117cc68d', NULL, 'Pending', '2024-05-05', '21:48', '1', '99', 'cod', '2024-05-05 15:44:48.279278', '2024-05-05 15:44:48.279278', '2df7cfbc062fa8927ea562b01fb6c1', '18c2bb504a5f902642d9d28d28f8b4', 'c21c79c7f481d6d41183d30a73160e'),
('fa67f8fe268e8deacf23beea7d2f1a', 'd944f977880e2ac717513ae3ce869b', 'cs_test_a1q8Bu8FskMUaOAbLlgxnsP6CnsyGMYvLb70LxWB3c27iUjsYHHLaqqZLt', 'Pending', '2024-03-27', '17:55', '1', '99', 'Stripe', '2024-03-27 12:08:02.126028', '2024-03-27 12:08:02.126028', '2df7cfbc062fa8927ea562b01fb6c1', '2bb1accd676983f34703949a709f6e', 'c6d1dbe7716e4c31c5bfd6ca0648a3'),
('fbff03889829d6a3274ec99dd29a0c', '5bd3be719b3c2259b2d7a883eca08f', NULL, 'Paid', '2024-04-10', '08:37', '1', 'NaN', 'cod', '2024-04-08 21:52:18.046096', '2024-04-11 10:26:54.000000', '49377abbb03a77d8ccb416c13e0676', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('fc91f1cf6b60c28a4fdede1799cd05', 'f69d7a680567ae34a6a78baf8b4978', 'cs_test_a14WWDuI69u4YOISKxHANj8KRRghcRlimEC3WOP6q9d94hGVQQOKKbRHIv', 'Pending', '2024-04-24', '18:29', '1', '99', 'Stripe', '2024-04-23 08:41:02.751592', '2024-04-23 08:41:02.751592', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4'),
('fceb4b9588354a352a55e9ac1b0e08', '7cd5aed124c639ddc86eb1fbe611bd', 'cs_test_a1dxtVKZd4HqLeTyzeir5II2Mhs0c5j0wnqfm6nEw5lWGhYmkCU4rU7t7S', 'Pending', '2024-04-22', '07:40', '1', '99', 'Stripe', '2024-04-20 21:57:12.503093', '2024-04-20 21:57:12.503093', '7077c42b6fa822846c670e024bcbc1', '272c034fdbddb376b5e5680a02ac3d', '5100cac8064214bb99fe8962a315b7'),
('ff794488f6489b658d121643e87151', 'dbc437ed3350262b60ff7ec0f69d95', 'cs_test_a1HkKlBVdytTTcor7S0v7XjGfzmxGbgDYC9KuyrhtmkZufSfBw3nX4CzTj', 'Pending', '2024-04-24', '18:31', '1', '99', 'Stripe', '2024-04-23 08:48:21.193775', '2024-04-23 08:48:21.193775', '2df7cfbc062fa8927ea562b01fb6c1', 'c86591fe4c33cd858c74388e643d94', '4a3d2d82eba498414f737878ff26c4');

-- --------------------------------------------------------

--
-- Table structure for table `pick_up`
--

CREATE TABLE `pick_up` (
  `_id` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(1000) NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pick_up`
--

INSERT INTO `pick_up` (`_id`, `fullName`, `email`, `phoneNumber`, `inserted`, `updated`) VALUES
('031996054d55da499fbc3a52cee5ca', 'Ram Lal', 'ram@gmail.com', '9876543210', '2024-05-14 12:16:28.397862', '2024-05-14 12:16:28.397862'),
('0fc1cf5a41a84d522b0c6a0571ae5f', 'Bikky kc', 'bikkykc013@gmail.com', '12345678', '2024-05-14 09:11:36.977438', '2024-05-14 09:11:36.977438'),
('7b5ee1e161c10fff1a39a3aeb0fbb1', 'Ram Lal', 'ram@gmail.com', '9876543210', '2024-05-14 12:30:56.016191', '2024-05-14 12:30:56.016191'),
('7dbb1ad25d9c6c6ae6fa4e3ce34e46', 'Ram Lal', 'ram@gmail.com', '9876543210', '2024-05-14 12:28:17.811132', '2024-05-14 12:28:17.811132'),
('92861fa91d77c848d3fe9de43c0deb', 'DHURBA JOSHI', 'joshidhurba@gmail.com', '9841614319', '2024-05-14 21:18:59.433612', '2024-05-14 21:18:59.433612'),
('9b4dc85dd88493715b942e78095401', 'Bikky kc', 'bikkykc013@gmail.com', '12345678', '2024-05-14 09:09:14.074607', '2024-05-14 09:09:14.074607'),
('cb26b69581fbcea41e4d2f55504d78', 'Bikky kc', 'bikkykc013@gmail.com', '12345678', '2024-05-14 09:12:08.095322', '2024-05-14 09:12:08.095322'),
('cfc815bfe8ad5e86debb405a53e27a', 'Ram Lal', 'ram@gmail.com', '9876543210', '2024-05-14 12:13:20.776075', '2024-05-14 12:13:20.776075'),
('d479ed15fa54b302b33c33a4da27bc', 'Bikky kc', 'bikkykc013@gmail.com', '12345678', '2024-05-14 09:10:22.059058', '2024-05-14 09:10:22.059058'),
('e6b561edd87d161a4a27ed92a901d5', 'Ram Lal', 'ram123@gmail.com', '9876543210', '2024-05-14 13:19:15.678428', '2024-05-14 13:19:15.678428');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `_id` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`_id`, `title`, `image`, `inserted`, `updated`) VALUES
('0fbe8f721bbd79206848681baab056', 'Taste The Magic Of Curry Heaven Express: Where Every Dish Is A Journey To Flavor Paradise!', 'image-1715436484257-383887105.jpg', '2024-05-11 10:08:04.343045', '2024-05-11 10:08:04.343045'),
('b3d36fbfcb38de28f03826b4107d65', 'Curry Heaven Express: Flavorful Delights Delivered Straight To Your Doorstep!', 'image-1715436558141-404381200.jpg', '2024-05-11 10:09:18.331064', '2024-05-11 10:09:18.331064');

-- --------------------------------------------------------

--
-- Table structure for table `subCategory`
--

CREATE TABLE `subCategory` (
  `_id` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `categoryId` varchar(100) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subCategory`
--

INSERT INTO `subCategory` (`_id`, `name`, `slug`, `image`, `inserted`, `updated`, `categoryId`, `order`) VALUES
('138b260627fc3069e7d4c44a15dfd8', 'KEBAB ROLL', 'kebab-roll-1', 'image-1715339129092-910928439.jpg', '2024-03-25 16:13:05.491420', '2024-05-10 07:05:29.000000', '943ddf6f88104afb81654eb9235538', ''),
('44d245ae2f6009cb35610644088838', 'Alkoholfri', 'alkoholfri', 'image-1711367712236-912713913.jpg', '2024-03-25 11:55:12.493135', '2024-03-25 11:55:12.493135', '008d140e8f6cf8d3ae94e638072080', ''),
('55c8bcb7faf9c49fc07ea3644ade36', 'MIDDAG (kylling retter)', 'middag-(kylling-retter)-1', 'image-1715339346476-876770249.jpg', '2024-03-25 10:15:10.472238', '2024-05-10 07:09:06.000000', '943ddf6f88104afb81654eb9235538', ''),
('6536e8dbc9c9c52e676e81aff00499', 'Fatøl', 'fatol-1', 'image-1715339535705-706414165.jpg', '2024-03-25 11:59:23.979031', '2024-05-10 07:12:15.000000', '008d140e8f6cf8d3ae94e638072080', ''),
('7e3eb9f32ce7f624d2ff7ebd78e03d', 'DESSERT', 'dessert-1', 'image-1715339103250-598535633.jpg', '2024-03-25 16:25:57.234021', '2024-05-10 07:05:03.000000', '943ddf6f88104afb81654eb9235538', ''),
('8a2b3b8f616a22f98ecc516f0efcc9', 'Rødvin', 'rodvin-1', 'image-1711384625226-490272222.jpg', '2024-03-25 16:35:57.495467', '2024-03-25 16:37:05.000000', '008d140e8f6cf8d3ae94e638072080', ''),
('9cec91aa339d07e4a38594cee0768c', 'FORRETTER', 'forretter-1', 'image-1711365558731-367410036.jpg', '2024-03-25 09:57:07.738898', '2024-03-25 11:19:19.000000', '943ddf6f88104afb81654eb9235538', ''),
('a06bb2a47097a779881901717ccea0', 'BRENNEVINN', 'brennevinn-1', 'image-1715339486542-421546228.jpg', '2024-03-25 16:38:50.487673', '2024-05-10 07:11:26.000000', '008d140e8f6cf8d3ae94e638072080', ''),
('ab7114e05811916743892145045b24', 'GRILL RETTER', 'grill-retter-1', 'image-1711365665232-879296202.jpg', '2024-03-25 10:16:02.991566', '2024-03-25 11:21:06.000000', '943ddf6f88104afb81654eb9235538', ''),
('ae64e5397d990fee842814d18da8ff', 'FISKE RETTER', 'fiske-retter-1', 'image-1715339377550-593641538.jpg', '2024-03-25 10:16:20.233818', '2024-05-10 07:09:37.000000', '943ddf6f88104afb81654eb9235538', ''),
('c0e76494ec5de90c23da6e944fe213', 'NANBRØD', 'nanbrod-1', 'image-1715339157794-713206145.jpg', '2024-03-25 16:00:14.491410', '2024-05-10 07:05:58.000000', '943ddf6f88104afb81654eb9235538', ''),
('d65a63c2b8fa1a28f6d1729981fd0c', 'LUNSJMENY', 'lunsjmeny-1', 'image-1711366455727-995865099.jpg', '2024-03-25 10:15:03.232465', '2024-03-25 11:34:16.000000', '943ddf6f88104afb81654eb9235538', ''),
('dd20acd0ce9cd5a12c8ec07c9bb0a5', 'VEGETAR', 'vegetar-1', 'image-1715339317248-317222675.jpg', '2024-03-25 10:16:11.240886', '2024-05-10 07:08:37.000000', '943ddf6f88104afb81654eb9235538', ''),
('df378f76d44dc65b3bace194307a86', 'Flaskeøl', 'flaskeol-1', 'image-1715339564389-111841686.jpg', '2024-03-25 11:57:16.984168', '2024-05-10 07:12:44.000000', '008d140e8f6cf8d3ae94e638072080', ''),
('f19352fa6b82b84e30d627bf493bed', 'Hvitvin', 'hvitvin-1', 'image-1715339509304-359606845.jpg', '2024-03-25 16:38:36.731193', '2024-05-10 07:11:49.000000', '008d140e8f6cf8d3ae94e638072080', ''),
('fb596d35551a1c233bf0ab7688ffe2', 'TILBEHØR', 'tilbehor-1', 'image-1715339435329-921890689.jpg', '2024-03-25 10:16:52.244537', '2024-05-10 07:10:35.000000', '943ddf6f88104afb81654eb9235538', ''),
('fcf11c22d4b463d40474cec7283644', 'MIDDAG (Lam retter)', 'middag-(lam-retter)-1', 'image-1715339213491-858091297.jpg', '2024-03-25 10:15:48.244152', '2024-05-10 07:06:53.000000', '943ddf6f88104afb81654eb9235538', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_book`
--

CREATE TABLE `table_book` (
  `_id` varchar(255) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_book`
--

INSERT INTO `table_book` (`_id`, `firstName`, `lastName`, `date`, `time`, `phone`, `message`, `inserted`, `updated`) VALUES
('0ca63334bb41121b4c024ebe357334', 'Duurba', 'Joshi', '04/29/2024', '2:49 PM', '984161319', 'this is only for testing ', '2024-04-26 05:02:59.530142', '2024-04-26 05:02:59.530142'),
('1ab2c4488bff22f69b8169911b4e78', 'Santosh ', 'Shah', '03/30/2024', '10:29 PM', '46337192', 'Noen', '2024-03-29 21:29:55.023435', '2024-03-29 21:29:55.023435'),
('255219e72f870d0c4aafae1d537d3c', 'Narendra', 'Chand', '05/03/2024', '4:03 PM', '9841614319', 'this is test', '2024-04-24 07:14:59.957836', '2024-04-24 07:14:59.957836'),
('2f4cf496993c15acfd3f3bf4e6f1f2', 'Brain', 'Strosin', '01/12/2025', '5:08 PM', '870-651-6455', 'Possimus totam ullam sint culpa aspernatur ipsa enim neque.', '2024-04-08 12:02:29.445231', '2024-04-08 12:02:29.445231'),
('2f6c730438b96be12596ee816f7f21', 'd', 'd3', '04/27/2024', '3:03 AM', '3', 'e', '2024-04-26 05:36:02.158464', '2024-04-26 05:36:02.158464'),
('35abe5252e1a66c614a7d70967b676', 'rajendra bikram', 'thapa', '04/20/2024', '4:35 PM', '9851180198', 'yo time ko lagi malai ', '2024-04-18 02:36:21.805162', '2024-04-18 02:36:21.805162'),
('382ad7501afbfa4c5e3351a09374df', 'NB ', 'Chand', '04/13/2024', '10:18 AM', '9851146332', 'Please send me your best one item at my location ', '2024-04-11 22:36:52.999943', '2024-04-11 22:36:52.999943'),
('520f12e3c5cbe4b91738065f2bfc2e', 'Dhurba', 'Joshi', '04/29/2024', '2:52 PM', '1231231231', 'test', '2024-04-26 05:06:01.588868', '2024-04-26 05:06:01.588868'),
('62b212ec53780746c9be554ec87606', 'Radel', 'Gacumo', '04/25/2024', '6:00 PM', '41354471', 'Table for 3, preferably a table by the window ', '2024-04-24 18:23:27.663209', '2024-04-24 18:23:27.663209'),
('73336e28f3d4594a9ff4a24d54af0b', 'sabin', 'JOSHI', '04/14/2024', '8:05 PM', '803568156', 'hi available ', '2024-04-12 07:19:08.320697', '2024-04-12 07:19:08.320697'),
('79ac944189346f37e04a1685dba2fc', 'Gary', 'Markham', '04/24/2024', '7:00 PM', '90258907', '2 people', '2024-04-24 10:41:06.620941', '2024-04-24 10:41:06.620941'),
('7c0ed162db5e5bcfef3e3ba778fc9f', 'Kim Johnny', 'Sande', '06/23/2024', '5:00 PM', '90575686', '3 stykker', '2024-04-23 04:09:53.401003', '2024-04-23 04:09:53.401003'),
('96775a784bb2f36345f0e72ff1234e', 'Martine', 'Krabbendam', '05/09/2024', '6:30 PM', '94804695', 'Hei, \nJeg har spørsmål angående Catering, jeg fikk melding om at mailen min til info@thecurryheaven.no ikke kunne leveres så jeg sender spørsmålet her. \n\nJeg er interessert i catering hos dere. Hva kan dere tilby og hva blir ca pris på mat til rundt 60-70 personer (både vegetar og vanlig)? \n\nMvh.,\nMartine Krabbendam ', '2024-04-10 00:52:56.360258', '2024-04-10 00:52:56.360258'),
('a756335f31d6e3102fbd66727acd4a', 'Melissa', 'Yeo', '05/02/2024', '6:00 PM', '+6598432273', 'Table for 5 adults. ', '2024-04-09 09:01:20.129278', '2024-04-09 09:01:20.129278'),
('a86cfe0d747cb42462c7a6b001187f', 'Noreen', 'Butt ', '04/26/2024', '6:00 PM', '41234837', 'Ønsker å reservere vindusbord for 2 personer ', '2024-04-19 08:05:59.523442', '2024-04-19 08:05:59.523442'),
('a8be4e62f4ca2c9ac1a4cdbf1ba719', 'NABIHA', 'MEHEK', '04/18/2024', '3:20 PM', '46358318', '2 person. ', '2024-04-18 08:28:36.326932', '2024-04-18 08:28:36.326932'),
('bb54add9366c0f48547a11f1358b9f', 'Graeme', 'Dick', '04/21/2024', '4:59 PM', '92406767', 'Table for two people', '2024-04-14 04:17:02.243113', '2024-04-14 04:17:02.243113'),
('bb89adc08bdb0a23d7a47c09cf9a54', 'Steinar', 'Solberg', '03/28/2024', '7:05 PM', '45483580', '4 pers', '2024-03-28 08:10:04.529915', '2024-03-28 08:10:04.529915'),
('c215aa6d8e592922c4d4a814e2c011', 'Hanne', 'Lygre', '04/13/2024', '8:00 PM', '48255790', '2 personer', '2024-04-13 13:10:26.756881', '2024-04-13 13:10:26.756881'),
('caa0a112810c5201b46c0089ee225b', '.j', 'Uu', '04/27/2024', '3:26 AM', '98', 'N', '2024-04-26 05:47:05.198444', '2024-04-26 05:47:05.198444'),
('d46c5e329caa84a36425c093efb6a4', 'Terje', 'Gudmestad', '04/21/2024', '3:00 PM', '+47 45830652 ', 'Har dere barnestol og barnemeny.\nHvis så vi ønsker et bord for 4voksne og 2 barn kl.15.00 i dag ', '2024-04-21 03:03:19.969567', '2024-04-21 03:03:19.969567'),
('d57345731f42f1850d8554a3b09994', 'Kent L.', 'Sirevåg', '04/16/2024', '7:00 PM', '47509085', 'Hello. We will be 5 persons', '2024-04-12 03:43:35.847281', '2024-04-12 03:43:35.847281'),
('e2a189b2aca73863c80f36b0045141', 'Bjørn', 'Ramsland', '04/13/2024', '7:30 PM', '90172357', 'Hei! Kan vi bestille et bord for 2 personer på lørdag 13/4 kl. 19,30? Vh Bjørn Ramsland', '2024-04-09 12:40:31.103151', '2024-04-09 12:40:31.103151'),
('fc328c704cd0ee2152676bca7d6883', 'Dhurba', 'joshi', '04/30/2024', '2:50 PM', '9841614319', 'test', '2024-04-26 05:04:50.246525', '2024-04-26 05:04:50.246525'),
('ff44916d63e938766720a6f4ae3112', 'Santosh', 'Shah', '04/26/2024', '7:26 PM', '46337192', '2 person ', '2024-04-21 08:26:18.424468', '2024-04-21 08:26:18.424468');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `_id` varchar(100) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `review` varchar(10000) NOT NULL,
  `image` text DEFAULT NULL,
  `rating` varchar(255) NOT NULL,
  `inserted` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`_id`, `fullName`, `review`, `image`, `rating`, `inserted`, `updated`) VALUES
('2916a5bca31eb17b372117f339b026', 'Sarah K.', 'Curry Heaven is more than just a restaurant; it\'s a culinary journey through the vibrant flavors of South Asia. Every dish tells a story of tradition and love, leaving me craving for more every time I visit. Their commitment to quality and community involvement makes them stand out as a gem in the dining scene. Sarah K.\r\n\r\n', 'image-1712888107402-457883241.png', '5', '2024-04-11 22:12:03.178552', '2024-04-11 22:15:07.000000'),
('4353fc0a5816b8168eba989fa803c2', 'Emily P.', 'Curry Heaven isn\'t just about food; it\'s about creating memories with loved ones over delicious meals. Their attention to detail, from the handpicked spices to the cozy ambiance, sets them apart as a place where community thrives. Dining here is not just satisfying my appetite; it\'s feeding my soul.\r\nEmily P.', 'image-1712888082618-690356850.png', '5', '2024-04-11 22:13:06.213678', '2024-04-11 22:14:42.000000'),
('ed0b96ccc6ed1de0ec915cc07bcf27', 'Rajesh M.', 'I\'ve been a regular at Curry Heaven for months, and each visit feels like coming home to a warm embrace of flavors and hospitality. From their aromatic biryanis to the indulgent desserts, every bite is a testament to their dedication to excellence. It\'s more than just a meal; it\'s an experience I cherish.\r\nRajesh M.', 'image-1712888100581-757002392.png', '5', '2024-04-11 22:12:38.631296', '2024-04-11 22:15:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `FK_c04410dbd3ada21f9bd3e4514e8` (`foodId`),
  ADD KEY `FK_158f0325ccf7f68a5b395fa2f6a` (`userId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `FK_ca525ca0026c745ead794e7d301` (`userId`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `FK_f08c602e9e888ed83fb8be5c3d2` (`categoryId`),
  ADD KEY `FK_842658c915f965001e16b7bdec2` (`subCategoryId`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `FK_b1c743116c0cd298957641b7716` (`pickUpId`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `FK_32bee105d7ad0a93778e739f702` (`foodId`),
  ADD KEY `FK_5ee6f52b75da98a7fc5db0e6577` (`deliveryId`),
  ADD KEY `FK_d78303da2fa51a2354c97974273` (`userId`);

--
-- Indexes for table `pick_up`
--
ALTER TABLE `pick_up`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `subCategory`
--
ALTER TABLE `subCategory`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `FK_e84f5e6499f4f3e12aef86d6c3f` (`categoryId`);

--
-- Indexes for table `table_book`
--
ALTER TABLE `table_book`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK_158f0325ccf7f68a5b395fa2f6a` FOREIGN KEY (`userId`) REFERENCES `customer` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c04410dbd3ada21f9bd3e4514e8` FOREIGN KEY (`foodId`) REFERENCES `food` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD CONSTRAINT `FK_ca525ca0026c745ead794e7d301` FOREIGN KEY (`userId`) REFERENCES `customer` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `FK_842658c915f965001e16b7bdec2` FOREIGN KEY (`subCategoryId`) REFERENCES `subCategory` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_f08c602e9e888ed83fb8be5c3d2` FOREIGN KEY (`categoryId`) REFERENCES `category` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_b1c743116c0cd298957641b7716` FOREIGN KEY (`pickUpId`) REFERENCES `pick_up` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `FK_32bee105d7ad0a93778e739f702` FOREIGN KEY (`foodId`) REFERENCES `food` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_5ee6f52b75da98a7fc5db0e6577` FOREIGN KEY (`deliveryId`) REFERENCES `delivery_address` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_d78303da2fa51a2354c97974273` FOREIGN KEY (`userId`) REFERENCES `customer` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subCategory`
--
ALTER TABLE `subCategory`
  ADD CONSTRAINT `FK_e84f5e6499f4f3e12aef86d6c3f` FOREIGN KEY (`categoryId`) REFERENCES `category` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
