-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2024 at 08:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshopsnearme`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL,
  `alt_phone` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `time_slot` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `workshop` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `alt_phone`, `date`, `email`, `location`, `name`, `phone`, `request`, `service`, `status`, `time_slot`, `vehicle_type`, `workshop`) VALUES
(1, '', '2024-09-20', 'lisyjayakumar@gmail.com', 'Trivandrum', 'lisy j', '9645400704', '', 'Engine Service', 'CONFIRMED', '8:00am-9:00am', 'Car', 'Vinod Workshop'),
(2, '', '2024-09-21', 'ammalu0202@gmail.com', 'Trivandrum', 'ahalya', '9655814525', '', 'Engine Service', 'COMPLETED', '11:00am-12:00pm', 'Car', 'Vinod Workshop'),
(3, '', '2024-09-21', 'ksremya718@gmail.com', 'Trivandrum', 'Remya', '9654475552', '', 'Engine Service', 'DECLINED', '12:00pm-1:00pm', 'Car', 'Vinod Workshop'),
(4, '', '2024-09-21', 'ksremya718@gmail.com', 'Trivandrum', 'Remya', '9654475552', '', 'Engine Service', 'COMPLETED', '2:00pm-3:00pm', 'Bike', 'Vinod Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `callback_request`
--

CREATE TABLE `callback_request` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `vehicle_details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `rating`, `review`) VALUES
(1, 'fw', 4, 'dad '),
(2, 'fw', 4, 'dad '),
(3, 'fw', 4, 'dad '),
(4, 'fw', 4, 'dad '),
(5, 'fw', 4, 'dad '),
(6, 'fw', 4, 'dad '),
(7, 'lisy', 2, 'good'),
(8, 'lisy', 2, 'good'),
(9, 'lisy', 2, 'good'),
(10, 'lisy', 2, 'good'),
(11, 'lisy', 4, '13'),
(12, 'lisy', 4, '13'),
(13, 'lisy', 4, '13'),
(14, 'lisy', 4, '13'),
(15, 'lisy', 4, '13'),
(16, 'lisy', 4, '123'),
(17, 'lisy', 4, '123'),
(18, 'lisy', 4, '123'),
(19, 'lisy', 4, '123'),
(20, 'cicili', 4, '123'),
(21, 'cicili', 4, '123'),
(22, 'lisy', 5, '123'),
(23, 'lisy', 5, '123'),
(24, 'lisy', 5, '123'),
(25, 'lisy', 4, '123'),
(26, 'lisy', 4, '123'),
(27, 'lisy', 4, '123');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `first_name`, `last_name`, `password`, `phone`) VALUES
(1, 'lisyj@gmail.com', 'LISY', 'j', '$2a$10$amvZa9IKD4FBQSy/Uka.yuy8kwTjpSBJbQn0dOJeQVgUoSULW2j5G', '123');

-- --------------------------------------------------------

--
-- Table structure for table `username`
--

