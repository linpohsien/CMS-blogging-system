-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2019 at 04:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `user_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `user_id`) VALUES
(1, 'Bootstrap', 0),
(2, 'Javascript', 0),
(4, 'JAVA', 0),
(10, 'C++', 0),
(11, 'JQuery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(16, 62, 'Tim', 'tim@gmail.com', 'Great!', 'unapproved', '2019-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(1, 53, 62);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(3) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `user_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`, `likes`) VALUES
(36, 2, 51, 'Bootcamp Java Course', '', 'qwert', '2019-05-07', 'image_2.jpeg', 'Etiam maximus nulla ante, eget scelerisque tellus dapibus quis. Suspendisse vel ex dui. Phasellus ultrices nibh vitae lectus lobortis lobortis. Vivamus vitae velit vel velit laoreet vestibulum. Duis lacinia erat tempor consequat accumsan. Vivamus ut dolor malesuada, varius purus eu, posuere ipsum. Maecenas eleifend libero in accumsan tincidunt.', 'Java', 0, 'published', 0, 0),
(58, 2, 51, 'Bootcamp Java Course', '', 'qwert', '2019-05-10', 'image_2.jpeg', 'Etiam maximus nulla ante, eget scelerisque tellus dapibus quis. Suspendisse vel ex dui. Phasellus ultrices nibh vitae lectus lobortis lobortis. Vivamus vitae velit vel velit laoreet vestibulum. Duis lacinia erat tempor consequat accumsan. Vivamus ut dolor malesuada, varius purus eu, posuere ipsum. Maecenas eleifend libero in accumsan tincidunt.', 'Java', 0, 'published', 1, 0),
(59, 1, 52, 'Test Post', '', 'qazwsx', '2019-05-23', '7730297c84925c6701dfe2fe1108ffb66c7f8d40.jpg', '<p>Aenean ullamcorper auctor feugiat. Donec gravida sed ligula nec vulputate. Curabitur at metus mauris. Mauris tincidunt diam vitae dui aliquam, eget placerat turpis aliquet. Morbi nec posuere enim. Cras nec ultricies arcu. Nullam sit amet diam efficitur, cursus lectus vel, euismod nisl. Nulla facilisi. Vestibulum vehicula elementum urna quis lacinia. Morbi egestas ut erat vitae hendrerit. Morbi ipsum eros, vulputate et tristique et, sollicitudin in velit. Duis diam tortor, fermentum a ligula congue, dapibus bibendum nulla.</p>', 'PHP', 0, 'published', 0, 0),
(60, 4, 52, 'Best Linux Course', '', 'qazwsx', '2019-05-23', 'download.jpeg', '<p>Curabitur non neque sed odio hendrerit ullamcorper. Praesent non tortor egestas, maximus quam eget, facilisis orci. Morbi ornare pretium est sit amet auctor. Sed egestas nisi vel dictum eleifend. Nunc a rhoncus nisi, pellentesque feugiat dolor. Phasellus semper ante id varius condimentum. Nullam et arcu risus. Aenean eget euismod erat, eget facilisis ligula. Nunc vel libero ac ante placerat fringilla sit amet non sem. Nam vitae rhoncus neque, ac suscipit nibh.</p>', 'linux', 0, 'published', 1, 0),
(61, 4, 52, 'Best Java Course', '', 'qazwsx', '2019-05-23', 'download.jpeg', '<p>Suspendisse potenti. Phasellus quam tortor, varius non orci ac, tempor elementum libero. Morbi et orci ut arcu tristique finibus vel sit amet justo. Curabitur sed viverra quam. Quisque eu ultrices erat. Fusce et ullamcorper diam. Integer lobortis, nibh nec volutpat imperdiet, erat sapien pretium tellus, ac pharetra massa ex vehicula nibh.</p>', 'Java', 0, 'published', 3, 0),
(62, 2, 53, 'Best C# Course', '', 'qweasd', '2019-05-23', 'download.png', '<p>Aliquam erat volutpat. Mauris finibus sem eget dolor hendrerit vehicula. Proin nec scelerisque metus. Cras finibus rhoncus efficitur. Mauris ac leo id tellus consequat porta sit amet vitae ante. Fusce diam sem, accumsan eget purus nec, aliquam suscipit felis. Morbi cursus nisi nulla, in sagittis enim pharetra a. Nulla ullamcorper sed velit at vehicula. Nulla facilisi. Proin ut tempus elit. Sed dictum elit vel feugiat feugiat. Proin viverra purus at nisl rhoncus auctor. Phasellus sem arcu, vehicula in augue eget, fermentum ornare metus. Vivamus facilisis dolor eget mi pulvinar, vel mattis sapien laoreet. Etiam dapibus facilisis neque, nec aliquet ipsum finibus sed.</p>', 'C#', 0, 'published', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22',
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`, `token`) VALUES
(52, 'qazwsx', '$2y$12$DSywNW6SJYw91iCkuNoWGeUhZb1InGLP9yroKGLU6z1LDr4qwU.AS', '', '', 'qazwsx@qaz.qaz', '', 'admin', '$2y$10$iusesomecrazystrings22', ''),
(53, 'qweasd', '$2y$12$vmd8pekzx0H9R/uYMWrf..PIEpDkkny3B/BkDfVeOScpjbRKRMAnG', '', '', 'qweasd@qwe.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, '1a36c541ee9411be246e00ec3ecf7e4a', 1556167946),
(2, '3994001a4655ee04aa88af255047fb1b', 1556204849),
(3, 'c5d925c956baf0be4bd61e4ed9bf152d', 1556183007),
(4, 'd4b4332231e868facc44a4322d2ef1c9', 1556287766),
(5, '83e68e4bc3b456e5eb84acf8ab2162a7', 1556463120),
(6, '73ddbe161570b0c19edfd5f28e6943c0', 1556615494),
(7, '9088fbb07bc86ddcd1bb5645bc96df80', 1556594947),
(8, '9d3dc3d58e7f72c385d63ce7861e9484', 1556597121),
(9, 'fe97c5e6b8357a094437ae5343e036bb', 1556604607),
(10, 'd5bd3893f6f3c8f04524145d3b91f6be', 1556789201),
(11, 'b3651ac0c01554591e577c0c5872e0bb', 1557037079),
(12, '535502813fef424db56957152d893d6a', 1557045031),
(13, '31667e4fe36b171ecba48f2905b11fa4', 1557237980),
(14, 'c22025dbce4e85c636031a348cf2ebf6', 1557293315),
(15, 'dacffa9c4b1f3d2b2256a987e4baa23b', 1557412295),
(16, '5eca67dedcab725c921313a10d20beb7', 1557460978),
(17, '995b4abd6e2e6182ae9e1bf673fd2386', 1558622498);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
