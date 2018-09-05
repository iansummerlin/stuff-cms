-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2018 at 08:26 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

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
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Travel'),
(2, 'Lifestyle'),
(3, 'Fashion'),
(4, 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_first_name` varchar(255) NOT NULL,
  `comment_last_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_first_name`, `comment_last_name`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(15, 1, 'Ian', 'Summerlin', 'isummerlin95@gmail.com', 'Litttttt', 'approved', '2018-08-20'),
(22, 2, 'Rico', 'Suavee', 'ricosuave@gmail.com', 'Nice', 'approved', '2018-08-24'),
(23, 2, 'Rico', 'Suavee', 'ricosuave@gmail.com', 'sick', 'unapproved', '2018-08-24'),
(31, 10, 'john', 'doe', 'johndoe@gmail.com', '<p>yoooo</p>', 'unapproved', '2018-08-25'),
(33, 3, 'ian', 'summerlin', 'isummerlin95@gmail.com', 'thanks', 'approved', '2018-08-25'),
(43, 1, 'asdf', 'summerlin', 'isummerlin95@gmail.com', 'hi', 'approved', '2018-08-25'),
(48, 1, 'Rico', 'Suavee', 'rico@gmail.com', '<p>love it</p>', 'approved', '2018-08-27'),
(55, 1, 'Rico', 'Suavee', 'rico@gmail.com', 'yoyo', 'unapproved', '2018-08-27'),
(58, 1, 'Rico', 'Suavee', 'rico@gmail.com', 'toto', 'approved', '2018-08-27'),
(60, 3, 'Ian', 'Summerlin', 'isummerlin95@gmail.com', 'gr8', 'unapproved', '2018-08-27'),
(64, 3, 'Rico', 'Suavee', 'rico@gmail.com', 'sick', 'approved', '2018-08-27'),
(65, 3, 'Rico', 'Suavee', 'rico@gmail.com', 'sick', 'approved', '2018-08-27'),
(66, 3, 'Rico', 'Suavee', 'rico@gmail.com', 'sick', 'approved', '2018-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `feat_id` int(3) NOT NULL,
  `feat_post_id` int(3) NOT NULL,
  `feat_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`feat_id`, `feat_post_id`, `feat_img`) VALUES
