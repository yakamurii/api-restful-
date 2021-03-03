-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.migrations: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2021_03_01_203924_create_dogs_table', 1),
	(4, '2014_10_12_100000_create_password_resets_table', 2),
	(5, '2021_03_02_224228_create_table_products', 3),
	(6, '2021_03_02_233409_create_table_disciplinas', 4),
	(7, '2021_03_02_233947_create_table_adresses', 4),
	(8, '2021_03_02_234131_create_table_addresses', 4),
	(9, '2021_03_02_235142_create_table_addresses', 5),
	(10, '2021_03_03_000832_create_table_addresses', 6),
	(11, '2021_03_03_002305_create_table_dogs', 7),
	(12, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
	(13, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
	(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
	(15, '2016_06_01_000004_create_oauth_clients_table', 8),
	(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8),
	(17, '2021_03_03_163948_create_posts_table', 9),
	(18, '2021_03_03_173446_create_table_texts', 10),
	(19, '2021_03_03_180437_create_table_products', 11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.oauth_access_tokens: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('23ac0c98ab5997d8476d8e7847ebe888cbc5bc7f37d7eef607804e1e3b660808ff82e3498ef14220', 13, 4, 'LaravelAuthApp', '[]', 0, '2021-03-03 16:58:56', '2021-03-03 16:58:56', '2022-03-03 16:58:56'),
	('5229c8e8635bfed3b7685fae9ee41d108dd4ffd0a9ab7ac005ad7956fbb62b92e0dd58c404ccfbc0', 13, 4, 'LaravelAuthApp', '[]', 0, '2021-03-03 17:00:08', '2021-03-03 17:00:08', '2022-03-03 17:00:08'),
	('ef4aa775a3c85b49932e1e139ea761e446722b3d7364cab20a82b8a75af5918337cabd1339bb33ec', 13, 4, 'LaravelAuthApp', '[]', 0, '2021-03-03 17:25:47', '2021-03-03 17:25:47', '2022-03-03 17:25:47');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.oauth_auth_codes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.oauth_clients: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'hIQXmY868msDs1AoZumV7KExoMErHIBpt5jmPqyZ', NULL, 'http://localhost', 1, 0, 0, '2021-03-03 12:46:22', '2021-03-03 12:46:22'),
	(2, NULL, 'Laravel Password Grant Client', 'wKJCvgcrR8DojLLOCeOWCTSR1iuSvdHmLiZrIFW7', 'users', 'http://localhost', 0, 1, 0, '2021-03-03 12:46:22', '2021-03-03 12:46:22'),
	(3, NULL, 'client', 'WIu9mop4TcbxLpVNDOGaiFTMo4lfIU9mBAwhQ3sp', NULL, 'http://localhost:8001/callback', 0, 0, 0, '2021-03-03 12:59:53', '2021-03-03 12:59:53'),
	(4, NULL, 'Laravel Personal Access Client', 'SSZtz6fhxEnlrEE6FosOcbIjD1u9SG1VYyLTD0UV', NULL, 'http://localhost', 1, 0, 0, '2021-03-03 16:34:49', '2021-03-03 16:34:49'),
	(5, NULL, 'Laravel Password Grant Client', 'SDw76lvutKedOP3W4P6HREK5dNoc8Z4sLUU9U8Ak', 'users', 'http://localhost', 0, 1, 0, '2021-03-03 16:34:50', '2021-03-03 16:34:50');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.oauth_personal_access_clients: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-03-03 12:46:22', '2021-03-03 12:46:22'),
	(2, 4, '2021-03-03 16:34:50', '2021-03-03 16:34:50');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.oauth_refresh_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.posts: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, 13, 'Teste', 'Apenas um teste', '2021-03-03 17:43:49', '2021-03-03 17:43:49');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel.users: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(6, 'Rudy Collins III', 'ashtyn.bogisich@example.net', '2021-03-02 20:07:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WLnMYNKej2', '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
	(7, 'Prof. Rubye Nitzsche Jr.', 'donald.hilpert@example.org', '2021-03-02 20:07:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GPAPNKrPbz', '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
	(8, 'Allan Terry', 'farrell.thea@example.net', '2021-03-02 20:07:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mbAvH9d9Ij', '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
	(9, 'Mr. Gaylord Kovacek IV', 'grimes.antone@example.net', '2021-03-02 20:07:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WxIxqAQbDg', '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
	(10, 'Leonard Nikolaus', 'paula.collier@example.org', '2021-03-02 20:07:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0F9kUKhqDZ', '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
	(11, 'Joanny Dare', 'ztreutel@example.com', '2021-03-02 20:07:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YlN6Yij0IX', '2021-03-02 20:07:06', '2021-03-02 20:07:06'),
	(12, 'Beta Sistemas', 'beta@sistemas.com', NULL, '12345678', NULL, '2021-03-02 20:14:22', '2021-03-02 20:14:22'),
	(13, 'yakamuri', 'yak@yak.com', NULL, '$2y$10$pIHMpTxy/01GLGEoURLA3uML9dYqrTak/3qgZMcGgCr9zBLeGxdxa', NULL, '2021-03-03 16:58:56', '2021-03-03 16:58:56'),
	(14, 'Alford Prohaska', 'arlene89@example.net', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NNz6DmX0Bp', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(15, 'Loma Jenkins PhD', 'etha.runte@example.net', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wuLd7W8nUC', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(16, 'Miss Fanny Lebsack Sr.', 'konopelski.stephanie@example.net', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dts2O6QcrB', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(17, 'Mr. Randall Torphy', 'laney93@example.org', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c2Tw9h3Imu', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(18, 'Mr. Marshall Grady', 'dprice@example.com', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DW9oyo7QvK', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(19, 'Alvah Labadie', 'spencer.eloise@example.net', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J9UPhXvnFv', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(20, 'Dr. Kellie Raynor DVM', 'emmalee.sawayn@example.org', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XyuLPYh5ni', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(21, 'Eli Quigley', 'jamey.connelly@example.com', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pXok9BbuM2', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(22, 'Prof. Madaline Skiles MD', 'lavon31@example.org', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dHX0lVedTD', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(23, 'Dr. Russ D\'Amore', 'jaylin.willms@example.net', '2021-03-03 18:22:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NLn8tGL5m3', '2021-03-03 18:22:57', '2021-03-03 18:22:57'),
	(24, 'Jalen Hammes', 'oaltenwerth@example.net', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FiC0fDYDvB', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(25, 'Alison Tromp', 'preston.harvey@example.org', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w4jA1bA9a3', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(26, 'Dr. Edgar Thompson', 'lea.quitzon@example.net', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oV3QVU6Qyu', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(27, 'Gavin Konopelski II', 'erdman.elsie@example.org', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tUIBb7zQ54', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(28, 'Jamison Volkman', 'sbailey@example.org', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kTyeJ72skb', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(29, 'Mrs. Madilyn Muller', 'gusikowski.gladyce@example.net', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OGdPahY2TY', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(30, 'Alisha Willms', 'mayert.jade@example.net', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E4cALtDOhW', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(31, 'Giovani Feil', 'iwisoky@example.com', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'feKiI11bW0', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(32, 'Willy Little', 'benny03@example.net', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zJXvFKyVR7', '2021-03-03 18:25:28', '2021-03-03 18:25:28'),
	(33, 'Jameson Little', 'reichert.urban@example.com', '2021-03-03 18:25:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1Pk2X0zD2H', '2021-03-03 18:25:28', '2021-03-03 18:25:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
