-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2025 at 05:34 AM
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
-- Database: `travel_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `title` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img_main` varchar(100) DEFAULT NULL,
  `img_gallery1` varchar(100) DEFAULT NULL,
  `img_gallery2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`title`, `id`, `name`, `subtitle`, `description`, `img_main`, `img_gallery1`, `img_gallery2`) VALUES
('', 1, 'Niagara Falls', 'Experience Canada’s most famous natural wonder\r\n', 'Niagara Falls is one of Ontario\'s most breathtaking natural wonders, attracting millions of visitors every year.', 'niagara_main.jpg', 'niagara_1.jpg', 'niagara_2.jpg'),
('Nature’s Haven on Lake Huron', 2, 'Pinery Provincial Park', 'Discover serenity along Lake Huron’s dunes and pine forests.', 'Explore sand dunes, trails, and a stunning beach in one of Ontario’s best-kept natural reserves.', 'pinery_main.jpg', 'pinery1.jpg', 'pinery2.jpg'),
('Sun, Sand, and Sunset Fun', 3, 'Sauble Beach', 'Your summer escape to sun and play.', 'One of Ontario’s longest freshwater beaches offering relaxing views and vibrant summertime fun.', 'sauble_main.jpg', 'sauble1.jpg', 'sauble2.jpg'),
('A Geological Wonder', 4, 'Flower Pot Island', 'Explore nature’s art in stone.', 'Famous for its natural rock pillars and turquoise waters, this island is a must-visit in Tobermory.', 'flowerpot_main.jpg', 'flowerpot1.jpg', 'flowerpot2.jpg'),
('The Heart of Cottage Country', 5, 'Muskoka', 'Lakeside charm and forested escapes await.', 'Escape to tranquil lakes, forest-lined resorts, and breathtaking autumn colors.', 'muskoka_main.jpg', 'muskoka1.jpg', 'muskoka2.jpg'),
('A River Full of Secrets', 6, '1000 Islands', 'Islands, castles, and river tales.', 'Cruise along this historic waterway filled with charming islands and castles.', '1000islands_main.jpg', '1000islands1.jpg', '1000islands2.jpg'),
('Small Town, Big Adventure', 7, 'Elora', 'Gorges, galleries, and charm.', 'Explore the Elora Gorge, artsy downtown shops, and riverside hikes.', 'elora_main.jpg', 'elora1.jpg', 'elora2.jpg'),
('Ride into the Wild', 8, 'Agawa Canyon', 'Take a scenic rail through Northern Ontario.', 'Hop aboard the Agawa Canyon Train Tour and witness Ontario’s raw northern beauty.', 'agawa_main.jpg', 'agawa1.jpg', 'agawa2.jpg'),
('Alpine Adventure All Year Round', 9, 'Blue Mountain', 'Ski, spa, and stay in luxury.', 'Year-round resort destination for skiing, hiking, and spa relaxation.', 'bluemountain_main.jpg', 'bluemountain1.jpg', 'bluemountain2.jpg'),
('Wild Ontario Awaits', 10, 'Algonquin Park', 'Canoe, camp, and connect with nature.', 'Ontario’s oldest provincial park, perfect for canoeing and wildlife spotting.', 'algonquin_main.jpg', 'algonquin1.jpg', 'algonquin2.jpg'),
('Wine Country Meets the Water', 11, 'Prince Edward County', 'Sip and stroll through vineyard-lined roads.', 'A charming region known for wineries, beaches, and art galleries.', 'pec_main.jpg', 'pec1.jpg', 'pec2.jpg'),
('Theatre, Tranquility, Tradition', 12, 'Stratford', 'A stage for culture and history.', 'Home of the Stratford Festival, rich in theatre and Victorian charm.', 'stratford_main.jpg', 'stratford1.jpg', 'stratford2.jpg'),
('Freshwater Island Getaway', 13, 'Manitoulin Island', 'Nature, tradition, and the Great Lakes.', 'The world\'s largest freshwater island, rich in Indigenous culture and nature.', 'manitoulin_main.jpg', 'manitoulin1.jpg', 'manitoulin2.jpg'),
('Gateway to the 1000 Islands', 14, 'Kingston', 'History and harbor charm.', 'Historic town on Lake Ontario with Fort Henry and 1000 Islands cruises.', 'kingston_main.jpg', 'kingston1.jpg', 'kingston2.jpg'),
('Hike the Escarpment Heights', 15, 'Rattlesnake Point', 'Cliffs, forests, and scenic lookouts.', 'A scenic conservation area ideal for hiking, climbing, and picnics.', 'rattlesnake_main.jpg', 'rattlesnake1.jpg', 'rattlesnake2.jpg'),
('A Universe of Discovery', 16, 'Sudbury Science North', 'Fun meets learning in the North.', 'A hands-on science centre with exhibits, a planetarium, and IMAX dome.', 'sciencenorth_main.jpg', 'sciencenorth1.jpg', 'sciencenorth2.jpg'),
('Gateway to the Sleeping Giant', 17, 'Thunder Bay', 'Cliffs, falls, and the great northern lake.', 'Visit the Sleeping Giant, Kakabeka Falls, and hike scenic cliffs above Lake Superior.', 'thunderbay_main.jpg', 'thunderbay1.jpg', 'thunderbay2.jpg'),
('Charming Village Life', 18, 'St. Jacobs', 'Markets, crafts, and Mennonite heritage.', 'Explore Mennonite markets, antique shops, and a charming countryside village.', 'stjacobs_main.jpg', 'stjacobs1.jpg', 'stjacobs2.jpg'),
('Underground Wonder', 19, 'Bonnechere Caves', 'Step into ancient limestone tunnels.', 'Go underground to see ancient limestone cave formations near Eganville.', 'bonnechere_main.jpg', 'bonnechere1.jpg', 'bonnechere2.jpg'),
('Ontario\'s Freshwater Coastline', 20, 'Wasaga Beach', 'Sun, sand, and shoreline fun.', 'Lounge on the world\'s longest freshwater beach, just a short drive from Toronto.', 'wasaga_main.jpg', 'wasaga1.jpg', 'wasaga2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `features` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `destination_id`, `name`, `price`, `features`) VALUES
(1, 1, 'Silver', 149.99, 'Guided tour, local food tasting, access to lookout deck'),
(2, 1, 'Gold', 249.99, 'Boat tour, dinner at Skylon Tower, 1 night hotel stay'),
(3, 1, 'Platinum', 499.99, 'Luxury suite, helicopter ride, private guide, 2-night stay'),
(4, 2, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(5, 3, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(6, 4, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(7, 5, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(8, 6, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(9, 7, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(10, 8, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(11, 2, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(12, 3, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(13, 4, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(14, 5, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(15, 6, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(16, 7, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(17, 8, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(18, 2, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(19, 3, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(20, 4, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(21, 5, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(22, 6, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(23, 7, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(24, 8, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(25, 9, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(26, 10, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(27, 11, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(28, 12, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(29, 13, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(30, 14, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(31, 15, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(32, 16, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(40, 9, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(41, 10, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(42, 11, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(43, 12, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(44, 13, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(45, 14, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(46, 15, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(47, 16, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(55, 9, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(56, 10, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(57, 11, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(58, 12, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(59, 13, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(60, 14, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(61, 15, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(62, 16, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(70, 17, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(71, 18, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(72, 19, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(73, 20, 'Silver', 99.99, 'Basic guided tour, food included, and 1–2 activities.'),
(77, 17, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(78, 18, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(79, 19, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(80, 20, 'Gold', 199.99, 'Exclusive tour, destination restaurants, added attractions, 1-night hotel stay.'),
(84, 17, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(85, 18, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(86, 19, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.'),
(87, 20, 'Platinum', 399.99, 'Luxury experience: 5-star hotel stay, personal chef and guide, exclusive regional activities, and premium amenities.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
