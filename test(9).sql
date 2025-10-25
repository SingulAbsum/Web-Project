-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2025 at 03:56 PM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `combo` varchar(4) NOT NULL,
  `rose` varchar(1) NOT NULL,
  `token` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `username`, `password`, `combo`, `rose`, `token`) VALUES
(1, 'a4', '5yOkJEALwCLDLOHo0aW ', '<^>V', 'Ü', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `full_content` text DEFAULT NULL,
  `poster_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected') DEFAULT 'approved',
  `rejection_reason` text DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `img` varchar(200) NOT NULL,
  `subtype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `full_content`, `poster_id`, `created_at`, `status`, `rejection_reason`, `category`, `type`, `img`, `subtype`) VALUES
(3, 'Article 1', 'Content 1', 'Full Content 1', 1, '2025-05-24 23:25:42', 'approved', NULL, 'Travel', 'featured', 'blog-post-portrait-5.webp', 'featured'),
(4, 'Article 2', 'Content 2', 'Full Content 2', 1, '2025-05-24 23:37:31', 'approved', NULL, 'Travel', 'featured', 'blog-post-portrait-5.webp', 'unfeatured'),
(5, 'Article 3', 'Content 3', 'Full Content 3', 1, '2025-05-25 13:05:33', 'approved', NULL, 'Travel', 'featured', 'blog-post-portrait-5.webp', 'unfeatured'),
(6, 'Article 4', 'Content 4', 'Full Content 4', 2, '2025-05-26 17:54:41', 'approved', NULL, 'Travel', 'featured', 'blog-post-portrait-5.webp', 'unfeatured'),
(7, 'Article 5', 'Content 5', 'Full Content 5', 1, '2025-05-26 18:08:35', 'approved', NULL, 'Travel', 'featured', 'blog-post-portrait-5.webp', 'unfeatured'),
(8, 'Article 6', 'Content 6', 'Full Content 6', 1, '2025-05-26 18:24:51', 'approved', NULL, 'Travel', 'feature', 'blog-post-portrait-5.webp', 'unfeatured'),
(9, 'Article 7', 'Content 7', 'Content 7', 1, '2025-05-26 20:07:27', 'approved', NULL, 'Travel', 'feature', 'blog-post-portrait-5.webp', 'unfeatured'),
(10, 'Article 8', 'Content 8', 'Full Content 8', 1, '2025-05-26 22:33:39', 'approved', NULL, 'Design', 'feature', 'blog-post-portrait-5.webp', 'unfeatured'),
(11, 'Article 9', 'Content 9', 'Full Content 9', 1, '2025-05-26 22:36:23', 'approved', NULL, 'Travel', 'feature', 'blog-post-portrait-5.webp', 'unfeatured'),
(12, 'Article 10', 'Content 10', 'Full Content 10', 1, '2025-05-26 22:41:05', 'approved', NULL, 'Travel', 'category', 'blog-post-portrait-5.webp', 'unfeatured'),
(13, 'Article 11', 'Content 11', 'Full Content 11', 1, '2025-05-26 22:49:03', 'approved', NULL, 'Lifestyle', 'category', 'blog-post-portrait-5.webp', 'unfeatured'),
(14, 'Article 12', 'Content 12', 'Full Content 12', 1, '2025-05-26 22:56:08', 'approved', NULL, 'Lifestyle', 'category', 'blog-post-portrait-5.webp', 'featured'),
(15, 'Article 13', 'Content 13', 'Full Content 13', 1, '2025-05-27 09:27:38', 'approved', NULL, 'Travel', 'feature', 'blog-post-portrait-5.webp', 'unfeatured'),
(16, 'Article 14', 'Content 14', 'Full Content 14', 1, '2025-05-29 10:53:45', 'approved', NULL, 'Lifestyle', 'category', 'blog-post-portrait-5.webp', 'unfeatured'),
(17, 'Article 15', 'Content 15', 'Full Content 15', 1, '2025-05-29 11:13:15', 'approved', NULL, 'Lifestyle', 'category', 'blog-post-portrait-5.webp', 'unfeatured');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`, `img`, `token`) VALUES
(1, 'k', '$2y$10$C2m0CmIDzKerEYn96bZQZOpqAyhXZ9o3pSI3y2MIKLD', '', NULL),
(2, 'k1', '$2y$10$eJkotF8GFv9cb.UkKRpMeuNFs9rn1OXdIcXiS/Q6o1Q', '', NULL),
(3, 'k2', '$2y$10$8mB6qh0K6Rg1ejG79WKAR.8CDffBcEO6Y29oON9PMImRm5aLR.28i', '', NULL),
(4, 'k3', '$2y$10$5IzzTcHX/Z.aGP0A24.yrueahuzlTd6j1wrdLsWrf6hZa9lOswRp.', '', '0626d7f20244a171c346f44e8fb1d60e4776bc43c0918abd344a32465020018b'),
(5, '', '', '', '18ea38e4dbef841bb68942fcd4878c3b7b5df5d71c94fa2e23322b377db5ca82'),
(6, '', '', '', 'ab1e4d135085d6963bd5dc2138c2c8dc1e35110cb330e5ebed2cd580e4af7bbc');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('poster','admin') NOT NULL,
  `token` varchar(300) DEFAULT NULL,
  `img` varchar(300) NOT NULL DEFAULT '',
  `personal_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full name`, `email`, `username`, `password`, `role`, `token`, `img`, `personal_description`) VALUES
(1, 'klajdi', 'k@email.com', 'km', '$2y$10$5IzzTcHX/Z.aGP0A24.yrueahuzlTd6j1wrdLsWrf6hZa9lOswRp.', 'poster', '0626d7f20244a171c346f44e8fb1d60e4776bc43c0918abd344a32465020018b', 'blog-hero-2.webp', ''),
(2, 'jyf', 'ytdy@email.com', 'tytd', '$2y$10$WLYUm1N1tZrsKfCximLTButB0E/aVN8f9lxJKLJMg09LMj797ocGC', 'poster', NULL, 'blog-hero-2.webp', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `privilege` enum('create_post','edit_post','delete_post','comment','upload_files','moderate_content') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for active, 0 for inactive',
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_privilege` (`user_id`,`privilege`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD CONSTRAINT `user_privileges_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