CREATE TABLE `username` (
  `id` bigint(20) NOT NULL,
  `closing_time` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `map_location` varchar(255) DEFAULT NULL,
  `opening_days` varchar(255) DEFAULT NULL,
  `opening_time` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `username`
--

INSERT INTO `username` (`id`, `closing_time`, `contact_number`, `image`, `location`, `map_location`, `opening_days`, `opening_time`, `password`, `username`) VALUES
(4, '07:00', '9724901286', 'ba67a924-7746-4484-931a-91ef9ca92d80.png', 'Neyyattinkara Road Kakkavila, Thiruvananthapuram', 'https://maps.app.goo.gl/9fMcSJfhjWxj1UZ26', 'Monday to Sunday', '07:00', 'mycar@97', 'My Car Motors and Spares'),
(5, '07:30', '7947141546', '06f973f0-8966-499b-8911-eb0236388288.png', ' Thiruvananthapuram', 'https://maps.app.goo.gl/9fMcSJfhjWxj1UZ26', 'Monday to Sunday', '08:30', 'mytvs@79', 'My TVS Automobile Solutions Ltd'),
(6, '19:00', '8401873091', 'f9179c0d-9f34-419d-9a4f-70a56aa50445.png', 'Ambalathara, Thiruvananthapuram', 'https://maps.app.goo.gl/6sRCZCEatkaCVZtV9', 'Monday to Saturday', '10:00', 'rvs@84', 'RVS MOTO HUB'),
(7, '07:00', '7490028201', 'f864e648-c23f-4b0c-be94-2c9a4452cf3a.png', 'Peroorkkada, Thiruvananthapuram', 'https://maps.app.goo.gl/VkVzfvzzndjT6WEU9', 'Monday to Sunday', '08:00', 'moto@74', 'Moto Lab'),
(8, '06:00', '9054453952', '4fc05a53-82af-46fb-ba86-b6c8b2dc5a3d.png', 'Anayara, Thiruvananthapuram', 'https://maps.app.goo.gl/pJRCv1LsLedmMTmx9', 'Monday to Saturday', '09:00', 'mtech@90', 'M Tech Motors '),
(9, '05:30', '7942680953', '23ecfdfb-710f-4d2d-ac34-1c5274049f5f.png', 'Pangappara, Thiruvananthapuram', 'https://maps.app.goo.gl/FimyywnqUzhNSkfc7', 'Monday to Saturday', '09:00', 'car@79', 'Car Cardiac Care'),
(10, '07:00', '9054772942', '9b024808-ae75-4df4-829b-2226b963536d.png', 'Muttada, Thiruvananthapuram', 'https://maps.app.goo.gl/VJXg6SJsyyVSiTYs7', 'Monday to Sunday', '08:00', 'real@90', 'Real Touch Automobiles'),
(11, '06:04', '7947137888', '46ce094a-683e-4c46-b3a9-5668ce86eeb9.png', 'Kowdiar, Thiruvananthapuram ', 'https://maps.app.goo.gl/T1GWdgyWHTfe7bcQA', '24 Hours', '09:30', 'imperial@79', 'Imperial'),
(12, '', '840116628', 'f879dd95-70a0-4f30-9479-3218ca719692.png', 'Maruthankuzhi, Thiruvananthapuram', 'https://maps.app.goo.gl/cF9bxR2MSS9kZ1Hq9', '24 Hours', '', 'sm@84', 'Sm Car Beauty Clinic'),
(13, '06:00', '9054453952', '5990f6f8-6adc-4c2e-9c51-074ee708e445.png', 'Kochuveli, Thiruvananthapuram', 'https://maps.app.goo.gl/miwtA3PcdW7HqPmf8', 'Monday to Saturday', '09:00', 'kelester@90', 'Kelester Engineers'),
(14, '07:00', '9447324941', 'fe9bdb85-6fa2-4a63-a92c-7f62a5ad403e.jpg', 'Bakery Junction, Vanross, Palayam, Thiruvananthapuram', 'https://maps.app.goo.gl/aec29uwhbeadad4q7', 'Monday to Saturday', '09:00', 'kaila@94', 'Kaila\'s two Wheeler Workshop'),
(15, '07:00', '8460409558', 'ccb44042-1a16-4494-8cb2-05d9bbde9c22.jpg', 'Vanross, Palayam, Thiruvananthapuram', 'https://maps.app.goo.gl/wvU1QEM9nTRyrTHH9', 'Monday to Saturday', '09:00', 'elegant84', 'Elegant Workshop'),
(17, '08:30', '9048114136', '60049d10-04a3-4e80-bc4a-4aa5f35d9f25.png', 'Prasanthi Nagar, Pazhavangadi, Thiruvananthapuram', 'https://maps.app.goo.gl/EBj6trfvrxajYsNb8', 'Monday to Sunday', '09:00', 'sree@90', 'Sree padam Two wheeler Workshop'),
(18, '07:00', '7490028201', 'eaa446f7-bf7d-4ced-987c-d998e0cded35.jpg', 'Nalumukku, Palkulangara, Thiruvananthapuram', 'https://maps.app.goo.gl/zC6HJgB6yK5qTnLC7', 'Monday to Sunday', '07:00', 'siva@74', 'Sivakumar\'s workshop'),
(19, '06:00', '9054453952', '2c42d522-0770-4fcc-941b-c31bc74ac65b.jpg', 'Plamoodu - Thekkamoodu Rd, Pattom, Thiruvananthapuram', 'https://maps.app.goo.gl/zC6HJgB6yK5qTnLC7', 'Monday to Saturday', '09:30', 'mtech@90', 'M Tech Motors'),
(20, '06:00', '9747338018', 'f8ff1afc-a3ed-4f8d-aa11-2ba751c2a134.jpg', 'Nalumukku, Kaithamukku, Thiruvananthapuram', 'https://maps.app.goo.gl/YS3LZxhJgTaEegF49', 'Monday to Sunday', '06:00', 'chandra@97', 'Chandran\'s Workshop'),
(21, '06:00', '9054772942', '93afcad7-584e-4fe8-b8c8-588c727ce1f5.png', 'Mahathma gandhi smaraka gradnasala, Pettah, Thiruvananthapuram', 'https://maps.app.goo.gl/Bg7Tcunu2dt3gP4F8', 'Monday to Sunday', '10:00', 'kannan@90', 'Kannan Car Workshop'),
(22, '08:00', '9895758037', 'f53dbb17-1c21-4c72-a772-0f3379b74301.jpg', 'Aryankuzhi, Kamaleshwaram, Thiruvananthapuram', 'https://maps.app.goo.gl/W3Tju78PYhVaUJ3d7', 'Monday to Sunday', '09:00', 'vinod@98', 'Vinod Workshop'),
(23, '06:00', '8943344334', '4335f66e-c98a-4916-b0b3-cfe487ff1a6e.jpg', 'Thycaud,Jagathy, Thiruvananthapuram', 'https://maps.app.goo.gl/TvXgcJtvu4wfmcYM7', 'Monday to Saturday', '09:00', 'mysyara@89', 'MySyara - Car Care on your schedule '),
(24, '07:00', '8043355334', '24ff1486-fe16-47ff-947d-9eee719e932e.jpg', 'Kazhakkuttom, Thiruvananthapuram', 'https://maps.app.goo.gl/jCJdkg4bX34vtzfu7', 'Monday to Saturday', '09:00', 'gopans@80', 'Gopan\'s Bicycles Service'),
(25, '07:30', '7947427244', '52b1c113-e2e5-4290-9e72-3cc9603069d4.png', 'Kazhakkoottam, Thiruvananthapuram', 'https://maps.app.goo.gl/pchZVfRGABDMEPsy9', 'Monday to Saturday', '09:00', 'friends@79', 'Friends Auto Electrical works'),
(26, '08:00', '989582328', 'd40deffe-f462-40b3-a315-581f7851793d.jpg', 'Kazhakkuttom, Kaniyapuram, Thiruvananthapuram', 'https://maps.app.goo.gl/7SQasuDf58WMPVeEA', 'Monday to Sunday', '07:00', 'perfect@98', 'Perfect Maruti Service Center'),
(27, '09:00', '7490028201', '9fa3c9e7-c22d-4831-8efe-ec201b7dab81.jpg', 'Kazhakkuttom, Thiruvananthapuram', 'https://maps.app.goo.gl/8LUj3FzXc82rpjeU6', 'Monday to Sunday', '08:00', 'surabhi@74', 'Surabhi Autos and two wheeler workshop'),
(28, '07:30', '9048990009', 'e964e285-a903-4ee1-ad23-7c9ec82df3de.jpg', 'Vetturoad, Kazhakkuttom, Thiruvananthapuram', 'https://maps.app.goo.gl/PwJe3M5dYgy4Wv3fA', 'Monday to Saturday', '09:00', 'concept@90', 'Concept Colours'),
(29, '07:00', '9490028101', 'eb92b523-750e-48dc-aaa3-ea141154e899.jpg', 'Kazhakuttam, Vadakkumbhagam, Thiruvananthapuram', 'https://maps.app.goo.gl/HknG7czmMKexnMtV8', 'Monday to Saturday', '10:00', 'sbtwo@94', 'Sb Two Weeler Workshop'),
(30, '07:00', '9446111766', '70648c90-f18c-45a3-b409-fc60cb634d57.png', 'Kazhakkuttom,Vadakkumbhagam,Thiruvananthapuram', 'https://maps.app.goo.gl/gLqNxwB9iSnBhNpx5', 'Monday to Sunday', '09:30', 'kumar@94', 'Kumar Auto Works'),
(31, '06:00', '8137864987', 'a4d97af6-7988-4dd9-a7a0-1a27ea790583.jpg', 'Attingal, Thiruvananthapuram', 'https://maps.app.goo.gl/ToGdqMiyC3UrPmXk8', 'Monday to Sunday', '08:30', 'friends@81', 'Friends Automobiles And Industrial Workshop'),
(32, '07:00', '9447401631', 'f51e545b-5d41-421a-9676-e66379ad6aa0.jpg', 'Palace Rd, Attingal,Thiruvananthapuram', 'https://maps.app.goo.gl/HEHdgcJ299xk4xr9A', 'Monday to Saturday', '09:00', 'saras@94', 'Saras Car A/C Workshop'),
(33, '08:00', '9447272068', '18ee38f6-5351-4c52-b0e7-77b98268a3ce.jpg', 'Attingal, Thiruvananthapuram', 'https://maps.app.goo.gl/VzbZn6JRW3ZEusdRA', 'Monday to Saturday', '08:00', 'ganga@94', 'Ganga Two Wheeler Workshop'),
(34, '10:00', '9095648102', '8bb70975-9612-4a53-8b55-c6d632d990d2.jpg', 'Attingal, Koonthalloor, Thiruvananthapuram ', 'https://maps.app.goo.gl/NeEWBPUZG3ifrULr8', 'Monday to Sunday', '09:00', 'saroj@90', 'Saroj Two Wheeler Workshop'),
(35, '07:30', '7356487875', '537abf03-9d56-4fc3-b6d7-bf32895b2b98.jpg', 'Thiyatar munnumuku,Koonthalloor,Attingal, Thiruvananthapuram ', 'https://maps.app.goo.gl/aCKrMqzw6DZeDZpJA', 'Monday to Saturday', '08:30', 'mariyam@73', 'Mariyam all car service center'),
(36, '07:00', '8590750055', '047c50da-1d12-4271-94af-55ced79b64c0.jpg', 'Near Dreams Theatre, Moonnumukku,Koonthalloor,Attingal, Thiruvananthapuram ', 'https://maps.app.goo.gl/oriSRKqxEYBPQ5Ck9', 'Monday to Saturday', '09:00', 'marshal@85', 'The Marshal Garage'),
(37, '09:30', '9995900801', '9a4fab30-947a-4971-90b0-c067c108e850.png', 'Korani,Attingal, Thiruvananthapuram ', 'https://maps.app.goo.gl/8Y1jhD5Es4Pwsdgk6', 'Monday to Saturday', '09:00', 'friday@99', 'Friday Club'),
(38, '07:00', '7947412353', '1cfbe8ee-60dd-4715-a553-c33dd63f8d7e.png', 'Janatha Mukku Railway Cross, Varkala Thiruvananthapuram', 'https://maps.app.goo.gl/TFAkLSd6RH1Fi5px6', 'Monday to Sunday', '08:00', 'ROYAL@79', 'Royal Autox'),
(39, '06:00', '7947420806', '44db7d47-5dcd-46b2-9fdc-be8c466daf00.png', 'Varkala,Thiruvananthapuram ', 'https://maps.app.goo.gl/EQeRSRqSkamNgzSK7', 'Monday to Saturday', '09:00', 'sree@79', 'Sree Mookambika Two Wheeler Works'),
(40, '06:00', '7947428485', '1062da8b-3c2a-48b2-b5e0-5031fd2bc96f.png', 'Punnamoodu, Varkala Thiruvananthapuram', 'https://maps.app.goo.gl/ysFSPN7dkztbij939', 'Monday to Sunday', '10:00', 'mstwo@79', 'MS Two Wheeler Works'),
(41, '06:00', '7947423383', '523656e2-17d9-4953-96c4-262a6740a352.png', 'Palachira,varkala, Thiruvananthapuram', 'https://maps.app.goo.gl/iFnerREFruzrQkC69', 'Monday to Saturday', '09:00', 'marikar@79', 'Marikar Honda Service Center'),
(42, '07:00', '7942699861', '36f090b8-2279-4c5a-b629-9ff613894710.png', 'Palachira,Varkala,Thiruvananthapuram', 'https://maps.app.goo.gl/iFnerREFruzrQkC69', 'Monday to Friday', '08:00', 'petrol@79', 'Petrol Issues Garage'),
(43, '07:00', '7947118024', '3e1d2ddd-cafc-4f12-be02-adab87433bbe.png', ' Edava, Varkala, Thiruvananthapuram', 'https://maps.app.goo.gl/KigzSjDkAd1q42QBA', 'Monday to Saturday', '09:00', 'jackson@79', 'Jackson two wheeler garage'),
(44, '08:00', '9072484991', 'b09f4dfb-b592-4ca7-869c-af4d89516b55.png', 'Varkala, Thiruvananthapuram', 'https://maps.app.goo.gl/Nt1y9ckkJftaz2RX6', 'Monday to Saturday', '09:00', 'maruthy@90', 'Maruti Suzuki Authorised Service'),
(45, '07:00', '9895758037', 'cabe1f4c-34e2-4c65-8dd8-ba87c375a8ba.png', 'Jawahar Park Rd, Varkala, Thiruvananthapuram', 'https://maps.app.goo.gl/XHkbpR3EidQLs24R8', 'Monday to Sunday', '08:00', 'radhakrishna@98', 'Radhakrishna Motor Workshop'),
(47, '06:00', '7942684355', '7361c07f-ec3a-455a-b78e-50bb1b112beb.png', 'Kilimanoor , Thrivandrum', 'https://maps.app.goo.gl/rK7a7X4KjQ24eJiZA', 'Monday to Saturday', '08:00', 'indus@79', 'Indus Motors'),
(48, '05:00', '7947415853', '7f6cb609-09f5-4e60-bb1d-7fb77b18e812.png', 'Venjaramoodu, Thiruvananthapuram', 'https://maps.app.goo.gl/pcCBn4zHo23fPAr99', 'Monday to Saturday', '08:00', 'tvs@79', 'T V S Car Repair'),
(49, '06:00', '7947118573', 'cefe2556-dbd9-4622-b571-1c859e5d8e37.png', 'Venjaramoodu,Thiruvananthapuram', 'https://maps.app.goo.gl/pcCBn4zHo23fPAr99', 'Monday to Sunday', '06:00', 'hk@79', 'H.K.Motors'),
(50, '06:00', '7947112369', '9a8a129c-e962-449a-a8b5-a6bd0e2168a4.png', 'Venjaramoodu,Thiruvananthapuram', 'https://maps.app.goo.gl/3NxesSRuFTtqStHi9', 'Monday to Saturday', '08:00', 'venus@79', 'Venus Motors'),
(51, '05:00', '8590925723', '6a1c9d4f-9faa-4960-a5af-3b499247ed13.png', 'Venjaramoodu, Thiruvananthapuram', 'https://maps.app.goo.gl/Br6sCA2cqfjUDvMY8', 'Monday to Friday', '07:00', 'tata@85', 'Tata Motors'),
(52, '06:00', '8590925723', '00b21352-b6fe-44d4-9d59-689ff6cab131.png', 'Venjaramoodu, Thiruvananthapuram', 'https://maps.app.goo.gl/boLxcLpgBbRGZWv1A', 'Monday to Saturday', '06:00', 'vineeth@85', 'Vineeth Paints'),
(53, '09:30', '7942680796', '68aa7f84-349c-4842-a90a-08ce0606f7cb.png', 'Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/4PTr2HTae2Z7bTCr6', 'Monday to Sunday', '09:00', 'royal@79', 'Royal Drive Car Accessories'),
(54, '07:00', '7942691272', 'e8e8050b-a770-493a-afc1-4ca729d0be67.png', 'Pothencode, Thiruvananthapuram ', 'https://maps.app.goo.gl/8K81H3pKz7SDVzjt6', 'Monday to Saturday', '09:00', 'german@79', 'German Motors'),
(55, '09:00', '7942692415', '78ec9a30-8507-4dfe-b971-73b039cec8dc.png', 'Kattayikkonam, thiruvananthapuram', 'https://maps.app.goo.gl/aJLFHNuuxMh2c5LS9', 'Monday to Sunday', '09:00', 'vinayaka@79', 'Vinayaka Service Station'),
(56, '07:00', '7942693547', 'c234e360-67f9-4c81-91a8-755b92843366.png', 'Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/cGqdGZfUA2bd71nE6', 'Monday to Sunday', '07:00', 'germans@79', 'Germantech Skoda Service Center'),
(57, '07:00', '7942679904', 'de2609d0-b272-49a0-b5a8-653137e4c36e.png', 'Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/Dk22u31GXmjGnA9z8', 'Monday to Saturday', '09:00', 'ds@79', 'D S Maruti Service Center'),
(58, '05:00', '7947418386', 'cf6b463c-12f7-42e9-ba77-2db93a70bea5.png', 'Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/YQtpdrdKrMChFPUB9', 'Monday to Saturday', '08:00', 'aaram@79', 'Aaramam Service Station'),
(59, '09:45', '7947418386', 'a4004390-7165-4b4f-b4f4-b75111c8c7fa.png', 'Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/ug932VNu6wwR8cbK8', 'Monday to Sunday', '06:30', 'vision@79', 'Vision Auto Center'),
(60, '07:00', '7947117660', '0d51903a-50e6-4fa6-8c60-951e9de72893.png', 'Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/v4zpomyffaHXNtz18', 'Monday to Friday', '08:00', 'car@60', 'Car Cool Car Ac And Auto Electrical Works'),
(61, '07:00', '79474111654', 'f9729a6d-8ad9-420b-922c-eb7563df2dd4.png', 'Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/iPurmZU9GdjapDyX6', 'Monday to Saturday', '09:00', 'bismi@54', 'Bismi Car Service Centre'),
(62, '10:00', '7947418386', '542c730c-f483-4dda-853f-f9518a6bf902.png', 'Melemukku, Pothencode, Thiruvananthapuram', 'https://maps.app.goo.gl/DceE7L9C7GGJtUsx7', 'Monday to Friday', '09:00', 'salamath@86', 'Salamath Service Station'),
(63, '07:00', '9633444495', '5ef07fbb-8ead-461e-bf9f-38ddc8e57666.png', 'Kovalam, Trivandrum', 'https://maps.app.goo.gl/NTwFEaq4L7uDWn4r7', 'Monday to Friday', '09:00', 'nihya@96', 'Nithya Workshop'),
(64, '05:00', '9447864177', '82dd380b-c7ff-4f98-837e-cf5c3a513084.png', 'Kovalam, Trivandrum', 'https://maps.app.goo.gl/dmTAum7WHkUFUqmW7', 'Monday to Saturday', '09:00', 'uvp@94', 'U V P Two Wheeler Works'),
(65, '06:00', '9895623303', '6447a9d8-57b4-46b4-b323-7f1c11c892a0.png', 'Amme Bhaghavathi', 'https://maps.app.goo.gl/NTwFEaq4L7uDWn4r7', 'Monday to Saturday', '08:00', 'amma@98', 'Amme Bhaghavathi'),
(66, '09:00', '7947415304', '0479903d-3f9b-4c61-b574-2e8e3db1aadd.png', 'Vizhinajam, Trivandrum', 'https://maps.app.goo.gl/NTwFEaq4L7uDWn4r7', 'Monday to Friday', '09:00', 'shiva279', 'Shiva Sakthi Automobiles'),
(67, '08:00', '7947139616', '31995ced-e2cd-47ca-8927-fea435a3b694.png', 'Vizhinajam, Trivandrum', 'https://maps.app.goo.gl/2WqpReU5bjupamWG9', 'Monday to Saturday', '08:00', 'ambady@79', ' Ambady Auto Works'),
(68, '08:00', '9495831142', 'd0aa7fb2-bf69-4920-b34b-3de8b82c00f6.png', 'Vizhinajam, Trivandrum', 'https://maps.app.goo.gl/J7dK2f16rev21t6K8', 'Monday to Saturday', '09:00', 'siva@94', 'Siva Automobiles'),
(69, '05:00', '9349316327', 'f4253e8f-148b-4565-b591-f6c13db55bc7.png', 'Vizhinajam, Trivandrum', 'https://maps.app.goo.gl/J7dK2f16rev21t6K8', 'Monday to Friday', '10:00', 'kg@93', 'K G Auto Works');

-- --------------------------------------------------------

--
-- Table structure for table `username_services`
--

CREATE TABLE `username_services` (
  `username_id` bigint(20) NOT NULL,
  `services` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `username_services`
--

INSERT INTO `username_services` (`username_id`, `services`) VALUES
(4, 'Engine Servicing'),
(4, ' Painting Services'),
(4, 'A/C Repair'),
(5, 'Engine Servicing'),
(6, 'Engine Servicing'),
(6, 'Tyre Replacement'),
(6, 'A/C Repair'),
(7, 'Vehicle Wash'),
(7, 'Engine Servicing'),
(7, 'A/C Repair'),
(8, 'Vehicle Wash'),
(8, 'Engine Servicing'),
(8, 'Oil Change'),
(8, 'Tyre Replacement'),
(9, 'Engine Servicing'),
(9, 'Oil Change'),
(10, 'Vehicle Wash'),
(10, 'Engine Servicing'),
(12, 'Vehicle Wash'),
(12, 'Engine Servicing'),
(13, 'Vehicle Wash'),
(13, 'Engine Servicing'),
(13, ' Painting Services'),
(14, 'Engine Servicing'),
(14, 'Tyre Replacement'),
(15, 'Engine Servicing'),
(15, 'Tyre Replacement'),
(15, ' Painting Services'),
(17, 'Engine Servicing'),
(17, 'Tyre Replacement'),
(18, 'Engine Servicing'),
(18, 'Oil Change'),
(18, 'Tyre Replacement'),
(19, 'Vehicle Wash'),
(19, 'Engine Servicing'),
(19, 'Tyre Replacement'),
(20, 'Engine Servicing'),
(20, 'Oil Change'),
(21, 'Engine Servicing'),
(21, 'Oil Change'),
(22, 'Engine Servicing'),
(22, ' Painting Services'),
(22, 'A/C Repair'),
(23, 'Engine Servicing'),
(23, 'Oil Change'),
(23, 'Tyre Replacement'),
(24, 'Tyre Replacement'),
(25, 'Engine Servicing'),
(25, 'Oil Change'),
(25, 'Tyre Replacement'),
(25, ' Painting Services'),
(26, 'Vehicle Wash'),
(26, 'Engine Servicing'),
(26, 'Oil Change'),
(26, 'Tyre Replacement'),
(27, 'Engine Servicing'),
(27, 'Oil Change'),
(27, 'Tyre Replacement'),
(28, 'Vehicle Wash'),
(28, 'Engine Servicing'),
(28, 'Oil Change'),
(28, 'Tyre Replacement'),
(28, ' Painting Services'),
(28, 'A/C Repair'),
(29, 'Oil Change'),
(29, 'Tyre Replacement'),
(30, 'Engine Servicing'),
(30, 'Oil Change'),
(30, 'Tyre Replacement'),
(31, 'Vehicle Wash'),
(31, 'Engine Servicing'),
(31, 'Oil Change'),
(31, 'Tyre Replacement'),
(31, 'A/C Repair'),
(32, 'Tyre Replacement'),
(32, 'A/C Repair'),
(33, 'Engine Servicing'),
(33, 'Oil Change'),
(33, 'Tyre Replacement'),
(34, 'Vehicle Wash'),
(34, 'Engine Servicing'),
(34, 'Oil Change'),
(34, 'Tyre Replacement'),
(35, 'Vehicle Wash'),
(35, 'Engine Servicing'),
(35, 'Oil Change'),
(35, 'Tyre Replacement'),
(35, ' Painting Services'),
(35, 'A/C Repair'),
(36, 'Engine Servicing'),
(36, 'Oil Change'),
(36, 'Tyre Replacement'),
(37, 'Vehicle Wash'),
(37, 'Engine Servicing'),
(37, 'Oil Change'),
(37, 'Tyre Replacement'),
(37, ' Painting Services'),
(38, 'Vehicle Wash'),
(38, 'Engine Servicing'),
(38, 'Oil Change'),
(38, 'Tyre Replacement'),
(38, ' Painting Services'),
(39, 'Engine Servicing'),
(39, 'Oil Change'),
(39, 'Tyre Replacement'),
(40, 'Engine Servicing'),
(40, 'Oil Change'),
(40, 'Tyre Replacement'),
(41, 'Engine Servicing'),
(41, 'Oil Change'),
(41, 'Tyre Replacement'),
(42, 'Engine Servicing'),
(42, 'Oil Change'),
(45, 'Engine Servicing'),
(45, 'Oil Change'),
(45, 'Tyre Replacement'),
(45, ' Painting Services'),
(11, 'Vehicle Wash'),
(11, 'Engine Servicing'),
(44, 'Engine Servicing'),
(44, 'Oil Change'),
(44, 'Tyre Replacement'),
(44, 'A/C Repair'),
(48, 'Vehicle Wash'),
(48, 'Engine Servicing'),
(48, 'Oil Change'),
(48, 'Tyre Replacement'),
(49, 'Vehicle Wash'),
(49, 'Engine Servicing'),
(49, 'Oil Change'),
(49, 'Tyre Replacement'),
(49, ' Painting Services'),
(49, 'A/C Repair'),
(51, 'Vehicle Wash'),
(51, 'Engine Servicing'),
(51, 'Oil Change'),
(51, 'Tyre Replacement'),
(52, 'Vehicle Wash'),
(52, 'Tyre Replacement'),
(52, ' Painting Services'),
(53, 'Vehicle Wash'),
(53, 'Oil Change'),
(53, 'Tyre Replacement'),
(53, ' Painting Services'),
(54, 'Engine Servicing'),
(54, 'Oil Change'),
(54, 'Tyre Replacement'),
(55, 'Engine Servicing'),
(55, 'Tyre Replacement'),
(55, 'A/C Repair'),
(56, 'Vehicle Wash'),
(56, 'Engine Servicing'),
(56, 'Oil Change'),
(56, 'Tyre Replacement'),
(57, 'Engine Servicing'),
(57, 'Oil Change'),
(57, 'Tyre Replacement'),
(58, 'Vehicle Wash'),
(58, 'Engine Servicing'),
(58, 'Oil Change'),
(58, 'Tyre Replacement'),
(58, ' Painting Services'),
(59, 'Engine Servicing'),
(59, 'Oil Change'),
(59, 'Tyre Replacement'),
(60, 'Engine Servicing'),
(60, 'Oil Change'),
(60, 'Tyre Replacement'),
(60, ' Painting Services'),
(61, 'Engine Servicing'),
(61, 'Oil Change'),
(62, 'Vehicle Wash'),
(62, 'Engine Servicing'),
(62, 'Oil Change'),
(63, 'Engine Servicing'),
(63, 'Oil Change'),
(63, 'Tyre Replacement'),
(64, 'Engine Servicing'),
(64, 'Oil Change'),
(64, 'Tyre Replacement'),
(67, 'Oil Change'),
(67, 'Tyre Replacement'),
(66, 'Vehicle Wash'),
(66, 'Engine Servicing'),
(66, 'Oil Change'),
(66, 'Tyre Replacement'),
(68, 'Engine Servicing'),
(68, 'Oil Change'),
(68, 'Tyre Replacement'),
(69, 'Oil Change'),
(69, 'Tyre Replacement'),
(69, ' Painting Services'),
(43, 'Engine Servicing'),
(43, 'Oil Change'),
(43, 'Tyre Replacement'),
(47, 'Vehicle Wash'),
(47, 'Engine Servicing'),
(47, 'Oil Change'),
(65, 'Engine Servicing'),
(65, 'Oil Change'),
(50, 'Engine Servicing'),
(50, 'Oil Change'),
(50, 'Tyre Replacement'),
(50, 'A/C Repair');

-- --------------------------------------------------------

--
-- Table structure for table `username_vehicles`
--

CREATE TABLE `username_vehicles` (
  `username_id` bigint(20) NOT NULL,
  `vehicles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `username_vehicles`
--

INSERT INTO `username_vehicles` (`username_id`, `vehicles`) VALUES
(4, 'Car'),
(5, 'Car'),
(6, 'Car'),
(7, 'Car'),
(8, 'Car'),
(8, 'Bike'),
(8, 'Scooty'),
(9, 'Car'),
(9, 'Bike'),
(9, 'Scooty'),
(10, 'Car'),
(10, 'Bike'),
(12, 'Car'),
(12, 'Bike'),
(12, 'Scooty'),
(13, 'Car'),
(14, 'Bike'),
(15, 'Bike'),
(15, 'Scooty'),
(17, 'Bike'),
(17, 'Scooty'),
(18, 'Car'),
(18, 'Bike'),
(18, 'Scooty'),
(19, 'Car'),
(19, 'Bike'),
(20, 'Bike'),
(20, 'Scooty'),
(21, 'Car'),
(22, 'Car'),
(23, 'Car'),
(24, 'Cycle'),
(25, 'Car'),
(25, 'Bike'),
(25, 'Scooty'),
(26, 'Car'),
(27, 'Bike'),
(27, 'Scooty'),
(27, 'Auto Rikshaw'),
(28, 'Car'),
(29, 'Bike'),
(29, 'Scooty'),
(30, 'Bike'),
(30, 'Scooty'),
(31, 'Car'),
(32, 'Car'),
(33, 'Bike'),
(33, 'Scooty'),
(34, 'Bike'),
(34, 'Scooty'),
(35, 'Car'),
(36, 'Car'),
(37, 'Bike'),
(38, 'Bike'),
(39, 'Bike'),
(39, 'Scooty'),
(40, 'Bike'),
(40, 'Cycle'),
(40, 'Scooty'),
(41, 'Bike'),
(41, 'Scooty'),
(42, 'Bike'),
(42, 'Scooty'),
(45, 'Car'),
(11, 'Car'),
(44, 'Car'),
(48, 'Car'),
(49, 'Car'),
(51, 'Car'),
(51, 'Bike'),
(52, 'Car'),
(52, 'Bike'),
(53, 'Car'),
(54, 'Car'),
(55, 'Car'),
(56, 'Car'),
(57, 'Car'),
(58, 'Car'),
(58, 'Bike'),
(58, 'Auto Rikshaw'),
(59, 'Car'),
(60, 'Car'),
(61, 'Car'),
(62, 'Car'),
(62, 'Auto Rikshaw'),
(63, 'Bike'),
(63, 'Scooty'),
(63, 'Auto Rikshaw'),
(64, 'Bike'),
(64, 'Scooty'),
(67, 'Auto Rikshaw'),
(66, 'Bike'),
(66, 'Scooty'),
(68, 'Bike'),
(68, 'Scooty'),
(69, 'Bike'),
(69, 'Cycle'),
(69, 'Scooty'),
(43, 'Bike'),
(43, 'Scooty'),
(47, 'Car'),
(65, 'Bike'),
(65, 'Scooty'),
(50, 'Car');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `callback_request`
--
ALTER TABLE `callback_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Indexes for table `username`
--
ALTER TABLE `username`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `username_services`
--
ALTER TABLE `username_services`
  ADD KEY `FKjnube6vdvhorm77wu2ksgry9r` (`username_id`);

--
-- Indexes for table `username_vehicles`
--
ALTER TABLE `username_vehicles`
  ADD KEY `FKnfi3i039mynxujmi45g5vgaoa` (`username_id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `callback_request`
--
ALTER TABLE `callback_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `username`
--
ALTER TABLE `username`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `username_services`
--
ALTER TABLE `username_services`
  ADD CONSTRAINT `FKjnube6vdvhorm77wu2ksgry9r` FOREIGN KEY (`username_id`) REFERENCES `username` (`id`);

--
-- Constraints for table `username_vehicles`
--
ALTER TABLE `username_vehicles`
  ADD CONSTRAINT `FKnfi3i039mynxujmi45g5vgaoa` FOREIGN KEY (`username_id`) REFERENCES `username` (`id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
