-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2022 at 09:42 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rates`
--

CREATE TABLE `exchange_rates` (
  `id` int(11) NOT NULL,
  `currency_from` varchar(3) NOT NULL,
  `currency_to` varchar(3) NOT NULL,
  `value` decimal(7,4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exchange_rates`
--

INSERT INTO `exchange_rates` (`id`, `currency_from`, `currency_to`, `value`, `created_at`, `updated_at`) VALUES
(1, 'GBP', 'EUR', '1.5000', '2022-08-26 09:26:48', '2022-08-26 09:26:48'),
(2, 'GBP', 'USD', '1.1800', '2022-08-25 10:37:12', '2022-08-25 10:33:00'),
(3, 'GBP', 'AUD', '1.7000', '2022-08-25 10:43:24', '2022-08-25 10:36:38'),
(4, 'USD', 'EUR', '1.0000', '2022-08-25 10:44:25', '2022-08-25 10:36:38'),
(5, 'USD', 'AUD', '1.4300', '2022-08-25 10:45:14', '2022-08-25 10:36:55'),
(6, 'AUD', 'EUR', '0.7000', '2022-08-25 10:45:56', '2022-08-25 10:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '05c2a68cd81a1545c34a924d3de30f6397fac72e2f2c6fcd1fa13226934383b7', '[\"*\"]', NULL, NULL, '2022-08-24 22:14:04', '2022-08-24 22:14:04'),
(2, 'App\\Models\\User', 1, 'auth_token', 'c728657761713e63b37261e58d5be9e6ab0d1e2a3e2a6da1dcb3e60a835b70b8', '[\"*\"]', NULL, NULL, '2022-08-25 07:56:34', '2022-08-25 07:56:34'),
(3, 'App\\Models\\User', 1, 'auth_token', '8a311a860a7367c150bc4dc0c98d71efc0e4956e3ec1a958ee0789723d461f05', '[\"*\"]', NULL, NULL, '2022-08-25 07:56:34', '2022-08-25 07:56:34'),
(4, 'App\\Models\\User', 1, 'auth_token', 'b57ce28fd1e9b591a393880549dcf83ec2ddda79466b81afa6570955ceb36a6c', '[\"*\"]', NULL, NULL, '2022-08-25 08:01:42', '2022-08-25 08:01:42'),
(5, 'App\\Models\\User', 1, 'auth_token', '2df16885f4dc4a6e262d8f2fa37ae09be2cca9097af91e0f8430ccf65a47aac4', '[\"*\"]', NULL, NULL, '2022-08-25 08:04:18', '2022-08-25 08:04:18'),
(6, 'App\\Models\\User', 1, 'auth_token', '3c868eca41d2a0d1e0cbc268c22fdeaa8325627fb9857d69fb093ba2d77e8bfb', '[\"*\"]', NULL, NULL, '2022-08-25 08:55:47', '2022-08-25 08:55:47'),
(7, 'App\\Models\\User', 1, 'auth_token', '8a2561ccf2e08742b0861e853fd8da16afb99c77ad4f16879e75ae120de70a28', '[\"*\"]', NULL, NULL, '2022-08-25 08:55:47', '2022-08-25 08:55:47'),
(8, 'App\\Models\\User', 1, 'auth_token', '71704eceabf0887cc43bbafc4d42193d0ec6cde95c61050b79d27f6bad391992', '[\"*\"]', NULL, NULL, '2022-08-25 08:56:33', '2022-08-25 08:56:33'),
(9, 'App\\Models\\User', 1, 'auth_token', '2783725d9e07179e2ba08986cf8ba2a3205a27e5ee6be35906418a1eb478f23c', '[\"*\"]', NULL, NULL, '2022-08-25 08:56:33', '2022-08-25 08:56:33'),
(10, 'App\\Models\\User', 1, 'auth_token', '4bad14730a21062040cfca8882ba35683c4a2e1830e4e8a73afa5683b24dd751', '[\"*\"]', NULL, NULL, '2022-08-25 09:02:41', '2022-08-25 09:02:41'),
(11, 'App\\Models\\User', 1, 'auth_token', '1ed1a2c56ecc7702f7edc7395db66f9aa16cd6917862816d382ac644c07e7336', '[\"*\"]', NULL, NULL, '2022-08-25 09:24:50', '2022-08-25 09:24:50'),
(12, 'App\\Models\\User', 1, 'auth_token', '9d9f7f9a707db7c93725a5173787cb6c56e91e2cbb822fa131509086c9595770', '[\"*\"]', NULL, NULL, '2022-08-25 09:36:25', '2022-08-25 09:36:25'),
(13, 'App\\Models\\User', 1, 'auth_token', 'c7c81bf716440796ca7728117b1070abd5954cd912e35a4d70dcebe6505fe86f', '[\"*\"]', NULL, NULL, '2022-08-25 18:05:45', '2022-08-25 18:05:45'),
(14, 'App\\Models\\User', 1, 'auth_token', '40518df5c52cb62c6e29d03c769ac779f543d2dfbc5ad01b73a127186cb2006d', '[\"*\"]', NULL, NULL, '2022-08-25 20:33:55', '2022-08-25 20:33:55'),
(15, 'App\\Models\\User', 1, 'auth_token', 'ab5b19fdd029cce17c71c2425712b134dbe7e2d35731e8cbc5ed3fa38a9b1790', '[\"*\"]', NULL, NULL, '2022-08-25 21:01:12', '2022-08-25 21:01:12'),
(16, 'App\\Models\\User', 1, 'auth_token', 'b40484dc53206a802ea0c9409d158b0a4129fed7ec17b3bfd4c8a3f80c8c2b0b', '[\"*\"]', NULL, NULL, '2022-08-25 21:02:32', '2022-08-25 21:02:32'),
(17, 'App\\Models\\User', 1, 'auth_token', '7491d10a7bca8496599987d18c5d0f9c331eb00e0b005a799ec4f374576ba1e8', '[\"*\"]', NULL, NULL, '2022-08-25 21:07:06', '2022-08-25 21:07:06'),
(18, 'App\\Models\\User', 1, 'auth_token', '2a1141dbf55bbaa24d5c5ed4aedea2861e97d794ef0451a1c8c55f9508ecafce', '[\"*\"]', NULL, NULL, '2022-08-25 21:09:02', '2022-08-25 21:09:02'),
(19, 'App\\Models\\User', 1, 'auth_token', '0dab5cbb0f751876bfb78f8e34b29621c9b68899e1ade39e1b6f38a0124c7f6b', '[\"*\"]', NULL, NULL, '2022-08-25 21:26:46', '2022-08-25 21:26:46'),
(20, 'App\\Models\\User', 1, 'auth_token', 'cb8200bad0cb67475e5240807ef06644529e336ad5e9d3de9b61d954a4fe94e9', '[\"*\"]', NULL, NULL, '2022-08-25 22:11:37', '2022-08-25 22:11:37'),
(21, 'App\\Models\\User', 1, 'auth_token', '459fbfac20814eeaf2570f1031e34526251cfdc93788329ee03e9c35f9aee851', '[\"*\"]', NULL, NULL, '2022-08-25 22:14:41', '2022-08-25 22:14:41'),
(22, 'App\\Models\\User', 1, 'auth_token', 'b2d37bb5314379313b5c0c31b4c6cf212f96f608852157d256f69125036ff279', '[\"*\"]', NULL, NULL, '2022-08-25 22:14:46', '2022-08-25 22:14:46'),
(23, 'App\\Models\\User', 1, 'auth_token', 'f46b800c3214b137a672482674f1426081c4dea363c914fa23999f3a07d89dfe', '[\"*\"]', NULL, NULL, '2022-08-25 22:26:56', '2022-08-25 22:26:56'),
(24, 'App\\Models\\User', 1, 'auth_token', '675012e87863465fa0335c03e0b166d143743b0cf5b6c0e9139e6c4b7c86d96e', '[\"*\"]', NULL, NULL, '2022-08-26 00:27:58', '2022-08-26 00:27:58'),
(25, 'App\\Models\\User', 1, 'auth_token', 'd2562bcb98428abe7c277a8cf9a118f68d078685402bf065950b2b726408c1b2', '[\"*\"]', NULL, NULL, '2022-08-26 00:28:03', '2022-08-26 00:28:03'),
(26, 'App\\Models\\User', 1, 'auth_token', 'cf3f57e56f7bd87c23617955f2cb3c9053dce35cc877cca276d2c1babbe3794c', '[\"*\"]', NULL, NULL, '2022-08-26 06:12:58', '2022-08-26 06:12:58'),
(27, 'App\\Models\\User', 1, 'auth_token', '4fdb177b0a6894cc28cfc28bc0419f4df3107b0eb58d4eff8a533e4b42ea17d3', '[\"*\"]', NULL, NULL, '2022-08-26 09:11:47', '2022-08-26 09:11:47'),
(28, 'App\\Models\\User', 1, 'auth_token', 'c9e15eec438fac43659d2d80a9b0ead6caaacefd63c7b57c4b21b59a1c82fc2c', '[\"*\"]', NULL, NULL, '2022-08-26 09:17:08', '2022-08-26 09:17:08'),
(29, 'App\\Models\\User', 1, 'auth_token', '1768282c1dcd1a190aec49ca063062c4015563d8bbce8c2a9385a7b854aaec9b', '[\"*\"]', NULL, NULL, '2022-08-26 09:20:49', '2022-08-26 09:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ashish.saxena', 'ashish4uit@gmail.com', NULL, '$2y$10$oGMdY9pCRk.2kgoW.z9Op.dF7An1WKDu6HnKPoELNkaNYXfMx2z6q', '7o7CCYLDJ95cNmns0NLGFOwIHp9d8tcpjTWjaFYuu1VXeqIzkH0KszXfHkme', '2022-08-24 22:13:54', '2022-08-24 22:13:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
