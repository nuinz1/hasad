-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2021 at 03:05 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasad`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'سؤال 1', 'محتوى السؤال الاول', 2, '2020-02-05 07:06:26', '2020-02-05 07:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `blog_id`, `parent_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 0, 'اجابة تجريبية', '2021-03-22 08:57:10', '2021-03-22 08:57:10'),
(4, 1, 1, 3, 'G', '2021-03-22 18:51:05', '2021-03-22 18:51:05'),
(6, 3, 1, 0, 'تجربة اونلاين للمنقاشة', '2021-03-22 21:47:24', '2021-03-22 21:47:24'),
(8, 3, 1, 5, 'tessst', '2021-03-22 22:13:55', '2021-03-22 22:13:55'),
(9, 3, 1, 0, 'hhhh', '2021-03-24 14:17:40', '2021-03-24 14:17:40'),
(10, 3, 1, 0, 'لارلاىرىلارىلارىلارىلارىلار', '2021-03-25 03:57:03', '2021-03-25 03:57:03'),
(11, 3, 1, 10, 'بببببببببببببببببببببببببببببببببببببببببببببببببببببب لالالالالالالالالالالالالالالالالالالالالالالالالالالا', '2021-03-25 03:57:11', '2021-03-25 03:57:11'),
(12, 2, 1, 1, 'يبيسبيسبسيب', '2021-03-25 04:28:50', '2021-03-25 04:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `level_id`, `subject_id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 2, 'Cupiditate sunt non', '2021-03-19 13:56:10', '2021-03-19 13:56:10'),
(2, 5, 4, 2, 'الرياضيات', '2021-03-22 04:36:31', '2021-03-22 04:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'المستوى الاول', '2021-03-19 11:50:39', '2021-03-19 11:50:39'),
(3, 'المستوى الثاني', '2021-03-19 11:53:57', '2021-03-19 11:53:57'),
(4, 'المستوى الثالث', '2021-03-19 11:54:08', '2021-03-19 11:54:08'),
(5, 'المستوى الرابع', '2021-03-19 11:54:16', '2021-03-19 11:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `media`, `ref`, `ref_id`, `type`, `created_at`, `updated_at`) VALUES
(3, 'LYImax0Gcu.pdf', 'subject', '2', 'pdf', '2021-03-19 13:45:57', '2021-03-19 13:45:57'),
(4, 'IgFblrrnxC.mp4', 'subject', '2', 'video', '2021-03-19 13:45:57', '2021-03-19 13:45:57'),
(5, 'ygnqQgLQLZ.pdf', 'lecture', '1', 'pdf', '2021-03-19 13:56:10', '2021-03-19 13:56:10'),
(6, 'OXTcWV1KXQ.mp4', 'lecture', '1', 'video', '2021-03-19 13:56:10', '2021-03-19 13:56:10'),
(9, 'BXFT8IEK0U.pdf', 'project', '1', 'pdf', '2021-03-19 14:16:20', '2021-03-19 14:16:20'),
(10, 'EM9FsP6fVt.mp4', 'project', '1', 'video', '2021-03-19 14:16:20', '2021-03-19 14:16:20'),
(11, 'VtdeaYbhwe.pdf', 'reference', '1', 'pdf', '2021-03-19 14:28:22', '2021-03-19 14:28:22'),
(12, 'cOpiBxz2VY.mp4', 'reference', '1', 'video', '2021-03-19 14:28:22', '2021-03-19 14:28:22'),
(13, '3whQVaZ6fK.pdf', 'trainee_project', '1', 'pdf', '2021-03-20 08:25:56', '2021-03-20 08:25:56'),
(14, 'rCXgXc79SL.pdf', 'trainee_project', '2', 'pdf', '2021-03-20 08:28:14', '2021-03-20 08:28:14'),
(15, 'UnbjsQcYFB.pdf', 'trainee_project', '3', 'pdf', '2021-03-20 08:29:56', '2021-03-20 08:29:56'),
(16, 'EXCU7h0SDj.pdf', 'subject', '3', 'pdf', '2021-03-22 04:21:33', '2021-03-22 04:21:33'),
(17, 'NEhKdYLVCk.mp4', 'subject', '3', 'video', '2021-03-22 04:21:33', '2021-03-22 04:21:33'),
(18, 'gaCt4Z3WgN.pdf', 'subject', '4', 'pdf', '2021-03-22 04:35:10', '2021-03-22 04:35:10'),
(19, '5UyFuugzlF.mp4', 'subject', '4', 'video', '2021-03-22 04:35:10', '2021-03-22 04:35:10'),
(20, 'TTYPHSfQzU.pdf', 'lecture', '2', 'pdf', '2021-03-22 04:36:31', '2021-03-22 04:36:31'),
(21, 'wDtGkRWsDo.mp4', 'lecture', '2', 'video', '2021-03-22 04:36:31', '2021-03-22 04:36:31');

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
(1, '2013_03_19_124026_create_levels_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2020_01_03_135711_create_notifications_table', 1),
(4, '2021_03_19_124256_create_subjects_table', 1),
(5, '2021_03_19_124312_create_projects_table', 1),
(6, '2021_03_19_124341_create_references_table', 1),
(7, '2021_03_19_124351_create_lectures_table', 1),
(8, '2021_03_19_125734_create_media_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `level_id`, `subject_id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 2, 'Dolor ea temporibus', '2021-03-19 14:15:52', '2021-03-19 14:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `level_id`, `subject_id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 'Optio sint sequi ad', '2021-03-19 14:28:22', '2021-03-19 14:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `level_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 5, 'مادة 1', 'وصف المادة', '2021-03-19 13:45:57', '2021-03-19 13:45:57'),
(3, 3, 'مادة 2', 'وصف المادة', '2021-03-22 04:21:32', '2021-03-22 04:21:32'),
(4, 5, 'الرياضيات', 'لالالالا', '2021-03-22 04:35:10', '2021-03-22 04:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `trainee_projects`
--

CREATE TABLE `trainee_projects` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainee_projects`
--

INSERT INTO `trainee_projects` (`id`, `user_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2021-03-21 09:04:31', '2021-03-21 09:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `level_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@hasad.com', '$2y$12$cwz4wJ/Zf0137fGQy0CJwOtcF2vkC/CJXJS4fUVM18bZ.72zV2yu6', '1', NULL, 'Nmr78uJzKbWz6aEfZMQcDYvWZSMFcO5hy6uqfLc0OPZKuGnhoCwp0PEoomId', NULL, NULL),
(2, 'المدرب 1', 'first_trainer@hasad.com', '$2y$10$dPLUkriDB7WrYznelGoAR.LVH1ytFOPq5jbXBb53uGyn2JKjtLp4C', '2', NULL, NULL, '2021-03-19 11:57:38', '2021-03-19 11:57:38'),
(3, 'first trainee', 'first_trainee@hasad.com', '$2y$10$dPLUkriDB7WrYznelGoAR.LVH1ytFOPq5jbXBb53uGyn2JKjtLp4C', '3', 5, '4V7H26LMIDTYkyhLGtneEODC8adXfqdCIEfNXEMYvkNKmSAXq4v1uI44T357', '2021-03-19 12:02:08', '2021-03-19 12:02:08'),
(4, 'test', 'test@hasad.com', '$2y$10$eR/fwKfEVaqDYBLY/LFwPOTwhFkaNxK4hRq49QwfR9jOTrhwyDV/.', '3', 1, NULL, '2021-03-19 18:46:03', '2021-03-19 18:46:03'),
(5, 'test trainer 2', 'test_trainer2@hasad.com', '$2y$10$eHHaKbA7vVDvhB40nlPTiuMlVo.LQKA2ivXHfGo4L1M094OKHOF12', '3', 1, NULL, '2021-03-24 03:19:17', '2021-03-24 03:19:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lectures_level_id_foreign` (`level_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_level_id_foreign` (`level_id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `references_level_id_foreign` (`level_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_level_id_foreign` (`level_id`);

--
-- Indexes for table `trainee_projects`
--
ALTER TABLE `trainee_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_level_id_foreign` (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trainee_projects`
--
ALTER TABLE `trainee_projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lectures_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `references`
--
ALTER TABLE `references`
  ADD CONSTRAINT `references_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
