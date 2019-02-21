-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2019 at 06:56 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_rest_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_21_023111_create_table_products', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Produto 1 também alterado', 49.99, 'Descrição do produto 1', '2019-02-21 07:06:54', '2019-02-21 19:36:50'),
(2, 'Dr. Deanna Weissnat II', 6.25, 'Non optio minus ut voluptatem. Beatae libero autem maiores quia.', '2019-02-21 07:06:54', '2019-02-21 07:06:54'),
(3, 'Prof. Jaycee Bartell Jr.', 3.78, 'Eum molestiae debitis nulla vitae. Qui aliquid voluptatem dicta a repellat vel. Aut eum possimus est non dolor.', '2019-02-21 07:06:54', '2019-02-21 07:06:54'),
(4, 'Prof. Samantha Williamson I', 2.33, 'Ut ea reprehenderit eos aspernatur cupiditate. Nisi quo sunt enim sint architecto doloribus eum repudiandae. Ut aspernatur voluptates repellendus omnis delectus.', '2019-02-21 07:06:55', '2019-02-21 07:06:55'),
(5, 'Maribel Mueller', 0.02, 'Facere voluptatem et sed mollitia eos repellat voluptates doloremque. Odit optio et eveniet dicta tenetur.', '2019-02-21 07:06:55', '2019-02-21 07:06:55'),
(6, 'Jamey Wintheiser', 5.05, 'Quam in nulla rem. Sit soluta omnis et dolorem dolorem. Necessitatibus nemo sit ullam. Sit itaque quidem ducimus quam. Sit nisi illum qui ex voluptatibus optio.', '2019-02-21 07:06:55', '2019-02-21 07:06:55'),
(7, 'Dr. Rose Vandervort MD', 7.43, 'Id ab beatae recusandae delectus illum. Enim quo deleniti voluptate est. Ab numquam molestias nam cumque fuga accusantium. Voluptatum recusandae id ut possimus fugit aliquid impedit.', '2019-02-21 07:06:55', '2019-02-21 07:06:55'),
(8, 'Jackie Halvorson', 0.47, 'Ut dolorem eum consectetur ex. Deserunt nesciunt quis saepe dignissimos incidunt consequatur ut. Vero quia mollitia laborum nemo eos facere. Omnis corporis rerum reiciendis et porro.', '2019-02-21 07:06:55', '2019-02-21 07:06:55'),
(9, 'Robbie Wintheiser MD', 2.78, 'Unde inventore vel corporis laudantium. Voluptates est modi et blanditiis molestiae non. Aspernatur mollitia quia qui quis et.', '2019-02-21 07:06:55', '2019-02-21 07:06:55'),
(10, 'Summer Kerluke', 6.17, 'Modi cupiditate sit officiis odit et. Omnis molestiae ducimus velit non ipsa et. Nisi ad officia quis sunt. Accusamus sequi eos odit placeat magni atque. Non in deleniti aspernatur provident.', '2019-02-21 07:06:55', '2019-02-21 07:06:55'),
(11, 'Product 1 - Edited', 19.99, 'Description test', '2019-02-21 18:08:00', '2019-02-21 19:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
