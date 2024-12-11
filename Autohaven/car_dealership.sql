-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 07:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_dealership`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(11) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `speed` varchar(256) NOT NULL,
  `mileage` varchar(256) NOT NULL,
  `battery` tinytext NOT NULL,
  `fuel` varchar(256) NOT NULL,
  `total_run` varchar(256) NOT NULL,
  `gear` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `car_type` varchar(256) NOT NULL,
  `stock` tinyint(4) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `manufacturer`, `model`, `price`, `condition`, `phone`, `email`, `speed`, `mileage`, `battery`, `fuel`, `total_run`, `gear`, `image`, `car_type`, `stock`, `quantity`) VALUES
(25, 'Mazda', '370z', '1500000', 'Brand New', '09501449860', 'dazzly.moneda1@gmail.com', '250', '0', 'OK', 'Gasoline', '0', '6-speed Manual', 'Carnissan_370z.jpg', 'Sports', 10, 10),
(26, 'Mercedes-Benz', 'A-class 2020', '3200000', 'Brand New', '09501449860', 'dazzly.moneda1@gmail.com', '240', '0', 'OK', 'Gasoline', '0', '7- speed Automatic', 'CarAclass.jpg', 'Regular', 5, 5),
(27, 'BMW', '2-series 2018', '2600000', 'Brand New ', '09501449860', 'dazzly.moneda1@gmail.com', '230', '0', 'OK', 'Gasoline', '0', '8-speed Automatic', 'Carbmw2series.jpg', 'Sports', 7, 7),
(28, 'BMW', 'M2 sedan', '5500000', 'Brand New', '09501449860', 'dazzly.moneda1@gmail.com', '280', '0', 'OK', 'Gasoline', '0', '7-speed Dual-Clutch Automatic', 'Carbmwsedan.jpg', 'Regular', 12, 12),
(29, 'Chevrolet', 'Camaro 2019', '3800000', 'Brand New', '09501449860', 'dazzly.moneda1@gmail.com', '290', '0', 'OK', 'Gasoline', '0', '10-speed Automatic', 'Carcamaro.jpg', 'Sports', 4, 4),
(52, 'Stellantis', 'RAM 1500 Rebel', '3000000', 'Brand New', '09501449860', 'dazzly.moneda1@gmail.com', '190', '0', 'OK', 'Gasoline', '0', '8-speed Automatic', 'CarCarram.jpg', 'Off road', 1, 1),
(53, 'Lamborghini', 'Huracán', '13000000', 'Brand New', '', '', '325', '0', 'OK', 'Gasoline', '0', '7-speed Dual-Clutch Automatic', 'CarCarhuracan.jpg', 'Sports', 3, 3),
(54, 'Nissan', 'GT-R R35', '7500000', 'Brand New', '', '', '315', '0', 'OK', 'Gasoline', '0', '6-speed Dual-Clutch Automatic', 'CarCargtr35.jpg', 'Sports', 2, 2),
(55, 'Toyota ', 'Prius', '1500000', 'Brand New', '', '', '180', '0', 'OK', 'Gasoline', '0', 'CVT ', 'CarCarprias.jpeg', 'Regular', 7, 7),
(56, 'Ford ', 'Raptor', '4200000', 'Brand New', '', '', '180', '0', 'OK', 'Diesel', '0', '10-speed Automatic', 'CarCarraptor.jpg', 'Off road', 5, 5),
(57, 'Tesla ', 'Model S', '6200000', 'Brand New', '', '', '250', '0', 'OK', 'Electric', '0', 'Single-speed Transmission', 'CarCarteslaModelS.jpg', 'Regular', 4, 4),
(58, 'Toyota', 'Supra', '5500000', 'Brand New', '', '', '250', '0', 'OK', 'Gasoline', '0', '8-speed Automatic', 'CarCarsupra.jpg', 'Sports', 0, 3),
(60, 'Jeep', 'Wrangler', '3500000', 'Brand New', '', '', '180', '0', 'OK', 'Diesel', '0', '8-speed Automatic', 'CarCarwrangler.jpg', 'Off road', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `product_id` bigint(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `product_model` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `product_image` varchar(256) NOT NULL,
  `product_id_2` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `image1` varchar(256) NOT NULL,
  `image2` varchar(256) NOT NULL,
  `image3` varchar(256) NOT NULL,
  `image4` varchar(256) NOT NULL,
  `image5` varchar(256) NOT NULL,
  `image6` varchar(256) NOT NULL,
  `image7` varchar(256) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `id`) VALUES
('Gallaryb6252dbd054d2f02b45a857741e58cf7.jpg', 'GallaryBronco-Two-Door.jpg', 'gallary1.jpeg', 'GallaryThoughtxc7ygvpaltbng0ix3bxp.jpg', 'GallaryThoughtrocket-bunny-gtr-1.jpg', 'gallary9.jpg', 'gallary10.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_thoughts`
--

