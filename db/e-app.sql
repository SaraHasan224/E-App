-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2018 at 03:48 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emphasized_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `heading`, `description1`, `description2`, `emphasized_text`, `cover_image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'THE STANDARD LOREM IPSUM PASSAGE', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, ullam, commodi consequatur?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu nisi ac mi malesuada vestibulum. Phasellus tempor nunc eleifend cursus molestie. Mauris lectus arcu, pellentesque at sodales sit amet, condimentum id nunc. Donec ornare mattis suscipit. Praesent fermentum accumsan vulputate.', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '27572.jpg', 1, 'bG4B7PJQKj2Nm1dR3JY0HTDEr4WGkpZa9Ny4gYINr1Vyy2KRUy', '2018-09-29 02:37:35', '2018-09-29 02:43:29'),
(5, 'FREE SHIPPING', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, ullam, commodi consequatur?', 'dfsd', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '45532.jpg', 1, 'Vkp1oZZY3jK3kKcSi6LeqbYBLjcamRGU7YierZZbOXRogsI3K5', '2018-09-29 02:57:46', '2018-09-29 02:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `url` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '12006.jpg', 'shop', 1, 'MRDjG6a6Z8xuATrsGIHHif2pZj1w2YzCb9bOU3RGMSiknedKpa', '2018-09-27 04:18:11', '2018-09-27 06:45:03'),
(2, '8645.jpg', 'shop', 1, 'acdKsfOrMr72aTfhzOGqxm0OWBYlrnuPpohewjYye1Ot7ktGiD', '2018-09-27 04:18:58', '2018-09-28 05:32:33'),
(3, '44693.jpg', 'shop', 1, 'awp622w4W0u5Mx6X07hpb9GCX9xsOBBFx61sWvNZbpi15FvI3g', '2018-09-27 04:19:07', '2018-09-27 04:19:07'),
(5, '88241.jpg', 'shop', 1, 'NfWiyC8VP74CfNEiFfXqvYbdXZcpdUEhBsUaeNaNljpqnLqwBn', '2018-09-27 04:19:25', '2018-09-27 04:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emphasized_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `author`, `description`, `description2`, `emphasized_text`, `url`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Internet Retailer – Portal to eCommerce Intelligence', 'Mike Bob', 'Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent ornare tortor ac ante egestas hendrerit. Aliquam et metus pharetra, bibendum massa nec, fermentum odio. Nunc id ultrices, finibus tortor. Mauris eu dui ut lectus fermentum', 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.  Suspendisse turpis ipsum, tempus in nulla eu, posuere pharetra nibh. In dignissim vitae lorem non mollis. Praesent pretium tellus in tortor viverra condimentum. Nullam dignissim facilisis nisl, accumsan placerat justo ultricies vel. Vivamus finibus mi a neque pretium, ut convallis dui lacinia. Morbi a rutrum velit. Curabitur sagittis quam quis consectetur mattis. Aenean sit amet quam vel turpis interdum sagittis et eget neque. Nunc ante quam, luctus et neque a, interdum iaculis metus. Aliquam vel ante mattis, placerat orci id, vehicula quam. Suspendisse quis eros cursus, viverra urna sed, commodo mauris. Cras diam arcu, fringilla a sem condimentum, viverra facilisis nunc. Curabitur vitae orci id nulla maximus maximus. Nunc pulvinar sollicitudin molestie.', 'Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. In venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque.', '001', '64076.jpg', 1, 'smo4oKAKRkNAjZ5xitUnLmf3SZktzwyxJoS0LWf2hKDbMOfrOV', '2018-09-13 11:46:21', '2018-09-26 04:31:45'),
(2, 'Practical eCommerce', 'Taliya Murad', 'Ecommerce marketing and business strategies to help you succeed online. Conversion, SEO, social media, platforms, marketing, much more. Independent and practical advice since 2005.', '', '', '002', '28362.png', 1, 'AvyxA79NA2HcpbEkYlxscOeTbDG4AUOsRqa1BSSK9egrOVJNgT', '2018-09-13 11:46:21', '2018-09-26 05:29:40'),
(3, 'Get Elastic', 'Waan Fateh', '#1 Subscribed Ecommerce Blog. Get Elastic blog is meant to share ecommerce best practices and better ways to manage the digital relationships.', '', '', '003', '98145.jpg', 1, 'smo4oKAKRkNAjZ5xitUnLmf3SZktzwyxJoS0LWf2hKDbMOfrOV', '2018-09-13 11:46:21', '2018-09-26 03:59:04'),
(4, 'eCommerce Times', 'Adam Bin Muhammad', 'Everything you need to know about doing business on the Internet. Information for C-Level executives and small-to-mid-sized business managers', '', '', '004', '29464.jpg', 1, NULL, '2018-09-13 11:46:21', '2018-09-26 03:59:11'),
(5, 'eCommerce Fuel', 'Jihan Sikander', 'Sharing eCommerce tools, tips and guides to help you build your own profitable, life-changing eCommerce website.', '', '', '005', '38708.jpg', 1, 'ImeQAycMUlCKplHD9iGmfi5R2D92arxs8uUQdkHAtCEfLpn0UV', '2018-09-13 11:46:21', '2018-09-26 03:59:19'),
(6, 'A Better Lemonade Stand', 'Haya ', 'A Better Lemonade Stand is an online ecommerce incubator, supporting early stage ecommerce entrepreneurs. Learn how to start an online business.', '', '', '006', '7454.jpg', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:46:21', '2018-09-26 03:59:29'),
(7, 'eCommerce Training Academy Blog', 'Zumar Faris', 'An eCommerce blog to help grow your online business and not start one. Learn proven tips and tactics to help you increase sales.', '', '', '007', '92940.jpg', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:46:21', '2018-09-26 03:59:38'),
(8, 'Ecommerce Blogging: Everything You Need To Know', 'Tim Jones', 'If you’ve ever thought about starting a blog for your ecommerce store but didn’t follow through it’s time to reconsider. Ecommerce blogging can help drive more traffic to your website. With more traffic, you strike a better chance of growing your sales. Compared to a company that doesn’t blog, companies who blog can get as much as 97% more backlinks giving them more traffic to monetize. Also, businesses that blog drive 55% more traffic back to their website and ecommerce stores with high traffic tend to have higher sales. In this article, you’ll learn why you should start a blog, blogging tips, where to find blog post ideas, and how to monetize your blog.\r\n\r\nLet’s dive into other reasons why you should consider starting a blog.', '', '', '001', 'blog-880x450.jpg', 1, 'j1oFHJ9Qgkx2cSU0RXDUWWiy9phW3uKBH9y33yuFpLMsU3OxuM', '2018-09-26 03:04:59', '2018-09-26 03:04:59'),
(9, 'Blog Post 1', 'Van Fateh', 'According to Jeff Bullas, adding images to your blog content can help your blog get 94% more views. You can use images from free stock image websites, create your own infographics, or make images on Canva to break up your copy with pictures. If you write long form blog content, images can help break up the text making it easier for someone to read.', '', '', '003', '84031.jpg', 1, 'QEJQLccGIpk03xMd7rmflhVQV6XjbXHiKNlHOOx7zyklaBDXS9', '2018-09-26 03:12:19', '2018-09-26 03:59:47'),
(10, 'Ecommerce Blogging: Why You Should Be Starting a Blog', 'Taliya Murad', 'An ecommerce blog allows you to connect and communicate with your customers. If you run a fitness store, creating fitness blog content allows you to talk about a topic that both you and your customers love. By creating content around your passion, you’ll find customers who share the same interests. Over time, they’ll likely buy from your store because you sell products that are relevant to them. A store blog allows you to open the dialogue with your customers so you can get to know them, their interests and their needs.\r\n\r\nStarting a blog helps you rank better in search engines. While product pages can rank if optimized, in general, long form copy tends to perform best. By creating regular blog content for your store, you’ll be able to build out your web pages which will help bring in more customers. You can use an SEO plug-in on your store and Keyword Planner to ensure you’re optimizing for keywords correctly.  By posting blog content multiple times a week, you should see some of your content ranking well on Google.\r\n\r\nBy creating valuable content for your readers, you can position yourself as the leading expert within your niche. You can share special tips, tactics and advice to your readers to help them succeed. If the advice you share with your readers helps them succeed, they’ll continue reading your blog content because they know they can count on you to give top-tier advice.', '', '', '002', '3299.jpg', 1, 'VaOXyIoJ7yfMSmgNkxTsoG5PSVF68TuNDM0X9mrYkORlWsLqYk', '2018-09-26 03:08:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `url`, `status`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Brand 1', 'none', '001', 1, '98197.png', 'IvdTk8Ri9NP9QpJyEmmPsrqn8Me4kHnyFOrsHanlke0u8uW3m7', '2018-09-27 06:39:17', '2018-09-27 06:39:17'),
(3, 'Brand 2', 'none', '002', 1, '33200.png', 'orO0wJ7nsxG2yfNA2qniwVtBvOex4a1JELAy2P1kTEUW0hfmNu', '2018-09-27 06:39:33', '2018-09-27 06:39:33'),
(4, 'Brand 3', 'none', '003', 1, '51537.png', 'WmeKITCrBl21yTbTZbs4byTQEYDrVD0XM9HHlL5mSamdA2FdER', '2018-09-27 06:39:52', '2018-09-27 06:39:52'),
(5, 'Brand 4', 'none', '004', 1, '65347.png', 'dNyXSVVQklhu4EmdKxQnDS1XfMT81GuzFC71fIt5xqDEXupwn4', '2018-09-27 06:40:17', '2018-09-27 06:40:17'),
(6, 'Brand 5', 'none', '005', 1, '7368.png', 'y3iu129QKNunx9kjxiQM8gOSvio11FgIuTSYzwhRcCDIYrUp6i', '2018-09-27 06:40:35', '2018-09-27 06:40:35'),
(7, 'Brand 6', 'none', '006', 1, '7718.png', 'wVtIUe9YcbkJehKvHW8IDFF8BuvFB5Kw2FXo5lpDRq6NkzI9Bn', '2018-09-27 06:41:14', '2018-09-27 06:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int(11) DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `sub_category_id`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pret', 0, 'This is accessories category', 'pret', 1, 'smo4oKAKRkNAjZ5xitUnLmf3SZktzwyxJoS0LWf2hKDbMOfrOV', '2018-09-13 11:46:21', '2018-09-13 11:46:21'),
(2, 'Unstitched', 0, 'This is accessories category', 'unstitched', 1, 'smo4oKAKRkNAjZ5xitUnLmf3SZktzwyxJoS0LWf2hKDbMOfrOV', '2018-09-13 11:46:21', '2018-09-13 11:46:21'),
(3, 'Western', 0, 'This is men\'s collection category', 'western', 1, 'AvyxA79NA2HcpbEkYlxscOeTbDG4AUOsRqa1BSSK9egrOVJNgT', '2018-09-13 11:50:09', '2018-09-13 11:50:09'),
(4, 'Bottoms', 0, 'This is men\'s collection category', 'bottoms', 1, 'AvyxA79NA2HcpbEkYlxscOeTbDG4AUOsRqa1BSSK9egrOVJNgT', '2018-09-13 11:50:09', '2018-09-13 11:50:09'),
(5, 'Formals', 0, 'This is women\'s collection category', 'formal', 1, 'ImeQAycMUlCKplHD9iGmfi5R2D92arxs8uUQdkHAtCEfLpn0UV', '2018-09-13 11:50:44', '2018-09-13 11:50:44'),
(6, 'Bags', 0, 'This is kids collection category', 'bags', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(7, 'Scarves', 0, 'This is bags collection category', 'scarves', 1, 'u0IkztmZl552Dit9KCAmoBbVECr2gplIev0LqMuc2um205E15U', '2018-09-13 11:51:24', '2018-09-13 11:51:24'),
(8, 'Jewelry', 0, 'This is foot wear category', 'jewelry', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(9, 'Footwear', 0, 'This is women\'s collection category', 'footwear', 1, 'ImeQAycMUlCKplHD9iGmfi5R2D92arxs8uUQdkHAtCEfLpn0UV', '2018-09-13 11:50:44', '2018-09-13 11:50:44'),
(10, 'Girls', 0, 'This is kids collection category', 'girls', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(12, 'Eid 2018', 1, 'This is electronics sub category', 'eid2018', 1, 'ZLKWmwA4KrcdrzNtnd8OIzfKSiZsMfdSgqU9IGqV38DjGwI95T', '2018-09-13 11:45:32', '2018-09-13 11:45:32'),
(13, 'Digital Prints', 1, 'This is accessories category', 'digital-prints', 1, 'smo4oKAKRkNAjZ5xitUnLmf3SZktzwyxJoS0LWf2hKDbMOfrOV', '2018-09-13 11:46:21', '2018-09-13 11:46:21'),
(14, 'Semi-Formals', 1, 'This is jewelry', 'semi-formal', 1, 'VbBzE2cKWPJ9FK26NlLD1jwAG4KotH52bfOaXi4Z8UnyKj7yMF', '2018-09-13 11:49:10', '2018-09-13 11:49:10'),
(18, 'Cambric Collection', 2, 'This is bags collection category', 'cambric', 1, 'u0IkztmZl552Dit9KCAmoBbVECr2gplIev0LqMuc2um205E15U', '2018-09-13 11:51:24', '2018-09-13 11:51:24'),
(19, 'Fall Collection 2018', 2, 'This is foot wear category', 'fall-collection2018', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(20, 'Winter Collection 2018', 2, 'This is women\'s collection category', 'winter-collection2018', 1, 'ImeQAycMUlCKplHD9iGmfi5R2D92arxs8uUQdkHAtCEfLpn0UV', '2018-09-13 11:50:44', '2018-09-13 11:50:44'),
(21, 'Spring Collection 2018', 2, 'This is kids collection category', 'spring-collection2018', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(22, 'Tops', 3, 'This is foot wear category', 'tops', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(23, 'Dyed Tights', 4, 'This is women\'s collection category', 'dyed-tights', 1, 'ImeQAycMUlCKplHD9iGmfi5R2D92arxs8uUQdkHAtCEfLpn0UV', '2018-09-13 11:50:44', '2018-09-13 11:50:44'),
(24, 'Jeans', 4, 'This is kids collection category', 'jeans', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(25, 'Trousers', 4, 'This is kids collection category', 'trousers', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(26, 'Shalwars', 4, 'This is foot wear category', 'shalwars', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(27, 'Pants', 4, 'This is women\'s collection category', 'pants', 0, 'ImeQAycMUlCKplHD9iGmfi5R2D92arxs8uUQdkHAtCEfLpn0UV', '2018-09-13 11:50:44', '2018-09-13 11:50:44'),
(29, 'Formal shirts', 5, 'This is kids collection category', 'formal-shirts', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(30, 'Formal Suits', 5, 'This is foot wear category', 'formal-suits', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(31, 'Office wear', 5, 'This is foot wear category', 'office-wear', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(32, 'Handbags', 6, 'This is kids collection category', 'handbags', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(33, 'Clutches', 6, 'This is foot wear category', 'clutches', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(34, 'Wallets', 6, 'This is foot wear category', 'wallets', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(35, 'Duppatas', 7, 'This is foot wear category', 'duppatas', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(36, 'Scarves', 7, 'This is foot wear category', 'scarves', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(37, 'Earings', 8, 'This is kids collection category', 'earings', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(38, 'Necklace', 8, 'This is foot wear category', 'necklace', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(39, 'Bracelets', 8, 'This is foot wear category', 'bracelets', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(40, 'Bangles', 8, 'This is kids collection category', 'bangles', 1, 'RMRNLa9tJXjI7wXnAcvfc0VLAsaVk4VhQAPTa3pGT2mNMcWSjQ', '2018-09-13 11:51:06', '2018-09-13 11:51:06'),
(41, 'Rings', 8, 'This is foot wear category', 'rings', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(42, 'Watches', 8, 'This is foot wear category', 'watches', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(43, 'Sunglasses', 2, 'This is foot wear category', 'sunglasses', 1, 'Af4FaQaYoF4htn5JQtPxYyqwkDw2lOf2di01alvTMRucRxgaEE', '2018-09-13 11:51:58', '2018-09-15 05:22:07'),
(44, 'Electronics', 0, 'This is a electronics category that  contain television, air conditioner and refrigerators', 'electronics', 1, 'fYiq5H2nkrL3zyNVzfGTXGBfFjDXkuA2DtyJZN7dfMppbsc11y', '2018-09-24 04:24:21', '2018-09-24 04:24:21'),
(45, 'Television', 44, 'This is the sub category of electronics field', 'television', 1, 'qEjvkBROeITF6GvGLQdqJJFqtcFX9wZI5jx5hyNj9LYShpz6hd', '2018-09-24 04:25:28', '2018-09-24 04:25:28'),
(46, 'Refrigerator', 44, 'This is sub field of electronics category', 'refrigerators', 1, 'P4FZhdcRHVc4Zu6isGOIi61wJkVPNN2qDVelQpBGkroKaykaFT', '2018-09-24 04:26:42', '2018-09-24 04:26:42'),
(47, 'Kitchen Appliances', 44, 'This is sub-category of electronics items', 'kitchen-appliances', 1, 'dkok4mg095JqDrcrxPqBXaGvH1s6xizixLCb8DttJ6uvmgPlJS', '2018-09-25 04:41:32', '2018-09-25 04:41:32'),
(48, 'Air Conditioners', 44, 'This is sub-category', 'air-conditioner', 1, 'EdjxRnzEjMHQHVgYXIk1R2C4jUm7v862gKVbc8JuaaWpPSITg5', '2018-09-25 04:42:38', '2018-09-25 04:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `location`, `email`, `contactNumber`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'House No 08, Road No 08,  Din Bari, Dhaka, Bangladesh', 'sarahasan@gmail.com', '+660 256 24857', 1, 'ESlYn7MAiFuzKAJ7M6YST5x7KDPFtzTKg6i4FFKcxbmdqCAKs1', '2018-10-02 06:48:36', '2018-10-02 06:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `message`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'https://www.mapsdirections.info/en/custom-google-maps/', 'https://www.mapsdirections.info/en/custom-google-maps/', 'https://www.mapsdirections.info/en/custom-google-maps/', 'https://www.mapsdirections.info/en/custom-google-maps/', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page_title`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '/about', 1, 'WsdnFs1HQ6b8ZaLdGexwG9BdJUQVgqhCtP0099pJbzLaTKjHNm', '2018-10-02 06:55:07', '2018-10-02 06:55:07'),
(2, 'Blogs', '/blogs', 1, 'isNUx5tZzD3b67JH3gSXt0LthquVzayq2jZAceLvWleYNe9FTD', '2018-10-02 06:55:37', '2018-10-02 06:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `indexpage`
--

CREATE TABLE `indexpage` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indexpage`
--

INSERT INTO `indexpage` (`id`, `heading`, `text`, `icon`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'FREE SHIPPING', 'Enjoy FREE shipping all over Pakistan by using the Disount Code: FREESHIPPING on checkout', 'shopping-cart', 1, 'ZzA0nEfekLDO19eR1rUtHcW3qkiIU9weB7gP6C2zwManH1oEUf', '2018-09-28 06:01:34', '2018-09-28 06:05:28'),
(4, '24 HOUR SUPPORT', 'we offers you with confidential and anonymous 24-hour non-judgmental telephone support.', 'headset', 1, 'XR5RV3TV6N2K5r9NwJyvQNWmkj44YUXr8vb8yX8CLMwdXbcmMc', '2018-09-28 06:03:32', '2018-09-28 06:03:32'),
(5, '100% MONEY BACK', '100% Satisfaction & Money Back Guarantees. We want you to be totally delighted with our service and ', 'balance-wallet', 1, '2kSUZtVbRRhNQnBtUjJE1mShC3StNe9qVHrhEW00McVxq1BVwm', '2018-09-28 06:04:12', '2018-09-28 06:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_12_113653_create__category_table', 2),
(4, '2018_09_12_114547_create_sub_category_table', 2),
(5, '2018_09_14_083220_create_blogs_table', 3),
(6, '2018_09_14_092008_create_products_table', 3),
(8, '2018_09_22_093512_create_product_attributes_table', 4),
(9, '2018_09_26_120747_create_product_images_table', 5),
(10, '2018_09_27_071608_create_banners_table', 6),
(11, '2018_09_27_110343_create_brands_table', 7),
(12, '2018_09_27_114947_create_newsletter_signup_table', 8),
(13, '2018_09_28_075021_create_index_page_data_table', 9),
(14, '2018_09_28_081320_create_owner_view_table', 10),
(15, '2018_09_28_112126_create_about_table', 11),
(16, '2018_09_28_112211_create_our_team_table', 11),
(17, '2018_09_29_090130_create_feedback_table', 12),
(18, '2018_09_29_090331_create_contact_table', 13),
(19, '2018_09_29_101536_create_footer_table', 13),
(20, '2018_09_29_101607_create_photo_stream_table', 13),
(21, '2018_09_29_101633_create_social_media_accounts_table', 13),
(22, '2018_09_29_101650_create_videos_table', 13),
(23, '2018_09_29_101707_create_wishlist_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter-signup`
--

CREATE TABLE `newsletter-signup` (
  `id` int(10) UNSIGNED NOT NULL,
  `emailAddress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `our-team`
--

CREATE TABLE `our-team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our-team`
--

INSERT INTO `our-team` (`id`, `name`, `position`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Martin Demichelis', 'PHP Developer', '85090.jpg', 1, '4wRFSYbI3SFqNU6Mf8OjRv6LOwa8F8gjkO1qkzpRKCqwlo8xuD', '2018-09-28 07:17:55', '2018-09-28 07:17:55'),
(3, 'Havier Macherano', 'Developer', '64188.jpg', 1, 't5Jr4UmfeJvwSXdC0GXTFyiSi83lNU4sKKOCtTlyETsjCwLHCS', '2018-09-28 07:22:21', '2018-09-28 07:22:21'),
(4, 'Havier Macherano', 'Developer', '46973.jpg', 1, 'DRfLWO1dg3LFsOg9hTHWwAjrOSNm96tPxIoo7Y4hpIXu776wqg', '2018-09-28 07:22:41', '2018-09-29 02:48:43'),
(5, 'Martin Demichelis', 'PHP Developer', '93332.jpg', 1, 'BfMWGo5TQIDO6AJvHi8qamAT99LxUjFCYOV2Yv2cFNPwLTInhh', '2018-09-29 02:34:22', '2018-09-29 02:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `owner-views`
--

CREATE TABLE `owner-views` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner-views`
--

INSERT INTO `owner-views` (`id`, `name`, `position`, `view`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'ANIKA MOLLIK', 'Chairmen', 'consectetur adipisicing elit, sed do eiusmod tempor  incididunt labore et dolore magna aliqua. Ut enim ad minim veniam,voluptate velit esse cillu nulla pariatur. Excepteur sint occaecat', '43479.jpg', 1, '7YEcdVgXtgPa8SJqvqtikeZ5zWNkO6a8pwbfuercmnLPddoVwu', '2018-09-28 06:09:00', '2018-09-28 06:14:21'),
(5, 'Ashim Kumar', 'CEO', 'consectetur adipisicing elit, sed do eiusmod tempor incididunt labore et dolore magna aliqua. Ut enim ad minim veniam,voluptate velit esse cillu nulla pariatur. Excepteur sint occaecat', '99580.jpg', 1, 'xddyNmSa6hgRgrFS0YRGeNnbzFTklTSlLwfOS5kKgK9JuV9tff', '2018-09-28 07:20:25', '2018-09-28 07:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photostream`
--

CREATE TABLE `photostream` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photostream`
--

INSERT INTO `photostream` (`id`, `image`, `link_to`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '82145.jpg', '#', 1, 'DIGujRvE4X0nvcmb0M0rCQKbC1e9DqJqp9cVDakxhYSbIDOjnZ', '2018-09-29 07:36:23', '2018-10-02 06:52:05'),
(2, '9709.jpg', '#', 1, '0WsIECC3uKbvAHf8tQH9i29b5vcQywQIKUlEyTdvTB8WLfGo7n', '2018-09-29 07:38:24', '2018-09-29 07:38:24'),
(3, '93760.jpg', '#', 1, 'Ju9uqh5ntBlrTjPv0RnEgB3SViClxgRsm2FzmPsN2xCsWMxHb3', '2018-09-29 07:38:39', '2018-09-29 07:38:39'),
(4, '13863.jpg', '#', 1, 'BeesKQhgWuGED2j1y7rdniZDoTd9A2LKFH4XndNNHEXkSrqhwl', '2018-09-29 07:38:51', '2018-09-29 07:38:51'),
(5, '66032.jpg', '#', 1, 'QMNSnY1lRMmjmnPFiNYoWt4chd90PPlcCERHH6SeFhStZRo5rR', '2018-09-29 07:39:00', '2018-09-29 07:39:00'),
(6, '14654.jpg', '#', 1, 'y1i5yuNFbLECgK0lBpmEJO0QtDFbP8pvHFEiXeHd2oP4xlsVta', '2018-09-29 07:39:11', '2018-09-29 07:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `discountedPrice` int(11) NOT NULL,
  `Color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `product_code`, `category_id`, `description`, `Price`, `discountedPrice`, `Color`, `Size`, `Quantity`, `url`, `status`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Printed Silk Shirt', 'SEMI-FORMAL-001', 14, 'Shirt with embellished placket (stones, beads and crystals) Ban-neck and full sleeves with gathers Fabric: Thai Silk', 2190, 0, 'Brown', NULL, NULL, '001', 1, '64201.jpg', 'qhdwS6fqlhZgQ1UkHJTndC1Zaq59N0GvxKdffkz6qopqvfA9pD', '2018-09-24 04:30:30', '2018-09-26 04:45:37'),
(2, 'Haier 32Inch HD Led TV LE32K6000', 'LE32K6000', 45, 'SKU\r\nLE32K6000-3-1-3 & SG-1876\r\nDelivery All Over Pakistan (Free Delivery In Karachi).\r\n\r\nKey Features:\r\n\r\n- HD Ready\r\n\r\n- Auto Volume Level\r\n\r\n- USB Conectivity\r\n\r\n- HDMI\r\n\r\n- 1 Year Official Warranty', 65800, 0, 'Black', NULL, 2, '00', 1, '18980.png', 'f1ZaExqQFxLZKuYgqohFynCkzDya5rpqKIiM8kbh2eRvJx2enA', '2018-09-24 04:35:51', '2018-09-25 13:40:27'),
(5, 'SG Range Hood SGHP-9001', 'SGHP-9001 & SG-1876', 47, 'SG Offers All Modern And Stylish Design Of SGHP-9003 Range Hood With Stainless Steel Body To Avoid Rust.\r\n\r\n*One Year Official Warranty\r\n*Delivery ll Over Pakistan\r\n\r\n*Free Delivery In Karachi', 11000, 0, '-', NULL, 20, 'sghp-9001', 1, '24430.png', 'Ibb1bDi3nhcTERhOBejzf0c9KYb7vt0ZvugwPzw65tXGvL7Xh6', '2018-09-25 04:47:37', '2018-09-25 04:47:37'),
(6, 'Haier Refrigerator Turbo Coolin HRF-398TDC', 'HRF-398TDC & SG-1876', 46, 'SKU\r\nHRF-398TDC & SG-1876\r\nHaier HRF-398TBS/TBB 14 Cft Refrigerator Turbo Cooling Maintains The Freshness Of Fruits, Veggies And All The Meat For More Longer With Bigger Food Compartments.\r\n\r\n\r\n \r\n\r\n*Delivery Only In Karachi.\r\n\r\n*10 Years Compressor 1 Year Parts Warranty', 50000, 0, 'Black', NULL, 2, 'HRF-398TDC', 1, '72242.png', 'whQfYfmKVR2OAlnDqzMfaGeK25gJO5jXANZskaFm3qt5F71p8n', '2018-09-25 04:52:22', '2018-09-25 05:07:49'),
(7, 'Orient Diamond Refrigerator (RB-10)', 'DIA-225 & RB-10', 46, 'SKU\r\nDIA-225 & RB-10\r\nOrient’S Diamond 225 Liters Refrigerator Is Second To None When It Comes To Performance And Looks. The Unit Provides A Generous 225 Liters Of Refrigeration Space As Well As A Sophisticated Design That Can Fit In With Any Existing DéCor.\r\n\r\n*Delivery All Over Pakistan\r\n*Free Delivery In Karachi', 400000, 0, '0', NULL, 15, 'DIA-225', 1, '1094.png', 'I5W31uOKhUraBDwom8EIkkjr75SSGGHk9nKYfU53wHpLV3hKWF', '2018-09-25 04:54:39', '2018-09-25 04:54:39'),
(8, 'Orient 1.5 Ton Alpha Air Conditioner (RB-10)', 'OS-18 Alpha & RB-10', 48, 'SKU\r\nOS-18 Alpha & RB-10\r\nOrient Latest Alpha A/C Is Built With Elegant Design & Modern Technology To Deliver Superior Efficiency, Extreme Comfort And Powerful Performance. \r\n\r\n\r\n\r\n\r\n *Free Delivery In Karachi \r\n\r\n*Delivery All Across Pakistan.', 50000, 0, 'White', NULL, 5, 'OS-18 Alpha', 1, '1682.jpg', 'FChoVtQz35o1yuIjtOSW14jFDudrpZaVeUSrR6yEyMN5HrJNn8', '2018-09-25 04:58:32', '2018-09-25 04:58:32'),
(9, 'Orient 1 Ton Jupiter DC Inverter With', 'OS-12J & RB-10', 48, 'SKU\r\nOS-12J & RB-10\r\nOrient  Jupiter series isn’t an ordinary AC – it brings you streamlined cooling that controls your room’s temperature accurately, without loading up on your energy consumption. With its Low Voltage Operation, you can save up to 60% on your energy bills.\r\n\r\n*Free Delivery In Karachi\r\n*Delivery All Over Pakistan', 65800, 0, 'White', NULL, 5, 'OS-12J', 1, '51754.jpg', 'fuz0qk0jIaVre37tOjmoKs9IbBIaKhk1GFsRMP0MWox8MjDQky', '2018-09-25 05:00:32', '2018-09-25 05:00:32'),
(10, 'Haier 32Inch HD Led TV LE32K6000', 'LE32K6000', 45, 'SKU\r\nLE32K6000-3-1-3 & SG-1876\r\nDelivery All Over Pakistan (Free Delivery In Karachi).\r\n\r\nKey Features:\r\n\r\n- HD Ready\r\n\r\n- Auto Volume Level\r\n\r\n- USB Conectivity\r\n\r\n- HDMI\r\n\r\n- 1 Year Official Warranty', 50000, 0, 'Black', NULL, 2, 'LE32K6000', 1, '5041.png', 'f1ZaExqQFxLZKuYgqohFynCkzDya5rpqKIiM8kbh2eRvJx2enA', '2018-09-25 05:07:22', '2018-09-26 03:52:43'),
(11, 'Printed Silk Shirt', 'SEMI-FORMAL-001', 14, 'Shirt with embellished placket (stones, beads and crystals) Ban-neck and full sleeves with gathers \r\nFabric: Thai Silk', 2190, 0, 'Golden', NULL, 10, '001', 1, '6775.jpg', 'qhdwS6fqlhZgQ1UkHJTndC1Zaq59N0GvxKdffkz6qopqvfA9pD', '2018-09-24 11:55:15', '2018-09-26 04:51:51'),
(12, 'Ehsaas', 'CAMBRIC-001', 18, 'Shirt with embroidered sleeves \r\nRound neckline Fabric: Cambric', 2500, 0, 'Blue', NULL, 35, '001', 1, '43204.jpg', 'wUtxHSs6sshTOBiSaczD4pSylIzw1BQaPjhqNC4JBnw9NVGKgn', '2018-09-24 04:33:25', '2018-09-24 04:33:25'),
(13, 'Embellished Clutch', 'BAG-001', 33, 'Embellished flap with stones & sequins  \r\nGold colored chain as shoulder strap \r\nColor: Gold \r\nInternally: One zip pocket \r\nDimensions: 9.5\" W x 6\" H x 2\" D', 1800, 0, 'Golden', NULL, 10, '001', 1, '65925.jpg', 'iA7sB8QhkgJHsQzVB9JpBEbKVGFt6Au3yxcdKn4Y098fo5Rtjc', '2018-09-24 11:55:15', '2018-09-25 13:00:12'),
(14, 'Textured Pearl Scarf', 'SCARVES-001', 7, 'Lightweight, airy, textured scarf  Decorated with pearls \r\nColour: Cream \r\nFabric: Cotton  \r\nMeasurements: 31 x 74 in. approx.', 550, 0, 'Cream', NULL, 15, '001', 1, '60075.jpg', 'NRhfyWbMyIK2lMn7JJtIPhY7BFx4TlEMUnJVvSdgMMEP6j53TL', '2018-09-24 11:57:59', '2018-09-25 13:00:24'),
(15, 'Embroidered Lawn Suit', 'EID-001', 12, '2 Piece Dress (Shirt + Dupatta) \r\n - Shirt with embroidered front and sleeves Placket embellished with pearls & stones \r\n - Printed dupatta \r\nFabric (shirt): Lawn \r\nFabric (dupatta): Chiffon', 4990, 0, 'Blue', NULL, NULL, '001', 1, '82648.jpg', 'r4JjxWiTXm8OJcqHaE9qmAAXFfNMWnT7PU3lWo7RGtsPQBXOVZ', '2018-09-24 12:02:01', '2018-09-25 13:00:42'),
(16, 'Embellished Net Shirt', 'GIRLS-001', 10, 'Trendy shirt with embellished birds finished with sequins and pearls on neckline. \r\nRuffles sleeves and round neck. \r\nColor: Orange \r\nFabric: Net \r\nLining: Cotton Silk', 2500, 0, 'Orange', NULL, NULL, '001', 1, '59328.jpg', 'OyJSvbKOg9PIU6KS1ubGNBs6BTDCCZba9qRjnlzxbebgdpmoyt', '2018-09-24 12:20:34', '2018-09-26 05:26:39'),
(17, 'Grip Striped Pants', 'PANTS-001', 27, 'Elastic waistband at back Side pockets \r\nColour: White & Blue \r\nFabric: Grip', 2990, 0, 'Blue and White', NULL, 20, '001', 1, '74936.jpg', 'zyXUOYMoQy3tkp8QtI7rzyTB6avSLGUpOTB3BeXDK4iFcAUmEC', '2018-09-24 12:46:35', '2018-09-25 13:01:12'),
(18, 'Printed Grip Shirt', 'EID-001', 12, 'Printed shirt with embellished placket Embellishment finished with pearls, sequins and stones  Full sleeves  Fabric: Grip', 3590, 0, 'Tea pink', NULL, 23, '001', 1, '66129.jpg', 'XBlnuP8HrPeZGBi3cEwvnrdRMiRxAmPYOjHReIvvEEKayrZvOI', '2018-09-24 04:35:51', '2018-09-24 04:35:51'),
(19, 'Printed Cambric Shirt', 'CAMBRIC-002', 18, 'Printed shirt with embellishment at neck (crystals)  Full sleeves Fabric: Cambric', 2500, 0, 'Multi', NULL, 5, '', 1, '25092.jpg', 'opzmxPrqNq0Jw3kMC9VgYvloFpXYeAYKxBZiLepsimtzBbh36G', '2018-09-24 04:35:51', '2018-09-24 04:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 22, 'FORMAL-001/S', 'Small', 2500.00, 10, NULL, '2018-09-22 06:14:03', '2018-09-22 06:14:03'),
(2, 22, 'FORMAL-001/M', 'Medium', 3000.00, 5, NULL, '2018-09-22 06:14:04', '2018-09-22 06:14:04'),
(3, 22, 'FORMAL-001/L', 'Large', 3500.00, 3, NULL, '2018-09-22 06:16:53', '2018-09-22 06:16:53'),
(4, 22, 'FORMAL-001/XL', 'Extra Large', 4000.00, 3, NULL, '2018-09-22 06:19:38', '2018-09-22 06:19:38'),
(5, 24, 'SEMI-FORMAL-001-M', 'Medium', 3000.00, 10, NULL, '2018-09-24 04:31:47', '2018-09-24 04:31:47'),
(6, 24, 'SEMI-FORMAL-001-L', 'Large', 3500.00, 25, NULL, '2018-09-24 04:31:47', '2018-09-24 04:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `text`, `link`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2016', 'BOUTIQUE SPECIAL COLLECTION', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ipsum dolor sit amet', 'shop', '77252.jpg', 1, 'rn9DydS51P46q1OxSjARw7HnmYhPuTD5PoBVanRiOfRkcOmww3', '2018-09-27 02:50:59', '2018-09-27 03:16:44'),
(2, '2017', 'BOUTIQUE SPECIAL COLLECTION', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ipsum dolor sit amet', 'shop', '18754.jpg', 1, 'rn9DydS51P46q1OxSjARw7HnmYhPuTD5PoBVanRiOfRkcOmww3', '2018-09-27 02:50:59', '2018-09-27 03:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_accounts`
--

CREATE TABLE `social_media_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_accounts`
--

INSERT INTO `social_media_accounts` (`id`, `name`, `link`, `icon`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'facebook', '#', 'facebook', 1, 'Bs5HUYWUmI9OFX5HvId02NmMVzXjhlfx2K5NaarhANot59Coa3', '2018-10-02 06:54:04', '2018-10-02 06:54:04'),
(2, 'dribble', '#', 'dribbble', 1, 'tgwQT8S2bzruAGn7q2E77YTj7pFeyaOVWOSt0FQeaQjoFyCW0c', '2018-10-02 06:54:20', '2018-10-02 06:54:20'),
(3, 'g-plus', '#', 'google-plus', 1, 'PEfbXTQR81rdafy5I4wzCkKW6YVyGmyJBxwJU8dqoYcmNeMSau', '2018-10-02 06:54:33', '2018-10-02 06:54:33'),
(4, 'twitter', '#', 'twitter', 1, 'J4UbV4y0NlnFUb0kAqFJQBEXn14t7Ox2j97VVOKFd3KY1yy9Vg', '2018-10-02 06:54:49', '2018-10-02 06:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sara hasan', 'sarahasan@gmail.com', '$2y$10$hQmRkdoUIuASIRmh55e2h.hIRsYsO7W.ZEIGdTjVtrieNjdf7.p8K', 1, 1, 'TyEbaadtuHdpjq36UZeSvJcHd3H1xzf5tpHXtAEXw4rFSo63GdhzSQcq0kIP', '2018-09-10 08:23:53', '2018-09-13 05:10:34'),
(3, 'sara', 'sara@gmail.com', '$2y$10$uVCc06CoBpFcuH7BVmX.zO.RJSTLGhCapT52UEQH2.apGDeGIqkNW', 0, 1, 'yz30CzVPz04ZaTZLEgnwH7NHI996vQ1AoaoGZXA1gHWYYpHtU4', '2018-09-29 06:32:49', '2018-09-29 06:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `link`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Youtube Video', 'BOUTIQUE SPECIAL COLLECTION', 'https://www.youtube.com/embed/P-y372Rz_0c', 1, '8bJukurWB9Aq6O2z793xjSwigwKXpaVaiBIZ2TxbovM6h7oNF3', '2018-09-29 06:54:18', '2018-09-29 06:54:18'),
(5, 'Vimeo Video', 'ss', 'https://player.vimeo.com/video/40934652', 1, '5H6evlukSyGvr3GLp6FXoGaUg4XVZoc7XNlMTnO5CFx3nIF7cm', '2018-09-29 06:54:44', '2018-09-29 06:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indexpage`
--
ALTER TABLE `indexpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter-signup`
--
ALTER TABLE `newsletter-signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our-team`
--
ALTER TABLE `our-team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner-views`
--
ALTER TABLE `owner-views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photostream`
--
ALTER TABLE `photostream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_accounts`
--
ALTER TABLE `social_media_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `indexpage`
--
ALTER TABLE `indexpage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `newsletter-signup`
--
ALTER TABLE `newsletter-signup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `our-team`
--
ALTER TABLE `our-team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `owner-views`
--
ALTER TABLE `owner-views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photostream`
--
ALTER TABLE `photostream`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media_accounts`
--
ALTER TABLE `social_media_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
