-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 08:19 AM
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
-- Database: `react-project`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('05fb10e76e60a2e578c63d8a88e18e5562d958e488ce7e054388c2ac6eb92dc8c8ce9680ad7981e3', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:44', '2024-02-29 22:13:44', '2025-03-01 14:13:44'),
('0694633b4e2bb91b31137b92552b0b14f92315af2b71bd7638bb74cc91803dcf712c4c1d4f0499f6', 3, 1, 'app', '[]', 0, '2024-02-29 21:53:27', '2024-02-29 21:53:27', '2025-03-01 13:53:27'),
('06bd48c49292b97f7d6b646aabdfa94a3b1e1a65a98d6663ac584c3a26674ac0aff8b79589e30e5a', 3, 1, 'example', '[]', 0, '2024-02-28 19:45:48', '2024-02-28 19:45:48', '2025-02-28 11:45:48'),
('0bd93b0f929cf6b8918ae3eaceb1fff7c38a3eccc43ba03a702bb028ae31a4cdba550c234a72e26e', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:55', '2024-02-29 13:00:55', '2025-03-01 05:00:55'),
('0cadcfd5d6d9a641fd5fd413d21d9ef8690e23a3e166d3c58d11979ecf1a539eece0c95896171921', 3, 1, 'app', '[]', 0, '2024-02-29 22:59:26', '2024-02-29 22:59:26', '2025-03-01 14:59:26'),
('0ce725dd6c2b35f8dcf46f9fbd6bf21a8c57a73de82af5b9ca0d42ed11b598d4d2ff7d472811a515', 3, 1, 'example', '[]', 0, '2024-02-29 13:13:12', '2024-02-29 13:13:12', '2025-03-01 05:13:12'),
('0cf5f4f311176c619b43637f0ced9848d90adf662fefa9f482374cd83932446ba0cb692e3bd36af9', 19, 1, 'app', '[]', 0, '2024-02-29 22:31:44', '2024-02-29 22:31:45', '2025-03-01 14:31:44'),
('0e7ad4f6e12234e602a335149dae44f140fc1b85a0924832ed77b0355c78cdf83b0749177d097c2c', 3, 1, 'example', '[]', 0, '2024-02-29 02:28:02', '2024-02-29 02:28:02', '2025-02-28 18:28:02'),
('12ed58526138839f55fcff5142700129d3a7cb482487a72c5b679f80c112b26094d36e9cd45b1687', 3, 1, 'app', '[]', 0, '2024-02-29 22:27:01', '2024-02-29 22:27:01', '2025-03-01 14:27:01'),
('1317db511da9bc20599396e5c04b9e86cf329a4a21c70907412364017057a1da362a01a4cd8aef4e', 3, 1, 'example', '[]', 0, '2024-02-29 13:01:43', '2024-02-29 13:01:43', '2025-03-01 05:01:43'),
('15ea84032abc9ebb0b0163dabb212d9f12aa166192722abc9586fd5038641f8866999a9634d93ed7', 3, 1, 'example', '[]', 0, '2024-02-29 02:28:02', '2024-02-29 02:28:02', '2025-02-28 18:28:02'),
('1765045905ded0f9c4214daca3f6a6201aec266937581b3c6950acc80d045715bf6ff14605e4ef18', 10, 1, 'example', '[]', 0, '2024-02-29 03:30:17', '2024-02-29 03:30:17', '2025-02-28 19:30:17'),
('17ff77786adc6a2f61a72e1045d8616800dbdef175558e2e73963eca47f7de87f7f5ec2bcc3d30ae', 3, 1, 'app', '[]', 0, '2024-02-29 22:06:17', '2024-02-29 22:06:17', '2025-03-01 14:06:17'),
('1ac0309edda162ff4f451cff5c589c5f00897f064a7a5d7eea5c69f23590bb3ce5f1da551f987187', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:53', '2024-02-29 13:00:53', '2025-03-01 05:00:53'),
('1b07d5d777b49a1ad219f2d69b6217070735372ee0b89e769296290bf1c31c80ba75110b3b0506d1', 3, 1, 'app', '[]', 0, '2024-02-29 22:26:11', '2024-02-29 22:26:11', '2025-03-01 14:26:11'),
('1e5a623b03caf59e237d9b1a81cfda8ee691fc3cdf40075b53c2d448dee8184f805dadf28b7ea934', 3, 1, 'app', '[]', 0, '2024-03-01 01:11:04', '2024-03-01 01:11:04', '2025-03-01 17:11:04'),
('1f192027372e3b89bf643a04202556e4ed4662f4e24d16ad7149305e31c72d516d5cf1739939bb0a', 3, 1, 'example', '[]', 0, '2024-02-28 19:45:26', '2024-02-28 19:45:26', '2025-02-28 11:45:26'),
('1f28713861fd0fb9d39f506f123b50e2ca827d91d31bac25ecfb05b812c4570971196cecb67807b2', 3, 1, 'app', '[]', 0, '2024-02-29 21:57:00', '2024-02-29 21:57:00', '2025-03-01 13:57:00'),
('26abb1e2885ba5dcf0f33b050634e8571face40f15ac2fec04edc0e0216457731a515d12cb9f4247', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:29', '2024-02-29 22:13:29', '2025-03-01 14:13:29'),
('26ae47a73a31cac98188137d62aeffbfdec3eb6cfc8f2299f4947ebbe4f94bc8332883e5b45a16db', 3, 1, 'example', '[]', 0, '2024-02-28 19:28:34', '2024-02-28 19:28:34', '2025-02-28 11:28:34'),
('26da535d1641275afbe475363b659462152b97ed2c2b6fc72a5a8524871822f445e6383a74fa8154', 3, 1, 'app', '[]', 0, '2024-02-27 00:11:56', '2024-02-27 00:11:56', '2025-02-26 16:11:56'),
('27c7db621277133fb5212926fec40160208ad715c63041f9d9b9c1c6a2b881a3b66de7720a29b4d3', 3, 1, 'app', '[]', 0, '2024-02-29 22:40:34', '2024-02-29 22:40:34', '2025-03-01 14:40:34'),
('2bdb291451d0fdcf8c1dd7eb387cea69f164ce0cc27bcafafc8b94ae81ee95cc1981f7502900dd91', 3, 1, 'example', '[]', 0, '2024-02-29 03:28:13', '2024-02-29 03:28:13', '2025-02-28 19:28:13'),
('31502abbf5e15b7608971ea5cb86417ab2cd47efc248b83e1e166c704750a459f9947452c0118b85', 3, 1, 'example', '[]', 0, '2024-02-29 13:01:39', '2024-02-29 13:01:39', '2025-03-01 05:01:39'),
('315cb6599323d91ea3cecdb33e24a9f3b2db5e0c1692bb1d3a1644192759be59a05250ce74192903', 3, 1, 'app', '[]', 0, '2024-02-29 13:35:07', '2024-02-29 13:35:07', '2025-03-01 05:35:07'),
('32797f9ba157060408ea6f4efea1701fba0abd2d3131139bb8aadf02120a3cd0b0319186eefa968a', 3, 1, 'example', '[]', 0, '2024-02-29 02:40:06', '2024-02-29 02:40:06', '2025-02-28 18:40:06'),
('342c1067ec2315009e84e4c788dc2f6c8ca1186539aaff6721daeabb2ab38117f2969b3ec8ac598d', 3, 1, 'app', '[]', 0, '2024-02-29 21:56:05', '2024-02-29 21:56:05', '2025-03-01 13:56:05'),
('3436aafdc3b94b059a0a637e1f47f9ab821562620ac961e049ed7ec753348109fce89bdee6d4157a', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:49', '2024-02-29 13:00:49', '2025-03-01 05:00:49'),
('35617b811f149c51634ae0dd8f2d28835ed50899e51590307455fe52ba32efe8a09ebff6c0464aed', 3, 1, 'example', '[]', 0, '2024-02-29 12:59:30', '2024-02-29 12:59:30', '2025-03-01 04:59:30'),
('362b69c5666d464f20dc663fa16d265d66409805902957031678d54fcc9177104d139f2c72bbab5e', 3, 1, 'app', '[]', 0, '2024-03-01 00:18:44', '2024-03-01 00:18:44', '2025-03-01 16:18:44'),
('365274803d689740194c96970a9aba4f087d220a7d079886e14574115c95d1f92b7cf1bb573e2623', 3, 1, 'example', '[]', 0, '2024-02-29 13:27:00', '2024-02-29 13:27:00', '2025-03-01 05:27:00'),
('388c2d17025f53d30a43b16fc6444c77b98ab63be331ceebdcd72ce771aa6e872779e31a23b14bae', 3, 1, 'example', '[]', 0, '2024-02-28 19:45:27', '2024-02-28 19:45:27', '2025-02-28 11:45:27'),
('3b46f59429850795b77887a7f8269eedc692f3dd9d8a22e92b65d4da1ecc89ca87b8767f108e0e4e', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:50', '2024-02-29 13:00:50', '2025-03-01 05:00:50'),
('3d177747554375ee7735ce52f941e4a3c4b4e1e9886296358dc7a780ce02c0448182a0e3938d543f', 3, 1, 'app', '[]', 0, '2024-03-01 00:23:40', '2024-03-01 00:23:40', '2025-03-01 16:23:40'),
('3d98f1d039a6e34c60df604e64a5e1a073f1adfbdb37fc6bd5b429df630613c82db3099fd4bb1835', 3, 1, 'example', '[]', 0, '2024-02-29 13:01:44', '2024-02-29 13:01:44', '2025-03-01 05:01:44'),
('414efa16049af5618b83797634856fe59e3c7bb23a26940a867ccc3fed269a0b6efbf79029a0e22c', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:46', '2024-02-29 22:13:46', '2025-03-01 14:13:46'),
('4236a14ae28a8f7cda9416dcccdc7e4b13f33420cb654e9cb244ef615ce66db69bb43426d3c9ef5d', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:33', '2024-02-29 22:13:33', '2025-03-01 14:13:33'),
('461c2d192077928a74fa7b74171f101617896314bd4ac56bb01ce8d5ccac129acffb13f1b274306a', 3, 1, 'example', '[]', 0, '2024-02-29 13:26:08', '2024-02-29 13:26:08', '2025-03-01 05:26:08'),
('495574db3478a486e0ead9cc40445ec75e4c00a0319804de8c58062dc410409cf35d44b1991f69d8', 3, 1, 'example', '[]', 0, '2024-02-28 19:45:24', '2024-02-28 19:45:24', '2025-02-28 11:45:24'),
('4c355831682fe1239c4512ca823d7e0d1c877887f4be925f54facaab091240fdba8413c5bbde2529', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:42', '2024-02-29 13:00:42', '2025-03-01 05:00:42'),
('4c95b1797174ae71c71733f03346f644100c12ae891ac61405607520f20186a0a83670de86934eda', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:38', '2024-02-29 22:13:39', '2025-03-01 14:13:38'),
('4d561ed5a6211a35b655fe654312d7d67f40e34f7d9ade51a09ccc7c2b530aecb06f3509ec3caf22', 3, 1, 'example', '[]', 0, '2024-02-28 19:45:30', '2024-02-28 19:45:30', '2025-02-28 11:45:30'),
('4d90440b70c4b02a98674c401015ba6bb0e3f91a800770f8cb388899834157b5b670efd14136f38e', 3, 1, 'example', '[]', 0, '2024-02-29 03:29:58', '2024-02-29 03:29:58', '2025-02-28 19:29:58'),
('5196712e7658411debd1dab5609ca1ffb7e557a1e259c24ad61886101b943f610637900a3c00a5e9', 3, 1, 'example', '[]', 0, '2024-02-29 03:10:52', '2024-02-29 03:10:52', '2025-02-28 19:10:52'),
('5257549ad9cd1aec7fae2fefca6a475d298bedcfcfed9183d948f57ec7aa696b4156ec4b49a3922f', 10, 1, 'example', '[]', 0, '2024-02-29 02:09:37', '2024-02-29 02:09:37', '2025-02-28 18:09:37'),
('52c4b54f9f7430cc419601b719e5c94bf67f1827e7355201b9baec85c657cee0a3d0f3c80977846e', 3, 1, 'app', '[]', 0, '2024-02-29 22:09:18', '2024-02-29 22:09:18', '2025-03-01 14:09:18'),
('54c5efa0124e6e90c695325db977598d84c5794b557eeacadebd268ba85811a697cc9ca5936e830c', 3, 1, 'example', '[]', 0, '2024-02-28 19:28:29', '2024-02-28 19:28:29', '2025-02-28 11:28:29'),
('56ba3b76f6bd1d40f211a2b4f4c2101aa7fec68e031e4181eb1889dfe65038de0794ea822aa2c150', 3, 1, 'example', '[]', 0, '2024-02-29 13:03:59', '2024-02-29 13:03:59', '2025-03-01 05:03:59'),
('58331160dd1b47974af228e6f2a7a19b5eecf0a723ef95c5a4ffc74cd18ce42bced1c556ec610e77', 3, 1, 'example', '[]', 0, '2024-02-29 13:01:46', '2024-02-29 13:01:46', '2025-03-01 05:01:46'),
('5a054a1c40a939806ce87944f27d990c42b31cda244ea7eeb6bd850a14b130324359e99b97a65676', 3, 1, 'example', '[]', 0, '2024-02-29 13:25:24', '2024-02-29 13:25:24', '2025-03-01 05:25:24'),
('5b96a634aa1f7842c827c67b352aceb0401c5ceddf1d1e43ed0f4c5c3d1c4a172550160121288c11', 3, 1, 'app', '[]', 0, '2024-02-29 21:39:04', '2024-02-29 21:39:04', '2025-03-01 13:39:04'),
('5c52d525068b67e6b9ebe3961db2f5f59fb0955f5782c205a8a0e74195d05c30abba490803334c15', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:36', '2024-02-29 22:13:36', '2025-03-01 14:13:36'),
('5e5a547108dfc65c40a33ff7e336b1ec954907f32bd6838848dc289dfd016b5875021423158a34c4', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:47', '2024-02-29 22:13:47', '2025-03-01 14:13:47'),
('6133cc12a9e29f1066ac870fabf0d39ef8650cc8877c163deacffa4d76686b4016827487fecfc57d', 3, 1, 'example', '[]', 0, '2024-02-29 13:22:52', '2024-02-29 13:22:52', '2025-03-01 05:22:52'),
('61b9a43f06ce2f92c46b9166dd59d99656710e72dc84bb0b1099cca8c03210b9d14ccace4c86fb77', 3, 1, 'example', '[]', 0, '2024-02-28 19:51:03', '2024-02-28 19:51:03', '2025-02-28 11:51:03'),
('64e0dd7753f7df5a6399f7a2413482ed6e3d8d79101ae2737b234754aed4f42e18bc9cafab9ad264', 3, 1, 'app', '[]', 0, '2024-02-29 21:53:28', '2024-02-29 21:53:28', '2025-03-01 13:53:28'),
('64edafedd6e1cfcf642dd47d1ede11983ce9160fd8a041c7bb1084fda53183fed3d64950cce1b802', 3, 1, 'example', '[]', 0, '2024-02-28 18:24:05', '2024-02-28 18:24:05', '2025-02-28 10:24:05'),
('698c531d684b76df4afe08ed6a3d1ca6b14961fe0074e0e9cddb03c6a12755b286255cba3270ae2a', 3, 1, 'example', '[]', 0, '2024-02-29 02:51:44', '2024-02-29 02:51:44', '2025-02-28 18:51:44'),
('6c02c49f874e1a638c683a158f221059fb31acb41ac566f6dec386bee397fb36a3edc205285c058a', 3, 1, 'example', '[]', 0, '2024-02-28 19:38:21', '2024-02-28 19:38:21', '2025-02-28 11:38:21'),
('70c6106eadcd8d95449ce1534a2dd0248c7757ff6131317d18ad37411562eb0d53da2893595578f0', 3, 1, 'example', '[]', 0, '2024-02-28 19:43:55', '2024-02-28 19:43:55', '2025-02-28 11:43:55'),
('70e7ee038986a2724c7ef59ade430005326395ce8f07306259b9bcc3de7eb496c8e7d20931c991ee', 3, 1, 'example', '[]', 0, '2024-02-28 19:38:11', '2024-02-28 19:38:12', '2025-02-28 11:38:11'),
('7262c691fbf888e55788d7702d169ee58b467c5083319d1d287ee7c00ed3bec39f8d28d2f46af781', 14, 1, 'example', '[]', 0, '2024-02-29 02:49:47', '2024-02-29 02:49:47', '2025-02-28 18:49:47'),
('7388f86cd96bc60bd2807e9a74e6ab60ac32f42cfa9d37ecf45b21c8764efb1c353310866e3805c1', 3, 1, 'app', '[]', 0, '2024-02-29 22:28:48', '2024-02-29 22:28:48', '2025-03-01 14:28:48'),
('73eb3268d6092af4b1c58f0967df7aa9eb61e906c5384ad49e89824bde8010e76134f29a18571def', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:51', '2024-02-29 13:00:51', '2025-03-01 05:00:51'),
('78312ff77232cfc21d166c954cf898e34f90d2310d7332e2f6a38a7dee3aa50a5b7a7ad2931bc6e0', 3, 1, 'example', '[]', 0, '2024-02-28 19:48:41', '2024-02-28 19:48:41', '2025-02-28 11:48:41'),
('790511d58336812df88f229bfc78425812bbc9baeadca09e3df78e7ddbdabfc9f11730a85ca0cb4f', 3, 1, 'example', '[]', 0, '2024-02-27 00:35:44', '2024-02-27 00:35:44', '2025-02-26 16:35:44'),
('79c71560e9b50991e9fe9bb7701efb8a77ea90ebcb034017b61e98eb715e1b9f8b7e49349815d13e', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:37', '2024-02-29 22:13:37', '2025-03-01 14:13:37'),
('7b423a49b3f2c9ac0f7abe655eea1e8bf6751d99c8e4b5833d89a7da5233f28dd93b86e6a2ff3dff', 3, 1, 'app', '[]', 0, '2024-02-29 22:00:31', '2024-02-29 22:00:31', '2025-03-01 14:00:31'),
('80b6823cbc6f90f9eaf31ae7788d4520cb85446b5d67efb1e56a06f09a0249da2af8a3a8bc22ae05', 3, 1, 'example', '[]', 0, '2024-02-28 19:50:10', '2024-02-28 19:50:10', '2025-02-28 11:50:10'),
('83c39effef255e39354354e15e5a6d85c2608d9f57ce2fd8426ecc342409333e4baeb5a4e75b2f2a', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:55', '2024-02-29 22:13:55', '2025-03-01 14:13:55'),
('8a1598a2fe750e31432f34501da1ca608d61e459803ef655deb4176faadcd1a27ba278c1a9853715', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:34', '2024-02-29 22:13:34', '2025-03-01 14:13:34'),
('8c9290a8ee2a2097d881c6acf251dabee4f26145070dfae8a00b14848e1d0d023ce809e084139bed', 3, 1, 'example', '[]', 0, '2024-02-28 18:23:47', '2024-02-28 18:23:47', '2025-02-28 10:23:47'),
('9431ac64ad3138c6acd24e43706f5f3acb3c58b0e616f0d45a5e7e99f00b48601b79cbd830a6d4a7', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:27', '2024-02-29 22:13:27', '2025-03-01 14:13:27'),
('967e34730f88615d11a618d00028e6026d0e77e8500c27a6e5bd17c528dc2bbf1c658440c051f3da', 3, 1, 'example', '[]', 0, '2024-02-28 22:58:13', '2024-02-28 22:58:13', '2025-02-28 14:58:13'),
('96d9811b2ea8e68cfca2ffa3044dc5c5d554db45b144d99a0e441ab0f397d5583f6631859bb96cfc', 3, 1, 'app', '[]', 0, '2024-02-29 22:27:41', '2024-02-29 22:27:41', '2025-03-01 14:27:41'),
('9aae1fee2aa4ee3bdee11e10b1d2299aeb424cc9110e77fcb8cf7e7fa262579ac9c203b472555559', 3, 1, 'app', '[]', 0, '2024-02-29 13:52:55', '2024-02-29 13:52:55', '2025-03-01 05:52:55'),
('9fe0ef5d13cccb716897234e164661d9f4fe6588fcd9f6ecab2857579a92db2a0efb0b793364d73d', 3, 1, 'app', '[]', 0, '2024-02-29 13:53:05', '2024-02-29 13:53:05', '2025-03-01 05:53:05'),
('a21ed74fbbd70f16269ccc831c8c0b25360e04172adbb5bc1b7c634bc06b83fb32d915a995d2cb74', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:54', '2024-02-29 13:00:54', '2025-03-01 05:00:54'),
('a39672595c6550ad408c6513c1fe8def58b2a9d3c26ad2a64533523357af97df150eff3719d1dc2d', 3, 1, 'example', '[]', 0, '2024-02-29 02:29:24', '2024-02-29 02:29:24', '2025-02-28 18:29:24'),
('a3a611c770032b599124e4c3f3f716241b467438c4df4e61f7f9bc93e511f8a77832ad38a0859da4', 3, 1, 'example', '[]', 0, '2024-02-28 19:45:31', '2024-02-28 19:45:31', '2025-02-28 11:45:31'),
('a4e94d1e6b987f70808ccaf7347a70df0b424623c41cc1b83c556932ea5bfe388937c7ef8e7a1d2f', 3, 1, 'example', '[]', 0, '2024-02-28 20:07:33', '2024-02-28 20:07:33', '2025-02-28 12:07:33'),
('a694a5bba9aaff232ee72bfb109823a0a7672f39b97addb3876eb2f43085b0a01e456b4d49dd1025', 3, 1, 'app', '[]', 0, '2024-03-01 01:03:55', '2024-03-01 01:03:55', '2025-03-01 17:03:55'),
('a962c52addf9d75c2555fb366211cb59e110c3ef81b593ca5c2c7751bc418001f73592b0e634bf01', 3, 1, 'example', '[]', 0, '2024-02-29 13:01:42', '2024-02-29 13:01:42', '2025-03-01 05:01:42'),
('aabf06d94899a11660ff33cf53058eb4ea7ee668cbe01e7e6b146815528be3f7a265cc801ffeb063', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:45', '2024-02-29 22:13:45', '2025-03-01 14:13:45'),
('ac80a043023f650f65afc0239e7e53c30fa4d47836d97e037c2242da22ef5a8eb7b03e4cee0e10e3', 10, 1, 'example', '[]', 0, '2024-02-29 13:24:35', '2024-02-29 13:24:35', '2025-03-01 05:24:35'),
('ae1f801c56ef243c603e6c189fba3f276598fd9c7e215faec0e6180f25f7f093af73cd75ccc34d31', 3, 1, 'app', '[]', 0, '2024-02-29 21:48:20', '2024-02-29 21:48:20', '2025-03-01 13:48:20'),
('b0d64bbabc0106227675db84d8cfcf12fa31512baea9c3b4bed9b49f23bcd9a8e8b1e86511ea46d3', 3, 1, 'example', '[]', 0, '2024-02-29 13:07:54', '2024-02-29 13:07:54', '2025-03-01 05:07:54'),
('b7cca68339fc3989ce51dbe5334949cebe02c0d1084e5a75c8fa5e8f7bf319a7437185c7dba571c3', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:56', '2024-02-29 13:00:56', '2025-03-01 05:00:56'),
('bf06060330964b1a7fd7d158b11871ae28560a3fcf603f521641b01b43b82df170b940fe09b8cbf3', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:43', '2024-02-29 22:13:43', '2025-03-01 14:13:43'),
('c1eeb5ddb2969866514b7ffb61af732c314c3b644a022f1ef4ac78b7ca24d09cc2753111814cf5e7', 3, 1, 'example', '[]', 0, '2024-02-27 00:36:10', '2024-02-27 00:36:10', '2025-02-26 16:36:10'),
('c467ed26994fca19fbe8540e12a06278a2d61821d3d579c61a778912f438852d821426fc6f5dd048', 3, 1, 'app', '[]', 0, '2024-02-29 21:53:28', '2024-02-29 21:53:28', '2025-03-01 13:53:28'),
('c74876eda37a510c8a351edb6ac335f3149764e5c9631ff3b146962de0c4b360c0fad4b0c51ae7e0', 3, 1, 'example', '[]', 0, '2024-02-28 19:48:42', '2024-02-28 19:48:42', '2025-02-28 11:48:42'),
('cbbaaff31bd6676e037cae29af3a6e6caa07f0240988b048ad489fdac9cbe75f2a114f69d4aace31', 3, 1, 'example', '[]', 0, '2024-02-28 19:48:48', '2024-02-28 19:48:48', '2025-02-28 11:48:48'),
('cf29ab178fcf3702d3173344d67603dccdfc0d9529a8dd5f7ceac35272bdac839a9ae812ec735bca', 3, 1, 'example', '[]', 0, '2024-02-29 13:01:41', '2024-02-29 13:01:41', '2025-03-01 05:01:41'),
('cff2f1be58d3b6e9294ecc92e3bd822b391beb28e75fdb962f67770e1f9ad01a19dde1d18f57b934', 3, 1, 'app', '[]', 0, '2024-02-29 22:03:31', '2024-02-29 22:03:31', '2025-03-01 14:03:31'),
('d00d4268b8046ce3a226de2c4ad8e716fe9d75d1cffc783489d4bf4f447975598090d1afc6d1cd50', 3, 1, 'example', '[]', 0, '2024-02-29 13:01:36', '2024-02-29 13:01:36', '2025-03-01 05:01:36'),
('d2c8b2bcac8b339fa72ff99a269397afd5026985a8159fc5ad8123c14d68eaa8eb56349af45f522d', 10, 1, 'app', '[]', 0, '2024-03-01 00:23:58', '2024-03-01 00:23:58', '2025-03-01 16:23:58'),
('d35c307de4b1419bd2af76202d4444db9c5777abb2fd84678cf2b84aaee781835f68647e5a8c1827', 3, 1, 'example', '[]', 0, '2024-02-28 22:58:12', '2024-02-28 22:58:12', '2025-02-28 14:58:12'),
('d67fbe135585633916dc83d871383bf8aad1f1dc27ab83dad3dd9fe8ccf3f0acb289e7dccf635d19', 3, 1, 'example', '[]', 0, '2024-02-29 02:28:01', '2024-02-29 02:28:01', '2025-02-28 18:28:01'),
('d7b4279f884c57e3021882f80283f6baa3f8520fc1c34055d218a687df4fe2a4a6b485411f3f4fde', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:40', '2024-02-29 22:13:40', '2025-03-01 14:13:40'),
('d8569dc1ea2eeeec89cad4a5592e83c220e4f1616aff42c82f68307774a1ebd0704e33089656d33a', 3, 1, 'example', '[]', 0, '2024-02-28 19:46:42', '2024-02-28 19:46:42', '2025-02-28 11:46:42'),
('d87d24ddbbdb7a3b750874d7f0da75e69e4ead3f5ca34d5ce7317aa10456f3f82da0b052c2df8983', 3, 1, 'example', '[]', 0, '2024-02-28 19:47:51', '2024-02-28 19:47:51', '2025-02-28 11:47:51'),
('e116669285314c0bc20e0068c70768cd4f8f53be7e9d330f4459f1f9b03750442c48083cc043dae0', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:53', '2024-02-29 22:13:53', '2025-03-01 14:13:53'),
('e265f0c87b706bdb385bb64285093ce3ed4313352903ad27fa7d3cfd1ba13f6947f17314d856a0dd', 3, 1, 'example', '[]', 0, '2024-02-29 02:03:23', '2024-02-29 02:03:23', '2025-02-28 18:03:23'),
('e72eb75ca5edc079bb162a83c8719597b8b3082c833726a919b12bdfd654ff422f66420231a4de90', 3, 1, 'app', '[]', 0, '2024-02-29 22:04:13', '2024-02-29 22:04:13', '2025-03-01 14:04:13'),
('e8385eb8d353cbed1854bf3d7c333499025781414064e0141daa2ac5145374030cdf89eb5426f2a7', 3, 1, 'example', '[]', 0, '2024-02-29 02:53:07', '2024-02-29 02:53:07', '2025-02-28 18:53:07'),
('e8426da402142f68ecc3ac9ba716b8d785cb4cc2c9ac78e134d0ec606e72e5b05c1d0c09b05bd3c7', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:54', '2024-02-29 22:13:54', '2025-03-01 14:13:54'),
('e9279aa11ce08838e30dcffc96f869c45973e4e5bdb1addd3fc20ab7897a85dc38336200a766db5c', 3, 1, 'app', '[]', 0, '2024-02-29 21:39:45', '2024-02-29 21:39:45', '2025-03-01 13:39:45'),
('e9c93beeb85efda0060c837ec81786ade266b0571bcddec3a43a967df02d8f9f57affc345df1a9ab', 3, 1, 'example', '[]', 0, '2024-02-29 13:00:46', '2024-02-29 13:00:46', '2025-03-01 05:00:46'),
('eb8977aef4a6d8fb7eb307e888912a635d37e660d519c584eec319e425130fbfd0451fdb70d1d8dc', 3, 1, 'example', '[]', 0, '2024-02-29 03:28:14', '2024-02-29 03:28:14', '2025-02-28 19:28:14'),
('ee5fb7812c10c5e3b1afd5d8ec24b13cd62fe019f791b3d00645db679069985d5bdc079e5e93c5c9', 15, 1, 'example', '[]', 0, '2024-02-29 02:50:50', '2024-02-29 02:50:50', '2025-02-28 18:50:50'),
('f15207cc003af34382215b985fefb2be5ca2df7ec148ac4a29a2faaec32bdb9a37f7a75a2bd2b195', 3, 1, 'app', '[]', 0, '2024-02-29 22:13:41', '2024-02-29 22:13:41', '2025-03-01 14:13:41'),
('f2be78bcf409d8c6b30047252b196414940a216204978764512ca4acf97032837d1231111007921b', 3, 1, 'example', '[]', 0, '2024-02-29 03:49:17', '2024-02-29 03:49:17', '2025-02-28 19:49:17'),
('f4f9e90236c8a795b94851c78d094c7b63053ffd5af23f04a81399f793d39c183736310dc805d7af', 3, 1, 'example', '[]', 0, '2024-02-28 19:45:28', '2024-02-28 19:45:28', '2025-02-28 11:45:28'),
('f714c91c22fc633d4f8752f592ac27f5898c95c1b9c24f17ca7b331f2589ec82be9eea38ac0d87c4', 3, 1, 'app', '[]', 0, '2024-02-29 13:53:03', '2024-02-29 13:53:03', '2025-03-01 05:53:03'),
('fc4547b43ec318994d58a702de3fa1bbaf26fef39e79ce9f5bc4cc34dbf487192cce73b0f82406c9', 10, 1, 'example', '[]', 0, '2024-02-29 02:10:53', '2024-02-29 02:10:53', '2025-02-28 18:10:53'),
('fc8313275f0e8e910b417385e42c8bdfd8ff69500ef8352c58de7e58ea6bf60c3b966fbed85223c5', 3, 1, 'example', '[]', 0, '2024-02-29 13:19:08', '2024-02-29 13:19:08', '2025-03-01 05:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'React-Project Personal Access Client', 'wFaVQaBDW0vdMYA3q95IN5jcgMsJevY8wzz6ZNw9', NULL, 'http://localhost', 1, 0, 0, '2024-02-26 17:49:51', '2024-02-26 17:49:51'),
(2, NULL, 'React-Project Password Grant Client', 'R1eL2p7EbYmhYN8eHyuEWA1Rn2QoRogNeM28xqT0', 'users', 'http://localhost', 0, 1, 0, '2024-02-26 17:49:51', '2024-02-26 17:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-02-26 17:49:51', '2024-02-26 17:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Fawad', 'fawad@gmail.com', NULL, '$2y$12$h5O6rjHpeXrwxUx0Wjq8KOJ03O5H5lEDIvd0VQdY.3OR5dtd2fnAa', NULL, '2024-02-26 22:38:23', '2024-02-26 22:38:23'),
(10, 'Ahmad', 'Ahmad@gmail.com', NULL, '$2y$12$OCsGpIpYCcX2UO/3CmkRF.pF09kopnV8j5y754D34NHdSBGdANrpS', NULL, '2024-02-29 02:06:57', '2024-02-29 02:06:57'),
(13, 'Farhad', 'farhad@gmail.com', NULL, '$2y$12$d6G3LifeW61dW01wcIm/WeJKej7swjdRp8nZJ1vNrZHprNTXVPEMS', NULL, '2024-02-29 02:34:46', '2024-02-29 02:34:46'),
(19, 'f', 'f@gmail.com', NULL, '$2y$12$OdI67nE.1Jq0yhvjBlV6GOT1S8rVoav.Fxs4BjE8256d7MxK4Bo4C', NULL, '2024-02-29 22:31:44', '2024-02-29 22:31:44');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
