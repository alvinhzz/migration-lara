-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2020 at 01:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum_lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `quest_id` bigint(20) UNSIGNED NOT NULL,
  `email_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `isi`, `confirmed`, `quest_id`, `email_users`, `created_at`, `updated_at`) VALUES
(2, 'I can help you if, please contact me for more informations!', 0, 2, 'shanty@email.com', '2020-08-06 23:10:16', NULL),
(3, 'Please go to lara website and reads the documentation!', 0, 2, 'aprizal@email.com', '2020-08-06 23:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answer_comments`
--

CREATE TABLE `answer_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_buat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans_id` bigint(20) UNSIGNED NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_comments`
--

INSERT INTO `answer_comments` (`id`, `tgl_buat`, `email_users`, `ans_id`, `isi`) VALUES
(1, '2020-08-06 23:20:06', 'alvian@email.com', 3, 'please be patient :(');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_06_205023_create_questions_table', 2),
(5, '2020_08_06_213607_create_answers_table', 3),
(6, '2020_08_06_213658_create_question_comments_table', 3),
(7, '2020_08_06_213731_create_answer_comments_table', 3),
(8, '2020_08_06_220119_add_atributs_to_question_comments', 4),
(9, '2020_08_06_220914_delete_timestamps_from_question_comments', 5),
(10, '2020_08_06_221028_delete_timestamp_from_question_comments', 6),
(13, '2020_08_06_221231_create_status_questions_table', 7),
(14, '2020_08_06_221242_create_status_answers_table', 7),
(15, '2020_08_06_224708_change_confirmed_on_answers', 8),
(16, '2020_08_06_231531_add_isi_to_answer_comments', 9),
(17, '2020_08_06_231800_add_isi_to_question_comments', 9);

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `judul`, `isi`, `email_users`, `created_at`, `updated_at`) VALUES
(1, 'Latest Version', 'What do you thinl about laravel framework latest version?', 'alvian@email.com', '2020-08-06 22:24:29', NULL),
(2, 'Lara', 'Can you help me how to starts my project using lara latest version?', 'alvian@email.com', '2020-08-06 22:24:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_comments`
--

CREATE TABLE `question_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_buat` timestamp NULL DEFAULT NULL,
  `email_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quest_id` bigint(20) UNSIGNED NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_answers`
--

CREATE TABLE `status_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('like','dislike') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans_id` bigint(20) UNSIGNED NOT NULL,
  `email_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_answers`
--

INSERT INTO `status_answers` (`id`, `status`, `ans_id`, `email_users`) VALUES
(1, 'like', 2, 'aprizal@email.com'),
(2, 'like', 2, 'alvian@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `status_questions`
--

CREATE TABLE `status_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('like','dislike') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quest_id` bigint(20) UNSIGNED NOT NULL,
  `email_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` blob DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `name`, `username`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
('alvian@email.com', 'Aslamadin Alvian Haz', 'alvinhzz', 'alvian123', NULL, NULL, '2020-08-06 22:21:52', NULL),
('aprizal@email.com', 'Aprizal', 'zal19', 'aprizal123', NULL, NULL, '2020-08-06 23:11:43', NULL),
('shanty@email.com', 'Shanty Puspitasari', 'shntyp', 'shanty123', NULL, NULL, '2020-08-06 22:21:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_quest_id_foreign` (`quest_id`),
  ADD KEY `answers_email_users_foreign` (`email_users`);

--
-- Indexes for table `answer_comments`
--
ALTER TABLE `answer_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_comments_email_users_foreign` (`email_users`),
  ADD KEY `answer_comments_ans_id_foreign` (`ans_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_email_users_foreign` (`email_users`);

--
-- Indexes for table `question_comments`
--
ALTER TABLE `question_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_comments_email_users_foreign` (`email_users`),
  ADD KEY `question_comments_quest_id_foreign` (`quest_id`);

--
-- Indexes for table `status_answers`
--
ALTER TABLE `status_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_answers_ans_id_foreign` (`ans_id`),
  ADD KEY `status_answers_email_users_foreign` (`email_users`);

--
-- Indexes for table `status_questions`
--
ALTER TABLE `status_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_questions_quest_id_foreign` (`quest_id`),
  ADD KEY `status_questions_email_users_foreign` (`email_users`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answer_comments`
--
ALTER TABLE `answer_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question_comments`
--
ALTER TABLE `question_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_answers`
--
ALTER TABLE `status_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_questions`
--
ALTER TABLE `status_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_email_users_foreign` FOREIGN KEY (`email_users`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `answers_quest_id_foreign` FOREIGN KEY (`quest_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `answer_comments`
--
ALTER TABLE `answer_comments`
  ADD CONSTRAINT `answer_comments_ans_id_foreign` FOREIGN KEY (`ans_id`) REFERENCES `answers` (`id`),
  ADD CONSTRAINT `answer_comments_email_users_foreign` FOREIGN KEY (`email_users`) REFERENCES `users` (`email`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_email_users_foreign` FOREIGN KEY (`email_users`) REFERENCES `users` (`email`);

--
-- Constraints for table `question_comments`
--
ALTER TABLE `question_comments`
  ADD CONSTRAINT `question_comments_email_users_foreign` FOREIGN KEY (`email_users`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `question_comments_quest_id_foreign` FOREIGN KEY (`quest_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `status_answers`
--
ALTER TABLE `status_answers`
  ADD CONSTRAINT `status_answers_ans_id_foreign` FOREIGN KEY (`ans_id`) REFERENCES `answers` (`id`),
  ADD CONSTRAINT `status_answers_email_users_foreign` FOREIGN KEY (`email_users`) REFERENCES `users` (`email`);

--
-- Constraints for table `status_questions`
--
ALTER TABLE `status_questions`
  ADD CONSTRAINT `status_questions_email_users_foreign` FOREIGN KEY (`email_users`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `status_questions_quest_id_foreign` FOREIGN KEY (`quest_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