CREATE TABLE `my_thoughts` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_thoughts`
--

INSERT INTO `my_thoughts` (`id`, `title`, `body`, `image`, `create_time`, `tag`) VALUES
(4, 'PRF & F Toyota Supra mk4', 'The Toyota Supra Mk4, a cultural icon in the automotive world, gained immense fame due to its remarkable performance and timeless design. Popularized by the \"Fast and Furious\" franchise, the Supra Mk4 is renowned for its 2JZ-GTE engine, a twin-turbo inline-six that offers extraordinary tuning potential. Its sleek aesthetics and racing legacy have cemented its position as one of the most sought-after sports cars, loved by car enthusiasts worldwide.', 'Thoughtb6252dbd054d2f02b45a857741e58cf7.jpg', '2023-07-30 12:27:25', 'Supra'),
(5, 'Why everyone love HONDA s2000', 'The Honda S2000 is a modern classic revered for its lightweight design, high-revving engine, and superb handling. Introduced to celebrate Honda\'s 50th anniversary, the S2000 features a 2.0L naturally aspirated engine that delivers thrilling performance and a unique driving experience. Its open-top design, precise six-speed manual transmission, and reliability make it a beloved choice among driving purists.\n\n', 'ThoughtaXvQZwP_460s.jpg', '2023-07-30 12:31:31', 'S2000'),
(6, 'Land Rover Defender V8 (2018) Features, Design, Driving', 'The 2018 Land Rover Defender V8 combines rugged capability with luxury. Known for its off-road prowess, the Defender V8 is powered by a robust 5.0L V8 engine, delivering exceptional power on and off the road. The redesigned interior offers modern comforts while retaining its classic utilitarian charm. It’s the perfect blend of heritage and innovation, appealing to adventurers and luxury SUV enthusiasts alike.', 'Thoughtmaxresdefault.jpg', '2023-07-30 19:50:54', 'Defender'),
(7, 'The New 2021 Ford Bronco Isn\'t Just an SUV, It\'s a Lifestyle', 'The 2021 Ford Bronco redefines the SUV category with its rugged design and off-road capabilities. With features like removable doors and roof, advanced 4x4 systems, and innovative trail technology, the Bronco is designed for outdoor enthusiasts. It brings a nostalgic touch while being a modern powerhouse, offering versatility for daily drives and adventurous terrains.', 'ThoughtBronco-Two-Door.jpg', '2023-07-30 19:55:25', 'Bronco'),
(8, 'GM is Reviving \"Hummer\" as New Electric Pickup', 'General Motors has reimagined the iconic Hummer as an all-electric pickup truck, signaling a bold step toward sustainability. The new Hummer EV boasts impressive specs, including over 1,000 horsepower and cutting-edge off-road capabilities. Its futuristic design, combined with features like \"Crab Mode,\" underscores GM\'s commitment to innovation while honoring the Hummer\'s rugged legacy.', 'Thoughtxc7ygvpaltbng0ix3bxp.jpg', '2023-07-30 19:57:59', 'Hummer'),
(9, 'Wide Body Rocket Bunny Nissan GT-R 35 V2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n<br> <br>\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites simes on purpose (injected humour and the like).The Rocket Bunny Nissan GT-R R35 V2 takes the supercar\'s aesthetics and performance to a new level. With an aggressive wide-body kit, enhanced aerodynamics, and a striking stance, this version of the GT-R stands out both on the streets and the track. The iconic VR38DETT engine and its tuning potential further make it a dream for car enthusiasts looking for power and style.', 'Thoughtrocket-bunny-gtr-1.jpg', '2023-07-30 20:07:25', 'Rocket bunny'),
(10, ' 2018 Dodge Demon vs Hellcat Challenger - Major Differences', 'The Dodge Demon and Hellcat Challenger are beasts in their own right, but the 2018 comparison highlights distinct differences. The Demon, built for drag racing, features a supercharged 6.2L HEMI engine producing 840 horsepower, making it the fastest production car in its class. The Hellcat, while slightly less extreme, offers a balance of track and street performance with 707 horsepower, catering to adrenaline junkies and daily drivers alike.\n\n', 'ThoughtDodge-Demon-vs-Hellcat-Challenger.jpg', '2023-07-30 20:09:55', 'Dodge'),
(11, 'Car Comparison Tests - How To Compare Cars', 'Comparing cars requires a focus on critical factors like performance, comfort, safety, and value for money. Car comparison tests evaluate specifications, driving experiences, and technological features to help buyers make informed decisions. By analyzing key attributes such as fuel efficiency, interior quality, and reliability, these tests simplify the complex process of choosing the right car for diverse needs.\n\n\n\n\n\n\n', 'Thoughtdw-burnett-supras-finals-6-1595000408.jpg', '2023-07-30 20:12:09', 'Comparison');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `postal_code` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address`, `city`, `phone`, `postal_code`) VALUES
(10, 4, 'Purok 6 #356', 'Pilar Sorsogon', '09501449860', '4714'),
(11, 12, 'PAGASA ', 'Daraga', '09684177753', '4501');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL DEFAULT -1,
  `product_id2` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_id2`) VALUES
(27, 10, 53, -1),
(28, 11, 57, -1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `manufacturer`, `model`, `price`, `type`, `image`, `condition`, `email`, `phone`, `quantity`) VALUES
(3, 'Toyota', '2.0L Turbo Charger', '45000', 'Automotive Component', 'ProductTarboCharger2.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(4, 'General Motors Spare Parts', 'Compatible with GM Vehicles', '20000', 'Automotive Spare Parts', 'ProductspareParts_.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(6, 'GDMs', 'Hilux 2.8L Crankshaft', '35000', 'Automotive Engine Component\n', 'ProductHilux_crankshaft.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(9, 'Nissan', '1.6L Turbo Charger', '40000', 'Automotive Component', 'ProductTurboCharger.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(10, 'General Motors', 'Suspension Still Bushes', '7500', 'Automotive Suspension Component', 'ProductstillBushes.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(11, 'GDMs', 'Cumming Engine Parts', '60000', 'Automotive Engine Component', 'ProductcummingEngineParts.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(12, 'Toyota', '2.4L Crank shaft', '38000', 'Automotive Engine Component', 'Productcrankshaft.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(13, 'General Motors', 'OME', '25000', 'Automotive Component', 'ProductOME.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(14, 'Rubicon Motors', 'Water pump for 2.5L Engine', '12500', 'Automotive Engine Cooling Component', 'ProductwaterPump.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20),
(15, 'General Motors', 'Tharmo State', '18000', 'Automotive Engine Cooling Component', 'ProductTharmoState.jpg', 'Brand New', 'dazzly.moneda1@gmail.com', '09501449860', 20);

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` varchar(256) NOT NULL,
  `showing` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `body`, `showing`) VALUES
