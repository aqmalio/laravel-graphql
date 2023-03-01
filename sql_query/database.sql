-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table geekgarden_test.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.brands: ~10 rows (approximately)
DELETE FROM `brands`;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`, `logo`, `banner`, `created_at`, `updated_at`) VALUES
	(1, 'PT Habibi (Persero) Tbk', '1dpdsV7wOZlogo.png', 'kPkhsa6RJSbanner.png', NULL, NULL),
	(2, 'UD Saragih Megantara', '02iwBHC2pTlogo.png', 'HHzU7EK26tbanner.png', NULL, NULL),
	(3, 'UD Jailani (Persero) Tbk', '3Wbkt9QkXologo.png', 'CAi1pwoAAJbanner.png', NULL, NULL),
	(4, 'CV Yulianti Rahmawati Tbk', 'q0eYjy24aClogo.png', 'UddVUnlv1jbanner.png', NULL, NULL),
	(5, 'CV Yuliarti Tbk', 'EblmCGTmBllogo.png', 'wxf8TQHsfzbanner.png', NULL, NULL),
	(6, 'UD Tarihoran Saptono', 'zxRczxY6iAlogo.png', 'FkYJ4PdYaQbanner.png', NULL, NULL),
	(7, 'CV Rahimah', 'evxvsRxHillogo.png', 'GkaaMqdVHNbanner.png', NULL, NULL),
	(8, 'PJ Kusumo', '90K1DF4ETologo.png', 'OgZQtqtZwfbanner.png', NULL, NULL),
	(9, 'CV Wacana', 'sLQMlqbpGFlogo.png', 'SYcMV8uiyBbanner.png', NULL, NULL),
	(10, 'PT Lailasari', 'xiriFxwOS0logo.png', 'KyAJAYvOi6banner.png', NULL, NULL),
	(11, 'PT Aqmal', 'logo.png', 'banner.png', '2023-03-01 14:06:54', '2023-03-01 14:06:54'),
	(12, 'PT. Baru', 'logo.png', 'banner.png', '2023-03-01 14:06:58', '2023-03-01 14:11:05');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table geekgarden_test.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table geekgarden_test.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.migrations: ~7 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_02_28_155056_create_brands_table', 1),
	(6, '2023_02_28_155226_create_outlets_table', 1),
	(7, '2023_02_28_160141_create_products_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table geekgarden_test.outlets
CREATE TABLE IF NOT EXISTS `outlets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outlets_brand_id_foreign` (`brand_id`),
  CONSTRAINT `outlets_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.outlets: ~20 rows (approximately)