(1, 12, 'img_bg_2.jpg'),
(2, 11, 'img_bg_4.jpg'),
(3, 13, 'img_bg_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_cat_id` int(3) NOT NULL,
  `post_img` text NOT NULL,
  `post_date` date NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'DRAFT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_cat_id`, `post_img`, `post_date`, `post_title`, `post_author`, `post_content`, `post_tags`, `post_status`) VALUES
(1, 2, 'blog-2.jpg', '2018-07-18', 'Make a website', 'Rich', '<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n<blockquote>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</blockquote>\r\n<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&amp;#39;t listen.</p>\r\n<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>', 'Make, a, website, rich, make a website, lifestyle, design, business', 'published'),
(2, 2, 'blog-1.jpg', '2018-08-07', 'Be a designer', 'Rich', '<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n<p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n<blockquote>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</blockquote>\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&rsquo;t listen.</p>\r\n<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>\r\n<p>Pityful a rethoric question ran over her cheek, then</p>', 'be a designer, be, a, designer, rich, lifestyle, business', 'published'),
(3, 4, 'blog-4.jpg', '2018-07-02', 'Play basketball', 'Rich', '<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n<p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n<blockquote>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</blockquote>\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&rsquo;t listen.</p>\r\n<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>\r\n<p>Pityful a rethoric question ran over her cheek, then</p>', 'Play basketball, play, basketball, health, sport', 'published'),
(10, 3, 'blog-6.jpg', '2018-06-12', 'Dress well', 'Ian', '<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<blockquote>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&#39;t listen.</blockquote>\r\n\r\n<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>\r\n\r\n<p>Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country.</p>\r\n\r\n<p>But nothing the copy said could convince her and so it didnâ€™t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their</p>', 'fashion, lifestyle, blog, dress well, dress, well', 'published'),
(11, 1, 'blog-3.jpg', '2018-07-14', 'Top 5 places to start your holiday this year', 'Ian', '<p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n\r\n<blockquote>It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</blockquote>\r\n\r\n<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&#39;t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>\r\n\r\n', 'The top 5 places to start your vacation this year, the, top, 5, places, to, start, your, vacation, this, year', 'published'),
(12, 3, 'blog-12.jpg', '2018-06-05', 'How a website designer began customising and designing', 'Rich', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.</p>\r\n\r\n<blockquote>He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.</blockquote>\r\n\r\n<p>The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked.</p>\r\n\r\n<p>\"What\'s happened to me? \" he thought. It wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls.</p>\r\n\r\n<p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\r\n\r\n<p>It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops</p>', 'color, schemes, color schemes, fashion, lifestyle', 'published'),
(13, 2, 'blog-10.jpg', '2018-05-29', 'How to plan a blog post in 10 minutes', 'Ian', '<p>The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What&#39;s happened to me? \" he thought. It wasn&#39;t a dream.</p>\r\n\r\n<blockquote>His room, a proper human room although a little too small, lay peacefully between its four familiar walls.</blockquote>\r\n\r\n<p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer.</p>\r\n\r\n<p>Gregor then turned to look out the window at the dull weather. Drops of rain could be heard hitting the pane, which made him feel quite sad.</p>\r\n\r\n<p>\"How about if I sleep a little bit longer and forget all this nonsense\", he thought, but that was something he was unable to do because he was used to sleeping on his right, and in his present state couldn&#39;t get into that position. However hard he threw himself onto his right, he always rolled back to where he was.</p>', 'planning, lifestyle', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_first_name` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `user_date` date NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$5CPCQvSTwtaCFtxxZXhU3H'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_username`, `user_password`, `user_first_name`, `user_last_name`, `user_email`, `user_image`, `user_role`, `user_date`, `randSalt`) VALUES
(66, 'admin', '$2y$10$5CPCQvSTwtaCFtxxZXhU3.ss7i7oqz9Cx8fNPQmL4LFjGPAgPZG5a', 'Ian', 'Summerlin', 'isummerlin95@gmail.com', '', 'subscriber', '2018-08-25', '$2y$10$5CPCQvSTwtaCFtxxZXhU3H'),
(77, 'rico565', '$2y$10$5CPCQvSTwtaCFtxxZXhU3.c7l2OAfNNxKiSyIXZjlkBJL7m52N2.e', 'Rico', 'Suavee', 'rico@gmail.com', '', 'admin', '2018-08-25', '$2y$10$5CPCQvSTwtaCFtxxZXhU3H'),
(78, 'ian', '$2y$10$5CPCQvSTwtaCFtxxZXhU3.Nw5hY3XoLrSlRjgirPfsnNKqyZKXVfu', 'ian', 'summerlin', 'ian.summerlin@hotmail.co.uk', '', 'admin', '2018-08-26', '$2y$10$5CPCQvSTwtaCFtxxZXhU3H'),
(80, 'yoyo', '$2y$10$5CPCQvSTwtaCFtxxZXhU3.xKXZFXdeSNJMVJkC/q06jgl99ad6kx.', 'ian', 'summerlin', 'ian95@gmail.com', '', 'subscriber', '2018-08-26', '$2y$10$5CPCQvSTwtaCFtxxZXhU3H'),
(81, 'maddog', '$2y$10$5CPCQvSTwtaCFtxxZXhU3.c7l2OAfNNxKiSyIXZjlkBJL7m52N2.e', 'ian', 'summerlin', 'maddog@gmail.com', '', 'subscriber', '2018-08-27', '$2y$10$5CPCQvSTwtaCFtxxZXhU3H'),
(83, 'rico5655555', '$2y$10$5CPCQvSTwtaCFtxxZXhU3.hqgLHRz35qrOytvdkKme3INmmZFuYQm', 'ian', 'summerlin', '123@gmail.com', '', 'admin', '2018-08-27', '$2y$10$5CPCQvSTwtaCFtxxZXhU3H');

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
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`feat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `feat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