(36, 'Supra Rocket bunny kit', 'The Rocket Bunny kit transformed the Toyota Supra into a fierce, eye-catching machine, with its aggressive wide-body design and sleek aerodynamic features that made it a standout on both the streets and the track.', 1),
(37, 'RX-7 tuned upto 1000hp', 'With its 1000 horsepower engine and precision tuning, the RX-7 became a beast on the road, its turbocharged rotary engine screaming as it effortlessly tore through the streets, leaving a trail of awe-struck onlookers in its wake.', 1),
(38, 'GMDs car megazine released ', 'When GMD\'s Car Magazine was released, it quickly became a must-read for car enthusiasts, showcasing the latest automotive trends, in-depth reviews, and exclusive features that captured the essence of speed, style, and innovation in the car world.', 1),
(39, 'McLaren F1 the ultimate beast', 'The McLaren F1, hailed as the ultimate beast, redefined automotive excellence with its unmatched speed, innovative design, and cutting-edge technology, effortlessly blending performance and luxury to create a true legend of the road.', 1),
(41, 'RX-7 Red beauty', 'The RX-7, with its vibrant red paint and sleek curves, was a true beauty that turned every head on the road, its rotary engine purring as it combined style and performance in a way that made it a timeless icon in the world of sports cars.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `cart` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cart`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`, `cart`) VALUES
(4, 'admin', 'admin@gmail.com', '$2y$10$4/p8lI1pQoz3pefpbkfIb.d2XJi0Y2QgFeNG7QifhCag8mCKPrugK', 1, NULL),
(11, 'zzadrst', 'dazzly.moneda1@gmail.com', '$2y$10$9u0M564W0vt98X2D2E63neJd/dhXqFg/vbmhy8bBvcoCWw94M9r9u', 1, NULL),
(12, 'LEXICAKES', 'rowskitty@gmail.com', '$2y$10$v8jLqiuHTgTgVCaLBuLx2.VOEWWRVezz41UcaF1wXo1BJp7akEtWa', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_1` (`user_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_thoughts`
--
ALTER TABLE `my_thoughts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_ibfk_2` (`order_id`),
  ADD KEY `order_items_ibfk_3` (`product_id`),
  ADD KEY `product_id2` (`product_id2`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_thoughts`
--
ALTER TABLE `my_thoughts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
