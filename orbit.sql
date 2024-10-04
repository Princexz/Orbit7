-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 12:02 PM
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
-- Database: `orbit`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(16) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategories` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `categoryType` varchar(255) NOT NULL,
  `visibility` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `subcategories`, `detail`, `categoryType`, `visibility`, `date`) VALUES
(56, 'Graphic Designing', '', 'hello word', 'service', 'Published', 'Mar-31-2024'),
(57, 'Web Development', '', '', 'service', 'Hidden', 'Mar-31-2024'),
(58, 'Clothes', 'Men,Women,Men Shorts,women shorts', 'Here are all categories of clothes are available', 'product', 'Published', 'May-21-2024'),
(59, 'shoes', 'bata,service,ndure,addidas', 'shoes variety', 'product', 'Published', 'May-23-2024'),
(60, 'Apple Iphones', 'Iphone11,Iphone12,Iphone13,Iphone14,Iphone15', 'All Apple devices are listed in this categroy', 'product', 'Published', 'May-25-2024');

-- --------------------------------------------------------

--
-- Table structure for table `orbitusers`
--

CREATE TABLE `orbitusers` (
  `id` int(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orbitusers`
--

INSERT INTO `orbitusers` (`id`, `name`, `email`, `password`, `otp`) VALUES
(1, 'arslan', 'arslan.farid79@gmail.com', '1122', 0),
(2, 'Talha', 'aljanatmart@gmail.com', '1122', 0),
(13, 'MBZ', 'aljanatt@gmail.com', '1122', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` varchar(254) NOT NULL,
  `Information` varchar(254) NOT NULL,
  `Policy` varchar(244) NOT NULL,
  `Variant1` varchar(256) NOT NULL,
  `VariantValue1` varchar(256) NOT NULL,
  `Variant2` varchar(256) NOT NULL,
  `VariantValue2` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Subcategory` varchar(255) NOT NULL,
  `OldPrice` int(11) NOT NULL,
  `NewPrice` int(11) NOT NULL,
  `Coupon` varchar(255) NOT NULL,
  `Visibillity` varchar(55) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Name`, `Quantity`, `Description`, `Information`, `Policy`, `Variant1`, `VariantValue1`, `Variant2`, `VariantValue2`, `Category`, `Subcategory`, `OldPrice`, `NewPrice`, `Coupon`, `Visibillity`, `userId`) VALUES
(1, 'Prodcut 1', 12, 'Product DescriptionProduct Description', 'Product DescriptionProduct Description', 'Product DescriptionProduct Description', 'Size', 'small,medium,large', 'Color', 'red,black,yellow', '58', 'Men', 350, 230, '28567840', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_meta`
--

CREATE TABLE `product_meta` (
  `id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `Image` varchar(256) NOT NULL,
  `primaryImage` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_meta`
--

INSERT INTO `product_meta` (`id`, `productID`, `Image`, `primaryImage`) VALUES
(1, 1, '52767.jpg', ''),
(2, 1, '60612.jpg', ''),
(3, 1, '84906.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `dateTime` datetime(6) NOT NULL,
  `productId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `userId`, `stars`, `comment`, `status`, `dateTime`, `productId`) VALUES
(1, 1, 4, 'This Stainless Steel Water Bottle has been a game changer for my daily hydration routine. It\'s incredibly sturdy and has survived multiple drops without a dent. The insulation is fantastic, keeping my water cold for up to 24 hours and hot beverages warm for about 12 hours.', '0', '2024-05-29 20:51:35.000000', '1'),
(2, 13, 5, 'Adding this Memory Foam Mattress Topper to my bed has significantly improved my sleep quality. The memory foam conforms perfectly to my body, providing excellent support and alleviating pressure points, especially around my hips and shoulders.', '0', '2024-05-29 20:59:20.000000', '1'),
(3, 2, 3, 'The insulation is fantastic, keeping my water cold for up to 24 hours and hot beverages warm for about 12 hours. I love the sleek design and the fact that it fits perfectly in my car\'s cup holder. The wide mouth makes it easy to clean and add ice cubes. If you\'re looking for a durable and stylish water bottle, this one is definitely worth it!', '0', '2024-05-31 17:32:12.000000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(16) NOT NULL,
  `category` varchar(255) NOT NULL,
  `categoryType` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `coupon` varchar(16) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `image` varbinary(8000) NOT NULL,
  `date` varchar(255) NOT NULL,
  `Visibillity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `category`, `categoryType`, `title`, `description`, `detail`, `coupon`, `tags`, `image`, `date`, `Visibillity`) VALUES
(108, 'Web Development', 'service', 'Shifting Services', 'We are providing all type of managemnet services which helps to grow your business and boost sales', 'At The Coca‑Cola Company, our sustainability goals and initiatives are anchored by our purpose to refresh the world and make a difference and are core.\r\nThe Coca-Cola Company is an American multinational corporation founded in 1892. It produces Coca-Cola. The drink industry company also manufactures, sells, and markets other non-alcoholic beverage concentrates and syrups, and alcoholic beverages.', 'CPN-192440', 'Amsterdam,Washington,Sydney,Beijing,Cairo', 0x3739302e6a7067, 'Mar-26-2024', 'Published'),
(144, 'Graphic Designing', 'service', 'PLantation', 'We are providing all type of managemnet services which helps to grow your business and boost sales', 'short description newshort description newshort description new', 'CPN-791967', 'Amsterdam,Washington,Sydney,Beijing,Cairo', 0x3732322e706e67, 'May-25-2024', 'Published'),
(145, 'Web Development', 'service', 'Github Management ', 'We are providing all type of managemnet services which helps to grow your business and boost sales', 'This is github managemnet services that we are provided. This is github managemnet services that we are provided. This is github managemnet services that we are provided.', 'CPN-485509', 'github,git,git services,github services', 0x3731392e6a7067, 'May-26-2024', 'Published'),
(149, 'Graphic Designing', 'service', 'Hacking Services', 'We are providing all type of managemnet services which helps to grow your business and boost sales', 'All type of hacking services are available here, All type of hacking services are available hereAll type of hacking services are available here,', 'CPN-656518', 'hacking,coding,tempring,datamining,ai', 0x3337362e6a7067, 'May-26-2024', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `service_meta`
--

CREATE TABLE `service_meta` (
  `id` int(11) NOT NULL,
  `catID` int(11) NOT NULL,
  `ItemID` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_meta`
--

INSERT INTO `service_meta` (`id`, `catID`, `ItemID`, `category`) VALUES
(4, 55, '12,3,4,3,43,43', 'My Test Category'),
(5, 56, '99,88', 'hacker'),
(6, 57, '120', '123456789'),
(14, 58, '', 'Clothes'),
(15, 59, '', 'shoes'),
(16, 60, '', 'Apple Iphones');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `otp`) VALUES
(49, 'Talha Javed', 'aljanatmart@gmail.com', '12345', 0),
(50, 'Talha Javed', 'talhach1353@gmail.com', '12345', 518938),
(51, 'Muneeb Ur rehman', 'muneeb@gmail.com', '12345', 0),
(59, 'Shifting Experts', 'shiftingexpert.ae@gmail.com', '12345', 0),
(61, 'Zeeshan Ahmad', 'zeeshan123@gmail.com', '123456', 0),
(62, '', '', '12345', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orbitusers`
--
ALTER TABLE `orbitusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product_meta`
--
ALTER TABLE `product_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_meta`
--
ALTER TABLE `service_meta`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orbitusers`
--
ALTER TABLE `orbitusers`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_meta`
--
ALTER TABLE `product_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `service_meta`
--
ALTER TABLE `service_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