DELETE FROM `outlets`;
/*!40000 ALTER TABLE `outlets` DISABLE KEYS */;
INSERT INTO `outlets` (`id`, `brand_id`, `name`, `picture`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
	(1, 3, 'quia', 'zmZCD9zaBYpicture.png', 'Ds. Muwardi No. 527, Batam 17501, Sultra', 85.98662400, 89.56192100, NULL, NULL),
	(2, 9, 'libero', 'itSELaG345picture.png', 'Psr. Imam Bonjol No. 23, Singkawang 55980, Pabar', -26.44516200, -29.04680600, NULL, NULL),
	(3, 5, 'rem', '9w17FGQH4gpicture.png', 'Ds. Achmad No. 741, Blitar 50732, Sulteng', 52.22094000, -6.66774700, NULL, NULL),
	(4, 8, 'possimus', 'yZpDwAhQgcpicture.png', 'Dk. BKR No. 596, Administrasi Jakarta Selatan 26809, Jatim', 24.22617800, -137.78535500, NULL, NULL),
	(5, 3, 'voluptatum', 'MZTXD6r62ypicture.png', 'Jln. Panjaitan No. 378, Serang 19929, Pabar', 17.56103500, 115.64273700, NULL, NULL),
	(6, 10, 'nam', 'qb89hwODOopicture.png', 'Ki. Wahid No. 295, Banjarmasin 44793, Kepri', 79.02389200, 170.40817300, NULL, NULL),
	(7, 3, 'ut', 'dAWVufJ7Tgpicture.png', 'Psr. Abdul. Muis No. 451, Bau-Bau 66935, NTB', -23.26301500, -66.32293000, NULL, NULL),
	(8, 5, 'laboriosam', 'c9OQcPhs7apicture.png', 'Kpg. Jend. A. Yani No. 687, Mataram 26263, Kaltara', -62.69976800, -139.55983800, NULL, NULL),
	(9, 3, 'nihil', 'IdFjMsxgoSpicture.png', 'Psr. Monginsidi No. 290, Bau-Bau 60822, Kalteng', 58.56167500, 22.98373500, NULL, NULL),
	(10, 9, 'dolorem', 'HS1lCroDAdpicture.png', 'Ki. Bayam No. 767, Samarinda 98955, Aceh', 46.44999200, 29.98641600, NULL, NULL),
	(11, 10, 'dolor', 'zNk3oIzOeGpicture.png', 'Gg. Surapati No. 628, Mojokerto 49357, Sulbar', 74.55987500, -133.22030900, NULL, NULL),
	(12, 1, 'quaerat', 'nEc7JhRR49picture.png', 'Psr. Acordion No. 740, Payakumbuh 67608, Riau', 73.41779500, -82.64253300, NULL, NULL),
	(13, 3, 'sit', 'b4tRSkIYpapicture.png', 'Dk. Camar No. 850, Bandar Lampung 86745, Kepri', 58.96544900, 44.70696900, NULL, NULL),
	(14, 7, 'deleniti', 'fumdXsT064picture.png', 'Dk. B.Agam Dlm No. 294, Samarinda 28647, Jabar', 30.11833600, -140.32432500, NULL, NULL),
	(15, 6, 'in', 'vqgXE1HKplpicture.png', 'Kpg. Antapani Lama No. 201, Jayapura 85729, Sumut', 30.19857600, 71.65915500, NULL, NULL),
	(16, 7, 'impedit', 'qL4bhYj5dRpicture.png', 'Jln. Wahid No. 183, Pekanbaru 97225, Jateng', 65.31621200, 117.86816700, NULL, NULL),
	(17, 1, 'dolores', 'EKwWKngOVUpicture.png', 'Dk. Perintis Kemerdekaan No. 269, Bogor 23993, Sulut', -63.92063200, -165.59610900, NULL, NULL),
	(18, 4, 'omnis', 'DVQgJcSuZWpicture.png', 'Ki. Dr. Junjunan No. 634, Salatiga 23513, Sumbar', 59.06570900, -159.17115000, NULL, NULL),
	(19, 2, 'dolor', 'RCul4mAWFCpicture.png', 'Ki. Cikutra Timur No. 226, Malang 15627, Lampung', -52.97706600, -33.06516000, NULL, NULL),
	(20, 6, 'dolores', 'vmCjxFg2BQpicture.png', 'Ki. Bazuka Raya No. 898, Bima 53403, DIY', 68.29865900, 160.78213700, NULL, NULL);
/*!40000 ALTER TABLE `outlets` ENABLE KEYS */;

-- Dumping structure for table geekgarden_test.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table geekgarden_test.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table geekgarden_test.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.products: ~40 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `brand_id`, `name`, `picture`, `price`, `created_at`, `updated_at`) VALUES
	(1, 1, 'accusantium', 'RmL9gAw23Ppicture.png', 74691, NULL, NULL),
	(2, 5, 'et', 'NUU1qxEBmopicture.png', 27224, NULL, NULL),
	(3, 7, 'tenetur', 'kMKR4oGpG4picture.png', 41404, NULL, NULL),
	(4, 3, 'totam', 'i0EQszdBfBpicture.png', 69928, NULL, NULL),
	(5, 4, 'quod', 'uqyJ0EAmVKpicture.png', 23904, NULL, NULL),
	(6, 4, 'et', '5t5lPOhFq1picture.png', 72619, NULL, NULL),
	(7, 8, 'dolor', 'Olat6RnJFapicture.png', 30245, NULL, NULL),
	(8, 9, 'labore', 'mW8WGRxDAApicture.png', 53237, NULL, NULL),
	(9, 4, 'odit', 'UABh4CV02cpicture.png', 72156, NULL, NULL),
	(10, 6, 'libero', 'D4AKtrdQNppicture.png', 78284, NULL, NULL),
	(11, 1, 'id', 'TefpLiZHBNpicture.png', 34149, NULL, NULL),
	(12, 10, 'tempora', 'PNpHlLrtRPpicture.png', 41997, NULL, NULL),
	(13, 3, 'at', 'XMcD88vkHjpicture.png', 59640, NULL, NULL),
	(14, 3, 'at', 'mcbj1x9JIGpicture.png', 72791, NULL, NULL),
	(15, 10, 'in', 'RUKzcAyNCKpicture.png', 92905, NULL, NULL),
	(16, 7, 'odit', 'gk5ZCakNjIpicture.png', 9786, NULL, NULL),
	(17, 5, 'repellendus', 'k5NBOJccO7picture.png', 67072, NULL, NULL),
	(18, 3, 'ea', 'E8ifzkt92ppicture.png', 57798, NULL, NULL),
	(19, 9, 'quia', 'wH5QnAhezMpicture.png', 55081, NULL, NULL),
	(20, 4, 'illum', 'zeJFht20XYpicture.png', 67406, NULL, NULL),
	(21, 7, 'dolore', '9iHG1hPfeNpicture.png', 37446, NULL, NULL),
	(22, 7, 'libero', 'H6aSODgd4Vpicture.png', 59897, NULL, NULL),
	(23, 9, 'rerum', 'GlbtYv9epEpicture.png', 11767, NULL, NULL),
	(24, 10, 'iure', 'IZ4fkrkumUpicture.png', 23677, NULL, NULL),
	(25, 5, 'fugit', 'yXT78qDhsmpicture.png', 59869, NULL, NULL),
	(26, 3, 'ipsum', '1Mz3u8ayQGpicture.png', 96512, NULL, NULL),
	(27, 3, 'facere', '0dmagU9gbjpicture.png', 29080, NULL, NULL),
	(28, 10, 'nemo', 'Vf29pS9W2upicture.png', 97423, NULL, NULL),
	(29, 4, 'nesciunt', 'tbNEQme3KOpicture.png', 37893, NULL, NULL),
	(30, 8, 'excepturi', '33Uo4k84qcpicture.png', 30542, NULL, NULL),
	(31, 8, 'accusantium', 'BZzeRlpdebpicture.png', 54776, NULL, NULL),
	(32, 9, 'nihil', 'MoHSNtDXNzpicture.png', 87392, NULL, NULL),
	(33, 4, 'et', '0aoq7q2YbGpicture.png', 32138, NULL, NULL),
	(34, 8, 'est', 'rB303TMMevpicture.png', 51105, NULL, NULL),
	(35, 6, 'sequi', 'SHDZ8jlt8Jpicture.png', 62862, NULL, NULL),
	(36, 3, 'incidunt', 's19qzA6px7picture.png', 28803, NULL, NULL),
	(37, 8, 'qui', 'Xd0jWdJp7epicture.png', 26304, NULL, NULL),
	(38, 9, 'quia', 'ER0arDG1NOpicture.png', 8079, NULL, NULL),
	(39, 3, 'corporis', 'i1iSXyfvqbpicture.png', 90467, NULL, NULL),
	(40, 1, 'culpa', '61heol4290picture.png', 79039, NULL, NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table geekgarden_test.users
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geekgarden_test.users: ~10 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'A5COpXLACf', 'q4MhMUhq6s@gmail.com', NULL, '$2y$10$AUGdvbgw2c7Plfc57M.wEOCxnS6UfCdpKBgjp/bD7pYwuEksToiMu', NULL, NULL, NULL),
	(2, 'XLbes4P8Ro', 'Lfg7crpaQh@gmail.com', NULL, '$2y$10$65jxEHaSjk47uT90vhNl.ebq8WC2zevaN3GsP3ZrqLkAehLtxLVm2', NULL, NULL, NULL),
	(3, 'XG0Nz4aatP', 'BjhqXLi3Fj@gmail.com', NULL, '$2y$10$.CaRpODmft.EiPxMb0wdPOxcKBi3w3HLMoMd5WVXgWJcLF1qtMKsa', NULL, NULL, NULL),
	(4, 'Pk9W3xIFfb', '55lkpQuKgG@gmail.com', NULL, '$2y$10$Rz9ibKH8v/tr3UIzPZsm1.iv75bh6n09qiaALNbxFLafQJ4QDmoje', NULL, NULL, NULL),
	(5, 'rnoS25D2Lw', 'rbElUZt3Ws@gmail.com', NULL, '$2y$10$HbySaK21GFNgCfODcChdZeRIMuIgIIQ2wLkpSLhPUQxRDyUwO4R4.', NULL, NULL, NULL),
	(6, 'n2HUKSAdOt', 'Fq7YgoXofc@gmail.com', NULL, '$2y$10$V/pY43V6NL5ZFjDTjdtcm.9Lw5mOEA9KCyy1enVz3heDJ1e.Hsg5q', NULL, NULL, NULL),
	(7, '06tRv0QyFk', 'HUmWWw0pc1@gmail.com', NULL, '$2y$10$v4kBElTLt86uWPZFEPnTv.ghRIFodUE0T/59.U.nDgMr7el0Fi5iO', NULL, NULL, NULL),
	(8, '0WrDbMVyh5', 'i5dXG1VeD1@gmail.com', NULL, '$2y$10$MhUDuq1qh6TBtzZkcUtZ1ODC0WpLyFzndQB/is/d2DI/Xktzw6FGe', NULL, NULL, NULL),
	(9, 'AmnQv5x2md', 'NTViJ03g5W@gmail.com', NULL, '$2y$10$YMJjMNsMeBdW4kMltsbX1ur7YiWc8XrNUEpEgehxhn0BnT/Vw3BaK', NULL, NULL, NULL),
	(10, 'Rmtbq4Cak4', 'X7vMrQ3JOZ@gmail.com', NULL, '$2y$10$To3Zj.1X.H/GzXpdmCMfr.57Yxu7B57GcX2TpvVKAolipfnP7qWfO', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
